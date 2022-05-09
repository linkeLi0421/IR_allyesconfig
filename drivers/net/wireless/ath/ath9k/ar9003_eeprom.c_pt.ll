; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9003_eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ar9300_eeprom = type { i8, i8, [6 x i8], [20 x i8], %struct.ar9300_base_eep_hdr, %struct.ar9300_modal_eep_header, %struct.ar9300_BaseExtension_1, [3 x i8], [3 x [3 x %struct.ar9300_cal_data_per_freq_op_loop]], [2 x i8], [3 x i8], [3 x i8], [3 x i8], [2 x %struct.cal_tgt_pow_legacy], [3 x %struct.cal_tgt_pow_legacy], [3 x %struct.cal_tgt_pow_ht], [3 x %struct.cal_tgt_pow_ht], [12 x i8], [12 x [4 x i8]], [12 x %struct.cal_ctl_data_2g], %struct.ar9300_modal_eep_header, %struct.ar9300_BaseExtension_2, [8 x i8], [3 x [8 x %struct.ar9300_cal_data_per_freq_op_loop]], [8 x i8], [8 x i8], [8 x i8], [8 x %struct.cal_tgt_pow_legacy], [8 x %struct.cal_tgt_pow_ht], [8 x %struct.cal_tgt_pow_ht], [9 x i8], [9 x [8 x i8]], [9 x %struct.cal_ctl_data_5g] }
%struct.ar9300_base_eep_hdr = type <{ [2 x i16], i8, %struct.eepFlags, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i32 }>
%struct.eepFlags = type { i8, i8 }
%struct.ar9300_BaseExtension_1 = type { i8, [2 x i8], i8, [8 x i8], i8, i8 }
%struct.ar9300_cal_data_per_freq_op_loop = type { i8, i8, i8, i8, i8, i8 }
%struct.cal_tgt_pow_legacy = type { [4 x i8] }
%struct.cal_tgt_pow_ht = type { [14 x i8] }
%struct.cal_ctl_data_2g = type { [4 x i8] }
%struct.ar9300_modal_eep_header = type <{ i32, i32, [3 x i16], [3 x i8], [3 x i8], i8, i8, [5 x i8], [3 x i8], [11 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, [7 x i8] }>
%struct.ar9300_BaseExtension_2 = type { i8, i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8] }
%struct.cal_ctl_data_5g = type { [8 x i8] }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@eep_ar9300_ops = dso_local constant { %struct.eeprom_ops, [52 x i8] } { %struct.eeprom_ops { ptr @ath9k_hw_ar9300_check_eeprom, ptr @ath9k_hw_ar9300_get_eeprom, ptr @ath9k_hw_ar9300_fill_eeprom, ptr @ath9k_hw_ar9003_dump_eeprom, ptr @ath9k_hw_ar9300_get_eeprom_ver, ptr @ath9k_hw_ar9300_get_eeprom_rev, ptr @ath9k_hw_ar9300_set_board_values, ptr @ath9k_hw_ar9300_set_addac, ptr @ath9k_hw_ar9300_set_txpower, ptr @ath9k_hw_ar9300_get_spur_channel, ptr @ar9003_get_eepmisc }, [52 x i8] zeroinitializer }, align 32
@ar9300_default = internal constant { %struct.ar9300_eeprom, [256 x i8] } { %struct.ar9300_eeprom { i8 2, i8 2, [6 x i8] c"\00\02\03\04\05\06", [20 x i8] zeroinitializer, %struct.ar9300_base_eep_hdr <{ [2 x i16] [i16 0, i16 7936], i8 119, %struct.eepFlags { i8 3, i8 0 }, i8 0, i8 0, i8 0, i8 5, i8 0, [2 x i8] zeroinitializer, i8 12, i8 0, i8 3, i8 0, i8 8, i8 -1, i8 0, i32 0 }>, %struct.ar9300_modal_eep_header <{ i32 268500992, i32 572654080, [3 x i16] [i16 20481, i16 20481, i16 20481], [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, i8 36, i8 0, [5 x i8] zeroinitializer, [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 0, i8 14, i8 14, i8 3, i8 0, i8 44, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -522129396, i32 -522129300, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_1 zeroinitializer, [3 x i8] c"p\89\AC", [3 x [3 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [2 x i8] c"p\B8", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [2 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"$$$$" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"$$$$" }], [3 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"  \1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"  \1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"  \1C\18" }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\14  \1C\14  \1C\14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\14  \1C\14  \1C\14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\14  \1C\14  \1C\14" }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\14  \1C\14  \1C\14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\14  \1C\14  \1C\14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\14  \1C\14  \1C\14" }], [12 x i8] c"\11\12\15\17ABEG1257", [12 x [4 x i8]] [[4 x i8] c"pu\9D\A2", [4 x i8] c"pu\A2\FF", [4 x i8] c"pu\A2\FF", [4 x i8] c"z\7F\93\98", [4 x i8] c"pu\AC\B8", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2"], [12 x %struct.cal_ctl_data_2g] [%struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<|" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<||<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }], %struct.ar9300_modal_eep_header <{ i32 268500992, i32 572654080, [3 x i16] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, i8 68, i8 0, [5 x i8] zeroinitializer, [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 0, i8 14, i8 14, i8 3, i8 0, i8 45, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -2134867956, i32 -2134867968, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_2 zeroinitializer, [8 x i8] c"LThx\8C\A0\B9\CD", [3 x [8 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [8 x i8] c"LThx\8C\A0\B9\CD", [8 x i8] c"LXh\8C\B4\BD\B9\CD", [8 x i8] c"LXh\8C\B4\BD\B9\CD", [8 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"\14\14\14\0A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\14\14\14\0A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\14\14\14\0A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\14\14\14\0A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\14\14\14\0A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\14\14\14\0A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\14\14\14\0A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\14\14\14\0A" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\14\14\0A\0A\00\00\0A\0A\00\00\0A\0A\00\00" }], [9 x i8] c"\10\16\18@FH068", [9 x [8 x i8]] [[8 x i8] c"L\\`\8C\A0\B4\BD\CD", [8 x i8] c"L\\`\8C\90\B4\BD\CD", [8 x i8] c"NV^f\8E\96\AE\BF", [8 x i8] c"LP\\h\8C\B4\FF\FF", [8 x i8] c"L\\\8C\B4\FF\FF\FF\FF", [8 x i8] c"N^f\8E\9E\AE\FF\FF", [8 x i8] c"LPT\\\8C\A0\B4\BD", [8 x i8] c"L\\h\8C\98\B4\BD\CD", [8 x i8] c"NV^\8E\96\AE\BF\C7"], [9 x %struct.cal_ctl_data_5g] [%struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"<|<|||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"<||<|<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||<<<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"||||||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"||<||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|<||||<|" }] }, [256 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Trying EEPROM access at Address 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Trying OTP access at Address 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Found valid EEPROM data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Found block at %x: code=%d ref=%d length=%d major=%d minor=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Skipping bad header\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"checksum %x %x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"skipping block with bad checksum\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"eeprom address not in range\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to read eeprom region at offset %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"EEPROM structure size mismatch memory=%d eeprom=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"restored eeprom %d: uncompressed, length %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't find reference eeprom struct %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"restore eeprom %d: block, reference %d, length %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown compression code %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ar9300_x112 = internal constant { %struct.ar9300_eeprom, [256 x i8] } { %struct.ar9300_eeprom { i8 2, i8 5, [6 x i8] c"\00\03\7F\00\00\00", [20 x i8] c"x112-041-f0000\00\00\00\00\00\00", %struct.ar9300_base_eep_hdr <{ [2 x i16] [i16 0, i16 7936], i8 119, %struct.eepFlags { i8 3, i8 0 }, i8 0, i8 0, i8 0, i8 5, i8 0, [2 x i8] zeroinitializer, i8 13, i8 0, i8 6, i8 0, i8 8, i8 -1, i8 0, i32 0 }>, %struct.ar9300_modal_eep_header <{ i32 268500992, i32 572654080, [3 x i16] [i16 4096, i16 4096, i16 4096], [3 x i8] c"\1B\1B\1B", [3 x i8] c"\15\15\15", i8 50, i8 0, [5 x i8] c"\A4\00\00\00\00", [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 0, i8 14, i8 14, i8 3, i8 0, i8 44, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -2134867956, i32 -2134867968, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_1 zeroinitializer, [3 x i8] c"p\89\AC", [3 x [3 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [2 x i8] c"p\AC", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [2 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"&&&&" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"&&&&" }], [3 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"&&$\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"&&$\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"&&\22 " }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"$$$$$\22\22 \1E\1C\1C\1C\1C\1A" }, %struct.cal_tgt_pow_ht { [14 x i8] c"$$$$$\22$\22 \1E\1E\1E\1C\1A" }, %struct.cal_tgt_pow_ht { [14 x i8] c"$$$$$\22\22 \1E\1C\1C\1C\1C\1A" }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"$$$$\22  \1E\1C\1A\1A\1A\1A\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"$$$$\22 \22 \1E\1C\1C\1C\1C\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"$$$$\22  \1E\1C\1A\1A\1A\1A\18" }], [12 x i8] c"\11\12\15\17ABEG1257", [12 x [4 x i8]] [[4 x i8] c"pu\9D\A2", [4 x i8] c"pu\A2\FF", [4 x i8] c"pu\A2\FF", [4 x i8] c"z\7F\93\98", [4 x i8] c"pu\AC\B8", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2"], [12 x %struct.cal_ctl_data_2g] [%struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<|" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<||<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }], %struct.ar9300_modal_eep_header <{ i32 268500992, i32 572654080, [3 x i16] zeroinitializer, [3 x i8] c"\13\19\17", [3 x i8] c"\19\19\19", i8 70, i8 15, [5 x i8] zeroinitializer, [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 0, i8 14, i8 14, i8 3, i8 0, i8 45, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -522129396, i32 -522129300, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_2 { i8 72, i8 105, [3 x i8] c"\10\14\10", [3 x i8] c"\19\19\19", [3 x i8] c"\1D $", [3 x i8] c"\10\10\10" }, [8 x i8] c"LThx\8C\A0\B4\C5", [3 x [8 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [8 x i8] c"LThx\8C\A0\B9\CD", [8 x i8] c"LThx\8C\A0\B9\CD", [8 x i8] c"LThx\8C\A0\B9\CD", [8 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"  \1C\1A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"  \1C\1A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"  \1C\1A" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"  \1A\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"  \1A\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"  \18\16" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\18\16" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\18\16" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\1A \1C\1A\18\18\18\16\16" }, %struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\1A \1C\1A\18\18\18\16\16" }, %struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\1A \1C\1A\18\18\18\16\16" }, %struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\1A \1A\18\16\16\16\14\14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\1A \1A\18\16\14\12\10\10" }, %struct.cal_tgt_pow_ht { [14 x i8] c"    \1C\1A \18\14\10\12\10\0E\0E" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1C\1A\1E\18\14\10\12\10\0E\0E" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1C\1A\1E\18\14\10\12\10\0E\0E" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"   \1E\1C\1A\1E\1C\1A\18\18\18\16\16" }, %struct.cal_tgt_pow_ht { [14 x i8] c"   \1E\1C\1A\1E\1C\1A\18\18\18\16\16" }, %struct.cal_tgt_pow_ht { [14 x i8] c"   \1E\1C\1A\1E\1C\1A\18\18\18\16\16" }, %struct.cal_tgt_pow_ht { [14 x i8] c"   \1E\1C\1A\1E\1A\18\16\16\16\14\14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"   \1E\1C\1A\1E\1A\18\16\14\12\10\10" }, %struct.cal_tgt_pow_ht { [14 x i8] c"   \1E\1C\1A\1E\16\14\10\12\10\0E\0E" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1C\1A\1E\16\14\10\12\10\0E\0E" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1C\1A\1E\16\14\10\12\10\0E\0E" }], [9 x i8] c"\10\16\18@FH068", [9 x [8 x i8]] [[8 x i8] c"L\\`\8C\A0\B4\BD\CD", [8 x i8] c"L\\`\8C\90\B4\BD\CD", [8 x i8] c"NV^f\8E\96\AE\BF", [8 x i8] c"LP\\h\8C\B4\FF\FF", [8 x i8] c"L\\\8C\B4\FF\FF\FF\FF", [8 x i8] c"N^f\8E\9E\AE\FF\FF", [8 x i8] c"LPT\\\8C\A0\B4\BD", [8 x i8] c"L\\h\8C\98\B4\BD\CD", [8 x i8] c"NV^\8E\96\AE\BF\C7"], [9 x %struct.cal_ctl_data_5g] [%struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"<|<|||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"<||<|<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||<<<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"||||||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"||<||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|<||||<|" }] }, [256 x i8] zeroinitializer }, align 32
@ar9300_h116 = internal constant { %struct.ar9300_eeprom, [256 x i8] } { %struct.ar9300_eeprom { i8 2, i8 4, [6 x i8] c"\00\03\7F\00\00\00", [20 x i8] c"h116-041-f0000\00\00\00\00\00\00", %struct.ar9300_base_eep_hdr <{ [2 x i16] [i16 0, i16 7936], i8 51, %struct.eepFlags { i8 3, i8 0 }, i8 0, i8 0, i8 0, i8 5, i8 0, [2 x i8] zeroinitializer, i8 13, i8 0, i8 6, i8 0, i8 8, i8 -1, i8 16, i32 0 }>, %struct.ar9300_modal_eep_header <{ i32 268500992, i32 1145308160, [3 x i16] [i16 4096, i16 4096, i16 4096], [3 x i8] c"\1F\1F\1F", [3 x i8] c"\12\12\12", i8 25, i8 0, [5 x i8] c"\A4\00\00\00\00", [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 0, i8 14, i8 14, i8 3, i8 0, i8 44, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -2134867956, i32 -2134867968, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_1 zeroinitializer, [3 x i8] c"p\89\A2", [3 x [3 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [2 x i8] c"p\AC", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [2 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22\22\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22\22\22" }], [3 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22  " }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22  " }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22  " }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"     \1E  \1E\1C\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"     \1E  \1E\1C\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"     \1E  \1E\1C\00\00\00\00" }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1E\1C\1E\1E\1C\1A\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1E\1C\1E\1E\1C\1A\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1E\1C\1E\1E\1C\1A\00\00\00\00" }], [12 x i8] c"\11\12\15\17ABEG1257", [12 x [4 x i8]] [[4 x i8] c"pu\9D\A2", [4 x i8] c"pu\A2\FF", [4 x i8] c"pu\A2\FF", [4 x i8] c"z\7F\93\98", [4 x i8] c"pu\AC\B8", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2"], [12 x %struct.cal_ctl_data_2g] [%struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<|" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<||<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }], %struct.ar9300_modal_eep_header <{ i32 537001984, i32 1145308160, [3 x i16] [i16 20481, i16 20481, i16 20481], [3 x i8] c"\19\19\19", [3 x i8] c"\14\14\14", i8 70, i8 0, [5 x i8] zeroinitializer, [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 0, i8 14, i8 14, i8 3, i8 0, i8 45, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -522129396, i32 -522129300, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_2 { i8 35, i8 50, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, [8 x i8] c"HThx\8C\A0\B4\C5", [3 x [8 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [8 x i8] c"LXhx\8C\A0\B4\CD", [8 x i8] c"LXhx\8C\B4\BD\CD", [8 x i8] c"LXhx\8C\B4\BD\CD", [8 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1C\18\14\1E\1C\18\14\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1C\18\14\1E\1C\18\14\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1A\16\12\1E\1A\16\12\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1A\16\12\1E\1A\16\12\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\18\14\10\1E\18\14\10\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\18\14\10\1E\18\14\10\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\16\12\0E\1E\16\12\0E\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\16\12\0E\1E\16\12\0E\00\00\00\00" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\1A\16\12\1C\1A\16\12\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\1A\16\12\1C\1A\16\12\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\18\14\10\1C\18\14\10\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\18\14\10\1C\18\14\10\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\16\12\0E\1C\16\12\0E\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\16\12\0E\1C\16\12\0E\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\14\10\0C\1C\14\10\0C\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\14\10\0C\1C\14\10\0C\00\00\00\00" }], [9 x i8] c"\10\16\18@FH068", [9 x [8 x i8]] [[8 x i8] c"L\\`\8C\A0\B4\BD\CD", [8 x i8] c"L\\`\8C\90\B4\BD\CD", [8 x i8] c"NV^f\8E\96\AE\BF", [8 x i8] c"LP\\h\8C\B4\FF\FF", [8 x i8] c"L\\\8C\B4\FF\FF\FF\FF", [8 x i8] c"N^f\8E\9E\AE\FF\FF", [8 x i8] c"LPT\\\8C\A0\B4\BD", [8 x i8] c"L\\h\8C\98\B4\BD\CD", [8 x i8] c"NV^\8E\96\AE\BF\C7"], [9 x %struct.cal_ctl_data_5g] [%struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"<|<|||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"<||<|<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||<<<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"||||||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"||<||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|<||||<|" }] }, [256 x i8] zeroinitializer }, align 32
@ar9300_h112 = internal constant { %struct.ar9300_eeprom, [256 x i8] } { %struct.ar9300_eeprom { i8 2, i8 3, [6 x i8] c"\00\03\7F\00\00\00", [20 x i8] c"h112-241-f0000\00\00\00\00\00\00", %struct.ar9300_base_eep_hdr <{ [2 x i16] [i16 0, i16 7936], i8 119, %struct.eepFlags { i8 3, i8 0 }, i8 0, i8 0, i8 0, i8 5, i8 0, [2 x i8] zeroinitializer, i8 13, i8 0, i8 6, i8 0, i8 8, i8 -1, i8 16, i32 0 }>, %struct.ar9300_modal_eep_header <{ i32 268500992, i32 1145308160, [3 x i16] [i16 20481, i16 20481, i16 20481], [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, i8 25, i8 0, [5 x i8] c"\A4\00\00\00\00", [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 0, i8 14, i8 14, i8 3, i8 0, i8 44, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -2134867956, i32 -2134867968, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_1 zeroinitializer, [3 x i8] c"p\89\A2", [3 x [3 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [2 x i8] c"p\AC", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [2 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22\22\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22\22\22" }], [3 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22  " }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22  " }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22  " }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"     \1E  \1E\1C\1C\1C\1C\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"     \1E  \1E\1C\1C\1C\1C\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"     \1E  \1E\1C\1C\1C\1C\18" }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1E\1C\1E\1E\1C\1A\1A\1A\1A\16" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1E\1C\1E\1E\1C\1A\1A\1A\1A\16" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1E\1C\1E\1E\1C\1A\1A\1A\1A\16" }], [12 x i8] c"\11\12\15\17ABEG1257", [12 x [4 x i8]] [[4 x i8] c"pu\9D\A2", [4 x i8] c"pu\A2\FF", [4 x i8] c"pu\A2\FF", [4 x i8] c"z\7F\93\98", [4 x i8] c"pu\AC\B8", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2"], [12 x %struct.cal_ctl_data_2g] [%struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<|" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<||<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }], %struct.ar9300_modal_eep_header <{ i32 537001984, i32 1145308160, [3 x i16] [i16 20481, i16 20481, i16 20481], [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, i8 45, i8 0, [5 x i8] zeroinitializer, [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 0, i8 14, i8 14, i8 3, i8 0, i8 45, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -522129396, i32 -522129300, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_2 { i8 40, i8 50, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, [8 x i8] c"LThx\8C\A0\B4\C5", [3 x [8 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [8 x i8] c"LXhx\8C\A0\B4\CD", [8 x i8] c"LXhx\8C\B4\BD\CD", [8 x i8] c"LXhx\8C\B4\BD\CD", [8 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\1E\1E\1C\18" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1C\18\14\1E\1C\18\14\14\14\14\10" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1C\18\14\1E\1C\18\14\14\14\14\10" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1A\16\12\1E\1A\16\12\12\12\12\10" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1A\16\12\1E\1A\16\12\12\12\12\10" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\18\14\10\1E\18\14\10\10\10\10\0E" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\18\14\10\1E\18\14\10\10\10\10\0E" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\16\12\0E\1E\16\12\0E\0E\0E\0E\0C" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\16\12\0E\1E\16\12\0E\0E\0E\0E\0C" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\1A\16\12\1C\1A\16\12\12\12\12\0E" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\1A\16\12\1C\1A\16\12\12\12\12\0E" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\18\14\10\1C\18\14\10\10\10\10\0C" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\18\14\10\1C\18\14\10\10\10\10\0C" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\16\12\0E\1C\16\12\0E\0E\0E\0E\0A" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\16\12\0E\1C\16\12\0E\0E\0E\0E\0A" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\14\10\0C\1C\14\10\0C\0C\0C\0C\08" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1C\1C\1C\14\10\0C\1C\14\10\0C\0C\0C\0C\08" }], [9 x i8] c"\10\16\18@FH068", [9 x [8 x i8]] [[8 x i8] c"L\\`\8C\A0\B4\BD\CD", [8 x i8] c"L\\`\8C\90\B4\BD\CD", [8 x i8] c"NV^f\8E\96\AE\BF", [8 x i8] c"LP\\h\8C\B4\FF\FF", [8 x i8] c"L\\\8C\B4\FF\FF\FF\FF", [8 x i8] c"N^f\8E\9E\AE\FF\FF", [8 x i8] c"LPT\\\8C\A0\B4\BD", [8 x i8] c"L\\h\8C\98\B4\BD\CD", [8 x i8] c"NV^\8E\96\AE\BF\C7"], [9 x %struct.cal_ctl_data_5g] [%struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"<|<|||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"<||<|<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||<<<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"||||||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"||<||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|<||||<|" }] }, [256 x i8] zeroinitializer }, align 32
@ar9300_x113 = internal constant { %struct.ar9300_eeprom, [256 x i8] } { %struct.ar9300_eeprom { i8 2, i8 6, [6 x i8] c"\00\03\7F\00\00\00", [20 x i8] c"x113-023-f0000\00\00\00\00\00\00", %struct.ar9300_base_eep_hdr <{ [2 x i16] [i16 0, i16 7936], i8 119, %struct.eepFlags { i8 1, i8 0 }, i8 0, i8 0, i8 0, i8 5, i8 0, [2 x i8] zeroinitializer, i8 13, i8 0, i8 6, i8 0, i8 8, i8 -1, i8 33, i32 0 }>, %struct.ar9300_modal_eep_header <{ i32 268500992, i32 1145308160, [3 x i16] [i16 20481, i16 20481, i16 20481], [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, i8 25, i8 0, [5 x i8] c"\A4\00\00\00\00", [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 0, i8 14, i8 14, i8 3, i8 0, i8 44, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -2134867956, i32 -2134867968, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_1 zeroinitializer, [3 x i8] c"p\89\AC", [3 x [3 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [2 x i8] c"p\AC", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [3 x i8] c"p\89\AC", [2 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22\22\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22\22\22" }], [3 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22  " }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22  " }, %struct.cal_tgt_pow_legacy { [4 x i8] c"\22\22  " }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"     \1C  \1E\1C\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"     \1C  \1E\1C\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"     \1C  \1E\1C\00\00\00\00" }], [3 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1E\1C\1E\1E\1C\1A\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1E\1C\1E\1E\1C\1A\00\00\00\00" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\1E\1E\1E\1E\1E\1C\1E\1E\1C\1A\00\00\00\00" }], [12 x i8] c"\11\12\15\17ABEG1257", [12 x [4 x i8]] [[4 x i8] c"pu\9D\A2", [4 x i8] c"pu\A2\FF", [4 x i8] c"pu\A2\FF", [4 x i8] c"z\7F\93\98", [4 x i8] c"pu\AC\B8", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"pu\AC\00", [4 x i8] c"z\7F\93\A2"], [12 x %struct.cal_ctl_data_2g] [%struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<|" }, %struct.cal_ctl_data_2g { [4 x i8] c"|<<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<||<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|<<" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }, %struct.cal_ctl_data_2g { [4 x i8] c"<|||" }], %struct.ar9300_modal_eep_header <{ i32 537001984, i32 286327040, [3 x i16] [i16 20481, i16 20481, i16 20481], [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, i8 68, i8 0, [5 x i8] c"\8C\00\00\00\00", [3 x i8] c"\FF\00\00", [11 x i8] zeroinitializer, i8 0, i8 15, i8 14, i8 14, i8 3, i8 0, i8 45, i8 -30, i8 0, i8 2, i8 14, i8 28, i32 -522129396, i32 -522129300, i16 0, i8 0, [7 x i8] zeroinitializer }>, %struct.ar9300_BaseExtension_2 { i8 72, i8 105, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, [8 x i8] c"LXhx\8C\A0\BD\C5", [3 x [8 x %struct.ar9300_cal_data_per_freq_op_loop]] zeroinitializer, [8 x i8] c"LThx\8C\A0\BD\C5", [8 x i8] c"LXhx\8C\B4\BD\CD", [8 x i8] c"NVhz\8E\AE\BF\CD", [8 x %struct.cal_tgt_pow_legacy] [%struct.cal_tgt_pow_legacy { [4 x i8] c"*((\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"*((\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"*((\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"*((\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"*((\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"*((\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"*((\22" }, %struct.cal_tgt_pow_legacy { [4 x i8] c"*((\22" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"(((( \1C(( \1C(( \14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((( \1C(( \1C(( \14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((( \1C(( \1C(( \14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((( \1C(( \1C(( \14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((( \1C(( \1C(( \14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((( \1C(( \1C(( \14" }, %struct.cal_tgt_pow_ht { [14 x i8] c"&&&& \1C&& \1C&& \1A" }, %struct.cal_tgt_pow_ht { [14 x i8] c"$$$$ \1C$$ \1C$$ \1A" }], [8 x %struct.cal_tgt_pow_ht] [%struct.cal_tgt_pow_ht { [14 x i8] c"(((&\1E\1A((\1E\1A((\1E\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((&\1E\1A((\1E\1A((\1E\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((&\1E\1A((\1E\1A((\1E\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((&\1E\1A((\1E\1A((\1E\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((&\1E\1A((\1E\1A((\1E\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"(((&\1E\1A((\1E\1A((\1E\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"$$$$\1E\1A$$\1E\1A$$\1E\18" }, %struct.cal_tgt_pow_ht { [14 x i8] c"\22\22\22\22\1E\1A\22\22\1E\1A\22\22\1E\18" }], [9 x i8] c"\10\16\18@FH068", [9 x [8 x i8]] [[8 x i8] c"L\\`\8C\A0\B4\BD\CD", [8 x i8] c"L\\`\8C\90\B4\BD\CD", [8 x i8] c"NV^f\8E\96\AE\BF", [8 x i8] c"LP\\h\8C\B4\FF\FF", [8 x i8] c"L\\\8C\B4\FF\FF\FF\FF", [8 x i8] c"N^f\8E\9E\AE\FF\FF", [8 x i8] c"LPT\\\8C\A0\B4\BD", [8 x i8] c"L\\h\8C\98\B4\BD\CD", [8 x i8] c"NV^\8E\96\AE\BF\C7"], [9 x %struct.cal_ctl_data_5g] [%struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"<|<|||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"<||<|<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||<<<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|||||<<<" }, %struct.cal_ctl_data_5g { [8 x i8] c"||||||||" }, %struct.cal_ctl_data_5g { [8 x i8] c"||<||||<" }, %struct.cal_ctl_data_5g { [8 x i8] c"|<||||<|" }] }, [256 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Restore at %d: spot=%d offset=%d length=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Bad restore at %d: spot=%d offset=%d length=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%20s :\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"2GHz modal Header\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Calibration data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"5GHz modal Header\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%20s : %10d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EEPROM Version\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RegDomain1\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RegDomain2\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX Mask\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX Mask\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Allow 5GHz\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Allow 2GHz\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 2GHz HT20\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 2GHz HT40\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 5Ghz HT20\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 5Ghz HT40\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Big Endian\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RF Silent\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT option\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Device Cap\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Device Type\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Power Table Offset\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tuning Caps1\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tuning Caps2\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Enable Tx Temp Comp\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Enable Tx Volt Comp\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enable fast clock\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Enable doubling\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Internal regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Enable Paprd\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Driver Strength\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Quick Drop\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain mask Reduce\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Write enable Gpio\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WLAN Disable Gpio\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WLAN LED Gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Rx Band Select Gpio\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Tx Gain\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Rx Gain\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SW Reg\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%20s : %pM\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MacAddress\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain0 Ant. Control\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain1 Ant. Control\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain2 Ant. Control\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ant. Common Control\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ant. Common Control2\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ant. Gain\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Switch Settle\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 xatten1DB\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain1 xatten1DB\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain2 xatten1DB\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain0 xatten1Margin\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain1 xatten1Margin\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain2 xatten1Margin\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Temp Slope\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Volt Slope\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spur Channels0\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spur Channels1\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spur Channels2\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spur Channels3\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spur Channels4\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain0 NF Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain1 NF Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain2 NF Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txEndToXpaOff\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xPA Bias Level\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"txFrameToDataStart\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txFrameToPaOn\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txFrameToXpaOn\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"txClip\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Desired size\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Chain %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Freq\09 ref\09volt\09temp\09nf_cal\09nf_pow\09rx_temp\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\09\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d\09%d\09%d\09%d\09%d\09%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__const.ar9003_hw_atten_apply.ext_atten_reg = private unnamed_addr constant [3 x i32] [i32 40472, i32 44568, i32 48664], align 4
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"paprd disabled for mcs %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TPC[%02d] 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@ar9003_hw_set_power_per_rate_table.ctlModesFor11a = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 6, i16 -32768, i16 8], [24 x i8] zeroinitializer }, align 32
@ar9003_hw_set_power_per_rate_table.ctlModesFor11g = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 1, i16 2, i16 5, i16 -32767, i16 -32766, i16 7], [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"LOOP-Mode ctlMode %d < %d, isHt40CtlMode %d, EXT_ADDITIVE %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"LOOP-Ctlidx %d: cfgCtl 0x%2.2x pCtlMode 0x%2.2x ctlIndex 0x%2.2x chan %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"SEL-Min ctlMode %d pCtlMode %d 2xMaxEdge %d sP %d minCtlPwr %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ch=%d f=%d low=%d %d h=%d %d n=%d %d p=%d %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"for frequency=%d, calibration correction = %d %d %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid 2GHz cal pier index, must be less than %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 512, i64 576, i64 640, i64 704, i64 1536]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.122 = internal global [16 x i64] [i64 14, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 13, i64 14, i64 26, i64 28, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.126 = internal global [6 x i64] [i64 4, i64 32, i64 448, i64 768, i64 1280, i64 1536]
@__sancov_gen_cov_switch_values.127 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 448, i64 640]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 448, i64 640]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 448, i64 640]
@__sancov_gen_cov_switch_values.131 = internal global [7 x i64] [i64 5, i64 32, i64 640, i64 704, i64 1024, i64 1280, i64 1536]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 576, i64 704]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 576, i64 704]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 576, i64 704]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 448, i64 768]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 768, i64 1280]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 768, i64 1280]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 448, i64 640, i64 704]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 448, i64 640, i64 704]
@__sancov_gen_cov_switch_values.141 = internal global [9 x i64] [i64 7, i64 16, i64 0, i64 1, i64 2, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 1280, i64 1536]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"eep_ar9300_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5621, i32 25 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"ar9300_default\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 46, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3308, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3327, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3339, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3350, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3356, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3365, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3371, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3049, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3080, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3193, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3199, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3207, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3214, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3221, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [12 x i8] c"ar9300_x112\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1783, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"ar9300_h116\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2361, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"ar9300_h112\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1204, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant [12 x i8] c"ar9300_x113\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 625, i32 35 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3165, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3171, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3502, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3502, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3506, i32 43 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3510, i32 18 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3522, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3523, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3524, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3525, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3526, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3527, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3529, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3531, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3533, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3535, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3537, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3539, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3541, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3542, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3543, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3544, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3545, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3546, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3547, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3548, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3549, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3550, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3551, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3552, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3553, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3554, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3555, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3556, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3557, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3558, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3559, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3560, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3561, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3562, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3563, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3565, i32 42 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3565, i32 58 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3405, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3406, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3407, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3408, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3409, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3410, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3411, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3412, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3413, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3414, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3415, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3416, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3417, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3418, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3419, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3420, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3421, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3422, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3423, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3424, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3425, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3426, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3427, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3429, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3430, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3431, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3432, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3433, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3434, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3435, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3461, i32 43 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3464, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3476, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3479, i32 5 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5518, i32 5 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5536, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant [15 x i8] c"ctlModesFor11a\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5240, i32 19 }
@___asan_gen_.450 = private unnamed_addr constant [15 x i8] c"ctlModesFor11g\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5243, i32 19 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5299, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5315, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5356, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5046, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 5124, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.469 = private constant [50 x i8] c"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 4783, i32 4 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @eep_ar9300_ops, ptr @ar9300_default, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ar9300_x112, ptr @ar9300_h116, ptr @ar9300_h112, ptr @ar9300_x113, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @ar9003_hw_set_power_per_rate_table.ctlModesFor11a, ptr @ar9003_hw_set_power_per_rate_table.ctlModesFor11g, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.102], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eep_ar9300_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9300_default to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9300_x112 to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9300_h116 to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9300_h112 to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9300_x113 to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9003_hw_set_power_per_rate_table.ctlModesFor11a to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9003_hw_set_power_per_rate_table.ctlModesFor11g to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ar9003_hw_ant_ctrl_common_get(ptr nocapture noundef readonly %ah, i1 noundef zeroext %is2ghz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %modalHeader2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 10
  %modalHeader5G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 1, i32 1, i32 2
  %retval.0.i = select i1 %is2ghz, ptr %modalHeader2G.i, ptr %modalHeader5G.i
  %0 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %retval.0.i, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ar9003_hw_ant_ctrl_common_2_get(ptr nocapture noundef readonly %ah, i1 noundef zeroext %is2ghz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %modalHeader2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 10
  %modalHeader5G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 1, i32 1, i32 2
  %retval.0.i = select i1 %is2ghz, ptr %modalHeader2G.i, ptr %modalHeader5G.i
  %antCtrlCommon2 = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %retval.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %antCtrlCommon2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %antCtrlCommon2, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_internal_regulator_apply(ptr noundef %ah) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %featureEnable = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 25
  %0 = ptrtoint ptr %featureEnable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %featureEnable, align 1
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %macVersion321 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %macVersion321, align 4
  br i1 %tobool.not, label %if.else319, label %if.then

if.then:                                          ; preds = %entry
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.else301 [
    i32 512, label %if.then.if.then6_crit_edge
    i32 576, label %if.then.if.then6_crit_edge737
    i32 640, label %if.then.if.then254_crit_edge
    i32 704, label %if.then.if.then254_crit_edge738
    i32 1536, label %if.then.if.then254_crit_edge739
  ]

if.then.if.then254_crit_edge739:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then254

if.then.if.then254_crit_edge738:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then254

if.then.if.then254_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then254

if.then.if.then6_crit_edge737:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %if.then.if.then6_crit_edge, %if.then.if.then6_crit_edge737
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %call = tail call i32 %7(ptr noundef %ah, i32 noundef 93252) #11
  %and21 = and i32 %call, -2097153
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %10 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %macVersion321, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %11, label %cond.false33 [
    i32 640, label %if.then6.cond.end39_crit_edge
    i32 704, label %if.then6.cond.end39_crit_edge740
  ]

if.then6.cond.end39_crit_edge740:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end39

if.then6.cond.end39_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end39

cond.false33:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %11)
  %cmp36 = icmp eq i32 %11, 1536
  %cond38 = select i1 %cmp36, i32 93380, i32 93252
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false33, %if.then6.cond.end39_crit_edge, %if.then6.cond.end39_crit_edge740
  %cond40 = phi i32 [ %cond38, %cond.false33 ], [ 90948, %if.then6.cond.end39_crit_edge ], [ 90948, %if.then6.cond.end39_crit_edge740 ]
  tail call void %9(ptr noundef %ah, i32 noundef %and21, i32 noundef %cond40) #11
  %13 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %macVersion321, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %14, label %cond.false51 [
    i32 640, label %cond.end39.cond.end57_crit_edge
    i32 704, label %cond.end39.cond.end57_crit_edge741
  ]

cond.end39.cond.end57_crit_edge741:               ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end57

cond.end39.cond.end57_crit_edge:                  ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end57

cond.false51:                                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %14)
  %cmp54 = icmp eq i32 %14, 1536
  %cond56 = select i1 %cmp54, i32 93380, i32 93252
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false51, %cond.end39.cond.end57_crit_edge, %cond.end39.cond.end57_crit_edge741
  %cond58 = phi i32 [ %cond56, %cond.false51 ], [ 90948, %cond.end39.cond.end57_crit_edge ], [ 90948, %cond.end39.cond.end57_crit_edge741 ]
  %16 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ah, align 4
  %call8.i = tail call i32 %17(ptr noundef %ah, i32 noundef %cond58) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %and21)
  %cmp.not9.i = icmp eq i32 %call8.i, %and21
  br i1 %cmp.not9.i, label %cond.end57.if.end_crit_edge, label %cond.end57.if.end.i_crit_edge

cond.end57.if.end.i_crit_edge:                    ; preds = %cond.end57
  br label %if.end.i

cond.end57.if.end_crit_edge:                      ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %cond.end57.if.end.i_crit_edge
  %timeout.010.i = phi i32 [ %dec.i, %if.end.i.if.end.i_crit_edge ], [ 100, %cond.end57.if.end.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.010.i, -1
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  tail call void %19(ptr noundef %ah, i32 noundef %and21, i32 noundef %cond58) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #11
  %21 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 %22(ptr noundef %ah, i32 noundef %cond58) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %and21)
  %cmp.not.i = icmp eq i32 %call.i, %and21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp1.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp1.i
  br i1 %or.cond.i, label %is_pmu_set.exit, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

is_pmu_set.exit:                                  ; preds = %if.end.i
  br i1 %cmp.not.i, label %is_pmu_set.exit.if.end_crit_edge, label %is_pmu_set.exit.cleanup522_crit_edge

is_pmu_set.exit.cleanup522_crit_edge:             ; preds = %is_pmu_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup522

is_pmu_set.exit.if.end_crit_edge:                 ; preds = %is_pmu_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %is_pmu_set.exit.if.end_crit_edge, %cond.end57.if.end_crit_edge
  %23 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %macVersion321, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %24)
  %cmp63 = icmp eq i32 %24, 512
  br i1 %cmp63, label %if.end70.thread, label %if.end70

if.end70.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %is_clk_25mhz = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 128
  %25 = ptrtoint ptr %is_clk_25mhz to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_clk_25mhz, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool66.not = icmp eq i8 %26, 0
  %. = select i1 %tobool66.not, i32 52183928, i32 52183942
  %27 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write, align 4
  br label %cond.false83

if.end70:                                         ; preds = %if.end
  %29 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write, align 4
  %31 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %24, label %if.end70.cond.false83_crit_edge [
    i32 640, label %if.end70.cond.end89_crit_edge
    i32 704, label %if.end70.cond.end89_crit_edge742
  ]

if.end70.cond.end89_crit_edge742:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end89

if.end70.cond.end89_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end89

if.end70.cond.false83_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false83

cond.false83:                                     ; preds = %if.end70.cond.false83_crit_edge, %if.end70.thread
  %32 = phi ptr [ %28, %if.end70.thread ], [ %30, %if.end70.cond.false83_crit_edge ]
  %reg_pmu_set.0729 = phi i32 [ %., %if.end70.thread ], [ 320635514, %if.end70.cond.false83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %24)
  %cmp86 = icmp eq i32 %24, 1536
  %cond88 = select i1 %cmp86, i32 93376, i32 93248
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false83, %if.end70.cond.end89_crit_edge, %if.end70.cond.end89_crit_edge742
  %33 = phi ptr [ %32, %cond.false83 ], [ %30, %if.end70.cond.end89_crit_edge ], [ %30, %if.end70.cond.end89_crit_edge742 ]
  %reg_pmu_set.0728 = phi i32 [ %reg_pmu_set.0729, %cond.false83 ], [ 320635514, %if.end70.cond.end89_crit_edge ], [ 320635514, %if.end70.cond.end89_crit_edge742 ]
  %cond90 = phi i32 [ %cond88, %cond.false83 ], [ 90944, %if.end70.cond.end89_crit_edge ], [ 90944, %if.end70.cond.end89_crit_edge742 ]
  tail call void %33(ptr noundef %ah, i32 noundef %reg_pmu_set.0728, i32 noundef %cond90) #11
  %34 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %macVersion321, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %35, label %cond.false101 [
    i32 640, label %cond.end89.cond.end107_crit_edge
    i32 704, label %cond.end89.cond.end107_crit_edge743
  ]

cond.end89.cond.end107_crit_edge743:              ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end107

cond.end89.cond.end107_crit_edge:                 ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end107

cond.false101:                                    ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %35)
  %cmp104 = icmp eq i32 %35, 1536
  %cond106 = select i1 %cmp104, i32 93376, i32 93248
  br label %cond.end107

cond.end107:                                      ; preds = %cond.false101, %cond.end89.cond.end107_crit_edge, %cond.end89.cond.end107_crit_edge743
  %cond108 = phi i32 [ %cond106, %cond.false101 ], [ 90944, %cond.end89.cond.end107_crit_edge ], [ 90944, %cond.end89.cond.end107_crit_edge743 ]
  %37 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ah, align 4
  %call8.i687 = tail call i32 %38(ptr noundef %ah, i32 noundef %cond108) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i687, i32 %reg_pmu_set.0728)
  %cmp.not9.i688 = icmp eq i32 %call8.i687, %reg_pmu_set.0728
  br i1 %cmp.not9.i688, label %cond.end107.if.end111_crit_edge, label %cond.end107.if.end.i697_crit_edge

cond.end107.if.end.i697_crit_edge:                ; preds = %cond.end107
  br label %if.end.i697

cond.end107.if.end111_crit_edge:                  ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.end.i697:                                      ; preds = %if.end.i697.if.end.i697_crit_edge, %cond.end107.if.end.i697_crit_edge
  %timeout.010.i691 = phi i32 [ %dec.i692, %if.end.i697.if.end.i697_crit_edge ], [ 100, %cond.end107.if.end.i697_crit_edge ]
  %dec.i692 = add nsw i32 %timeout.010.i691, -1
  %39 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write, align 4
  tail call void %40(ptr noundef %ah, i32 noundef %reg_pmu_set.0728, i32 noundef %cond108) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #11
  %42 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ah, align 4
  %call.i693 = tail call i32 %43(ptr noundef %ah, i32 noundef %cond108) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i693, i32 %reg_pmu_set.0728)
  %cmp.not.i694 = icmp eq i32 %call.i693, %reg_pmu_set.0728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i692)
  %cmp1.i695 = icmp eq i32 %dec.i692, 0
  %or.cond.i696 = select i1 %cmp.not.i694, i1 true, i1 %cmp1.i695
  br i1 %or.cond.i696, label %is_pmu_set.exit699, label %if.end.i697.if.end.i697_crit_edge

if.end.i697.if.end.i697_crit_edge:                ; preds = %if.end.i697
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i697

is_pmu_set.exit699:                               ; preds = %if.end.i697
  br i1 %cmp.not.i694, label %is_pmu_set.exit699.if.end111_crit_edge, label %is_pmu_set.exit699.cleanup522_crit_edge

is_pmu_set.exit699.cleanup522_crit_edge:          ; preds = %is_pmu_set.exit699
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup522

is_pmu_set.exit699.if.end111_crit_edge:           ; preds = %is_pmu_set.exit699
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.end111:                                        ; preds = %is_pmu_set.exit699.if.end111_crit_edge, %cond.end107.if.end111_crit_edge
  %44 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ah, align 4
  %46 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %macVersion321, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %47, label %cond.false124 [
    i32 640, label %if.end111.cond.end130_crit_edge
    i32 704, label %if.end111.cond.end130_crit_edge744
  ]

if.end111.cond.end130_crit_edge744:               ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end130

if.end111.cond.end130_crit_edge:                  ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end130

cond.false124:                                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %47)
  %cmp127 = icmp eq i32 %47, 1536
  %cond129 = select i1 %cmp127, i32 93380, i32 93252
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false124, %if.end111.cond.end130_crit_edge, %if.end111.cond.end130_crit_edge744
  %cond131 = phi i32 [ %cond129, %cond.false124 ], [ 90948, %if.end111.cond.end130_crit_edge ], [ 90948, %if.end111.cond.end130_crit_edge744 ]
  %call132 = tail call i32 %45(ptr noundef %ah, i32 noundef %cond131) #11
  %and133 = and i32 %call132, 4194303
  %or = or i32 %and133, 268435456
  %49 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write, align 4
  %51 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %macVersion321, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %52, label %cond.false146 [
    i32 640, label %cond.end130.cond.end152_crit_edge
    i32 704, label %cond.end130.cond.end152_crit_edge745
  ]

cond.end130.cond.end152_crit_edge745:             ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end152

cond.end130.cond.end152_crit_edge:                ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end152

cond.false146:                                    ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %52)
  %cmp149 = icmp eq i32 %52, 1536
  %cond151 = select i1 %cmp149, i32 93380, i32 93252
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false146, %cond.end130.cond.end152_crit_edge, %cond.end130.cond.end152_crit_edge745
  %cond153 = phi i32 [ %cond151, %cond.false146 ], [ 90948, %cond.end130.cond.end152_crit_edge ], [ 90948, %cond.end130.cond.end152_crit_edge745 ]
  tail call void %50(ptr noundef %ah, i32 noundef %or, i32 noundef %cond153) #11
  %54 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %macVersion321, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %55, label %cond.false164 [
    i32 640, label %cond.end152.cond.end170_crit_edge
    i32 704, label %cond.end152.cond.end170_crit_edge746
  ]

cond.end152.cond.end170_crit_edge746:             ; preds = %cond.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end170

cond.end152.cond.end170_crit_edge:                ; preds = %cond.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end170

cond.false164:                                    ; preds = %cond.end152
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %55)
  %cmp167 = icmp eq i32 %55, 1536
  %cond169 = select i1 %cmp167, i32 93380, i32 93252
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false164, %cond.end152.cond.end170_crit_edge, %cond.end152.cond.end170_crit_edge746
  %cond171 = phi i32 [ %cond169, %cond.false164 ], [ 90948, %cond.end152.cond.end170_crit_edge ], [ 90948, %cond.end152.cond.end170_crit_edge746 ]
  %57 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ah, align 4
  %call8.i700 = tail call i32 %58(ptr noundef %ah, i32 noundef %cond171) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i700, i32 %or)
  %cmp.not9.i701 = icmp eq i32 %call8.i700, %or
  br i1 %cmp.not9.i701, label %cond.end170.if.end174_crit_edge, label %cond.end170.if.end.i710_crit_edge

cond.end170.if.end.i710_crit_edge:                ; preds = %cond.end170
  br label %if.end.i710

cond.end170.if.end174_crit_edge:                  ; preds = %cond.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.end.i710:                                      ; preds = %if.end.i710.if.end.i710_crit_edge, %cond.end170.if.end.i710_crit_edge
  %timeout.010.i704 = phi i32 [ %dec.i705, %if.end.i710.if.end.i710_crit_edge ], [ 100, %cond.end170.if.end.i710_crit_edge ]
  %dec.i705 = add nsw i32 %timeout.010.i704, -1
  %59 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write, align 4
  tail call void %60(ptr noundef %ah, i32 noundef %or, i32 noundef %cond171) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 2147480) #11
  %62 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ah, align 4
  %call.i706 = tail call i32 %63(ptr noundef %ah, i32 noundef %cond171) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i706, i32 %or)
  %cmp.not.i707 = icmp eq i32 %call.i706, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i705)
  %cmp1.i708 = icmp eq i32 %dec.i705, 0
  %or.cond.i709 = select i1 %cmp.not.i707, i1 true, i1 %cmp1.i708
  br i1 %or.cond.i709, label %is_pmu_set.exit712, label %if.end.i710.if.end.i710_crit_edge

if.end.i710.if.end.i710_crit_edge:                ; preds = %if.end.i710
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i710

is_pmu_set.exit712:                               ; preds = %if.end.i710
  br i1 %cmp.not.i707, label %is_pmu_set.exit712.if.end174_crit_edge, label %is_pmu_set.exit712.cleanup522_crit_edge

is_pmu_set.exit712.cleanup522_crit_edge:          ; preds = %is_pmu_set.exit712
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup522

is_pmu_set.exit712.if.end174_crit_edge:           ; preds = %is_pmu_set.exit712
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.end174:                                        ; preds = %is_pmu_set.exit712.if.end174_crit_edge, %cond.end170.if.end174_crit_edge
  %64 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ah, align 4
  %66 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %macVersion321, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %67, label %cond.false187 [
    i32 640, label %if.end174.cond.end193_crit_edge
    i32 704, label %if.end174.cond.end193_crit_edge747
  ]

if.end174.cond.end193_crit_edge747:               ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end193

if.end174.cond.end193_crit_edge:                  ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end193

cond.false187:                                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %67)
  %cmp190 = icmp eq i32 %67, 1536
  %cond192 = select i1 %cmp190, i32 93380, i32 93252
  br label %cond.end193

cond.end193:                                      ; preds = %cond.false187, %if.end174.cond.end193_crit_edge, %if.end174.cond.end193_crit_edge747
  %cond194 = phi i32 [ %cond192, %cond.false187 ], [ 90948, %if.end174.cond.end193_crit_edge ], [ 90948, %if.end174.cond.end193_crit_edge747 ]
  %call195 = tail call i32 %65(ptr noundef %ah, i32 noundef %cond194) #11
  %or197 = or i32 %call195, 2097152
  %69 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write, align 4
  %71 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %macVersion321, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %72, label %cond.false210 [
    i32 640, label %cond.end193.cond.end216_crit_edge
    i32 704, label %cond.end193.cond.end216_crit_edge748
  ]

cond.end193.cond.end216_crit_edge748:             ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end216

cond.end193.cond.end216_crit_edge:                ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end216

cond.false210:                                    ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %72)
  %cmp213 = icmp eq i32 %72, 1536
  %cond215 = select i1 %cmp213, i32 93380, i32 93252
  br label %cond.end216

cond.end216:                                      ; preds = %cond.false210, %cond.end193.cond.end216_crit_edge, %cond.end193.cond.end216_crit_edge748
  %cond217 = phi i32 [ %cond215, %cond.false210 ], [ 90948, %cond.end193.cond.end216_crit_edge ], [ 90948, %cond.end193.cond.end216_crit_edge748 ]
  tail call void %70(ptr noundef %ah, i32 noundef %or197, i32 noundef %cond217) #11
  %74 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %macVersion321, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %75, label %cond.false228 [
    i32 640, label %cond.end216.cond.end234_crit_edge
    i32 704, label %cond.end216.cond.end234_crit_edge749
  ]

cond.end216.cond.end234_crit_edge749:             ; preds = %cond.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end234

cond.end216.cond.end234_crit_edge:                ; preds = %cond.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end234

cond.false228:                                    ; preds = %cond.end216
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %75)
  %cmp231 = icmp eq i32 %75, 1536
  %cond233 = select i1 %cmp231, i32 93380, i32 93252
  br label %cond.end234

cond.end234:                                      ; preds = %cond.false228, %cond.end216.cond.end234_crit_edge, %cond.end216.cond.end234_crit_edge749
  %cond235 = phi i32 [ %cond233, %cond.false228 ], [ 90948, %cond.end216.cond.end234_crit_edge ], [ 90948, %cond.end216.cond.end234_crit_edge749 ]
  %77 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ah, align 4
  %call8.i713 = tail call i32 %78(ptr noundef %ah, i32 noundef %cond235) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i713, i32 %or197)
  %cmp.not9.i714 = icmp eq i32 %call8.i713, %or197
  br i1 %cmp.not9.i714, label %cond.end234.cleanup522_crit_edge, label %cond.end234.if.end.i723_crit_edge

cond.end234.if.end.i723_crit_edge:                ; preds = %cond.end234
  br label %if.end.i723

cond.end234.cleanup522_crit_edge:                 ; preds = %cond.end234
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup522

if.end.i723:                                      ; preds = %if.end.i723.if.end.i723_crit_edge, %cond.end234.if.end.i723_crit_edge
  %timeout.010.i717 = phi i32 [ %dec.i718, %if.end.i723.if.end.i723_crit_edge ], [ 100, %cond.end234.if.end.i723_crit_edge ]
  %dec.i718 = add nsw i32 %timeout.010.i717, -1
  %79 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write, align 4
  tail call void %80(ptr noundef %ah, i32 noundef %or197, i32 noundef %cond235) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 2147480) #11
  %82 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ah, align 4
  %call.i719 = tail call i32 %83(ptr noundef %ah, i32 noundef %cond235) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i719, i32 %or197)
  %cmp.not.i720 = icmp eq i32 %call.i719, %or197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i718)
  %cmp1.i721 = icmp eq i32 %dec.i718, 0
  %or.cond.i722 = select i1 %cmp.not.i720, i1 true, i1 %cmp1.i721
  br i1 %or.cond.i722, label %if.end.i723.cleanup522_crit_edge, label %if.end.i723.if.end.i723_crit_edge

if.end.i723.if.end.i723_crit_edge:                ; preds = %if.end.i723
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i723

if.end.i723.cleanup522_crit_edge:                 ; preds = %if.end.i723
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup522

if.then254:                                       ; preds = %if.then.if.then254_crit_edge, %if.then.if.then254_crit_edge738, %if.then.if.then254_crit_edge739
  %swreg = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 6
  %84 = ptrtoint ptr %swreg to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %swreg, align 1
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %write256 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %87 = ptrtoint ptr %write256 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write256, align 4
  %89 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %4, label %cond.false267 [
    i32 640, label %if.then254.cond.end273_crit_edge
    i32 704, label %if.then254.cond.end273_crit_edge750
  ]

if.then254.cond.end273_crit_edge750:              ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end273

if.then254.cond.end273_crit_edge:                 ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end273

cond.false267:                                    ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %4)
  %cmp270 = icmp eq i32 %4, 1536
  %cond272 = select i1 %cmp270, i32 93376, i32 93248
  br label %cond.end273

cond.end273:                                      ; preds = %cond.false267, %if.then254.cond.end273_crit_edge, %if.then254.cond.end273_crit_edge750
  %cond274 = phi i32 [ %cond272, %cond.false267 ], [ 90944, %if.then254.cond.end273_crit_edge ], [ 90944, %if.then254.cond.end273_crit_edge750 ]
  tail call void %88(ptr noundef %ah, i32 noundef %86, i32 noundef %cond274) #11
  %90 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %macVersion321, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %91)
  %cmp277 = icmp eq i32 %91, 1536
  br i1 %cmp277, label %if.then279, label %cond.end273.cleanup522_crit_edge

cond.end273.cleanup522_crit_edge:                 ; preds = %cond.end273
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup522

if.then279:                                       ; preds = %cond.end273
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %write256 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write256, align 4
  tail call void %93(ptr noundef %ah, i32 noundef 270532608, i32 noundef 93380) #11
  br label %cleanup522

if.else301:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %swreg302 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 6
  %94 = ptrtoint ptr %swreg302 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %swreg302, align 1
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %write304 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %97 = ptrtoint ptr %write304 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write304, align 4
  %99 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ah, align 4
  %call307 = tail call i32 %100(ptr noundef %ah, i32 noundef 28684) #11
  %and308 = and i32 %call307, -2
  tail call void %98(ptr noundef %ah, i32 noundef %and308, i32 noundef 28684) #11
  %101 = ptrtoint ptr %write304 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write304, align 4
  tail call void %102(ptr noundef %ah, i32 noundef %96, i32 noundef 28680) #11
  %103 = ptrtoint ptr %write304 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write304, align 4
  %105 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ah, align 4
  %call315 = tail call i32 %106(ptr noundef %ah, i32 noundef 28684) #11
  %or316 = or i32 %call315, 1
  tail call void %104(ptr noundef %ah, i32 noundef %or316, i32 noundef 28684) #11
  br label %cleanup522

if.else319:                                       ; preds = %entry
  %107 = add i32 %4, -512
  %108 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 26)
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %108, label %if.else502 [
    i32 0, label %if.else319.if.then329_crit_edge
    i32 1, label %if.else319.if.then329_crit_edge751
    i32 2, label %if.else319.if.then480_crit_edge
    i32 3, label %if.else319.if.then480_crit_edge752
  ]

if.else319.if.then480_crit_edge752:               ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then480

if.else319.if.then480_crit_edge:                  ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then480

if.else319.if.then329_crit_edge751:               ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then329

if.else319.if.then329_crit_edge:                  ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then329

if.then329:                                       ; preds = %if.else319.if.then329_crit_edge, %if.else319.if.then329_crit_edge751
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %110 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmw, align 4
  %112 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %4, label %cond.false341 [
    i32 640, label %if.then329.cond.end347_crit_edge
    i32 704, label %if.then329.cond.end347_crit_edge753
  ]

if.then329.cond.end347_crit_edge753:              ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end347

if.then329.cond.end347_crit_edge:                 ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end347

cond.false341:                                    ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %4)
  %cmp344 = icmp eq i32 %4, 1536
  %cond346 = select i1 %cmp344, i32 93380, i32 93252
  br label %cond.end347

cond.end347:                                      ; preds = %cond.false341, %if.then329.cond.end347_crit_edge, %if.then329.cond.end347_crit_edge753
  %cond348 = phi i32 [ %cond346, %cond.false341 ], [ 90948, %if.then329.cond.end347_crit_edge ], [ 90948, %if.then329.cond.end347_crit_edge753 ]
  %call349 = tail call i32 %111(ptr noundef %ah, i32 noundef %cond348, i32 noundef 0, i32 noundef 2097152) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end347
  %113 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ah, align 4
  %115 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %macVersion321, align 4
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %116, label %cond.false362 [
    i32 640, label %while.cond.cond.end368_crit_edge
    i32 704, label %while.cond.cond.end368_crit_edge754
  ]

while.cond.cond.end368_crit_edge754:              ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end368

while.cond.cond.end368_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end368

cond.false362:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %116)
  %cmp365 = icmp eq i32 %116, 1536
  %cond367 = select i1 %cmp365, i32 93380, i32 93252
  br label %cond.end368

cond.end368:                                      ; preds = %cond.false362, %while.cond.cond.end368_crit_edge, %while.cond.cond.end368_crit_edge754
  %cond369 = phi i32 [ %cond367, %cond.false362 ], [ 90948, %while.cond.cond.end368_crit_edge ], [ 90948, %while.cond.cond.end368_crit_edge754 ]
  %call370 = tail call i32 %114(ptr noundef %ah, i32 noundef %cond369) #11
  %118 = and i32 %call370, 2097152
  %tobool372.not = icmp eq i32 %118, 0
  br i1 %tobool372.not, label %while.end, label %while.body

while.body:                                       ; preds = %cond.end368
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 2147480) #11
  br label %while.cond

while.end:                                        ; preds = %cond.end368
  %120 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmw, align 4
  %122 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %macVersion321, align 4
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %123, label %cond.false385 [
    i32 640, label %while.end.cond.end391_crit_edge
    i32 704, label %while.end.cond.end391_crit_edge755
  ]

while.end.cond.end391_crit_edge755:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end391

while.end.cond.end391_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end391

cond.false385:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %123)
  %cmp388 = icmp eq i32 %123, 1536
  %cond390 = select i1 %cmp388, i32 93376, i32 93248
  br label %cond.end391

cond.end391:                                      ; preds = %cond.false385, %while.end.cond.end391_crit_edge, %while.end.cond.end391_crit_edge755
  %cond392 = phi i32 [ %cond390, %cond.false385 ], [ 90944, %while.end.cond.end391_crit_edge ], [ 90944, %while.end.cond.end391_crit_edge755 ]
  %call393 = tail call i32 %121(ptr noundef %ah, i32 noundef %cond392, i32 noundef 1, i32 noundef 1) #11
  br label %while.cond394

while.cond394:                                    ; preds = %while.body419, %cond.end391
  %125 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ah, align 4
  %127 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %macVersion321, align 4
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %128, label %cond.false407 [
    i32 640, label %while.cond394.cond.end413_crit_edge
    i32 704, label %while.cond394.cond.end413_crit_edge756
  ]

while.cond394.cond.end413_crit_edge756:           ; preds = %while.cond394
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end413

while.cond394.cond.end413_crit_edge:              ; preds = %while.cond394
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end413

cond.false407:                                    ; preds = %while.cond394
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %128)
  %cmp410 = icmp eq i32 %128, 1536
  %cond412 = select i1 %cmp410, i32 93376, i32 93248
  br label %cond.end413

cond.end413:                                      ; preds = %cond.false407, %while.cond394.cond.end413_crit_edge, %while.cond394.cond.end413_crit_edge756
  %cond414 = phi i32 [ %cond412, %cond.false407 ], [ 90944, %while.cond394.cond.end413_crit_edge ], [ 90944, %while.cond394.cond.end413_crit_edge756 ]
  %call415 = tail call i32 %126(ptr noundef %ah, i32 noundef %cond414) #11
  %and416 = and i32 %call415, 1
  %tobool418.not = icmp eq i32 %and416, 0
  br i1 %tobool418.not, label %while.body419, label %while.end420

while.body419:                                    ; preds = %cond.end413
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 2147480) #11
  br label %while.cond394

while.end420:                                     ; preds = %cond.end413
  %131 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmw, align 4
  %133 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %macVersion321, align 4
  %135 = zext i32 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %134, label %cond.false433 [
    i32 640, label %while.end420.cond.end439_crit_edge
    i32 704, label %while.end420.cond.end439_crit_edge757
  ]

while.end420.cond.end439_crit_edge757:            ; preds = %while.end420
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end439

while.end420.cond.end439_crit_edge:               ; preds = %while.end420
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end439

cond.false433:                                    ; preds = %while.end420
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %134)
  %cmp436 = icmp eq i32 %134, 1536
  %cond438 = select i1 %cmp436, i32 93380, i32 93252
  br label %cond.end439

cond.end439:                                      ; preds = %cond.false433, %while.end420.cond.end439_crit_edge, %while.end420.cond.end439_crit_edge757
  %cond440 = phi i32 [ %cond438, %cond.false433 ], [ 90948, %while.end420.cond.end439_crit_edge ], [ 90948, %while.end420.cond.end439_crit_edge757 ]
  %call441 = tail call i32 %132(ptr noundef %ah, i32 noundef %cond440, i32 noundef 2097152, i32 noundef 2097152) #11
  br label %while.cond442

while.cond442:                                    ; preds = %while.body468, %cond.end439
  %136 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ah, align 4
  %138 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %macVersion321, align 4
  %140 = zext i32 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %139, label %cond.false455 [
    i32 640, label %while.cond442.cond.end461_crit_edge
    i32 704, label %while.cond442.cond.end461_crit_edge758
  ]

while.cond442.cond.end461_crit_edge758:           ; preds = %while.cond442
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end461

while.cond442.cond.end461_crit_edge:              ; preds = %while.cond442
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end461

cond.false455:                                    ; preds = %while.cond442
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %139)
  %cmp458 = icmp eq i32 %139, 1536
  %cond460 = select i1 %cmp458, i32 93380, i32 93252
  br label %cond.end461

cond.end461:                                      ; preds = %cond.false455, %while.cond442.cond.end461_crit_edge, %while.cond442.cond.end461_crit_edge758
  %cond462 = phi i32 [ %cond460, %cond.false455 ], [ 90948, %while.cond442.cond.end461_crit_edge ], [ 90948, %while.cond442.cond.end461_crit_edge758 ]
  %call463 = tail call i32 %137(ptr noundef %ah, i32 noundef %cond462) #11
  %141 = and i32 %call463, 2097152
  %tobool466.not = icmp eq i32 %141, 0
  br i1 %tobool466.not, label %while.body468, label %cond.end461.cleanup522_crit_edge

cond.end461.cleanup522_crit_edge:                 ; preds = %cond.end461
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup522

while.body468:                                    ; preds = %cond.end461
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 2147480) #11
  br label %while.cond442

if.then480:                                       ; preds = %if.else319.if.then480_crit_edge, %if.else319.if.then480_crit_edge752
  %rmw482 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %143 = ptrtoint ptr %rmw482 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmw482, align 4
  %145 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %4, label %cond.false493 [
    i32 640, label %if.then480.cond.end499_crit_edge
    i32 704, label %if.then480.cond.end499_crit_edge759
  ]

if.then480.cond.end499_crit_edge759:              ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end499

if.then480.cond.end499_crit_edge:                 ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end499

cond.false493:                                    ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %4)
  %cmp496 = icmp eq i32 %4, 1536
  %cond498 = select i1 %cmp496, i32 93376, i32 93248
  br label %cond.end499

cond.end499:                                      ; preds = %cond.false493, %if.then480.cond.end499_crit_edge, %if.then480.cond.end499_crit_edge759
  %cond500 = phi i32 [ %cond498, %cond.false493 ], [ 90944, %if.then480.cond.end499_crit_edge ], [ 90944, %if.then480.cond.end499_crit_edge759 ]
  %call501 = tail call i32 %144(ptr noundef %ah, i32 noundef %cond500, i32 noundef 1, i32 noundef 1) #11
  br label %cleanup522

if.else502:                                       ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ah, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %4)
  %cmp507 = icmp eq i32 %4, 20
  %cond509 = select i1 %cmp507, i32 131144, i32 28744
  %call510 = tail call i32 %147(ptr noundef %ah, i32 noundef %cond509) #11
  %or511 = or i32 %call510, 4
  %write513 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %148 = ptrtoint ptr %write513 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write513, align 4
  %150 = ptrtoint ptr %macVersion321 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %macVersion321, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %151)
  %cmp516 = icmp eq i32 %151, 20
  %cond518 = select i1 %cmp516, i32 131144, i32 28744
  tail call void %149(ptr noundef %ah, i32 noundef %or511, i32 noundef %cond518) #11
  br label %cleanup522

cleanup522:                                       ; preds = %if.else502, %cond.end499, %cond.end461.cleanup522_crit_edge, %if.else301, %if.then279, %cond.end273.cleanup522_crit_edge, %if.end.i723.cleanup522_crit_edge, %cond.end234.cleanup522_crit_edge, %is_pmu_set.exit712.cleanup522_crit_edge, %is_pmu_set.exit699.cleanup522_crit_edge, %is_pmu_set.exit.cleanup522_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ar9003_hw_tx_power_regwrite(ptr noundef %ah, ptr noundef readonly %pPwrArray) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef 0, i32 noundef 42072) #11
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %4 = ptrtoint ptr %pPwrArray to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pPwrArray, align 1
  %6 = and i8 %5, 63
  %and = zext i8 %6 to i32
  %or16 = mul nuw nsw i32 %and, 16843009
  tail call void %3(ptr noundef %ah, i32 noundef %or16, i32 noundef 41920) #11
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %arrayidx19 = getelementptr i8, ptr %pPwrArray, i32 3
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx19, align 1
  %11 = and i8 %10, 63
  %and21 = zext i8 %11 to i32
  %shl22 = shl nuw nsw i32 %and21, 24
  %arrayidx23 = getelementptr i8, ptr %pPwrArray, i32 2
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23, align 1
  %14 = and i8 %13, 63
  %and25 = zext i8 %14 to i32
  %shl26 = shl nuw nsw i32 %and25, 16
  %or27 = or i32 %shl26, %shl22
  %arrayidx28 = getelementptr i8, ptr %pPwrArray, i32 1
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx28, align 1
  %17 = and i8 %16, 63
  %and30 = zext i8 %17 to i32
  %shl31 = shl nuw nsw i32 %and30, 8
  %or32 = or i32 %or27, %shl31
  %18 = ptrtoint ptr %pPwrArray to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pPwrArray, align 1
  %20 = and i8 %19, 63
  %and35 = zext i8 %20 to i32
  %or37 = or i32 %or32, %and35
  tail call void %8(ptr noundef %ah, i32 noundef %or37, i32 noundef 41924) #11
  %21 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write, align 4
  %arrayidx40 = getelementptr i8, ptr %pPwrArray, i32 4
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx40, align 1
  %25 = and i8 %24, 63
  %and42 = zext i8 %25 to i32
  %or53 = mul nuw nsw i32 %and42, 16842753
  tail call void %22(ptr noundef %ah, i32 noundef %or53, i32 noundef 41928) #11
  %26 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write, align 4
  %arrayidx56 = getelementptr i8, ptr %pPwrArray, i32 7
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx56, align 1
  %30 = and i8 %29, 63
  %and58 = zext i8 %30 to i32
  %shl59 = shl nuw nsw i32 %and58, 24
  %arrayidx60 = getelementptr i8, ptr %pPwrArray, i32 6
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx60, align 1
  %33 = and i8 %32, 63
  %and62 = zext i8 %33 to i32
  %shl63 = shl nuw nsw i32 %and62, 16
  %or64 = or i32 %shl63, %shl59
  %arrayidx65 = getelementptr i8, ptr %pPwrArray, i32 5
  %34 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx65, align 1
  %36 = and i8 %35, 63
  %and67 = zext i8 %36 to i32
  %shl68 = shl nuw nsw i32 %and67, 8
  %or69 = or i32 %or64, %shl68
  %37 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx40, align 1
  %39 = and i8 %38, 63
  %and72 = zext i8 %39 to i32
  %or74 = or i32 %or69, %and72
  tail call void %27(ptr noundef %ah, i32 noundef %or74, i32 noundef 41932) #11
  %40 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write, align 4
  %42 = ptrtoint ptr %pPwrArray to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pPwrArray, align 1
  %44 = and i8 %43, 63
  %and79 = zext i8 %44 to i32
  %shl80 = shl nuw nsw i32 %and79, 24
  %45 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx40, align 1
  %47 = and i8 %46, 63
  %and83 = zext i8 %47 to i32
  %shl84 = shl nuw nsw i32 %and83, 16
  %or85 = or i32 %shl84, %shl80
  %shl89 = shl nuw nsw i32 %and79, 8
  %or90 = or i32 %or85, %shl89
  %or95 = or i32 %or90, %and83
  tail call void %41(ptr noundef %ah, i32 noundef %or95, i32 noundef 41952) #11
  %48 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write, align 4
  %arrayidx98 = getelementptr i8, ptr %pPwrArray, i32 11
  %50 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx98, align 1
  %52 = and i8 %51, 63
  %and100 = zext i8 %52 to i32
  %shl101 = shl nuw nsw i32 %and100, 24
  %arrayidx102 = getelementptr i8, ptr %pPwrArray, i32 10
  %53 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx102, align 1
  %55 = and i8 %54, 63
  %and104 = zext i8 %55 to i32
  %shl105 = shl nuw nsw i32 %and104, 16
  %or106 = or i32 %shl105, %shl101
  %arrayidx107 = getelementptr i8, ptr %pPwrArray, i32 9
  %56 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx107, align 1
  %58 = and i8 %57, 63
  %and109 = zext i8 %58 to i32
  %shl110 = shl nuw nsw i32 %and109, 8
  %or111 = or i32 %or106, %shl110
  %arrayidx112 = getelementptr i8, ptr %pPwrArray, i32 8
  %59 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx112, align 1
  %61 = and i8 %60, 63
  %and114 = zext i8 %61 to i32
  %or116 = or i32 %or111, %and114
  tail call void %49(ptr noundef %ah, i32 noundef %or116, i32 noundef 41936) #11
  %62 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write, align 4
  %arrayidx119 = getelementptr i8, ptr %pPwrArray, i32 15
  %64 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx119, align 1
  %66 = and i8 %65, 63
  %and121 = zext i8 %66 to i32
  %shl122 = shl nuw nsw i32 %and121, 24
  %arrayidx123 = getelementptr i8, ptr %pPwrArray, i32 14
  %67 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx123, align 1
  %69 = and i8 %68, 63
  %and125 = zext i8 %69 to i32
  %shl126 = shl nuw nsw i32 %and125, 16
  %or127 = or i32 %shl126, %shl122
  %arrayidx128 = getelementptr i8, ptr %pPwrArray, i32 13
  %70 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx128, align 1
  %72 = and i8 %71, 63
  %and130 = zext i8 %72 to i32
  %shl131 = shl nuw nsw i32 %and130, 8
  %or132 = or i32 %or127, %shl131
  %arrayidx133 = getelementptr i8, ptr %pPwrArray, i32 12
  %73 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx133, align 1
  %75 = and i8 %74, 63
  %and135 = zext i8 %75 to i32
  %or137 = or i32 %or132, %and135
  tail call void %63(ptr noundef %ah, i32 noundef %or137, i32 noundef 41940) #11
  %76 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write, align 4
  %arrayidx140 = getelementptr i8, ptr %pPwrArray, i32 19
  %78 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx140, align 1
  %80 = and i8 %79, 63
  %and142 = zext i8 %80 to i32
  %shl143 = shl nuw nsw i32 %and142, 24
  %arrayidx144 = getelementptr i8, ptr %pPwrArray, i32 18
  %81 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx144, align 1
  %83 = and i8 %82, 63
  %and146 = zext i8 %83 to i32
  %shl147 = shl nuw nsw i32 %and146, 16
  %or148 = or i32 %shl147, %shl143
  %arrayidx149 = getelementptr i8, ptr %pPwrArray, i32 17
  %84 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx149, align 1
  %86 = and i8 %85, 63
  %and151 = zext i8 %86 to i32
  %shl152 = shl nuw nsw i32 %and151, 8
  %or153 = or i32 %or148, %shl152
  %arrayidx154 = getelementptr i8, ptr %pPwrArray, i32 16
  %87 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx154, align 1
  %89 = and i8 %88, 63
  %and156 = zext i8 %89 to i32
  %or158 = or i32 %or153, %and156
  tail call void %77(ptr noundef %ah, i32 noundef %or158, i32 noundef 41956) #11
  %90 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write, align 4
  %arrayidx161 = getelementptr i8, ptr %pPwrArray, i32 35
  %92 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx161, align 1
  %94 = and i8 %93, 63
  %and163 = zext i8 %94 to i32
  %shl164 = shl nuw nsw i32 %and163, 24
  %arrayidx165 = getelementptr i8, ptr %pPwrArray, i32 34
  %95 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx165, align 1
  %97 = and i8 %96, 63
  %and167 = zext i8 %97 to i32
  %shl168 = shl nuw nsw i32 %and167, 16
  %or169 = or i32 %shl168, %shl164
  %arrayidx170 = getelementptr i8, ptr %pPwrArray, i32 21
  %98 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx170, align 1
  %100 = and i8 %99, 63
  %and172 = zext i8 %100 to i32
  %shl173 = shl nuw nsw i32 %and172, 8
  %or174 = or i32 %or169, %shl173
  %arrayidx175 = getelementptr i8, ptr %pPwrArray, i32 20
  %101 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx175, align 1
  %103 = and i8 %102, 63
  %and177 = zext i8 %103 to i32
  %or179 = or i32 %or174, %and177
  tail call void %91(ptr noundef %ah, i32 noundef %or179, i32 noundef 41960) #11
  %104 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write, align 4
  %arrayidx182 = getelementptr i8, ptr %pPwrArray, i32 25
  %106 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx182, align 1
  %108 = and i8 %107, 63
  %and184 = zext i8 %108 to i32
  %shl185 = shl nuw nsw i32 %and184, 24
  %arrayidx186 = getelementptr i8, ptr %pPwrArray, i32 24
  %109 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx186, align 1
  %111 = and i8 %110, 63
  %and188 = zext i8 %111 to i32
  %shl189 = shl nuw nsw i32 %and188, 16
  %or190 = or i32 %shl189, %shl185
  %arrayidx191 = getelementptr i8, ptr %pPwrArray, i32 23
  %112 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx191, align 1
  %114 = and i8 %113, 63
  %and193 = zext i8 %114 to i32
  %shl194 = shl nuw nsw i32 %and193, 8
  %or195 = or i32 %or190, %shl194
  %arrayidx196 = getelementptr i8, ptr %pPwrArray, i32 22
  %115 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx196, align 1
  %117 = and i8 %116, 63
  %and198 = zext i8 %117 to i32
  %or200 = or i32 %or195, %and198
  tail call void %105(ptr noundef %ah, i32 noundef %or200, i32 noundef 41944) #11
  %118 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write, align 4
  %arrayidx203 = getelementptr i8, ptr %pPwrArray, i32 29
  %120 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx203, align 1
  %122 = and i8 %121, 63
  %and205 = zext i8 %122 to i32
  %shl206 = shl nuw nsw i32 %and205, 24
  %arrayidx207 = getelementptr i8, ptr %pPwrArray, i32 28
  %123 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx207, align 1
  %125 = and i8 %124, 63
  %and209 = zext i8 %125 to i32
  %shl210 = shl nuw nsw i32 %and209, 16
  %or211 = or i32 %shl210, %shl206
  %arrayidx212 = getelementptr i8, ptr %pPwrArray, i32 27
  %126 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx212, align 1
  %128 = and i8 %127, 63
  %and214 = zext i8 %128 to i32
  %shl215 = shl nuw nsw i32 %and214, 8
  %or216 = or i32 %or211, %shl215
  %arrayidx217 = getelementptr i8, ptr %pPwrArray, i32 26
  %129 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx217, align 1
  %131 = and i8 %130, 63
  %and219 = zext i8 %131 to i32
  %or221 = or i32 %or216, %and219
  tail call void %119(ptr noundef %ah, i32 noundef %or221, i32 noundef 41948) #11
  %132 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write, align 4
  %arrayidx224 = getelementptr i8, ptr %pPwrArray, i32 33
  %134 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx224, align 1
  %136 = and i8 %135, 63
  %and226 = zext i8 %136 to i32
  %shl227 = shl nuw nsw i32 %and226, 24
  %arrayidx228 = getelementptr i8, ptr %pPwrArray, i32 32
  %137 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx228, align 1
  %139 = and i8 %138, 63
  %and230 = zext i8 %139 to i32
  %shl231 = shl nuw nsw i32 %and230, 16
  %or232 = or i32 %shl231, %shl227
  %arrayidx233 = getelementptr i8, ptr %pPwrArray, i32 31
  %140 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx233, align 1
  %142 = and i8 %141, 63
  %and235 = zext i8 %142 to i32
  %shl236 = shl nuw nsw i32 %and235, 8
  %or237 = or i32 %or232, %shl236
  %arrayidx238 = getelementptr i8, ptr %pPwrArray, i32 30
  %143 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx238, align 1
  %145 = and i8 %144, 63
  %and240 = zext i8 %145 to i32
  %or242 = or i32 %or237, %and240
  tail call void %133(ptr noundef %ah, i32 noundef %or242, i32 noundef 41964) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ar9003_hw_get_tx_gain_idx(ptr nocapture noundef readonly %ah) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %txrxgain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 5
  %0 = ptrtoint ptr %txrxgain to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txrxgain, align 1
  %2 = lshr i8 %1, 4
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ar9003_hw_get_rx_gain_idx(ptr nocapture noundef readonly %ah) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %txrxgain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 5
  %0 = ptrtoint ptr %txrxgain to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txrxgain, align 1
  %2 = and i8 %1, 15
  %and = zext i8 %2 to i32
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ar9003_get_spur_chan_ptr(ptr noundef readnone %ah, i1 noundef zeroext %is2ghz) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %modalHeader2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 10
  %modalHeader5G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 1, i32 1, i32 2
  %retval.0.i = select i1 %is2ghz, ptr %modalHeader2G.i, ptr %modalHeader5G.i
  %spurChans = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %retval.0.i, i32 0, i32 7
  ret ptr %spurChans
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ar9003_get_paprd_scale_factor(ptr nocapture noundef readonly %ah, ptr nocapture noundef readonly %chan) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %papdRateMaskHt20 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 42
  %3 = ptrtoint ptr %papdRateMaskHt20 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %papdRateMaskHt20, align 1
  %5 = lshr i32 %4, 1
  br label %cleanup

if.else:                                          ; preds = %entry
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5699, i16 %7)
  %cmp = icmp ugt i16 %7, 5699
  br i1 %cmp, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %papdRateMaskHt205 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %papdRateMaskHt205 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %papdRateMaskHt205, align 1
  %10 = lshr i32 %9, 1
  br label %cleanup

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 5399, i16 %7)
  %cmp11 = icmp ugt i16 %7, 5399
  %papdRateMaskHt40 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %papdRateMaskHt40 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %papdRateMaskHt40, align 1
  br i1 %cmp11, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #13
  %13 = lshr i32 %12, 4
  br label %cleanup

if.else17:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #13
  %14 = lshr i32 %12, 1
  br label %cleanup

cleanup:                                          ; preds = %if.else17, %if.then13, %if.then4, %if.then
  %retval.0.in = phi i32 [ %10, %if.then4 ], [ %13, %if.then13 ], [ %14, %if.else17 ], [ %5, %if.then ]
  %retval.0 = and i32 %retval.0.in, 7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_ar9300_check_eeprom(ptr nocapture noundef readnone %ah) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_ar9300_get_eeprom(ptr nocapture noundef readonly %ah, i32 noundef %param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %param, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 3, label %sw.bb1
    i32 2, label %sw.bb6
    i32 5, label %sw.bb12
    i32 6, label %sw.bb14
    i32 7, label %sw.bb16
    i32 8, label %sw.bb18
    i32 13, label %sw.bb20
    i32 14, label %sw.bb22
    i32 26, label %sw.bb26
    i32 29, label %sw.bb30
    i32 28, label %sw.bb34
    i32 31, label %sw.bb37
    i32 30, label %sw.bb39
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %macAddr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %macAddr to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %macAddr, align 1
  %conv = zext i16 %2 to i32
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %add.ptr, align 1
  %conv5 = zext i16 %4 to i32
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr9 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 3
  %5 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr9, align 1
  %conv11 = zext i16 %6 to i32
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %baseEepHeader = getelementptr inbounds %struct.ar9300_eeprom, ptr %eeprom, i32 0, i32 4
  %7 = ptrtoint ptr %baseEepHeader to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %baseEepHeader, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv13 = zext i16 %9 to i32
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %deviceCap = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 20
  %10 = ptrtoint ptr %deviceCap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %deviceCap, align 1
  %conv15 = zext i8 %11 to i32
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %opCapFlags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 16
  %12 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %opCapFlags, align 1
  %conv17 = zext i8 %13 to i32
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rfSilent = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 18
  %14 = ptrtoint ptr %rfSilent to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rfSilent, align 1
  %conv19 = zext i8 %15 to i32
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %txrxMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 15
  %16 = ptrtoint ptr %txrxMask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %txrxMask, align 1
  %18 = lshr i8 %17, 4
  %19 = zext i8 %18 to i32
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %txrxMask23 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 15
  %20 = ptrtoint ptr %txrxMask23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %txrxMask23, align 1
  %22 = and i8 %21, 15
  %and25 = zext i8 %22 to i32
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %featureEnable = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 25
  %23 = ptrtoint ptr %featureEnable to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %featureEnable, align 1
  %25 = lshr i8 %24, 5
  %.lobit = and i8 %25, 1
  %26 = zext i8 %.lobit to i32
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %miscConfiguration = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26
  %27 = ptrtoint ptr %miscConfiguration to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %miscConfiguration, align 1
  %29 = lshr i8 %28, 3
  %30 = and i8 %29, 1
  %and33 = zext i8 %30 to i32
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %32)
  %cmp = icmp eq i32 %32, 704
  br i1 %cmp, label %sw.bb34.cleanup_crit_edge, label %if.else

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  %base_ext1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 60
  %33 = ptrtoint ptr %base_ext1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %base_ext1, align 1
  %conv36 = zext i8 %34 to i32
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %antennaGain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 1, i32 3, i32 1
  %35 = ptrtoint ptr %antennaGain to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %antennaGain, align 1
  %conv38 = sext i8 %36 to i32
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %antennaGain40 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 35
  %37 = ptrtoint ptr %antennaGain40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %antennaGain40, align 1
  %conv41 = sext i8 %38 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb39, %sw.bb37, %if.else, %sw.bb34.cleanup_crit_edge, %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb6, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv41, %sw.bb39 ], [ %conv38, %sw.bb37 ], [ %conv36, %if.else ], [ %and33, %sw.bb30 ], [ %26, %sw.bb26 ], [ %and25, %sw.bb22 ], [ %19, %sw.bb20 ], [ %conv19, %sw.bb18 ], [ %conv17, %sw.bb16 ], [ %conv15, %sw.bb14 ], [ %conv13, %sw.bb12 ], [ %conv11, %sw.bb6 ], [ %conv5, %sw.bb1 ], [ %conv, %sw.bb ], [ 201, %sw.bb34.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ath9k_hw_ar9300_fill_eeprom(ptr noundef %ah) #2 align 64 {
entry:
  %val.i52.i36.i = alloca i16, align 2
  %val.i52.i.i = alloca i16, align 2
  %header.i20.i = alloca [4 x i8], align 4
  %header.i15.i = alloca [4 x i8], align 4
  %header.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %ah_flags.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 24
  %0 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.body.i.i_crit_edge, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %data.01.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %eeprom, %entry.for.body.i.i_crit_edge ]
  %call.i.i = tail call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef %i.02.i.i, ptr noundef %data.01.i.i) #11
  br i1 %call.i.i, label %for.inc.i.i, label %for.body.i.i.ar9300_eeprom_restore_internal.exit_crit_edge

for.body.i.i.ar9300_eeprom_restore_internal.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_eeprom_restore_internal.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %incdec.ptr.i.i = getelementptr i16, ptr %data.01.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 544
  br i1 %exitcond.not.i.i, label %if.end.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.inc.i.i
  %txrxMask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 15
  %2 = ptrtoint ptr %txrxMask.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txrxMask.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %3, label %if.end.i.ar9300_eeprom_restore_internal.exit_crit_edge [
    i8 0, label %if.end.i.if.end10.i_crit_edge
    i8 -1, label %if.end.i.if.end10.i_crit_edge32
  ]

if.end.i.if.end10.i_crit_edge32:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end.i.ar9300_eeprom_restore_internal.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_eeprom_restore_internal.exit

if.end10.i:                                       ; preds = %if.end.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge32, %entry.if.end10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2048) #14
  %tobool12.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not.i, label %if.end10.i.ar9300_eeprom_restore_internal.exit_crit_edge, label %if.end14.i

if.end10.i.ar9300_eeprom_restore_internal.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_eeprom_restore_internal.exit

if.end14.i:                                       ; preds = %if.end10.i
  %6 = call ptr @memcpy(ptr %eeprom, ptr @ar9300_default, i32 1088)
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %8)
  %switch.selectcmp.i = icmp eq i32 %8, 512
  %switch.select.i = select i1 %switch.selectcmp.i, i32 511, i32 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %8)
  %switch.selectcmp1.i = icmp eq i32 %8, 576
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 4095, i32 %switch.select.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask.i, align 4
  %and26.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end14.i.do.end.i_crit_edge, label %if.then28.i

if.end14.i.do.end.i_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then28.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.1, i32 noundef %switch.select2.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then28.i, %if.end14.i.do.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i.i) #11
  %11 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %header.i.i, align 4
  %call.i3.i = call zeroext i1 @ar9300_read_eeprom(ptr noundef %ah, i32 noundef %switch.select2.i, ptr noundef nonnull %header.i.i, i32 noundef 4) #11, !callees !234
  br i1 %call.i3.i, label %ar9300_check_eeprom_header.exit.i, label %ar9300_check_eeprom_header.exit.thread.i

ar9300_check_eeprom_header.exit.thread.i:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i.i) #11
  br label %if.end32.i

ar9300_check_eeprom_header.exit.i:                ; preds = %do.end.i
  %12 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %header.i.i, align 4
  %14 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %14)
  %15 = icmp ult i32 %14, -2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i.i) #11
  br i1 %15, label %ar9300_check_eeprom_header.exit.i.do.body77.i_crit_edge, label %ar9300_check_eeprom_header.exit.i.if.end32.i_crit_edge

ar9300_check_eeprom_header.exit.i.if.end32.i_crit_edge: ; preds = %ar9300_check_eeprom_header.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

ar9300_check_eeprom_header.exit.i.do.body77.i_crit_edge: ; preds = %ar9300_check_eeprom_header.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77.i

if.end32.i:                                       ; preds = %ar9300_check_eeprom_header.exit.i.if.end32.i_crit_edge, %ar9300_check_eeprom_header.exit.thread.i
  %16 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask.i, align 4
  %and35.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end32.i.do.end40.i_crit_edge, label %if.then37.i

if.end32.i.do.end40.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.1, i32 noundef 4095) #11
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then37.i, %if.end32.i.do.end40.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i52.i.i) #11
  %18 = ptrtoint ptr %val.i52.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %val.i52.i.i, align 2, !annotation !235
  %call.i54.i.i = call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef 2047, ptr noundef nonnull %val.i52.i.i) #11
  br i1 %call.i54.i.i, label %if.end15.i.i, label %do.end40.i.ar9300_eeprom_read_word.exit.i.i_crit_edge, !prof !236

do.end40.i.ar9300_eeprom_read_word.exit.i.i_crit_edge: ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_eeprom_read_word.exit.i.i

ar9300_eeprom_read_word.exit.i.i:                 ; preds = %if.end15.i.i.ar9300_eeprom_read_word.exit.i.i_crit_edge, %do.end40.i.ar9300_eeprom_read_word.exit.i.i_crit_edge
  %address.addr.173.i.lcssa.i = phi i32 [ 4095, %do.end40.i.ar9300_eeprom_read_word.exit.i.i_crit_edge ], [ 4093, %if.end15.i.i.ar9300_eeprom_read_word.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i52.i.i) #11
  %19 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask.i, align 4
  %and25.i.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %ar9300_eeprom_read_word.exit.i.i.if.end43.i_crit_edge, label %if.then27.i.i

ar9300_eeprom_read_word.exit.i.i.if.end43.i_crit_edge: ; preds = %ar9300_eeprom_read_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.end15.i.i:                                     ; preds = %do.end40.i
  %21 = ptrtoint ptr %val.i52.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %val.i52.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i52.i.i) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i52.i.i) #11
  %23 = ptrtoint ptr %val.i52.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %val.i52.i.i, align 2, !annotation !235
  %call.i54.i.1.i = call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef 2046, ptr noundef nonnull %val.i52.i.i) #11
  br i1 %call.i54.i.1.i, label %if.end15.i.1.i, label %if.end15.i.i.ar9300_eeprom_read_word.exit.i.i_crit_edge, !prof !236

if.end15.i.i.ar9300_eeprom_read_word.exit.i.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_eeprom_read_word.exit.i.i

if.end15.i.1.i:                                   ; preds = %if.end15.i.i
  %24 = lshr i16 %22, 8
  %conv3.i55.i.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %val.i52.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %val.i52.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i52.i.i) #11
  %header.i5.sroa.7.0.insert.insert.i = zext i16 %26 to i32
  %27 = and i16 %22, 255
  %header.i5.sroa.6.0.insert.ext.i = zext i16 %27 to i32
  %header.i5.sroa.6.0.insert.shift.i = shl nuw nsw i32 %header.i5.sroa.6.0.insert.ext.i, 16
  %header.i5.sroa.0.0.insert.shift.i = shl nuw i32 %conv3.i55.i.i, 24
  %header.i5.sroa.6.0.insert.insert.i = add i32 %header.i5.sroa.0.0.insert.shift.i, -1
  %header.i5.sroa.0.0.insert.insert.i = add i32 %header.i5.sroa.6.0.insert.insert.i, %header.i5.sroa.6.0.insert.shift.i
  %28 = add i32 %header.i5.sroa.0.0.insert.insert.i, %header.i5.sroa.7.0.insert.insert.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %28)
  %29 = icmp ult i32 %28, -2
  br i1 %29, label %if.end15.i.1.i.do.body77.i_crit_edge, label %if.end15.i.1.i.if.end43.i_crit_edge

if.end15.i.1.i.if.end43.i_crit_edge:              ; preds = %if.end15.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.end15.i.1.i.do.body77.i_crit_edge:             ; preds = %if.end15.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77.i

if.then27.i.i:                                    ; preds = %ar9300_eeprom_read_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.9, i32 noundef %address.addr.173.i.lcssa.i) #11
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then27.i.i, %if.end15.i.1.i.if.end43.i_crit_edge, %ar9300_eeprom_read_word.exit.i.i.if.end43.i_crit_edge
  %30 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask.i, align 4
  %and46.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end43.i.do.end51.i_crit_edge, label %if.then48.i

if.end43.i.do.end51.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51.i

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.1, i32 noundef 511) #11
  br label %do.end51.i

do.end51.i:                                       ; preds = %if.then48.i, %if.end43.i.do.end51.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i52.i36.i) #11
  %32 = ptrtoint ptr %val.i52.i36.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %val.i52.i36.i, align 2, !annotation !235
  %call.i54.i42.i = call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef 255, ptr noundef nonnull %val.i52.i36.i) #11
  br i1 %call.i54.i42.i, label %if.end15.i52.i, label %do.end51.i.ar9300_eeprom_read_word.exit.i44.i_crit_edge, !prof !236

do.end51.i.ar9300_eeprom_read_word.exit.i44.i_crit_edge: ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_eeprom_read_word.exit.i44.i

ar9300_eeprom_read_word.exit.i44.i:               ; preds = %if.end15.i52.i.ar9300_eeprom_read_word.exit.i44.i_crit_edge, %do.end51.i.ar9300_eeprom_read_word.exit.i44.i_crit_edge
  %address.addr.173.i40.lcssa.i = phi i32 [ 511, %do.end51.i.ar9300_eeprom_read_word.exit.i44.i_crit_edge ], [ 509, %if.end15.i52.i.ar9300_eeprom_read_word.exit.i44.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i52.i36.i) #11
  %33 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug_mask.i, align 4
  %and25.i55.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i55.i)
  %tobool26.not.i56.i = icmp eq i32 %and25.i55.i, 0
  br i1 %tobool26.not.i56.i, label %ar9300_eeprom_read_word.exit.i44.i.if.end54.i_crit_edge, label %if.then27.i57.i

ar9300_eeprom_read_word.exit.i44.i.if.end54.i_crit_edge: ; preds = %ar9300_eeprom_read_word.exit.i44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.end15.i52.i:                                   ; preds = %do.end51.i
  %35 = ptrtoint ptr %val.i52.i36.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %val.i52.i36.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i52.i36.i) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i52.i36.i) #11
  %37 = ptrtoint ptr %val.i52.i36.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %val.i52.i36.i, align 2, !annotation !235
  %call.i54.i42.1.i = call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef 254, ptr noundef nonnull %val.i52.i36.i) #11
  br i1 %call.i54.i42.1.i, label %if.end15.i52.1.i, label %if.end15.i52.i.ar9300_eeprom_read_word.exit.i44.i_crit_edge, !prof !236

if.end15.i52.i.ar9300_eeprom_read_word.exit.i44.i_crit_edge: ; preds = %if.end15.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_eeprom_read_word.exit.i44.i

if.end15.i52.1.i:                                 ; preds = %if.end15.i52.i
  %38 = lshr i16 %36, 8
  %conv3.i55.i45.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %val.i52.i36.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %val.i52.i36.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i52.i36.i) #11
  %header.i10.sroa.7.0.insert.insert.i = zext i16 %40 to i32
  %41 = and i16 %36, 255
  %header.i10.sroa.6.0.insert.ext.i = zext i16 %41 to i32
  %header.i10.sroa.6.0.insert.shift.i = shl nuw nsw i32 %header.i10.sroa.6.0.insert.ext.i, 16
  %header.i10.sroa.0.0.insert.shift.i = shl nuw i32 %conv3.i55.i45.i, 24
  %header.i10.sroa.6.0.insert.insert.i = add i32 %header.i10.sroa.0.0.insert.shift.i, -1
  %header.i10.sroa.0.0.insert.insert.i = add i32 %header.i10.sroa.6.0.insert.insert.i, %header.i10.sroa.6.0.insert.shift.i
  %42 = add i32 %header.i10.sroa.0.0.insert.insert.i, %header.i10.sroa.7.0.insert.insert.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %42)
  %43 = icmp ult i32 %42, -2
  br i1 %43, label %if.end15.i52.1.i.do.body77.i_crit_edge, label %if.end15.i52.1.i.if.end54.i_crit_edge

if.end15.i52.1.i.if.end54.i_crit_edge:            ; preds = %if.end15.i52.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.end15.i52.1.i.do.body77.i_crit_edge:           ; preds = %if.end15.i52.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77.i

if.then27.i57.i:                                  ; preds = %ar9300_eeprom_read_word.exit.i44.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.9, i32 noundef %address.addr.173.i40.lcssa.i) #11
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then27.i57.i, %if.end15.i52.1.i.if.end54.i_crit_edge, %ar9300_eeprom_read_word.exit.i44.i.if.end54.i_crit_edge
  %44 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug_mask.i, align 4
  %and57.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end54.i.do.end62.i_crit_edge, label %if.then59.i

if.end54.i.do.end62.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62.i

if.then59.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.2, i32 noundef 1023) #11
  br label %do.end62.i

do.end62.i:                                       ; preds = %if.then59.i, %if.end54.i.do.end62.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i15.i) #11
  %46 = ptrtoint ptr %header.i15.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %header.i15.i, align 4
  br label %for.body.i64.i

for.body.i64.i:                                   ; preds = %if.end.i70.i.for.body.i64.i_crit_edge, %do.end62.i
  %cmp13.i.i = phi i1 [ true, %do.end62.i ], [ %cmp.i.i, %if.end.i70.i.for.body.i64.i_crit_edge ]
  %i.012.i.i = phi i32 [ 0, %do.end62.i ], [ %inc.i68.i, %if.end.i70.i.for.body.i64.i_crit_edge ]
  %sub.i60.i = sub nuw nsw i32 1023, %i.012.i.i
  %div.i.udiv141.i = and i32 %sub.i60.i, -4
  %47 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ah, align 4
  %49 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %50)
  %cmp.i.i61.i = icmp eq i32 %50, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %50)
  %cmp3.i.i62.i = icmp eq i32 %50, 1024
  %51 = or i1 %cmp.i.i61.i, %cmp3.i.i62.i
  %52 = select i1 %51, i32 196608, i32 81920
  %add.i.i63.i = add nuw nsw i32 %52, %div.i.udiv141.i
  %call.i.i.i = call i32 %48(ptr noundef %ah, i32 noundef %add.i.i63.i) #11
  %53 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %54)
  %cmp6.i.i.i = icmp eq i32 %54, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %54)
  %cmp10.i.i.i = icmp eq i32 %54, 1024
  %55 = or i1 %cmp6.i.i.i, %cmp10.i.i.i
  %56 = select i1 %55, i32 200728, i32 89880
  %call13.i.i.i = call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %56, i32 noundef 7, i32 noundef 4, i32 noundef 1000) #11
  br i1 %call13.i.i.i, label %if.end.i70.i, label %for.body.i64.i.ar9300_read_otp.exit.i_crit_edge

for.body.i64.i.ar9300_read_otp.exit.i_crit_edge:  ; preds = %for.body.i64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_read_otp.exit.i

if.end.i70.i:                                     ; preds = %for.body.i64.i
  %57 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ah, align 4
  %59 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %60)
  %cmp18.i.i.i = icmp eq i32 %60, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %60)
  %cmp22.i.i.i = icmp eq i32 %60, 1024
  %61 = or i1 %cmp18.i.i.i, %cmp22.i.i.i
  %62 = select i1 %61, i32 200732, i32 89884
  %call25.i.i.i = call i32 %58(ptr noundef %ah, i32 noundef %62) #11
  %rem.i.urem.i = shl nuw nsw i32 %sub.i60.i, 3
  %mul.i.i = and i32 %rem.i.urem.i, 24
  %shr.i65.i = lshr i32 %call25.i.i.i, %mul.i.i
  %conv.i66.i = trunc i32 %shr.i65.i to i8
  %arrayidx.i67.i = getelementptr i8, ptr %header.i15.i, i32 %i.012.i.i
  %63 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i66.i, ptr %arrayidx.i67.i, align 1
  %inc.i68.i = add nuw nsw i32 %i.012.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.012.i.i)
  %cmp.i.i = icmp ult i32 %i.012.i.i, 3
  %exitcond.not.i69.i = icmp eq i32 %inc.i68.i, 4
  br i1 %exitcond.not.i69.i, label %if.end.i70.i.ar9300_read_otp.exit.i_crit_edge, label %if.end.i70.i.for.body.i64.i_crit_edge

if.end.i70.i.for.body.i64.i_crit_edge:            ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i64.i

if.end.i70.i.ar9300_read_otp.exit.i_crit_edge:    ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_read_otp.exit.i

ar9300_read_otp.exit.i:                           ; preds = %if.end.i70.i.ar9300_read_otp.exit.i_crit_edge, %for.body.i64.i.ar9300_read_otp.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp13.i.i, %for.body.i64.i.ar9300_read_otp.exit.i_crit_edge ], [ %cmp.i.i, %if.end.i70.i.ar9300_read_otp.exit.i_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %ar9300_check_eeprom_header.exit19.thread.i, label %ar9300_check_eeprom_header.exit19.i

ar9300_check_eeprom_header.exit19.thread.i:       ; preds = %ar9300_read_otp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i15.i) #11
  br label %if.end65.i

ar9300_check_eeprom_header.exit19.i:              ; preds = %ar9300_read_otp.exit.i
  %64 = ptrtoint ptr %header.i15.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %header.i15.i, align 4
  %66 = add i32 %65, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %66)
  %67 = icmp ult i32 %66, -2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i15.i) #11
  br i1 %67, label %ar9300_check_eeprom_header.exit19.i.do.body77.i_crit_edge, label %ar9300_check_eeprom_header.exit19.i.if.end65.i_crit_edge

ar9300_check_eeprom_header.exit19.i.if.end65.i_crit_edge: ; preds = %ar9300_check_eeprom_header.exit19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

ar9300_check_eeprom_header.exit19.i.do.body77.i_crit_edge: ; preds = %ar9300_check_eeprom_header.exit19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77.i

if.end65.i:                                       ; preds = %ar9300_check_eeprom_header.exit19.i.if.end65.i_crit_edge, %ar9300_check_eeprom_header.exit19.thread.i
  %68 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %debug_mask.i, align 4
  %and68.i = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.end65.i.do.end73.i_crit_edge, label %if.then70.i

if.end65.i.do.end73.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73.i

if.then70.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.2, i32 noundef 511) #11
  br label %do.end73.i

do.end73.i:                                       ; preds = %if.then70.i, %if.end65.i.do.end73.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i20.i) #11
  %70 = ptrtoint ptr %header.i20.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %header.i20.i, align 4
  br label %for.body.i84.i

for.body.i84.i:                                   ; preds = %if.end.i96.i.for.body.i84.i_crit_edge, %do.end73.i
  %cmp13.i72.i = phi i1 [ true, %do.end73.i ], [ %cmp.i94.i, %if.end.i96.i.for.body.i84.i_crit_edge ]
  %i.012.i73.i = phi i32 [ 0, %do.end73.i ], [ %inc.i93.i, %if.end.i96.i.for.body.i84.i_crit_edge ]
  %sub.i74.i = sub nuw nsw i32 511, %i.012.i73.i
  %div.i75.udiv142.i = and i32 %sub.i74.i, -4
  %71 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ah, align 4
  %73 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %74)
  %cmp.i.i76.i = icmp eq i32 %74, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %74)
  %cmp3.i.i77.i = icmp eq i32 %74, 1024
  %75 = or i1 %cmp.i.i76.i, %cmp3.i.i77.i
  %76 = select i1 %75, i32 196608, i32 81920
  %add.i.i79.i = add nuw nsw i32 %76, %div.i75.udiv142.i
  %call.i.i80.i = call i32 %72(ptr noundef %ah, i32 noundef %add.i.i79.i) #11
  %77 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %78)
  %cmp6.i.i81.i = icmp eq i32 %78, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %78)
  %cmp10.i.i82.i = icmp eq i32 %78, 1024
  %79 = or i1 %cmp6.i.i81.i, %cmp10.i.i82.i
  %80 = select i1 %79, i32 200728, i32 89880
  %call13.i.i83.i = call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %80, i32 noundef 7, i32 noundef 4, i32 noundef 1000) #11
  br i1 %call13.i.i83.i, label %if.end.i96.i, label %for.body.i84.i.ar9300_read_otp.exit98.i_crit_edge

for.body.i84.i.ar9300_read_otp.exit98.i_crit_edge: ; preds = %for.body.i84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_read_otp.exit98.i

if.end.i96.i:                                     ; preds = %for.body.i84.i
  %81 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ah, align 4
  %83 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %84)
  %cmp18.i.i85.i = icmp eq i32 %84, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %84)
  %cmp22.i.i86.i = icmp eq i32 %84, 1024
  %85 = or i1 %cmp18.i.i85.i, %cmp22.i.i86.i
  %86 = select i1 %85, i32 200732, i32 89884
  %call25.i.i87.i = call i32 %82(ptr noundef %ah, i32 noundef %86) #11
  %rem.i88.urem.i = shl nuw nsw i32 %sub.i74.i, 3
  %mul.i89.i = and i32 %rem.i88.urem.i, 24
  %shr.i90.i = lshr i32 %call25.i.i87.i, %mul.i89.i
  %conv.i91.i = trunc i32 %shr.i90.i to i8
  %arrayidx.i92.i = getelementptr i8, ptr %header.i20.i, i32 %i.012.i73.i
  %87 = ptrtoint ptr %arrayidx.i92.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv.i91.i, ptr %arrayidx.i92.i, align 1
  %inc.i93.i = add nuw nsw i32 %i.012.i73.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.012.i73.i)
  %cmp.i94.i = icmp ult i32 %i.012.i73.i, 3
  %exitcond.not.i95.i = icmp eq i32 %inc.i93.i, 4
  br i1 %exitcond.not.i95.i, label %if.end.i96.i.ar9300_read_otp.exit98.i_crit_edge, label %if.end.i96.i.for.body.i84.i_crit_edge

if.end.i96.i.for.body.i84.i_crit_edge:            ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i84.i

if.end.i96.i.ar9300_read_otp.exit98.i_crit_edge:  ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_read_otp.exit98.i

ar9300_read_otp.exit98.i:                         ; preds = %if.end.i96.i.ar9300_read_otp.exit98.i_crit_edge, %for.body.i84.i.ar9300_read_otp.exit98.i_crit_edge
  %cmp.lcssa.i97.i = phi i1 [ %cmp13.i72.i, %for.body.i84.i.ar9300_read_otp.exit98.i_crit_edge ], [ %cmp.i94.i, %if.end.i96.i.ar9300_read_otp.exit98.i_crit_edge ]
  br i1 %cmp.lcssa.i97.i, label %ar9300_check_eeprom_header.exit24.thread.i, label %ar9300_check_eeprom_header.exit24.i

ar9300_check_eeprom_header.exit24.thread.i:       ; preds = %ar9300_read_otp.exit98.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i20.i) #11
  br label %cleanup163.sink.split.i

ar9300_check_eeprom_header.exit24.i:              ; preds = %ar9300_read_otp.exit98.i
  %88 = ptrtoint ptr %header.i20.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %header.i20.i, align 4
  %90 = add i32 %89, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %90)
  %91 = icmp ult i32 %90, -2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i20.i) #11
  br i1 %91, label %ar9300_check_eeprom_header.exit24.i.do.body77.i_crit_edge, label %ar9300_check_eeprom_header.exit24.i.cleanup163.sink.split.i_crit_edge

ar9300_check_eeprom_header.exit24.i.cleanup163.sink.split.i_crit_edge: ; preds = %ar9300_check_eeprom_header.exit24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup163.sink.split.i

ar9300_check_eeprom_header.exit24.i.do.body77.i_crit_edge: ; preds = %ar9300_check_eeprom_header.exit24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77.i

do.body77.i:                                      ; preds = %ar9300_check_eeprom_header.exit24.i.do.body77.i_crit_edge, %ar9300_check_eeprom_header.exit19.i.do.body77.i_crit_edge, %if.end15.i52.1.i.do.body77.i_crit_edge, %if.end15.i.1.i.do.body77.i_crit_edge, %ar9300_check_eeprom_header.exit.i.do.body77.i_crit_edge
  %cptr.1.i = phi i32 [ %switch.select2.i, %ar9300_check_eeprom_header.exit.i.do.body77.i_crit_edge ], [ 4095, %if.end15.i.1.i.do.body77.i_crit_edge ], [ 511, %if.end15.i52.1.i.do.body77.i_crit_edge ], [ 1023, %ar9300_check_eeprom_header.exit19.i.do.body77.i_crit_edge ], [ 511, %ar9300_check_eeprom_header.exit24.i.do.body77.i_crit_edge ]
  %read.0.i = phi ptr [ @ar9300_read_eeprom, %ar9300_check_eeprom_header.exit.i.do.body77.i_crit_edge ], [ @ar9300_read_eeprom, %if.end15.i.1.i.do.body77.i_crit_edge ], [ @ar9300_read_eeprom, %if.end15.i52.1.i.do.body77.i_crit_edge ], [ @ar9300_read_otp, %ar9300_check_eeprom_header.exit19.i.do.body77.i_crit_edge ], [ @ar9300_read_otp, %ar9300_check_eeprom_header.exit24.i.do.body77.i_crit_edge ]
  %92 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %debug_mask.i, align 4
  %and79.i = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %do.body77.i.do.end84.i_crit_edge, label %if.then81.i

do.body77.i.do.end84.i_crit_edge:                 ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end84.i

if.then81.i:                                      ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.3) #11
  br label %do.end84.i

do.end84.i:                                       ; preds = %if.then81.i, %do.body77.i.do.end84.i_crit_edge
  %arrayidx2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %arrayidx5.i.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %arrayidx8.i.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end84.i
  %it.0129.i = phi i32 [ 0, %do.end84.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %cptr.2126.i = phi i32 [ %cptr.1.i, %do.end84.i ], [ %cptr.3.i, %for.inc.i.for.body.i_crit_edge ]
  %call87.i = call zeroext i1 %read.0.i(ptr noundef %ah, i32 noundef %cptr.2126.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #11, !callees !234
  br i1 %call87.i, label %if.end89.i, label %for.body.i.cleanup163.sink.split.i_crit_edge

for.body.i.cleanup163.sink.split.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup163.sink.split.i

if.end89.i:                                       ; preds = %for.body.i
  %94 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %call7.i.i.i, align 8
  %96 = add i32 %95, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %96)
  %97 = icmp ult i32 %96, -2
  br i1 %97, label %if.end92.i, label %if.end89.i.cleanup163.sink.split.i_crit_edge

if.end89.i.cleanup163.sink.split.i_crit_edge:     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup163.sink.split.i

if.end92.i:                                       ; preds = %if.end89.i
  %98 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %call7.i.i.i, align 8
  %conv.i.i = zext i8 %99 to i32
  %100 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx2.i.i, align 1
  %conv3.i.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx5.i.i, align 2
  %conv6.i.i = zext i8 %103 to i32
  %shr.i.i = lshr i32 %conv.i.i, 5
  %and13.i.i = and i32 %conv.i.i, 31
  %shr15.i.i = lshr i32 %conv3.i.i, 2
  %and16.i.i = and i32 %shr15.i.i, 32
  %or.i.i = or i32 %and16.i.i, %and13.i.i
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 4
  %and18.i.i = and i32 %shl.i.i, 2032
  %shr20.i.i = lshr i32 %conv6.i.i, 4
  %or22.i.i = or i32 %and18.i.i, %shr20.i.i
  %104 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %debug_mask.i, align 4
  %and95.i = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.end92.i.do.end100.i_crit_edge, label %if.then97.i

if.end92.i.do.end100.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end100.i

if.then97.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  %and24.i.i = and i32 %conv6.i.i, 15
  %106 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %107 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.4, i32 noundef %cptr.2126.i, i32 noundef %shr.i.i, i32 noundef %or.i.i, i32 noundef %or22.i.i, i32 noundef %and24.i.i, i32 noundef %conv9.i.i) #11
  br label %do.end100.i

do.end100.i:                                      ; preds = %if.then97.i, %if.end92.i.do.end100.i_crit_edge
  %108 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %109)
  %cmp103.i = icmp eq i32 %109, 576
  br i1 %cmp103.i, label %land.lhs.true112.i, label %land.lhs.true105.i

land.lhs.true105.i:                               ; preds = %do.end100.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %or22.i.i)
  %cmp106.i = icmp ugt i32 %or22.i.i, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %or22.i.i, i32 %cptr.2126.i)
  %cmp116.i = icmp sgt i32 %or22.i.i, %cptr.2126.i
  %or.cond.i = or i1 %cmp106.i, %cmp116.i
  br i1 %or.cond.i, label %land.lhs.true105.i.do.body119.i_crit_edge, label %land.lhs.true105.i.if.end127.i_crit_edge

land.lhs.true105.i.if.end127.i_crit_edge:         ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

land.lhs.true105.i.do.body119.i_crit_edge:        ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body119.i

land.lhs.true112.i:                               ; preds = %do.end100.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %or22.i.i)
  %cmp113.i = icmp ugt i32 %or22.i.i, 1088
  call void @__sanitizer_cov_trace_cmp4(i32 %or22.i.i, i32 %cptr.2126.i)
  %cmp116.old.i = icmp sgt i32 %or22.i.i, %cptr.2126.i
  %or.cond117.i = or i1 %cmp113.i, %cmp116.old.i
  br i1 %or.cond117.i, label %land.lhs.true112.i.do.body119.i_crit_edge, label %land.lhs.true112.i.if.end127.i_crit_edge

land.lhs.true112.i.if.end127.i_crit_edge:         ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

land.lhs.true112.i.do.body119.i_crit_edge:        ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body119.i

do.body119.i:                                     ; preds = %land.lhs.true112.i.do.body119.i_crit_edge, %land.lhs.true105.i.do.body119.i_crit_edge
  %110 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %debug_mask.i, align 4
  %and121.i = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %do.body119.i.do.end126.i_crit_edge, label %if.then123.i

do.body119.i.do.end126.i_crit_edge:               ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end126.i

if.then123.i:                                     ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.5) #11
  br label %do.end126.i

do.end126.i:                                      ; preds = %if.then123.i, %do.body119.i.do.end126.i_crit_edge
  %sub.i = add i32 %cptr.2126.i, -4
  br label %for.inc.i

if.end127.i:                                      ; preds = %land.lhs.true112.i.if.end127.i_crit_edge, %land.lhs.true105.i.if.end127.i_crit_edge
  %add.i = add nuw nsw i32 %or22.i.i, 4
  %add128.i = add nuw nsw i32 %or22.i.i, 6
  %call129.i = call zeroext i1 %read.0.i(ptr noundef %ah, i32 noundef %cptr.2126.i, ptr noundef nonnull %call7.i.i.i, i32 noundef %add128.i) #11, !callees !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or22.i.i)
  %cmp6.i.not.i = icmp eq i32 %or22.i.i, 0
  br i1 %cmp6.i.not.i, label %if.end127.i.ar9300_comp_cksum.exit.i_crit_edge, label %if.end127.i.for.body.i28.i_crit_edge

if.end127.i.for.body.i28.i_crit_edge:             ; preds = %if.end127.i
  br label %for.body.i28.i

if.end127.i.ar9300_comp_cksum.exit.i_crit_edge:   ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_comp_cksum.exit.i

for.body.i28.i:                                   ; preds = %for.body.i28.i.for.body.i28.i_crit_edge, %if.end127.i.for.body.i28.i_crit_edge
  %checksum.08.i.i = phi i32 [ %and.i.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ 0, %if.end127.i.for.body.i28.i_crit_edge ]
  %it.07.i.i = phi i32 [ %inc.i26.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ 0, %if.end127.i.for.body.i28.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i, i32 %it.07.i.i
  %112 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i25.i = zext i8 %113 to i32
  %add.i.i = add nuw nsw i32 %checksum.08.i.i, %conv.i25.i
  %and.i.i = and i32 %add.i.i, 65535
  %inc.i26.i = add nuw nsw i32 %it.07.i.i, 1
  %exitcond.not.i27.i = icmp eq i32 %inc.i26.i, %or22.i.i
  br i1 %exitcond.not.i27.i, label %for.end.loopexit.i.i, label %for.body.i28.i.for.body.i28.i_crit_edge

for.body.i28.i.for.body.i28.i_crit_edge:          ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i28.i

for.end.loopexit.i.i:                             ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.i.i = trunc i32 %add.i.i to i16
  br label %ar9300_comp_cksum.exit.i

ar9300_comp_cksum.exit.i:                         ; preds = %for.end.loopexit.i.i, %if.end127.i.ar9300_comp_cksum.exit.i_crit_edge
  %checksum.0.lcssa.i.i = phi i16 [ 0, %if.end127.i.ar9300_comp_cksum.exit.i_crit_edge ], [ %phi.cast.i.i, %for.end.loopexit.i.i ]
  %arrayidx132.i = getelementptr i8, ptr %call7.i.i.i, i32 %add.i
  %114 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %arrayidx132.i, align 1
  %116 = call i16 @llvm.bswap.i16(i16 %115) #11
  %117 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %debug_mask.i, align 4
  %and136.i = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %ar9300_comp_cksum.exit.i.do.end143.i_crit_edge, label %if.then138.i

ar9300_comp_cksum.exit.i.do.end143.i_crit_edge:   ; preds = %ar9300_comp_cksum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end143.i

if.then138.i:                                     ; preds = %ar9300_comp_cksum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv139.i = zext i16 %checksum.0.lcssa.i.i to i32
  %conv140.i = zext i16 %116 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.6, i32 noundef %conv139.i, i32 noundef %conv140.i) #11
  br label %do.end143.i

do.end143.i:                                      ; preds = %if.then138.i, %ar9300_comp_cksum.exit.i.do.end143.i_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %checksum.0.lcssa.i.i, i16 %116)
  %cmp146.i = icmp eq i16 %checksum.0.lcssa.i.i, %116
  br i1 %cmp146.i, label %if.then148.i, label %do.body151.i

if.then148.i:                                     ; preds = %do.end143.i
  %119 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %shr.i.i, label %do.body37.i.i [
    i32 0, label %sw.bb.i.i
    i32 3, label %sw.bb11.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %or22.i.i)
  %cmp.not.i.i = icmp eq i32 %or22.i.i, 1088
  br i1 %cmp.not.i.i, label %if.end2.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.bb.i.i
  %120 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %debug_mask.i, align 4
  %and.i29.i = and i32 %121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i)
  %tobool.not.i.i = icmp eq i32 %and.i29.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end159.i_crit_edge, label %if.then1.i.i

do.body.i.i.if.end159.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.10, i32 noundef 1088, i32 noundef %or22.i.i) #11
  br label %if.end159.i

if.end2.i.i:                                      ; preds = %sw.bb.i.i
  %122 = call ptr @memcpy(ptr %eeprom, ptr %arrayidx.i, i32 1088)
  %123 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %debug_mask.i, align 4
  %and5.i.i = and i32 %124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end2.i.i.if.end159.i_crit_edge, label %if.then7.i.i

if.end2.i.i.if.end159.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

if.then7.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.11, i32 noundef %it.0129.i, i32 noundef 1088) #11
  br label %if.end159.i

sw.bb11.i.i:                                      ; preds = %if.then148.i
  %125 = zext i32 %or.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %or.i.i, label %do.body17.i.i [
    i32 0, label %sw.bb11.i.i.do.body27.i.i_crit_edge
    i32 2, label %sw.bb11.i.i.if.end25.i.i_crit_edge
    i32 5, label %cleanup.fold.split.i.i.i
    i32 4, label %cleanup.fold.split8.i.i.i
    i32 3, label %cleanup.fold.split9.i.i.i
    i32 6, label %cleanup.fold.split10.i.i.i
  ]

sw.bb11.i.i.if.end25.i.i_crit_edge:               ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

sw.bb11.i.i.do.body27.i.i_crit_edge:              ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.i.i

cleanup.fold.split.i.i.i:                         ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

cleanup.fold.split8.i.i.i:                        ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

cleanup.fold.split9.i.i.i:                        ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

cleanup.fold.split10.i.i.i:                       ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

do.body17.i.i:                                    ; preds = %sw.bb11.i.i
  %126 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug_mask.i, align 4
  %and19.i.i = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %do.body17.i.i.if.end159.i_crit_edge, label %if.then21.i.i

do.body17.i.i.if.end159.i_crit_edge:              ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

if.then21.i.i:                                    ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.12, i32 noundef %or.i.i) #11
  br label %if.end159.i

if.end25.i.i:                                     ; preds = %cleanup.fold.split10.i.i.i, %cleanup.fold.split9.i.i.i, %cleanup.fold.split8.i.i.i, %cleanup.fold.split.i.i.i, %sw.bb11.i.i.if.end25.i.i_crit_edge
  %retval.0.i.ph.i.i = phi ptr [ @ar9300_x113, %cleanup.fold.split10.i.i.i ], [ @ar9300_h112, %cleanup.fold.split9.i.i.i ], [ @ar9300_h116, %cleanup.fold.split8.i.i.i ], [ @ar9300_x112, %cleanup.fold.split.i.i.i ], [ @ar9300_default, %sw.bb11.i.i.if.end25.i.i_crit_edge ]
  %128 = call ptr @memcpy(ptr %eeprom, ptr %retval.0.i.ph.i.i, i32 1088)
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %if.end25.i.i, %sw.bb11.i.i.do.body27.i.i_crit_edge
  %129 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %debug_mask.i, align 4
  %and29.i.i = and i32 %130, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %do.body27.i.i.do.end34.i.i_crit_edge, label %if.then31.i.i

do.body27.i.i.do.end34.i.i_crit_edge:             ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34.i.i

if.then31.i.i:                                    ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.13, i32 noundef %it.0129.i, i32 noundef %or.i.i, i32 noundef %or22.i.i) #11
  br label %do.end34.i.i

do.end34.i.i:                                     ; preds = %if.then31.i.i, %do.body27.i.i.do.end34.i.i_crit_edge
  br i1 %cmp6.i.not.i, label %do.end34.i.i.if.end159.i_crit_edge, label %do.end34.i.i.for.body.i.i.i_crit_edge

do.end34.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end34.i.i
  br label %for.body.i.i.i

do.end34.i.i.if.end159.i_crit_edge:               ; preds = %do.end34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %do.end34.i.i.for.body.i.i.i_crit_edge
  %spot.06.i.i.i = phi i32 [ %spot.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.end34.i.i.for.body.i.i.i_crit_edge ]
  %it.04.i.i.i = phi i32 [ %add33.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.end34.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 %it.04.i.i.i
  %131 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %132 to i32
  %add.i.i.i = add i32 %spot.06.i.i.i, %conv.i.i.i
  %add1.i.i.i = add nsw i32 %it.04.i.i.i, 1
  %arrayidx2.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 %add1.i.i.i
  %133 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx2.i.i.i, align 1
  %conv3.i.i.i = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp5.not.i.i.i = icmp eq i8 %134, 0
  %cmp5.not.not.i.i.i = xor i1 %cmp5.not.i.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i.i)
  %cmp7.i.i.i = icmp sgt i32 %add.i.i.i, -1
  %or.cond.i.i.i = select i1 %cmp5.not.not.i.i.i, i1 %cmp7.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %land.lhs.true9.i.i.i, label %for.body.i.i.i.if.else.i.i.i_crit_edge

for.body.i.i.i.if.else.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %for.body.i.i.i
  %add10.i.i.i = add nuw i32 %add.i.i.i, %conv3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1089, i32 %add10.i.i.i)
  %cmp11.i.i.i = icmp slt i32 %add10.i.i.i, 1089
  br i1 %cmp11.i.i.i, label %do.body.i.i.i, label %land.lhs.true9.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true9.i.i.i.if.else.i.i.i_crit_edge:     ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i.i

do.body.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  %135 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %debug_mask.i, align 4
  %and13.i.i.i = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and13.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.do.end.i.i.i_crit_edge, label %if.then14.i.i.i

do.body.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

if.then14.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.15, i32 noundef %it.04.i.i.i, i32 noundef %add.i.i.i, i32 noundef %conv.i.i.i, i32 noundef %conv3.i.i.i) #11
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then14.i.i.i, %do.body.i.i.i.do.end.i.i.i_crit_edge
  %arrayidx15.i.i.i = getelementptr i8, ptr %eeprom, i32 %add.i.i.i
  %add16.i.i.i = add i32 %it.04.i.i.i, 2
  %arrayidx17.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 %add16.i.i.i
  %137 = call ptr @memcpy(ptr %arrayidx15.i.i.i, ptr %arrayidx17.i.i.i, i32 %conv3.i.i.i)
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i.if.else.i.i.i_crit_edge, %for.body.i.i.i.if.else.i.i.i_crit_edge
  br i1 %cmp5.not.i.i.i, label %if.else.for.inc_crit_edge.i.i.i, label %do.body22.i.i.i

if.else.for.inc_crit_edge.i.i.i:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre.i.i.i = add i32 %it.04.i.i.i, 2
  br label %for.inc.i.i.i

do.body22.i.i.i:                                  ; preds = %if.else.i.i.i
  %138 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %debug_mask.i, align 4
  %and24.i.i.i = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %and24.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %do.body22.i.i.i.if.end159.i_crit_edge, label %if.then26.i.i.i

do.body22.i.i.i.if.end159.i_crit_edge:            ; preds = %do.body22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

if.then26.i.i.i:                                  ; preds = %do.body22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv3.i.i.i.le = zext i8 %134 to i32
  %conv.i.i.i.le = zext i8 %132 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.16, i32 noundef %it.04.i.i.i, i32 noundef %add.i.i.i, i32 noundef %conv.i.i.i.le, i32 noundef %conv3.i.i.i.le) #11
  br label %if.end159.i

for.inc.i.i.i:                                    ; preds = %if.else.for.inc_crit_edge.i.i.i, %do.end.i.i.i
  %add32.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %if.else.for.inc_crit_edge.i.i.i ], [ %add16.i.i.i, %do.end.i.i.i ]
  %spot.1.i.i.i = phi i32 [ %add.i.i.i, %if.else.for.inc_crit_edge.i.i.i ], [ %add10.i.i.i, %do.end.i.i.i ]
  %add33.i.i.i = add i32 %add32.pre-phi.i.i.i, %conv3.i.i.i
  %cmp.i.i.i = icmp slt i32 %add33.i.i.i, %or22.i.i
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.if.end159.i_crit_edge

for.inc.i.i.i.if.end159.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

do.body37.i.i:                                    ; preds = %if.then148.i
  %140 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %debug_mask.i, align 4
  %and39.i.i = and i32 %141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %tobool40.not.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %tobool40.not.i.i, label %do.body37.i.i.if.end159.i_crit_edge, label %if.then41.i.i

do.body37.i.i.if.end159.i_crit_edge:              ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

if.then41.i.i:                                    ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.14, i32 noundef %shr.i.i) #11
  br label %if.end159.i

do.body151.i:                                     ; preds = %do.end143.i
  %142 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %debug_mask.i, align 4
  %and153.i = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153.i)
  %tobool154.not.i = icmp eq i32 %and153.i, 0
  br i1 %tobool154.not.i, label %do.body151.i.if.end159.i_crit_edge, label %if.then155.i

do.body151.i.if.end159.i_crit_edge:               ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

if.then155.i:                                     ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.7) #11
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then155.i, %do.body151.i.if.end159.i_crit_edge, %if.then41.i.i, %do.body37.i.i.if.end159.i_crit_edge, %for.inc.i.i.i.if.end159.i_crit_edge, %if.then26.i.i.i, %do.body22.i.i.i.if.end159.i_crit_edge, %do.end34.i.i.if.end159.i_crit_edge, %if.then21.i.i, %do.body17.i.i.if.end159.i_crit_edge, %if.then7.i.i, %if.end2.i.i.if.end159.i_crit_edge, %if.then1.i.i, %do.body.i.i.if.end159.i_crit_edge
  %sub162.i = sub i32 %cptr.2126.i, %add128.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end159.i, %do.end126.i
  %cptr.3.i = phi i32 [ %sub.i, %do.end126.i ], [ %sub162.i, %if.end159.i ]
  %inc.i = add nuw nsw i32 %it.0129.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.inc.i.cleanup163.sink.split.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup163.sink.split.i_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup163.sink.split.i

cleanup163.sink.split.i:                          ; preds = %for.inc.i.cleanup163.sink.split.i_crit_edge, %if.end89.i.cleanup163.sink.split.i_crit_edge, %for.body.i.cleanup163.sink.split.i_crit_edge, %ar9300_check_eeprom_header.exit24.i.cleanup163.sink.split.i_crit_edge, %ar9300_check_eeprom_header.exit24.thread.i
  %retval.1.ph.i = phi i32 [ -1, %ar9300_check_eeprom_header.exit24.thread.i ], [ -1, %ar9300_check_eeprom_header.exit24.i.cleanup163.sink.split.i_crit_edge ], [ -1, %for.body.i.cleanup163.sink.split.i_crit_edge ], [ %cptr.3.i, %for.inc.i.cleanup163.sink.split.i_crit_edge ], [ %cptr.2126.i, %if.end89.i.cleanup163.sink.split.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %ar9300_eeprom_restore_internal.exit

ar9300_eeprom_restore_internal.exit:              ; preds = %cleanup163.sink.split.i, %if.end10.i.ar9300_eeprom_restore_internal.exit_crit_edge, %if.end.i.ar9300_eeprom_restore_internal.exit_crit_edge, %for.body.i.i.ar9300_eeprom_restore_internal.exit_crit_edge
  %retval.1.i = phi i32 [ -12, %if.end10.i.ar9300_eeprom_restore_internal.exit_crit_edge ], [ 0, %if.end.i.ar9300_eeprom_restore_internal.exit_crit_edge ], [ %retval.1.ph.i, %cleanup163.sink.split.i ], [ -5, %for.body.i.i.ar9300_eeprom_restore_internal.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.1.i)
  %cmp = icmp sgt i32 %retval.1.i, -1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hw_ar9003_dump_eeprom(ptr noundef %ah, i1 noundef zeroext %dump_base_hdr, ptr noundef %buf, i32 noundef %len, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %dump_base_hdr, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %sub = sub i32 %size, %len
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #11
  %add = add i32 %call, %len
  %modalHeader2G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 10
  %call1 = tail call fastcc i32 @ar9003_dump_modal_eeprom(ptr noundef %buf, i32 noundef %add, i32 noundef %size, ptr noundef %modalHeader2G)
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call1
  %sub3 = sub i32 %size, %call1
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.19) #11
  %add5 = add i32 %call4, %call1
  %call6 = tail call fastcc i32 @ar9003_dump_cal_data(ptr noundef %ah, ptr noundef %buf, i32 noundef %add5, i32 noundef %size, i1 noundef zeroext true)
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %call6
  %sub8 = sub i32 %size, %call6
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20) #11
  %add10 = add i32 %call9, %call6
  %modalHeader5G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 1, i32 1, i32 2
  %call11 = tail call fastcc i32 @ar9003_dump_modal_eeprom(ptr noundef %buf, i32 noundef %add10, i32 noundef %size, ptr noundef %modalHeader5G)
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %call11
  %sub13 = sub i32 %size, %call11
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.19) #11
  %add15 = add i32 %call14, %call11
  %call16 = tail call fastcc i32 @ar9003_dump_cal_data(ptr noundef %ah, ptr noundef %buf, i32 noundef %add15, i32 noundef %size, i1 noundef zeroext false)
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %baseEepHeader = getelementptr inbounds %struct.ar9300_eeprom, ptr %eeprom, i32 0, i32 4
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %len
  %sub18 = sub i32 %size, %len
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eeprom, align 4
  %conv = zext i8 %1 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %conv) #11
  %add21 = add i32 %call20, %len
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %add21
  %sub24 = sub i32 %size, %add21
  %2 = ptrtoint ptr %baseEepHeader to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %baseEepHeader, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv25 = zext i16 %4 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23, i32 noundef %conv25) #11
  %add27 = add i32 %call26, %add21
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %add27
  %sub32 = sub i32 %size, %add27
  %arrayidx34 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 13
  %5 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %arrayidx34, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv35 = zext i16 %7 to i32
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.24, i32 noundef %conv35) #11
  %add37 = add i32 %call36, %add27
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %add37
  %sub42 = sub i32 %size, %add37
  %txrxMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 15
  %8 = ptrtoint ptr %txrxMask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %txrxMask, align 1
  %10 = lshr i8 %9, 4
  %11 = zext i8 %10 to i32
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.25, i32 noundef %11) #11
  %add45 = add i32 %call44, %add37
  %add.ptr49 = getelementptr i8, ptr %buf, i32 %add45
  %sub50 = sub i32 %size, %add45
  %12 = ptrtoint ptr %txrxMask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %txrxMask, align 1
  %14 = and i8 %13, 15
  %and = zext i8 %14 to i32
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.26, i32 noundef %and) #11
  %add54 = add i32 %call53, %add45
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %add54
  %sub59 = sub i32 %size, %add54
  %opCapFlags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 16
  %15 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %opCapFlags, align 1
  %17 = and i8 %16, 1
  %18 = zext i8 %17 to i32
  %call64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.27, i32 noundef %18) #11
  %add65 = add i32 %call64, %add54
  %add.ptr69 = getelementptr i8, ptr %buf, i32 %add65
  %sub70 = sub i32 %size, %add65
  %19 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %opCapFlags, align 1
  %21 = lshr i8 %20, 1
  %.lobit = and i8 %21, 1
  %22 = zext i8 %.lobit to i32
  %call80 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.28, i32 noundef %22) #11
  %add81 = add i32 %call80, %add65
  %add.ptr85 = getelementptr i8, ptr %buf, i32 %add81
  %sub86 = sub i32 %size, %add81
  %23 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %opCapFlags, align 1
  %25 = lshr i8 %24, 5
  %.lobit669 = and i8 %25, 1
  %26 = zext i8 %.lobit669 to i32
  %call96 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i32 noundef %sub86, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.29, i32 noundef %26) #11
  %add97 = add i32 %call96, %add81
  %add.ptr101 = getelementptr i8, ptr %buf, i32 %add97
  %sub102 = sub i32 %size, %add97
  %27 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %opCapFlags, align 1
  %29 = lshr i8 %28, 3
  %.lobit670 = and i8 %29, 1
  %30 = zext i8 %.lobit670 to i32
  %call112 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr101, i32 noundef %sub102, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.30, i32 noundef %30) #11
  %add113 = add i32 %call112, %add97
  %add.ptr117 = getelementptr i8, ptr %buf, i32 %add113
  %sub118 = sub i32 %size, %add113
  %31 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %opCapFlags, align 1
  %33 = lshr i8 %32, 4
  %.lobit671 = and i8 %33, 1
  %34 = zext i8 %.lobit671 to i32
  %call128 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr117, i32 noundef %sub118, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.31, i32 noundef %34) #11
  %add129 = add i32 %call128, %add113
  %add.ptr133 = getelementptr i8, ptr %buf, i32 %add129
  %sub134 = sub i32 %size, %add129
  %35 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %opCapFlags, align 1
  %37 = lshr i8 %36, 2
  %.lobit672 = and i8 %37, 1
  %38 = zext i8 %.lobit672 to i32
  %call144 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr133, i32 noundef %sub134, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.32, i32 noundef %38) #11
  %add145 = add i32 %call144, %add129
  %add.ptr149 = getelementptr i8, ptr %buf, i32 %add145
  %sub150 = sub i32 %size, %add145
  %eepMisc = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 17
  %39 = ptrtoint ptr %eepMisc to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %eepMisc, align 1
  %41 = and i8 %40, 1
  %42 = zext i8 %41 to i32
  %call159 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr149, i32 noundef %sub150, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.33, i32 noundef %42) #11
  %add160 = add i32 %call159, %add145
  %add.ptr164 = getelementptr i8, ptr %buf, i32 %add160
  %sub165 = sub i32 %size, %add160
  %rfSilent = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 18
  %43 = ptrtoint ptr %rfSilent to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rfSilent, align 1
  %conv166 = zext i8 %44 to i32
  %call167 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr164, i32 noundef %sub165, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.34, i32 noundef %conv166) #11
  %add168 = add i32 %call167, %add160
  %add.ptr172 = getelementptr i8, ptr %buf, i32 %add168
  %sub173 = sub i32 %size, %add168
  %blueToothOptions = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 19
  %45 = ptrtoint ptr %blueToothOptions to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %blueToothOptions, align 1
  %conv174 = zext i8 %46 to i32
  %call175 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr172, i32 noundef %sub173, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.35, i32 noundef %conv174) #11
  %add176 = add i32 %call175, %add168
  %add.ptr180 = getelementptr i8, ptr %buf, i32 %add176
  %sub181 = sub i32 %size, %add176
  %deviceCap = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 20
  %47 = ptrtoint ptr %deviceCap to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %deviceCap, align 1
  %conv182 = zext i8 %48 to i32
  %call183 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr180, i32 noundef %sub181, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.36, i32 noundef %conv182) #11
  %add184 = add i32 %call183, %add176
  %add.ptr188 = getelementptr i8, ptr %buf, i32 %add184
  %sub189 = sub i32 %size, %add184
  %deviceType = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 21
  %49 = ptrtoint ptr %deviceType to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %deviceType, align 1
  %conv190 = zext i8 %50 to i32
  %call191 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr188, i32 noundef %sub189, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.37, i32 noundef %conv190) #11
  %add192 = add i32 %call191, %add184
  %add.ptr196 = getelementptr i8, ptr %buf, i32 %add192
  %sub197 = sub i32 %size, %add192
  %pwrTableOffset = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 22
  %51 = ptrtoint ptr %pwrTableOffset to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pwrTableOffset, align 1
  %conv198 = sext i8 %52 to i32
  %call199 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr196, i32 noundef %sub197, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.38, i32 noundef %conv198) #11
  %add200 = add i32 %call199, %add192
  %add.ptr204 = getelementptr i8, ptr %buf, i32 %add200
  %sub205 = sub i32 %size, %add200
  %params_for_tuning_caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 23
  %53 = ptrtoint ptr %params_for_tuning_caps to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %params_for_tuning_caps, align 1
  %conv207 = zext i8 %54 to i32
  %call208 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr204, i32 noundef %sub205, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.39, i32 noundef %conv207) #11
  %add209 = add i32 %call208, %add200
  %add.ptr213 = getelementptr i8, ptr %buf, i32 %add209
  %sub214 = sub i32 %size, %add209
  %arrayidx216 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 24
  %55 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx216, align 1
  %conv217 = zext i8 %56 to i32
  %call218 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr213, i32 noundef %sub214, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.40, i32 noundef %conv217) #11
  %add219 = add i32 %call218, %add209
  %add.ptr223 = getelementptr i8, ptr %buf, i32 %add219
  %sub224 = sub i32 %size, %add219
  %featureEnable = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 25
  %57 = ptrtoint ptr %featureEnable to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %featureEnable, align 1
  %59 = and i8 %58, 1
  %60 = zext i8 %59 to i32
  %call232 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr223, i32 noundef %sub224, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.41, i32 noundef %60) #11
  %add233 = add i32 %call232, %add219
  %add.ptr237 = getelementptr i8, ptr %buf, i32 %add233
  %sub238 = sub i32 %size, %add233
  %61 = ptrtoint ptr %featureEnable to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %featureEnable, align 1
  %63 = lshr i8 %62, 1
  %.lobit673 = and i8 %63, 1
  %64 = zext i8 %.lobit673 to i32
  %call247 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr237, i32 noundef %sub238, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.42, i32 noundef %64) #11
  %add248 = add i32 %call247, %add233
  %add.ptr252 = getelementptr i8, ptr %buf, i32 %add248
  %sub253 = sub i32 %size, %add248
  %65 = ptrtoint ptr %featureEnable to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %featureEnable, align 1
  %67 = lshr i8 %66, 2
  %.lobit674 = and i8 %67, 1
  %68 = zext i8 %.lobit674 to i32
  %call262 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr252, i32 noundef %sub253, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.43, i32 noundef %68) #11
  %add263 = add i32 %call262, %add248
  %add.ptr267 = getelementptr i8, ptr %buf, i32 %add263
  %sub268 = sub i32 %size, %add263
  %69 = ptrtoint ptr %featureEnable to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %featureEnable, align 1
  %71 = lshr i8 %70, 3
  %.lobit675 = and i8 %71, 1
  %72 = zext i8 %.lobit675 to i32
  %call277 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr267, i32 noundef %sub268, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.44, i32 noundef %72) #11
  %add278 = add i32 %call277, %add263
  %add.ptr282 = getelementptr i8, ptr %buf, i32 %add278
  %sub283 = sub i32 %size, %add278
  %73 = ptrtoint ptr %featureEnable to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %featureEnable, align 1
  %75 = lshr i8 %74, 4
  %.lobit676 = and i8 %75, 1
  %76 = zext i8 %.lobit676 to i32
  %call292 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr282, i32 noundef %sub283, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.45, i32 noundef %76) #11
  %add293 = add i32 %call292, %add278
  %add.ptr297 = getelementptr i8, ptr %buf, i32 %add293
  %sub298 = sub i32 %size, %add293
  %77 = ptrtoint ptr %featureEnable to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %featureEnable, align 1
  %79 = lshr i8 %78, 5
  %.lobit677 = and i8 %79, 1
  %80 = zext i8 %.lobit677 to i32
  %call307 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr297, i32 noundef %sub298, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.46, i32 noundef %80) #11
  %add308 = add i32 %call307, %add293
  %add.ptr312 = getelementptr i8, ptr %buf, i32 %add308
  %sub313 = sub i32 %size, %add308
  %miscConfiguration = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26
  %81 = ptrtoint ptr %miscConfiguration to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %miscConfiguration, align 1
  %83 = and i8 %82, 1
  %84 = zext i8 %83 to i32
  %call321 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr312, i32 noundef %sub313, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.47, i32 noundef %84) #11
  %add322 = add i32 %call321, %add308
  %add.ptr326 = getelementptr i8, ptr %buf, i32 %add322
  %sub327 = sub i32 %size, %add322
  %85 = ptrtoint ptr %miscConfiguration to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %miscConfiguration, align 1
  %87 = lshr i8 %86, 1
  %.lobit678 = and i8 %87, 1
  %88 = zext i8 %.lobit678 to i32
  %call336 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr326, i32 noundef %sub327, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.48, i32 noundef %88) #11
  %add337 = add i32 %call336, %add322
  %add.ptr341 = getelementptr i8, ptr %buf, i32 %add337
  %sub342 = sub i32 %size, %add337
  %89 = ptrtoint ptr %miscConfiguration to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %miscConfiguration, align 1
  %91 = lshr i8 %90, 3
  %92 = and i8 %91, 1
  %and346 = zext i8 %92 to i32
  %call347 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr341, i32 noundef %sub342, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.49, i32 noundef %and346) #11
  %add348 = add i32 %call347, %add337
  %add.ptr352 = getelementptr i8, ptr %buf, i32 %add348
  %sub353 = sub i32 %size, %add348
  %eepromWriteEnableGpio = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 1
  %93 = ptrtoint ptr %eepromWriteEnableGpio to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %eepromWriteEnableGpio, align 1
  %conv354 = zext i8 %94 to i32
  %call355 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr352, i32 noundef %sub353, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.50, i32 noundef %conv354) #11
  %add356 = add i32 %call355, %add348
  %add.ptr360 = getelementptr i8, ptr %buf, i32 %add356
  %sub361 = sub i32 %size, %add356
  %wlanDisableGpio = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 2
  %95 = ptrtoint ptr %wlanDisableGpio to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %wlanDisableGpio, align 1
  %conv362 = zext i8 %96 to i32
  %call363 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr360, i32 noundef %sub361, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.51, i32 noundef %conv362) #11
  %add364 = add i32 %call363, %add356
  %add.ptr368 = getelementptr i8, ptr %buf, i32 %add364
  %sub369 = sub i32 %size, %add364
  %wlanLedGpio = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 3
  %97 = ptrtoint ptr %wlanLedGpio to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %wlanLedGpio, align 1
  %conv370 = zext i8 %98 to i32
  %call371 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr368, i32 noundef %sub369, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.52, i32 noundef %conv370) #11
  %add372 = add i32 %call371, %add364
  %add.ptr376 = getelementptr i8, ptr %buf, i32 %add372
  %sub377 = sub i32 %size, %add372
  %rxBandSelectGpio = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 4
  %99 = ptrtoint ptr %rxBandSelectGpio to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %rxBandSelectGpio, align 1
  %conv378 = zext i8 %100 to i32
  %call379 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr376, i32 noundef %sub377, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.53, i32 noundef %conv378) #11
  %add380 = add i32 %call379, %add372
  %add.ptr384 = getelementptr i8, ptr %buf, i32 %add380
  %sub385 = sub i32 %size, %add380
  %txrxgain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 5
  %101 = ptrtoint ptr %txrxgain to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %txrxgain, align 1
  %103 = lshr i8 %102, 4
  %104 = zext i8 %103 to i32
  %call388 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr384, i32 noundef %sub385, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.54, i32 noundef %104) #11
  %add389 = add i32 %call388, %add380
  %add.ptr393 = getelementptr i8, ptr %buf, i32 %add389
  %sub394 = sub i32 %size, %add389
  %105 = ptrtoint ptr %txrxgain to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %txrxgain, align 1
  %107 = and i8 %106, 15
  %and397 = zext i8 %107 to i32
  %call398 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr393, i32 noundef %sub394, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.55, i32 noundef %and397) #11
  %add399 = add i32 %call398, %add389
  %add.ptr403 = getelementptr i8, ptr %buf, i32 %add399
  %sub404 = sub i32 %size, %add399
  %swreg = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 6
  %108 = ptrtoint ptr %swreg to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %swreg, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %call405 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr403, i32 noundef %sub404, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.56, i32 noundef %110) #11
  %add406 = add i32 %call405, %add399
  %add.ptr409 = getelementptr i8, ptr %buf, i32 %add406
  %sub410 = sub i32 %size, %add406
  %macAddr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 1
  %call412 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr409, i32 noundef %sub410, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef %macAddr) #11
  %add413 = add i32 %add406, %call412
  br label %out

out:                                              ; preds = %if.end, %if.then
  %len.addr.0 = phi i32 [ %add413, %if.end ], [ %call16, %if.then ]
  %111 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %size)
  ret i32 %111
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_ar9300_get_eeprom_ver(ptr nocapture noundef readonly %ah) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eeprom, align 4
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_ar9300_get_eeprom_rev(ptr nocapture noundef readnone %ah) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hw_ar9300_set_board_values(ptr noundef %ah, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %featureEnable.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 25
  %3 = ptrtoint ptr %featureEnable.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %featureEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool.not.i = icmp sgt i8 %4, -1
  br i1 %tobool.not.i, label %entry.ar9003_hw_xpa_timing_control_apply.exit_crit_edge, label %if.end.i

entry.ar9003_hw_xpa_timing_control_apply.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_xpa_timing_control_apply.exit

if.end.i:                                         ; preds = %entry
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %macVersion.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %6, label %if.end.i.ar9003_hw_xpa_timing_control_apply.exit_crit_edge [
    i32 448, label %if.end.i.if.end27.i_crit_edge
    i32 768, label %if.end.i.if.end27.i_crit_edge188
    i32 1280, label %if.end.i.if.end27.i_crit_edge189
    i32 1536, label %if.end.i.if.end27.i_crit_edge190
  ]

if.end.i.if.end27.i_crit_edge190:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.end.i.if.end27.i_crit_edge189:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.end.i.if.end27.i_crit_edge188:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.end.i.ar9003_hw_xpa_timing_control_apply.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_xpa_timing_control_apply.exit

if.end27.i:                                       ; preds = %if.end.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge188, %if.end.i.if.end27.i_crit_edge189, %if.end.i.if.end27.i_crit_edge190
  %modalHeader2G.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 10
  %modalHeader5G.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 1, i32 1, i32 2
  %retval.0.i.i = select i1 %tobool.not, ptr %modalHeader2G.i.i, ptr %modalHeader5G.i.i
  %txFrameToXpaOn.i = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %retval.0.i.i, i32 0, i32 20
  %8 = ptrtoint ptr %txFrameToXpaOn.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %txFrameToXpaOn.i, align 1
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %10 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw.i, align 4
  %conv31.i = zext i8 %9 to i32
  br i1 %tobool.not, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i = shl nuw nsw i32 %conv31.i, 8
  %call33.i = tail call i32 %11(ptr noundef %ah, i32 noundef 41572, i32 noundef %shl.i, i32 noundef 65280) #11
  br label %ar9003_hw_xpa_timing_control_apply.exit

if.else.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %call39.i = tail call i32 %11(ptr noundef %ah, i32 noundef 41572, i32 noundef %conv31.i, i32 noundef 255) #11
  br label %ar9003_hw_xpa_timing_control_apply.exit

ar9003_hw_xpa_timing_control_apply.exit:          ; preds = %if.else.i, %if.then30.i, %if.end.i.ar9003_hw_xpa_timing_control_apply.exit_crit_edge, %entry.ar9003_hw_xpa_timing_control_apply.exit_crit_edge
  %modalHeader2G.i.i41 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 10
  %modalHeader5G.i.i42 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 1, i32 1, i32 2
  %retval.0.i.i43 = select i1 %tobool.not, ptr %modalHeader2G.i.i41, ptr %modalHeader5G.i.i42
  %xpaBiasLvl.i = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 11
  %12 = ptrtoint ptr %xpaBiasLvl.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xpaBiasLvl.i, align 1
  %conv.i = zext i8 %13 to i32
  %macVersion.i44 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %macVersion.i44, align 4
  %16 = add i32 %15, -512
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 26) #11
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %17, label %if.else93.i [
    i32 1, label %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge
    i32 0, label %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge191
    i32 4, label %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge192
    i32 12, label %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge193
    i32 16, label %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge194
    i32 2, label %ar9003_hw_xpa_timing_control_apply.exit.if.then55.i_crit_edge
    i32 8, label %ar9003_hw_xpa_timing_control_apply.exit.if.then55.i_crit_edge195
    i32 3, label %ar9003_hw_xpa_timing_control_apply.exit.if.then55.i_crit_edge196
  ]

ar9003_hw_xpa_timing_control_apply.exit.if.then55.i_crit_edge196: ; preds = %ar9003_hw_xpa_timing_control_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

ar9003_hw_xpa_timing_control_apply.exit.if.then55.i_crit_edge195: ; preds = %ar9003_hw_xpa_timing_control_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

ar9003_hw_xpa_timing_control_apply.exit.if.then55.i_crit_edge: ; preds = %ar9003_hw_xpa_timing_control_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge194: ; preds = %ar9003_hw_xpa_timing_control_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge193: ; preds = %ar9003_hw_xpa_timing_control_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge192: ; preds = %ar9003_hw_xpa_timing_control_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge191: ; preds = %ar9003_hw_xpa_timing_control_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge: ; preds = %ar9003_hw_xpa_timing_control_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge, %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge191, %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge192, %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge193, %ar9003_hw_xpa_timing_control_apply.exit.if.then.i_crit_edge194
  %rmw.i45 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %19 = ptrtoint ptr %rmw.i45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmw.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %15)
  %cmp23.i = icmp eq i32 %15, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %15)
  %cmp27.i = icmp eq i32 %15, 640
  %cond.i = select i1 %cmp27.i, i32 90768, i32 90756
  %cond29.i = select i1 %cmp23.i, i32 90764, i32 %cond.i
  %shl.i46 = shl nuw nsw i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %15)
  %cmp32.i = icmp eq i32 %15, 1536
  %cond34.i = select i1 %cmp32.i, i32 7680, i32 61440
  %and.i = and i32 %cond34.i, %shl.i46
  %call40.i = tail call i32 %20(ptr noundef %ah, i32 noundef %cond29.i, i32 noundef %and.i, i32 noundef %cond34.i) #11
  br label %ar9003_hw_xpa_bias_level_apply.exit

if.then55.i:                                      ; preds = %ar9003_hw_xpa_timing_control_apply.exit.if.then55.i_crit_edge, %ar9003_hw_xpa_timing_control_apply.exit.if.then55.i_crit_edge195, %ar9003_hw_xpa_timing_control_apply.exit.if.then55.i_crit_edge196
  %rmw57.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %21 = ptrtoint ptr %rmw57.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmw57.i, align 4
  %23 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %15, label %lor.rhs.i [
    i32 448, label %if.then55.i.cond.end73.i_crit_edge
    i32 640, label %if.then55.i.lor.end.i_crit_edge
  ]

if.then55.i.lor.end.i_crit_edge:                  ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end.i

if.then55.i.cond.end73.i_crit_edge:               ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end73.i

lor.rhs.i:                                        ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %15)
  %cmp70.i = icmp eq i32 %15, 704
  %phi.sel228.i = select i1 %cmp70.i, i32 90764, i32 90752
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.then55.i.lor.end.i_crit_edge
  %24 = phi i32 [ %phi.sel228.i, %lor.rhs.i ], [ 90764, %if.then55.i.lor.end.i_crit_edge ]
  br label %cond.end73.i

cond.end73.i:                                     ; preds = %lor.end.i, %if.then55.i.cond.end73.i_crit_edge
  %cond74.i = phi i32 [ %24, %lor.end.i ], [ 90760, %if.then55.i.cond.end73.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %15)
  %cmp77.i = icmp eq i32 %15, 1024
  %cond79.i = select i1 %cmp77.i, i32 6, i32 8
  %shl80.i = shl nuw nsw i32 %conv.i, %cond79.i
  %cond85.i = select i1 %cmp77.i, i32 960, i32 768
  %and86.i = and i32 %shl80.i, %cond85.i
  %call92.i = tail call i32 %22(ptr noundef %ah, i32 noundef %cond74.i, i32 noundef %and86.i, i32 noundef %cond85.i) #11
  br label %ar9003_hw_xpa_bias_level_apply.exit

if.else93.i:                                      ; preds = %ar9003_hw_xpa_timing_control_apply.exit
  %rmw95.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %25 = ptrtoint ptr %rmw95.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw95.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %15)
  %cmp98.i = icmp eq i32 %15, 448
  %cond114.i = select i1 %cmp98.i, i32 90760, i32 90752
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %15)
  %cmp117.i = icmp eq i32 %15, 1024
  %cond119.i = select i1 %cmp117.i, i32 6, i32 8
  %shl120.i = shl nuw nsw i32 %conv.i, %cond119.i
  %cond125.i = select i1 %cmp117.i, i32 960, i32 768
  %and126.i = and i32 %shl120.i, %cond125.i
  %call132.i = tail call i32 %26(ptr noundef %ah, i32 noundef %cond114.i, i32 noundef %and126.i, i32 noundef %cond125.i) #11
  %27 = ptrtoint ptr %rmw95.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmw95.i, align 4
  %29 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %macVersion.i44, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %30, label %lor.rhs145.i [
    i32 448, label %if.else93.i.cond.end152.i_crit_edge
    i32 640, label %if.else93.i.lor.end150.i_crit_edge
  ]

if.else93.i.lor.end150.i_crit_edge:               ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end150.i

if.else93.i.cond.end152.i_crit_edge:              ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end152.i

lor.rhs145.i:                                     ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %30)
  %cmp148.i = icmp eq i32 %30, 704
  %phi.sel.i = select i1 %cmp148.i, i32 90772, i32 90764
  br label %lor.end150.i

lor.end150.i:                                     ; preds = %lor.rhs145.i, %if.else93.i.lor.end150.i_crit_edge
  %32 = phi i32 [ %phi.sel.i, %lor.rhs145.i ], [ 90772, %if.else93.i.lor.end150.i_crit_edge ]
  br label %cond.end152.i

cond.end152.i:                                    ; preds = %lor.end150.i, %if.else93.i.cond.end152.i_crit_edge
  %cond153.i = phi i32 [ %32, %lor.end150.i ], [ 90768, %if.else93.i.cond.end152.i_crit_edge ]
  %33 = lshr i32 %conv.i, 2
  %and155.i = and i32 %33, 3
  %call156.i = tail call i32 %28(ptr noundef %ah, i32 noundef %cond153.i, i32 noundef %and155.i, i32 noundef 3) #11
  %34 = ptrtoint ptr %rmw95.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw95.i, align 4
  %36 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %macVersion.i44, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %37, label %lor.rhs169.i [
    i32 448, label %cond.end152.i.cond.end176.i_crit_edge
    i32 640, label %cond.end152.i.lor.end174.i_crit_edge
  ]

cond.end152.i.lor.end174.i_crit_edge:             ; preds = %cond.end152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end174.i

cond.end152.i.cond.end176.i_crit_edge:            ; preds = %cond.end152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end176.i

lor.rhs169.i:                                     ; preds = %cond.end152.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %37)
  %cmp172.i = icmp eq i32 %37, 704
  %phi.sel227.i = select i1 %cmp172.i, i32 90772, i32 90764
  br label %lor.end174.i

lor.end174.i:                                     ; preds = %lor.rhs169.i, %cond.end152.i.lor.end174.i_crit_edge
  %39 = phi i32 [ %phi.sel227.i, %lor.rhs169.i ], [ 90772, %cond.end152.i.lor.end174.i_crit_edge ]
  br label %cond.end176.i

cond.end176.i:                                    ; preds = %lor.end174.i, %cond.end152.i.cond.end176.i_crit_edge
  %cond177.i = phi i32 [ %39, %lor.end174.i ], [ 90768, %cond.end152.i.cond.end176.i_crit_edge ]
  %call178.i = tail call i32 %35(ptr noundef %ah, i32 noundef %cond177.i, i32 noundef 4, i32 noundef 4) #11
  br label %ar9003_hw_xpa_bias_level_apply.exit

ar9003_hw_xpa_bias_level_apply.exit:              ; preds = %cond.end176.i, %cond.end73.i, %if.then.i
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %40 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %macVersion.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %41)
  %cmp.i = icmp eq i32 %41, 576
  br i1 %cmp.i, label %land.lhs.true.i, label %ar9003_hw_xpa_bias_level_apply.exit.if.end6.i_crit_edge

ar9003_hw_xpa_bias_level_apply.exit.if.end6.i_crit_edge: ; preds = %ar9003_hw_xpa_bias_level_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %ar9003_hw_xpa_bias_level_apply.exit
  %txrxgain.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 5
  %42 = ptrtoint ptr %txrxgain.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %txrxgain.i.i, align 1
  %44 = and i8 %43, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp2.i = icmp eq i8 %44, 0
  br i1 %cmp2.i, label %if.then.i49, label %land.lhs.true.i.if.end6thread-pre-split.i_crit_edge

land.lhs.true.i.if.end6thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6thread-pre-split.i

if.then.i49:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %xlna_gpio.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 19
  %45 = ptrtoint ptr %xlna_gpio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xlna_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i48 = icmp eq i32 %46, 0
  %..i = select i1 %tobool.not.i48, i32 9, i32 %46
  tail call void @ath9k_hw_gpio_request_out(ptr noundef %ah, i32 noundef %..i, ptr noundef null, i32 noundef 1) #11
  br label %if.end6thread-pre-split.i

if.end6thread-pre-split.i:                        ; preds = %if.then.i49, %land.lhs.true.i.if.end6thread-pre-split.i_crit_edge
  %47 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr.i = load i32, ptr %macVersion.i44, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6thread-pre-split.i, %ar9003_hw_xpa_bias_level_apply.exit.if.end6.i_crit_edge
  %48 = phi i32 [ %.pr.i, %if.end6thread-pre-split.i ], [ %41, %ar9003_hw_xpa_bias_level_apply.exit.if.end6.i_crit_edge ]
  %49 = ptrtoint ptr %retval.0.i.i43 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %retval.0.i.i43, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #11
  %52 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %48, label %if.else35.i [
    i32 640, label %if.end6.i.if.end42.i_crit_edge
    i32 704, label %if.end6.i.if.end42.i_crit_edge197
    i32 1024, label %if.end6.i.if.end42.i_crit_edge198
    i32 1280, label %if.end6.i.if.end42.i_crit_edge199
    i32 1536, label %if.end6.i.if.end42.i_crit_edge200
  ]

if.end6.i.if.end42.i_crit_edge200:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end6.i.if.end42.i_crit_edge199:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end6.i.if.end42.i_crit_edge198:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end6.i.if.end42.i_crit_edge197:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end6.i.if.end42.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.else35.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else35.i, %if.end6.i.if.end42.i_crit_edge, %if.end6.i.if.end42.i_crit_edge197, %if.end6.i.if.end42.i_crit_edge198, %if.end6.i.if.end42.i_crit_edge199, %if.end6.i.if.end42.i_crit_edge200
  %.sink361.i = phi i32 [ 65535, %if.else35.i ], [ 16777215, %if.end6.i.if.end42.i_crit_edge ], [ 16777215, %if.end6.i.if.end42.i_crit_edge197 ], [ 16777215, %if.end6.i.if.end42.i_crit_edge198 ], [ 16777215, %if.end6.i.if.end42.i_crit_edge199 ], [ 16777215, %if.end6.i.if.end42.i_crit_edge200 ]
  %rmw31.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %53 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmw31.i, align 4
  %and33.i = and i32 %.sink361.i, %51
  %call34.i = tail call i32 %54(ptr noundef %ah, i32 noundef 41608, i32 noundef %and33.i, i32 noundef %.sink361.i) #11
  %55 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %macVersion.i44, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %56, label %if.end42.i.if.end67.i_crit_edge [
    i32 640, label %land.lhs.true46.i
    i32 704, label %if.end42.i.if.then55.i50_crit_edge
  ]

if.end42.i.if.then55.i50_crit_edge:               ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i50

if.end42.i.if.end67.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i

land.lhs.true46.i:                                ; preds = %if.end42.i
  %macRev.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %58 = ptrtoint ptr %macRev.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %macRev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %59)
  %cmp48.i = icmp ugt i16 %59, 1
  br i1 %cmp48.i, label %land.lhs.true46.i.if.then55.i50_crit_edge, label %land.lhs.true46.i.if.end67thread-pre-split.i_crit_edge

land.lhs.true46.i.if.end67thread-pre-split.i_crit_edge: ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67thread-pre-split.i

land.lhs.true46.i.if.then55.i50_crit_edge:        ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i50

if.then55.i50:                                    ; preds = %land.lhs.true46.i.if.then55.i50_crit_edge, %if.end42.i.if.then55.i50_crit_edge
  %switchcomspdt.i.i = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 24
  %60 = ptrtoint ptr %switchcomspdt.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %switchcomspdt.i.i, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #11
  %conv58.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmw31.i, align 4
  %shl61.i = shl nuw nsw i32 %conv58.i, 4
  %and62.i = and i32 %shl61.i, 65520
  %call63.i = tail call i32 %64(ptr noundef %ah, i32 noundef 131140, i32 noundef %and62.i, i32 noundef 65520) #11
  %65 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmw31.i, align 4
  %call66.i = tail call i32 %66(ptr noundef %ah, i32 noundef 131140, i32 noundef 1, i32 noundef 0) #11
  br label %if.end67thread-pre-split.i

if.end67thread-pre-split.i:                       ; preds = %if.then55.i50, %land.lhs.true46.i.if.end67thread-pre-split.i_crit_edge
  %67 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr355.i = load i32, ptr %macVersion.i44, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.end67thread-pre-split.i, %if.end42.i.if.end67.i_crit_edge
  %68 = phi i32 [ %.pr355.i, %if.end67thread-pre-split.i ], [ %56, %if.end42.i.if.end67.i_crit_edge ]
  %antCtrlCommon2.i.i = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 1
  %69 = ptrtoint ptr %antCtrlCommon2.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %antCtrlCommon2.i.i, align 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %68)
  %cmp72.i = icmp eq i32 %68, 576
  br i1 %cmp72.i, label %land.lhs.true74.i, label %if.end67.i.if.end80.i_crit_edge

if.end67.i.if.end80.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i

land.lhs.true74.i:                                ; preds = %if.end67.i
  %bt_ant_diversity.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 29
  %72 = ptrtoint ptr %bt_ant_diversity.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bt_ant_diversity.i, align 2, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool75.not.i = icmp eq i8 %73, 0
  br i1 %tobool75.not.i, label %land.lhs.true74.i.if.end80.i_crit_edge, label %if.then77.i

land.lhs.true74.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i

if.then77.i:                                      ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #13
  %ant_ctrl_comm2g_switch_enable.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 20
  %74 = ptrtoint ptr %ant_ctrl_comm2g_switch_enable.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ant_ctrl_comm2g_switch_enable.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then77.i, %land.lhs.true74.i.if.end80.i_crit_edge, %if.end67.i.if.end80.i_crit_edge
  %value.0.i = phi i32 [ %75, %if.then77.i ], [ %71, %land.lhs.true74.i.if.end80.i_crit_edge ], [ %71, %if.end67.i.if.end80.i_crit_edge ]
  %76 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmw31.i, align 4
  %and84.i = and i32 %value.0.i, 16777215
  %call85.i = tail call i32 %77(ptr noundef %ah, i32 noundef 41612, i32 noundef %and84.i, i32 noundef 16777215) #11
  %78 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %macVersion.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %79)
  %cmp88.i = icmp eq i32 %79, 640
  br i1 %cmp88.i, label %land.lhs.true90.i, label %if.end80.i.if.end103.i_crit_edge

if.end80.i.if.end103.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

land.lhs.true90.i:                                ; preds = %if.end80.i
  %rxchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %80 = ptrtoint ptr %rxchainmask.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rxchainmask.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp92.i = icmp eq i8 %81, 2
  br i1 %cmp92.i, label %if.then94.i, label %land.lhs.true90.i.if.end103.i_crit_edge

land.lhs.true90.i.if.end103.i_crit_edge:          ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

if.then94.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %arrayidx.i.i, align 1
  %84 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmw31.i, align 4
  %86 = and i16 %83, -241
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #11
  %and101.i = zext i16 %87 to i32
  %call102.i = tail call i32 %85(ptr noundef %ah, i32 noundef 41604, i32 noundef %and101.i, i32 noundef 4095) #11
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then94.i, %land.lhs.true90.i.if.end103.i_crit_edge, %if.end80.i.if.end103.i_crit_edge
  %rxchainmask106.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %txchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %88 = ptrtoint ptr %rxchainmask106.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rxchainmask106.i, align 1
  %90 = and i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool110.not.i = icmp eq i8 %90, 0
  br i1 %tobool110.not.i, label %lor.lhs.false111.i, label %if.end103.i.if.then116.i_crit_edge

if.end103.i.if.then116.i_crit_edge:               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116.i

lor.lhs.false111.i:                               ; preds = %if.end103.i
  %91 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %txchainmask.i, align 4
  %93 = and i8 %92, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool115.not.i = icmp eq i8 %93, 0
  br i1 %tobool115.not.i, label %lor.lhs.false111.i.for.inc.i_crit_edge, label %lor.lhs.false111.i.if.then116.i_crit_edge

lor.lhs.false111.i.if.then116.i_crit_edge:        ; preds = %lor.lhs.false111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116.i

lor.lhs.false111.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then116.i:                                     ; preds = %lor.lhs.false111.i.if.then116.i_crit_edge, %if.end103.i.if.then116.i_crit_edge
  %arrayidx.i353.i = getelementptr %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 2, i32 0
  %94 = ptrtoint ptr %arrayidx.i353.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %arrayidx.i353.i, align 1
  %96 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmw31.i, align 4
  %98 = and i16 %95, -241
  %99 = tail call i16 @llvm.bswap.i16(i16 %98) #11
  %and123.i = zext i16 %99 to i32
  %call124.i = tail call i32 %97(ptr noundef %ah, i32 noundef 41604, i32 noundef %and123.i, i32 noundef 4095) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then116.i, %lor.lhs.false111.i.for.inc.i_crit_edge
  %100 = ptrtoint ptr %rxchainmask106.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %rxchainmask106.i, align 1
  %102 = and i8 %101, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool110.not.1.i = icmp eq i8 %102, 0
  br i1 %tobool110.not.1.i, label %lor.lhs.false111.1.i, label %for.inc.i.if.then116.1.i_crit_edge

for.inc.i.if.then116.1.i_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116.1.i

lor.lhs.false111.1.i:                             ; preds = %for.inc.i
  %103 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %txchainmask.i, align 4
  %105 = and i8 %104, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool115.not.1.i = icmp eq i8 %105, 0
  br i1 %tobool115.not.1.i, label %lor.lhs.false111.1.i.for.inc.1.i_crit_edge, label %lor.lhs.false111.1.i.if.then116.1.i_crit_edge

lor.lhs.false111.1.i.if.then116.1.i_crit_edge:    ; preds = %lor.lhs.false111.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116.1.i

lor.lhs.false111.1.i.for.inc.1.i_crit_edge:       ; preds = %lor.lhs.false111.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.then116.1.i:                                   ; preds = %lor.lhs.false111.1.i.if.then116.1.i_crit_edge, %for.inc.i.if.then116.1.i_crit_edge
  %arrayidx.i353.1.i = getelementptr %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %arrayidx.i353.1.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %arrayidx.i353.1.i, align 1
  %108 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmw31.i, align 4
  %110 = and i16 %107, -241
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #11
  %and123.1.i = zext i16 %111 to i32
  %call124.1.i = tail call i32 %109(ptr noundef %ah, i32 noundef 45700, i32 noundef %and123.1.i, i32 noundef 4095) #11
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then116.1.i, %lor.lhs.false111.1.i.for.inc.1.i_crit_edge
  %112 = ptrtoint ptr %rxchainmask106.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %rxchainmask106.i, align 1
  %114 = and i8 %113, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool110.not.2.i = icmp eq i8 %114, 0
  br i1 %tobool110.not.2.i, label %lor.lhs.false111.2.i, label %for.inc.1.i.if.then116.2.i_crit_edge

for.inc.1.i.if.then116.2.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116.2.i

lor.lhs.false111.2.i:                             ; preds = %for.inc.1.i
  %115 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %txchainmask.i, align 4
  %117 = and i8 %116, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool115.not.2.i = icmp eq i8 %117, 0
  br i1 %tobool115.not.2.i, label %lor.lhs.false111.2.i.for.inc.2.i_crit_edge, label %lor.lhs.false111.2.i.if.then116.2.i_crit_edge

lor.lhs.false111.2.i.if.then116.2.i_crit_edge:    ; preds = %lor.lhs.false111.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116.2.i

lor.lhs.false111.2.i.for.inc.2.i_crit_edge:       ; preds = %lor.lhs.false111.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.then116.2.i:                                   ; preds = %lor.lhs.false111.2.i.if.then116.2.i_crit_edge, %for.inc.1.i.if.then116.2.i_crit_edge
  %arrayidx.i353.2.i = getelementptr %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 2, i32 2
  %118 = ptrtoint ptr %arrayidx.i353.2.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %arrayidx.i353.2.i, align 1
  %120 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmw31.i, align 4
  %122 = and i16 %119, -241
  %123 = tail call i16 @llvm.bswap.i16(i16 %122) #11
  %and123.2.i = zext i16 %123 to i32
  %call124.2.i = tail call i32 %121(ptr noundef %ah, i32 noundef 49796, i32 noundef %and123.2.i, i32 noundef 4095) #11
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then116.2.i, %lor.lhs.false111.2.i.for.inc.2.i_crit_edge
  %124 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %macVersion.i44, align 4
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %125, label %for.inc.2.i.ar9003_hw_ant_ctrl_apply.exit_crit_edge [
    i32 704, label %for.inc.2.i.ath9k_hw_ar9300_get_eeprom.exit.i_crit_edge
    i32 512, label %for.inc.2.i.if.else.i.i_crit_edge
    i32 576, label %for.inc.2.i.if.else.i.i_crit_edge201
  ]

for.inc.2.i.if.else.i.i_crit_edge201:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

for.inc.2.i.if.else.i.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

for.inc.2.i.ath9k_hw_ar9300_get_eeprom.exit.i_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath9k_hw_ar9300_get_eeprom.exit.i

for.inc.2.i.ar9003_hw_ant_ctrl_apply.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_ant_ctrl_apply.exit

if.else.i.i:                                      ; preds = %for.inc.2.i.if.else.i.i_crit_edge, %for.inc.2.i.if.else.i.i_crit_edge201
  %base_ext1.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 60
  %127 = ptrtoint ptr %base_ext1.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %base_ext1.i.i, align 1
  %conv36.i.i = zext i8 %128 to i32
  br label %ath9k_hw_ar9300_get_eeprom.exit.i

ath9k_hw_ar9300_get_eeprom.exit.i:                ; preds = %if.else.i.i, %for.inc.2.i.ath9k_hw_ar9300_get_eeprom.exit.i_crit_edge
  %retval.0.i.i51 = phi i32 [ %conv36.i.i, %if.else.i.i ], [ 201, %for.inc.2.i.ath9k_hw_ar9300_get_eeprom.exit.i_crit_edge ]
  %129 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ah, align 4
  %call143.i = tail call i32 %130(ptr noundef %ah, i32 noundef 40488) #11
  %and144.i = and i32 %call143.i, -2130706433
  %and145.i = shl i32 %retval.0.i.i51, 25
  %shl146.i = and i32 %and145.i, 2113929216
  %or147.i = or i32 %and144.i, %shl146.i
  %131 = shl nuw nsw i32 %retval.0.i.i51, 18
  %shl150.i = and i32 %131, 16777216
  %or151.i = or i32 %or147.i, %shl150.i
  %132 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %macVersion.i44, align 4
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %133, label %ath9k_hw_ar9300_get_eeprom.exit.i.if.end188.i_crit_edge [
    i32 576, label %if.end162.thread.i
    i32 704, label %if.then167.i
  ]

ath9k_hw_ar9300_get_eeprom.exit.i.if.end188.i_crit_edge: ; preds = %ath9k_hw_ar9300_get_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188.i

if.end162.thread.i:                               ; preds = %ath9k_hw_ar9300_get_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %bt_ant_diversity157.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 29
  %135 = ptrtoint ptr %bt_ant_diversity157.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %bt_ant_diversity157.i, align 2, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool158.not.i = icmp eq i8 %136, 0
  %or161.i = or i32 %or147.i, 16777216
  %spec.select.i = select i1 %tobool158.not.i, i32 %or151.i, i32 %or161.i
  br label %if.end188.i

if.then167.i:                                     ; preds = %ath9k_hw_ar9300_get_eeprom.exit.i
  %bt_ant_diversity168.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 29
  %137 = ptrtoint ptr %bt_ant_diversity168.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %bt_ant_diversity168.i, align 2, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool169.not.i = icmp eq i8 %138, 0
  br i1 %tobool169.not.i, label %if.else178.i, label %if.then170.i

if.then170.i:                                     ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #13
  %or171.i = or i32 %or151.i, 8388608
  %139 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rmw31.i, align 4
  %call174.i = tail call i32 %140(ptr noundef %ah, i32 noundef 40484, i32 noundef 2097152, i32 noundef 0) #11
  %141 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rmw31.i, align 4
  %call177.i = tail call i32 %142(ptr noundef %ah, i32 noundef 6756, i32 noundef 32768, i32 noundef 0) #11
  br label %if.end188.i

if.else178.i:                                     ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #13
  %and180.i = and i32 %or147.i, -25165825
  %143 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmw31.i, align 4
  %call183.i = tail call i32 %144(ptr noundef %ah, i32 noundef 40488, i32 noundef 0, i32 noundef 8388608) #11
  %145 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rmw31.i, align 4
  %call186.i = tail call i32 %146(ptr noundef %ah, i32 noundef 6756, i32 noundef 0, i32 noundef 32768) #11
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else178.i, %if.then170.i, %if.end162.thread.i, %ath9k_hw_ar9300_get_eeprom.exit.i.if.end188.i_crit_edge
  %regval.1.i = phi i32 [ %or171.i, %if.then170.i ], [ %and180.i, %if.else178.i ], [ %spec.select.i, %if.end162.thread.i ], [ %or151.i, %ath9k_hw_ar9300_get_eeprom.exit.i.if.end188.i_crit_edge ]
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %147 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write.i, align 4
  tail call void %148(ptr noundef %ah, i32 noundef %regval.1.i, i32 noundef 40488) #11
  %149 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ah, align 4
  %call192.i = tail call i32 %150(ptr noundef %ah, i32 noundef 40896) #11
  %and193.i = and i32 %call192.i, -8193
  %151 = shl nuw nsw i32 %retval.0.i.i51, 6
  %shl196.i = and i32 %151, 8192
  %or197.i = or i32 %and193.i, %shl196.i
  %152 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %macVersion.i44, align 4
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %153, label %if.end188.i.if.end213.i_crit_edge [
    i32 576, label %if.end188.i.land.lhs.true207.i_crit_edge
    i32 704, label %if.end188.i.land.lhs.true207.i_crit_edge202
  ]

if.end188.i.land.lhs.true207.i_crit_edge202:      ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true207.i

if.end188.i.land.lhs.true207.i_crit_edge:         ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true207.i

if.end188.i.if.end213.i_crit_edge:                ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end213.i

land.lhs.true207.i:                               ; preds = %if.end188.i.land.lhs.true207.i_crit_edge, %if.end188.i.land.lhs.true207.i_crit_edge202
  %bt_ant_diversity208.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 29
  %155 = ptrtoint ptr %bt_ant_diversity208.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %bt_ant_diversity208.i, align 2, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool209.not.i = icmp eq i8 %156, 0
  %or212.i = or i32 %call192.i, 8192
  %spec.select340.i = select i1 %tobool209.not.i, i32 %or197.i, i32 %or212.i
  br label %if.end213.i

if.end213.i:                                      ; preds = %land.lhs.true207.i, %if.end188.i.if.end213.i_crit_edge
  %regval.2.i = phi i32 [ %or197.i, %if.end188.i.if.end213.i_crit_edge ], [ %spec.select340.i, %land.lhs.true207.i ]
  %157 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write.i, align 4
  tail call void %158(ptr noundef %ah, i32 noundef %regval.2.i, i32 noundef 40896) #11
  %159 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %caps.i, align 4
  %and216.i = and i32 %160, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216.i)
  %tobool217.not.i = icmp eq i32 %and216.i, 0
  br i1 %tobool217.not.i, label %if.end213.i.ar9003_hw_ant_ctrl_apply.exit_crit_edge, label %if.then218.i

if.end213.i.ar9003_hw_ant_ctrl_apply.exit_crit_edge: ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_ant_ctrl_apply.exit

if.then218.i:                                     ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ah, align 4
  %call221.i = tail call i32 %162(ptr noundef %ah, i32 noundef 40488) #11
  %and222.i = and i32 %call221.i, -2113929217
  %or224.i = or i32 %and222.i, 301989888
  %163 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write.i, align 4
  tail call void %164(ptr noundef %ah, i32 noundef %or224.i, i32 noundef 40488) #11
  br label %ar9003_hw_ant_ctrl_apply.exit

ar9003_hw_ant_ctrl_apply.exit:                    ; preds = %if.then218.i, %if.end213.i.ar9003_hw_ant_ctrl_apply.exit_crit_edge, %for.inc.2.i.ar9003_hw_ant_ctrl_apply.exit_crit_edge
  %miscConfiguration.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26
  %165 = ptrtoint ptr %miscConfiguration.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %miscConfiguration.i, align 1
  %167 = and i8 %166, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i52 = icmp eq i8 %167, 0
  br i1 %tobool.not.i52, label %ar9003_hw_ant_ctrl_apply.exit.ar9003_hw_drive_strength_apply.exit_crit_edge, label %if.end.i54

ar9003_hw_ant_ctrl_apply.exit.ar9003_hw_drive_strength_apply.exit_crit_edge: ; preds = %ar9003_hw_ant_ctrl_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_drive_strength_apply.exit

if.end.i54:                                       ; preds = %ar9003_hw_ant_ctrl_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 %169(ptr noundef %ah, i32 noundef 90304) #11
  %and1.i = and i32 %call.i, -16777153
  %or6.i = or i32 %and1.i, 11983680
  %write.i53 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %170 = ptrtoint ptr %write.i53 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write.i53, align 4
  tail call void %171(ptr noundef %ah, i32 noundef %or6.i, i32 noundef 90304) #11
  %172 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ah, align 4
  %call10.i = tail call i32 %173(ptr noundef %ah, i32 noundef 90308) #11
  %and11.i = and i32 %call10.i, 31
  %or20.i = or i32 %and11.i, -1227133536
  %174 = ptrtoint ptr %write.i53 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write.i53, align 4
  tail call void %175(ptr noundef %ah, i32 noundef %or20.i, i32 noundef 90308) #11
  %176 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ah, align 4
  %call25.i = tail call i32 %177(ptr noundef %ah, i32 noundef 90316) #11
  %and26.i = and i32 %call25.i, 8388607
  %or29.i = or i32 %and26.i, -1233125376
  %178 = ptrtoint ptr %write.i53 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write.i53, align 4
  tail call void %179(ptr noundef %ah, i32 noundef %or29.i, i32 noundef 90316) #11
  br label %ar9003_hw_drive_strength_apply.exit

ar9003_hw_drive_strength_apply.exit:              ; preds = %if.end.i54, %ar9003_hw_ant_ctrl_apply.exit.ar9003_hw_drive_strength_apply.exit_crit_edge
  %180 = ptrtoint ptr %miscConfiguration.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %miscConfiguration.i, align 1
  %182 = and i8 %181, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.not.i56 = icmp eq i8 %182, 0
  br i1 %tobool.not.i56, label %ar9003_hw_drive_strength_apply.exit.ar9003_hw_xlna_bias_strength_apply.exitthread-pre-split_crit_edge, label %if.end.i59

ar9003_hw_drive_strength_apply.exit.ar9003_hw_xlna_bias_strength_apply.exitthread-pre-split_crit_edge: ; preds = %ar9003_hw_drive_strength_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_xlna_bias_strength_apply.exitthread-pre-split

if.end.i59:                                       ; preds = %ar9003_hw_drive_strength_apply.exit
  %183 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %macVersion.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %184)
  %cmp.i58 = icmp eq i32 %184, 448
  br i1 %cmp.i58, label %if.end3.i, label %if.end.i59.ar9003_hw_xlna_bias_strength_apply.exit_crit_edge

if.end.i59.ar9003_hw_xlna_bias_strength_apply.exit_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_xlna_bias_strength_apply.exit

if.end3.i:                                        ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  %xlna_bias_strength.i = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 25
  %185 = ptrtoint ptr %xlna_bias_strength.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %xlna_bias_strength.i, align 1
  %187 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %rmw31.i, align 4
  %conv5.i = zext i8 %186 to i32
  %shl.i64 = shl i32 %conv5.i, 30
  %call8.i = tail call i32 %188(ptr noundef %ah, i32 noundef 90380, i32 noundef %shl.i64, i32 noundef -1073741824) #11
  %189 = lshr i8 %186, 2
  %190 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rmw31.i, align 4
  %conv13.i = zext i8 %189 to i32
  %shl15.i = shl i32 %conv13.i, 30
  %call17.i = tail call i32 %191(ptr noundef %ah, i32 noundef 91404, i32 noundef %shl15.i, i32 noundef -1073741824) #11
  %192 = lshr i8 %186, 4
  %193 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rmw31.i, align 4
  %and24.i = zext i8 %192 to i32
  %shl25.i = shl i32 %and24.i, 30
  %call27.i = tail call i32 %194(ptr noundef %ah, i32 noundef 92428, i32 noundef %shl25.i, i32 noundef -1073741824) #11
  br label %ar9003_hw_xlna_bias_strength_apply.exitthread-pre-split

ar9003_hw_xlna_bias_strength_apply.exitthread-pre-split: ; preds = %if.end3.i, %ar9003_hw_drive_strength_apply.exit.ar9003_hw_xlna_bias_strength_apply.exitthread-pre-split_crit_edge
  %195 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pr = load i32, ptr %macVersion.i44, align 4
  br label %ar9003_hw_xlna_bias_strength_apply.exit

ar9003_hw_xlna_bias_strength_apply.exit:          ; preds = %ar9003_hw_xlna_bias_strength_apply.exitthread-pre-split, %if.end.i59.ar9003_hw_xlna_bias_strength_apply.exit_crit_edge
  %196 = phi i32 [ %.pr, %ar9003_hw_xlna_bias_strength_apply.exitthread-pre-split ], [ %184, %if.end.i59.ar9003_hw_xlna_bias_strength_apply.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %196)
  %cmp.i66 = icmp eq i32 %196, 640
  br i1 %cmp.i66, label %land.lhs.true.i68, label %ar9003_hw_xlna_bias_strength_apply.exit.if.end.i76_crit_edge

ar9003_hw_xlna_bias_strength_apply.exit.if.end.i76_crit_edge: ; preds = %ar9003_hw_xlna_bias_strength_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i76

land.lhs.true.i68:                                ; preds = %ar9003_hw_xlna_bias_strength_apply.exit
  %197 = ptrtoint ptr %rxchainmask106.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %rxchainmask106.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %198)
  %cmp1.i = icmp eq i8 %198, 2
  br i1 %cmp1.i, label %if.then.i73, label %land.lhs.true.i68.if.end.i76_crit_edge

land.lhs.true.i68.if.end.i76_crit_edge:           ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i76

if.then.i73:                                      ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #13
  %call.i69 = tail call fastcc zeroext i16 @ar9003_hw_atten_chain_get(ptr noundef %ah, i32 noundef 1, ptr noundef %chan) #11
  %199 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rmw31.i, align 4
  %201 = and i16 %call.i69, 63
  %and.i71 = zext i16 %201 to i32
  %call4.i = tail call i32 %200(ptr noundef %ah, i32 noundef 40472, i32 noundef %and.i71, i32 noundef 63) #11
  %call5.i = tail call fastcc zeroext i16 @ar9003_hw_atten_chain_get_margin(ptr noundef %ah, i32 noundef 1, ptr noundef %chan) #11
  %202 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmw31.i, align 4
  %conv9.i = zext i16 %call5.i to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 12
  %and11.i72 = and i32 %shl10.i, 126976
  %call12.i = tail call i32 %203(ptr noundef %ah, i32 noundef 40472, i32 noundef %and11.i72, i32 noundef 126976) #11
  br label %if.end.i76

if.end.i76:                                       ; preds = %if.then.i73, %land.lhs.true.i68.if.end.i76_crit_edge, %ar9003_hw_xlna_bias_strength_apply.exit.if.end.i76_crit_edge
  %txrxgain.i.i75 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 5
  %xatten_margin_cfg.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 21
  %alt_mingainidx.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i81.for.body.i_crit_edge, %if.end.i76
  %i.092.i = phi i32 [ 0, %if.end.i76 ], [ %inc.i, %for.inc.i81.for.body.i_crit_edge ]
  %204 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %txchainmask.i, align 4
  %conv15.i = zext i8 %205 to i32
  %shl16.i = shl nuw nsw i32 1, %i.092.i
  %and17.i = and i32 %shl16.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not.i77 = icmp eq i32 %and17.i, 0
  br i1 %tobool.not.i77, label %for.body.i.for.inc.i81_crit_edge, label %if.then18.i

for.body.i.for.inc.i81_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i81

if.then18.i:                                      ; preds = %for.body.i
  %call19.i = tail call fastcc zeroext i16 @ar9003_hw_atten_chain_get(ptr noundef %ah, i32 noundef %i.092.i, ptr noundef %chan) #11
  %206 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rmw31.i, align 4
  %arrayidx22.i = getelementptr [3 x i32], ptr @__const.ar9003_hw_atten_apply.ext_atten_reg, i32 0, i32 %i.092.i
  %208 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx22.i, align 4
  %210 = and i16 %call19.i, 63
  %and25.i = zext i16 %210 to i32
  %call26.i = tail call i32 %207(ptr noundef %ah, i32 noundef %209, i32 noundef %and25.i, i32 noundef 63) #11
  %211 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %macVersion.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %212)
  %cmp29.i = icmp eq i32 %212, 576
  br i1 %cmp29.i, label %land.lhs.true31.i, label %if.then18.i.if.else.i79_crit_edge

if.then18.i.if.else.i79_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i79

land.lhs.true31.i:                                ; preds = %if.then18.i
  %213 = ptrtoint ptr %txrxgain.i.i75 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %txrxgain.i.i75, align 1
  %215 = and i8 %214, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %cmp33.i = icmp eq i8 %215, 0
  br i1 %cmp33.i, label %land.lhs.true35.i, label %land.lhs.true31.i.if.else.i79_crit_edge

land.lhs.true31.i.if.else.i79_crit_edge:          ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i79

land.lhs.true35.i:                                ; preds = %land.lhs.true31.i
  %216 = ptrtoint ptr %xatten_margin_cfg.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %xatten_margin_cfg.i, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool36.not.i = icmp eq i8 %217, 0
  br i1 %tobool36.not.i, label %land.lhs.true35.i.if.else.i79_crit_edge, label %land.lhs.true35.i.if.end40.i_crit_edge

land.lhs.true35.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

land.lhs.true35.i.if.else.i79_crit_edge:          ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i79

if.else.i79:                                      ; preds = %land.lhs.true35.i.if.else.i79_crit_edge, %land.lhs.true31.i.if.else.i79_crit_edge, %if.then18.i.if.else.i79_crit_edge
  %call39.i78 = tail call fastcc zeroext i16 @ar9003_hw_atten_chain_get_margin(ptr noundef %ah, i32 noundef %i.092.i, ptr noundef %chan) #11
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else.i79, %land.lhs.true35.i.if.end40.i_crit_edge
  %value.0.i80 = phi i16 [ %call39.i78, %if.else.i79 ], [ 5, %land.lhs.true35.i.if.end40.i_crit_edge ]
  %218 = ptrtoint ptr %alt_mingainidx.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %alt_mingainidx.i, align 1, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool42.not.i = icmp eq i8 %219, 0
  br i1 %tobool42.not.i, label %if.end40.if.end50_crit_edge.i, label %if.then43.i

if.end40.if.end50_crit_edge.i:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre.i = zext i16 %value.0.i80 to i32
  %.pre95.i = shl nuw nsw i32 %.pre.i, 12
  %.pre96.i = and i32 %.pre95.i, 126976
  br label %if.end50.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  %220 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rmw31.i, align 4
  %conv46.i = zext i16 %value.0.i80 to i32
  %shl47.i = shl nuw nsw i32 %conv46.i, 12
  %and48.i = and i32 %shl47.i, 126976
  %call49.i = tail call i32 %221(ptr noundef %ah, i32 noundef 40472, i32 noundef %and48.i, i32 noundef 126976) #11
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then43.i, %if.end40.if.end50_crit_edge.i
  %and56.pre-phi.i = phi i32 [ %.pre96.i, %if.end40.if.end50_crit_edge.i ], [ %and48.i, %if.then43.i ]
  %222 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rmw31.i, align 4
  %call57.i = tail call i32 %223(ptr noundef %ah, i32 noundef %209, i32 noundef %and56.pre-phi.i, i32 noundef 126976) #11
  br label %for.inc.i81

for.inc.i81:                                      ; preds = %if.end50.i, %for.body.i.for.inc.i81_crit_edge
  %inc.i = add nuw nsw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %ar9003_hw_atten_apply.exit, label %for.inc.i81.for.body.i_crit_edge

for.inc.i81.for.body.i_crit_edge:                 ; preds = %for.inc.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

ar9003_hw_atten_apply.exit:                       ; preds = %for.inc.i81
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %224 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %channel, align 4
  %226 = ptrtoint ptr %miscConfiguration.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %miscConfiguration.i, align 1
  %228 = and i8 %227, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.not.i83 = icmp eq i8 %228, 0
  br i1 %tobool.not.i83, label %ar9003_hw_atten_apply.exit.ar9003_hw_quick_drop_apply.exitthread-pre-split_crit_edge, label %if.end.i85

ar9003_hw_atten_apply.exit.ar9003_hw_quick_drop_apply.exitthread-pre-split_crit_edge: ; preds = %ar9003_hw_atten_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_quick_drop_apply.exitthread-pre-split

if.end.i85:                                       ; preds = %ar9003_hw_atten_apply.exit
  %229 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %macVersion.i44, align 4
  %231 = zext i32 %230 to i64
  call void @__sanitizer_cov_trace_switch(i64 %231, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %230, label %if.end.i85.ar9003_hw_quick_drop_apply.exit_crit_edge [
    i32 448, label %if.end.i85.if.then15.i_crit_edge
    i32 768, label %if.end.i85.if.then15.i_crit_edge203
  ]

if.end.i85.if.then15.i_crit_edge203:              ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end.i85.if.then15.i_crit_edge:                 ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end.i85.ar9003_hw_quick_drop_apply.exit_crit_edge: ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_quick_drop_apply.exit

if.then15.i:                                      ; preds = %if.end.i85.if.then15.i_crit_edge, %if.end.i85.if.then15.i_crit_edge203
  call void @__sanitizer_cov_trace_const_cmp2(i16 4000, i16 %225)
  %cmp17.i = icmp ult i16 %225, 4000
  br i1 %cmp17.i, label %if.then19.i, label %if.else.i86

if.then19.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  %quick_drop20.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 30
  %232 = ptrtoint ptr %quick_drop20.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %quick_drop20.i, align 1
  %conv2153.i = zext i8 %233 to i32
  br label %if.end31.i

if.else.i86:                                      ; preds = %if.then15.i
  %conv16.i = zext i16 %225 to i32
  %base_ext1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 60
  %quick_drop_low.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0, i32 2
  %234 = ptrtoint ptr %quick_drop_low.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %quick_drop_low.i, align 1
  %conv22.i = sext i8 %235 to i32
  %quick_drop23.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 1, i32 2, i32 1
  %236 = ptrtoint ptr %quick_drop23.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %quick_drop23.i, align 1
  %conv24.i = sext i8 %237 to i32
  %quick_drop_high.i = getelementptr inbounds %struct.ar9300_BaseExtension_1, ptr %base_ext1.i, i32 0, i32 5
  %238 = ptrtoint ptr %quick_drop_high.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %quick_drop_high.i, align 1
  %conv27.i = sext i8 %239 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5181, i16 %225)
  %cmp2.i.i = icmp ult i16 %225, 5181
  br i1 %cmp2.i.i, label %for.inc.i.2.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_const_cmp2(i16 5501, i16 %225)
  %cmp2.i.1.i = icmp ult i16 %225, 5501
  br i1 %cmp2.i.1.i, label %if.end10.i.1.i, label %if.then13.i.1.i

if.end10.i.1.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5500, i16 %225)
  %cmp11.i.1.i = icmp eq i16 %225, 5500
  br i1 %cmp11.i.1.i, label %for.inc.i.2.i.thread164, label %if.end10.i.1.i.if.then25.i.i_crit_edge

if.end10.i.1.i.if.then25.i.i_crit_edge:           ; preds = %if.end10.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i.i

for.inc.i.2.i.thread164:                          ; preds = %if.end10.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %240 = add nsw i32 %conv16.i, -5215
  call void @__sanitizer_cov_trace_const_cmp4(i32 285, i32 %240)
  %cmp5.i.2.i148172 = icmp ult i32 %240, 285
  %spec.select153.i150173 = select i1 %cmp5.i.2.i148172, i32 5785, i32 5500
  %spec.select154.i151174 = select i1 %cmp5.i.2.i148172, i32 %conv27.i, i32 %conv24.i
  br label %if.then25.i.i

if.then13.i.1.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5786, i16 %225)
  %cmp2.i.2.i = icmp ult i16 %225, 5786
  br i1 %cmp2.i.2.i, label %if.then.i.2.i, label %if.then13.i.1.i.if.then13.i.2.i_crit_edge

if.then13.i.1.i.if.then13.i.2.i_crit_edge:        ; preds = %if.then13.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.2.i

if.then.i.2.i:                                    ; preds = %if.then13.i.1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5785, i16 %225)
  %cmp11.i.2.i = icmp eq i16 %225, 5785
  br i1 %cmp11.i.2.i, label %if.then.i.2.i.if.then13.i.2.i_crit_edge, label %if.then.i.2.i.if.then25.i.i_crit_edge

if.then.i.2.i.if.then25.i.i_crit_edge:            ; preds = %if.then.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i.i

if.then.i.2.i.if.then13.i.2.i_crit_edge:          ; preds = %if.then.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.2.i

if.then13.i.2.i:                                  ; preds = %if.then.i.2.i.if.then13.i.2.i_crit_edge, %if.then13.i.1.i.if.then13.i.2.i_crit_edge
  %hy.174.i.2.i = phi i32 [ %conv27.i, %if.then.i.2.i.if.then13.i.2.i_crit_edge ], [ 0, %if.then13.i.1.i.if.then13.i.2.i_crit_edge ]
  %hx.172.i.2.i = phi i32 [ 5785, %if.then.i.2.i.if.then13.i.2.i_crit_edge ], [ 0, %if.then13.i.1.i.if.then13.i.2.i_crit_edge ]
  %241 = xor i1 %cmp2.i.2.i, true
  br label %if.then25.i.i

for.inc.i.2.i:                                    ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_const_cmp2(i16 5180, i16 %225)
  %cmp11.i.i = icmp eq i16 %225, 5180
  %conv22..i = select i1 %cmp11.i.i, i32 %conv22.i, i32 0
  %.150.i = select i1 %cmp11.i.i, i32 5180, i32 0
  br i1 %cmp11.i.i, label %for.inc.i.2.i.if.then25.i.i_crit_edge, label %for.inc.i.2.i.if.end31.i_crit_edge

for.inc.i.2.i.if.end31.i_crit_edge:               ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

for.inc.i.2.i.if.then25.i.i_crit_edge:            ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i.i

if.then25.i.i:                                    ; preds = %for.inc.i.2.i.if.then25.i.i_crit_edge, %if.then13.i.2.i, %if.then.i.2.i.if.then25.i.i_crit_edge, %for.inc.i.2.i.thread164, %if.end10.i.1.i.if.then25.i.i_crit_edge
  %tobool35.not.i149.i = phi i1 [ %241, %if.then13.i.2.i ], [ false, %for.inc.i.2.i.if.then25.i.i_crit_edge ], [ false, %for.inc.i.2.i.thread164 ], [ false, %if.then.i.2.i.if.then25.i.i_crit_edge ], [ false, %if.end10.i.1.i.if.then25.i.i_crit_edge ]
  %ly.1.i.2148.i = phi i32 [ %conv27.i, %if.then13.i.2.i ], [ %conv22..i, %for.inc.i.2.i.if.then25.i.i_crit_edge ], [ %conv24.i, %for.inc.i.2.i.thread164 ], [ %conv24.i, %if.then.i.2.i.if.then25.i.i_crit_edge ], [ %conv22.i, %if.end10.i.1.i.if.then25.i.i_crit_edge ]
  %lx.1.i.2147.i = phi i32 [ 5785, %if.then13.i.2.i ], [ %.150.i, %for.inc.i.2.i.if.then25.i.i_crit_edge ], [ 5500, %for.inc.i.2.i.thread164 ], [ 5500, %if.then.i.2.i.if.then25.i.i_crit_edge ], [ 5180, %if.end10.i.1.i.if.then25.i.i_crit_edge ]
  %hx.171.i.2146.i = phi i32 [ %hx.172.i.2.i, %if.then13.i.2.i ], [ 5180, %for.inc.i.2.i.if.then25.i.i_crit_edge ], [ %spec.select153.i150173, %for.inc.i.2.i.thread164 ], [ 5785, %if.then.i.2.i.if.then25.i.i_crit_edge ], [ 5500, %if.end10.i.1.i.if.then25.i.i_crit_edge ]
  %hy.173.i.2145.i = phi i32 [ %hy.174.i.2.i, %if.then13.i.2.i ], [ %conv22.i, %for.inc.i.2.i.if.then25.i.i_crit_edge ], [ %spec.select154.i151174, %for.inc.i.2.i.thread164 ], [ %conv27.i, %if.then.i.2.i.if.then25.i.i_crit_edge ], [ %conv24.i, %if.end10.i.1.i.if.then25.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.2146.i, i32 %lx.1.i.2147.i)
  %cmp28.i.i = icmp eq i32 %hx.171.i.2146.i, %lx.1.i.2147.i
  %or.cond66.i.i = select i1 %tobool35.not.i149.i, i1 true, i1 %cmp28.i.i
  br i1 %or.cond66.i.i, label %if.then25.i.i.if.end31.i_crit_edge, label %if.else.i.i88

if.then25.i.i.if.end31.i_crit_edge:               ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.else.i.i88:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub nsw i32 %hy.173.i.2145.i, %ly.1.i.2148.i
  %sub1.i.i.i = sub nsw i32 %conv16.i, %lx.1.i.2147.i
  %mul.i.i.i = shl nsw i32 %sub1.i.i.i, 1
  %mul2.i.i.i = mul i32 %mul.i.i.i, %sub.i.i.i
  %sub3.i.i.i = sub nsw i32 %hx.171.i.2146.i, %lx.1.i.2147.i
  %div.i.i.i = sdiv i32 %mul2.i.i.i, %sub3.i.i.i
  %div.i.i.i.frozen = freeze i32 %div.i.i.i
  %div4.i.i.i = sdiv i32 %div.i.i.i.frozen, 2
  %242 = mul i32 %div4.i.i.i, 2
  %rem.i.i.i.decomposed = sub i32 %div.i.i.i.frozen, %242
  %add.i.i.i = add nsw i32 %div4.i.i.i, %ly.1.i.2148.i
  %add5.i.i.i = add nsw i32 %add.i.i.i, %rem.i.i.i.decomposed
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i.i88, %if.then25.i.i.if.end31.i_crit_edge, %for.inc.i.2.i.if.end31.i_crit_edge, %if.then19.i
  %quick_drop.0.i = phi i32 [ %conv2153.i, %if.then19.i ], [ %add5.i.i.i, %if.else.i.i88 ], [ %ly.1.i.2148.i, %if.then25.i.i.if.end31.i_crit_edge ], [ %conv22.i, %for.inc.i.2.i.if.end31.i_crit_edge ]
  %243 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %rmw31.i, align 4
  %shl.i90 = shl i32 %quick_drop.0.i, 22
  %and32.i = and i32 %shl.i90, 62914560
  %call33.i91 = tail call i32 %244(ptr noundef %ah, i32 noundef 40468, i32 noundef %and32.i, i32 noundef 62914560) #11
  br label %ar9003_hw_quick_drop_apply.exitthread-pre-split

ar9003_hw_quick_drop_apply.exitthread-pre-split:  ; preds = %if.end31.i, %ar9003_hw_atten_apply.exit.ar9003_hw_quick_drop_apply.exitthread-pre-split_crit_edge
  %245 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %245)
  %.pr139 = load i32, ptr %macVersion.i44, align 4
  br label %ar9003_hw_quick_drop_apply.exit

ar9003_hw_quick_drop_apply.exit:                  ; preds = %ar9003_hw_quick_drop_apply.exitthread-pre-split, %if.end.i85.ar9003_hw_quick_drop_apply.exit_crit_edge
  %246 = phi i32 [ %.pr139, %ar9003_hw_quick_drop_apply.exitthread-pre-split ], [ %230, %if.end.i85.ar9003_hw_quick_drop_apply.exit_crit_edge ]
  %247 = zext i32 %246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %246, label %if.then [
    i32 512, label %ar9003_hw_quick_drop_apply.exit.if.end_crit_edge
    i32 768, label %ar9003_hw_quick_drop_apply.exit.if.end_crit_edge204
    i32 1280, label %ar9003_hw_quick_drop_apply.exit.if.end_crit_edge205
  ]

ar9003_hw_quick_drop_apply.exit.if.end_crit_edge205: ; preds = %ar9003_hw_quick_drop_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

ar9003_hw_quick_drop_apply.exit.if.end_crit_edge204: ; preds = %ar9003_hw_quick_drop_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

ar9003_hw_quick_drop_apply.exit.if.end_crit_edge: ; preds = %ar9003_hw_quick_drop_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %ar9003_hw_quick_drop_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ar9003_hw_internal_regulator_apply(ptr noundef %ah)
  br label %if.end

if.end:                                           ; preds = %if.then, %ar9003_hw_quick_drop_apply.exit.if.end_crit_edge, %ar9003_hw_quick_drop_apply.exit.if.end_crit_edge204, %ar9003_hw_quick_drop_apply.exit.if.end_crit_edge205
  %params_for_tuning_caps.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 23
  %248 = ptrtoint ptr %params_for_tuning_caps.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %params_for_tuning_caps.i, align 1
  %250 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %macVersion.i44, align 4
  %252 = zext i32 %251 to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %251, label %if.end.i95 [
    i32 768, label %if.end.ar9003_hw_apply_tuning_caps.exit_crit_edge
    i32 1280, label %if.end.ar9003_hw_apply_tuning_caps.exit_crit_edge206
  ]

if.end.ar9003_hw_apply_tuning_caps.exit_crit_edge206: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_apply_tuning_caps.exit

if.end.ar9003_hw_apply_tuning_caps.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_apply_tuning_caps.exit

if.end.i95:                                       ; preds = %if.end
  %253 = ptrtoint ptr %featureEnable.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %featureEnable.i, align 1
  %255 = and i8 %254, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool.not.i94 = icmp eq i8 %255, 0
  br i1 %tobool.not.i94, label %if.end.i95.ar9003_hw_apply_tuning_caps.exit_crit_edge, label %if.then5.i

if.end.i95.ar9003_hw_apply_tuning_caps.exit_crit_edge: ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_apply_tuning_caps.exit

if.then5.i:                                       ; preds = %if.end.i95
  %256 = and i8 %249, 127
  %257 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rmw31.i, align 4
  %259 = zext i32 %251 to i64
  call void @__sanitizer_cov_trace_switch(i64 %259, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %251, label %cond.false23.i [
    i32 448, label %if.then5.i.cond.end29.i_crit_edge
    i32 640, label %cond.end29.fold.split.i
    i32 704, label %cond.end29.fold.split85.i
  ]

if.then5.i.cond.end29.i_crit_edge:                ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end29.i

cond.false23.i:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %251)
  %cmp26.i = icmp eq i32 %251, 1536
  %cond.i97 = select i1 %cmp26.i, i32 90816, i32 90768
  br label %cond.end29.i

cond.end29.fold.split.i:                          ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end29.i

cond.end29.fold.split85.i:                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.end29.fold.split85.i, %cond.end29.fold.split.i, %cond.false23.i, %if.then5.i.cond.end29.i_crit_edge
  %cond30.i = phi i32 [ 90772, %if.then5.i.cond.end29.i_crit_edge ], [ %cond.i97, %cond.false23.i ], [ 90776, %cond.end29.fold.split.i ], [ 90776, %cond.end29.fold.split85.i ]
  %conv31.i98 = zext i8 %256 to i32
  %shl.i99 = shl nuw nsw i32 %conv31.i98, 24
  %call.i100 = tail call i32 %258(ptr noundef %ah, i32 noundef %cond30.i, i32 noundef %shl.i99, i32 noundef 2130706432) #11
  %260 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %rmw31.i, align 4
  %262 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %macVersion.i44, align 4
  %264 = zext i32 %263 to i64
  call void @__sanitizer_cov_trace_switch(i64 %264, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %263, label %cond.false51.i [
    i32 448, label %cond.end29.i.cond.end59.i_crit_edge
    i32 640, label %cond.end59.fold.split.i
    i32 704, label %cond.end59.fold.split86.i
  ]

cond.end29.i.cond.end59.i_crit_edge:              ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end59.i

cond.false51.i:                                   ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %263)
  %cmp54.i = icmp eq i32 %263, 1536
  %cond56.i = select i1 %cmp54.i, i32 90816, i32 90768
  br label %cond.end59.i

cond.end59.fold.split.i:                          ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end59.i

cond.end59.fold.split86.i:                        ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end59.i

cond.end59.i:                                     ; preds = %cond.end59.fold.split86.i, %cond.end59.fold.split.i, %cond.false51.i, %cond.end29.i.cond.end59.i_crit_edge
  %cond60.i = phi i32 [ 90772, %cond.end29.i.cond.end59.i_crit_edge ], [ %cond56.i, %cond.false51.i ], [ 90776, %cond.end59.fold.split.i ], [ 90776, %cond.end59.fold.split86.i ]
  %shl62.i = shl nuw nsw i32 %conv31.i98, 17
  %call64.i = tail call i32 %261(ptr noundef %ah, i32 noundef %cond60.i, i32 noundef %shl62.i, i32 noundef 16646144) #11
  br label %ar9003_hw_apply_tuning_caps.exit

ar9003_hw_apply_tuning_caps.exit:                 ; preds = %cond.end59.i, %if.end.i95.ar9003_hw_apply_tuning_caps.exit_crit_edge, %if.end.ar9003_hw_apply_tuning_caps.exit_crit_edge, %if.end.ar9003_hw_apply_tuning_caps.exit_crit_edge206
  %misc_enable.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 63
  %265 = ptrtoint ptr %misc_enable.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %misc_enable.i, align 1
  br i1 %tobool.not, label %if.then.i101, label %if.else.i102

if.then.i101:                                     ; preds = %ar9003_hw_apply_tuning_caps.exit
  %267 = and i8 %266, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool1.not.i = icmp eq i8 %267, 0
  br i1 %tobool1.not.i, label %if.then.i101.ar9003_hw_apply_minccapwr_thresh.exit_crit_edge, label %if.then.i101.if.end10.i_crit_edge

if.then.i101.if.end10.i_crit_edge:                ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then.i101.ar9003_hw_apply_minccapwr_thresh.exit_crit_edge: ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_apply_minccapwr_thresh.exit

if.else.i102:                                     ; preds = %ar9003_hw_apply_tuning_caps.exit
  %268 = and i8 %266, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool7.not.i = icmp eq i8 %268, 0
  br i1 %tobool7.not.i, label %if.else.i102.ar9003_hw_apply_minccapwr_thresh.exit_crit_edge, label %if.else.i102.if.end10.i_crit_edge

if.else.i102.if.end10.i_crit_edge:                ; preds = %if.else.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.else.i102.ar9003_hw_apply_minccapwr_thresh.exit_crit_edge: ; preds = %if.else.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_apply_minccapwr_thresh.exit

if.end10.i:                                       ; preds = %if.else.i102.if.end10.i_crit_edge, %if.then.i101.if.end10.i_crit_edge
  %tx_chainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 2
  %269 = ptrtoint ptr %tx_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %tx_chainmask.i, align 2
  %271 = and i8 %270, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool14.not.i = icmp eq i8 %271, 0
  br i1 %tobool14.not.i, label %if.end10.i.for.inc.i107_crit_edge, label %if.end16.i

if.end10.i.for.inc.i107_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i107

if.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 8, i32 0
  %272 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx.i, align 1
  %conv18.i = sext i8 %273 to i32
  %274 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %rmw31.i, align 4
  %and21.i = and i32 %conv18.i, 511
  %call22.i = tail call i32 %275(ptr noundef %ah, i32 noundef 40480, i32 noundef %and21.i, i32 noundef 511) #11
  br label %for.inc.i107

for.inc.i107:                                     ; preds = %if.end16.i, %if.end10.i.for.inc.i107_crit_edge
  %276 = ptrtoint ptr %tx_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %tx_chainmask.i, align 2
  %278 = and i8 %277, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool14.not.1.i = icmp eq i8 %278, 0
  br i1 %tobool14.not.1.i, label %for.inc.i107.for.inc.1.i108_crit_edge, label %if.end16.1.i

for.inc.i107.for.inc.1.i108_crit_edge:            ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i108

if.end16.1.i:                                     ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.1.i = getelementptr %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 8, i32 1
  %279 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx.1.i, align 1
  %conv18.1.i = sext i8 %280 to i32
  %281 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %rmw31.i, align 4
  %and21.1.i = and i32 %conv18.1.i, 511
  %call22.1.i = tail call i32 %282(ptr noundef %ah, i32 noundef 44576, i32 noundef %and21.1.i, i32 noundef 511) #11
  br label %for.inc.1.i108

for.inc.1.i108:                                   ; preds = %if.end16.1.i, %for.inc.i107.for.inc.1.i108_crit_edge
  %283 = ptrtoint ptr %tx_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %tx_chainmask.i, align 2
  %285 = and i8 %284, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool14.not.2.i = icmp eq i8 %285, 0
  br i1 %tobool14.not.2.i, label %for.inc.1.i108.ar9003_hw_apply_minccapwr_thresh.exit_crit_edge, label %if.end16.2.i

for.inc.1.i108.ar9003_hw_apply_minccapwr_thresh.exit_crit_edge: ; preds = %for.inc.1.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_apply_minccapwr_thresh.exit

if.end16.2.i:                                     ; preds = %for.inc.1.i108
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.2.i = getelementptr %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 8, i32 2
  %286 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx.2.i, align 1
  %conv18.2.i = sext i8 %287 to i32
  %288 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rmw31.i, align 4
  %and21.2.i = and i32 %conv18.2.i, 511
  %call22.2.i = tail call i32 %289(ptr noundef %ah, i32 noundef 48672, i32 noundef %and21.2.i, i32 noundef 511) #11
  br label %ar9003_hw_apply_minccapwr_thresh.exit

ar9003_hw_apply_minccapwr_thresh.exit:            ; preds = %if.end16.2.i, %for.inc.1.i108.ar9003_hw_apply_minccapwr_thresh.exit_crit_edge, %if.else.i102.ar9003_hw_apply_minccapwr_thresh.exit_crit_edge, %if.then.i101.ar9003_hw_apply_minccapwr_thresh.exit_crit_edge
  %txEndToXpaOff.i = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %retval.0.i.i43, i32 0, i32 18
  %290 = ptrtoint ptr %txEndToXpaOff.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %txEndToXpaOff.i, align 1
  %conv.i112 = zext i8 %291 to i32
  %292 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %rmw31.i, align 4
  %shl.i114 = shl nuw i32 %conv.i112, 24
  %call1.i = tail call i32 %293(ptr noundef %ah, i32 noundef 41572, i32 noundef %shl.i114, i32 noundef -16777216) #11
  %294 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %rmw31.i, align 4
  %shl4.i = shl nuw nsw i32 %conv.i112, 16
  %call6.i = tail call i32 %295(ptr noundef %ah, i32 noundef 41572, i32 noundef %shl4.i, i32 noundef 16711680) #11
  %296 = ptrtoint ptr %miscConfiguration.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %miscConfiguration.i, align 1
  %298 = lshr i8 %297, 1
  %299 = and i8 %298, 3
  %and.i.i = zext i8 %299 to i32
  %dec.i.i = add nsw i32 %and.i.i, -1
  %300 = sub nsw i32 0, %and.i.i
  %301 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %rmw31.i, align 4
  %shl.i116 = and i32 %300, 536870912
  %call2.i = tail call i32 %302(ptr noundef %ah, i32 noundef 90380, i32 noundef %shl.i116, i32 noundef 536870912) #11
  %chip_chainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 4
  %303 = ptrtoint ptr %chip_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %chip_chainmask.i, align 4
  %305 = and i8 %304, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool.not.i117 = icmp eq i8 %305, 0
  br i1 %tobool.not.i117, label %ar9003_hw_apply_minccapwr_thresh.exit.if.end.i121_crit_edge, label %if.then.i119

ar9003_hw_apply_minccapwr_thresh.exit.if.end.i121_crit_edge: ; preds = %ar9003_hw_apply_minccapwr_thresh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i121

if.then.i119:                                     ; preds = %ar9003_hw_apply_minccapwr_thresh.exit
  call void @__sanitizer_cov_trace_pc() #13
  %306 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %rmw31.i, align 4
  %call10.i118 = tail call i32 %307(ptr noundef %ah, i32 noundef 91404, i32 noundef %shl.i116, i32 noundef 536870912) #11
  br label %if.end.i121

if.end.i121:                                      ; preds = %if.then.i119, %ar9003_hw_apply_minccapwr_thresh.exit.if.end.i121_crit_edge
  %308 = ptrtoint ptr %chip_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %chip_chainmask.i, align 4
  %310 = and i8 %309, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool14.not.i120 = icmp eq i8 %310, 0
  br i1 %tobool14.not.i120, label %if.end.i121.if.end22.i_crit_edge, label %if.then15.i122

if.end.i121.if.end22.i_crit_edge:                 ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then15.i122:                                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #13
  %311 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %rmw31.i, align 4
  %call21.i = tail call i32 %312(ptr noundef %ah, i32 noundef 92428, i32 noundef %shl.i116, i32 noundef 536870912) #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i122, %if.end.i121.if.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp23.i123 = icmp eq i32 %dec.i.i, 0
  %313 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %rmw31.i, align 4
  %shl29.i = select i1 %cmp23.i123, i32 268435456, i32 0
  %call31.i = tail call i32 %314(ptr noundef %ah, i32 noundef 90380, i32 noundef %shl29.i, i32 noundef 268435456) #11
  %315 = ptrtoint ptr %chip_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %chip_chainmask.i, align 4
  %317 = and i8 %316, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %317)
  %tobool35.not.i = icmp eq i8 %317, 0
  br i1 %tobool35.not.i, label %if.end22.i.if.end46.i_crit_edge, label %if.then36.i

if.end22.i.if.end46.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then36.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %cmp37.i = icmp eq i32 %dec.i.i, 1
  %318 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rmw31.i, align 4
  %shl43.i = select i1 %cmp37.i, i32 268435456, i32 0
  %call45.i = tail call i32 %319(ptr noundef %ah, i32 noundef 91404, i32 noundef %shl43.i, i32 noundef 268435456) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then36.i, %if.end22.i.if.end46.i_crit_edge
  %320 = ptrtoint ptr %chip_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %chip_chainmask.i, align 4
  %322 = and i8 %321, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool50.not.i = icmp eq i8 %322, 0
  br i1 %tobool50.not.i, label %if.end46.i.ar9003_hw_thermometer_apply.exit_crit_edge, label %if.then51.i

if.end46.i.ar9003_hw_thermometer_apply.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_thermometer_apply.exit

if.then51.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec.i.i)
  %cmp52.i = icmp eq i32 %dec.i.i, 2
  %323 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %rmw31.i, align 4
  %shl58.i = select i1 %cmp52.i, i32 268435456, i32 0
  %call60.i = tail call i32 %324(ptr noundef %ah, i32 noundef 92428, i32 noundef %shl58.i, i32 noundef 268435456) #11
  br label %ar9003_hw_thermometer_apply.exit

ar9003_hw_thermometer_apply.exit:                 ; preds = %if.then51.i, %if.end46.i.ar9003_hw_thermometer_apply.exit_crit_edge
  %325 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %macVersion.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %326)
  %cmp.i125 = icmp eq i32 %326, 640
  br i1 %cmp.i125, label %land.lhs.true.i128, label %ar9003_hw_thermometer_apply.exit.ar9003_hw_thermo_cal_apply.exit_crit_edge

ar9003_hw_thermometer_apply.exit.ar9003_hw_thermo_cal_apply.exit_crit_edge: ; preds = %ar9003_hw_thermometer_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_thermo_cal_apply.exit

land.lhs.true.i128:                               ; preds = %ar9003_hw_thermometer_apply.exit
  %macRev.i126 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %327 = ptrtoint ptr %macRev.i126 to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %macRev.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %328)
  %cmp2.i127 = icmp ugt i16 %328, 1
  br i1 %cmp2.i127, label %if.end.i129, label %land.lhs.true.i128.ar9003_hw_thermo_cal_apply.exit_crit_edge

land.lhs.true.i128.ar9003_hw_thermo_cal_apply.exit_crit_edge: ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_thermo_cal_apply.exit

if.end.i129:                                      ; preds = %land.lhs.true.i128
  %329 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ah, align 4
  %call.i.i = tail call i32 %330(ptr noundef %ah, i32 noundef 81924) #11
  %331 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %macVersion.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %332)
  %cmp6.i.i = icmp eq i32 %332, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %332)
  %cmp10.i.i = icmp eq i32 %332, 1024
  %333 = or i1 %cmp6.i.i, %cmp10.i.i
  %334 = select i1 %333, i32 200728, i32 89880
  %call13.i.i = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %334, i32 noundef 7, i32 noundef 4, i32 noundef 1000) #11
  br i1 %call13.i.i, label %if.end.i.i, label %if.end.i129.ar9300_otp_read_word.exit.i_crit_edge

if.end.i129.ar9300_otp_read_word.exit.i_crit_edge: ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9300_otp_read_word.exit.i

if.end.i.i:                                       ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #13
  %335 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ah, align 4
  %337 = ptrtoint ptr %macVersion.i44 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %macVersion.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %338)
  %cmp18.i.i = icmp eq i32 %338, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %338)
  %cmp22.i.i = icmp eq i32 %338, 1024
  %339 = or i1 %cmp18.i.i, %cmp22.i.i
  %340 = select i1 %339, i32 200732, i32 89884
  %call25.i.i = tail call i32 %336(ptr noundef %ah, i32 noundef %340) #11
  br label %ar9300_otp_read_word.exit.i

ar9300_otp_read_word.exit.i:                      ; preds = %if.end.i.i, %if.end.i129.ar9300_otp_read_word.exit.i_crit_edge
  %data.0.i = phi i32 [ %call25.i.i, %if.end.i.i ], [ 0, %if.end.i129.ar9300_otp_read_word.exit.i_crit_edge ]
  %and.i130 = and i32 %data.0.i, 255
  %shr.i = lshr i32 %data.0.i, 8
  %and4.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %tobool.not.i131, i1 %tobool5.not.i, i1 false
  br i1 %or.cond.i, label %ar9300_otp_read_word.exit.i.ar9003_hw_thermo_cal_apply.exit_crit_edge, label %if.then6.i

ar9300_otp_read_word.exit.i.ar9003_hw_thermo_cal_apply.exit_crit_edge: ; preds = %ar9300_otp_read_word.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_thermo_cal_apply.exit

if.then6.i:                                       ; preds = %ar9300_otp_read_word.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %341 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %rmw31.i, align 4
  %call8.i133 = tail call i32 %342(ptr noundef %ah, i32 noundef 42064, i32 noundef %and.i130, i32 noundef 255) #11
  %343 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %rmw31.i, align 4
  %add.i = shl nuw nsw i32 %and4.i, 8
  %shl11.i = or i32 %add.i, 65536
  %call13.i = tail call i32 %344(ptr noundef %ah, i32 noundef 42064, i32 noundef %shl11.i, i32 noundef 130816) #11
  br label %ar9003_hw_thermo_cal_apply.exit

ar9003_hw_thermo_cal_apply.exit:                  ; preds = %if.then6.i, %ar9300_otp_read_word.exit.i.ar9003_hw_thermo_cal_apply.exit_crit_edge, %land.lhs.true.i128.ar9003_hw_thermo_cal_apply.exit_crit_edge, %ar9003_hw_thermometer_apply.exit.ar9003_hw_thermo_cal_apply.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath9k_hw_ar9300_set_addac(ptr nocapture noundef %ah, ptr nocapture noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hw_ar9300_set_txpower(ptr noundef %ah, ptr noundef %chan, i16 noundef zeroext %cfgCtl, i8 noundef zeroext %twiceAntennaReduction, i8 noundef zeroext %powerLimit, i1 noundef zeroext %test) #2 align 64 {
entry:
  %lfrequency.i = alloca [3 x i32], align 4
  %lcorrection.i = alloca [3 x i32], align 4
  %ltemperature.i = alloca [3 x i32], align 4
  %lnf_cal.i = alloca [3 x i32], align 4
  %lnf_pwr.i = alloca [3 x i32], align 4
  %hfrequency.i = alloca [3 x i32], align 4
  %hcorrection.i = alloca [3 x i32], align 4
  %htemperature.i = alloca [3 x i32], align 4
  %hnf_cal.i = alloca [3 x i32], align 4
  %hnf_pwr.i = alloca [3 x i32], align 4
  %correction.i = alloca [3 x i32], align 4
  %temperature.i = alloca [3 x i32], align 4
  %nf_cal.i = alloca [3 x i32], align 4
  %nf_pwr.i = alloca [3 x i32], align 4
  %centers.i = alloca %struct.chan_centers, align 2
  %targetPowerValT2 = alloca [36 x i8], align 1
  %target_power_val_t2_eep = alloca [36 x i8], align 1
  %targetPowerValT2_tpc = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %targetPowerValT2) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %target_power_val_t2_eep) #11
  %0 = call ptr @memset(ptr %target_power_val_t2_eep, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %targetPowerValT2_tpc) #11
  %1 = call ptr @memset(ptr %targetPowerValT2_tpc, i32 255, i32 36)
  %2 = getelementptr inbounds i8, ptr %targetPowerValT2, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %channelFlags.i, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  %channel.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %channel.i, align 4
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %calTargetPowerCck.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 37
  %calTarget_freqbin_Cck.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 31, i32 2
  %9 = ptrtoint ptr %calTarget_freqbin_Cck.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %calTarget_freqbin_Cck.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp.i.i.i.i = icmp eq i8 %10, -1
  %conv.i.i.i.i = zext i8 %10 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 2300
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 255, i32 %add.i.i.i.i
  %11 = ptrtoint ptr %calTargetPowerCck.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %calTargetPowerCck.i.i.i, align 1
  %conv11.i.i.i = zext i8 %12 to i32
  %arrayidx.1.i.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 32
  %13 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp.i.1.i.i.i = icmp eq i8 %14, -1
  %conv.i.1.i.i.i = zext i8 %14 to i32
  %add.i.1.i.i.i = add nuw nsw i32 %conv.i.1.i.i.i, 2300
  %retval.0.i.1.i.i.i = select i1 %cmp.i.1.i.i.i, i32 255, i32 %add.i.1.i.i.i
  %arrayidx8.1.i.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 37, i32 4
  %15 = ptrtoint ptr %arrayidx8.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.1.i.i.i, align 1
  %conv11.1.i.i.i = zext i8 %16 to i32
  %conv14.i.i.i = zext i16 %8 to i32
  %sub.i.i.i.i = sub nsw i32 %conv14.i.i.i, %retval.0.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp2.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 1
  br i1 %cmp2.i.i.i.i, label %if.end10.i.i.i.i, label %if.then.i.if.then19.i.i.i.i_crit_edge

if.then.i.if.then19.i.i.i.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i.i.i

if.end10.i.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i.i)
  %cmp11.i.i.i.i = icmp sgt i32 %sub.i.i.i.i, -1
  br i1 %cmp11.i.i.i.i, label %if.end10.i.i.i.i.if.then19.i.i.i.i_crit_edge, label %if.end10.i.i.i.i.for.inc.i.i.i.i_crit_edge

if.end10.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i.i

if.end10.i.i.i.i.if.then19.i.i.i.i_crit_edge:     ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i.i.i

if.then19.i.i.i.i:                                ; preds = %if.end10.i.i.i.i.if.then19.i.i.i.i_crit_edge, %if.then.i.if.then19.i.i.i.i_crit_edge
  %hhave.176.i.i.i.i = phi i32 [ 1, %if.end10.i.i.i.i.if.then19.i.i.i.i_crit_edge ], [ 0, %if.then.i.if.then19.i.i.i.i_crit_edge ]
  %hy.174.i.i.i.i = phi i32 [ %conv11.i.i.i, %if.end10.i.i.i.i.if.then19.i.i.i.i_crit_edge ], [ 0, %if.then.i.if.then19.i.i.i.i_crit_edge ]
  %hx.172.i.i.i.i = phi i32 [ %retval.0.i.i.i.i, %if.end10.i.i.i.i.if.then19.i.i.i.i_crit_edge ], [ 0, %if.then.i.if.then19.i.i.i.i_crit_edge ]
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then19.i.i.i.i, %if.end10.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %hhave.175.i.i.i.i = phi i32 [ %hhave.176.i.i.i.i, %if.then19.i.i.i.i ], [ 1, %if.end10.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %hy.173.i.i.i.i = phi i32 [ %hy.174.i.i.i.i, %if.then19.i.i.i.i ], [ %conv11.i.i.i, %if.end10.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %hx.171.i.i.i.i = phi i32 [ %hx.172.i.i.i.i, %if.then19.i.i.i.i ], [ %retval.0.i.i.i.i, %if.end10.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %lx.1.i.i.i.i = phi i32 [ %retval.0.i.i.i.i, %if.then19.i.i.i.i ], [ 0, %if.end10.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %ly.1.i.i.i.i = phi i32 [ %conv11.i.i.i, %if.then19.i.i.i.i ], [ 0, %if.end10.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %tobool14.not.i.1.i.i.i = phi i1 [ false, %if.then19.i.i.i.i ], [ true, %if.end10.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %sub.i.1.i.i.i = sub nsw i32 %conv14.i.i.i, %retval.0.i.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.1.i.i.i)
  %cmp2.i.1.i.i.i = icmp slt i32 %sub.i.1.i.i.i, 1
  br i1 %cmp2.i.1.i.i.i, label %if.then.i.1.i.i.i, label %for.inc.i.i.i.i.if.then13.i.1.i.i.i_crit_edge

for.inc.i.i.i.i.if.then13.i.1.i.i.i_crit_edge:    ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1.i.i.i

if.then.i.1.i.i.i:                                ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i.i.i.i)
  %tobool.not.i.1.i.i.i = icmp eq i32 %hhave.175.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.i.i.i, i32 %retval.0.i.1.i.i.i)
  %cmp5.i.1.i.i.i = icmp ugt i32 %hx.171.i.i.i.i, %retval.0.i.1.i.i.i
  %or.cond.i.1.i.i.i = select i1 %tobool.not.i.1.i.i.i, i1 true, i1 %cmp5.i.1.i.i.i
  %spec.select42.i.i.i = select i1 %or.cond.i.1.i.i.i, i32 %retval.0.i.1.i.i.i, i32 %hx.171.i.i.i.i
  %spec.select43.i.i.i = select i1 %or.cond.i.1.i.i.i, i32 %conv11.1.i.i.i, i32 %hy.173.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.1.i.i.i)
  %cmp11.i.1.i.i.i = icmp sgt i32 %sub.i.1.i.i.i, -1
  br i1 %cmp11.i.1.i.i.i, label %if.then.i.1.i.i.i.if.then13.i.1.i.i.i_crit_edge, label %for.inc.i.1.i.i.i

if.then.i.1.i.i.i.if.then13.i.1.i.i.i_crit_edge:  ; preds = %if.then.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1.i.i.i

if.then13.i.1.i.i.i:                              ; preds = %if.then.i.1.i.i.i.if.then13.i.1.i.i.i_crit_edge, %for.inc.i.i.i.i.if.then13.i.1.i.i.i_crit_edge
  %hhave.176.i.1.i.i.i = phi i32 [ 1, %if.then.i.1.i.i.i.if.then13.i.1.i.i.i_crit_edge ], [ %hhave.175.i.i.i.i, %for.inc.i.i.i.i.if.then13.i.1.i.i.i_crit_edge ]
  %hy.174.i.1.i.i.i = phi i32 [ %spec.select43.i.i.i, %if.then.i.1.i.i.i.if.then13.i.1.i.i.i_crit_edge ], [ %hy.173.i.i.i.i, %for.inc.i.i.i.i.if.then13.i.1.i.i.i_crit_edge ]
  %hx.172.i.1.i.i.i = phi i32 [ %spec.select42.i.i.i, %if.then.i.1.i.i.i.if.then13.i.1.i.i.i_crit_edge ], [ %hx.171.i.i.i.i, %for.inc.i.i.i.i.if.then13.i.1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i.i.i.i, i32 %retval.0.i.1.i.i.i)
  %cmp17.i.1.i.i.i = icmp ult i32 %lx.1.i.i.i.i, %retval.0.i.1.i.i.i
  %or.cond65.i.1.i.i.i = select i1 %tobool14.not.i.1.i.i.i, i1 true, i1 %cmp17.i.1.i.i.i
  %spec.select44.i.i.i = select i1 %or.cond65.i.1.i.i.i, i32 %retval.0.i.1.i.i.i, i32 %lx.1.i.i.i.i
  %spec.select45.i.i.i = select i1 %or.cond65.i.1.i.i.i, i32 %conv11.1.i.i.i, i32 %ly.1.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.176.i.1.i.i.i)
  %tobool35.not.i36.i.i.i = icmp eq i32 %hhave.176.i.1.i.i.i, 0
  br label %if.then25.i.i.i.i

for.inc.i.1.i.i.i:                                ; preds = %if.then.i.1.i.i.i
  br i1 %tobool14.not.i.1.i.i.i, label %for.inc.i.1.i.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i_crit_edge, label %for.inc.i.1.i.i.i.if.then25.i.i.i.i_crit_edge

for.inc.i.1.i.i.i.if.then25.i.i.i.i_crit_edge:    ; preds = %for.inc.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i.i.i.i

for.inc.i.1.i.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i_crit_edge: ; preds = %for.inc.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i

if.then25.i.i.i.i:                                ; preds = %for.inc.i.1.i.i.i.if.then25.i.i.i.i_crit_edge, %if.then13.i.1.i.i.i
  %tobool35.not.i41.i.i.i = phi i1 [ %tobool35.not.i36.i.i.i, %if.then13.i.1.i.i.i ], [ false, %for.inc.i.1.i.i.i.if.then25.i.i.i.i_crit_edge ]
  %ly.1.i.140.i.i.i = phi i32 [ %spec.select45.i.i.i, %if.then13.i.1.i.i.i ], [ %ly.1.i.i.i.i, %for.inc.i.1.i.i.i.if.then25.i.i.i.i_crit_edge ]
  %lx.1.i.139.i.i.i = phi i32 [ %spec.select44.i.i.i, %if.then13.i.1.i.i.i ], [ %lx.1.i.i.i.i, %for.inc.i.1.i.i.i.if.then25.i.i.i.i_crit_edge ]
  %hx.171.i.138.i.i.i = phi i32 [ %hx.172.i.1.i.i.i, %if.then13.i.1.i.i.i ], [ %spec.select42.i.i.i, %for.inc.i.1.i.i.i.if.then25.i.i.i.i_crit_edge ]
  %hy.173.i.137.i.i.i = phi i32 [ %hy.174.i.1.i.i.i, %if.then13.i.1.i.i.i ], [ %spec.select43.i.i.i, %for.inc.i.1.i.i.i.if.then25.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.138.i.i.i, i32 %lx.1.i.139.i.i.i)
  %cmp28.i.i.i.i = icmp eq i32 %hx.171.i.138.i.i.i, %lx.1.i.139.i.i.i
  %or.cond66.i.i.i.i = select i1 %tobool35.not.i41.i.i.i, i1 true, i1 %cmp28.i.i.i.i
  br i1 %or.cond66.i.i.i.i, label %if.then25.i.i.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i_crit_edge, label %if.else.i.i.i.i

if.then25.i.i.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i_crit_edge: ; preds = %if.then25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.then25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i.i = sub nsw i32 %hy.173.i.137.i.i.i, %ly.1.i.140.i.i.i
  %sub1.i.i.i.i.i = sub nsw i32 %conv14.i.i.i, %lx.1.i.139.i.i.i
  %mul.i.i.i.i.i = shl nsw i32 %sub1.i.i.i.i.i, 1
  %mul2.i.i.i.i.i = mul i32 %mul.i.i.i.i.i, %sub.i.i.i.i.i
  %sub3.i.i.i.i.i = sub nsw i32 %hx.171.i.138.i.i.i, %lx.1.i.139.i.i.i
  %div.i.i.i.i.i = sdiv i32 %mul2.i.i.i.i.i, %sub3.i.i.i.i.i
  %div.i.i.i.i.i.frozen = freeze i32 %div.i.i.i.i.i
  %div4.i.i.i.i.i = sdiv i32 %div.i.i.i.i.i.frozen, 2
  %17 = mul i32 %div4.i.i.i.i.i, 2
  %rem.i.i.i.i.i.decomposed = sub i32 %div.i.i.i.i.i.frozen, %17
  %add.i.i.i.i.i = add nsw i32 %div4.i.i.i.i.i, %ly.1.i.140.i.i.i
  %add5.i.i.i.i.i = add nsw i32 %add.i.i.i.i.i, %rem.i.i.i.i.i.decomposed
  br label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i

ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i:        ; preds = %if.else.i.i.i.i, %if.then25.i.i.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i_crit_edge, %for.inc.i.1.i.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i_crit_edge
  %y.0.i.i.i.i = phi i32 [ %add5.i.i.i.i.i, %if.else.i.i.i.i ], [ %ly.1.i.140.i.i.i, %if.then25.i.i.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i_crit_edge ], [ %spec.select43.i.i.i, %for.inc.i.1.i.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i_crit_edge ]
  %conv18.i.i.i = trunc i32 %y.0.i.i.i.i to i8
  %arrayidx.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 4
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv18.i.i.i, ptr %arrayidx.i.i, align 1
  %arrayidx10.i.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 37, i32 1
  %19 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10.i.i.i, align 1
  %conv11.i22.i.i = zext i8 %20 to i32
  %arrayidx10.1.i.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 37, i32 5
  %21 = ptrtoint ptr %arrayidx10.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10.1.i.i.i, align 1
  %conv11.1.i29.i.i = zext i8 %22 to i32
  br i1 %cmp2.i.i.i.i, label %if.end10.i.i34.i.i, label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i.if.then19.i.i38.i.i_crit_edge

ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i.if.then19.i.i38.i.i_crit_edge: ; preds = %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i38.i.i

if.end10.i.i34.i.i:                               ; preds = %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i.i)
  %cmp11.i.i33.i.i = icmp sgt i32 %sub.i.i.i.i, -1
  br i1 %cmp11.i.i33.i.i, label %if.end10.i.i34.i.i.if.then19.i.i38.i.i_crit_edge, label %if.end10.i.i34.i.i.for.inc.i.i47.i.i_crit_edge

if.end10.i.i34.i.i.for.inc.i.i47.i.i_crit_edge:   ; preds = %if.end10.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i47.i.i

if.end10.i.i34.i.i.if.then19.i.i38.i.i_crit_edge: ; preds = %if.end10.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i38.i.i

if.then19.i.i38.i.i:                              ; preds = %if.end10.i.i34.i.i.if.then19.i.i38.i.i_crit_edge, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i.if.then19.i.i38.i.i_crit_edge
  %hhave.176.i.i35.i.i = phi i32 [ 1, %if.end10.i.i34.i.i.if.then19.i.i38.i.i_crit_edge ], [ 0, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i.if.then19.i.i38.i.i_crit_edge ]
  %hy.174.i.i36.i.i = phi i32 [ %conv11.i22.i.i, %if.end10.i.i34.i.i.if.then19.i.i38.i.i_crit_edge ], [ 0, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i.if.then19.i.i38.i.i_crit_edge ]
  %hx.172.i.i37.i.i = phi i32 [ %retval.0.i.i.i.i, %if.end10.i.i34.i.i.if.then19.i.i38.i.i_crit_edge ], [ 0, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit.i.i.if.then19.i.i38.i.i_crit_edge ]
  br label %for.inc.i.i47.i.i

for.inc.i.i47.i.i:                                ; preds = %if.then19.i.i38.i.i, %if.end10.i.i34.i.i.for.inc.i.i47.i.i_crit_edge
  %hhave.175.i.i39.i.i = phi i32 [ %hhave.176.i.i35.i.i, %if.then19.i.i38.i.i ], [ 1, %if.end10.i.i34.i.i.for.inc.i.i47.i.i_crit_edge ]
  %hy.173.i.i40.i.i = phi i32 [ %hy.174.i.i36.i.i, %if.then19.i.i38.i.i ], [ %conv11.i22.i.i, %if.end10.i.i34.i.i.for.inc.i.i47.i.i_crit_edge ]
  %hx.171.i.i41.i.i = phi i32 [ %hx.172.i.i37.i.i, %if.then19.i.i38.i.i ], [ %retval.0.i.i.i.i, %if.end10.i.i34.i.i.for.inc.i.i47.i.i_crit_edge ]
  %lx.1.i.i42.i.i = phi i32 [ %retval.0.i.i.i.i, %if.then19.i.i38.i.i ], [ 0, %if.end10.i.i34.i.i.for.inc.i.i47.i.i_crit_edge ]
  %ly.1.i.i43.i.i = phi i32 [ %conv11.i22.i.i, %if.then19.i.i38.i.i ], [ 0, %if.end10.i.i34.i.i.for.inc.i.i47.i.i_crit_edge ]
  %tobool14.not.i.1.i44.i.i = phi i1 [ false, %if.then19.i.i38.i.i ], [ true, %if.end10.i.i34.i.i.for.inc.i.i47.i.i_crit_edge ]
  br i1 %cmp2.i.1.i.i.i, label %if.then.i.1.i54.i.i, label %for.inc.i.i47.i.i.if.then13.i.1.i63.i.i_crit_edge

for.inc.i.i47.i.i.if.then13.i.1.i63.i.i_crit_edge: ; preds = %for.inc.i.i47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1.i63.i.i

if.then.i.1.i54.i.i:                              ; preds = %for.inc.i.i47.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i.i39.i.i)
  %tobool.not.i.1.i48.i.i = icmp eq i32 %hhave.175.i.i39.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.i41.i.i, i32 %retval.0.i.1.i.i.i)
  %cmp5.i.1.i49.i.i = icmp ugt i32 %hx.171.i.i41.i.i, %retval.0.i.1.i.i.i
  %or.cond.i.1.i50.i.i = select i1 %tobool.not.i.1.i48.i.i, i1 true, i1 %cmp5.i.1.i49.i.i
  %spec.select42.i51.i.i = select i1 %or.cond.i.1.i50.i.i, i32 %retval.0.i.1.i.i.i, i32 %hx.171.i.i41.i.i
  %spec.select43.i52.i.i = select i1 %or.cond.i.1.i50.i.i, i32 %conv11.1.i29.i.i, i32 %hy.173.i.i40.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.1.i.i.i)
  %cmp11.i.1.i53.i.i = icmp sgt i32 %sub.i.1.i.i.i, -1
  br i1 %cmp11.i.1.i53.i.i, label %if.then.i.1.i54.i.i.if.then13.i.1.i63.i.i_crit_edge, label %for.inc.i.1.i64.i.i

if.then.i.1.i54.i.i.if.then13.i.1.i63.i.i_crit_edge: ; preds = %if.then.i.1.i54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1.i63.i.i

if.then13.i.1.i63.i.i:                            ; preds = %if.then.i.1.i54.i.i.if.then13.i.1.i63.i.i_crit_edge, %for.inc.i.i47.i.i.if.then13.i.1.i63.i.i_crit_edge
  %hhave.176.i.1.i55.i.i = phi i32 [ 1, %if.then.i.1.i54.i.i.if.then13.i.1.i63.i.i_crit_edge ], [ %hhave.175.i.i39.i.i, %for.inc.i.i47.i.i.if.then13.i.1.i63.i.i_crit_edge ]
  %hy.174.i.1.i56.i.i = phi i32 [ %spec.select43.i52.i.i, %if.then.i.1.i54.i.i.if.then13.i.1.i63.i.i_crit_edge ], [ %hy.173.i.i40.i.i, %for.inc.i.i47.i.i.if.then13.i.1.i63.i.i_crit_edge ]
  %hx.172.i.1.i57.i.i = phi i32 [ %spec.select42.i51.i.i, %if.then.i.1.i54.i.i.if.then13.i.1.i63.i.i_crit_edge ], [ %hx.171.i.i41.i.i, %for.inc.i.i47.i.i.if.then13.i.1.i63.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i.i42.i.i, i32 %retval.0.i.1.i.i.i)
  %cmp17.i.1.i58.i.i = icmp ult i32 %lx.1.i.i42.i.i, %retval.0.i.1.i.i.i
  %or.cond65.i.1.i59.i.i = select i1 %tobool14.not.i.1.i44.i.i, i1 true, i1 %cmp17.i.1.i58.i.i
  %spec.select44.i60.i.i = select i1 %or.cond65.i.1.i59.i.i, i32 %retval.0.i.1.i.i.i, i32 %lx.1.i.i42.i.i
  %spec.select45.i61.i.i = select i1 %or.cond65.i.1.i59.i.i, i32 %conv11.1.i29.i.i, i32 %ly.1.i.i43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.176.i.1.i55.i.i)
  %tobool35.not.i36.i62.i.i = icmp eq i32 %hhave.176.i.1.i55.i.i, 0
  br label %if.then25.i.i72.i.i

for.inc.i.1.i64.i.i:                              ; preds = %if.then.i.1.i54.i.i
  br i1 %tobool14.not.i.1.i44.i.i, label %for.inc.i.1.i64.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i_crit_edge, label %for.inc.i.1.i64.i.i.if.then25.i.i72.i.i_crit_edge

for.inc.i.1.i64.i.i.if.then25.i.i72.i.i_crit_edge: ; preds = %for.inc.i.1.i64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i.i72.i.i

for.inc.i.1.i64.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i_crit_edge: ; preds = %for.inc.i.1.i64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i

if.then25.i.i72.i.i:                              ; preds = %for.inc.i.1.i64.i.i.if.then25.i.i72.i.i_crit_edge, %if.then13.i.1.i63.i.i
  %tobool35.not.i41.i65.i.i = phi i1 [ %tobool35.not.i36.i62.i.i, %if.then13.i.1.i63.i.i ], [ false, %for.inc.i.1.i64.i.i.if.then25.i.i72.i.i_crit_edge ]
  %ly.1.i.140.i66.i.i = phi i32 [ %spec.select45.i61.i.i, %if.then13.i.1.i63.i.i ], [ %ly.1.i.i43.i.i, %for.inc.i.1.i64.i.i.if.then25.i.i72.i.i_crit_edge ]
  %lx.1.i.139.i67.i.i = phi i32 [ %spec.select44.i60.i.i, %if.then13.i.1.i63.i.i ], [ %lx.1.i.i42.i.i, %for.inc.i.1.i64.i.i.if.then25.i.i72.i.i_crit_edge ]
  %hx.171.i.138.i68.i.i = phi i32 [ %hx.172.i.1.i57.i.i, %if.then13.i.1.i63.i.i ], [ %spec.select42.i51.i.i, %for.inc.i.1.i64.i.i.if.then25.i.i72.i.i_crit_edge ]
  %hy.173.i.137.i69.i.i = phi i32 [ %hy.174.i.1.i56.i.i, %if.then13.i.1.i63.i.i ], [ %spec.select43.i52.i.i, %for.inc.i.1.i64.i.i.if.then25.i.i72.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.138.i68.i.i, i32 %lx.1.i.139.i67.i.i)
  %cmp28.i.i70.i.i = icmp eq i32 %hx.171.i.138.i68.i.i, %lx.1.i.139.i67.i.i
  %or.cond66.i.i71.i.i = select i1 %tobool35.not.i41.i65.i.i, i1 true, i1 %cmp28.i.i70.i.i
  br i1 %or.cond66.i.i71.i.i, label %if.then25.i.i72.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i_crit_edge, label %if.else.i.i83.i.i

if.then25.i.i72.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i_crit_edge: ; preds = %if.then25.i.i72.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i

if.else.i.i83.i.i:                                ; preds = %if.then25.i.i72.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i73.i.i = sub nsw i32 %hy.173.i.137.i69.i.i, %ly.1.i.140.i66.i.i
  %sub1.i.i.i74.i.i = sub nsw i32 %conv14.i.i.i, %lx.1.i.139.i67.i.i
  %mul.i.i.i75.i.i = shl nsw i32 %sub1.i.i.i74.i.i, 1
  %mul2.i.i.i76.i.i = mul i32 %mul.i.i.i75.i.i, %sub.i.i.i73.i.i
  %sub3.i.i.i77.i.i = sub nsw i32 %hx.171.i.138.i68.i.i, %lx.1.i.139.i67.i.i
  %div.i.i.i78.i.i = sdiv i32 %mul2.i.i.i76.i.i, %sub3.i.i.i77.i.i
  %div.i.i.i78.i.i.frozen = freeze i32 %div.i.i.i78.i.i
  %div4.i.i.i79.i.i = sdiv i32 %div.i.i.i78.i.i.frozen, 2
  %23 = mul i32 %div4.i.i.i79.i.i, 2
  %rem.i.i.i80.i.i.decomposed = sub i32 %div.i.i.i78.i.i.frozen, %23
  %add.i.i.i81.i.i = add nsw i32 %div4.i.i.i79.i.i, %ly.1.i.140.i66.i.i
  %add5.i.i.i82.i.i = add nsw i32 %add.i.i.i81.i.i, %rem.i.i.i80.i.i.decomposed
  br label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i

ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i:      ; preds = %if.else.i.i83.i.i, %if.then25.i.i72.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i_crit_edge, %for.inc.i.1.i64.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i_crit_edge
  %y.0.i.i85.i.i = phi i32 [ %add5.i.i.i82.i.i, %if.else.i.i83.i.i ], [ %ly.1.i.140.i66.i.i, %if.then25.i.i72.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i_crit_edge ], [ %spec.select43.i52.i.i, %for.inc.i.1.i64.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i_crit_edge ]
  %conv18.i86.i.i = trunc i32 %y.0.i.i85.i.i to i8
  %arrayidx2.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 5
  %24 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv18.i86.i.i, ptr %arrayidx2.i.i, align 1
  %arrayidx10.i94.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 37, i32 2
  %25 = ptrtoint ptr %arrayidx10.i94.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx10.i94.i.i, align 1
  %conv11.i95.i.i = zext i8 %26 to i32
  %arrayidx10.1.i102.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 38
  %27 = ptrtoint ptr %arrayidx10.1.i102.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx10.1.i102.i.i, align 1
  %conv11.1.i103.i.i = zext i8 %28 to i32
  br i1 %cmp2.i.i.i.i, label %if.end10.i.i108.i.i, label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i.if.then19.i.i112.i.i_crit_edge

ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i.if.then19.i.i112.i.i_crit_edge: ; preds = %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i112.i.i

if.end10.i.i108.i.i:                              ; preds = %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i.i)
  %cmp11.i.i107.i.i = icmp sgt i32 %sub.i.i.i.i, -1
  br i1 %cmp11.i.i107.i.i, label %if.end10.i.i108.i.i.if.then19.i.i112.i.i_crit_edge, label %if.end10.i.i108.i.i.for.inc.i.i121.i.i_crit_edge

if.end10.i.i108.i.i.for.inc.i.i121.i.i_crit_edge: ; preds = %if.end10.i.i108.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i121.i.i

if.end10.i.i108.i.i.if.then19.i.i112.i.i_crit_edge: ; preds = %if.end10.i.i108.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i112.i.i

if.then19.i.i112.i.i:                             ; preds = %if.end10.i.i108.i.i.if.then19.i.i112.i.i_crit_edge, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i.if.then19.i.i112.i.i_crit_edge
  %hhave.176.i.i109.i.i = phi i32 [ 1, %if.end10.i.i108.i.i.if.then19.i.i112.i.i_crit_edge ], [ 0, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i.if.then19.i.i112.i.i_crit_edge ]
  %hy.174.i.i110.i.i = phi i32 [ %conv11.i95.i.i, %if.end10.i.i108.i.i.if.then19.i.i112.i.i_crit_edge ], [ 0, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i.if.then19.i.i112.i.i_crit_edge ]
  %hx.172.i.i111.i.i = phi i32 [ %retval.0.i.i.i.i, %if.end10.i.i108.i.i.if.then19.i.i112.i.i_crit_edge ], [ 0, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit87.i.i.if.then19.i.i112.i.i_crit_edge ]
  br label %for.inc.i.i121.i.i

for.inc.i.i121.i.i:                               ; preds = %if.then19.i.i112.i.i, %if.end10.i.i108.i.i.for.inc.i.i121.i.i_crit_edge
  %hhave.175.i.i113.i.i = phi i32 [ %hhave.176.i.i109.i.i, %if.then19.i.i112.i.i ], [ 1, %if.end10.i.i108.i.i.for.inc.i.i121.i.i_crit_edge ]
  %hy.173.i.i114.i.i = phi i32 [ %hy.174.i.i110.i.i, %if.then19.i.i112.i.i ], [ %conv11.i95.i.i, %if.end10.i.i108.i.i.for.inc.i.i121.i.i_crit_edge ]
  %hx.171.i.i115.i.i = phi i32 [ %hx.172.i.i111.i.i, %if.then19.i.i112.i.i ], [ %retval.0.i.i.i.i, %if.end10.i.i108.i.i.for.inc.i.i121.i.i_crit_edge ]
  %lx.1.i.i116.i.i = phi i32 [ %retval.0.i.i.i.i, %if.then19.i.i112.i.i ], [ 0, %if.end10.i.i108.i.i.for.inc.i.i121.i.i_crit_edge ]
  %ly.1.i.i117.i.i = phi i32 [ %conv11.i95.i.i, %if.then19.i.i112.i.i ], [ 0, %if.end10.i.i108.i.i.for.inc.i.i121.i.i_crit_edge ]
  %tobool14.not.i.1.i118.i.i = phi i1 [ false, %if.then19.i.i112.i.i ], [ true, %if.end10.i.i108.i.i.for.inc.i.i121.i.i_crit_edge ]
  br i1 %cmp2.i.1.i.i.i, label %if.then.i.1.i128.i.i, label %for.inc.i.i121.i.i.if.then13.i.1.i137.i.i_crit_edge

for.inc.i.i121.i.i.if.then13.i.1.i137.i.i_crit_edge: ; preds = %for.inc.i.i121.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1.i137.i.i

if.then.i.1.i128.i.i:                             ; preds = %for.inc.i.i121.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i.i113.i.i)
  %tobool.not.i.1.i122.i.i = icmp eq i32 %hhave.175.i.i113.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.i115.i.i, i32 %retval.0.i.1.i.i.i)
  %cmp5.i.1.i123.i.i = icmp ugt i32 %hx.171.i.i115.i.i, %retval.0.i.1.i.i.i
  %or.cond.i.1.i124.i.i = select i1 %tobool.not.i.1.i122.i.i, i1 true, i1 %cmp5.i.1.i123.i.i
  %spec.select42.i125.i.i = select i1 %or.cond.i.1.i124.i.i, i32 %retval.0.i.1.i.i.i, i32 %hx.171.i.i115.i.i
  %spec.select43.i126.i.i = select i1 %or.cond.i.1.i124.i.i, i32 %conv11.1.i103.i.i, i32 %hy.173.i.i114.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.1.i.i.i)
  %cmp11.i.1.i127.i.i = icmp sgt i32 %sub.i.1.i.i.i, -1
  br i1 %cmp11.i.1.i127.i.i, label %if.then.i.1.i128.i.i.if.then13.i.1.i137.i.i_crit_edge, label %for.inc.i.1.i138.i.i

if.then.i.1.i128.i.i.if.then13.i.1.i137.i.i_crit_edge: ; preds = %if.then.i.1.i128.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1.i137.i.i

if.then13.i.1.i137.i.i:                           ; preds = %if.then.i.1.i128.i.i.if.then13.i.1.i137.i.i_crit_edge, %for.inc.i.i121.i.i.if.then13.i.1.i137.i.i_crit_edge
  %hhave.176.i.1.i129.i.i = phi i32 [ 1, %if.then.i.1.i128.i.i.if.then13.i.1.i137.i.i_crit_edge ], [ %hhave.175.i.i113.i.i, %for.inc.i.i121.i.i.if.then13.i.1.i137.i.i_crit_edge ]
  %hy.174.i.1.i130.i.i = phi i32 [ %spec.select43.i126.i.i, %if.then.i.1.i128.i.i.if.then13.i.1.i137.i.i_crit_edge ], [ %hy.173.i.i114.i.i, %for.inc.i.i121.i.i.if.then13.i.1.i137.i.i_crit_edge ]
  %hx.172.i.1.i131.i.i = phi i32 [ %spec.select42.i125.i.i, %if.then.i.1.i128.i.i.if.then13.i.1.i137.i.i_crit_edge ], [ %hx.171.i.i115.i.i, %for.inc.i.i121.i.i.if.then13.i.1.i137.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i.i116.i.i, i32 %retval.0.i.1.i.i.i)
  %cmp17.i.1.i132.i.i = icmp ult i32 %lx.1.i.i116.i.i, %retval.0.i.1.i.i.i
  %or.cond65.i.1.i133.i.i = select i1 %tobool14.not.i.1.i118.i.i, i1 true, i1 %cmp17.i.1.i132.i.i
  %spec.select44.i134.i.i = select i1 %or.cond65.i.1.i133.i.i, i32 %retval.0.i.1.i.i.i, i32 %lx.1.i.i116.i.i
  %spec.select45.i135.i.i = select i1 %or.cond65.i.1.i133.i.i, i32 %conv11.1.i103.i.i, i32 %ly.1.i.i117.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.176.i.1.i129.i.i)
  %tobool35.not.i36.i136.i.i = icmp eq i32 %hhave.176.i.1.i129.i.i, 0
  br label %if.then25.i.i146.i.i

for.inc.i.1.i138.i.i:                             ; preds = %if.then.i.1.i128.i.i
  br i1 %tobool14.not.i.1.i118.i.i, label %for.inc.i.1.i138.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i_crit_edge, label %for.inc.i.1.i138.i.i.if.then25.i.i146.i.i_crit_edge

for.inc.i.1.i138.i.i.if.then25.i.i146.i.i_crit_edge: ; preds = %for.inc.i.1.i138.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i.i146.i.i

for.inc.i.1.i138.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i_crit_edge: ; preds = %for.inc.i.1.i138.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i

if.then25.i.i146.i.i:                             ; preds = %for.inc.i.1.i138.i.i.if.then25.i.i146.i.i_crit_edge, %if.then13.i.1.i137.i.i
  %tobool35.not.i41.i139.i.i = phi i1 [ %tobool35.not.i36.i136.i.i, %if.then13.i.1.i137.i.i ], [ false, %for.inc.i.1.i138.i.i.if.then25.i.i146.i.i_crit_edge ]
  %ly.1.i.140.i140.i.i = phi i32 [ %spec.select45.i135.i.i, %if.then13.i.1.i137.i.i ], [ %ly.1.i.i117.i.i, %for.inc.i.1.i138.i.i.if.then25.i.i146.i.i_crit_edge ]
  %lx.1.i.139.i141.i.i = phi i32 [ %spec.select44.i134.i.i, %if.then13.i.1.i137.i.i ], [ %lx.1.i.i116.i.i, %for.inc.i.1.i138.i.i.if.then25.i.i146.i.i_crit_edge ]
  %hx.171.i.138.i142.i.i = phi i32 [ %hx.172.i.1.i131.i.i, %if.then13.i.1.i137.i.i ], [ %spec.select42.i125.i.i, %for.inc.i.1.i138.i.i.if.then25.i.i146.i.i_crit_edge ]
  %hy.173.i.137.i143.i.i = phi i32 [ %hy.174.i.1.i130.i.i, %if.then13.i.1.i137.i.i ], [ %spec.select43.i126.i.i, %for.inc.i.1.i138.i.i.if.then25.i.i146.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.138.i142.i.i, i32 %lx.1.i.139.i141.i.i)
  %cmp28.i.i144.i.i = icmp eq i32 %hx.171.i.138.i142.i.i, %lx.1.i.139.i141.i.i
  %or.cond66.i.i145.i.i = select i1 %tobool35.not.i41.i139.i.i, i1 true, i1 %cmp28.i.i144.i.i
  br i1 %or.cond66.i.i145.i.i, label %if.then25.i.i146.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i_crit_edge, label %if.else.i.i157.i.i

if.then25.i.i146.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i_crit_edge: ; preds = %if.then25.i.i146.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i

if.else.i.i157.i.i:                               ; preds = %if.then25.i.i146.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i147.i.i = sub nsw i32 %hy.173.i.137.i143.i.i, %ly.1.i.140.i140.i.i
  %sub1.i.i.i148.i.i = sub nsw i32 %conv14.i.i.i, %lx.1.i.139.i141.i.i
  %mul.i.i.i149.i.i = shl nsw i32 %sub1.i.i.i148.i.i, 1
  %mul2.i.i.i150.i.i = mul i32 %mul.i.i.i149.i.i, %sub.i.i.i147.i.i
  %sub3.i.i.i151.i.i = sub nsw i32 %hx.171.i.138.i142.i.i, %lx.1.i.139.i141.i.i
  %div.i.i.i152.i.i = sdiv i32 %mul2.i.i.i150.i.i, %sub3.i.i.i151.i.i
  %div.i.i.i152.i.i.frozen = freeze i32 %div.i.i.i152.i.i
  %div4.i.i.i153.i.i = sdiv i32 %div.i.i.i152.i.i.frozen, 2
  %29 = mul i32 %div4.i.i.i153.i.i, 2
  %rem.i.i.i154.i.i.decomposed = sub i32 %div.i.i.i152.i.i.frozen, %29
  %add.i.i.i155.i.i = add nsw i32 %div4.i.i.i153.i.i, %ly.1.i.140.i140.i.i
  %add5.i.i.i156.i.i = add nsw i32 %add.i.i.i155.i.i, %rem.i.i.i154.i.i.decomposed
  br label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i

ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i:     ; preds = %if.else.i.i157.i.i, %if.then25.i.i146.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i_crit_edge, %for.inc.i.1.i138.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i_crit_edge
  %y.0.i.i159.i.i = phi i32 [ %add5.i.i.i156.i.i, %if.else.i.i157.i.i ], [ %ly.1.i.140.i140.i.i, %if.then25.i.i146.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i_crit_edge ], [ %spec.select43.i126.i.i, %for.inc.i.1.i138.i.i.ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i_crit_edge ]
  %conv18.i160.i.i = trunc i32 %y.0.i.i159.i.i to i8
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 6
  %30 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv18.i160.i.i, ptr %arrayidx4.i.i, align 1
  %arrayidx10.i168.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 37, i32 3
  %31 = ptrtoint ptr %arrayidx10.i168.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx10.i168.i.i, align 1
  %conv11.i169.i.i = zext i8 %32 to i32
  %arrayidx10.1.i176.i.i = getelementptr [4 x i8], ptr %arrayidx8.1.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx10.1.i176.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx10.1.i176.i.i, align 1
  %conv11.1.i177.i.i = zext i8 %34 to i32
  br i1 %cmp2.i.i.i.i, label %if.end10.i.i182.i.i, label %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i.if.then19.i.i186.i.i_crit_edge

ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i.if.then19.i.i186.i.i_crit_edge: ; preds = %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i186.i.i

if.end10.i.i182.i.i:                              ; preds = %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i.i)
  %cmp11.i.i181.i.i = icmp sgt i32 %sub.i.i.i.i, -1
  br i1 %cmp11.i.i181.i.i, label %if.end10.i.i182.i.i.if.then19.i.i186.i.i_crit_edge, label %if.end10.i.i182.i.i.for.inc.i.i195.i.i_crit_edge

if.end10.i.i182.i.i.for.inc.i.i195.i.i_crit_edge: ; preds = %if.end10.i.i182.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i195.i.i

if.end10.i.i182.i.i.if.then19.i.i186.i.i_crit_edge: ; preds = %if.end10.i.i182.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i186.i.i

if.then19.i.i186.i.i:                             ; preds = %if.end10.i.i182.i.i.if.then19.i.i186.i.i_crit_edge, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i.if.then19.i.i186.i.i_crit_edge
  %hhave.176.i.i183.i.i = phi i32 [ 1, %if.end10.i.i182.i.i.if.then19.i.i186.i.i_crit_edge ], [ 0, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i.if.then19.i.i186.i.i_crit_edge ]
  %hy.174.i.i184.i.i = phi i32 [ %conv11.i169.i.i, %if.end10.i.i182.i.i.if.then19.i.i186.i.i_crit_edge ], [ 0, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i.if.then19.i.i186.i.i_crit_edge ]
  %hx.172.i.i185.i.i = phi i32 [ %retval.0.i.i.i.i, %if.end10.i.i182.i.i.if.then19.i.i186.i.i_crit_edge ], [ 0, %ar9003_hw_eeprom_get_cck_tgt_pwr.exit161.i.i.if.then19.i.i186.i.i_crit_edge ]
  br label %for.inc.i.i195.i.i

for.inc.i.i195.i.i:                               ; preds = %if.then19.i.i186.i.i, %if.end10.i.i182.i.i.for.inc.i.i195.i.i_crit_edge
  %hhave.175.i.i187.i.i = phi i32 [ %hhave.176.i.i183.i.i, %if.then19.i.i186.i.i ], [ 1, %if.end10.i.i182.i.i.for.inc.i.i195.i.i_crit_edge ]
  %hy.173.i.i188.i.i = phi i32 [ %hy.174.i.i184.i.i, %if.then19.i.i186.i.i ], [ %conv11.i169.i.i, %if.end10.i.i182.i.i.for.inc.i.i195.i.i_crit_edge ]
  %hx.171.i.i189.i.i = phi i32 [ %hx.172.i.i185.i.i, %if.then19.i.i186.i.i ], [ %retval.0.i.i.i.i, %if.end10.i.i182.i.i.for.inc.i.i195.i.i_crit_edge ]
  %lx.1.i.i190.i.i = phi i32 [ %retval.0.i.i.i.i, %if.then19.i.i186.i.i ], [ 0, %if.end10.i.i182.i.i.for.inc.i.i195.i.i_crit_edge ]
  %ly.1.i.i191.i.i = phi i32 [ %conv11.i169.i.i, %if.then19.i.i186.i.i ], [ 0, %if.end10.i.i182.i.i.for.inc.i.i195.i.i_crit_edge ]
  %tobool14.not.i.1.i192.i.i = phi i1 [ false, %if.then19.i.i186.i.i ], [ true, %if.end10.i.i182.i.i.for.inc.i.i195.i.i_crit_edge ]
  br i1 %cmp2.i.1.i.i.i, label %if.then.i.1.i202.i.i, label %for.inc.i.i195.i.i.if.then13.i.1.i211.i.i_crit_edge

for.inc.i.i195.i.i.if.then13.i.1.i211.i.i_crit_edge: ; preds = %for.inc.i.i195.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1.i211.i.i

if.then.i.1.i202.i.i:                             ; preds = %for.inc.i.i195.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i.i187.i.i)
  %tobool.not.i.1.i196.i.i = icmp eq i32 %hhave.175.i.i187.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.i189.i.i, i32 %retval.0.i.1.i.i.i)
  %cmp5.i.1.i197.i.i = icmp ugt i32 %hx.171.i.i189.i.i, %retval.0.i.1.i.i.i
  %or.cond.i.1.i198.i.i = select i1 %tobool.not.i.1.i196.i.i, i1 true, i1 %cmp5.i.1.i197.i.i
  %spec.select42.i199.i.i = select i1 %or.cond.i.1.i198.i.i, i32 %retval.0.i.1.i.i.i, i32 %hx.171.i.i189.i.i
  %spec.select43.i200.i.i = select i1 %or.cond.i.1.i198.i.i, i32 %conv11.1.i177.i.i, i32 %hy.173.i.i188.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.1.i.i.i)
  %cmp11.i.1.i201.i.i = icmp sgt i32 %sub.i.1.i.i.i, -1
  br i1 %cmp11.i.1.i201.i.i, label %if.then.i.1.i202.i.i.if.then13.i.1.i211.i.i_crit_edge, label %for.inc.i.1.i212.i.i

if.then.i.1.i202.i.i.if.then13.i.1.i211.i.i_crit_edge: ; preds = %if.then.i.1.i202.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1.i211.i.i

if.then13.i.1.i211.i.i:                           ; preds = %if.then.i.1.i202.i.i.if.then13.i.1.i211.i.i_crit_edge, %for.inc.i.i195.i.i.if.then13.i.1.i211.i.i_crit_edge
  %hhave.176.i.1.i203.i.i = phi i32 [ 1, %if.then.i.1.i202.i.i.if.then13.i.1.i211.i.i_crit_edge ], [ %hhave.175.i.i187.i.i, %for.inc.i.i195.i.i.if.then13.i.1.i211.i.i_crit_edge ]
  %hy.174.i.1.i204.i.i = phi i32 [ %spec.select43.i200.i.i, %if.then.i.1.i202.i.i.if.then13.i.1.i211.i.i_crit_edge ], [ %hy.173.i.i188.i.i, %for.inc.i.i195.i.i.if.then13.i.1.i211.i.i_crit_edge ]
  %hx.172.i.1.i205.i.i = phi i32 [ %spec.select42.i199.i.i, %if.then.i.1.i202.i.i.if.then13.i.1.i211.i.i_crit_edge ], [ %hx.171.i.i189.i.i, %for.inc.i.i195.i.i.if.then13.i.1.i211.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i.i190.i.i, i32 %retval.0.i.1.i.i.i)
  %cmp17.i.1.i206.i.i = icmp ult i32 %lx.1.i.i190.i.i, %retval.0.i.1.i.i.i
  %or.cond65.i.1.i207.i.i = select i1 %tobool14.not.i.1.i192.i.i, i1 true, i1 %cmp17.i.1.i206.i.i
  %spec.select44.i208.i.i = select i1 %or.cond65.i.1.i207.i.i, i32 %retval.0.i.1.i.i.i, i32 %lx.1.i.i190.i.i
  %spec.select45.i209.i.i = select i1 %or.cond65.i.1.i207.i.i, i32 %conv11.1.i177.i.i, i32 %ly.1.i.i191.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.176.i.1.i203.i.i)
  %tobool35.not.i36.i210.i.i = icmp eq i32 %hhave.176.i.1.i203.i.i, 0
  br label %if.then25.i.i220.i.i

for.inc.i.1.i212.i.i:                             ; preds = %if.then.i.1.i202.i.i
  br i1 %tobool14.not.i.1.i192.i.i, label %for.inc.i.1.i212.i.i.ar9003_hw_get_cck_target_powers.exit.i_crit_edge, label %for.inc.i.1.i212.i.i.if.then25.i.i220.i.i_crit_edge

for.inc.i.1.i212.i.i.if.then25.i.i220.i.i_crit_edge: ; preds = %for.inc.i.1.i212.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i.i220.i.i

for.inc.i.1.i212.i.i.ar9003_hw_get_cck_target_powers.exit.i_crit_edge: ; preds = %for.inc.i.1.i212.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_cck_target_powers.exit.i

if.then25.i.i220.i.i:                             ; preds = %for.inc.i.1.i212.i.i.if.then25.i.i220.i.i_crit_edge, %if.then13.i.1.i211.i.i
  %tobool35.not.i41.i213.i.i = phi i1 [ %tobool35.not.i36.i210.i.i, %if.then13.i.1.i211.i.i ], [ false, %for.inc.i.1.i212.i.i.if.then25.i.i220.i.i_crit_edge ]
  %ly.1.i.140.i214.i.i = phi i32 [ %spec.select45.i209.i.i, %if.then13.i.1.i211.i.i ], [ %ly.1.i.i191.i.i, %for.inc.i.1.i212.i.i.if.then25.i.i220.i.i_crit_edge ]
  %lx.1.i.139.i215.i.i = phi i32 [ %spec.select44.i208.i.i, %if.then13.i.1.i211.i.i ], [ %lx.1.i.i190.i.i, %for.inc.i.1.i212.i.i.if.then25.i.i220.i.i_crit_edge ]
  %hx.171.i.138.i216.i.i = phi i32 [ %hx.172.i.1.i205.i.i, %if.then13.i.1.i211.i.i ], [ %spec.select42.i199.i.i, %for.inc.i.1.i212.i.i.if.then25.i.i220.i.i_crit_edge ]
  %hy.173.i.137.i217.i.i = phi i32 [ %hy.174.i.1.i204.i.i, %if.then13.i.1.i211.i.i ], [ %spec.select43.i200.i.i, %for.inc.i.1.i212.i.i.if.then25.i.i220.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.138.i216.i.i, i32 %lx.1.i.139.i215.i.i)
  %cmp28.i.i218.i.i = icmp eq i32 %hx.171.i.138.i216.i.i, %lx.1.i.139.i215.i.i
  %or.cond66.i.i219.i.i = select i1 %tobool35.not.i41.i213.i.i, i1 true, i1 %cmp28.i.i218.i.i
  br i1 %or.cond66.i.i219.i.i, label %if.then25.i.i220.i.i.ar9003_hw_get_cck_target_powers.exit.i_crit_edge, label %if.else.i.i231.i.i

if.then25.i.i220.i.i.ar9003_hw_get_cck_target_powers.exit.i_crit_edge: ; preds = %if.then25.i.i220.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_cck_target_powers.exit.i

if.else.i.i231.i.i:                               ; preds = %if.then25.i.i220.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i221.i.i = sub nsw i32 %hy.173.i.137.i217.i.i, %ly.1.i.140.i214.i.i
  %sub1.i.i.i222.i.i = sub nsw i32 %conv14.i.i.i, %lx.1.i.139.i215.i.i
  %mul.i.i.i223.i.i = shl nsw i32 %sub1.i.i.i222.i.i, 1
  %mul2.i.i.i224.i.i = mul i32 %mul.i.i.i223.i.i, %sub.i.i.i221.i.i
  %sub3.i.i.i225.i.i = sub nsw i32 %hx.171.i.138.i216.i.i, %lx.1.i.139.i215.i.i
  %div.i.i.i226.i.i = sdiv i32 %mul2.i.i.i224.i.i, %sub3.i.i.i225.i.i
  %div.i.i.i226.i.i.frozen = freeze i32 %div.i.i.i226.i.i
  %div4.i.i.i227.i.i = sdiv i32 %div.i.i.i226.i.i.frozen, 2
  %35 = mul i32 %div4.i.i.i227.i.i, 2
  %rem.i.i.i228.i.i.decomposed = sub i32 %div.i.i.i226.i.i.frozen, %35
  %add.i.i.i229.i.i = add nsw i32 %div4.i.i.i227.i.i, %ly.1.i.140.i214.i.i
  %add5.i.i.i230.i.i = add nsw i32 %add.i.i.i229.i.i, %rem.i.i.i228.i.i.decomposed
  br label %ar9003_hw_get_cck_target_powers.exit.i

ar9003_hw_get_cck_target_powers.exit.i:           ; preds = %if.else.i.i231.i.i, %if.then25.i.i220.i.i.ar9003_hw_get_cck_target_powers.exit.i_crit_edge, %for.inc.i.1.i212.i.i.ar9003_hw_get_cck_target_powers.exit.i_crit_edge
  %y.0.i.i233.i.i = phi i32 [ %add5.i.i.i230.i.i, %if.else.i.i231.i.i ], [ %ly.1.i.140.i214.i.i, %if.then25.i.i220.i.i.ar9003_hw_get_cck_target_powers.exit.i_crit_edge ], [ %spec.select43.i200.i.i, %for.inc.i.1.i212.i.i.ar9003_hw_get_cck_target_powers.exit.i_crit_edge ]
  %conv18.i234.i.i = trunc i32 %y.0.i.i233.i.i to i8
  %arrayidx6.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 7
  %36 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv18.i234.i.i, ptr %arrayidx6.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %ar9003_hw_get_cck_target_powers.exit.i, %entry.if.end.i_crit_edge
  %call.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 0, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %37 = ptrtoint ptr %targetPowerValT2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call.i.i, ptr %targetPowerValT2, align 1
  %call2.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 1, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx3.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 1
  %38 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call2.i.i, ptr %arrayidx3.i.i, align 1
  %call5.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 2, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx6.i39.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 2
  %39 = ptrtoint ptr %arrayidx6.i39.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call5.i.i, ptr %arrayidx6.i39.i, align 1
  %call8.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 3, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx9.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 3
  %40 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call8.i.i, ptr %arrayidx9.i.i, align 1
  %call.i40.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 0, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx.i41.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 8
  %41 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call.i40.i, ptr %arrayidx.i41.i, align 1
  %call2.i42.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 1, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx3.i43.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 9
  %42 = ptrtoint ptr %arrayidx3.i43.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call2.i42.i, ptr %arrayidx3.i43.i, align 1
  %call5.i44.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 2, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx6.i45.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 10
  %43 = ptrtoint ptr %arrayidx6.i45.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %call5.i44.i, ptr %arrayidx6.i45.i, align 1
  %call8.i46.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 3, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx9.i47.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 11
  %44 = ptrtoint ptr %arrayidx9.i47.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call8.i46.i, ptr %arrayidx9.i47.i, align 1
  %call11.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 4, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx12.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 12
  %45 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call11.i.i, ptr %arrayidx12.i.i, align 1
  %call14.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 5, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx15.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 13
  %46 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %call14.i.i, ptr %arrayidx15.i.i, align 1
  %call17.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 6, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx18.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 14
  %47 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %call17.i.i, ptr %arrayidx18.i.i, align 1
  %call20.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 7, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx21.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 15
  %48 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %call20.i.i, ptr %arrayidx21.i.i, align 1
  %call23.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 8, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx24.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 16
  %49 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call23.i.i, ptr %arrayidx24.i.i, align 1
  %call26.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 9, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx27.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 17
  %50 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %call26.i.i, ptr %arrayidx27.i.i, align 1
  %call29.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 10, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx30.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 18
  %51 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %call29.i.i, ptr %arrayidx30.i.i, align 1
  %call32.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 11, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx33.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 19
  %52 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %call32.i.i, ptr %arrayidx33.i.i, align 1
  %call35.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 12, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx36.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 20
  %53 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %call35.i.i, ptr %arrayidx36.i.i, align 1
  %call38.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 13, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx39.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 21
  %54 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %call38.i.i, ptr %arrayidx39.i.i, align 1
  %55 = and i16 %5, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool9.not.i = icmp eq i16 %55, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then10.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i48.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 0, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx.i49.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 22
  %56 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %call.i48.i, ptr %arrayidx.i49.i, align 1
  %call4.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 1, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx9.i50.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 23
  %57 = ptrtoint ptr %arrayidx9.i50.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %call4.i.i, ptr %arrayidx9.i50.i, align 1
  %call11.i51.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 2, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx16.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 24
  %58 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %call11.i51.i, ptr %arrayidx16.i.i, align 1
  %call18.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 3, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx23.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 25
  %59 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %call18.i.i, ptr %arrayidx23.i.i, align 1
  %call25.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 4, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx30.i52.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 26
  %60 = ptrtoint ptr %arrayidx30.i52.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %call25.i.i, ptr %arrayidx30.i52.i, align 1
  %call32.i53.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 5, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx37.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 27
  %61 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %call32.i53.i, ptr %arrayidx37.i.i, align 1
  %call39.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 6, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx44.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 28
  %62 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %call39.i.i, ptr %arrayidx44.i.i, align 1
  %call46.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 7, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx51.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 29
  %63 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %call46.i.i, ptr %arrayidx51.i.i, align 1
  %call53.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 8, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx58.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 30
  %64 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %call53.i.i, ptr %arrayidx58.i.i, align 1
  %call60.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 9, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx65.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 31
  %65 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %call60.i.i, ptr %arrayidx65.i.i, align 1
  %call67.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 10, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx72.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 32
  %66 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %call67.i.i, ptr %arrayidx72.i.i, align 1
  %call74.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 11, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx79.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 33
  %67 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %call74.i.i, ptr %arrayidx79.i.i, align 1
  %call81.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 12, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx86.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 34
  %68 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %call81.i.i, ptr %arrayidx86.i.i, align 1
  %call88.i.i = tail call fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr noundef %ah, i16 noundef zeroext 13, i16 noundef zeroext %8, i1 noundef zeroext %tobool.not.i) #11
  %arrayidx93.i.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 35
  %69 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call88.i.i, ptr %arrayidx93.i.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end.i.if.end12.i_crit_edge
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.end12.i
  %i.054.i = phi i32 [ 0, %if.end12.i ], [ %inc.i, %for.inc.i.do.body.i_crit_edge ]
  %70 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %debug_mask.i, align 4
  %and14.i = and i32 %71, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body.i.for.inc.i_crit_edge, label %if.then16.i

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i8, ptr %targetPowerValT2, i32 %i.054.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i, align 1
  %conv17.i = zext i8 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.94, i32 noundef %i.054.i, i32 noundef %conv17.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %do.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 36
  br i1 %exitcond.not.i, label %ar9003_hw_get_target_power_eeprom.exit, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

ar9003_hw_get_target_power_eeprom.exit:           ; preds = %for.inc.i
  %call3 = tail call zeroext i1 @ar9003_is_paprd_enabled(ptr noundef %ah) #11
  br i1 %call3, label %if.then, label %ar9003_hw_get_target_power_eeprom.exit.if.end44_crit_edge

ar9003_hw_get_target_power_eeprom.exit.if.end44_crit_edge: ; preds = %ar9003_hw_get_target_power_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then:                                          ; preds = %ar9003_hw_get_target_power_eeprom.exit
  %74 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %channelFlags.i, align 2
  %76 = and i16 %75, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not = icmp eq i16 %76, 0
  %modalHeader5G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 1, i32 1, i32 2
  %modalHeader2G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 10
  %modal_hdr.0 = select i1 %tobool.not, ptr %modalHeader2G, ptr %modalHeader5G
  %papdRateMaskHt20 = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr.0, i32 0, i32 22
  %77 = ptrtoint ptr %papdRateMaskHt20 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %papdRateMaskHt20, align 1
  %79 = and i32 %78, -255
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %paprd_ratemask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 120
  %81 = ptrtoint ptr %paprd_ratemask to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %paprd_ratemask, align 4
  %papdRateMaskHt40 = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr.0, i32 0, i32 23
  %82 = ptrtoint ptr %papdRateMaskHt40 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %papdRateMaskHt40, align 1
  %84 = and i32 %83, -255
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %paprd_ratemask_ht40 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 121
  %86 = ptrtoint ptr %paprd_ratemask_ht40 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %paprd_ratemask_ht40, align 4
  %87 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %channelFlags.i, align 2
  %89 = and i16 %88, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool.not.i230 = icmp eq i16 %89, 0
  br i1 %tobool.not.i230, label %if.then.i231, label %if.else.i

if.then.i231:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %papdRateMaskHt20.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 42
  %90 = ptrtoint ptr %papdRateMaskHt20.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %papdRateMaskHt20.i, align 1
  %92 = lshr i32 %91, 1
  br label %ar9003_get_paprd_scale_factor.exit

if.else.i:                                        ; preds = %if.then
  %93 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5699, i16 %94)
  %cmp.i = icmp ugt i16 %94, 5699
  br i1 %cmp.i, label %if.then4.i, label %if.else8.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %papdRateMaskHt205.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 0, i32 0, i32 3
  %95 = ptrtoint ptr %papdRateMaskHt205.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %papdRateMaskHt205.i, align 1
  %97 = lshr i32 %96, 1
  br label %ar9003_get_paprd_scale_factor.exit

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5399, i16 %94)
  %cmp11.i = icmp ugt i16 %94, 5399
  %papdRateMaskHt40.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 0, i32 1, i32 2
  %98 = ptrtoint ptr %papdRateMaskHt40.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %papdRateMaskHt40.i, align 1
  br i1 %cmp11.i, label %if.then13.i, label %if.else17.i

if.then13.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = lshr i32 %99, 4
  br label %ar9003_get_paprd_scale_factor.exit

if.else17.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = lshr i32 %99, 1
  br label %ar9003_get_paprd_scale_factor.exit

ar9003_get_paprd_scale_factor.exit:               ; preds = %if.else17.i, %if.then13.i, %if.then4.i, %if.then.i231
  %retval.0.in.i = phi i32 [ %97, %if.then4.i ], [ %100, %if.then13.i ], [ %101, %if.else17.i ], [ %92, %if.then.i231 ]
  %retval.0.i = and i32 %retval.0.in.i, 7
  %102 = and i16 %88, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool11.not = icmp eq i16 %102, 0
  %conv13 = select i1 %tobool11.not, i8 8, i8 22
  %paprd_table_write_done = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 122
  %103 = ptrtoint ptr %paprd_table_write_done to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %paprd_table_write_done, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool14.not = icmp eq i8 %104, 0
  br i1 %tobool14.not, label %if.then15, label %ar9003_get_paprd_scale_factor.exit.if.end41_crit_edge

ar9003_get_paprd_scale_factor.exit.if.end41_crit_edge: ; preds = %ar9003_get_paprd_scale_factor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then15:                                        ; preds = %ar9003_get_paprd_scale_factor.exit
  %105 = call ptr @memcpy(ptr %target_power_val_t2_eep, ptr %targetPowerValT2, i32 36)
  %conv7.i = zext i8 %conv13 to i32
  %106 = trunc i32 %retval.0.i to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then15
  %i.0298 = phi i32 [ 0, %if.then15 ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv.i = and i32 %i.0298, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv.i)
  %cmp.i233 = icmp ult i32 %conv.i, 4
  br i1 %cmp.i233, label %if.then.i235, label %if.else.i236

if.then.i235:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i234 = icmp ne i32 %conv.i, 0
  %add.i = zext i1 %tobool.not.i234 to i8
  %cond.i = or i8 %conv13, %add.i
  br label %mcsidx_to_tgtpwridx.exit

if.else.i236:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %107 = lshr i32 %i.0298, 1
  %mul.i = and i32 %107, 252
  %add8.i = add nuw nsw i32 %conv.i, %conv7.i
  %add10.i = add nuw nsw i32 %add8.i, %mul.i
  %108 = trunc i32 %add10.i to i8
  %conv11.i = add i8 %108, -2
  br label %mcsidx_to_tgtpwridx.exit

mcsidx_to_tgtpwridx.exit:                         ; preds = %if.else.i236, %if.then.i235
  %retval.0.i237 = phi i8 [ %cond.i, %if.then.i235 ], [ %conv11.i, %if.else.i236 ]
  %shl = shl nuw nsw i32 1, %i.0298
  %and21 = and i32 %shl, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %mcsidx_to_tgtpwridx.exit.for.inc_crit_edge, label %if.then23

mcsidx_to_tgtpwridx.exit.for.inc_crit_edge:       ; preds = %mcsidx_to_tgtpwridx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then23:                                        ; preds = %mcsidx_to_tgtpwridx.exit
  %idxprom = zext i8 %retval.0.i237 to i32
  %arrayidx = getelementptr [36 x i8], ptr %targetPowerValT2, i32 0, i32 %idxprom
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool25.not = icmp eq i8 %110, 0
  br i1 %tobool25.not, label %if.then23.for.inc_crit_edge, label %land.lhs.true

if.then23.for.inc_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then23
  %arrayidx30 = getelementptr [36 x i8], ptr %target_power_val_t2_eep, i32 0, i32 %idxprom
  %111 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %112)
  %cmp32 = icmp eq i8 %110, %112
  br i1 %cmp32, label %if.then34, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv38 = sub i8 %110, %106
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv38, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %land.lhs.true.for.inc_crit_edge, %if.then23.for.inc_crit_edge, %mcsidx_to_tgtpwridx.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0298, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.inc.if.end41_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end41_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %for.inc.if.end41_crit_edge, %ar9003_get_paprd_scale_factor.exit.if.end41_crit_edge
  %114 = call ptr @memcpy(ptr %target_power_val_t2_eep, ptr %targetPowerValT2, i32 36)
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %ar9003_hw_get_target_power_eeprom.exit.if.end44_crit_edge
  %paprd_scale_factor.0 = phi i32 [ %retval.0.i, %if.end41 ], [ 0, %ar9003_hw_get_target_power_eeprom.exit.if.end44_crit_edge ]
  %conv46 = zext i8 %powerLimit to i16
  %eeprom.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers.i) #11
  %115 = ptrtoint ptr %centers.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -1, ptr %centers.i, align 2, !annotation !235
  %116 = getelementptr inbounds %struct.chan_centers, ptr %centers.i, i32 0, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %116, align 2, !annotation !235
  %118 = getelementptr inbounds %struct.chan_centers, ptr %centers.i, i32 0, i32 2
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 -1, ptr %118, align 2, !annotation !235
  %120 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %channelFlags.i, align 2
  %122 = and i16 %121, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool.not.i240 = icmp eq i16 %122, 0
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers.i) #11
  %call3.i = call zeroext i16 @ath9k_hw_get_scaled_power(ptr noundef %ah, i16 noundef zeroext %conv46, i8 noundef zeroext %twiceAntennaReduction) #11
  %123 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %channelFlags.i, align 2
  %125 = and i16 %124, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool8.not.i = icmp eq i16 %125, 0
  %spec.select407.i = select i1 %tobool8.not.i, i32 2, i32 4
  %spec.select.i = select i1 %tobool8.not.i, i32 3, i32 6
  %ctlNum.0.i = select i1 %tobool.not.i240, i32 12, i32 9
  %pCtlMode.0.i = select i1 %tobool.not.i240, ptr @ar9003_hw_set_power_per_rate_table.ctlModesFor11g, ptr @ar9003_hw_set_power_per_rate_table.ctlModesFor11a
  %numCtlModes.0.i = select i1 %tobool.not.i240, i32 %spec.select.i, i32 %spec.select407.i
  %ctlIndex_2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 37
  %ctlIndex_5G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 1, i32 6, i32 1, i32 1, i32 2
  %ctlIndex.0.i = select i1 %tobool.not.i240, ptr %ctlIndex_2G.i, ptr %ctlIndex_5G.i
  %conv71.i = zext i16 %cfgCtl to i32
  %126 = and i16 %cfgCtl, -16
  %ctlPowerData_2G.i74.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 0, i32 1, i32 0, i32 2
  %ctlPowerData_5G.i75.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 2, i32 0, i32 1, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 224, i16 %126)
  %cmp109.i = icmp eq i16 %126, 224
  %conv124.i = zext i16 %call3.i to i32
  %btcoex_enabled.i413.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 27
  %caps.i415.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %arrayidx157.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 4
  %arrayidx157.1.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 5
  %arrayidx157.2.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 6
  %arrayidx157.3.i = getelementptr inbounds i8, ptr %targetPowerValT2, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %if.end44
  %indvars.iv.i = phi i32 [ 0, %if.end44 ], [ %indvars.iv.next.i, %sw.epilog.i.for.body.i_crit_edge ]
  %arrayidx.i245 = getelementptr i16, ptr %pCtlMode.0.i, i32 %indvars.iv.i
  %127 = ptrtoint ptr %arrayidx.i245 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx.i245, align 2
  %129 = add i16 %128, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %129)
  %130 = icmp ult i16 %129, 2
  br i1 %130, label %if.then30.i, label %if.else31.i

if.then30.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %centers.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %centers.i, align 2
  br label %do.body.i246

if.else31.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %128)
  %tobool36.not.i = icmp sgt i16 %128, -1
  br i1 %tobool36.not.i, label %if.else38.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %118 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %118, align 2
  br label %do.body.i246

if.else38.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %116 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %116, align 2
  br label %do.body.i246

do.body.i246:                                     ; preds = %if.else38.i, %if.then37.i, %if.then30.i
  %freq.0.i = phi i16 [ %132, %if.then30.i ], [ %134, %if.then37.i ], [ %136, %if.else38.i ]
  %137 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %debug_mask.i, align 4
  %and41.i = and i32 %138, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %do.body.i246.do.end.i_crit_edge, label %if.then43.i

do.body.i246.do.end.i_crit_edge:                  ; preds = %do.body.i246
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then43.i:                                      ; preds = %do.body.i246
  call void @__sanitizer_cov_trace_pc() #13
  %conv47.i = zext i1 %130 to i32
  %139 = and i16 %128, -32768
  %and51.i = zext i16 %139 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.95, i32 noundef %indvars.iv.i, i32 noundef %numCtlModes.0.i, i32 noundef %conv47.i, i32 noundef %and51.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then43.i, %do.body.i246.do.end.i_crit_edge
  %conv74.i = zext i16 %128 to i32
  %140 = and i16 %128, 15
  %or406.i = or i16 %140, %126
  %or.i = zext i16 %or406.i to i32
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i255.land.rhs.i_crit_edge, %do.end.i
  %twiceMaxEdgePower.0430.i = phi i16 [ 63, %do.end.i ], [ %twiceMaxEdgePower.1.i, %for.inc.i255.land.rhs.i_crit_edge ]
  %i.0425.i = phi i32 [ 0, %do.end.i ], [ %inc.i253, %for.inc.i255.land.rhs.i_crit_edge ]
  %arrayidx62.i = getelementptr i8, ptr %ctlIndex.0.i, i32 %i.0425.i
  %141 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx62.i, align 1
  %conv63.i = zext i8 %142 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool64.not.i = icmp eq i8 %142, 0
  br i1 %tobool64.not.i, label %land.rhs.i.for.end.i_crit_edge, label %do.body66.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body66.i:                                      ; preds = %land.rhs.i
  %143 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %debug_mask.i, align 4
  %and68.i = and i32 %144, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %do.body66.i.do.end80.i_crit_edge, label %if.then70.i

do.body66.i.do.end80.i_crit_edge:                 ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80.i

if.then70.i:                                      ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %channel.i, align 4
  %conv77.i = zext i16 %146 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.96, i32 noundef %i.0425.i, i32 noundef %conv71.i, i32 noundef %conv74.i, i32 noundef %conv63.i, i32 noundef %conv77.i) #11
  br label %do.end80.i

do.end80.i:                                       ; preds = %if.then70.i, %do.body66.i.do.end80.i_crit_edge
  %147 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx62.i, align 1
  %conv88.i = zext i8 %148 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv88.i)
  %cmp89.i = icmp eq i32 %or.i, %conv88.i
  br i1 %cmp89.i, label %do.end80.i.if.then104.i_crit_edge, label %lor.lhs.false.i

do.end80.i.if.then104.i_crit_edge:                ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104.i

lor.lhs.false.i:                                  ; preds = %do.end80.i
  %and100.i = and i32 %conv88.i, 15
  %or101.i = or i32 %and100.i, 224
  call void @__sanitizer_cov_trace_cmp4(i32 %or101.i, i32 %or.i)
  %cmp102.i = icmp eq i32 %or101.i, %or.i
  br i1 %cmp102.i, label %lor.lhs.false.i.if.then104.i_crit_edge, label %lor.lhs.false.i.for.inc.i255_crit_edge

lor.lhs.false.i.for.inc.i255_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i255

lor.lhs.false.i.if.then104.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104.i

if.then104.i:                                     ; preds = %lor.lhs.false.i.if.then104.i_crit_edge, %do.end80.i.if.then104.i_crit_edge
  %arrayidx2.i.i247 = getelementptr %struct.ar9300_eeprom, ptr %eeprom.i, i32 0, i32 31, i32 %i.0425.i
  %arrayidx.i.i248 = getelementptr %struct.ar9300_eeprom, ptr %eeprom.i, i32 0, i32 18, i32 %i.0425.i
  %cond.i.i = select i1 %tobool.not.i240, ptr %arrayidx.i.i248, ptr %arrayidx2.i.i247
  %149 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %cond.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %150)
  %cmp10.not.i.i = icmp eq i8 %150, -1
  br i1 %cmp10.not.i.i, label %if.then104.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge, label %ath9k_hw_fbin2freq.exit.i.i

if.then104.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

ath9k_hw_fbin2freq.exit.i.i:                      ; preds = %if.then104.i
  %conv.i.i.i = zext i8 %150 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 2300
  %mul.i.i.i = mul nuw nsw i32 %conv.i.i.i, 5
  %add6.i.i.i = add nuw nsw i32 %mul.i.i.i, 4800
  %cond.i.i.i = select i1 %tobool.not.i240, i32 %add.i.i.i, i32 %add6.i.i.i
  %conv7.i.i.i = trunc i32 %cond.i.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i)
  %cmp16.i.i = icmp eq i16 %freq.0.i, %conv7.i.i.i
  br i1 %cmp16.i.i, label %ath9k_hw_fbin2freq.exit.i.i.if.then.i.i_crit_edge, label %land.rhs.i.i.1

ath9k_hw_fbin2freq.exit.i.i.if.then.i.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %ath9k_hw_fbin2freq.exit.i.i.7.if.then.i.i_crit_edge, %ath9k_hw_fbin2freq.exit.i.i.6.if.then.i.i_crit_edge, %ath9k_hw_fbin2freq.exit.i.i.5.if.then.i.i_crit_edge, %ath9k_hw_fbin2freq.exit.i.i.4.if.then.i.i_crit_edge, %ath9k_hw_fbin2freq.exit.i.i.3.if.then.i.i_crit_edge, %ath9k_hw_fbin2freq.exit.i.i.2.if.then.i.i_crit_edge, %ath9k_hw_fbin2freq.exit.i.i.1.if.then.i.i_crit_edge, %ath9k_hw_fbin2freq.exit.i.i.if.then.i.i_crit_edge
  %edge.087.i.i.lcssa344 = phi i32 [ 0, %ath9k_hw_fbin2freq.exit.i.i.if.then.i.i_crit_edge ], [ 1, %ath9k_hw_fbin2freq.exit.i.i.1.if.then.i.i_crit_edge ], [ 2, %ath9k_hw_fbin2freq.exit.i.i.2.if.then.i.i_crit_edge ], [ 3, %ath9k_hw_fbin2freq.exit.i.i.3.if.then.i.i_crit_edge ], [ 4, %ath9k_hw_fbin2freq.exit.i.i.4.if.then.i.i_crit_edge ], [ 5, %ath9k_hw_fbin2freq.exit.i.i.5.if.then.i.i_crit_edge ], [ 6, %ath9k_hw_fbin2freq.exit.i.i.6.if.then.i.i_crit_edge ], [ 7, %ath9k_hw_fbin2freq.exit.i.i.7.if.then.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.cal_ctl_data_2g, ptr %ctlPowerData_2G.i74.i.i, i32 %i.0425.i
  %arrayidx2.i.i.i = getelementptr [4 x i8], ptr %arrayidx.i.i.i, i32 0, i32 %edge.087.i.i.lcssa344
  %arrayidx4.i.i.i = getelementptr %struct.cal_ctl_data_5g, ptr %ctlPowerData_5G.i75.i.i, i32 %i.0425.i
  %arrayidx6.i.i.i = getelementptr [8 x i8], ptr %arrayidx4.i.i.i, i32 0, i32 %edge.087.i.i.lcssa344
  %retval.0.in.in.in.i.i.i = select i1 %tobool.not.i240, ptr %arrayidx2.i.i.i, ptr %arrayidx6.i.i.i
  %151 = ptrtoint ptr %retval.0.in.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %retval.0.in.in.i.i.i = load i8, ptr %retval.0.in.in.in.i.i.i, align 1
  br label %for.end.i.i

if.then29.i.i:                                    ; preds = %if.else.i.i.7.if.then29.i.i_crit_edge, %if.else.i.i.6.if.then29.i.i_crit_edge, %if.else.i.i.5.if.then29.i.i_crit_edge, %if.else.i.i.4.if.then29.i.i_crit_edge, %if.else.i.i.3.if.then29.i.i_crit_edge, %if.else.i.i.2.if.then29.i.i_crit_edge, %if.else.i.i.1.if.then29.i.i_crit_edge
  %edge.087.i.i.lcssa345 = phi i32 [ 0, %if.else.i.i.1.if.then29.i.i_crit_edge ], [ 1, %if.else.i.i.2.if.then29.i.i_crit_edge ], [ 2, %if.else.i.i.3.if.then29.i.i_crit_edge ], [ 3, %if.else.i.i.4.if.then29.i.i_crit_edge ], [ 4, %if.else.i.i.5.if.then29.i.i_crit_edge ], [ 5, %if.else.i.i.6.if.then29.i.i_crit_edge ], [ 6, %if.else.i.i.7.if.then29.i.i_crit_edge ]
  %arrayidx6.i78.i.i = getelementptr i8, ptr %cond.i.i, i32 %edge.087.i.i.lcssa345
  %152 = ptrtoint ptr %arrayidx6.i78.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx6.i78.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %153)
  %cmp.i.i.i.i249 = icmp eq i8 %153, -1
  %conv.i.i.i.i250 = zext i8 %153 to i16
  br i1 %tobool.not.i240, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then29.i.i
  %add.i.i.i.i251 = add nuw nsw i16 %conv.i.i.i.i250, 2300
  %retval.0.i.i.i.i252 = select i1 %cmp.i.i.i.i249, i16 255, i16 %add.i.i.i.i251
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i.i.i252, i16 %freq.0.i)
  %cmp.i79.i.i = icmp ult i16 %retval.0.i.i.i.i252, %freq.0.i
  br i1 %cmp.i79.i.i, label %land.lhs.true.i.i.i, label %if.then.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge

if.then.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.cal_ctl_data_2g, ptr %ctlPowerData_2G.i74.i.i, i32 %i.0425.i
  %arrayidx11.i.i.i = getelementptr [4 x i8], ptr %arrayidx9.i.i.i, i32 0, i32 %edge.087.i.i.lcssa345
  %154 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx11.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %155)
  %tobool13.not.inv.i.i.i = icmp ugt i8 %155, 63
  br i1 %tobool13.not.inv.i.i.i, label %land.lhs.true.i.i.i.for.end.i.i_crit_edge, label %land.lhs.true.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge

land.lhs.true.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

land.lhs.true.i.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

if.else.i.i.i:                                    ; preds = %if.then29.i.i
  %mul.i72.i.i.i = mul nuw nsw i16 %conv.i.i.i.i250, 5
  %add6.i73.i.i.i = add nuw nsw i16 %mul.i72.i.i.i, 4800
  %retval.0.i76.i.i.i = select i1 %cmp.i.i.i.i249, i16 255, i16 %add6.i73.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i76.i.i.i, i16 %freq.0.i)
  %cmp27.i.i.i = icmp ult i16 %retval.0.i76.i.i.i, %freq.0.i
  br i1 %cmp27.i.i.i, label %land.lhs.true29.i.i.i, label %if.else.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge

if.else.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

land.lhs.true29.i.i.i:                            ; preds = %if.else.i.i.i
  %arrayidx30.i.i.i = getelementptr %struct.cal_ctl_data_5g, ptr %ctlPowerData_5G.i75.i.i, i32 %i.0425.i
  %arrayidx33.i.i.i = getelementptr [8 x i8], ptr %arrayidx30.i.i.i, i32 0, i32 %edge.087.i.i.lcssa345
  %156 = ptrtoint ptr %arrayidx33.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx33.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %157)
  %tobool37.not.inv.i.i.i = icmp ugt i8 %157, 63
  br i1 %tobool37.not.inv.i.i.i, label %land.lhs.true29.i.i.i.for.end.i.i_crit_edge, label %land.lhs.true29.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge

land.lhs.true29.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %land.lhs.true29.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

land.lhs.true29.i.i.i.for.end.i.i_crit_edge:      ; preds = %land.lhs.true29.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

land.rhs.i.i.1:                                   ; preds = %ath9k_hw_fbin2freq.exit.i.i
  %arrayidx8.i.i.1 = getelementptr i8, ptr %cond.i.i, i32 1
  %158 = ptrtoint ptr %arrayidx8.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx8.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %159)
  %cmp10.not.i.i.1 = icmp eq i8 %159, -1
  br i1 %cmp10.not.i.i.1, label %land.rhs.i.i.1.ar9003_hw_get_max_edge_power.exit.i_crit_edge, label %ath9k_hw_fbin2freq.exit.i.i.1

land.rhs.i.i.1.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %land.rhs.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

ath9k_hw_fbin2freq.exit.i.i.1:                    ; preds = %land.rhs.i.i.1
  %conv.i.i.i.1 = zext i8 %159 to i32
  %add.i.i.i.1 = add nuw nsw i32 %conv.i.i.i.1, 2300
  %mul.i.i.i.1 = mul nuw nsw i32 %conv.i.i.i.1, 5
  %add6.i.i.i.1 = add nuw nsw i32 %mul.i.i.i.1, 4800
  %cond.i.i.i.1 = select i1 %tobool.not.i240, i32 %add.i.i.i.1, i32 %add6.i.i.i.1
  %conv7.i.i.i.1 = trunc i32 %cond.i.i.i.1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.1)
  %cmp16.i.i.1 = icmp eq i16 %freq.0.i, %conv7.i.i.i.1
  br i1 %cmp16.i.i.1, label %ath9k_hw_fbin2freq.exit.i.i.1.if.then.i.i_crit_edge, label %if.else.i.i.1

ath9k_hw_fbin2freq.exit.i.i.1.if.then.i.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.else.i.i.1:                                    ; preds = %ath9k_hw_fbin2freq.exit.i.i.1
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.1)
  %cmp27.i.i.1 = icmp ult i16 %freq.0.i, %conv7.i.i.i.1
  br i1 %cmp27.i.i.1, label %if.else.i.i.1.if.then29.i.i_crit_edge, label %land.rhs.i.i.2

if.else.i.i.1.if.then29.i.i_crit_edge:            ; preds = %if.else.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i

land.rhs.i.i.2:                                   ; preds = %if.else.i.i.1
  %arrayidx8.i.i.2 = getelementptr i8, ptr %cond.i.i, i32 2
  %160 = ptrtoint ptr %arrayidx8.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx8.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %161)
  %cmp10.not.i.i.2 = icmp eq i8 %161, -1
  br i1 %cmp10.not.i.i.2, label %land.rhs.i.i.2.ar9003_hw_get_max_edge_power.exit.i_crit_edge, label %ath9k_hw_fbin2freq.exit.i.i.2

land.rhs.i.i.2.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %land.rhs.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

ath9k_hw_fbin2freq.exit.i.i.2:                    ; preds = %land.rhs.i.i.2
  %conv.i.i.i.2 = zext i8 %161 to i32
  %add.i.i.i.2 = add nuw nsw i32 %conv.i.i.i.2, 2300
  %mul.i.i.i.2 = mul nuw nsw i32 %conv.i.i.i.2, 5
  %add6.i.i.i.2 = add nuw nsw i32 %mul.i.i.i.2, 4800
  %cond.i.i.i.2 = select i1 %tobool.not.i240, i32 %add.i.i.i.2, i32 %add6.i.i.i.2
  %conv7.i.i.i.2 = trunc i32 %cond.i.i.i.2 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.2)
  %cmp16.i.i.2 = icmp eq i16 %freq.0.i, %conv7.i.i.i.2
  br i1 %cmp16.i.i.2, label %ath9k_hw_fbin2freq.exit.i.i.2.if.then.i.i_crit_edge, label %if.else.i.i.2

ath9k_hw_fbin2freq.exit.i.i.2.if.then.i.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.else.i.i.2:                                    ; preds = %ath9k_hw_fbin2freq.exit.i.i.2
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.2)
  %cmp27.i.i.2 = icmp ult i16 %freq.0.i, %conv7.i.i.i.2
  br i1 %cmp27.i.i.2, label %if.else.i.i.2.if.then29.i.i_crit_edge, label %land.rhs.i.i.3

if.else.i.i.2.if.then29.i.i_crit_edge:            ; preds = %if.else.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i

land.rhs.i.i.3:                                   ; preds = %if.else.i.i.2
  %arrayidx8.i.i.3 = getelementptr i8, ptr %cond.i.i, i32 3
  %162 = ptrtoint ptr %arrayidx8.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx8.i.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %163)
  %cmp10.not.i.i.3 = icmp eq i8 %163, -1
  br i1 %cmp10.not.i.i.3, label %land.rhs.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge, label %ath9k_hw_fbin2freq.exit.i.i.3

land.rhs.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %land.rhs.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

ath9k_hw_fbin2freq.exit.i.i.3:                    ; preds = %land.rhs.i.i.3
  %conv.i.i.i.3 = zext i8 %163 to i32
  %add.i.i.i.3 = add nuw nsw i32 %conv.i.i.i.3, 2300
  %mul.i.i.i.3 = mul nuw nsw i32 %conv.i.i.i.3, 5
  %add6.i.i.i.3 = add nuw nsw i32 %mul.i.i.i.3, 4800
  %cond.i.i.i.3 = select i1 %tobool.not.i240, i32 %add.i.i.i.3, i32 %add6.i.i.i.3
  %conv7.i.i.i.3 = trunc i32 %cond.i.i.i.3 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.3)
  %cmp16.i.i.3 = icmp eq i16 %freq.0.i, %conv7.i.i.i.3
  br i1 %cmp16.i.i.3, label %ath9k_hw_fbin2freq.exit.i.i.3.if.then.i.i_crit_edge, label %if.else.i.i.3

ath9k_hw_fbin2freq.exit.i.i.3.if.then.i.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.else.i.i.3:                                    ; preds = %ath9k_hw_fbin2freq.exit.i.i.3
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.3)
  %cmp27.i.i.3 = icmp ult i16 %freq.0.i, %conv7.i.i.i.3
  br i1 %cmp27.i.i.3, label %if.else.i.i.3.if.then29.i.i_crit_edge, label %for.inc.i.i.3

if.else.i.i.3.if.then29.i.i_crit_edge:            ; preds = %if.else.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i

for.inc.i.i.3:                                    ; preds = %if.else.i.i.3
  br i1 %tobool.not.i240, label %for.inc.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge, label %land.rhs.i.i.4

for.inc.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

land.rhs.i.i.4:                                   ; preds = %for.inc.i.i.3
  %arrayidx8.i.i.4 = getelementptr i8, ptr %cond.i.i, i32 4
  %164 = ptrtoint ptr %arrayidx8.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx8.i.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %165)
  %cmp10.not.i.i.4 = icmp eq i8 %165, -1
  br i1 %cmp10.not.i.i.4, label %land.rhs.i.i.4.ar9003_hw_get_max_edge_power.exit.i_crit_edge, label %ath9k_hw_fbin2freq.exit.i.i.4

land.rhs.i.i.4.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %land.rhs.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

ath9k_hw_fbin2freq.exit.i.i.4:                    ; preds = %land.rhs.i.i.4
  %conv.i.i.i.4 = zext i8 %165 to i32
  %add.i.i.i.4 = add nuw nsw i32 %conv.i.i.i.4, 2300
  %mul.i.i.i.4 = mul nuw nsw i32 %conv.i.i.i.4, 5
  %add6.i.i.i.4 = add nuw nsw i32 %mul.i.i.i.4, 4800
  %cond.i.i.i.4 = select i1 %tobool.not.i240, i32 %add.i.i.i.4, i32 %add6.i.i.i.4
  %conv7.i.i.i.4 = trunc i32 %cond.i.i.i.4 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.4)
  %cmp16.i.i.4 = icmp eq i16 %freq.0.i, %conv7.i.i.i.4
  br i1 %cmp16.i.i.4, label %ath9k_hw_fbin2freq.exit.i.i.4.if.then.i.i_crit_edge, label %if.else.i.i.4

ath9k_hw_fbin2freq.exit.i.i.4.if.then.i.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.else.i.i.4:                                    ; preds = %ath9k_hw_fbin2freq.exit.i.i.4
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.4)
  %cmp27.i.i.4 = icmp ult i16 %freq.0.i, %conv7.i.i.i.4
  br i1 %cmp27.i.i.4, label %if.else.i.i.4.if.then29.i.i_crit_edge, label %land.rhs.i.i.5

if.else.i.i.4.if.then29.i.i_crit_edge:            ; preds = %if.else.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i

land.rhs.i.i.5:                                   ; preds = %if.else.i.i.4
  %arrayidx8.i.i.5 = getelementptr i8, ptr %cond.i.i, i32 5
  %166 = ptrtoint ptr %arrayidx8.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx8.i.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %167)
  %cmp10.not.i.i.5 = icmp eq i8 %167, -1
  br i1 %cmp10.not.i.i.5, label %land.rhs.i.i.5.ar9003_hw_get_max_edge_power.exit.i_crit_edge, label %ath9k_hw_fbin2freq.exit.i.i.5

land.rhs.i.i.5.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %land.rhs.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

ath9k_hw_fbin2freq.exit.i.i.5:                    ; preds = %land.rhs.i.i.5
  %conv.i.i.i.5 = zext i8 %167 to i32
  %add.i.i.i.5 = add nuw nsw i32 %conv.i.i.i.5, 2300
  %mul.i.i.i.5 = mul nuw nsw i32 %conv.i.i.i.5, 5
  %add6.i.i.i.5 = add nuw nsw i32 %mul.i.i.i.5, 4800
  %cond.i.i.i.5 = select i1 %tobool.not.i240, i32 %add.i.i.i.5, i32 %add6.i.i.i.5
  %conv7.i.i.i.5 = trunc i32 %cond.i.i.i.5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.5)
  %cmp16.i.i.5 = icmp eq i16 %freq.0.i, %conv7.i.i.i.5
  br i1 %cmp16.i.i.5, label %ath9k_hw_fbin2freq.exit.i.i.5.if.then.i.i_crit_edge, label %if.else.i.i.5

ath9k_hw_fbin2freq.exit.i.i.5.if.then.i.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.else.i.i.5:                                    ; preds = %ath9k_hw_fbin2freq.exit.i.i.5
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.5)
  %cmp27.i.i.5 = icmp ult i16 %freq.0.i, %conv7.i.i.i.5
  br i1 %cmp27.i.i.5, label %if.else.i.i.5.if.then29.i.i_crit_edge, label %land.rhs.i.i.6

if.else.i.i.5.if.then29.i.i_crit_edge:            ; preds = %if.else.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i

land.rhs.i.i.6:                                   ; preds = %if.else.i.i.5
  %arrayidx8.i.i.6 = getelementptr i8, ptr %cond.i.i, i32 6
  %168 = ptrtoint ptr %arrayidx8.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx8.i.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %169)
  %cmp10.not.i.i.6 = icmp eq i8 %169, -1
  br i1 %cmp10.not.i.i.6, label %land.rhs.i.i.6.ar9003_hw_get_max_edge_power.exit.i_crit_edge, label %ath9k_hw_fbin2freq.exit.i.i.6

land.rhs.i.i.6.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %land.rhs.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

ath9k_hw_fbin2freq.exit.i.i.6:                    ; preds = %land.rhs.i.i.6
  %conv.i.i.i.6 = zext i8 %169 to i32
  %add.i.i.i.6 = add nuw nsw i32 %conv.i.i.i.6, 2300
  %mul.i.i.i.6 = mul nuw nsw i32 %conv.i.i.i.6, 5
  %add6.i.i.i.6 = add nuw nsw i32 %mul.i.i.i.6, 4800
  %cond.i.i.i.6 = select i1 %tobool.not.i240, i32 %add.i.i.i.6, i32 %add6.i.i.i.6
  %conv7.i.i.i.6 = trunc i32 %cond.i.i.i.6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.6)
  %cmp16.i.i.6 = icmp eq i16 %freq.0.i, %conv7.i.i.i.6
  br i1 %cmp16.i.i.6, label %ath9k_hw_fbin2freq.exit.i.i.6.if.then.i.i_crit_edge, label %if.else.i.i.6

ath9k_hw_fbin2freq.exit.i.i.6.if.then.i.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.else.i.i.6:                                    ; preds = %ath9k_hw_fbin2freq.exit.i.i.6
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.6)
  %cmp27.i.i.6 = icmp ult i16 %freq.0.i, %conv7.i.i.i.6
  br i1 %cmp27.i.i.6, label %if.else.i.i.6.if.then29.i.i_crit_edge, label %land.rhs.i.i.7

if.else.i.i.6.if.then29.i.i_crit_edge:            ; preds = %if.else.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i

land.rhs.i.i.7:                                   ; preds = %if.else.i.i.6
  %arrayidx8.i.i.7 = getelementptr i8, ptr %cond.i.i, i32 7
  %170 = ptrtoint ptr %arrayidx8.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx8.i.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %171)
  %cmp10.not.i.i.7 = icmp eq i8 %171, -1
  br i1 %cmp10.not.i.i.7, label %land.rhs.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge, label %ath9k_hw_fbin2freq.exit.i.i.7

land.rhs.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %land.rhs.i.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

ath9k_hw_fbin2freq.exit.i.i.7:                    ; preds = %land.rhs.i.i.7
  %conv.i.i.i.7 = zext i8 %171 to i32
  %add.i.i.i.7 = add nuw nsw i32 %conv.i.i.i.7, 2300
  %mul.i.i.i.7 = mul nuw nsw i32 %conv.i.i.i.7, 5
  %add6.i.i.i.7 = add nuw nsw i32 %mul.i.i.i.7, 4800
  %cond.i.i.i.7 = select i1 %tobool.not.i240, i32 %add.i.i.i.7, i32 %add6.i.i.i.7
  %conv7.i.i.i.7 = trunc i32 %cond.i.i.i.7 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.7)
  %cmp16.i.i.7 = icmp eq i16 %freq.0.i, %conv7.i.i.i.7
  br i1 %cmp16.i.i.7, label %ath9k_hw_fbin2freq.exit.i.i.7.if.then.i.i_crit_edge, label %if.else.i.i.7

ath9k_hw_fbin2freq.exit.i.i.7.if.then.i.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.i.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.else.i.i.7:                                    ; preds = %ath9k_hw_fbin2freq.exit.i.i.7
  call void @__sanitizer_cov_trace_cmp2(i16 %freq.0.i, i16 %conv7.i.i.i.7)
  %cmp27.i.i.7 = icmp ult i16 %freq.0.i, %conv7.i.i.i.7
  br i1 %cmp27.i.i.7, label %if.else.i.i.7.if.then29.i.i_crit_edge, label %if.else.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge

if.else.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge: ; preds = %if.else.i.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_get_max_edge_power.exit.i

if.else.i.i.7.if.then29.i.i_crit_edge:            ; preds = %if.else.i.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i

for.end.i.i:                                      ; preds = %land.lhs.true29.i.i.i.for.end.i.i_crit_edge, %land.lhs.true.i.i.i.for.end.i.i_crit_edge, %if.then.i.i
  %twiceMaxEdgePower.0.in.in.i.i = phi i8 [ %retval.0.in.in.i.i.i, %if.then.i.i ], [ %155, %land.lhs.true.i.i.i.for.end.i.i_crit_edge ], [ %157, %land.lhs.true29.i.i.i.for.end.i.i_crit_edge ]
  %twiceMaxEdgePower.0.in.i.i = and i8 %twiceMaxEdgePower.0.in.in.i.i, 63
  %twiceMaxEdgePower.0.i.i = zext i8 %twiceMaxEdgePower.0.in.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %twiceMaxEdgePower.0.in.i.i)
  %tobool36.not.i.i = icmp eq i8 %twiceMaxEdgePower.0.in.i.i, 0
  %spec.select99.i.i = select i1 %tobool36.not.i.i, i16 60, i16 %twiceMaxEdgePower.0.i.i
  br label %ar9003_hw_get_max_edge_power.exit.i

ar9003_hw_get_max_edge_power.exit.i:              ; preds = %for.end.i.i, %if.else.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %land.rhs.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %land.rhs.i.i.6.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %land.rhs.i.i.5.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %land.rhs.i.i.4.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %for.inc.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %land.rhs.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %land.rhs.i.i.2.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %land.rhs.i.i.1.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %land.lhs.true29.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %if.else.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %land.lhs.true.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %if.then.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge, %if.then104.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge
  %twiceMaxEdgePower.083.i.i = phi i16 [ 63, %if.else.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %if.then.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.lhs.true.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.lhs.true29.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ %twiceMaxEdgePower.0.i.i, %for.end.i.i ], [ 63, %if.else.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.6.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.5.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.4.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %for.inc.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.2.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.1.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %if.then104.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ]
  %172 = phi i16 [ 63, %if.else.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %if.then.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.lhs.true.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.lhs.true29.i.i.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ %spec.select99.i.i, %for.end.i.i ], [ 63, %if.else.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.7.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.6.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.5.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.4.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %for.inc.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.3.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.2.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %land.rhs.i.i.1.ar9003_hw_get_max_edge_power.exit.i_crit_edge ], [ 63, %if.then104.i.ar9003_hw_get_max_edge_power.exit.i_crit_edge ]
  %twiceMaxEdgePower.1.i.i = select i1 %tobool.not.i240, i16 %172, i16 %twiceMaxEdgePower.083.i.i
  br i1 %cmp109.i, label %if.then111.i, label %ar9003_hw_get_max_edge_power.exit.i.for.end.i_crit_edge

ar9003_hw_get_max_edge_power.exit.i.for.end.i_crit_edge: ; preds = %ar9003_hw_get_max_edge_power.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then111.i:                                     ; preds = %ar9003_hw_get_max_edge_power.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %173 = call i16 @llvm.umin.i16(i16 %twiceMaxEdgePower.0430.i, i16 %twiceMaxEdgePower.1.i.i) #11
  br label %for.inc.i255

for.inc.i255:                                     ; preds = %if.then111.i, %lor.lhs.false.i.for.inc.i255_crit_edge
  %twiceMaxEdgePower.1.i = phi i16 [ %173, %if.then111.i ], [ %twiceMaxEdgePower.0430.i, %lor.lhs.false.i.for.inc.i255_crit_edge ]
  %inc.i253 = add nuw nsw i32 %i.0425.i, 1
  %exitcond.not.i254 = icmp eq i32 %inc.i253, %ctlNum.0.i
  br i1 %exitcond.not.i254, label %for.inc.i255.for.end.i_crit_edge, label %for.inc.i255.land.rhs.i_crit_edge

for.inc.i255.land.rhs.i_crit_edge:                ; preds = %for.inc.i255
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc.i255.for.end.i_crit_edge:                 ; preds = %for.inc.i255
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i255.for.end.i_crit_edge, %ar9003_hw_get_max_edge_power.exit.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %twiceMaxEdgePower.2.i = phi i16 [ %twiceMaxEdgePower.0430.i, %land.rhs.i.for.end.i_crit_edge ], [ %twiceMaxEdgePower.1.i, %for.inc.i255.for.end.i_crit_edge ], [ %twiceMaxEdgePower.1.i.i, %ar9003_hw_get_max_edge_power.exit.i.for.end.i_crit_edge ]
  %174 = call i16 @llvm.umin.i16(i16 %twiceMaxEdgePower.2.i, i16 %call3.i) #11
  %cond132.off0.i = trunc i16 %174 to i8
  %175 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %debug_mask.i, align 4
  %and137.i = and i32 %176, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  br i1 %tobool138.not.i, label %for.end.i.do.end149.i_crit_edge, label %if.then139.i

for.end.i.do.end149.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end149.i

if.then139.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv123.i = zext i16 %twiceMaxEdgePower.2.i to i32
  %cond132.off0.mask.i = and i16 %174, 255
  %conv146.i = zext i16 %cond132.off0.mask.i to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.97, i32 noundef %indvars.iv.i, i32 noundef %conv74.i, i32 noundef %conv123.i, i32 noundef %conv124.i, i32 noundef %conv146.i) #11
  br label %do.end149.i

do.end149.i:                                      ; preds = %if.then139.i, %for.end.i.do.end149.i_crit_edge
  %177 = zext i16 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.141)
  switch i16 %128, label %do.end149.i.sw.epilog.i_crit_edge [
    i16 1, label %do.end149.i.sw.epilog.sink.split.i_crit_edge
    i16 0, label %do.end149.i.sw.bb175.i_crit_edge
    i16 2, label %do.end149.i.sw.bb175.i_crit_edge346
    i16 6, label %do.end149.i.sw.bb198.i_crit_edge
    i16 5, label %do.end149.i.sw.bb198.i_crit_edge347
    i16 8, label %do.end149.i.sw.bb243.i_crit_edge
    i16 7, label %do.end149.i.sw.bb243.i_crit_edge348
  ]

do.end149.i.sw.bb243.i_crit_edge348:              ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb243.i

do.end149.i.sw.bb243.i_crit_edge:                 ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb243.i

do.end149.i.sw.bb198.i_crit_edge347:              ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb198.i

do.end149.i.sw.bb198.i_crit_edge:                 ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb198.i

do.end149.i.sw.bb175.i_crit_edge346:              ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb175.i

do.end149.i.sw.bb175.i_crit_edge:                 ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb175.i

do.end149.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

do.end149.i.sw.epilog.i_crit_edge:                ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb175.i:                                       ; preds = %do.end149.i.sw.bb175.i_crit_edge, %do.end149.i.sw.bb175.i_crit_edge346
  br label %sw.epilog.sink.split.i

sw.bb198.i:                                       ; preds = %do.end149.i.sw.bb198.i_crit_edge, %do.end149.i.sw.bb198.i_crit_edge347
  %conv224.i = trunc i16 %128 to i8
  br label %for.body202.i

for.body202.i:                                    ; preds = %for.inc240.i.for.body202.i_crit_edge, %sw.bb198.i
  %i.3432.i = phi i32 [ 8, %sw.bb198.i ], [ %inc241.i, %for.inc240.i.for.body202.i_crit_edge ]
  %arrayidx203.i = getelementptr i8, ptr %targetPowerValT2, i32 %i.3432.i
  %178 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx203.i, align 1
  %180 = call i8 @llvm.umin.i8(i8 %179, i8 %cond132.off0.i) #11
  %181 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %arrayidx203.i, align 1
  %182 = ptrtoint ptr %btcoex_enabled.i413.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %btcoex_enabled.i413.i, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.i.i = icmp eq i8 %183, 0
  br i1 %tobool.not.i.i, label %for.body202.i.for.inc240.i_crit_edge, label %ath9k_hw_mci_is_enabled.exit.i

for.body202.i.for.inc240.i_crit_edge:             ; preds = %for.body202.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc240.i

ath9k_hw_mci_is_enabled.exit.i:                   ; preds = %for.body202.i
  %184 = ptrtoint ptr %caps.i415.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %caps.i415.i, align 4
  %and.i.i = and i32 %185, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.i.not.i, label %ath9k_hw_mci_is_enabled.exit.i.for.inc240.i_crit_edge, label %if.then219.i

ath9k_hw_mci_is_enabled.exit.i.for.inc240.i_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc240.i

if.then219.i:                                     ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call225.i = call zeroext i16 @ar9003_mci_get_max_txpower(ptr noundef %ah, i8 noundef zeroext %conv224.i) #11
  %conv227.i = zext i8 %180 to i32
  %conv228.i = zext i16 %call225.i to i32
  %186 = call i32 @llvm.umin.i32(i32 %conv227.i, i32 %conv228.i) #11
  %conv237.i = trunc i32 %186 to i8
  %187 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv237.i, ptr %arrayidx203.i, align 1
  br label %for.inc240.i

for.inc240.i:                                     ; preds = %if.then219.i, %ath9k_hw_mci_is_enabled.exit.i.for.inc240.i_crit_edge, %for.body202.i.for.inc240.i_crit_edge
  %inc241.i = add nuw nsw i32 %i.3432.i, 1
  %exitcond444.not.i = icmp eq i32 %inc241.i, 22
  br i1 %exitcond444.not.i, label %for.inc240.i.sw.epilog.i_crit_edge, label %for.inc240.i.for.body202.i_crit_edge

for.inc240.i.for.body202.i_crit_edge:             ; preds = %for.inc240.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body202.i

for.inc240.i.sw.epilog.i_crit_edge:               ; preds = %for.inc240.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb243.i:                                       ; preds = %do.end149.i.sw.bb243.i_crit_edge, %do.end149.i.sw.bb243.i_crit_edge348
  %conv269.i = trunc i16 %128 to i8
  br label %for.body247.i

for.body247.i:                                    ; preds = %for.inc285.i.for.body247.i_crit_edge, %sw.bb243.i
  %i.4431.i = phi i32 [ 22, %sw.bb243.i ], [ %inc286.i, %for.inc285.i.for.body247.i_crit_edge ]
  %arrayidx248.i = getelementptr i8, ptr %targetPowerValT2, i32 %i.4431.i
  %188 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx248.i, align 1
  %190 = call i8 @llvm.umin.i8(i8 %189, i8 %cond132.off0.i) #11
  %191 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx248.i, align 1
  %192 = ptrtoint ptr %btcoex_enabled.i413.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %btcoex_enabled.i413.i, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool.not.i414.i = icmp eq i8 %193, 0
  br i1 %tobool.not.i414.i, label %for.body247.i.for.inc285.i_crit_edge, label %ath9k_hw_mci_is_enabled.exit419.i

for.body247.i.for.inc285.i_crit_edge:             ; preds = %for.body247.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc285.i

ath9k_hw_mci_is_enabled.exit419.i:                ; preds = %for.body247.i
  %194 = ptrtoint ptr %caps.i415.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %caps.i415.i, align 4
  %and.i416.i = and i32 %195, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i416.i)
  %tobool1.i417.not.i = icmp eq i32 %and.i416.i, 0
  br i1 %tobool1.i417.not.i, label %ath9k_hw_mci_is_enabled.exit419.i.for.inc285.i_crit_edge, label %if.then264.i

ath9k_hw_mci_is_enabled.exit419.i.for.inc285.i_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit419.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc285.i

if.then264.i:                                     ; preds = %ath9k_hw_mci_is_enabled.exit419.i
  call void @__sanitizer_cov_trace_pc() #13
  %call270.i = call zeroext i16 @ar9003_mci_get_max_txpower(ptr noundef %ah, i8 noundef zeroext %conv269.i) #11
  %conv272.i = zext i8 %190 to i32
  %conv273.i = zext i16 %call270.i to i32
  %196 = call i32 @llvm.umin.i32(i32 %conv272.i, i32 %conv273.i) #11
  %conv282.i = trunc i32 %196 to i8
  %197 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv282.i, ptr %arrayidx248.i, align 1
  br label %for.inc285.i

for.inc285.i:                                     ; preds = %if.then264.i, %ath9k_hw_mci_is_enabled.exit419.i.for.inc285.i_crit_edge, %for.body247.i.for.inc285.i_crit_edge
  %inc286.i = add nuw nsw i32 %i.4431.i, 1
  %exitcond443.not.i = icmp eq i32 %inc286.i, 36
  br i1 %exitcond443.not.i, label %for.inc285.i.sw.epilog.i_crit_edge, label %for.inc285.i.for.body247.i_crit_edge

for.inc285.i.for.body247.i_crit_edge:             ; preds = %for.inc285.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body247.i

for.inc285.i.sw.epilog.i_crit_edge:               ; preds = %for.inc285.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb175.i, %do.end149.i.sw.epilog.sink.split.i_crit_edge
  %pPwrArray.sink458.i = phi ptr [ %targetPowerValT2, %sw.bb175.i ], [ %arrayidx157.i, %do.end149.i.sw.epilog.sink.split.i_crit_edge ]
  %arrayidx180.1.sink456.i = phi ptr [ %arrayidx3.i.i, %sw.bb175.i ], [ %arrayidx157.1.i, %do.end149.i.sw.epilog.sink.split.i_crit_edge ]
  %arrayidx180.2.sink454.i = phi ptr [ %arrayidx6.i39.i, %sw.bb175.i ], [ %arrayidx157.2.i, %do.end149.i.sw.epilog.sink.split.i_crit_edge ]
  %arrayidx180.3.sink452.i = phi ptr [ %arrayidx9.i.i, %sw.bb175.i ], [ %arrayidx157.3.i, %do.end149.i.sw.epilog.sink.split.i_crit_edge ]
  %198 = ptrtoint ptr %pPwrArray.sink458.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %pPwrArray.sink458.i, align 1
  %200 = call i8 @llvm.umin.i8(i8 %199, i8 %cond132.off0.i) #11
  %201 = ptrtoint ptr %pPwrArray.sink458.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %pPwrArray.sink458.i, align 1
  %202 = ptrtoint ptr %arrayidx180.1.sink456.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx180.1.sink456.i, align 1
  %204 = call i8 @llvm.umin.i8(i8 %203, i8 %cond132.off0.i) #11
  %205 = ptrtoint ptr %arrayidx180.1.sink456.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %arrayidx180.1.sink456.i, align 1
  %206 = ptrtoint ptr %arrayidx180.2.sink454.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx180.2.sink454.i, align 1
  %208 = call i8 @llvm.umin.i8(i8 %207, i8 %cond132.off0.i) #11
  %209 = ptrtoint ptr %arrayidx180.2.sink454.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx180.2.sink454.i, align 1
  %210 = ptrtoint ptr %arrayidx180.3.sink452.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx180.3.sink452.i, align 1
  %212 = call i8 @llvm.umin.i8(i8 %211, i8 %cond132.off0.i) #11
  %213 = ptrtoint ptr %arrayidx180.3.sink452.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %arrayidx180.3.sink452.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %for.inc285.i.sw.epilog.i_crit_edge, %for.inc240.i.sw.epilog.i_crit_edge, %do.end149.i.sw.epilog.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond447.not.i = icmp eq i32 %indvars.iv.next.i, %numCtlModes.0.i
  br i1 %exitcond447.not.i, label %ar9003_hw_set_power_per_rate_table.exit, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

ar9003_hw_set_power_per_rate_table.exit:          ; preds = %sw.epilog.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers.i) #11
  %214 = call ptr @memcpy(ptr %targetPowerValT2_tpc, ptr %targetPowerValT2, i32 36)
  %call49 = call zeroext i1 @ar9003_is_paprd_enabled(ptr noundef %ah) #11
  br i1 %call49, label %for.cond51.preheader, label %ar9003_hw_set_power_per_rate_table.exit.if.end83_crit_edge

ar9003_hw_set_power_per_rate_table.exit.if.end83_crit_edge: ; preds = %ar9003_hw_set_power_per_rate_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

for.cond51.preheader:                             ; preds = %ar9003_hw_set_power_per_rate_table.exit
  %paprd_ratemask55 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 120
  br label %for.body54

for.body54:                                       ; preds = %for.inc80.for.body54_crit_edge, %for.cond51.preheader
  %i.1300 = phi i32 [ 0, %for.cond51.preheader ], [ %inc81, %for.inc80.for.body54_crit_edge ]
  %215 = ptrtoint ptr %paprd_ratemask55 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %paprd_ratemask55, align 4
  %shl56 = shl nuw i32 1, %i.1300
  %and57 = and i32 %216, %shl56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %for.body54.for.inc80_crit_edge, label %land.lhs.true59

for.body54.for.inc80_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

land.lhs.true59:                                  ; preds = %for.body54
  %arrayidx60 = getelementptr [36 x i8], ptr %targetPowerValT2, i32 0, i32 %i.1300
  %217 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %218 to i32
  %arrayidx62 = getelementptr [36 x i8], ptr %target_power_val_t2_eep, i32 0, i32 %i.1300
  %219 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %220 to i32
  %sub64 = sub nsw i32 %conv61, %conv63
  %221 = call i32 @llvm.abs.i32(i32 %sub64, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %paprd_scale_factor.0)
  %cmp69 = icmp ugt i32 %221, %paprd_scale_factor.0
  br i1 %cmp69, label %if.then71, label %land.lhs.true59.for.inc80_crit_edge

land.lhs.true59.for.inc80_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.then71:                                        ; preds = %land.lhs.true59
  %neg = xor i32 %shl56, -1
  %and74 = and i32 %216, %neg
  %222 = ptrtoint ptr %paprd_ratemask55 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %and74, ptr %paprd_ratemask55, align 4
  %223 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %debug_mask.i, align 4
  %and75 = and i32 %224, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then71.for.inc80_crit_edge, label %if.then77

if.then71.for.inc80_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.then77:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.93, i32 noundef %i.1300) #11
  br label %for.inc80

for.inc80:                                        ; preds = %if.then77, %if.then71.for.inc80_crit_edge, %land.lhs.true59.for.inc80_crit_edge, %for.body54.for.inc80_crit_edge
  %inc81 = add nuw nsw i32 %i.1300, 1
  %exitcond308.not = icmp eq i32 %inc81, 36
  br i1 %exitcond308.not, label %for.inc80.if.end83_crit_edge, label %for.inc80.for.body54_crit_edge

for.inc80.for.body54_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54

for.inc80.if.end83_crit_edge:                     ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.end83:                                         ; preds = %for.inc80.if.end83_crit_edge, %ar9003_hw_set_power_per_rate_table.exit.if.end83_crit_edge
  %max_power_level = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 22, i32 3
  %225 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 0, ptr %max_power_level, align 2
  br label %for.body87

for.body87:                                       ; preds = %for.inc99.for.body87_crit_edge, %if.end83
  %i.2302 = phi i32 [ 0, %if.end83 ], [ %inc100, %for.inc99.for.body87_crit_edge ]
  %226 = phi i16 [ 0, %if.end83 ], [ %231, %for.inc99.for.body87_crit_edge ]
  %arrayidx88 = getelementptr [36 x i8], ptr %targetPowerValT2, i32 0, i32 %i.2302
  %227 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx88, align 1
  %229 = zext i8 %228 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %226, i16 %229)
  %cmp92 = icmp ult i16 %226, %229
  br i1 %cmp92, label %if.then94, label %for.body87.for.inc99_crit_edge

for.body87.for.inc99_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc99

if.then94:                                        ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #13
  %230 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %229, ptr %max_power_level, align 2
  br label %for.inc99

for.inc99:                                        ; preds = %if.then94, %for.body87.for.inc99_crit_edge
  %231 = phi i16 [ %226, %for.body87.for.inc99_crit_edge ], [ %229, %if.then94 ]
  %inc100 = add nuw nsw i32 %i.2302, 1
  %exitcond309.not = icmp eq i32 %inc100, 36
  br i1 %exitcond309.not, label %for.end101, label %for.inc99.for.body87_crit_edge

for.inc99.for.body87_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body87

for.end101:                                       ; preds = %for.inc99
  call void @ath9k_hw_update_regulatory_maxpower(ptr noundef %ah) #11
  br i1 %test, label %for.end101.cleanup_crit_edge, label %for.end101.do.body109_crit_edge

for.end101.do.body109_crit_edge:                  ; preds = %for.end101
  br label %do.body109

for.end101.cleanup_crit_edge:                     ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body109:                                       ; preds = %for.inc119.do.body109_crit_edge, %for.end101.do.body109_crit_edge
  %i.3303 = phi i32 [ %inc120, %for.inc119.do.body109_crit_edge ], [ 0, %for.end101.do.body109_crit_edge ]
  %232 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %debug_mask.i, align 4
  %and111 = and i32 %233, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %do.body109.for.inc119_crit_edge, label %if.then113

do.body109.for.inc119_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc119

if.then113:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx114 = getelementptr [36 x i8], ptr %targetPowerValT2, i32 0, i32 %i.3303
  %234 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %235 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.94, i32 noundef %i.3303, i32 noundef %conv115) #11
  br label %for.inc119

for.inc119:                                       ; preds = %if.then113, %do.body109.for.inc119_crit_edge
  %inc120 = add nuw nsw i32 %i.3303, 1
  %exitcond310.not = icmp eq i32 %inc120, 36
  br i1 %exitcond310.not, label %for.end121, label %for.inc119.do.body109_crit_edge

for.inc119.do.body109_crit_edge:                  ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body109

for.end121:                                       ; preds = %for.inc119
  %call123 = call i32 @ar9003_hw_tx_power_regwrite(ptr noundef %ah, ptr noundef nonnull %targetPowerValT2)
  %236 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %channel.i, align 4
  %conv124 = zext i16 %237 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %lfrequency.i) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %lcorrection.i) #11
  %238 = ptrtoint ptr %lcorrection.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 -1, ptr %lcorrection.i, align 4, !annotation !235
  %239 = getelementptr inbounds [3 x i32], ptr %lcorrection.i, i32 0, i32 1
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 -1, ptr %239, align 4, !annotation !235
  %241 = getelementptr inbounds [3 x i32], ptr %lcorrection.i, i32 0, i32 2
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 -1, ptr %241, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ltemperature.i) #11
  %243 = ptrtoint ptr %ltemperature.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 -1, ptr %ltemperature.i, align 4, !annotation !235
  %244 = getelementptr inbounds [3 x i32], ptr %ltemperature.i, i32 0, i32 1
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -1, ptr %244, align 4, !annotation !235
  %246 = getelementptr inbounds [3 x i32], ptr %ltemperature.i, i32 0, i32 2
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 -1, ptr %246, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %lnf_cal.i) #11
  %248 = ptrtoint ptr %lnf_cal.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 -1, ptr %lnf_cal.i, align 4, !annotation !235
  %249 = getelementptr inbounds [3 x i32], ptr %lnf_cal.i, i32 0, i32 1
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 -1, ptr %249, align 4, !annotation !235
  %251 = getelementptr inbounds [3 x i32], ptr %lnf_cal.i, i32 0, i32 2
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 -1, ptr %251, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %lnf_pwr.i) #11
  %253 = ptrtoint ptr %lnf_pwr.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 -1, ptr %lnf_pwr.i, align 4, !annotation !235
  %254 = getelementptr inbounds [3 x i32], ptr %lnf_pwr.i, i32 0, i32 1
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 -1, ptr %254, align 4, !annotation !235
  %256 = getelementptr inbounds [3 x i32], ptr %lnf_pwr.i, i32 0, i32 2
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 -1, ptr %256, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hfrequency.i) #11
  %258 = getelementptr inbounds [3 x i32], ptr %hfrequency.i, i32 0, i32 1
  %259 = getelementptr inbounds [3 x i32], ptr %hfrequency.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hcorrection.i) #11
  %260 = ptrtoint ptr %hcorrection.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 -1, ptr %hcorrection.i, align 4, !annotation !235
  %261 = getelementptr inbounds [3 x i32], ptr %hcorrection.i, i32 0, i32 1
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 -1, ptr %261, align 4, !annotation !235
  %263 = getelementptr inbounds [3 x i32], ptr %hcorrection.i, i32 0, i32 2
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 -1, ptr %263, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %htemperature.i) #11
  %265 = ptrtoint ptr %htemperature.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 -1, ptr %htemperature.i, align 4, !annotation !235
  %266 = getelementptr inbounds [3 x i32], ptr %htemperature.i, i32 0, i32 1
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 -1, ptr %266, align 4, !annotation !235
  %268 = getelementptr inbounds [3 x i32], ptr %htemperature.i, i32 0, i32 2
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 -1, ptr %268, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hnf_cal.i) #11
  %270 = ptrtoint ptr %hnf_cal.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 -1, ptr %hnf_cal.i, align 4, !annotation !235
  %271 = getelementptr inbounds [3 x i32], ptr %hnf_cal.i, i32 0, i32 1
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 -1, ptr %271, align 4, !annotation !235
  %273 = getelementptr inbounds [3 x i32], ptr %hnf_cal.i, i32 0, i32 2
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 -1, ptr %273, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hnf_pwr.i) #11
  %275 = ptrtoint ptr %hnf_pwr.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 -1, ptr %hnf_pwr.i, align 4, !annotation !235
  %276 = getelementptr inbounds [3 x i32], ptr %hnf_pwr.i, i32 0, i32 1
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 -1, ptr %276, align 4, !annotation !235
  %278 = getelementptr inbounds [3 x i32], ptr %hnf_pwr.i, i32 0, i32 2
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 -1, ptr %278, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %correction.i) #11
  %280 = ptrtoint ptr %correction.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 -1, ptr %correction.i, align 4, !annotation !235
  %281 = getelementptr inbounds [3 x i32], ptr %correction.i, i32 0, i32 1
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 -1, ptr %281, align 4, !annotation !235
  %283 = getelementptr inbounds [3 x i32], ptr %correction.i, i32 0, i32 2
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 -1, ptr %283, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temperature.i) #11
  %285 = ptrtoint ptr %temperature.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 -1, ptr %temperature.i, align 4, !annotation !235
  %286 = getelementptr inbounds [3 x i32], ptr %temperature.i, i32 0, i32 1
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 -1, ptr %286, align 4, !annotation !235
  %288 = getelementptr inbounds [3 x i32], ptr %temperature.i, i32 0, i32 2
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 -1, ptr %288, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nf_cal.i) #11
  %290 = ptrtoint ptr %nf_cal.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 -1, ptr %nf_cal.i, align 4, !annotation !235
  %291 = getelementptr inbounds [3 x i32], ptr %nf_cal.i, i32 0, i32 1
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 -1, ptr %291, align 4, !annotation !235
  %293 = getelementptr inbounds [3 x i32], ptr %nf_cal.i, i32 0, i32 2
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 -1, ptr %293, align 4, !annotation !235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nf_pwr.i) #11
  %295 = ptrtoint ptr %nf_pwr.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 -1, ptr %nf_pwr.i, align 4, !annotation !235
  %296 = getelementptr inbounds [3 x i32], ptr %nf_pwr.i, i32 0, i32 1
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 -1, ptr %296, align 4, !annotation !235
  %298 = getelementptr inbounds [3 x i32], ptr %nf_pwr.i, i32 0, i32 2
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 -1, ptr %298, align 4, !annotation !235
  call void @__sanitizer_cov_trace_const_cmp2(i16 3999, i16 %237)
  %cmp.i256 = icmp ugt i16 %237, 3999
  %300 = call ptr @memset(ptr %lfrequency.i, i32 0, i32 12)
  %301 = ptrtoint ptr %hfrequency.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 100000, ptr %hfrequency.i, align 4
  %302 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 100000, ptr %258, align 4
  %303 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 100000, ptr %259, align 4
  %..i = select i1 %cmp.i256, i32 8, i32 3
  %calFreqPier5G.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 3
  %calPierData5G.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 4, i32 0, i32 0, i32 3
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc62.i.for.cond8.preheader.i_crit_edge, %for.end121
  %ichain.1132.i = phi i32 [ 0, %for.end121 ], [ %inc63.i, %for.inc62.i.for.cond8.preheader.i_crit_edge ]
  %arrayidx18.i = getelementptr [3 x i32], ptr %hfrequency.i, i32 0, i32 %ichain.1132.i
  %arrayidx31.i = getelementptr [3 x i32], ptr %hcorrection.i, i32 0, i32 %ichain.1132.i
  %arrayidx32.i = getelementptr [3 x i32], ptr %htemperature.i, i32 0, i32 %ichain.1132.i
  %arrayidx34.i = getelementptr [3 x i32], ptr %hnf_cal.i, i32 0, i32 %ichain.1132.i
  %arrayidx35.i = getelementptr [3 x i32], ptr %hnf_pwr.i, i32 0, i32 %ichain.1132.i
  %arrayidx41.i = getelementptr [3 x i32], ptr %lfrequency.i, i32 0, i32 %ichain.1132.i
  %arrayidx51.i = getelementptr [3 x i32], ptr %lcorrection.i, i32 0, i32 %ichain.1132.i
  %arrayidx52.i = getelementptr [3 x i32], ptr %ltemperature.i, i32 0, i32 %ichain.1132.i
  %arrayidx54.i = getelementptr [3 x i32], ptr %lnf_cal.i, i32 0, i32 %ichain.1132.i
  %arrayidx55.i = getelementptr [3 x i32], ptr %lnf_pwr.i, i32 0, i32 %ichain.1132.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc59.i.for.body11.i_crit_edge, %for.cond8.preheader.i
  %ipier.0123.i = phi i32 [ 0, %for.cond8.preheader.i ], [ %inc60.i, %for.inc59.i.for.body11.i_crit_edge ]
  br i1 %cmp.i256, label %if.end15.i.i, label %if.else.i.i259

if.end15.i.i:                                     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i258 = getelementptr [8 x i8], ptr %calFreqPier5G.i.i, i32 0, i32 %ipier.0123.i
  %arrayidx17.i.i = getelementptr [3 x [8 x %struct.ar9300_cal_data_per_freq_op_loop]], ptr %calPierData5G.i.i, i32 0, i32 %ichain.1132.i, i32 %ipier.0123.i
  br label %if.end32.i.i

if.else.i.i259:                                   ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ipier.0123.i)
  %cmp18.i.i = icmp ugt i32 %ipier.0123.i, 2
  br i1 %cmp18.i.i, label %do.body20.i.i, label %if.end28.i.i

do.body20.i.i:                                    ; preds = %if.else.i.i259
  %304 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %debug_mask.i, align 4
  %and22.i.i = and i32 %305, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %do.body20.i.i.for.inc59.i_crit_edge, label %if.then24.i.i

do.body20.i.i.for.inc59.i_crit_edge:              ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc59.i

if.then24.i.i:                                    ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.102, i32 noundef 3) #11
  br label %for.inc59.i

if.end28.i.i:                                     ; preds = %if.else.i.i259
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx29.i.i = getelementptr %struct.ar9300_eeprom, ptr %eeprom.i, i32 0, i32 7, i32 %ipier.0123.i
  %arrayidx31.i.i = getelementptr %struct.ar9300_eeprom, ptr %eeprom.i, i32 0, i32 8, i32 %ichain.1132.i, i32 %ipier.0123.i
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end28.i.i, %if.end15.i.i
  %pCalPier.0.i.i = phi ptr [ %arrayidx.i.i258, %if.end15.i.i ], [ %arrayidx29.i.i, %if.end28.i.i ]
  %pCalPierStruct.0.i.i = phi ptr [ %arrayidx17.i.i, %if.end15.i.i ], [ %arrayidx31.i.i, %if.end28.i.i ]
  %306 = ptrtoint ptr %pCalPier.0.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %pCalPier.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %307)
  %cmp.i.i.i = icmp eq i8 %307, -1
  %conv.i.i.i260 = zext i8 %307 to i32
  %add.i.i.i261 = add nuw nsw i32 %conv.i.i.i260, 2300
  %mul.i.i.i262 = mul nuw nsw i32 %conv.i.i.i260, 5
  %add6.i.i.i263 = add nuw nsw i32 %mul.i.i.i262, 4800
  %cond.i.i.i264 = select i1 %cmp.i256, i32 %add6.i.i.i263, i32 %add.i.i.i261
  %conv.i.i = select i1 %cmp.i.i.i, i32 255, i32 %cond.i.i.i264
  %308 = ptrtoint ptr %pCalPierStruct.0.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %pCalPierStruct.0.i.i, align 1
  %conv35.i.i = sext i8 %309 to i32
  %tempMeas.i.i = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, ptr %pCalPierStruct.0.i.i, i32 0, i32 2
  %310 = ptrtoint ptr %tempMeas.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %tempMeas.i.i, align 1
  %conv36.i.i = zext i8 %311 to i32
  %rxTempMeas.i.i = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, ptr %pCalPierStruct.0.i.i, i32 0, i32 5
  %312 = ptrtoint ptr %rxTempMeas.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %rxTempMeas.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool39.not.i.i = icmp eq i8 %313, 0
  br i1 %tobool39.not.i.i, label %if.end32.i.i.if.then14.i_crit_edge, label %cond.true45.i.i

if.end32.i.i.if.then14.i_crit_edge:               ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

cond.true45.i.i:                                  ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rxNoisefloorCal.i.i = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, ptr %pCalPierStruct.0.i.i, i32 0, i32 3
  %314 = ptrtoint ptr %rxNoisefloorCal.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %rxNoisefloorCal.i.i, align 1
  %conv40.i.i = sext i8 %315 to i32
  %add.i.i = add nsw i32 %conv40.i.i, 3
  %shr.i.i = ashr i32 %add.i.i, 2
  %add41.i.i = add nsw i32 %shr.i.i, -90
  %rxNoisefloorPower.i.i = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, ptr %pCalPierStruct.0.i.i, i32 0, i32 4
  %316 = ptrtoint ptr %rxNoisefloorPower.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %rxNoisefloorPower.i.i, align 1
  %conv46.i.i = sext i8 %317 to i32
  %add47.i.i = add nsw i32 %conv46.i.i, 3
  %shr48.i.i = ashr i32 %add47.i.i, 2
  %add49.i.i = add nsw i32 %shr48.i.i, -90
  br label %if.then14.i

if.then14.i:                                      ; preds = %cond.true45.i.i, %if.end32.i.i.if.then14.i_crit_edge
  %pnf_cal.2.ph.i = phi i32 [ %add41.i.i, %cond.true45.i.i ], [ 0, %if.end32.i.i.if.then14.i_crit_edge ]
  %pnf_pwr.2.ph.i = phi i32 [ %add49.i.i, %cond.true45.i.i ], [ 0, %if.end32.i.i.if.then14.i_crit_edge ]
  %sub.i = sub nsw i32 %conv124, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp15.i = icmp slt i32 %sub.i, 1
  br i1 %cmp15.i, label %if.then17.i, label %if.then14.i.if.then40.i_crit_edge

if.then14.i.if.then40.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40.i

if.then17.i:                                      ; preds = %if.then14.i
  %318 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx18.i, align 4
  %320 = add i32 %319, -100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99999, i32 %320)
  %321 = icmp ult i32 %320, -99999
  %sub26.i = sub i32 %conv124, %319
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub26.i)
  %cmp27.i = icmp sgt i32 %sub.i, %sub26.i
  %or.cond1.i = select i1 %321, i1 true, i1 %cmp27.i
  br i1 %or.cond1.i, label %if.then29.i, label %if.then17.i.if.end37.i_crit_edge

if.then17.i.if.end37.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then29.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %322 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %conv.i.i, ptr %arrayidx18.i, align 4
  %323 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %conv35.i.i, ptr %arrayidx31.i, align 4
  %324 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %conv36.i.i, ptr %arrayidx32.i, align 4
  %325 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %pnf_cal.2.ph.i, ptr %arrayidx34.i, align 4
  %326 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %pnf_pwr.2.ph.i, ptr %arrayidx35.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then29.i, %if.then17.i.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp38.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp38.i, label %if.end37.i.if.then40.i_crit_edge, label %if.end37.i.for.inc59.i_crit_edge

if.end37.i.for.inc59.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc59.i

if.end37.i.if.then40.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.end37.i.if.then40.i_crit_edge, %if.then14.i.if.then40.i_crit_edge
  %327 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %328)
  %cmp42.i = icmp slt i32 %328, 1
  %sub46.i = sub i32 %conv124, %328
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub46.i)
  %cmp47.i = icmp slt i32 %sub.i, %sub46.i
  %or.cond2.i = select i1 %cmp42.i, i1 true, i1 %cmp47.i
  br i1 %or.cond2.i, label %if.then49.i, label %if.then40.i.for.inc59.i_crit_edge

if.then40.i.for.inc59.i_crit_edge:                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc59.i

if.then49.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  %329 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %conv.i.i, ptr %arrayidx41.i, align 4
  %330 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %conv35.i.i, ptr %arrayidx51.i, align 4
  %331 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %conv36.i.i, ptr %arrayidx52.i, align 4
  %332 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %pnf_cal.2.ph.i, ptr %arrayidx54.i, align 4
  %333 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %pnf_pwr.2.ph.i, ptr %arrayidx55.i, align 4
  br label %for.inc59.i

for.inc59.i:                                      ; preds = %if.then49.i, %if.then40.i.for.inc59.i_crit_edge, %if.end37.i.for.inc59.i_crit_edge, %if.then24.i.i, %do.body20.i.i.for.inc59.i_crit_edge
  %inc60.i = add nuw nsw i32 %ipier.0123.i, 1
  %exitcond.not.i265 = icmp eq i32 %inc60.i, %..i
  br i1 %exitcond.not.i265, label %for.inc62.i, label %for.inc59.i.for.body11.i_crit_edge

for.inc59.i.for.body11.i_crit_edge:               ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11.i

for.inc62.i:                                      ; preds = %for.inc59.i
  %inc63.i = add nuw nsw i32 %ichain.1132.i, 1
  %exitcond138.not.i = icmp eq i32 %inc63.i, 3
  br i1 %exitcond138.not.i, label %for.inc62.i.do.body.i267_crit_edge, label %for.inc62.i.for.cond8.preheader.i_crit_edge

for.inc62.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond8.preheader.i

for.inc62.i.do.body.i267_crit_edge:               ; preds = %for.inc62.i
  br label %do.body.i267

do.body.i267:                                     ; preds = %for.inc173.i.do.body.i267_crit_edge, %for.inc62.i.do.body.i267_crit_edge
  %ichain.2133.i = phi i32 [ %inc174.i, %for.inc173.i.do.body.i267_crit_edge ], [ 0, %for.inc62.i.do.body.i267_crit_edge ]
  %334 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %335, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool69.not.i266 = icmp eq i32 %and.i, 0
  br i1 %tobool69.not.i266, label %do.body.i267.do.end.i269_crit_edge, label %if.then70.i268

do.body.i267.do.end.i269_crit_edge:               ; preds = %do.body.i267
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i269

if.then70.i268:                                   ; preds = %do.body.i267
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx71.i = getelementptr [3 x i32], ptr %lfrequency.i, i32 0, i32 %ichain.2133.i
  %336 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx71.i, align 4
  %arrayidx72.i = getelementptr [3 x i32], ptr %lcorrection.i, i32 0, i32 %ichain.2133.i
  %338 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx72.i, align 4
  %arrayidx73.i = getelementptr [3 x i32], ptr %hfrequency.i, i32 0, i32 %ichain.2133.i
  %340 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx73.i, align 4
  %arrayidx74.i = getelementptr [3 x i32], ptr %hcorrection.i, i32 0, i32 %ichain.2133.i
  %342 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx74.i, align 4
  %arrayidx75.i = getelementptr [3 x i32], ptr %lnf_cal.i, i32 0, i32 %ichain.2133.i
  %344 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx75.i, align 4
  %arrayidx76.i = getelementptr [3 x i32], ptr %hnf_cal.i, i32 0, i32 %ichain.2133.i
  %346 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx76.i, align 4
  %arrayidx77.i = getelementptr [3 x i32], ptr %lnf_pwr.i, i32 0, i32 %ichain.2133.i
  %348 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx77.i, align 4
  %arrayidx78.i = getelementptr [3 x i32], ptr %hnf_pwr.i, i32 0, i32 %ichain.2133.i
  %350 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx78.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.98, i32 noundef %ichain.2133.i, i32 noundef %conv124, i32 noundef %337, i32 noundef %339, i32 noundef %341, i32 noundef %343, i32 noundef %345, i32 noundef %347, i32 noundef %349, i32 noundef %351) #11
  br label %do.end.i269

do.end.i269:                                      ; preds = %if.then70.i268, %do.body.i267.do.end.i269_crit_edge
  %arrayidx80.i = getelementptr [3 x i32], ptr %hfrequency.i, i32 0, i32 %ichain.2133.i
  %352 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx80.i, align 4
  %arrayidx81.i = getelementptr [3 x i32], ptr %lfrequency.i, i32 0, i32 %ichain.2133.i
  %354 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx81.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %353, i32 %355)
  %cmp82.i = icmp eq i32 %353, %355
  br i1 %cmp82.i, label %if.then84.i, label %if.else95.i

if.then84.i:                                      ; preds = %do.end.i269
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx85.i = getelementptr [3 x i32], ptr %lcorrection.i, i32 0, i32 %ichain.2133.i
  %356 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx85.i, align 4
  %arrayidx86.i = getelementptr [3 x i32], ptr %correction.i, i32 0, i32 %ichain.2133.i
  %358 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %357, ptr %arrayidx86.i, align 4
  %arrayidx89.i = getelementptr [3 x i32], ptr %ltemperature.i, i32 0, i32 %ichain.2133.i
  %359 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %arrayidx89.i, align 4
  %arrayidx90.i = getelementptr [3 x i32], ptr %temperature.i, i32 0, i32 %ichain.2133.i
  %361 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %360, ptr %arrayidx90.i, align 4
  %arrayidx91.i = getelementptr [3 x i32], ptr %lnf_cal.i, i32 0, i32 %ichain.2133.i
  %362 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx91.i, align 4
  %arrayidx92.i = getelementptr [3 x i32], ptr %nf_cal.i, i32 0, i32 %ichain.2133.i
  %364 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %363, ptr %arrayidx92.i, align 4
  %arrayidx93.i = getelementptr [3 x i32], ptr %lnf_pwr.i, i32 0, i32 %ichain.2133.i
  %365 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %arrayidx93.i, align 4
  br label %for.inc173.i

if.else95.i:                                      ; preds = %do.end.i269
  %sub97.i = sub i32 %conv124, %355
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %sub97.i)
  %cmp98.i = icmp slt i32 %sub97.i, 1000
  %sub102.i = sub i32 %353, %conv124
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %sub102.i)
  %cmp103.i = icmp slt i32 %sub102.i, 1000
  br i1 %cmp98.i, label %if.then100.i, label %if.else148.i

if.then100.i:                                     ; preds = %if.else95.i
  %arrayidx108.i = getelementptr [3 x i32], ptr %lcorrection.i, i32 0, i32 %ichain.2133.i
  %367 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx108.i, align 4
  br i1 %cmp103.i, label %if.then105.i, label %if.else136.i

if.then105.i:                                     ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx109.i = getelementptr [3 x i32], ptr %hcorrection.i, i32 0, i32 %ichain.2133.i
  %369 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx109.i, align 4
  %sub.i.i = sub i32 %370, %368
  %mul.i.i = shl i32 %sub97.i, 1
  %mul2.i.i = mul i32 %sub.i.i, %mul.i.i
  %sub3.i.i = sub i32 %353, %355
  %div.i.i = sdiv i32 %mul2.i.i, %sub3.i.i
  %div.i.i.frozen = freeze i32 %div.i.i
  %div4.i.i = sdiv i32 %div.i.i.frozen, 2
  %371 = mul i32 %div4.i.i, 2
  %rem.i.i.decomposed = sub i32 %div.i.i.frozen, %371
  %add.i3.i = add i32 %div4.i.i, %368
  %add5.i.i = add i32 %add.i3.i, %rem.i.i.decomposed
  %arrayidx111.i = getelementptr [3 x i32], ptr %correction.i, i32 0, i32 %ichain.2133.i
  %372 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %add5.i.i, ptr %arrayidx111.i, align 4
  %arrayidx114.i = getelementptr [3 x i32], ptr %ltemperature.i, i32 0, i32 %ichain.2133.i
  %373 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %arrayidx114.i, align 4
  %arrayidx115.i = getelementptr [3 x i32], ptr %htemperature.i, i32 0, i32 %ichain.2133.i
  %375 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx115.i, align 4
  %sub.i4.i = sub i32 %376, %374
  %mul2.i7.i = mul i32 %sub.i4.i, %mul.i.i
  %div.i9.i = sdiv i32 %mul2.i7.i, %sub3.i.i
  %div.i9.i.frozen = freeze i32 %div.i9.i
  %div4.i10.i = sdiv i32 %div.i9.i.frozen, 2
  %377 = mul i32 %div4.i10.i, 2
  %rem.i11.i.decomposed = sub i32 %div.i9.i.frozen, %377
  %add.i12.i = add i32 %div4.i10.i, %374
  %add5.i13.i = add i32 %add.i12.i, %rem.i11.i.decomposed
  %arrayidx117.i = getelementptr [3 x i32], ptr %temperature.i, i32 0, i32 %ichain.2133.i
  %378 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %add5.i13.i, ptr %arrayidx117.i, align 4
  %arrayidx126.i = getelementptr [3 x i32], ptr %lnf_cal.i, i32 0, i32 %ichain.2133.i
  %379 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx126.i, align 4
  %arrayidx127.i = getelementptr [3 x i32], ptr %hnf_cal.i, i32 0, i32 %ichain.2133.i
  %381 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %arrayidx127.i, align 4
  %sub.i24.i = sub i32 %382, %380
  %mul2.i27.i = mul i32 %sub.i24.i, %mul.i.i
  %div.i29.i = sdiv i32 %mul2.i27.i, %sub3.i.i
  %div.i29.i.frozen = freeze i32 %div.i29.i
  %div4.i30.i = sdiv i32 %div.i29.i.frozen, 2
  %383 = mul i32 %div4.i30.i, 2
  %rem.i31.i.decomposed = sub i32 %div.i29.i.frozen, %383
  %add.i32.i = add i32 %div4.i30.i, %380
  %add5.i33.i = add i32 %add.i32.i, %rem.i31.i.decomposed
  %arrayidx129.i = getelementptr [3 x i32], ptr %nf_cal.i, i32 0, i32 %ichain.2133.i
  %384 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %add5.i33.i, ptr %arrayidx129.i, align 4
  %arrayidx132.i = getelementptr [3 x i32], ptr %lnf_pwr.i, i32 0, i32 %ichain.2133.i
  %385 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %arrayidx132.i, align 4
  %arrayidx133.i = getelementptr [3 x i32], ptr %hnf_pwr.i, i32 0, i32 %ichain.2133.i
  %387 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %arrayidx133.i, align 4
  %sub.i34.i = sub i32 %388, %386
  %mul2.i37.i = mul i32 %sub.i34.i, %mul.i.i
  %div.i39.i = sdiv i32 %mul2.i37.i, %sub3.i.i
  %div.i39.i.frozen = freeze i32 %div.i39.i
  %div4.i40.i = sdiv i32 %div.i39.i.frozen, 2
  %389 = mul i32 %div4.i40.i, 2
  %rem.i41.i.decomposed = sub i32 %div.i39.i.frozen, %389
  %add.i42.i = add i32 %div4.i40.i, %386
  %add5.i43.i = add i32 %add.i42.i, %rem.i41.i.decomposed
  br label %for.inc173.i

if.else136.i:                                     ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx138.i = getelementptr [3 x i32], ptr %correction.i, i32 0, i32 %ichain.2133.i
  %390 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %368, ptr %arrayidx138.i, align 4
  %arrayidx139.i = getelementptr [3 x i32], ptr %ltemperature.i, i32 0, i32 %ichain.2133.i
  %391 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %arrayidx139.i, align 4
  %arrayidx140.i = getelementptr [3 x i32], ptr %temperature.i, i32 0, i32 %ichain.2133.i
  %393 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %392, ptr %arrayidx140.i, align 4
  %arrayidx143.i = getelementptr [3 x i32], ptr %lnf_cal.i, i32 0, i32 %ichain.2133.i
  %394 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx143.i, align 4
  %arrayidx144.i = getelementptr [3 x i32], ptr %nf_cal.i, i32 0, i32 %ichain.2133.i
  %396 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %395, ptr %arrayidx144.i, align 4
  %arrayidx145.i = getelementptr [3 x i32], ptr %lnf_pwr.i, i32 0, i32 %ichain.2133.i
  %397 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %arrayidx145.i, align 4
  br label %for.inc173.i

if.else148.i:                                     ; preds = %if.else95.i
  br i1 %cmp103.i, label %if.then153.i, label %if.else164.i

if.then153.i:                                     ; preds = %if.else148.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx154.i = getelementptr [3 x i32], ptr %hcorrection.i, i32 0, i32 %ichain.2133.i
  %399 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %arrayidx154.i, align 4
  %arrayidx155.i = getelementptr [3 x i32], ptr %correction.i, i32 0, i32 %ichain.2133.i
  %401 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %400, ptr %arrayidx155.i, align 4
  %arrayidx156.i = getelementptr [3 x i32], ptr %htemperature.i, i32 0, i32 %ichain.2133.i
  %402 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx156.i, align 4
  %arrayidx157.i270 = getelementptr [3 x i32], ptr %temperature.i, i32 0, i32 %ichain.2133.i
  %404 = ptrtoint ptr %arrayidx157.i270 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %403, ptr %arrayidx157.i270, align 4
  %arrayidx160.i = getelementptr [3 x i32], ptr %hnf_cal.i, i32 0, i32 %ichain.2133.i
  %405 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %arrayidx160.i, align 4
  %arrayidx161.i = getelementptr [3 x i32], ptr %nf_cal.i, i32 0, i32 %ichain.2133.i
  %407 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %406, ptr %arrayidx161.i, align 4
  %arrayidx162.i = getelementptr [3 x i32], ptr %hnf_pwr.i, i32 0, i32 %ichain.2133.i
  %408 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx162.i, align 4
  br label %for.inc173.i

if.else164.i:                                     ; preds = %if.else148.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx165.i = getelementptr [3 x i32], ptr %correction.i, i32 0, i32 %ichain.2133.i
  %410 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 0, ptr %arrayidx165.i, align 4
  %arrayidx166.i = getelementptr [3 x i32], ptr %temperature.i, i32 0, i32 %ichain.2133.i
  %411 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 0, ptr %arrayidx166.i, align 4
  %arrayidx168.i = getelementptr [3 x i32], ptr %nf_cal.i, i32 0, i32 %ichain.2133.i
  %412 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 0, ptr %arrayidx168.i, align 4
  br label %for.inc173.i

for.inc173.i:                                     ; preds = %if.else164.i, %if.then153.i, %if.else136.i, %if.then105.i, %if.then84.i
  %.sink.i = phi i32 [ %366, %if.then84.i ], [ %409, %if.then153.i ], [ 0, %if.else164.i ], [ %add5.i43.i, %if.then105.i ], [ %398, %if.else136.i ]
  %arrayidx94.i = getelementptr [3 x i32], ptr %nf_pwr.i, i32 0, i32 %ichain.2133.i
  %413 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %.sink.i, ptr %arrayidx94.i, align 4
  %inc174.i = add nuw nsw i32 %ichain.2133.i, 1
  %exitcond139.not.i = icmp eq i32 %inc174.i, 3
  br i1 %exitcond139.not.i, label %for.end175.i, label %for.inc173.i.do.body.i267_crit_edge

for.inc173.i.do.body.i267_crit_edge:              ; preds = %for.inc173.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i267

for.end175.i:                                     ; preds = %for.inc173.i
  %rmw.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %414 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %rmw.i.i, align 4
  %416 = ptrtoint ptr %correction.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %correction.i, align 4
  %shl.i.i = shl i32 %417, 16
  %call.i.i271 = call i32 %415(ptr noundef %ah, i32 noundef 42016, i32 noundef %shl.i.i, i32 noundef 16711680) #11
  %tx_chainmask.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 2
  %418 = ptrtoint ptr %tx_chainmask.i.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %tx_chainmask.i.i, align 2
  %420 = and i8 %419, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool.not.i.i272 = icmp eq i8 %420, 0
  br i1 %tobool.not.i.i272, label %for.end175.i.if.end.i.i_crit_edge, label %if.then.i.i274

for.end175.i.if.end.i.i_crit_edge:                ; preds = %for.end175.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i274:                                   ; preds = %for.end175.i
  call void @__sanitizer_cov_trace_pc() #13
  %421 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %rmw.i.i, align 4
  %423 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %281, align 4
  %shl4.i.i = shl i32 %424, 16
  %call5.i.i273 = call i32 %422(ptr noundef %ah, i32 noundef 46112, i32 noundef %shl4.i.i, i32 noundef 16711680) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i274, %for.end175.i.if.end.i.i_crit_edge
  %425 = ptrtoint ptr %tx_chainmask.i.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %tx_chainmask.i.i, align 2
  %427 = and i8 %426, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool10.not.i.i = icmp eq i8 %427, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i.if.end17.i.i_crit_edge, label %if.then11.i.i

if.end.i.i.if.end17.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %428 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %rmw.i.i, align 4
  %430 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %283, align 4
  %shl15.i.i = shl i32 %431, 16
  %call16.i.i = call i32 %429(ptr noundef %ah, i32 noundef 50208, i32 noundef %shl15.i.i, i32 noundef 16711680) #11
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then11.i.i, %if.end.i.i.if.end17.i.i_crit_edge
  %432 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %rmw.i.i, align 4
  %call20.i.i275 = call i32 %433(ptr noundef %ah, i32 noundef 41996, i32 noundef 50331648, i32 noundef 50331648) #11
  %434 = ptrtoint ptr %tx_chainmask.i.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %tx_chainmask.i.i, align 2
  %436 = and i8 %435, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %436)
  %tobool25.not.i.i = icmp eq i8 %436, 0
  br i1 %tobool25.not.i.i, label %if.end17.i.i.if.end30.i.i_crit_edge, label %if.then26.i.i

if.end17.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

if.then26.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %437 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %rmw.i.i, align 4
  %call29.i.i276 = call i32 %438(ptr noundef %ah, i32 noundef 46092, i32 noundef 50331648, i32 noundef 50331648) #11
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then26.i.i, %if.end17.i.i.if.end30.i.i_crit_edge
  %439 = ptrtoint ptr %tx_chainmask.i.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %tx_chainmask.i.i, align 2
  %441 = and i8 %440, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %tobool35.not.i.i = icmp eq i8 %441, 0
  br i1 %tobool35.not.i.i, label %if.end30.i.i.if.end40.i.i_crit_edge, label %if.then36.i.i

if.end30.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.i

if.then36.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %442 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %rmw.i.i, align 4
  %call39.i.i277 = call i32 %443(ptr noundef %ah, i32 noundef 50188, i32 noundef 50331648, i32 noundef 50331648) #11
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then36.i.i, %if.end30.i.i.if.end40.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4000, i16 %237)
  %cmp.i.i = icmp ult i16 %237, 4000
  br i1 %cmp.i.i, label %if.then42.i.i, label %if.else.i44.i

if.then42.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tempSlope.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 9
  %444 = ptrtoint ptr %tempSlope.i.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %tempSlope.i.i, align 1
  %conv43295.i.i = zext i8 %445 to i32
  br label %tempslope.i.i

if.else.i44.i:                                    ; preds = %if.end40.i.i
  %macVersion.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %446 = ptrtoint ptr %macVersion.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %macVersion.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %447)
  %cmp44.i.i = icmp eq i32 %447, 1024
  br i1 %cmp44.i.i, label %if.then46.i.i, label %if.end99.i.i

if.then46.i.i:                                    ; preds = %if.else.i44.i
  %tempslopextension.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2
  %arrayidx47.i.i = getelementptr [8 x i8], ptr %tempslopextension.i.i, i32 0, i32 2
  %448 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %arrayidx47.i.i, align 1
  %conv48.i.i = sext i8 %449 to i32
  %arrayidx52.i.i = getelementptr [8 x i8], ptr %tempslopextension.i.i, i32 0, i32 3
  %450 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %arrayidx52.i.i, align 1
  %conv53.i.i = sext i8 %451 to i32
  %arrayidx57.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0, i32 1
  %452 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx57.i.i, align 1
  %conv58.i.i = sext i8 %453 to i32
  %tempSlope61.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  %454 = ptrtoint ptr %tempSlope61.i.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %tempSlope61.i.i, align 1
  %conv62.i.i = sext i8 %455 to i32
  %456 = ptrtoint ptr %tempslopextension.i.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %tempslopextension.i.i, align 1
  %conv67.i.i = sext i8 %457 to i32
  %arrayidx71.i.i = getelementptr [8 x i8], ptr %tempslopextension.i.i, i32 0, i32 1
  %458 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %arrayidx71.i.i, align 1
  %conv72.i.i = sext i8 %459 to i32
  %arrayidx77.i.i = getelementptr [8 x i8], ptr %tempslopextension.i.i, i32 0, i32 5
  %460 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = sext i8 %461 to i32
  %arrayidx82.i.i = getelementptr [8 x i8], ptr %tempslopextension.i.i, i32 0, i32 6
  %462 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx82.i.i, align 1
  %conv83.i.i = sext i8 %463 to i32
  %arrayidx87.i.i = getelementptr [8 x i8], ptr %tempslopextension.i.i, i32 0, i32 7
  %464 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %arrayidx87.i.i, align 1
  %conv88.i.i = sext i8 %465 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5181, i16 %237)
  %cmp2.i.i.i = icmp ult i16 %237, 5181
  br i1 %cmp2.i.i.i, label %if.end10.i.i.i, label %for.inc.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5180, i16 %237)
  %cmp11.i.i.i = icmp eq i16 %237, 5180
  %sub.i.1304.i.i = add nuw nsw i32 %conv124, -5500
  %sub.i.1318.i.i = select i1 %cmp11.i.i.i, i32 -320, i32 %sub.i.1304.i.i
  %sub4.i.1.i.i = add nsw i32 %conv124, -5180
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.1318.i.i, i32 %sub4.i.1.i.i)
  %cmp5.i.1.i.i = icmp sgt i32 %sub.i.1318.i.i, %sub4.i.1.i.i
  %spec.select563.i.i = select i1 %cmp5.i.1.i.i, i32 %conv62.i.i, i32 %conv48.i.i
  %spec.select564.i.i = select i1 %cmp5.i.1.i.i, i32 5500, i32 5180
  %sub.i.2379.i.i = add nuw nsw i32 %conv124, -5785
  %sub4.i.2.i150.i = sub nsw i32 %conv124, %spec.select564.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2379.i.i, i32 %sub4.i.2.i150.i)
  %cmp5.i.2.i151.i = icmp sgt i32 %sub.i.2379.i.i, %sub4.i.2.i150.i
  %spec.select567.i153.i = select i1 %cmp5.i.2.i151.i, i32 5785, i32 %spec.select564.i.i
  %spec.select568.i154.i = select i1 %cmp5.i.2.i151.i, i32 %conv78.i.i, i32 %spec.select563.i.i
  br i1 %cmp11.i.i.i, label %if.end10.i.i.i.if.then25.i.i.i_crit_edge, label %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge

if.end10.i.i.i.if.then.i19.1.i.i_crit_edge:       ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19.1.i.i

if.end10.i.i.i.if.then25.i.i.i_crit_edge:         ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then46.i.i
  %sub.i.1.i.i = add nsw i32 %conv124, -5500
  call void @__sanitizer_cov_trace_const_cmp2(i16 5501, i16 %237)
  %cmp2.i.1.i.i = icmp ult i16 %237, 5501
  br i1 %cmp2.i.1.i.i, label %if.end10.i.1.i.i, label %if.then13.i.1.i.i

if.end10.i.1.i.i:                                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5500, i16 %237)
  %cmp11.i.1.i.i = icmp eq i16 %237, 5500
  br i1 %cmp11.i.1.i.i, label %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge, label %for.inc.i.2.i.thread186.i

if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge:     ; preds = %if.end10.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19.1.i.i

for.inc.i.2.i.thread186.i:                        ; preds = %if.end10.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.2379.i193.i = add nuw nsw i32 %conv124, -5785
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2379.i193.i, i32 %sub.i.1.i.i)
  %cmp5.i.2.i151195.i = icmp ugt i32 %sub.i.2379.i193.i, %sub.i.1.i.i
  %spec.select567.i153196.i = select i1 %cmp5.i.2.i151195.i, i32 5785, i32 5500
  %spec.select568.i154197.i = select i1 %cmp5.i.2.i151195.i, i32 %conv78.i.i, i32 %conv62.i.i
  br label %if.then25.i.i.i

if.then13.i.1.i.i:                                ; preds = %for.inc.i.i.i
  %sub16.i.1.i.i = add nsw i32 %conv124, -5180
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.1.i.i, i32 %sub16.i.1.i.i)
  %cmp17.i.1.i.i = icmp ult i32 %sub.i.1.i.i, %sub16.i.1.i.i
  %spec.select565.i.i = select i1 %cmp17.i.1.i.i, i32 5500, i32 5180
  %spec.select566.i.i = select i1 %cmp17.i.1.i.i, i32 %conv62.i.i, i32 %conv48.i.i
  %sub.i.2.i.i = add nsw i32 %conv124, -5785
  call void @__sanitizer_cov_trace_const_cmp2(i16 5786, i16 %237)
  %cmp2.i.2.i.i = icmp ult i16 %237, 5786
  br i1 %cmp2.i.2.i.i, label %if.then.i.2.i.i, label %if.then13.i.1.i.i.if.then13.i.2.i.i_crit_edge

if.then13.i.1.i.i.if.then13.i.2.i.i_crit_edge:    ; preds = %if.then13.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.2.i.i

if.then.i.2.i.i:                                  ; preds = %if.then13.i.1.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5785, i16 %237)
  %cmp11.i.2.i.i = icmp eq i16 %237, 5785
  br i1 %cmp11.i.2.i.i, label %if.then.i.2.i.i.if.then13.i.2.i.i_crit_edge, label %if.then.i.2.i.i.if.then25.i.i.i_crit_edge

if.then.i.2.i.i.if.then25.i.i.i_crit_edge:        ; preds = %if.then.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i.i.i

if.then.i.2.i.i.if.then13.i.2.i.i_crit_edge:      ; preds = %if.then.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.2.i.i

if.then13.i.2.i.i:                                ; preds = %if.then.i.2.i.i.if.then13.i.2.i.i_crit_edge, %if.then13.i.1.i.i.if.then13.i.2.i.i_crit_edge
  %sub.i.2397.i.i = phi i32 [ 0, %if.then.i.2.i.i.if.then13.i.2.i.i_crit_edge ], [ %sub.i.2.i.i, %if.then13.i.1.i.i.if.then13.i.2.i.i_crit_edge ]
  %hy.174.i.2.i.i = phi i32 [ %conv78.i.i, %if.then.i.2.i.i.if.then13.i.2.i.i_crit_edge ], [ 0, %if.then13.i.1.i.i.if.then13.i.2.i.i_crit_edge ]
  %hx.172.i.2.i.i = phi i32 [ 5785, %if.then.i.2.i.i.if.then13.i.2.i.i_crit_edge ], [ 0, %if.then13.i.1.i.i.if.then13.i.2.i.i_crit_edge ]
  %466 = xor i1 %cmp2.i.2.i.i, true
  %sub16.i.2.i.i = sub nuw nsw i32 %conv124, %spec.select565.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2397.i.i, i32 %sub16.i.2.i.i)
  %cmp17.i.2.i.i = icmp ult i32 %sub.i.2397.i.i, %sub16.i.2.i.i
  %spec.select569.i.i = select i1 %cmp17.i.2.i.i, i32 5785, i32 %spec.select565.i.i
  %spec.select570.i.i = select i1 %cmp17.i.2.i.i, i32 %conv78.i.i, i32 %spec.select566.i.i
  br label %if.then25.i.i.i

if.then25.i.i.i:                                  ; preds = %if.then13.i.2.i.i, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge, %for.inc.i.2.i.thread186.i, %if.end10.i.i.i.if.then25.i.i.i_crit_edge
  %tobool35.not.i427.i.i = phi i1 [ %466, %if.then13.i.2.i.i ], [ false, %if.end10.i.i.i.if.then25.i.i.i_crit_edge ], [ false, %for.inc.i.2.i.thread186.i ], [ false, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge ]
  %ly.1.i.2426.i.i = phi i32 [ %spec.select570.i.i, %if.then13.i.2.i.i ], [ %conv48.i.i, %if.end10.i.i.i.if.then25.i.i.i_crit_edge ], [ %conv48.i.i, %for.inc.i.2.i.thread186.i ], [ %spec.select566.i.i, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge ]
  %lx.1.i.2425.i.i = phi i32 [ %spec.select569.i.i, %if.then13.i.2.i.i ], [ 5180, %if.end10.i.i.i.if.then25.i.i.i_crit_edge ], [ 5180, %for.inc.i.2.i.thread186.i ], [ %spec.select565.i.i, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge ]
  %hx.171.i.2424.i.i = phi i32 [ %hx.172.i.2.i.i, %if.then13.i.2.i.i ], [ %spec.select567.i153.i, %if.end10.i.i.i.if.then25.i.i.i_crit_edge ], [ %spec.select567.i153196.i, %for.inc.i.2.i.thread186.i ], [ 5785, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge ]
  %hy.173.i.2423.i.i = phi i32 [ %hy.174.i.2.i.i, %if.then13.i.2.i.i ], [ %spec.select568.i154.i, %if.end10.i.i.i.if.then25.i.i.i_crit_edge ], [ %spec.select568.i154197.i, %for.inc.i.2.i.thread186.i ], [ %conv78.i.i, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge ]
  %cmp2.i.1320381422.i.i = phi i1 [ false, %if.then13.i.2.i.i ], [ true, %if.end10.i.i.i.if.then25.i.i.i_crit_edge ], [ true, %for.inc.i.2.i.thread186.i ], [ false, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge ]
  %sub.i.1316384420.i.i = phi i32 [ %sub.i.1.i.i, %if.then13.i.2.i.i ], [ -320, %if.end10.i.i.i.if.then25.i.i.i_crit_edge ], [ %sub.i.1.i.i, %for.inc.i.2.i.thread186.i ], [ %sub.i.1.i.i, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge ]
  %sub.i.2396418.i.i = phi i32 [ %sub.i.2397.i.i, %if.then13.i.2.i.i ], [ -605, %if.end10.i.i.i.if.then25.i.i.i_crit_edge ], [ %sub.i.2379.i193.i, %for.inc.i.2.i.thread186.i ], [ %sub.i.2.i.i, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge ]
  %cmp2.i.2400416.i.i = phi i1 [ %cmp2.i.2.i.i, %if.then13.i.2.i.i ], [ true, %if.end10.i.i.i.if.then25.i.i.i_crit_edge ], [ true, %for.inc.i.2.i.thread186.i ], [ true, %if.then.i.2.i.i.if.then25.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.2424.i.i, i32 %lx.1.i.2425.i.i)
  %cmp28.i.i.i = icmp eq i32 %hx.171.i.2424.i.i, %lx.1.i.2425.i.i
  %or.cond66.i.i.i = select i1 %tobool35.not.i427.i.i, i1 true, i1 %cmp28.i.i.i
  br i1 %or.cond66.i.i.i, label %ar9003_hw_power_interpolate.exit.i.i, label %if.else.i.i.i280

if.else.i.i.i280:                                 ; preds = %if.then25.i.i.i
  %sub.i.i.i.i278 = sub nsw i32 %hy.173.i.2423.i.i, %ly.1.i.2426.i.i
  %sub1.i.i.i.i = sub nsw i32 %conv124, %lx.1.i.2425.i.i
  %mul.i.i.i.i = shl nsw i32 %sub1.i.i.i.i, 1
  %mul2.i.i.i.i = mul nsw i32 %mul.i.i.i.i, %sub.i.i.i.i278
  %sub3.i.i.i.i = sub nsw i32 %hx.171.i.2424.i.i, %lx.1.i.2425.i.i
  %div.i.i.i.i = sdiv i32 %mul2.i.i.i.i, %sub3.i.i.i.i
  %div.i.i.i.i.frozen = freeze i32 %div.i.i.i.i
  %div4.i.i.i.i = sdiv i32 %div.i.i.i.i.frozen, 2
  %467 = mul i32 %div4.i.i.i.i, 2
  %rem.i.i.i.i.decomposed = sub i32 %div.i.i.i.i.frozen, %467
  %add.i.i.i.i279 = add nsw i32 %div4.i.i.i.i, %ly.1.i.2426.i.i
  %add5.i.i.i.i = add nsw i32 %add.i.i.i.i279, %rem.i.i.i.i.decomposed
  %.334 = select i1 %cmp2.i.i.i, i32 5180, i32 0
  %conv53.i.i.335 = select i1 %cmp2.i.i.i, i32 %conv53.i.i, i32 0
  %.293336 = zext i1 %cmp2.i.i.i to i32
  br i1 %cmp2.i.1320381422.i.i, label %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge, label %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge

if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge:   ; preds = %if.else.i.i.i280
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i33.1.i.i

if.else.i.i.i280.if.then.i19.1.i.i_crit_edge:     ; preds = %if.else.i.i.i280
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19.1.i.i

ar9003_hw_power_interpolate.exit.i.i:             ; preds = %if.then25.i.i.i
  %. = select i1 %cmp2.i.i.i, i32 5180, i32 0
  %conv53.i.i. = select i1 %cmp2.i.i.i, i32 %conv53.i.i, i32 0
  %.293 = zext i1 %cmp2.i.i.i to i32
  br i1 %cmp2.i.1320381422.i.i, label %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge, label %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge

ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge: ; preds = %ar9003_hw_power_interpolate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i33.1.i.i

ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge: ; preds = %ar9003_hw_power_interpolate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19.1.i.i

if.then.i19.1.i.i:                                ; preds = %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge
  %lhave.1.i41.i245.i = phi i32 [ 0, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ 1, %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ 1, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ 1, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %tobool14.not.i29.1.i244.i = phi i1 [ true, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ false, %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ false, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ false, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %ly.1.i40.i242.i = phi i32 [ 0, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ %conv53.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ %conv53.i.i, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ %conv53.i.i, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %lx.1.i39.i240.i = phi i32 [ 0, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ 5180, %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ 5180, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ 5180, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %hx.171.i38.i238.i = phi i32 [ 5180, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ %., %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ %.334, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ 0, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %hy.173.i37.i237.i = phi i32 [ %conv53.i.i, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ %conv53.i.i., %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ %conv53.i.i.335, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ 0, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %hhave.175.i36.i236.i = phi i32 [ 1, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ %.293, %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ %.293336, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ 0, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %sub.i.1316384419.i207232.i = phi i32 [ %sub.i.1304.i.i, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ %sub.i.1316384420.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ %sub.i.1316384420.i.i, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ 0, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %sub.i.2396417.i211230.i = phi i32 [ %sub.i.2379.i.i, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ %sub.i.2396418.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ %sub.i.2396418.i.i, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ -285, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %cmp2.i.2400415.i216227.i = phi i1 [ true, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ %cmp2.i.2400416.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ %cmp2.i.2400416.i.i, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ true, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  %y.0.i.i219224.i = phi i32 [ %spec.select568.i154.i, %if.end10.i.i.i.if.then.i19.1.i.i_crit_edge ], [ %ly.1.i.2426.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then.i19.1.i.i_crit_edge ], [ %add5.i.i.i.i, %if.else.i.i.i280.if.then.i19.1.i.i_crit_edge ], [ %conv62.i.i, %if.end10.i.1.i.i.if.then.i19.1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i36.i236.i)
  %tobool.not.i15.1.i.i = icmp eq i32 %hhave.175.i36.i236.i, 0
  %sub4.i16.1.i.i = sub nsw i32 %conv124, %hx.171.i38.i238.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.1316384419.i207232.i, i32 %sub4.i16.1.i.i)
  %cmp5.i17.1.i.i = icmp sgt i32 %sub.i.1316384419.i207232.i, %sub4.i16.1.i.i
  %or.cond.i18.1.i.i = select i1 %tobool.not.i15.1.i.i, i1 true, i1 %cmp5.i17.1.i.i
  %spec.select571.i.i = select i1 %or.cond.i18.1.i.i, i32 5500, i32 %hx.171.i38.i238.i
  %spec.select572.i.i = select i1 %or.cond.i18.1.i.i, i32 %conv67.i.i, i32 %hy.173.i37.i237.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.1316384419.i207232.i)
  %cmp11.i24.1.i.i = icmp sgt i32 %sub.i.1316384419.i207232.i, -1
  br i1 %cmp11.i24.1.i.i, label %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge, label %for.inc.i44.1.i.i

if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge:  ; preds = %if.then.i19.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i33.1.i.i

if.then13.i33.1.i.i:                              ; preds = %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge
  %tobool14.not.i29.1.i243.i = phi i1 [ %tobool14.not.i29.1.i244.i, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ false, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ false, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %ly.1.i40.i241.i = phi i32 [ %ly.1.i40.i242.i, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ %conv53.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ %conv53.i.i, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %lx.1.i39.i239.i = phi i32 [ %lx.1.i39.i240.i, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ 5180, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ 5180, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %cmp2.i.1320381421.i204234.i = phi i1 [ true, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ false, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ false, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %sub.i.1316384419.i207231.i = phi i32 [ %sub.i.1316384419.i207232.i, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ %sub.i.1316384420.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ %sub.i.1316384420.i.i, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %sub.i.2396417.i211229.i = phi i32 [ %sub.i.2396417.i211230.i, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ %sub.i.2396418.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ %sub.i.2396418.i.i, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %cmp2.i.2400415.i216226.i = phi i1 [ %cmp2.i.2400415.i216227.i, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ %cmp2.i.2400416.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ %cmp2.i.2400416.i.i, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %y.0.i.i219223.i = phi i32 [ %y.0.i.i219224.i, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ %ly.1.i.2426.i.i, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ %add5.i.i.i.i, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %hhave.176.i26.1.i.i = phi i32 [ 1, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ %.293, %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ %.293336, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %hy.174.i27.1.i.i = phi i32 [ %spec.select572.i.i, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ %conv53.i.i., %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ %conv53.i.i.335, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %hx.172.i28.1.i.i = phi i32 [ %spec.select571.i.i, %if.then.i19.1.i.i.if.then13.i33.1.i.i_crit_edge ], [ %., %ar9003_hw_power_interpolate.exit.i.i.if.then13.i33.1.i.i_crit_edge ], [ %.334, %if.else.i.i.i280.if.then13.i33.1.i.i_crit_edge ]
  %sub16.i30.1.i.i = sub nsw i32 %conv124, %lx.1.i39.i239.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.1316384419.i207231.i, i32 %sub16.i30.1.i.i)
  %cmp17.i31.1.i.i = icmp slt i32 %sub.i.1316384419.i207231.i, %sub16.i30.1.i.i
  %or.cond65.i32.1.i.i = select i1 %tobool14.not.i29.1.i243.i, i1 true, i1 %cmp17.i31.1.i.i
  %spec.select573.i.i = select i1 %or.cond65.i32.1.i.i, i32 5500, i32 %lx.1.i39.i239.i
  %spec.select574.i.i = select i1 %or.cond65.i32.1.i.i, i32 %conv67.i.i, i32 %ly.1.i40.i241.i
  br i1 %cmp2.i.2400415.i216226.i, label %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge, label %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge

if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge: ; preds = %if.then13.i33.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i33.2.i.i

if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge:  ; preds = %if.then13.i33.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19.2.i.i

for.inc.i44.1.i.i:                                ; preds = %if.then.i19.1.i.i
  br i1 %cmp2.i.2400415.i216227.i, label %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge, label %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge

for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge:  ; preds = %for.inc.i44.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i33.2.i.i

for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge:    ; preds = %for.inc.i44.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i19.2.i.i

if.then.i19.2.i.i:                                ; preds = %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge
  %lhave.1.i41.1.i272.i = phi i32 [ 1, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ %lhave.1.i41.i245.i, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  %ly.1.i40.1.i270.i = phi i32 [ %spec.select574.i.i, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ %ly.1.i40.i242.i, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  %lx.1.i39.1.i268.i = phi i32 [ %spec.select573.i.i, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ %lx.1.i39.i240.i, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  %hx.171.i38.1.i266.i = phi i32 [ %hx.172.i28.1.i.i, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ %spec.select571.i.i, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  %hy.173.i37.1.i265.i = phi i32 [ %hy.174.i27.1.i.i, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ %spec.select572.i.i, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  %hhave.175.i36.1.i264.i = phi i32 [ %hhave.176.i26.1.i.i, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ 1, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  %sub.i.1316384419.i210263.i = phi i32 [ %sub.i.1316384419.i207231.i, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ %sub.i.1316384419.i207232.i, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  %y.0.i.i219222259.i = phi i32 [ %y.0.i.i219223.i, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ %y.0.i.i219224.i, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  %sub.i.2396417.i211228251.i = phi i32 [ %sub.i.2396417.i211229.i, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ %sub.i.2396417.i211230.i, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  %cmp2.i.1320381421.i204233249.i = phi i1 [ %cmp2.i.1320381421.i204234.i, %if.then13.i33.1.i.i.if.then.i19.2.i.i_crit_edge ], [ true, %for.inc.i44.1.i.i.if.then.i19.2.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i36.1.i264.i)
  %tobool.not.i15.2.i.i = icmp eq i32 %hhave.175.i36.1.i264.i, 0
  %sub4.i16.2.i.i = sub nsw i32 %conv124, %hx.171.i38.1.i266.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2396417.i211228251.i, i32 %sub4.i16.2.i.i)
  %cmp5.i17.2.i.i = icmp sgt i32 %sub.i.2396417.i211228251.i, %sub4.i16.2.i.i
  %or.cond.i18.2.i.i = select i1 %tobool.not.i15.2.i.i, i1 true, i1 %cmp5.i17.2.i.i
  %spec.select575.i.i = select i1 %or.cond.i18.2.i.i, i32 5785, i32 %hx.171.i38.1.i266.i
  %spec.select576.i.i = select i1 %or.cond.i18.2.i.i, i32 %conv83.i.i, i32 %hy.173.i37.1.i265.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.2396417.i211228251.i)
  %cmp11.i24.2.i.i = icmp sgt i32 %sub.i.2396417.i211228251.i, -1
  br i1 %cmp11.i24.2.i.i, label %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge, label %for.inc.i44.2.i.i

if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge:  ; preds = %if.then.i19.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i33.2.i.i

if.then13.i33.2.i.i:                              ; preds = %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge
  %lhave.1.i41.1.i271.i = phi i32 [ %lhave.1.i41.1.i272.i, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ %lhave.1.i41.i245.i, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ 1, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %ly.1.i40.1.i269.i = phi i32 [ %ly.1.i40.1.i270.i, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ %ly.1.i40.i242.i, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ %spec.select574.i.i, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %lx.1.i39.1.i267.i = phi i32 [ %lx.1.i39.1.i268.i, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ %lx.1.i39.i240.i, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ %spec.select573.i.i, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %sub.i.1316384419.i210262.i = phi i32 [ %sub.i.1316384419.i210263.i, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ %sub.i.1316384419.i207232.i, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ %sub.i.1316384419.i207231.i, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %y.0.i.i219222258.i = phi i32 [ %y.0.i.i219222259.i, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ %y.0.i.i219224.i, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ %y.0.i.i219223.i, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %cmp2.i.2400415.i216225254.i = phi i1 [ true, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ false, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ false, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %sub.i.2396417.i211228250.i = phi i32 [ %sub.i.2396417.i211228251.i, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ %sub.i.2396417.i211230.i, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ %sub.i.2396417.i211229.i, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %cmp2.i.1320381421.i204233248.i = phi i1 [ %cmp2.i.1320381421.i204233249.i, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ true, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ %cmp2.i.1320381421.i204234.i, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %hhave.176.i26.2.i.i = phi i32 [ 1, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ 1, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ %hhave.176.i26.1.i.i, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %hy.174.i27.2.i.i = phi i32 [ %spec.select576.i.i, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ %spec.select572.i.i, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ %hy.174.i27.1.i.i, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  %hx.172.i28.2.i.i = phi i32 [ %spec.select575.i.i, %if.then.i19.2.i.i.if.then13.i33.2.i.i_crit_edge ], [ %spec.select571.i.i, %for.inc.i44.1.i.i.if.then13.i33.2.i.i_crit_edge ], [ %hx.172.i28.1.i.i, %if.then13.i33.1.i.i.if.then13.i33.2.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i41.1.i271.i)
  %tobool14.not.i29.2.i.i = icmp eq i32 %lhave.1.i41.1.i271.i, 0
  %sub16.i30.2.i.i = sub nsw i32 %conv124, %lx.1.i39.1.i267.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2396417.i211228250.i, i32 %sub16.i30.2.i.i)
  %cmp17.i31.2.i.i = icmp slt i32 %sub.i.2396417.i211228250.i, %sub16.i30.2.i.i
  %or.cond65.i32.2.i.i = select i1 %tobool14.not.i29.2.i.i, i1 true, i1 %cmp17.i31.2.i.i
  %spec.select577.i.i = select i1 %or.cond65.i32.2.i.i, i32 5785, i32 %lx.1.i39.1.i267.i
  %spec.select578.i.i = select i1 %or.cond65.i32.2.i.i, i32 %conv83.i.i, i32 %ly.1.i40.1.i269.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.176.i26.2.i.i)
  %tobool35.not.i46435.i.i = icmp eq i32 %hhave.176.i26.2.i.i, 0
  br label %if.then25.i50.i.i

for.inc.i44.2.i.i:                                ; preds = %if.then.i19.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i41.1.i272.i)
  %tobool24.not.i45.i.i = icmp eq i32 %lhave.1.i41.1.i272.i, 0
  br i1 %tobool24.not.i45.i.i, label %for.inc.i44.2.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge, label %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge

for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge:    ; preds = %for.inc.i44.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i50.i.i

for.inc.i44.2.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge: ; preds = %for.inc.i44.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit65.i.i

if.then25.i50.i.i:                                ; preds = %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge, %if.then13.i33.2.i.i
  %sub.i.1316384419.i210261.i = phi i32 [ %sub.i.1316384419.i210262.i, %if.then13.i33.2.i.i ], [ %sub.i.1316384419.i210263.i, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  %y.0.i.i219222257.i = phi i32 [ %y.0.i.i219222258.i, %if.then13.i33.2.i.i ], [ %y.0.i.i219222259.i, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  %cmp2.i.2400415.i216225253.i = phi i1 [ %cmp2.i.2400415.i216225254.i, %if.then13.i33.2.i.i ], [ true, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  %cmp2.i.1320381421.i204233247.i = phi i1 [ %cmp2.i.1320381421.i204233248.i, %if.then13.i33.2.i.i ], [ %cmp2.i.1320381421.i204233249.i, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  %sub.i.2396417.i214.i = phi i32 [ %sub.i.2396417.i211228250.i, %if.then13.i33.2.i.i ], [ %sub.i.2396417.i211228251.i, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  %tobool35.not.i46440.i.i = phi i1 [ %tobool35.not.i46435.i.i, %if.then13.i33.2.i.i ], [ false, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  %ly.1.i40.2439.i.i = phi i32 [ %spec.select578.i.i, %if.then13.i33.2.i.i ], [ %ly.1.i40.1.i270.i, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  %lx.1.i39.2438.i.i = phi i32 [ %spec.select577.i.i, %if.then13.i33.2.i.i ], [ %lx.1.i39.1.i268.i, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  %hx.171.i38.2437.i.i = phi i32 [ %hx.172.i28.2.i.i, %if.then13.i33.2.i.i ], [ %spec.select575.i.i, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  %hy.173.i37.2436.i.i = phi i32 [ %hy.174.i27.2.i.i, %if.then13.i33.2.i.i ], [ %spec.select576.i.i, %for.inc.i44.2.i.i.if.then25.i50.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i38.2437.i.i, i32 %lx.1.i39.2438.i.i)
  %cmp28.i48.i.i = icmp eq i32 %hx.171.i38.2437.i.i, %lx.1.i39.2438.i.i
  %or.cond66.i49.i.i = select i1 %tobool35.not.i46440.i.i, i1 true, i1 %cmp28.i48.i.i
  br i1 %or.cond66.i49.i.i, label %if.then25.i50.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge, label %if.else.i61.i.i

if.then25.i50.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge: ; preds = %if.then25.i50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit65.i.i

if.else.i61.i.i:                                  ; preds = %if.then25.i50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i51.i.i = sub nsw i32 %hy.173.i37.2436.i.i, %ly.1.i40.2439.i.i
  %sub1.i.i52.i.i = sub nsw i32 %conv124, %lx.1.i39.2438.i.i
  %mul.i.i53.i.i = shl i32 %sub1.i.i52.i.i, 1
  %mul2.i.i54.i.i = mul i32 %mul.i.i53.i.i, %sub.i.i51.i.i
  %sub3.i.i55.i.i = sub nsw i32 %hx.171.i38.2437.i.i, %lx.1.i39.2438.i.i
  %div.i.i56.i.i = sdiv i32 %mul2.i.i54.i.i, %sub3.i.i55.i.i
  %div.i.i56.i.i.frozen = freeze i32 %div.i.i56.i.i
  %div4.i.i57.i.i = sdiv i32 %div.i.i56.i.i.frozen, 2
  %468 = mul i32 %div4.i.i57.i.i, 2
  %rem.i.i58.i.i.decomposed = sub i32 %div.i.i56.i.i.frozen, %468
  %add.i.i59.i.i = add nsw i32 %div4.i.i57.i.i, %ly.1.i40.2439.i.i
  %add5.i.i60.i.i = add nsw i32 %add.i.i59.i.i, %rem.i.i58.i.i.decomposed
  br label %ar9003_hw_power_interpolate.exit65.i.i

ar9003_hw_power_interpolate.exit65.i.i:           ; preds = %if.else.i61.i.i, %if.then25.i50.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge, %for.inc.i44.2.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge
  %sub.i.1316384419.i210260.i = phi i32 [ %sub.i.1316384419.i210261.i, %if.else.i61.i.i ], [ %sub.i.1316384419.i210261.i, %if.then25.i50.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ], [ %sub.i.1316384419.i210263.i, %for.inc.i44.2.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ]
  %y.0.i.i219222256.i = phi i32 [ %y.0.i.i219222257.i, %if.else.i61.i.i ], [ %y.0.i.i219222257.i, %if.then25.i50.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ], [ %y.0.i.i219222259.i, %for.inc.i44.2.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ]
  %cmp2.i.2400415.i216225252.i = phi i1 [ %cmp2.i.2400415.i216225253.i, %if.else.i61.i.i ], [ %cmp2.i.2400415.i216225253.i, %if.then25.i50.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ], [ true, %for.inc.i44.2.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ]
  %cmp2.i.1320381421.i204233246.i = phi i1 [ %cmp2.i.1320381421.i204233247.i, %if.else.i61.i.i ], [ %cmp2.i.1320381421.i204233247.i, %if.then25.i50.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ], [ %cmp2.i.1320381421.i204233249.i, %for.inc.i44.2.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ]
  %sub.i.2396417.i215.i = phi i32 [ %sub.i.2396417.i214.i, %if.else.i61.i.i ], [ %sub.i.2396417.i214.i, %if.then25.i50.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ], [ %sub.i.2396417.i211228251.i, %for.inc.i44.2.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ]
  %y.0.i64.i.i = phi i32 [ %add5.i.i60.i.i, %if.else.i61.i.i ], [ %ly.1.i40.2439.i.i, %if.then25.i50.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ], [ %spec.select576.i.i, %for.inc.i44.2.i.i.ar9003_hw_power_interpolate.exit65.i.i_crit_edge ]
  br i1 %cmp2.i.i.i, label %if.end10.i87.i.i, label %ar9003_hw_power_interpolate.exit65.i.i.if.then19.i97.i.i_crit_edge

ar9003_hw_power_interpolate.exit65.i.i.if.then19.i97.i.i_crit_edge: ; preds = %ar9003_hw_power_interpolate.exit65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i97.i.i

if.end10.i87.i.i:                                 ; preds = %ar9003_hw_power_interpolate.exit65.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5180, i16 %237)
  %cmp11.i86.i.i = icmp eq i16 %237, 5180
  br i1 %cmp11.i86.i.i, label %if.end10.i87.i.i.if.then19.i97.i.i_crit_edge, label %if.end10.i87.i.i.for.inc.i106.i.i_crit_edge

if.end10.i87.i.i.for.inc.i106.i.i_crit_edge:      ; preds = %if.end10.i87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i106.i.i

if.end10.i87.i.i.if.then19.i97.i.i_crit_edge:     ; preds = %if.end10.i87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i97.i.i

if.then19.i97.i.i:                                ; preds = %if.end10.i87.i.i.if.then19.i97.i.i_crit_edge, %ar9003_hw_power_interpolate.exit65.i.i.if.then19.i97.i.i_crit_edge
  %hhave.176.i88.i.i = phi i32 [ 1, %if.end10.i87.i.i.if.then19.i97.i.i_crit_edge ], [ 0, %ar9003_hw_power_interpolate.exit65.i.i.if.then19.i97.i.i_crit_edge ]
  %hy.174.i89.i.i = phi i32 [ %conv58.i.i, %if.end10.i87.i.i.if.then19.i97.i.i_crit_edge ], [ 0, %ar9003_hw_power_interpolate.exit65.i.i.if.then19.i97.i.i_crit_edge ]
  %hx.172.i90.i.i = phi i32 [ 5180, %if.end10.i87.i.i.if.then19.i97.i.i_crit_edge ], [ 0, %ar9003_hw_power_interpolate.exit65.i.i.if.then19.i97.i.i_crit_edge ]
  br label %for.inc.i106.i.i

for.inc.i106.i.i:                                 ; preds = %if.then19.i97.i.i, %if.end10.i87.i.i.for.inc.i106.i.i_crit_edge
  %hhave.175.i98.i.i = phi i32 [ %hhave.176.i88.i.i, %if.then19.i97.i.i ], [ 1, %if.end10.i87.i.i.for.inc.i106.i.i_crit_edge ]
  %hy.173.i99.i.i = phi i32 [ %hy.174.i89.i.i, %if.then19.i97.i.i ], [ %conv58.i.i, %if.end10.i87.i.i.for.inc.i106.i.i_crit_edge ]
  %hx.171.i100.i.i = phi i32 [ %hx.172.i90.i.i, %if.then19.i97.i.i ], [ 5180, %if.end10.i87.i.i.for.inc.i106.i.i_crit_edge ]
  %lx.1.i101.i.i = phi i32 [ 5180, %if.then19.i97.i.i ], [ 0, %if.end10.i87.i.i.for.inc.i106.i.i_crit_edge ]
  %ly.1.i102.i.i = phi i32 [ %conv58.i.i, %if.then19.i97.i.i ], [ 0, %if.end10.i87.i.i.for.inc.i106.i.i_crit_edge ]
  %tobool14.not.i91.1.i.i = phi i1 [ false, %if.then19.i97.i.i ], [ true, %if.end10.i87.i.i.for.inc.i106.i.i_crit_edge ]
  %lhave.1.i103.i.i = phi i32 [ 1, %if.then19.i97.i.i ], [ 0, %if.end10.i87.i.i.for.inc.i106.i.i_crit_edge ]
  br i1 %cmp2.i.1320381421.i204233246.i, label %if.then.i81.1.i.i, label %for.inc.i106.i.i.if.then13.i95.1.i.i_crit_edge

for.inc.i106.i.i.if.then13.i95.1.i.i_crit_edge:   ; preds = %for.inc.i106.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i95.1.i.i

if.then.i81.1.i.i:                                ; preds = %for.inc.i106.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i98.i.i)
  %tobool.not.i77.1.i.i = icmp eq i32 %hhave.175.i98.i.i, 0
  %sub4.i78.1.i.i = sub nsw i32 %conv124, %hx.171.i100.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.1316384419.i210260.i, i32 %sub4.i78.1.i.i)
  %cmp5.i79.1.i.i = icmp sgt i32 %sub.i.1316384419.i210260.i, %sub4.i78.1.i.i
  %or.cond.i80.1.i.i = select i1 %tobool.not.i77.1.i.i, i1 true, i1 %cmp5.i79.1.i.i
  %spec.select579.i.i = select i1 %or.cond.i80.1.i.i, i32 5500, i32 %hx.171.i100.i.i
  %spec.select580.i.i = select i1 %or.cond.i80.1.i.i, i32 %conv72.i.i, i32 %hy.173.i99.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.1316384419.i210260.i)
  %cmp11.i86.1.i.i = icmp sgt i32 %sub.i.1316384419.i210260.i, -1
  br i1 %cmp11.i86.1.i.i, label %if.then.i81.1.i.i.if.then13.i95.1.i.i_crit_edge, label %if.then.i81.1.i.i.for.inc.i106.1.i.i_crit_edge

if.then.i81.1.i.i.for.inc.i106.1.i.i_crit_edge:   ; preds = %if.then.i81.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i106.1.i.i

if.then.i81.1.i.i.if.then13.i95.1.i.i_crit_edge:  ; preds = %if.then.i81.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i95.1.i.i

if.then13.i95.1.i.i:                              ; preds = %if.then.i81.1.i.i.if.then13.i95.1.i.i_crit_edge, %for.inc.i106.i.i.if.then13.i95.1.i.i_crit_edge
  %hhave.176.i88.1.i.i = phi i32 [ 1, %if.then.i81.1.i.i.if.then13.i95.1.i.i_crit_edge ], [ %hhave.175.i98.i.i, %for.inc.i106.i.i.if.then13.i95.1.i.i_crit_edge ]
  %hy.174.i89.1.i.i = phi i32 [ %spec.select580.i.i, %if.then.i81.1.i.i.if.then13.i95.1.i.i_crit_edge ], [ %hy.173.i99.i.i, %for.inc.i106.i.i.if.then13.i95.1.i.i_crit_edge ]
  %hx.172.i90.1.i.i = phi i32 [ %spec.select579.i.i, %if.then.i81.1.i.i.if.then13.i95.1.i.i_crit_edge ], [ %hx.171.i100.i.i, %for.inc.i106.i.i.if.then13.i95.1.i.i_crit_edge ]
  %sub16.i92.1.i.i = sub nsw i32 %conv124, %lx.1.i101.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.1316384419.i210260.i, i32 %sub16.i92.1.i.i)
  %cmp17.i93.1.i.i = icmp slt i32 %sub.i.1316384419.i210260.i, %sub16.i92.1.i.i
  %or.cond65.i94.1.i.i = select i1 %tobool14.not.i91.1.i.i, i1 true, i1 %cmp17.i93.1.i.i
  %spec.select581.i.i = select i1 %or.cond65.i94.1.i.i, i32 5500, i32 %lx.1.i101.i.i
  %spec.select582.i.i = select i1 %or.cond65.i94.1.i.i, i32 %conv72.i.i, i32 %ly.1.i102.i.i
  br label %for.inc.i106.1.i.i

for.inc.i106.1.i.i:                               ; preds = %if.then13.i95.1.i.i, %if.then.i81.1.i.i.for.inc.i106.1.i.i_crit_edge
  %hhave.175.i98.1.i.i = phi i32 [ 1, %if.then.i81.1.i.i.for.inc.i106.1.i.i_crit_edge ], [ %hhave.176.i88.1.i.i, %if.then13.i95.1.i.i ]
  %hy.173.i99.1.i.i = phi i32 [ %spec.select580.i.i, %if.then.i81.1.i.i.for.inc.i106.1.i.i_crit_edge ], [ %hy.174.i89.1.i.i, %if.then13.i95.1.i.i ]
  %hx.171.i100.1.i.i = phi i32 [ %spec.select579.i.i, %if.then.i81.1.i.i.for.inc.i106.1.i.i_crit_edge ], [ %hx.172.i90.1.i.i, %if.then13.i95.1.i.i ]
  %lx.1.i101.1.i.i = phi i32 [ %lx.1.i101.i.i, %if.then.i81.1.i.i.for.inc.i106.1.i.i_crit_edge ], [ %spec.select581.i.i, %if.then13.i95.1.i.i ]
  %ly.1.i102.1.i.i = phi i32 [ %ly.1.i102.i.i, %if.then.i81.1.i.i.for.inc.i106.1.i.i_crit_edge ], [ %spec.select582.i.i, %if.then13.i95.1.i.i ]
  %lhave.1.i103.1.i.i = phi i32 [ %lhave.1.i103.i.i, %if.then.i81.1.i.i.for.inc.i106.1.i.i_crit_edge ], [ 1, %if.then13.i95.1.i.i ]
  br i1 %cmp2.i.2400415.i216225252.i, label %if.then.i81.2.i.i, label %for.inc.i106.1.i.i.if.then13.i95.2.i.i_crit_edge

for.inc.i106.1.i.i.if.then13.i95.2.i.i_crit_edge: ; preds = %for.inc.i106.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i95.2.i.i

if.then.i81.2.i.i:                                ; preds = %for.inc.i106.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i98.1.i.i)
  %tobool.not.i77.2.i.i = icmp eq i32 %hhave.175.i98.1.i.i, 0
  %sub4.i78.2.i.i = sub nsw i32 %conv124, %hx.171.i100.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2396417.i215.i, i32 %sub4.i78.2.i.i)
  %cmp5.i79.2.i.i = icmp sgt i32 %sub.i.2396417.i215.i, %sub4.i78.2.i.i
  %or.cond.i80.2.i.i = select i1 %tobool.not.i77.2.i.i, i1 true, i1 %cmp5.i79.2.i.i
  %spec.select583.i.i = select i1 %or.cond.i80.2.i.i, i32 5785, i32 %hx.171.i100.1.i.i
  %spec.select584.i.i = select i1 %or.cond.i80.2.i.i, i32 %conv88.i.i, i32 %hy.173.i99.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.2396417.i215.i)
  %cmp11.i86.2.i.i = icmp sgt i32 %sub.i.2396417.i215.i, -1
  br i1 %cmp11.i86.2.i.i, label %if.then.i81.2.i.i.if.then13.i95.2.i.i_crit_edge, label %for.inc.i106.2.i.i

if.then.i81.2.i.i.if.then13.i95.2.i.i_crit_edge:  ; preds = %if.then.i81.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i95.2.i.i

if.then13.i95.2.i.i:                              ; preds = %if.then.i81.2.i.i.if.then13.i95.2.i.i_crit_edge, %for.inc.i106.1.i.i.if.then13.i95.2.i.i_crit_edge
  %hhave.176.i88.2.i.i = phi i32 [ 1, %if.then.i81.2.i.i.if.then13.i95.2.i.i_crit_edge ], [ %hhave.175.i98.1.i.i, %for.inc.i106.1.i.i.if.then13.i95.2.i.i_crit_edge ]
  %hy.174.i89.2.i.i = phi i32 [ %spec.select584.i.i, %if.then.i81.2.i.i.if.then13.i95.2.i.i_crit_edge ], [ %hy.173.i99.1.i.i, %for.inc.i106.1.i.i.if.then13.i95.2.i.i_crit_edge ]
  %hx.172.i90.2.i.i = phi i32 [ %spec.select583.i.i, %if.then.i81.2.i.i.if.then13.i95.2.i.i_crit_edge ], [ %hx.171.i100.1.i.i, %for.inc.i106.1.i.i.if.then13.i95.2.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i103.1.i.i)
  %tobool14.not.i91.2.i.i = icmp eq i32 %lhave.1.i103.1.i.i, 0
  %sub16.i92.2.i.i = sub nsw i32 %conv124, %lx.1.i101.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2396417.i215.i, i32 %sub16.i92.2.i.i)
  %cmp17.i93.2.i.i = icmp slt i32 %sub.i.2396417.i215.i, %sub16.i92.2.i.i
  %or.cond65.i94.2.i.i = select i1 %tobool14.not.i91.2.i.i, i1 true, i1 %cmp17.i93.2.i.i
  %spec.select585.i.i = select i1 %or.cond65.i94.2.i.i, i32 5785, i32 %lx.1.i101.1.i.i
  %spec.select586.i.i = select i1 %or.cond65.i94.2.i.i, i32 %conv88.i.i, i32 %ly.1.i102.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.176.i88.2.i.i)
  %tobool35.not.i108448.i.i = icmp eq i32 %hhave.176.i88.2.i.i, 0
  br label %if.then25.i112.i.i

for.inc.i106.2.i.i:                               ; preds = %if.then.i81.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i103.1.i.i)
  %tobool24.not.i107.i.i = icmp eq i32 %lhave.1.i103.1.i.i, 0
  br i1 %tobool24.not.i107.i.i, label %for.inc.i106.2.i.i.ar9003_hw_power_interpolate.exit127.i.i_crit_edge, label %for.inc.i106.2.i.i.if.then25.i112.i.i_crit_edge

for.inc.i106.2.i.i.if.then25.i112.i.i_crit_edge:  ; preds = %for.inc.i106.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i112.i.i

for.inc.i106.2.i.i.ar9003_hw_power_interpolate.exit127.i.i_crit_edge: ; preds = %for.inc.i106.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit127.i.i

if.then25.i112.i.i:                               ; preds = %for.inc.i106.2.i.i.if.then25.i112.i.i_crit_edge, %if.then13.i95.2.i.i
  %tobool35.not.i108453.i.i = phi i1 [ %tobool35.not.i108448.i.i, %if.then13.i95.2.i.i ], [ false, %for.inc.i106.2.i.i.if.then25.i112.i.i_crit_edge ]
  %ly.1.i102.2452.i.i = phi i32 [ %spec.select586.i.i, %if.then13.i95.2.i.i ], [ %ly.1.i102.1.i.i, %for.inc.i106.2.i.i.if.then25.i112.i.i_crit_edge ]
  %lx.1.i101.2451.i.i = phi i32 [ %spec.select585.i.i, %if.then13.i95.2.i.i ], [ %lx.1.i101.1.i.i, %for.inc.i106.2.i.i.if.then25.i112.i.i_crit_edge ]
  %hx.171.i100.2450.i.i = phi i32 [ %hx.172.i90.2.i.i, %if.then13.i95.2.i.i ], [ %spec.select583.i.i, %for.inc.i106.2.i.i.if.then25.i112.i.i_crit_edge ]
  %hy.173.i99.2449.i.i = phi i32 [ %hy.174.i89.2.i.i, %if.then13.i95.2.i.i ], [ %spec.select584.i.i, %for.inc.i106.2.i.i.if.then25.i112.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i100.2450.i.i, i32 %lx.1.i101.2451.i.i)
  %cmp28.i110.i.i = icmp eq i32 %hx.171.i100.2450.i.i, %lx.1.i101.2451.i.i
  %or.cond66.i111.i.i = select i1 %tobool35.not.i108453.i.i, i1 true, i1 %cmp28.i110.i.i
  br i1 %or.cond66.i111.i.i, label %if.then25.i112.i.i.ar9003_hw_power_interpolate.exit127.i.i_crit_edge, label %if.else.i123.i.i

if.then25.i112.i.i.ar9003_hw_power_interpolate.exit127.i.i_crit_edge: ; preds = %if.then25.i112.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit127.i.i

if.else.i123.i.i:                                 ; preds = %if.then25.i112.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i113.i.i = sub nsw i32 %hy.173.i99.2449.i.i, %ly.1.i102.2452.i.i
  %sub1.i.i114.i.i = sub nsw i32 %conv124, %lx.1.i101.2451.i.i
  %mul.i.i115.i.i = shl i32 %sub1.i.i114.i.i, 1
  %mul2.i.i116.i.i = mul i32 %mul.i.i115.i.i, %sub.i.i113.i.i
  %sub3.i.i117.i.i = sub nsw i32 %hx.171.i100.2450.i.i, %lx.1.i101.2451.i.i
  %div.i.i118.i.i = sdiv i32 %mul2.i.i116.i.i, %sub3.i.i117.i.i
  %div.i.i118.i.i.frozen = freeze i32 %div.i.i118.i.i
  %div4.i.i119.i.i = sdiv i32 %div.i.i118.i.i.frozen, 2
  %469 = mul i32 %div4.i.i119.i.i, 2
  %rem.i.i120.i.i.decomposed = sub i32 %div.i.i118.i.i.frozen, %469
  %add.i.i121.i.i = add nsw i32 %div4.i.i119.i.i, %ly.1.i102.2452.i.i
  %add5.i.i122.i.i = add nsw i32 %add.i.i121.i.i, %rem.i.i120.i.i.decomposed
  br label %ar9003_hw_power_interpolate.exit127.i.i

ar9003_hw_power_interpolate.exit127.i.i:          ; preds = %if.else.i123.i.i, %if.then25.i112.i.i.ar9003_hw_power_interpolate.exit127.i.i_crit_edge, %for.inc.i106.2.i.i.ar9003_hw_power_interpolate.exit127.i.i_crit_edge
  %y.0.i126.i.i = phi i32 [ %add5.i.i122.i.i, %if.else.i123.i.i ], [ %ly.1.i102.2452.i.i, %if.then25.i112.i.i.ar9003_hw_power_interpolate.exit127.i.i_crit_edge ], [ %spec.select584.i.i, %for.inc.i106.2.i.i.ar9003_hw_power_interpolate.exit127.i.i_crit_edge ]
  %phi.bo.i.i = and i32 %y.0.i126.i.i, 255
  %phi.bo1.i.i = and i32 %y.0.i64.i.i, 255
  br label %tempslope.i.i

if.end99.i.i:                                     ; preds = %if.else.i44.i
  %miscConfiguration.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26
  %470 = ptrtoint ptr %miscConfiguration.i.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %miscConfiguration.i.i, align 1
  %472 = and i8 %471, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %472)
  %cmp102.not.i.i = icmp eq i8 %472, 0
  br i1 %cmp102.not.i.i, label %if.else118.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end99.i.i
  %tempslopextension108.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2
  %473 = ptrtoint ptr %tempslopextension108.i.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %tempslopextension108.i.i, align 1
  %conv110.i.i = sext i8 %474 to i32
  %475 = ptrtoint ptr %calFreqPier5G.i.i to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %calFreqPier5G.i.i, align 1
  %conv113.i.i = zext i8 %476 to i32
  %mul.i46.i = mul nuw nsw i32 %conv113.i.i, 5
  %add.i47.i = add nuw nsw i32 %mul.i46.i, 4800
  %arrayidx109.1.i.i = getelementptr [8 x i8], ptr %tempslopextension108.i.i, i32 0, i32 1
  %477 = ptrtoint ptr %arrayidx109.1.i.i to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %arrayidx109.1.i.i, align 1
  %conv110.1.i.i = sext i8 %478 to i32
  %arrayidx112.1.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 3, i32 1
  %479 = ptrtoint ptr %arrayidx112.1.i.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %arrayidx112.1.i.i, align 1
  %conv113.1.i.i = zext i8 %480 to i32
  %mul.1.i.i = mul nuw nsw i32 %conv113.1.i.i, 5
  %add.1.i.i = add nuw nsw i32 %mul.1.i.i, 4800
  %arrayidx109.2.i.i = getelementptr [8 x i8], ptr %tempslopextension108.i.i, i32 0, i32 2
  %481 = ptrtoint ptr %arrayidx109.2.i.i to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %arrayidx109.2.i.i, align 1
  %conv110.2.i.i = sext i8 %482 to i32
  %arrayidx112.2.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 3, i32 2
  %483 = ptrtoint ptr %arrayidx112.2.i.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %arrayidx112.2.i.i, align 1
  %conv113.2.i.i = zext i8 %484 to i32
  %mul.2.i.i = mul nuw nsw i32 %conv113.2.i.i, 5
  %add.2.i.i = add nuw nsw i32 %mul.2.i.i, 4800
  %arrayidx109.3.i.i = getelementptr [8 x i8], ptr %tempslopextension108.i.i, i32 0, i32 3
  %485 = ptrtoint ptr %arrayidx109.3.i.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %arrayidx109.3.i.i, align 1
  %conv110.3.i.i = sext i8 %486 to i32
  %arrayidx112.3.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 3, i32 3
  %487 = ptrtoint ptr %arrayidx112.3.i.i to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %arrayidx112.3.i.i, align 1
  %conv113.3.i.i = zext i8 %488 to i32
  %mul.3.i.i = mul nuw nsw i32 %conv113.3.i.i, 5
  %add.3.i.i = add nuw nsw i32 %mul.3.i.i, 4800
  %arrayidx109.4.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0, i32 1
  %489 = ptrtoint ptr %arrayidx109.4.i.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %arrayidx109.4.i.i, align 1
  %conv110.4.i.i = sext i8 %490 to i32
  %arrayidx112.4.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 3, i32 4
  %491 = ptrtoint ptr %arrayidx112.4.i.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %arrayidx112.4.i.i, align 1
  %conv113.4.i.i = zext i8 %492 to i32
  %mul.4.i.i = mul nuw nsw i32 %conv113.4.i.i, 5
  %add.4.i.i = add nuw nsw i32 %mul.4.i.i, 4800
  %arrayidx109.5.i.i = getelementptr [8 x i8], ptr %tempslopextension108.i.i, i32 0, i32 5
  %493 = ptrtoint ptr %arrayidx109.5.i.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %arrayidx109.5.i.i, align 1
  %conv110.5.i.i = sext i8 %494 to i32
  %arrayidx112.5.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 4
  %495 = ptrtoint ptr %arrayidx112.5.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %arrayidx112.5.i.i, align 1
  %conv113.5.i.i = zext i8 %496 to i32
  %mul.5.i.i = mul nuw nsw i32 %conv113.5.i.i, 5
  %add.5.i.i = add nuw nsw i32 %mul.5.i.i, 4800
  %arrayidx109.6.i.i = getelementptr [8 x i8], ptr %tempslopextension108.i.i, i32 0, i32 6
  %497 = ptrtoint ptr %arrayidx109.6.i.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx109.6.i.i, align 1
  %conv110.6.i.i = sext i8 %498 to i32
  %arrayidx112.6.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 4, i32 0, i32 0, i32 1
  %499 = ptrtoint ptr %arrayidx112.6.i.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %arrayidx112.6.i.i, align 1
  %conv113.6.i.i = zext i8 %500 to i32
  %mul.6.i.i = mul nuw nsw i32 %conv113.6.i.i, 5
  %add.6.i.i = add nuw nsw i32 %mul.6.i.i, 4800
  %arrayidx109.7.i.i = getelementptr [8 x i8], ptr %tempslopextension108.i.i, i32 0, i32 7
  %501 = ptrtoint ptr %arrayidx109.7.i.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %arrayidx109.7.i.i, align 1
  %conv110.7.i.i = sext i8 %502 to i32
  %arrayidx112.7.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 4, i32 0, i32 0, i32 2
  %503 = ptrtoint ptr %arrayidx112.7.i.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %arrayidx112.7.i.i, align 1
  %conv113.7.i.i = zext i8 %504 to i32
  %mul.7.i.i = mul nuw nsw i32 %conv113.7.i.i, 5
  %add.7.i.i = add nuw nsw i32 %mul.7.i.i, 4800
  %sub.i136.i.i = sub nsw i32 %conv124, %add.i47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i136.i.i)
  %cmp2.i137.i.i = icmp slt i32 %sub.i136.i.i, 1
  br i1 %cmp2.i137.i.i, label %if.end10.i149.i.i, label %for.cond.preheader.i.i.if.then19.i159.i.i_crit_edge

for.cond.preheader.i.i.if.then19.i159.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i159.i.i

if.end10.i149.i.i:                                ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i136.i.i)
  %cmp11.i148.i.i = icmp sgt i32 %sub.i136.i.i, -1
  br i1 %cmp11.i148.i.i, label %if.end10.i149.i.i.if.then19.i159.i.i_crit_edge, label %if.end10.i149.i.i.for.inc.i168.i.i_crit_edge

if.end10.i149.i.i.for.inc.i168.i.i_crit_edge:     ; preds = %if.end10.i149.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i168.i.i

if.end10.i149.i.i.if.then19.i159.i.i_crit_edge:   ; preds = %if.end10.i149.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i159.i.i

if.then19.i159.i.i:                               ; preds = %if.end10.i149.i.i.if.then19.i159.i.i_crit_edge, %for.cond.preheader.i.i.if.then19.i159.i.i_crit_edge
  %hhave.176.i150.i.i = phi i32 [ 1, %if.end10.i149.i.i.if.then19.i159.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.if.then19.i159.i.i_crit_edge ]
  %hy.174.i151.i.i = phi i32 [ %conv110.i.i, %if.end10.i149.i.i.if.then19.i159.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.if.then19.i159.i.i_crit_edge ]
  %hx.172.i152.i.i = phi i32 [ %add.i47.i, %if.end10.i149.i.i.if.then19.i159.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.if.then19.i159.i.i_crit_edge ]
  br label %for.inc.i168.i.i

for.inc.i168.i.i:                                 ; preds = %if.then19.i159.i.i, %if.end10.i149.i.i.for.inc.i168.i.i_crit_edge
  %hhave.175.i160.i.i = phi i32 [ %hhave.176.i150.i.i, %if.then19.i159.i.i ], [ 1, %if.end10.i149.i.i.for.inc.i168.i.i_crit_edge ]
  %hy.173.i161.i.i = phi i32 [ %hy.174.i151.i.i, %if.then19.i159.i.i ], [ %conv110.i.i, %if.end10.i149.i.i.for.inc.i168.i.i_crit_edge ]
  %hx.171.i162.i.i = phi i32 [ %hx.172.i152.i.i, %if.then19.i159.i.i ], [ %add.i47.i, %if.end10.i149.i.i.for.inc.i168.i.i_crit_edge ]
  %lx.1.i163.i.i = phi i32 [ %add.i47.i, %if.then19.i159.i.i ], [ 0, %if.end10.i149.i.i.for.inc.i168.i.i_crit_edge ]
  %ly.1.i164.i.i = phi i32 [ %conv110.i.i, %if.then19.i159.i.i ], [ 0, %if.end10.i149.i.i.for.inc.i168.i.i_crit_edge ]
  %tobool14.not.i153.1.i.i = phi i1 [ false, %if.then19.i159.i.i ], [ true, %if.end10.i149.i.i.for.inc.i168.i.i_crit_edge ]
  %lhave.1.i165.i.i = phi i32 [ 1, %if.then19.i159.i.i ], [ 0, %if.end10.i149.i.i.for.inc.i168.i.i_crit_edge ]
  %sub.i136.1.i.i = sub nsw i32 %conv124, %add.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i136.1.i.i)
  %cmp2.i137.1.i.i = icmp slt i32 %sub.i136.1.i.i, 1
  br i1 %cmp2.i137.1.i.i, label %if.then.i143.1.i.i, label %for.inc.i168.i.i.if.then13.i157.1.i.i_crit_edge

for.inc.i168.i.i.if.then13.i157.1.i.i_crit_edge:  ; preds = %for.inc.i168.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.1.i.i

if.then.i143.1.i.i:                               ; preds = %for.inc.i168.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i160.i.i)
  %tobool.not.i139.1.i.i = icmp eq i32 %hhave.175.i160.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i162.i.i, i32 %add.1.i.i)
  %cmp5.i141.1.i.i = icmp ugt i32 %hx.171.i162.i.i, %add.1.i.i
  %or.cond.i142.1.i.i = select i1 %tobool.not.i139.1.i.i, i1 true, i1 %cmp5.i141.1.i.i
  %spec.select587.i.i = select i1 %or.cond.i142.1.i.i, i32 %add.1.i.i, i32 %hx.171.i162.i.i
  %spec.select588.i.i = select i1 %or.cond.i142.1.i.i, i32 %conv110.1.i.i, i32 %hy.173.i161.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i136.1.i.i)
  %cmp11.i148.1.i.i = icmp sgt i32 %sub.i136.1.i.i, -1
  br i1 %cmp11.i148.1.i.i, label %if.then.i143.1.i.i.if.then13.i157.1.i.i_crit_edge, label %if.then.i143.1.i.i.for.inc.i168.1.i.i_crit_edge

if.then.i143.1.i.i.for.inc.i168.1.i.i_crit_edge:  ; preds = %if.then.i143.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i168.1.i.i

if.then.i143.1.i.i.if.then13.i157.1.i.i_crit_edge: ; preds = %if.then.i143.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.1.i.i

if.then13.i157.1.i.i:                             ; preds = %if.then.i143.1.i.i.if.then13.i157.1.i.i_crit_edge, %for.inc.i168.i.i.if.then13.i157.1.i.i_crit_edge
  %hhave.176.i150.1.i.i = phi i32 [ 1, %if.then.i143.1.i.i.if.then13.i157.1.i.i_crit_edge ], [ %hhave.175.i160.i.i, %for.inc.i168.i.i.if.then13.i157.1.i.i_crit_edge ]
  %hy.174.i151.1.i.i = phi i32 [ %spec.select588.i.i, %if.then.i143.1.i.i.if.then13.i157.1.i.i_crit_edge ], [ %hy.173.i161.i.i, %for.inc.i168.i.i.if.then13.i157.1.i.i_crit_edge ]
  %hx.172.i152.1.i.i = phi i32 [ %spec.select587.i.i, %if.then.i143.1.i.i.if.then13.i157.1.i.i_crit_edge ], [ %hx.171.i162.i.i, %for.inc.i168.i.i.if.then13.i157.1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i163.i.i, i32 %add.1.i.i)
  %cmp17.i155.1.i.i = icmp ult i32 %lx.1.i163.i.i, %add.1.i.i
  %or.cond65.i156.1.i.i = select i1 %tobool14.not.i153.1.i.i, i1 true, i1 %cmp17.i155.1.i.i
  %spec.select589.i.i = select i1 %or.cond65.i156.1.i.i, i32 %add.1.i.i, i32 %lx.1.i163.i.i
  %spec.select590.i.i = select i1 %or.cond65.i156.1.i.i, i32 %conv110.1.i.i, i32 %ly.1.i164.i.i
  br label %for.inc.i168.1.i.i

for.inc.i168.1.i.i:                               ; preds = %if.then13.i157.1.i.i, %if.then.i143.1.i.i.for.inc.i168.1.i.i_crit_edge
  %hhave.175.i160.1.i.i = phi i32 [ 1, %if.then.i143.1.i.i.for.inc.i168.1.i.i_crit_edge ], [ %hhave.176.i150.1.i.i, %if.then13.i157.1.i.i ]
  %hy.173.i161.1.i.i = phi i32 [ %spec.select588.i.i, %if.then.i143.1.i.i.for.inc.i168.1.i.i_crit_edge ], [ %hy.174.i151.1.i.i, %if.then13.i157.1.i.i ]
  %hx.171.i162.1.i.i = phi i32 [ %spec.select587.i.i, %if.then.i143.1.i.i.for.inc.i168.1.i.i_crit_edge ], [ %hx.172.i152.1.i.i, %if.then13.i157.1.i.i ]
  %lx.1.i163.1.i.i = phi i32 [ %lx.1.i163.i.i, %if.then.i143.1.i.i.for.inc.i168.1.i.i_crit_edge ], [ %spec.select589.i.i, %if.then13.i157.1.i.i ]
  %ly.1.i164.1.i.i = phi i32 [ %ly.1.i164.i.i, %if.then.i143.1.i.i.for.inc.i168.1.i.i_crit_edge ], [ %spec.select590.i.i, %if.then13.i157.1.i.i ]
  %lhave.1.i165.1.i.i = phi i32 [ %lhave.1.i165.i.i, %if.then.i143.1.i.i.for.inc.i168.1.i.i_crit_edge ], [ 1, %if.then13.i157.1.i.i ]
  %sub.i136.2.i.i = sub nsw i32 %conv124, %add.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i136.2.i.i)
  %cmp2.i137.2.i.i = icmp slt i32 %sub.i136.2.i.i, 1
  br i1 %cmp2.i137.2.i.i, label %if.then.i143.2.i.i, label %for.inc.i168.1.i.i.if.then13.i157.2.i.i_crit_edge

for.inc.i168.1.i.i.if.then13.i157.2.i.i_crit_edge: ; preds = %for.inc.i168.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.2.i.i

if.then.i143.2.i.i:                               ; preds = %for.inc.i168.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i160.1.i.i)
  %tobool.not.i139.2.i.i = icmp eq i32 %hhave.175.i160.1.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i162.1.i.i, i32 %add.2.i.i)
  %cmp5.i141.2.i.i = icmp ugt i32 %hx.171.i162.1.i.i, %add.2.i.i
  %or.cond.i142.2.i.i = select i1 %tobool.not.i139.2.i.i, i1 true, i1 %cmp5.i141.2.i.i
  %spec.select591.i.i = select i1 %or.cond.i142.2.i.i, i32 %add.2.i.i, i32 %hx.171.i162.1.i.i
  %spec.select592.i.i = select i1 %or.cond.i142.2.i.i, i32 %conv110.2.i.i, i32 %hy.173.i161.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i136.2.i.i)
  %cmp11.i148.2.i.i = icmp sgt i32 %sub.i136.2.i.i, -1
  br i1 %cmp11.i148.2.i.i, label %if.then.i143.2.i.i.if.then13.i157.2.i.i_crit_edge, label %if.then.i143.2.i.i.for.inc.i168.2.i.i_crit_edge

if.then.i143.2.i.i.for.inc.i168.2.i.i_crit_edge:  ; preds = %if.then.i143.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i168.2.i.i

if.then.i143.2.i.i.if.then13.i157.2.i.i_crit_edge: ; preds = %if.then.i143.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.2.i.i

if.then13.i157.2.i.i:                             ; preds = %if.then.i143.2.i.i.if.then13.i157.2.i.i_crit_edge, %for.inc.i168.1.i.i.if.then13.i157.2.i.i_crit_edge
  %hhave.176.i150.2.i.i = phi i32 [ 1, %if.then.i143.2.i.i.if.then13.i157.2.i.i_crit_edge ], [ %hhave.175.i160.1.i.i, %for.inc.i168.1.i.i.if.then13.i157.2.i.i_crit_edge ]
  %hy.174.i151.2.i.i = phi i32 [ %spec.select592.i.i, %if.then.i143.2.i.i.if.then13.i157.2.i.i_crit_edge ], [ %hy.173.i161.1.i.i, %for.inc.i168.1.i.i.if.then13.i157.2.i.i_crit_edge ]
  %hx.172.i152.2.i.i = phi i32 [ %spec.select591.i.i, %if.then.i143.2.i.i.if.then13.i157.2.i.i_crit_edge ], [ %hx.171.i162.1.i.i, %for.inc.i168.1.i.i.if.then13.i157.2.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i165.1.i.i)
  %tobool14.not.i153.2.i.i = icmp eq i32 %lhave.1.i165.1.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i163.1.i.i, i32 %add.2.i.i)
  %cmp17.i155.2.i.i = icmp ult i32 %lx.1.i163.1.i.i, %add.2.i.i
  %or.cond65.i156.2.i.i = select i1 %tobool14.not.i153.2.i.i, i1 true, i1 %cmp17.i155.2.i.i
  %spec.select593.i.i = select i1 %or.cond65.i156.2.i.i, i32 %add.2.i.i, i32 %lx.1.i163.1.i.i
  %spec.select594.i.i = select i1 %or.cond65.i156.2.i.i, i32 %conv110.2.i.i, i32 %ly.1.i164.1.i.i
  br label %for.inc.i168.2.i.i

for.inc.i168.2.i.i:                               ; preds = %if.then13.i157.2.i.i, %if.then.i143.2.i.i.for.inc.i168.2.i.i_crit_edge
  %hhave.175.i160.2.i.i = phi i32 [ 1, %if.then.i143.2.i.i.for.inc.i168.2.i.i_crit_edge ], [ %hhave.176.i150.2.i.i, %if.then13.i157.2.i.i ]
  %hy.173.i161.2.i.i = phi i32 [ %spec.select592.i.i, %if.then.i143.2.i.i.for.inc.i168.2.i.i_crit_edge ], [ %hy.174.i151.2.i.i, %if.then13.i157.2.i.i ]
  %hx.171.i162.2.i.i = phi i32 [ %spec.select591.i.i, %if.then.i143.2.i.i.for.inc.i168.2.i.i_crit_edge ], [ %hx.172.i152.2.i.i, %if.then13.i157.2.i.i ]
  %lx.1.i163.2.i.i = phi i32 [ %lx.1.i163.1.i.i, %if.then.i143.2.i.i.for.inc.i168.2.i.i_crit_edge ], [ %spec.select593.i.i, %if.then13.i157.2.i.i ]
  %ly.1.i164.2.i.i = phi i32 [ %ly.1.i164.1.i.i, %if.then.i143.2.i.i.for.inc.i168.2.i.i_crit_edge ], [ %spec.select594.i.i, %if.then13.i157.2.i.i ]
  %lhave.1.i165.2.i.i = phi i32 [ %lhave.1.i165.1.i.i, %if.then.i143.2.i.i.for.inc.i168.2.i.i_crit_edge ], [ 1, %if.then13.i157.2.i.i ]
  %sub.i136.3.i.i = sub nsw i32 %conv124, %add.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i136.3.i.i)
  %cmp2.i137.3.i.i = icmp slt i32 %sub.i136.3.i.i, 1
  br i1 %cmp2.i137.3.i.i, label %if.then.i143.3.i.i, label %for.inc.i168.2.i.i.if.then13.i157.3.i.i_crit_edge

for.inc.i168.2.i.i.if.then13.i157.3.i.i_crit_edge: ; preds = %for.inc.i168.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.3.i.i

if.then.i143.3.i.i:                               ; preds = %for.inc.i168.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i160.2.i.i)
  %tobool.not.i139.3.i.i = icmp eq i32 %hhave.175.i160.2.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i162.2.i.i, i32 %add.3.i.i)
  %cmp5.i141.3.i.i = icmp ugt i32 %hx.171.i162.2.i.i, %add.3.i.i
  %or.cond.i142.3.i.i = select i1 %tobool.not.i139.3.i.i, i1 true, i1 %cmp5.i141.3.i.i
  %spec.select595.i.i = select i1 %or.cond.i142.3.i.i, i32 %add.3.i.i, i32 %hx.171.i162.2.i.i
  %spec.select596.i.i = select i1 %or.cond.i142.3.i.i, i32 %conv110.3.i.i, i32 %hy.173.i161.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i136.3.i.i)
  %cmp11.i148.3.i.i = icmp sgt i32 %sub.i136.3.i.i, -1
  br i1 %cmp11.i148.3.i.i, label %if.then.i143.3.i.i.if.then13.i157.3.i.i_crit_edge, label %if.then.i143.3.i.i.for.inc.i168.3.i.i_crit_edge

if.then.i143.3.i.i.for.inc.i168.3.i.i_crit_edge:  ; preds = %if.then.i143.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i168.3.i.i

if.then.i143.3.i.i.if.then13.i157.3.i.i_crit_edge: ; preds = %if.then.i143.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.3.i.i

if.then13.i157.3.i.i:                             ; preds = %if.then.i143.3.i.i.if.then13.i157.3.i.i_crit_edge, %for.inc.i168.2.i.i.if.then13.i157.3.i.i_crit_edge
  %hhave.176.i150.3.i.i = phi i32 [ 1, %if.then.i143.3.i.i.if.then13.i157.3.i.i_crit_edge ], [ %hhave.175.i160.2.i.i, %for.inc.i168.2.i.i.if.then13.i157.3.i.i_crit_edge ]
  %hy.174.i151.3.i.i = phi i32 [ %spec.select596.i.i, %if.then.i143.3.i.i.if.then13.i157.3.i.i_crit_edge ], [ %hy.173.i161.2.i.i, %for.inc.i168.2.i.i.if.then13.i157.3.i.i_crit_edge ]
  %hx.172.i152.3.i.i = phi i32 [ %spec.select595.i.i, %if.then.i143.3.i.i.if.then13.i157.3.i.i_crit_edge ], [ %hx.171.i162.2.i.i, %for.inc.i168.2.i.i.if.then13.i157.3.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i165.2.i.i)
  %tobool14.not.i153.3.i.i = icmp eq i32 %lhave.1.i165.2.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i163.2.i.i, i32 %add.3.i.i)
  %cmp17.i155.3.i.i = icmp ult i32 %lx.1.i163.2.i.i, %add.3.i.i
  %or.cond65.i156.3.i.i = select i1 %tobool14.not.i153.3.i.i, i1 true, i1 %cmp17.i155.3.i.i
  %spec.select597.i.i = select i1 %or.cond65.i156.3.i.i, i32 %add.3.i.i, i32 %lx.1.i163.2.i.i
  %spec.select598.i.i = select i1 %or.cond65.i156.3.i.i, i32 %conv110.3.i.i, i32 %ly.1.i164.2.i.i
  br label %for.inc.i168.3.i.i

for.inc.i168.3.i.i:                               ; preds = %if.then13.i157.3.i.i, %if.then.i143.3.i.i.for.inc.i168.3.i.i_crit_edge
  %hhave.175.i160.3.i.i = phi i32 [ 1, %if.then.i143.3.i.i.for.inc.i168.3.i.i_crit_edge ], [ %hhave.176.i150.3.i.i, %if.then13.i157.3.i.i ]
  %hy.173.i161.3.i.i = phi i32 [ %spec.select596.i.i, %if.then.i143.3.i.i.for.inc.i168.3.i.i_crit_edge ], [ %hy.174.i151.3.i.i, %if.then13.i157.3.i.i ]
  %hx.171.i162.3.i.i = phi i32 [ %spec.select595.i.i, %if.then.i143.3.i.i.for.inc.i168.3.i.i_crit_edge ], [ %hx.172.i152.3.i.i, %if.then13.i157.3.i.i ]
  %lx.1.i163.3.i.i = phi i32 [ %lx.1.i163.2.i.i, %if.then.i143.3.i.i.for.inc.i168.3.i.i_crit_edge ], [ %spec.select597.i.i, %if.then13.i157.3.i.i ]
  %ly.1.i164.3.i.i = phi i32 [ %ly.1.i164.2.i.i, %if.then.i143.3.i.i.for.inc.i168.3.i.i_crit_edge ], [ %spec.select598.i.i, %if.then13.i157.3.i.i ]
  %lhave.1.i165.3.i.i = phi i32 [ %lhave.1.i165.2.i.i, %if.then.i143.3.i.i.for.inc.i168.3.i.i_crit_edge ], [ 1, %if.then13.i157.3.i.i ]
  %sub.i136.4.i.i = sub nsw i32 %conv124, %add.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i136.4.i.i)
  %cmp2.i137.4.i.i = icmp slt i32 %sub.i136.4.i.i, 1
  br i1 %cmp2.i137.4.i.i, label %if.then.i143.4.i.i, label %for.inc.i168.3.i.i.if.then13.i157.4.i.i_crit_edge

for.inc.i168.3.i.i.if.then13.i157.4.i.i_crit_edge: ; preds = %for.inc.i168.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.4.i.i

if.then.i143.4.i.i:                               ; preds = %for.inc.i168.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i160.3.i.i)
  %tobool.not.i139.4.i.i = icmp eq i32 %hhave.175.i160.3.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i162.3.i.i, i32 %add.4.i.i)
  %cmp5.i141.4.i.i = icmp ugt i32 %hx.171.i162.3.i.i, %add.4.i.i
  %or.cond.i142.4.i.i = select i1 %tobool.not.i139.4.i.i, i1 true, i1 %cmp5.i141.4.i.i
  %spec.select599.i.i = select i1 %or.cond.i142.4.i.i, i32 %add.4.i.i, i32 %hx.171.i162.3.i.i
  %spec.select600.i.i = select i1 %or.cond.i142.4.i.i, i32 %conv110.4.i.i, i32 %hy.173.i161.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i136.4.i.i)
  %cmp11.i148.4.i.i = icmp sgt i32 %sub.i136.4.i.i, -1
  br i1 %cmp11.i148.4.i.i, label %if.then.i143.4.i.i.if.then13.i157.4.i.i_crit_edge, label %if.then.i143.4.i.i.for.inc.i168.4.i.i_crit_edge

if.then.i143.4.i.i.for.inc.i168.4.i.i_crit_edge:  ; preds = %if.then.i143.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i168.4.i.i

if.then.i143.4.i.i.if.then13.i157.4.i.i_crit_edge: ; preds = %if.then.i143.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.4.i.i

if.then13.i157.4.i.i:                             ; preds = %if.then.i143.4.i.i.if.then13.i157.4.i.i_crit_edge, %for.inc.i168.3.i.i.if.then13.i157.4.i.i_crit_edge
  %hhave.176.i150.4.i.i = phi i32 [ 1, %if.then.i143.4.i.i.if.then13.i157.4.i.i_crit_edge ], [ %hhave.175.i160.3.i.i, %for.inc.i168.3.i.i.if.then13.i157.4.i.i_crit_edge ]
  %hy.174.i151.4.i.i = phi i32 [ %spec.select600.i.i, %if.then.i143.4.i.i.if.then13.i157.4.i.i_crit_edge ], [ %hy.173.i161.3.i.i, %for.inc.i168.3.i.i.if.then13.i157.4.i.i_crit_edge ]
  %hx.172.i152.4.i.i = phi i32 [ %spec.select599.i.i, %if.then.i143.4.i.i.if.then13.i157.4.i.i_crit_edge ], [ %hx.171.i162.3.i.i, %for.inc.i168.3.i.i.if.then13.i157.4.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i165.3.i.i)
  %tobool14.not.i153.4.i.i = icmp eq i32 %lhave.1.i165.3.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i163.3.i.i, i32 %add.4.i.i)
  %cmp17.i155.4.i.i = icmp ult i32 %lx.1.i163.3.i.i, %add.4.i.i
  %or.cond65.i156.4.i.i = select i1 %tobool14.not.i153.4.i.i, i1 true, i1 %cmp17.i155.4.i.i
  %spec.select601.i.i = select i1 %or.cond65.i156.4.i.i, i32 %add.4.i.i, i32 %lx.1.i163.3.i.i
  %spec.select602.i.i = select i1 %or.cond65.i156.4.i.i, i32 %conv110.4.i.i, i32 %ly.1.i164.3.i.i
  br label %for.inc.i168.4.i.i

for.inc.i168.4.i.i:                               ; preds = %if.then13.i157.4.i.i, %if.then.i143.4.i.i.for.inc.i168.4.i.i_crit_edge
  %hhave.175.i160.4.i.i = phi i32 [ 1, %if.then.i143.4.i.i.for.inc.i168.4.i.i_crit_edge ], [ %hhave.176.i150.4.i.i, %if.then13.i157.4.i.i ]
  %hy.173.i161.4.i.i = phi i32 [ %spec.select600.i.i, %if.then.i143.4.i.i.for.inc.i168.4.i.i_crit_edge ], [ %hy.174.i151.4.i.i, %if.then13.i157.4.i.i ]
  %hx.171.i162.4.i.i = phi i32 [ %spec.select599.i.i, %if.then.i143.4.i.i.for.inc.i168.4.i.i_crit_edge ], [ %hx.172.i152.4.i.i, %if.then13.i157.4.i.i ]
  %lx.1.i163.4.i.i = phi i32 [ %lx.1.i163.3.i.i, %if.then.i143.4.i.i.for.inc.i168.4.i.i_crit_edge ], [ %spec.select601.i.i, %if.then13.i157.4.i.i ]
  %ly.1.i164.4.i.i = phi i32 [ %ly.1.i164.3.i.i, %if.then.i143.4.i.i.for.inc.i168.4.i.i_crit_edge ], [ %spec.select602.i.i, %if.then13.i157.4.i.i ]
  %lhave.1.i165.4.i.i = phi i32 [ %lhave.1.i165.3.i.i, %if.then.i143.4.i.i.for.inc.i168.4.i.i_crit_edge ], [ 1, %if.then13.i157.4.i.i ]
  %sub.i136.5.i.i = sub nsw i32 %conv124, %add.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i136.5.i.i)
  %cmp2.i137.5.i.i = icmp slt i32 %sub.i136.5.i.i, 1
  br i1 %cmp2.i137.5.i.i, label %if.then.i143.5.i.i, label %for.inc.i168.4.i.i.if.then13.i157.5.i.i_crit_edge

for.inc.i168.4.i.i.if.then13.i157.5.i.i_crit_edge: ; preds = %for.inc.i168.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.5.i.i

if.then.i143.5.i.i:                               ; preds = %for.inc.i168.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i160.4.i.i)
  %tobool.not.i139.5.i.i = icmp eq i32 %hhave.175.i160.4.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i162.4.i.i, i32 %add.5.i.i)
  %cmp5.i141.5.i.i = icmp ugt i32 %hx.171.i162.4.i.i, %add.5.i.i
  %or.cond.i142.5.i.i = select i1 %tobool.not.i139.5.i.i, i1 true, i1 %cmp5.i141.5.i.i
  %spec.select603.i.i = select i1 %or.cond.i142.5.i.i, i32 %add.5.i.i, i32 %hx.171.i162.4.i.i
  %spec.select604.i.i = select i1 %or.cond.i142.5.i.i, i32 %conv110.5.i.i, i32 %hy.173.i161.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i136.5.i.i)
  %cmp11.i148.5.i.i = icmp sgt i32 %sub.i136.5.i.i, -1
  br i1 %cmp11.i148.5.i.i, label %if.then.i143.5.i.i.if.then13.i157.5.i.i_crit_edge, label %if.then.i143.5.i.i.for.inc.i168.5.i.i_crit_edge

if.then.i143.5.i.i.for.inc.i168.5.i.i_crit_edge:  ; preds = %if.then.i143.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i168.5.i.i

if.then.i143.5.i.i.if.then13.i157.5.i.i_crit_edge: ; preds = %if.then.i143.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.5.i.i

if.then13.i157.5.i.i:                             ; preds = %if.then.i143.5.i.i.if.then13.i157.5.i.i_crit_edge, %for.inc.i168.4.i.i.if.then13.i157.5.i.i_crit_edge
  %hhave.176.i150.5.i.i = phi i32 [ 1, %if.then.i143.5.i.i.if.then13.i157.5.i.i_crit_edge ], [ %hhave.175.i160.4.i.i, %for.inc.i168.4.i.i.if.then13.i157.5.i.i_crit_edge ]
  %hy.174.i151.5.i.i = phi i32 [ %spec.select604.i.i, %if.then.i143.5.i.i.if.then13.i157.5.i.i_crit_edge ], [ %hy.173.i161.4.i.i, %for.inc.i168.4.i.i.if.then13.i157.5.i.i_crit_edge ]
  %hx.172.i152.5.i.i = phi i32 [ %spec.select603.i.i, %if.then.i143.5.i.i.if.then13.i157.5.i.i_crit_edge ], [ %hx.171.i162.4.i.i, %for.inc.i168.4.i.i.if.then13.i157.5.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i165.4.i.i)
  %tobool14.not.i153.5.i.i = icmp eq i32 %lhave.1.i165.4.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i163.4.i.i, i32 %add.5.i.i)
  %cmp17.i155.5.i.i = icmp ult i32 %lx.1.i163.4.i.i, %add.5.i.i
  %or.cond65.i156.5.i.i = select i1 %tobool14.not.i153.5.i.i, i1 true, i1 %cmp17.i155.5.i.i
  %spec.select605.i.i = select i1 %or.cond65.i156.5.i.i, i32 %add.5.i.i, i32 %lx.1.i163.4.i.i
  %spec.select606.i.i = select i1 %or.cond65.i156.5.i.i, i32 %conv110.5.i.i, i32 %ly.1.i164.4.i.i
  br label %for.inc.i168.5.i.i

for.inc.i168.5.i.i:                               ; preds = %if.then13.i157.5.i.i, %if.then.i143.5.i.i.for.inc.i168.5.i.i_crit_edge
  %hhave.175.i160.5.i.i = phi i32 [ 1, %if.then.i143.5.i.i.for.inc.i168.5.i.i_crit_edge ], [ %hhave.176.i150.5.i.i, %if.then13.i157.5.i.i ]
  %hy.173.i161.5.i.i = phi i32 [ %spec.select604.i.i, %if.then.i143.5.i.i.for.inc.i168.5.i.i_crit_edge ], [ %hy.174.i151.5.i.i, %if.then13.i157.5.i.i ]
  %hx.171.i162.5.i.i = phi i32 [ %spec.select603.i.i, %if.then.i143.5.i.i.for.inc.i168.5.i.i_crit_edge ], [ %hx.172.i152.5.i.i, %if.then13.i157.5.i.i ]
  %lx.1.i163.5.i.i = phi i32 [ %lx.1.i163.4.i.i, %if.then.i143.5.i.i.for.inc.i168.5.i.i_crit_edge ], [ %spec.select605.i.i, %if.then13.i157.5.i.i ]
  %ly.1.i164.5.i.i = phi i32 [ %ly.1.i164.4.i.i, %if.then.i143.5.i.i.for.inc.i168.5.i.i_crit_edge ], [ %spec.select606.i.i, %if.then13.i157.5.i.i ]
  %lhave.1.i165.5.i.i = phi i32 [ %lhave.1.i165.4.i.i, %if.then.i143.5.i.i.for.inc.i168.5.i.i_crit_edge ], [ 1, %if.then13.i157.5.i.i ]
  %sub.i136.6.i.i = sub nsw i32 %conv124, %add.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i136.6.i.i)
  %cmp2.i137.6.i.i = icmp slt i32 %sub.i136.6.i.i, 1
  br i1 %cmp2.i137.6.i.i, label %if.then.i143.6.i.i, label %for.inc.i168.5.i.i.if.then13.i157.6.i.i_crit_edge

for.inc.i168.5.i.i.if.then13.i157.6.i.i_crit_edge: ; preds = %for.inc.i168.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.6.i.i

if.then.i143.6.i.i:                               ; preds = %for.inc.i168.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i160.5.i.i)
  %tobool.not.i139.6.i.i = icmp eq i32 %hhave.175.i160.5.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i162.5.i.i, i32 %add.6.i.i)
  %cmp5.i141.6.i.i = icmp ugt i32 %hx.171.i162.5.i.i, %add.6.i.i
  %or.cond.i142.6.i.i = select i1 %tobool.not.i139.6.i.i, i1 true, i1 %cmp5.i141.6.i.i
  %spec.select607.i.i = select i1 %or.cond.i142.6.i.i, i32 %add.6.i.i, i32 %hx.171.i162.5.i.i
  %spec.select608.i.i = select i1 %or.cond.i142.6.i.i, i32 %conv110.6.i.i, i32 %hy.173.i161.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i136.6.i.i)
  %cmp11.i148.6.i.i = icmp sgt i32 %sub.i136.6.i.i, -1
  br i1 %cmp11.i148.6.i.i, label %if.then.i143.6.i.i.if.then13.i157.6.i.i_crit_edge, label %if.then.i143.6.i.i.for.inc.i168.6.i.i_crit_edge

if.then.i143.6.i.i.for.inc.i168.6.i.i_crit_edge:  ; preds = %if.then.i143.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i168.6.i.i

if.then.i143.6.i.i.if.then13.i157.6.i.i_crit_edge: ; preds = %if.then.i143.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.6.i.i

if.then13.i157.6.i.i:                             ; preds = %if.then.i143.6.i.i.if.then13.i157.6.i.i_crit_edge, %for.inc.i168.5.i.i.if.then13.i157.6.i.i_crit_edge
  %hhave.176.i150.6.i.i = phi i32 [ 1, %if.then.i143.6.i.i.if.then13.i157.6.i.i_crit_edge ], [ %hhave.175.i160.5.i.i, %for.inc.i168.5.i.i.if.then13.i157.6.i.i_crit_edge ]
  %hy.174.i151.6.i.i = phi i32 [ %spec.select608.i.i, %if.then.i143.6.i.i.if.then13.i157.6.i.i_crit_edge ], [ %hy.173.i161.5.i.i, %for.inc.i168.5.i.i.if.then13.i157.6.i.i_crit_edge ]
  %hx.172.i152.6.i.i = phi i32 [ %spec.select607.i.i, %if.then.i143.6.i.i.if.then13.i157.6.i.i_crit_edge ], [ %hx.171.i162.5.i.i, %for.inc.i168.5.i.i.if.then13.i157.6.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i165.5.i.i)
  %tobool14.not.i153.6.i.i = icmp eq i32 %lhave.1.i165.5.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i163.5.i.i, i32 %add.6.i.i)
  %cmp17.i155.6.i.i = icmp ult i32 %lx.1.i163.5.i.i, %add.6.i.i
  %or.cond65.i156.6.i.i = select i1 %tobool14.not.i153.6.i.i, i1 true, i1 %cmp17.i155.6.i.i
  %spec.select609.i.i = select i1 %or.cond65.i156.6.i.i, i32 %add.6.i.i, i32 %lx.1.i163.5.i.i
  %spec.select610.i.i = select i1 %or.cond65.i156.6.i.i, i32 %conv110.6.i.i, i32 %ly.1.i164.5.i.i
  br label %for.inc.i168.6.i.i

for.inc.i168.6.i.i:                               ; preds = %if.then13.i157.6.i.i, %if.then.i143.6.i.i.for.inc.i168.6.i.i_crit_edge
  %hhave.175.i160.6.i.i = phi i32 [ 1, %if.then.i143.6.i.i.for.inc.i168.6.i.i_crit_edge ], [ %hhave.176.i150.6.i.i, %if.then13.i157.6.i.i ]
  %hy.173.i161.6.i.i = phi i32 [ %spec.select608.i.i, %if.then.i143.6.i.i.for.inc.i168.6.i.i_crit_edge ], [ %hy.174.i151.6.i.i, %if.then13.i157.6.i.i ]
  %hx.171.i162.6.i.i = phi i32 [ %spec.select607.i.i, %if.then.i143.6.i.i.for.inc.i168.6.i.i_crit_edge ], [ %hx.172.i152.6.i.i, %if.then13.i157.6.i.i ]
  %lx.1.i163.6.i.i = phi i32 [ %lx.1.i163.5.i.i, %if.then.i143.6.i.i.for.inc.i168.6.i.i_crit_edge ], [ %spec.select609.i.i, %if.then13.i157.6.i.i ]
  %ly.1.i164.6.i.i = phi i32 [ %ly.1.i164.5.i.i, %if.then.i143.6.i.i.for.inc.i168.6.i.i_crit_edge ], [ %spec.select610.i.i, %if.then13.i157.6.i.i ]
  %lhave.1.i165.6.i.i = phi i32 [ %lhave.1.i165.5.i.i, %if.then.i143.6.i.i.for.inc.i168.6.i.i_crit_edge ], [ 1, %if.then13.i157.6.i.i ]
  %sub.i136.7.i.i = sub nsw i32 %conv124, %add.7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i136.7.i.i)
  %cmp2.i137.7.i.i = icmp slt i32 %sub.i136.7.i.i, 1
  br i1 %cmp2.i137.7.i.i, label %if.then.i143.7.i.i, label %for.inc.i168.6.i.i.if.then13.i157.7.i.i_crit_edge

for.inc.i168.6.i.i.if.then13.i157.7.i.i_crit_edge: ; preds = %for.inc.i168.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.7.i.i

if.then.i143.7.i.i:                               ; preds = %for.inc.i168.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i160.6.i.i)
  %tobool.not.i139.7.i.i = icmp eq i32 %hhave.175.i160.6.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i162.6.i.i, i32 %add.7.i.i)
  %cmp5.i141.7.i.i = icmp ugt i32 %hx.171.i162.6.i.i, %add.7.i.i
  %or.cond.i142.7.i.i = select i1 %tobool.not.i139.7.i.i, i1 true, i1 %cmp5.i141.7.i.i
  %spec.select611.i.i = select i1 %or.cond.i142.7.i.i, i32 %add.7.i.i, i32 %hx.171.i162.6.i.i
  %spec.select612.i.i = select i1 %or.cond.i142.7.i.i, i32 %conv110.7.i.i, i32 %hy.173.i161.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i136.7.i.i)
  %cmp11.i148.7.i.i = icmp sgt i32 %sub.i136.7.i.i, -1
  br i1 %cmp11.i148.7.i.i, label %if.then.i143.7.i.i.if.then13.i157.7.i.i_crit_edge, label %for.inc.i168.7.i.i

if.then.i143.7.i.i.if.then13.i157.7.i.i_crit_edge: ; preds = %if.then.i143.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i157.7.i.i

if.then13.i157.7.i.i:                             ; preds = %if.then.i143.7.i.i.if.then13.i157.7.i.i_crit_edge, %for.inc.i168.6.i.i.if.then13.i157.7.i.i_crit_edge
  %hhave.176.i150.7.i.i = phi i32 [ 1, %if.then.i143.7.i.i.if.then13.i157.7.i.i_crit_edge ], [ %hhave.175.i160.6.i.i, %for.inc.i168.6.i.i.if.then13.i157.7.i.i_crit_edge ]
  %hy.174.i151.7.i.i = phi i32 [ %spec.select612.i.i, %if.then.i143.7.i.i.if.then13.i157.7.i.i_crit_edge ], [ %hy.173.i161.6.i.i, %for.inc.i168.6.i.i.if.then13.i157.7.i.i_crit_edge ]
  %hx.172.i152.7.i.i = phi i32 [ %spec.select611.i.i, %if.then.i143.7.i.i.if.then13.i157.7.i.i_crit_edge ], [ %hx.171.i162.6.i.i, %for.inc.i168.6.i.i.if.then13.i157.7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i165.6.i.i)
  %tobool14.not.i153.7.i.i = icmp eq i32 %lhave.1.i165.6.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.1.i163.6.i.i, i32 %add.7.i.i)
  %cmp17.i155.7.i.i = icmp ult i32 %lx.1.i163.6.i.i, %add.7.i.i
  %or.cond65.i156.7.i.i = select i1 %tobool14.not.i153.7.i.i, i1 true, i1 %cmp17.i155.7.i.i
  %spec.select613.i.i = select i1 %or.cond65.i156.7.i.i, i32 %add.7.i.i, i32 %lx.1.i163.6.i.i
  %spec.select614.i.i = select i1 %or.cond65.i156.7.i.i, i32 %conv110.7.i.i, i32 %ly.1.i164.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.176.i150.7.i.i)
  %tobool35.not.i170461.i.i = icmp eq i32 %hhave.176.i150.7.i.i, 0
  br label %if.then25.i174.i.i

for.inc.i168.7.i.i:                               ; preds = %if.then.i143.7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i165.6.i.i)
  %tobool24.not.i169.i.i = icmp eq i32 %lhave.1.i165.6.i.i, 0
  br i1 %tobool24.not.i169.i.i, label %for.inc.i168.7.i.i.tempslope.i.i_crit_edge, label %for.inc.i168.7.i.i.if.then25.i174.i.i_crit_edge

for.inc.i168.7.i.i.if.then25.i174.i.i_crit_edge:  ; preds = %for.inc.i168.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i174.i.i

for.inc.i168.7.i.i.tempslope.i.i_crit_edge:       ; preds = %for.inc.i168.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tempslope.i.i

if.then25.i174.i.i:                               ; preds = %for.inc.i168.7.i.i.if.then25.i174.i.i_crit_edge, %if.then13.i157.7.i.i
  %tobool35.not.i170466.i.i = phi i1 [ %tobool35.not.i170461.i.i, %if.then13.i157.7.i.i ], [ false, %for.inc.i168.7.i.i.if.then25.i174.i.i_crit_edge ]
  %ly.1.i164.7465.i.i = phi i32 [ %spec.select614.i.i, %if.then13.i157.7.i.i ], [ %ly.1.i164.6.i.i, %for.inc.i168.7.i.i.if.then25.i174.i.i_crit_edge ]
  %lx.1.i163.7464.i.i = phi i32 [ %spec.select613.i.i, %if.then13.i157.7.i.i ], [ %lx.1.i163.6.i.i, %for.inc.i168.7.i.i.if.then25.i174.i.i_crit_edge ]
  %hx.171.i162.7463.i.i = phi i32 [ %hx.172.i152.7.i.i, %if.then13.i157.7.i.i ], [ %spec.select611.i.i, %for.inc.i168.7.i.i.if.then25.i174.i.i_crit_edge ]
  %hy.173.i161.7462.i.i = phi i32 [ %hy.174.i151.7.i.i, %if.then13.i157.7.i.i ], [ %spec.select612.i.i, %for.inc.i168.7.i.i.if.then25.i174.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i162.7463.i.i, i32 %lx.1.i163.7464.i.i)
  %cmp28.i172.i.i = icmp eq i32 %hx.171.i162.7463.i.i, %lx.1.i163.7464.i.i
  %or.cond66.i173.i.i = select i1 %tobool35.not.i170466.i.i, i1 true, i1 %cmp28.i172.i.i
  br i1 %or.cond66.i173.i.i, label %if.then25.i174.i.i.tempslope.i.i_crit_edge, label %if.else.i185.i.i

if.then25.i174.i.i.tempslope.i.i_crit_edge:       ; preds = %if.then25.i174.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tempslope.i.i

if.else.i185.i.i:                                 ; preds = %if.then25.i174.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i175.i.i = sub nsw i32 %hy.173.i161.7462.i.i, %ly.1.i164.7465.i.i
  %sub1.i.i176.i.i = sub nsw i32 %conv124, %lx.1.i163.7464.i.i
  %mul.i.i177.i.i = shl i32 %sub1.i.i176.i.i, 1
  %mul2.i.i178.i.i = mul i32 %mul.i.i177.i.i, %sub.i.i175.i.i
  %sub3.i.i179.i.i = sub nsw i32 %hx.171.i162.7463.i.i, %lx.1.i163.7464.i.i
  %div.i.i180.i.i = sdiv i32 %mul2.i.i178.i.i, %sub3.i.i179.i.i
  %div.i.i180.i.i.frozen = freeze i32 %div.i.i180.i.i
  %div4.i.i181.i.i = sdiv i32 %div.i.i180.i.i.frozen, 2
  %505 = mul i32 %div4.i.i181.i.i, 2
  %rem.i.i182.i.i.decomposed = sub i32 %div.i.i180.i.i.frozen, %505
  %add.i.i183.i.i = add nsw i32 %div4.i.i181.i.i, %ly.1.i164.7465.i.i
  %add5.i.i184.i.i = add nsw i32 %add.i.i183.i.i, %rem.i.i182.i.i.decomposed
  br label %tempslope.i.i

if.else118.i.i:                                   ; preds = %if.end99.i.i
  %base_ext2.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 1
  %506 = ptrtoint ptr %base_ext2.i.i to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %base_ext2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %507)
  %cmp120.not.i.i = icmp eq i8 %507, 0
  br i1 %cmp120.not.i.i, label %if.else140.i.i, label %if.then122.i.i

if.then122.i.i:                                   ; preds = %if.else118.i.i
  %conv119.i.i = sext i8 %507 to i32
  %tempSlope129.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  %508 = ptrtoint ptr %tempSlope129.i.i to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %tempSlope129.i.i, align 1
  %conv130.i.i = sext i8 %509 to i32
  %tempSlopeHigh.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 2
  %510 = ptrtoint ptr %tempSlopeHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %tempSlopeHigh.i.i, align 1
  %conv134.i.i = sext i8 %511 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5181, i16 %237)
  %cmp2.i199.i.i = icmp ult i16 %237, 5181
  br i1 %cmp2.i199.i.i, label %if.end10.i211.i.i, label %for.inc.i230.i.i

if.end10.i211.i.i:                                ; preds = %if.then122.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5180, i16 %237)
  %cmp11.i210.i.i = icmp eq i16 %237, 5180
  %sub.i198.1474.i.i = add nuw nsw i32 %conv124, -5500
  %sub.i198.1487.i.i = select i1 %cmp11.i210.i.i, i32 -320, i32 %sub.i198.1474.i.i
  %sub4.i202.1.i.i = add nsw i32 %conv124, -5180
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i198.1487.i.i, i32 %sub4.i202.1.i.i)
  %cmp5.i203.1.i.i = icmp sgt i32 %sub.i198.1487.i.i, %sub4.i202.1.i.i
  %spec.select615.i.i = select i1 %cmp5.i203.1.i.i, i32 %conv130.i.i, i32 %conv119.i.i
  %spec.select616.i.i = select i1 %cmp5.i203.1.i.i, i32 5500, i32 5180
  %sub.i198.2537.i.i = add nuw nsw i32 %conv124, -5785
  %sub4.i202.2.i280.i = sub nsw i32 %conv124, %spec.select616.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i198.2537.i.i, i32 %sub4.i202.2.i280.i)
  %cmp5.i203.2.i281.i = icmp sgt i32 %sub.i198.2537.i.i, %sub4.i202.2.i280.i
  %spec.select619.i283.i = select i1 %cmp5.i203.2.i281.i, i32 5785, i32 %spec.select616.i.i
  %spec.select620.i284.i = select i1 %cmp5.i203.2.i281.i, i32 %conv134.i.i, i32 %spec.select615.i.i
  br i1 %cmp11.i210.i.i, label %if.end10.i211.i.i.if.then25.i236.i.i_crit_edge, label %if.end10.i211.i.i.tempslope.i.i_crit_edge

if.end10.i211.i.i.tempslope.i.i_crit_edge:        ; preds = %if.end10.i211.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tempslope.i.i

if.end10.i211.i.i.if.then25.i236.i.i_crit_edge:   ; preds = %if.end10.i211.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i236.i.i

for.inc.i230.i.i:                                 ; preds = %if.then122.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5501, i16 %237)
  %cmp2.i199.1.i.i = icmp ult i16 %237, 5501
  br i1 %cmp2.i199.1.i.i, label %if.end10.i211.1.i.i, label %if.then13.i219.1.i.i

if.end10.i211.1.i.i:                              ; preds = %for.inc.i230.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 5500, i16 %237)
  %cmp11.i210.1.i.i = icmp eq i16 %237, 5500
  %conv130.i.i.conv119.i.i = select i1 %cmp11.i210.1.i.i, i32 %conv130.i.i, i32 %conv119.i.i
  %.294 = select i1 %cmp11.i210.1.i.i, i32 5500, i32 5180
  br label %if.then25.i236.i.i

if.then13.i219.1.i.i:                             ; preds = %for.inc.i230.i.i
  %sub.i198.1.i.i = add nsw i32 %conv124, -5500
  %sub16.i216.1.i.i = add nsw i32 %conv124, -5180
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i198.1.i.i, i32 %sub16.i216.1.i.i)
  %cmp17.i217.1.i.i = icmp ult i32 %sub.i198.1.i.i, %sub16.i216.1.i.i
  %spec.select617.i.i = select i1 %cmp17.i217.1.i.i, i32 5500, i32 5180
  %spec.select618.i.i = select i1 %cmp17.i217.1.i.i, i32 %conv130.i.i, i32 %conv119.i.i
  %sub.i198.2.i.i = add nsw i32 %conv124, -5785
  call void @__sanitizer_cov_trace_const_cmp2(i16 5786, i16 %237)
  %cmp2.i199.2.i.i = icmp ult i16 %237, 5786
  br i1 %cmp2.i199.2.i.i, label %if.then.i205.2.i.i, label %if.then13.i219.1.i.i.if.then13.i219.2.i.i_crit_edge

if.then13.i219.1.i.i.if.then13.i219.2.i.i_crit_edge: ; preds = %if.then13.i219.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i219.2.i.i

if.then.i205.2.i.i:                               ; preds = %if.then13.i219.1.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5785, i16 %237)
  %cmp11.i210.2.i.i = icmp eq i16 %237, 5785
  br i1 %cmp11.i210.2.i.i, label %if.then.i205.2.i.i.if.then13.i219.2.i.i_crit_edge, label %if.then.i205.2.i.i.if.then25.i236.i.i_crit_edge

if.then.i205.2.i.i.if.then25.i236.i.i_crit_edge:  ; preds = %if.then.i205.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i236.i.i

if.then.i205.2.i.i.if.then13.i219.2.i.i_crit_edge: ; preds = %if.then.i205.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i219.2.i.i

if.then13.i219.2.i.i:                             ; preds = %if.then.i205.2.i.i.if.then13.i219.2.i.i_crit_edge, %if.then13.i219.1.i.i.if.then13.i219.2.i.i_crit_edge
  %sub.i198.2548.i.i = phi i32 [ 0, %if.then.i205.2.i.i.if.then13.i219.2.i.i_crit_edge ], [ %sub.i198.2.i.i, %if.then13.i219.1.i.i.if.then13.i219.2.i.i_crit_edge ]
  %hy.174.i213.2.i.i = phi i32 [ %conv134.i.i, %if.then.i205.2.i.i.if.then13.i219.2.i.i_crit_edge ], [ 0, %if.then13.i219.1.i.i.if.then13.i219.2.i.i_crit_edge ]
  %hx.172.i214.2.i.i = phi i32 [ 5785, %if.then.i205.2.i.i.if.then13.i219.2.i.i_crit_edge ], [ 0, %if.then13.i219.1.i.i.if.then13.i219.2.i.i_crit_edge ]
  %512 = xor i1 %cmp2.i199.2.i.i, true
  %sub16.i216.2.i.i = sub nuw nsw i32 %conv124, %spec.select617.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i198.2548.i.i, i32 %sub16.i216.2.i.i)
  %cmp17.i217.2.i.i = icmp ult i32 %sub.i198.2548.i.i, %sub16.i216.2.i.i
  %spec.select621.i.i = select i1 %cmp17.i217.2.i.i, i32 5785, i32 %spec.select617.i.i
  %spec.select622.i.i = select i1 %cmp17.i217.2.i.i, i32 %conv134.i.i, i32 %spec.select618.i.i
  br label %if.then25.i236.i.i

if.then25.i236.i.i:                               ; preds = %if.then13.i219.2.i.i, %if.then.i205.2.i.i.if.then25.i236.i.i_crit_edge, %if.end10.i211.1.i.i, %if.end10.i211.i.i.if.then25.i236.i.i_crit_edge
  %tobool35.not.i232562.i.i = phi i1 [ %512, %if.then13.i219.2.i.i ], [ false, %if.end10.i211.i.i.if.then25.i236.i.i_crit_edge ], [ false, %if.then.i205.2.i.i.if.then25.i236.i.i_crit_edge ], [ false, %if.end10.i211.1.i.i ]
  %ly.1.i226.2561.i.i = phi i32 [ %spec.select622.i.i, %if.then13.i219.2.i.i ], [ %conv119.i.i, %if.end10.i211.i.i.if.then25.i236.i.i_crit_edge ], [ %spec.select618.i.i, %if.then.i205.2.i.i.if.then25.i236.i.i_crit_edge ], [ %conv130.i.i.conv119.i.i, %if.end10.i211.1.i.i ]
  %lx.1.i225.2560.i.i = phi i32 [ %spec.select621.i.i, %if.then13.i219.2.i.i ], [ 5180, %if.end10.i211.i.i.if.then25.i236.i.i_crit_edge ], [ %spec.select617.i.i, %if.then.i205.2.i.i.if.then25.i236.i.i_crit_edge ], [ %.294, %if.end10.i211.1.i.i ]
  %hx.171.i224.2559.i.i = phi i32 [ %hx.172.i214.2.i.i, %if.then13.i219.2.i.i ], [ %spec.select619.i283.i, %if.end10.i211.i.i.if.then25.i236.i.i_crit_edge ], [ 5785, %if.then.i205.2.i.i.if.then25.i236.i.i_crit_edge ], [ 5500, %if.end10.i211.1.i.i ]
  %hy.173.i223.2558.i.i = phi i32 [ %hy.174.i213.2.i.i, %if.then13.i219.2.i.i ], [ %spec.select620.i284.i, %if.end10.i211.i.i.if.then25.i236.i.i_crit_edge ], [ %conv134.i.i, %if.then.i205.2.i.i.if.then25.i236.i.i_crit_edge ], [ %conv130.i.i, %if.end10.i211.1.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i224.2559.i.i, i32 %lx.1.i225.2560.i.i)
  %cmp28.i234.i.i = icmp eq i32 %hx.171.i224.2559.i.i, %lx.1.i225.2560.i.i
  %or.cond66.i235.i.i = select i1 %tobool35.not.i232562.i.i, i1 true, i1 %cmp28.i234.i.i
  br i1 %or.cond66.i235.i.i, label %if.then25.i236.i.i.tempslope.i.i_crit_edge, label %if.else.i247.i.i

if.then25.i236.i.i.tempslope.i.i_crit_edge:       ; preds = %if.then25.i236.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tempslope.i.i

if.else.i247.i.i:                                 ; preds = %if.then25.i236.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i237.i.i = sub nsw i32 %hy.173.i223.2558.i.i, %ly.1.i226.2561.i.i
  %sub1.i.i238.i.i = sub nsw i32 %conv124, %lx.1.i225.2560.i.i
  %mul.i.i239.i.i = shl nsw i32 %sub1.i.i238.i.i, 1
  %mul2.i.i240.i.i = mul nsw i32 %mul.i.i239.i.i, %sub.i.i237.i.i
  %sub3.i.i241.i.i = sub nsw i32 %hx.171.i224.2559.i.i, %lx.1.i225.2560.i.i
  %div.i.i242.i.i = sdiv i32 %mul2.i.i240.i.i, %sub3.i.i241.i.i
  %div.i.i242.i.i.frozen = freeze i32 %div.i.i242.i.i
  %div4.i.i243.i.i = sdiv i32 %div.i.i242.i.i.frozen, 2
  %513 = mul i32 %div4.i.i243.i.i, 2
  %rem.i.i244.i.i.decomposed = sub i32 %div.i.i242.i.i.frozen, %513
  %add.i.i245.i.i = add nsw i32 %div4.i.i243.i.i, %ly.1.i226.2561.i.i
  %add5.i.i246.i.i = add nsw i32 %add.i.i245.i.i, %rem.i.i244.i.i.decomposed
  br label %tempslope.i.i

if.else140.i.i:                                   ; preds = %if.else118.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tempSlope142.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  %514 = ptrtoint ptr %tempSlope142.i.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %tempSlope142.i.i, align 1
  %conv143296.i.i = zext i8 %515 to i32
  br label %tempslope.i.i

tempslope.i.i:                                    ; preds = %if.else140.i.i, %if.else.i247.i.i, %if.then25.i236.i.i.tempslope.i.i_crit_edge, %if.end10.i211.i.i.tempslope.i.i_crit_edge, %if.else.i185.i.i, %if.then25.i174.i.i.tempslope.i.i_crit_edge, %for.inc.i168.7.i.i.tempslope.i.i_crit_edge, %ar9003_hw_power_interpolate.exit127.i.i, %if.then42.i.i
  %temp_slope.0.i.i = phi i32 [ %conv43295.i.i, %if.then42.i.i ], [ %y.0.i.i219222256.i, %ar9003_hw_power_interpolate.exit127.i.i ], [ %conv143296.i.i, %if.else140.i.i ], [ %add5.i.i184.i.i, %if.else.i185.i.i ], [ %ly.1.i164.7465.i.i, %if.then25.i174.i.i.tempslope.i.i_crit_edge ], [ %add5.i.i246.i.i, %if.else.i247.i.i ], [ %ly.1.i226.2561.i.i, %if.then25.i236.i.i.tempslope.i.i_crit_edge ], [ %spec.select612.i.i, %for.inc.i168.7.i.i.tempslope.i.i_crit_edge ], [ %spec.select620.i284.i, %if.end10.i211.i.i.tempslope.i.i_crit_edge ]
  %temp_slope1.0.i.i = phi i32 [ 0, %if.then42.i.i ], [ %phi.bo1.i.i, %ar9003_hw_power_interpolate.exit127.i.i ], [ 0, %if.else140.i.i ], [ 0, %if.else.i185.i.i ], [ 0, %if.then25.i174.i.i.tempslope.i.i_crit_edge ], [ 0, %if.else.i247.i.i ], [ 0, %if.then25.i236.i.i.tempslope.i.i_crit_edge ], [ 0, %for.inc.i168.7.i.i.tempslope.i.i_crit_edge ], [ 0, %if.end10.i211.i.i.tempslope.i.i_crit_edge ]
  %temp_slope2.0.i.i = phi i32 [ 0, %if.then42.i.i ], [ %phi.bo.i.i, %ar9003_hw_power_interpolate.exit127.i.i ], [ 0, %if.else140.i.i ], [ 0, %if.else.i185.i.i ], [ 0, %if.then25.i174.i.i.tempslope.i.i_crit_edge ], [ 0, %if.else.i247.i.i ], [ 0, %if.then25.i236.i.i.tempslope.i.i_crit_edge ], [ 0, %for.inc.i168.7.i.i.tempslope.i.i_crit_edge ], [ 0, %if.end10.i211.i.i.tempslope.i.i_crit_edge ]
  %macVersion148.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %516 = ptrtoint ptr %macVersion148.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %macVersion148.i.i, align 4
  %518 = zext i32 %517 to i64
  call void @__sanitizer_cov_trace_switch(i64 %518, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %517, label %if.else267.i.i [
    i32 1024, label %tempslope.i.i.if.then160.i.i_crit_edge
    i32 1280, label %tempslope.i.i.if.then160.i.i_crit_edge349
    i32 1536, label %tempslope.i.i.if.then160.i.i_crit_edge350
  ]

tempslope.i.i.if.then160.i.i_crit_edge350:        ; preds = %tempslope.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then160.i.i

tempslope.i.i.if.then160.i.i_crit_edge349:        ; preds = %tempslope.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then160.i.i

tempslope.i.i.if.then160.i.i_crit_edge:           ; preds = %tempslope.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then160.i.i

if.then160.i.i:                                   ; preds = %tempslope.i.i.if.then160.i.i_crit_edge, %tempslope.i.i.if.then160.i.i_crit_edge349, %tempslope.i.i.if.then160.i.i_crit_edge350
  %txrxMask.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 15
  %519 = ptrtoint ptr %txrxMask.i.i to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %txrxMask.i.i, align 1
  %521 = lshr i8 %520, 4
  %featureEnable.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 25
  %522 = ptrtoint ptr %featureEnable.i.i to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %featureEnable.i.i, align 1
  %524 = and i8 %523, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %524)
  %tobool168.not.i.i = icmp eq i8 %524, 0
  %conv242.i.i = zext i8 %521 to i32
  %and243.i.i = and i32 %conv242.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243.i.i)
  %tobool244.not.i.i = icmp eq i32 %and243.i.i, 0
  br i1 %tobool168.not.i.i, label %if.else241.i.i, label %if.then169.i.i

if.then169.i.i:                                   ; preds = %if.then160.i.i
  br i1 %cmp.i.i, label %if.then172.i.i, label %if.else209.i.i

if.then172.i.i:                                   ; preds = %if.then169.i.i
  br i1 %tobool244.not.i.i, label %if.then172.i.i.if.end185.i.i_crit_edge, label %if.then176.i.i

if.then172.i.i.if.end185.i.i_crit_edge:           ; preds = %if.then172.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185.i.i

if.then176.i.i:                                   ; preds = %if.then172.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %525 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %rmw.i.i, align 4
  %base_ext2179.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 1
  %527 = ptrtoint ptr %base_ext2179.i.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %base_ext2179.i.i, align 1
  %conv1813.i.i = zext i8 %528 to i32
  %call184.i.i = call i32 %526(ptr noundef %ah, i32 noundef 42048, i32 noundef %conv1813.i.i, i32 noundef 255) #11
  br label %if.end185.i.i

if.end185.i.i:                                    ; preds = %if.then176.i.i, %if.then172.i.i.if.end185.i.i_crit_edge
  %and187.i.i = and i32 %conv242.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i.i)
  %tobool188.not.i.i = icmp eq i32 %and187.i.i, 0
  br i1 %tobool188.not.i.i, label %if.end185.i.i.if.end195.i.i_crit_edge, label %if.then189.i.i

if.end185.i.i.if.end195.i.i_crit_edge:            ; preds = %if.end185.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195.i.i

if.then189.i.i:                                   ; preds = %if.end185.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %529 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %rmw.i.i, align 4
  %and193.i.i = and i32 %temp_slope.0.i.i, 255
  %call194.i.i = call i32 %530(ptr noundef %ah, i32 noundef 46144, i32 noundef %and193.i.i, i32 noundef 255) #11
  br label %if.end195.i.i

if.end195.i.i:                                    ; preds = %if.then189.i.i, %if.end185.i.i.if.end195.i.i_crit_edge
  %and197.i.i = and i32 %conv242.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197.i.i)
  %tobool198.not.i.i = icmp eq i32 %and197.i.i, 0
  br i1 %tobool198.not.i.i, label %if.end195.i.i.if.end273.i.i_crit_edge, label %if.then199.i.i

if.end195.i.i.if.end273.i.i_crit_edge:            ; preds = %if.end195.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end273.i.i

if.then199.i.i:                                   ; preds = %if.end195.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %531 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %rmw.i.i, align 4
  %tempSlopeHigh203.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 2
  %533 = ptrtoint ptr %tempSlopeHigh203.i.i to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %tempSlopeHigh203.i.i, align 1
  %conv2042.i.i = zext i8 %534 to i32
  %call207.i.i = call i32 %532(ptr noundef %ah, i32 noundef 50240, i32 noundef %conv2042.i.i, i32 noundef 255) #11
  br label %if.end273.i.i

if.else209.i.i:                                   ; preds = %if.then169.i.i
  br i1 %tobool244.not.i.i, label %if.else209.i.i.if.end219.i.i_crit_edge, label %if.then213.i.i

if.else209.i.i.if.end219.i.i_crit_edge:           ; preds = %if.else209.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219.i.i

if.then213.i.i:                                   ; preds = %if.else209.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %535 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %rmw.i.i, align 4
  %and217.i.i = and i32 %temp_slope.0.i.i, 255
  %call218.i.i = call i32 %536(ptr noundef %ah, i32 noundef 42048, i32 noundef %and217.i.i, i32 noundef 255) #11
  br label %if.end219.i.i

if.end219.i.i:                                    ; preds = %if.then213.i.i, %if.else209.i.i.if.end219.i.i_crit_edge
  %and221.i.i = and i32 %conv242.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.i.i)
  %tobool222.not.i.i = icmp eq i32 %and221.i.i, 0
  br i1 %tobool222.not.i.i, label %if.end219.i.i.if.end229.i.i_crit_edge, label %if.then223.i.i

if.end219.i.i.if.end229.i.i_crit_edge:            ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229.i.i

if.then223.i.i:                                   ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %537 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %rmw.i.i, align 4
  %call228.i.i = call i32 %538(ptr noundef %ah, i32 noundef 46144, i32 noundef %temp_slope1.0.i.i, i32 noundef 255) #11
  br label %if.end229.i.i

if.end229.i.i:                                    ; preds = %if.then223.i.i, %if.end219.i.i.if.end229.i.i_crit_edge
  %and231.i.i = and i32 %conv242.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.i.i)
  %tobool232.not.i.i = icmp eq i32 %and231.i.i, 0
  br i1 %tobool232.not.i.i, label %if.end229.i.i.if.end273.i.i_crit_edge, label %if.then233.i.i

if.end229.i.i.if.end273.i.i_crit_edge:            ; preds = %if.end229.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end273.i.i

if.then233.i.i:                                   ; preds = %if.end229.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %539 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %rmw.i.i, align 4
  %call238.i.i = call i32 %540(ptr noundef %ah, i32 noundef 50240, i32 noundef %temp_slope2.0.i.i, i32 noundef 255) #11
  br label %if.end273.i.i

if.else241.i.i:                                   ; preds = %if.then160.i.i
  br i1 %tobool244.not.i.i, label %if.else241.i.i.if.end249.i.i_crit_edge, label %if.then245.i.i

if.else241.i.i.if.end249.i.i_crit_edge:           ; preds = %if.else241.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end249.i.i

if.then245.i.i:                                   ; preds = %if.else241.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %541 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %rmw.i.i, align 4
  %call248.i.i = call i32 %542(ptr noundef %ah, i32 noundef 42048, i32 noundef 0, i32 noundef 255) #11
  br label %if.end249.i.i

if.end249.i.i:                                    ; preds = %if.then245.i.i, %if.else241.i.i.if.end249.i.i_crit_edge
  %and251.i.i = and i32 %conv242.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251.i.i)
  %tobool252.not.i.i = icmp eq i32 %and251.i.i, 0
  br i1 %tobool252.not.i.i, label %if.end249.i.i.if.end257.i.i_crit_edge, label %if.then253.i.i

if.end249.i.i.if.end257.i.i_crit_edge:            ; preds = %if.end249.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257.i.i

if.then253.i.i:                                   ; preds = %if.end249.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %543 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %rmw.i.i, align 4
  %call256.i.i = call i32 %544(ptr noundef %ah, i32 noundef 46144, i32 noundef 0, i32 noundef 255) #11
  br label %if.end257.i.i

if.end257.i.i:                                    ; preds = %if.then253.i.i, %if.end249.i.i.if.end257.i.i_crit_edge
  %and259.i.i = and i32 %conv242.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259.i.i)
  %tobool260.not.i.i = icmp eq i32 %and259.i.i, 0
  br i1 %tobool260.not.i.i, label %if.end257.i.i.if.end273.i.i_crit_edge, label %if.then261.i.i

if.end257.i.i.if.end273.i.i_crit_edge:            ; preds = %if.end257.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end273.i.i

if.then261.i.i:                                   ; preds = %if.end257.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %545 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %rmw.i.i, align 4
  %call264.i.i = call i32 %546(ptr noundef %ah, i32 noundef 50240, i32 noundef 0, i32 noundef 255) #11
  br label %if.end273.i.i

if.else267.i.i:                                   ; preds = %tempslope.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %547 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %rmw.i.i, align 4
  %and271.i.i = and i32 %temp_slope.0.i.i, 255
  %call272.i.i = call i32 %548(ptr noundef %ah, i32 noundef 42048, i32 noundef %and271.i.i, i32 noundef 255) #11
  br label %if.end273.i.i

if.end273.i.i:                                    ; preds = %if.else267.i.i, %if.then261.i.i, %if.end257.i.i.if.end273.i.i_crit_edge, %if.then233.i.i, %if.end229.i.i.if.end273.i.i_crit_edge, %if.then199.i.i, %if.end195.i.i.if.end273.i.i_crit_edge
  %549 = ptrtoint ptr %macVersion148.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %macVersion148.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %550)
  %cmp276.i.i = icmp eq i32 %550, 640
  br i1 %cmp276.i.i, label %land.lhs.true.i.i, label %if.end273.i.i.ar9003_hw_power_control_override.exit.i_crit_edge

if.end273.i.i.ar9003_hw_power_control_override.exit.i_crit_edge: ; preds = %if.end273.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_control_override.exit.i

land.lhs.true.i.i:                                ; preds = %if.end273.i.i
  %macRev.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %551 = ptrtoint ptr %macRev.i.i to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %macRev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %552)
  %cmp280.i.i = icmp ugt i16 %552, 1
  br i1 %cmp280.i.i, label %if.then282.i.i, label %land.lhs.true.i.i.ar9003_hw_power_control_override.exit.i_crit_edge

land.lhs.true.i.i.ar9003_hw_power_control_override.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_control_override.exit.i

if.then282.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %553 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %rmw.i.i, align 4
  %and286.i.i = and i32 %temp_slope.0.i.i, 255
  %call287.i.i = call i32 %554(ptr noundef %ah, i32 noundef 46144, i32 noundef %and286.i.i, i32 noundef 255) #11
  br label %ar9003_hw_power_control_override.exit.i

ar9003_hw_power_control_override.exit.i:          ; preds = %if.then282.i.i, %land.lhs.true.i.i.ar9003_hw_power_control_override.exit.i_crit_edge, %if.end273.i.i.ar9003_hw_power_control_override.exit.i_crit_edge
  %555 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %rmw.i.i, align 4
  %557 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %temperature.i, align 4
  %and293.i.i = and i32 %558, 255
  %call294.i.i = call i32 %556(ptr noundef %ah, i32 noundef 42044, i32 noundef %and293.i.i, i32 noundef 255) #11
  %559 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %debug_mask.i, align 4
  %and180.i = and i32 %560, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180.i)
  %tobool181.not.i = icmp eq i32 %and180.i, 0
  br i1 %tobool181.not.i, label %ar9003_hw_power_control_override.exit.i.do.end188.i_crit_edge, label %if.then182.i

ar9003_hw_power_control_override.exit.i.do.end188.i_crit_edge: ; preds = %ar9003_hw_power_control_override.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end188.i

if.then182.i:                                     ; preds = %ar9003_hw_power_control_override.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %561 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %281, align 4
  %563 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %283, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.99, i32 noundef %conv124, i32 noundef %417, i32 noundef %562, i32 noundef %564) #11
  br label %do.end188.i

do.end188.i:                                      ; preds = %if.then182.i, %ar9003_hw_power_control_override.exit.i.do.end188.i_crit_edge
  %565 = ptrtoint ptr %nf_cal.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %nf_cal.i, align 4
  %conv196.i = trunc i32 %566 to i16
  br i1 %cmp.i256, label %if.then194.2.i, label %if.else202.2.i

if.else202.2.i:                                   ; preds = %do.end188.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx206.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 3, i32 0
  %567 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_store2_noabort(i32 %567)
  store i16 %conv196.i, ptr %arrayidx206.i, align 2
  %568 = ptrtoint ptr %nf_pwr.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %nf_pwr.i, align 4
  %conv208.i = trunc i32 %569 to i16
  %arrayidx211.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 4, i32 0
  %570 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_store2_noabort(i32 %570)
  store i16 %conv208.i, ptr %arrayidx211.i, align 2
  %571 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %291, align 4
  %conv204.1.i = trunc i32 %572 to i16
  %arrayidx206.1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 3, i32 1
  %573 = ptrtoint ptr %arrayidx206.1.i to i32
  call void @__asan_store2_noabort(i32 %573)
  store i16 %conv204.1.i, ptr %arrayidx206.1.i, align 2
  %574 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %296, align 4
  %conv208.1.i = trunc i32 %575 to i16
  %arrayidx211.1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 4, i32 1
  %576 = ptrtoint ptr %arrayidx211.1.i to i32
  call void @__asan_store2_noabort(i32 %576)
  store i16 %conv208.1.i, ptr %arrayidx211.1.i, align 2
  %577 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %293, align 4
  %conv204.2.i = trunc i32 %578 to i16
  %arrayidx206.2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 3, i32 2
  %579 = ptrtoint ptr %arrayidx206.2.i to i32
  call void @__asan_store2_noabort(i32 %579)
  store i16 %conv204.2.i, ptr %arrayidx206.2.i, align 2
  %580 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %298, align 4
  %conv208.2.i = trunc i32 %581 to i16
  %arrayidx211.2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 4, i32 2
  %582 = ptrtoint ptr %arrayidx211.2.i to i32
  call void @__asan_store2_noabort(i32 %582)
  store i16 %conv208.2.i, ptr %arrayidx211.2.i, align 2
  br label %ar9003_hw_calibration_apply.exit

if.then194.2.i:                                   ; preds = %do.end188.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx197.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 3, i32 0
  %583 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_store2_noabort(i32 %583)
  store i16 %conv196.i, ptr %arrayidx197.i, align 2
  %584 = ptrtoint ptr %nf_pwr.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %nf_pwr.i, align 4
  %conv199.i = trunc i32 %585 to i16
  %arrayidx201.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 4, i32 0
  %586 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 %conv199.i, ptr %arrayidx201.i, align 2
  %587 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %291, align 4
  %conv196.1.i = trunc i32 %588 to i16
  %arrayidx197.1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 3, i32 1
  %589 = ptrtoint ptr %arrayidx197.1.i to i32
  call void @__asan_store2_noabort(i32 %589)
  store i16 %conv196.1.i, ptr %arrayidx197.1.i, align 2
  %590 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %296, align 4
  %conv199.1.i = trunc i32 %591 to i16
  %arrayidx201.1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 4, i32 1
  %592 = ptrtoint ptr %arrayidx201.1.i to i32
  call void @__asan_store2_noabort(i32 %592)
  store i16 %conv199.1.i, ptr %arrayidx201.1.i, align 2
  %593 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %293, align 4
  %conv196.2.i = trunc i32 %594 to i16
  %arrayidx197.2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 3, i32 2
  %595 = ptrtoint ptr %arrayidx197.2.i to i32
  call void @__asan_store2_noabort(i32 %595)
  store i16 %conv196.2.i, ptr %arrayidx197.2.i, align 2
  %596 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %298, align 4
  %conv199.2.i = trunc i32 %597 to i16
  %arrayidx201.2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 4, i32 2
  %598 = ptrtoint ptr %arrayidx201.2.i to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 %conv199.2.i, ptr %arrayidx201.2.i, align 2
  br label %ar9003_hw_calibration_apply.exit

ar9003_hw_calibration_apply.exit:                 ; preds = %if.then194.2.i, %if.else202.2.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nf_pwr.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nf_cal.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temperature.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %correction.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hnf_pwr.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hnf_cal.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %htemperature.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hcorrection.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hfrequency.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lnf_pwr.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lnf_cal.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ltemperature.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lcorrection.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lfrequency.i) #11
  %call.i = call zeroext i1 @ar9003_is_paprd_enabled(ptr noundef %ah) #11
  br i1 %call.i, label %if.end.i284, label %ar9003_hw_calibration_apply.exit.ar9003_paprd_set_txpower.exit_crit_edge

ar9003_hw_calibration_apply.exit.ar9003_paprd_set_txpower.exit_crit_edge: ; preds = %ar9003_hw_calibration_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_paprd_set_txpower.exit

if.end.i284:                                      ; preds = %ar9003_hw_calibration_apply.exit
  %599 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %599)
  %600 = load i16, ptr %channelFlags.i, align 2
  %601 = and i16 %600, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %601)
  %tobool.not.i282 = icmp eq i16 %601, 0
  %..i283 = select i1 %tobool.not.i282, i32 13, i32 27
  %conv4.i = zext i16 %600 to i32
  %and5.i = and i32 %conv4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end.i284.if.end32.i_crit_edge

if.end.i284.if.end32.i_crit_edge:                 ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then7.i:                                       ; preds = %if.end.i284
  %602 = ptrtoint ptr %macVersion148.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %macVersion148.i.i, align 4
  %604 = add i32 %603, -512
  %605 = call i32 @llvm.fshl.i32(i32 %604, i32 %604, i32 26) #11
  %606 = zext i32 %605 to i64
  call void @__sanitizer_cov_trace_switch(i64 %606, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %605, label %if.then23.i [
    i32 0, label %if.then7.i.if.end32.i_crit_edge
    i32 4, label %if.then7.i.if.end32.i_crit_edge351
    i32 2, label %if.then7.i.if.end32.i_crit_edge352
    i32 3, label %if.then7.i.if.end32.i_crit_edge353
  ]

if.then7.i.if.end32.i_crit_edge353:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then7.i.if.end32.i_crit_edge352:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then7.i.if.end32.i_crit_edge351:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then7.i.if.end32.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then23.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %and26.i = and i32 %conv4.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %.41.i = select i1 %tobool27.not.i, i32 8, i32 22
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then23.i, %if.then7.i.if.end32.i_crit_edge, %if.then7.i.if.end32.i_crit_edge351, %if.then7.i.if.end32.i_crit_edge352, %if.then7.i.if.end32.i_crit_edge353, %if.end.i284.if.end32.i_crit_edge
  %i.1.i = phi i32 [ %..i283, %if.end.i284.if.end32.i_crit_edge ], [ %..i283, %if.then7.i.if.end32.i_crit_edge ], [ %..i283, %if.then7.i.if.end32.i_crit_edge351 ], [ %..i283, %if.then7.i.if.end32.i_crit_edge352 ], [ %..i283, %if.then7.i.if.end32.i_crit_edge353 ], [ %.41.i, %if.then23.i ]
  %arrayidx.i285 = getelementptr i8, ptr %targetPowerValT2, i32 %i.1.i
  %607 = ptrtoint ptr %arrayidx.i285 to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %arrayidx.i285, align 1
  %conv33.i = zext i8 %608 to i32
  %paprd_target_power.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 118
  %609 = ptrtoint ptr %paprd_target_power.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %conv33.i, ptr %paprd_target_power.i, align 4
  br label %ar9003_paprd_set_txpower.exit

ar9003_paprd_set_txpower.exit:                    ; preds = %if.end32.i, %ar9003_hw_calibration_apply.exit.ar9003_paprd_set_txpower.exit_crit_edge
  %610 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %610)
  %611 = load i16, ptr %channelFlags.i, align 2
  %612 = shl i16 %611, 2
  %613 = and i16 %612, 4
  %614 = xor i16 %613, 4
  %615 = zext i16 %614 to i32
  %pwr_array.sink.i = getelementptr i8, ptr %targetPowerValT2, i32 %615
  %616 = ptrtoint ptr %pwr_array.sink.i to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %pwr_array.sink.i, align 1
  %conv10.i = zext i8 %617 to i32
  %and12.i = and i32 %conv10.i, 63
  %shl15.i = shl nuw nsw i32 %conv10.i, 8
  %and16.i = and i32 %shl15.i, 16128
  %or17.i = or i32 %and12.i, %and16.i
  %val.0.i = or i32 %or17.i, 1061093376
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %618 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %write.i, align 4
  call void %619(ptr noundef %ah, i32 noundef %val.0.i, i32 noundef 33000) #11
  %tpc_enabled = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 137
  %620 = ptrtoint ptr %tpc_enabled to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %tpc_enabled, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %621)
  %tobool128.not = icmp eq i8 %621, 0
  br i1 %tobool128.not, label %if.else144, label %if.then129

if.then129:                                       ; preds = %ar9003_paprd_set_txpower.exit
  call void @ar9003_hw_init_rate_txpower(ptr noundef %ah, ptr noundef nonnull %targetPowerValT2_tpc, ptr noundef %chan) #11
  %622 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %write.i, align 4
  call void %623(ptr noundef %ah, i32 noundef 64, i32 noundef 41968) #11
  %624 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %ah, align 4
  %call132 = call i32 %625(ptr noundef %ah, i32 noundef 41972) #11
  %626 = ptrtoint ptr %macVersion148.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %macVersion148.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %627)
  %cmp133 = icmp eq i32 %627, 768
  %628 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %write.i, align 4
  br i1 %cmp133, label %if.then135, label %if.else139

if.then135:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  %and138 = and i32 %call132, -64
  call void %629(ptr noundef %ah, i32 noundef %and138, i32 noundef 41972) #11
  br label %cleanup

if.else139:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  %and142 = and i32 %call132, -4096
  call void %629(ptr noundef %ah, i32 noundef %and142, i32 noundef 41972) #11
  br label %cleanup

if.else144:                                       ; preds = %ar9003_paprd_set_txpower.exit
  call void @__sanitizer_cov_trace_pc() #13
  %630 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %write.i, align 4
  call void %631(ptr noundef %ah, i32 noundef 0, i32 noundef 41968) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else144, %if.else139, %if.then135, %for.end101.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %targetPowerValT2_tpc) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %target_power_val_t2_eep) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %targetPowerValT2) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath9k_hw_ar9300_get_spur_channel(ptr nocapture noundef readnone %ah, i16 noundef zeroext %i, i1 noundef zeroext %is2GHz) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 -32768
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ar9003_get_eepmisc(ptr nocapture noundef readonly %ah) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eepMisc = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %eepMisc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eepMisc, align 1
  ret i8 %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar9300_read_eeprom(ptr noundef %ah, i32 noundef %address, ptr nocapture noundef writeonly %buffer, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %val.i57 = alloca i16, align 2
  %val.i52 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %address)
  %cmp = icmp slt i32 %address, 0
  %add = add i32 %count, %address
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add)
  %cmp1 = icmp sgt i32 %add, 32767
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_mask, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = and i32 %address, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  %dec = add nsw i32 %address, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %val.i, align 2, !annotation !235
  %div.i6769 = lshr i32 %address, 1
  %call.i = call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef %div.i6769, ptr noundef nonnull %val.i) #11
  br i1 %call.i, label %if.end8, label %ar9300_eeprom_read_byte.exit, !prof !236

ar9300_eeprom_read_byte.exit:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #11
  br label %do.body23

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val.i, align 2
  %conv.i = zext i16 %5 to i32
  %rem.i68 = shl i32 %address, 3
  %mul.i = and i32 %rem.i68, 8
  %shr.i = lshr i32 %conv.i, %mul.i
  %conv3.i = trunc i32 %shr.i to i8
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3.i, ptr %buffer, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #11
  %incdec.ptr = getelementptr i8, ptr %buffer, i32 1
  %dec9 = add i32 %count, -1
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end3.if.end10_crit_edge
  %address.addr.0 = phi i32 [ %dec, %if.end8 ], [ %address, %if.end3.if.end10_crit_edge ]
  %buffer.addr.0 = phi ptr [ %incdec.ptr, %if.end8 ], [ %buffer, %if.end3.if.end10_crit_edge ]
  %count.addr.0 = phi i32 [ %dec9, %if.end8 ], [ %count, %if.end3.if.end10_crit_edge ]
  %div11 = sdiv i32 %count.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0)
  %cmp1272 = icmp sgt i32 %count.addr.0, 1
  br i1 %cmp1272, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.075 = phi i32 [ %inc, %if.end15.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %buffer.addr.174 = phi ptr [ %add.ptr, %if.end15.for.body_crit_edge ], [ %buffer.addr.0, %if.end10.for.body_crit_edge ]
  %address.addr.173 = phi i32 [ %sub, %if.end15.for.body_crit_edge ], [ %address.addr.0, %if.end10.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i52) #11
  %7 = ptrtoint ptr %val.i52 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %val.i52, align 2, !annotation !235
  %div.i53 = sdiv i32 %address.addr.173, 2
  %call.i54 = call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef %div.i53, ptr noundef nonnull %val.i52) #11
  br i1 %call.i54, label %if.end15, label %ar9300_eeprom_read_word.exit, !prof !236

ar9300_eeprom_read_word.exit:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i52) #11
  br label %do.body23

if.end15:                                         ; preds = %for.body
  %8 = ptrtoint ptr %val.i52 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %val.i52, align 2
  %10 = lshr i16 %9, 8
  %conv3.i55 = trunc i16 %10 to i8
  %11 = ptrtoint ptr %buffer.addr.174 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3.i55, ptr %buffer.addr.174, align 1
  %conv5.i = trunc i16 %9 to i8
  %arrayidx6.i = getelementptr i8, ptr %buffer.addr.174, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i52) #11
  %sub = add i32 %address.addr.173, -2
  %add.ptr = getelementptr i8, ptr %buffer.addr.174, i32 2
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %div11
  br i1 %exitcond.not, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %if.end10.for.end_crit_edge
  %address.addr.1.lcssa = phi i32 [ %address.addr.0, %if.end10.for.end_crit_edge ], [ %sub, %if.end15.for.end_crit_edge ]
  %buffer.addr.1.lcssa = phi ptr [ %buffer.addr.0, %if.end10.for.end_crit_edge ], [ %add.ptr, %if.end15.for.end_crit_edge ]
  %13 = and i32 %count.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %if.then18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i57) #11
  %14 = ptrtoint ptr %val.i57 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %val.i57, align 2, !annotation !235
  %address.addr.1.lcssa.frozen = freeze i32 %address.addr.1.lcssa
  %div.i58 = sdiv i32 %address.addr.1.lcssa.frozen, 2
  %call.i59 = call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef %div.i58, ptr noundef nonnull %val.i57) #11
  br i1 %call.i59, label %ar9300_eeprom_read_byte.exit66.thread, label %ar9300_eeprom_read_byte.exit66, !prof !236

ar9300_eeprom_read_byte.exit66.thread:            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %val.i57 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %val.i57, align 2
  %conv.i60 = zext i16 %16 to i32
  %17 = mul i32 %div.i58, 2
  %rem.i61.decomposed = sub i32 %address.addr.1.lcssa.frozen, %17
  %mul.i62 = shl nsw i32 %rem.i61.decomposed, 3
  %shr.i63 = lshr i32 %conv.i60, %mul.i62
  %conv3.i64 = trunc i32 %shr.i63 to i8
  %18 = ptrtoint ptr %buffer.addr.1.lcssa to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i64, ptr %buffer.addr.1.lcssa, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i57) #11
  br label %cleanup

ar9300_eeprom_read_byte.exit66:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i57) #11
  br label %do.body23

do.body23:                                        ; preds = %ar9300_eeprom_read_byte.exit66, %ar9300_eeprom_read_word.exit, %ar9300_eeprom_read_byte.exit
  %address.addr.2 = phi i32 [ %address.addr.173, %ar9300_eeprom_read_word.exit ], [ %address.addr.1.lcssa, %ar9300_eeprom_read_byte.exit66 ], [ %dec, %ar9300_eeprom_read_byte.exit ]
  %debug_mask24 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %debug_mask24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask24, align 4
  %and25 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.cleanup_crit_edge, label %if.then27

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %address.addr.2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body23.cleanup_crit_edge, %ar9300_eeprom_read_byte.exit66.thread, %for.end.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then2 ], [ false, %do.body.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ false, %if.then27 ], [ false, %do.body23.cleanup_crit_edge ], [ true, %ar9300_eeprom_read_byte.exit66.thread ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar9300_read_otp(ptr noundef %ah, i32 noundef %address, ptr nocapture noundef writeonly %buffer, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp11 = icmp sgt i32 %count, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.cleanup2_crit_edge

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup2

for.body.lr.ph:                                   ; preds = %entry
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %cmp13 = phi i1 [ true, %for.body.lr.ph ], [ %cmp, %if.end.for.body_crit_edge ]
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %sub = sub i32 %address, %i.012
  %sub.frozen = freeze i32 %sub
  %div = sdiv i32 %sub.frozen, 4
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %2 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %3)
  %cmp.i = icmp eq i32 %3, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp3.i = icmp eq i32 %3, 1024
  %4 = or i1 %cmp.i, %cmp3.i
  %5 = select i1 %4, i32 196608, i32 81920
  %mul.i = shl nsw i32 %div, 2
  %add.i = add i32 %5, %mul.i
  %call.i = tail call i32 %1(ptr noundef %ah, i32 noundef %add.i) #11
  %6 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %7)
  %cmp6.i = icmp eq i32 %7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %7)
  %cmp10.i = icmp eq i32 %7, 1024
  %8 = or i1 %cmp6.i, %cmp10.i
  %9 = select i1 %8, i32 200728, i32 89880
  %call13.i = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %9, i32 noundef 7, i32 noundef 4, i32 noundef 1000) #11
  br i1 %call13.i, label %if.end, label %for.body.cleanup2_crit_edge

for.body.cleanup2_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup2

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ah, align 4
  %12 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %13)
  %cmp18.i = icmp eq i32 %13, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %13)
  %cmp22.i = icmp eq i32 %13, 1024
  %14 = or i1 %cmp18.i, %cmp22.i
  %15 = select i1 %14, i32 200732, i32 89884
  %call25.i = tail call i32 %11(ptr noundef %ah, i32 noundef %15) #11
  %16 = mul i32 %div, 4
  %rem.decomposed = sub i32 %sub.frozen, %16
  %mul = shl nsw i32 %rem.decomposed, 3
  %shr = lshr i32 %call25.i, %mul
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.012
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.012, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count)
  %cmp = icmp slt i32 %inc, %count
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %if.end.cleanup2_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.cleanup2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup2

cleanup2:                                         ; preds = %if.end.cleanup2_crit_edge, %for.body.cleanup2_crit_edge, %entry.cleanup2_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup2_crit_edge ], [ %cmp13, %for.body.cleanup2_crit_edge ], [ %cmp, %if.end.cleanup2_crit_edge ]
  %18 = xor i1 %cmp.lcssa, true
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_nvram_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar9003_dump_modal_eeprom(ptr noundef %buf, i32 noundef %len, i32 noundef %size, ptr noundef readonly %modal_hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %sub = sub i32 %size, %len
  %antCtrlChain = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 2
  %0 = ptrtoint ptr %antCtrlChain to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %antCtrlChain, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.59, i32 noundef %conv) #11
  %add = add i32 %call, %len
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %add
  %sub3 = sub i32 %size, %add
  %arrayidx5 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %arrayidx5, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv6 = zext i16 %5 to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.60, i32 noundef %conv6) #11
  %add8 = add i32 %call7, %add
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %add8
  %sub12 = sub i32 %size, %add8
  %arrayidx14 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %arrayidx14, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv15 = zext i16 %8 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.61, i32 noundef %conv15) #11
  %add17 = add i32 %call16, %add8
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %add17
  %sub21 = sub i32 %size, %add17
  %9 = ptrtoint ptr %modal_hdr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %modal_hdr, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.62, i32 noundef %11) #11
  %add23 = add i32 %call22, %add17
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %add23
  %sub27 = sub i32 %size, %add23
  %antCtrlCommon2 = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 1
  %12 = ptrtoint ptr %antCtrlCommon2 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %antCtrlCommon2, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.63, i32 noundef %14) #11
  %add29 = add i32 %call28, %add23
  %add.ptr32 = getelementptr i8, ptr %buf, i32 %add29
  %sub33 = sub i32 %size, %add29
  %antennaGain = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 15
  %15 = ptrtoint ptr %antennaGain to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %antennaGain, align 1
  %conv34 = sext i8 %16 to i32
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.64, i32 noundef %conv34) #11
  %add36 = add i32 %call35, %add29
  %add.ptr39 = getelementptr i8, ptr %buf, i32 %add36
  %sub40 = sub i32 %size, %add36
  %switchSettling = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 16
  %17 = ptrtoint ptr %switchSettling to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %switchSettling, align 1
  %conv41 = zext i8 %18 to i32
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.65, i32 noundef %conv41) #11
  %add43 = add i32 %call42, %add36
  %add.ptr46 = getelementptr i8, ptr %buf, i32 %add43
  %sub47 = sub i32 %size, %add43
  %xatten1DB = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 3
  %19 = ptrtoint ptr %xatten1DB to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xatten1DB, align 1
  %conv49 = zext i8 %20 to i32
  %call50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.66, i32 noundef %conv49) #11
  %add51 = add i32 %call50, %add43
  %add.ptr54 = getelementptr i8, ptr %buf, i32 %add51
  %sub55 = sub i32 %size, %add51
  %arrayidx57 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %22 to i32
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54, i32 noundef %sub55, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.67, i32 noundef %conv58) #11
  %add60 = add i32 %call59, %add51
  %add.ptr63 = getelementptr i8, ptr %buf, i32 %add60
  %sub64 = sub i32 %size, %add60
  %arrayidx66 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %24 to i32
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.68, i32 noundef %conv67) #11
  %add69 = add i32 %call68, %add60
  %add.ptr72 = getelementptr i8, ptr %buf, i32 %add69
  %sub73 = sub i32 %size, %add69
  %xatten1Margin = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 4
  %25 = ptrtoint ptr %xatten1Margin to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %xatten1Margin, align 1
  %conv75 = zext i8 %26 to i32
  %call76 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72, i32 noundef %sub73, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.69, i32 noundef %conv75) #11
  %add77 = add i32 %call76, %add69
  %add.ptr80 = getelementptr i8, ptr %buf, i32 %add77
  %sub81 = sub i32 %size, %add77
  %arrayidx83 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %28 to i32
  %call85 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr80, i32 noundef %sub81, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.70, i32 noundef %conv84) #11
  %add86 = add i32 %call85, %add77
  %add.ptr89 = getelementptr i8, ptr %buf, i32 %add86
  %sub90 = sub i32 %size, %add86
  %arrayidx92 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %30 to i32
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.71, i32 noundef %conv93) #11
  %add95 = add i32 %call94, %add86
  %add.ptr98 = getelementptr i8, ptr %buf, i32 %add95
  %sub99 = sub i32 %size, %add95
  %tempSlope = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 5
  %31 = ptrtoint ptr %tempSlope to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tempSlope, align 1
  %conv100 = sext i8 %32 to i32
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr98, i32 noundef %sub99, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.72, i32 noundef %conv100) #11
  %add102 = add i32 %call101, %add95
  %add.ptr105 = getelementptr i8, ptr %buf, i32 %add102
  %sub106 = sub i32 %size, %add102
  %voltSlope = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 6
  %33 = ptrtoint ptr %voltSlope to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %voltSlope, align 1
  %conv107 = sext i8 %34 to i32
  %call108 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105, i32 noundef %sub106, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.73, i32 noundef %conv107) #11
  %add109 = add i32 %call108, %add102
  %add.ptr112 = getelementptr i8, ptr %buf, i32 %add109
  %sub113 = sub i32 %size, %add109
  %spurChans = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 7
  %35 = ptrtoint ptr %spurChans to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %spurChans, align 1
  %conv115 = zext i8 %36 to i32
  %call116 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112, i32 noundef %sub113, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.74, i32 noundef %conv115) #11
  %add117 = add i32 %call116, %add109
  %add.ptr120 = getelementptr i8, ptr %buf, i32 %add117
  %sub121 = sub i32 %size, %add117
  %arrayidx123 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %38 to i32
  %call125 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120, i32 noundef %sub121, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.75, i32 noundef %conv124) #11
  %add126 = add i32 %call125, %add117
  %add.ptr129 = getelementptr i8, ptr %buf, i32 %add126
  %sub130 = sub i32 %size, %add126
  %arrayidx132 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %40 to i32
  %call134 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr129, i32 noundef %sub130, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.76, i32 noundef %conv133) #11
  %add135 = add i32 %call134, %add126
  %add.ptr138 = getelementptr i8, ptr %buf, i32 %add135
  %sub139 = sub i32 %size, %add135
  %arrayidx141 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 7, i32 3
  %41 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx141, align 1
  %conv142 = zext i8 %42 to i32
  %call143 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr138, i32 noundef %sub139, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.77, i32 noundef %conv142) #11
  %add144 = add i32 %call143, %add135
  %add.ptr147 = getelementptr i8, ptr %buf, i32 %add144
  %sub148 = sub i32 %size, %add144
  %arrayidx150 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 7, i32 4
  %43 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %44 to i32
  %call152 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr147, i32 noundef %sub148, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.78, i32 noundef %conv151) #11
  %add153 = add i32 %call152, %add144
  %add.ptr156 = getelementptr i8, ptr %buf, i32 %add153
  %sub157 = sub i32 %size, %add153
  %noiseFloorThreshCh = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 8
  %45 = ptrtoint ptr %noiseFloorThreshCh to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %noiseFloorThreshCh, align 1
  %conv159 = sext i8 %46 to i32
  %call160 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr156, i32 noundef %sub157, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.79, i32 noundef %conv159) #11
  %add161 = add i32 %call160, %add153
  %add.ptr164 = getelementptr i8, ptr %buf, i32 %add161
  %sub165 = sub i32 %size, %add161
  %arrayidx167 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx167, align 1
  %conv168 = sext i8 %48 to i32
  %call169 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr164, i32 noundef %sub165, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.80, i32 noundef %conv168) #11
  %add170 = add i32 %call169, %add161
  %add.ptr173 = getelementptr i8, ptr %buf, i32 %add170
  %sub174 = sub i32 %size, %add170
  %arrayidx176 = getelementptr %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 8, i32 2
  %49 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx176, align 1
  %conv177 = sext i8 %50 to i32
  %call178 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr173, i32 noundef %sub174, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.81, i32 noundef %conv177) #11
  %add179 = add i32 %call178, %add170
  %add.ptr182 = getelementptr i8, ptr %buf, i32 %add179
  %sub183 = sub i32 %size, %add179
  %quick_drop = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 10
  %51 = ptrtoint ptr %quick_drop to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %quick_drop, align 1
  %conv184 = sext i8 %52 to i32
  %call185 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr182, i32 noundef %sub183, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.48, i32 noundef %conv184) #11
  %add186 = add i32 %call185, %add179
  %add.ptr189 = getelementptr i8, ptr %buf, i32 %add186
  %sub190 = sub i32 %size, %add186
  %txEndToXpaOff = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 18
  %53 = ptrtoint ptr %txEndToXpaOff to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %txEndToXpaOff, align 1
  %conv191 = zext i8 %54 to i32
  %call192 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr189, i32 noundef %sub190, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.82, i32 noundef %conv191) #11
  %add193 = add i32 %call192, %add186
  %add.ptr196 = getelementptr i8, ptr %buf, i32 %add193
  %sub197 = sub i32 %size, %add193
  %xpaBiasLvl = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 11
  %55 = ptrtoint ptr %xpaBiasLvl to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %xpaBiasLvl, align 1
  %conv198 = zext i8 %56 to i32
  %call199 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr196, i32 noundef %sub197, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.83, i32 noundef %conv198) #11
  %add200 = add i32 %call199, %add193
  %add.ptr203 = getelementptr i8, ptr %buf, i32 %add200
  %sub204 = sub i32 %size, %add200
  %txFrameToDataStart = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 12
  %57 = ptrtoint ptr %txFrameToDataStart to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %txFrameToDataStart, align 1
  %conv205 = zext i8 %58 to i32
  %call206 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr203, i32 noundef %sub204, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.84, i32 noundef %conv205) #11
  %add207 = add i32 %call206, %add200
  %add.ptr210 = getelementptr i8, ptr %buf, i32 %add207
  %sub211 = sub i32 %size, %add207
  %txFrameToPaOn = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 13
  %59 = ptrtoint ptr %txFrameToPaOn to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %txFrameToPaOn, align 1
  %conv212 = zext i8 %60 to i32
  %call213 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr210, i32 noundef %sub211, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.85, i32 noundef %conv212) #11
  %add214 = add i32 %call213, %add207
  %add.ptr217 = getelementptr i8, ptr %buf, i32 %add214
  %sub218 = sub i32 %size, %add214
  %txFrameToXpaOn = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 20
  %61 = ptrtoint ptr %txFrameToXpaOn to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %txFrameToXpaOn, align 1
  %conv219 = zext i8 %62 to i32
  %call220 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr217, i32 noundef %sub218, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.86, i32 noundef %conv219) #11
  %add221 = add i32 %call220, %add214
  %add.ptr224 = getelementptr i8, ptr %buf, i32 %add221
  %sub225 = sub i32 %size, %add221
  %txClip = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 14
  %63 = ptrtoint ptr %txClip to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %txClip, align 1
  %conv226 = zext i8 %64 to i32
  %call227 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr224, i32 noundef %sub225, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.87, i32 noundef %conv226) #11
  %add228 = add i32 %call227, %add221
  %add.ptr231 = getelementptr i8, ptr %buf, i32 %add228
  %sub232 = sub i32 %size, %add228
  %adcDesiredSize = getelementptr inbounds %struct.ar9300_modal_eep_header, ptr %modal_hdr, i32 0, i32 17
  %65 = ptrtoint ptr %adcDesiredSize to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %adcDesiredSize, align 1
  %conv233 = sext i8 %66 to i32
  %call234 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr231, i32 noundef %sub232, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.88, i32 noundef %conv233) #11
  %add235 = add i32 %call234, %add228
  ret i32 %add235
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar9003_dump_cal_data(ptr nocapture noundef readonly %ah, ptr noundef %buf, i32 noundef %len, i32 noundef %size, i1 noundef zeroext %is_2g) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %. = select i1 %is_2g, i32 3, i32 8
  %txrxMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 15
  %calPierData5G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 4, i32 0, i32 0, i32 3
  %calFreqPier5G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc55.for.body_crit_edge, %entry
  %i.0104 = phi i32 [ 0, %entry ], [ %inc56, %for.inc55.for.body_crit_edge ]
  %len.addr.0103 = phi i32 [ %len, %entry ], [ %len.addr.2, %for.inc55.for.body_crit_edge ]
  %0 = ptrtoint ptr %txrxMask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txrxMask, align 1
  %conv = zext i8 %1 to i32
  %2 = shl nuw nsw i32 1, %i.0104
  %3 = and i32 %2, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %for.body.for.inc55_crit_edge, label %if.end3

for.body.for.inc55_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc55

if.end3:                                          ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.addr.0103
  %sub = sub i32 %size, %len.addr.0103
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.89, i32 noundef %i.0104) #11
  %add = add i32 %call, %len.addr.0103
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %add
  %sub5 = sub i32 %size, %add
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.90) #11
  %add7 = add i32 %add, %call6
  br label %for.body11

for.body11:                                       ; preds = %cond.end49.for.body11_crit_edge, %if.end3
  %j.0101 = phi i32 [ 0, %if.end3 ], [ %inc, %cond.end49.for.body11_crit_edge ]
  %len.addr.1100 = phi i32 [ %add7, %if.end3 ], [ %add54, %cond.end49.for.body11_crit_edge ]
  br i1 %is_2g, label %if.then13, label %if.else18

if.then13:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14 = getelementptr %struct.ar9300_eeprom, ptr %eeprom, i32 0, i32 8, i32 %i.0104, i32 %j.0101
  %arrayidx15 = getelementptr %struct.ar9300_eeprom, ptr %eeprom, i32 0, i32 7, i32 %j.0101
  %4 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %5 to i32
  %add17 = add nuw nsw i32 %conv16, 2300
  br label %if.end24

if.else18:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx20 = getelementptr [3 x [8 x %struct.ar9300_cal_data_per_freq_op_loop]], ptr %calPierData5G, i32 0, i32 %i.0104, i32 %j.0101
  %arrayidx21 = getelementptr [8 x i8], ptr %calFreqPier5G, i32 0, i32 %j.0101
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv22, 5
  %add23 = add nuw nsw i32 %mul, 4800
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then13
  %cal_pier.0 = phi ptr [ %arrayidx14, %if.then13 ], [ %arrayidx20, %if.else18 ]
  %freq.0 = phi i32 [ %add17, %if.then13 ], [ %add23, %if.else18 ]
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %len.addr.1100
  %sub26 = sub i32 %size, %len.addr.1100
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.91, i32 noundef %freq.0) #11
  %add28 = add i32 %call27, %len.addr.1100
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %add28
  %sub30 = sub i32 %size, %add28
  %8 = ptrtoint ptr %cal_pier.0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cal_pier.0, align 1
  %conv31 = sext i8 %9 to i32
  %voltMeas = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, ptr %cal_pier.0, i32 0, i32 1
  %10 = ptrtoint ptr %voltMeas to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %voltMeas, align 1
  %conv32 = zext i8 %11 to i32
  %tempMeas = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, ptr %cal_pier.0, i32 0, i32 2
  %12 = ptrtoint ptr %tempMeas to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tempMeas, align 1
  %conv33 = zext i8 %13 to i32
  %rxTempMeas = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, ptr %cal_pier.0, i32 0, i32 5
  %14 = ptrtoint ptr %rxTempMeas to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rxTempMeas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool35.not = icmp eq i8 %15, 0
  br i1 %tobool35.not, label %if.end24.cond.end49_crit_edge, label %cond.true43

if.end24.cond.end49_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end49

cond.true43:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %rxNoisefloorCal = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, ptr %cal_pier.0, i32 0, i32 3
  %16 = ptrtoint ptr %rxNoisefloorCal to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rxNoisefloorCal, align 1
  %conv36 = sext i8 %17 to i32
  %add37 = add nsw i32 %conv36, 3
  %shr38 = ashr i32 %add37, 2
  %add39 = add nsw i32 %shr38, -90
  %rxNoisefloorPower = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, ptr %cal_pier.0, i32 0, i32 4
  %18 = ptrtoint ptr %rxNoisefloorPower to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxNoisefloorPower, align 1
  %conv44 = sext i8 %19 to i32
  %add45 = add nsw i32 %conv44, 3
  %shr46 = ashr i32 %add45, 2
  %add47 = add nsw i32 %shr46, -90
  br label %cond.end49

cond.end49:                                       ; preds = %cond.true43, %if.end24.cond.end49_crit_edge
  %cond99 = phi i32 [ %add39, %cond.true43 ], [ 0, %if.end24.cond.end49_crit_edge ]
  %cond50 = phi i32 [ %add47, %cond.true43 ], [ 0, %if.end24.cond.end49_crit_edge ]
  %conv52 = zext i8 %15 to i32
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.92, i32 noundef %conv31, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %cond99, i32 noundef %cond50, i32 noundef %conv52) #11
  %add54 = add i32 %call53, %add28
  %inc = add nuw nsw i32 %j.0101, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %cond.end49.for.inc55_crit_edge, label %cond.end49.for.body11_crit_edge

cond.end49.for.body11_crit_edge:                  ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

cond.end49.for.inc55_crit_edge:                   ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc55

for.inc55:                                        ; preds = %cond.end49.for.inc55_crit_edge, %for.body.for.inc55_crit_edge
  %len.addr.2 = phi i32 [ %len.addr.0103, %for.body.for.inc55_crit_edge ], [ %add54, %cond.end49.for.inc55_crit_edge ]
  %inc56 = add nuw nsw i32 %i.0104, 1
  %exitcond106.not = icmp eq i32 %inc56, 3
  br i1 %exitcond106.not, label %for.end57, label %for.inc55.for.body_crit_edge

for.inc55.for.body_crit_edge:                     ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end57:                                        ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 %len.addr.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gpio_request_out(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @ar9003_hw_atten_chain_get(ptr nocapture noundef readonly %ah, i32 noundef %chain, ptr nocapture noundef readonly %chan) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chain)
  %cmp = icmp sgt i32 %chain, -1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %xatten1DB = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 3
  %arrayidx = getelementptr [3 x i8], ptr %xatten1DB, i32 0, i32 %chain
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %4 to i16
  br label %cleanup

if.else:                                          ; preds = %if.then
  %xatten1DBLow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 0, i32 3
  %arrayidx4 = getelementptr [3 x i8], ptr %xatten1DBLow, i32 0, i32 %chain
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp6.not = icmp eq i8 %6, 0
  br i1 %cmp6.not, label %if.else28, label %if.then8

if.then8:                                         ; preds = %if.else
  %conv5 = zext i8 %6 to i32
  %xatten1DB15 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 0, i32 0, i32 4
  %arrayidx16 = getelementptr [3 x i8], ptr %xatten1DB15, i32 0, i32 %chain
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %8 to i32
  %xatten1DBHigh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 1, i32 4
  %arrayidx21 = getelementptr [3 x i8], ptr %xatten1DBHigh, i32 0, i32 %chain
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %10 to i32
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %channel, align 4
  %conv25 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5181, i16 %12)
  %cmp2.i = icmp ult i16 %12, 5181
  br i1 %cmp2.i, label %if.end10.i, label %for.inc.i

if.end10.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 5180, i16 %12)
  %cmp11.i = icmp eq i16 %12, 5180
  %. = zext i1 %cmp11.i to i32
  %conv5. = select i1 %cmp11.i, i32 %conv5, i32 0
  %.148 = select i1 %cmp11.i, i32 5180, i32 0
  br label %for.inc.i.1.thread

for.inc.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5501, i16 %12)
  %cmp2.i.1 = icmp ult i16 %12, 5501
  br i1 %cmp2.i.1, label %if.end10.i.1, label %for.inc.i.if.then13.i.1_crit_edge

for.inc.i.if.then13.i.1_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1

if.end10.i.1:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5500, i16 %12)
  %cmp11.i.1 = icmp eq i16 %12, 5500
  br i1 %cmp11.i.1, label %if.end10.i.1.if.then13.i.1_crit_edge, label %if.end10.i.1.for.inc.i.1.thread_crit_edge

if.end10.i.1.for.inc.i.1.thread_crit_edge:        ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1.thread

if.end10.i.1.if.then13.i.1_crit_edge:             ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1

if.then13.i.1:                                    ; preds = %if.end10.i.1.if.then13.i.1_crit_edge, %for.inc.i.if.then13.i.1_crit_edge
  %hhave.176.i.1 = phi i32 [ 1, %if.end10.i.1.if.then13.i.1_crit_edge ], [ 0, %for.inc.i.if.then13.i.1_crit_edge ]
  %hy.174.i.1 = phi i32 [ %conv17, %if.end10.i.1.if.then13.i.1_crit_edge ], [ 0, %for.inc.i.if.then13.i.1_crit_edge ]
  %hx.172.i.1 = phi i32 [ 5500, %if.end10.i.1.if.then13.i.1_crit_edge ], [ 0, %for.inc.i.if.then13.i.1_crit_edge ]
  %sub.i.2 = add nsw i32 %conv25, -5785
  call void @__sanitizer_cov_trace_const_cmp2(i16 5786, i16 %12)
  %cmp2.i.2 = icmp ult i16 %12, 5786
  br i1 %cmp2.i.2, label %if.then13.i.1.if.then.i.2_crit_edge, label %if.then13.i.1.if.then13.i.2_crit_edge

if.then13.i.1.if.then13.i.2_crit_edge:            ; preds = %if.then13.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.2

if.then13.i.1.if.then.i.2_crit_edge:              ; preds = %if.then13.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.2

for.inc.i.1.thread:                               ; preds = %if.end10.i.1.for.inc.i.1.thread_crit_edge, %if.end10.i
  %hy.173.i.1.ph = phi i32 [ %conv17, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ %conv5, %if.end10.i ]
  %hx.171.i.1.ph = phi i32 [ 5500, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ 5180, %if.end10.i ]
  %lx.1.i.1.ph = phi i32 [ 5180, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ %.148, %if.end10.i ]
  %ly.1.i.1.ph = phi i32 [ %conv5, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ %conv5., %if.end10.i ]
  %lhave.1.i.1.ph = phi i32 [ 1, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ %., %if.end10.i ]
  %sub.i.2122 = add nsw i32 %conv25, -5785
  br label %if.then.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1.thread, %if.then13.i.1.if.then.i.2_crit_edge
  %sub.i.2134 = phi i32 [ %sub.i.2122, %for.inc.i.1.thread ], [ %sub.i.2, %if.then13.i.1.if.then.i.2_crit_edge ]
  %lhave.1.i.1132 = phi i32 [ %lhave.1.i.1.ph, %for.inc.i.1.thread ], [ 1, %if.then13.i.1.if.then.i.2_crit_edge ]
  %ly.1.i.1129 = phi i32 [ %ly.1.i.1.ph, %for.inc.i.1.thread ], [ %conv17, %if.then13.i.1.if.then.i.2_crit_edge ]
  %lx.1.i.1128 = phi i32 [ %lx.1.i.1.ph, %for.inc.i.1.thread ], [ 5500, %if.then13.i.1.if.then.i.2_crit_edge ]
  %hx.171.i.1126 = phi i32 [ %hx.171.i.1.ph, %for.inc.i.1.thread ], [ %hx.172.i.1, %if.then13.i.1.if.then.i.2_crit_edge ]
  %hy.173.i.1125 = phi i32 [ %hy.173.i.1.ph, %for.inc.i.1.thread ], [ %hy.174.i.1, %if.then13.i.1.if.then.i.2_crit_edge ]
  %hhave.175.i.1124 = phi i32 [ 1, %for.inc.i.1.thread ], [ %hhave.176.i.1, %if.then13.i.1.if.then.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i.1124)
  %tobool.not.i.2 = icmp eq i32 %hhave.175.i.1124, 0
  %sub4.i.2 = sub nsw i32 %conv25, %hx.171.i.1126
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2134, i32 %sub4.i.2)
  %cmp5.i.2 = icmp sgt i32 %sub.i.2134, %sub4.i.2
  %or.cond.i.2 = select i1 %tobool.not.i.2, i1 true, i1 %cmp5.i.2
  %spec.select151 = select i1 %or.cond.i.2, i32 5785, i32 %hx.171.i.1126
  %spec.select152 = select i1 %or.cond.i.2, i32 %conv22, i32 %hy.173.i.1125
  call void @__sanitizer_cov_trace_const_cmp2(i16 5784, i16 %12)
  %cmp11.i.2 = icmp ugt i16 %12, 5784
  br i1 %cmp11.i.2, label %if.then.i.2.if.then13.i.2_crit_edge, label %for.inc.i.2

if.then.i.2.if.then13.i.2_crit_edge:              ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.2

if.then13.i.2:                                    ; preds = %if.then.i.2.if.then13.i.2_crit_edge, %if.then13.i.1.if.then13.i.2_crit_edge
  %sub.i.2133 = phi i32 [ %sub.i.2134, %if.then.i.2.if.then13.i.2_crit_edge ], [ %sub.i.2, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %lhave.1.i.1131 = phi i32 [ %lhave.1.i.1132, %if.then.i.2.if.then13.i.2_crit_edge ], [ 1, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %ly.1.i.1130 = phi i32 [ %ly.1.i.1129, %if.then.i.2.if.then13.i.2_crit_edge ], [ %conv17, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %lx.1.i.1127 = phi i32 [ %lx.1.i.1128, %if.then.i.2.if.then13.i.2_crit_edge ], [ 5500, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %hhave.176.i.2 = phi i32 [ 1, %if.then.i.2.if.then13.i.2_crit_edge ], [ %hhave.176.i.1, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %hy.174.i.2 = phi i32 [ %spec.select152, %if.then.i.2.if.then13.i.2_crit_edge ], [ %hy.174.i.1, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %hx.172.i.2 = phi i32 [ %spec.select151, %if.then.i.2.if.then13.i.2_crit_edge ], [ %hx.172.i.1, %if.then13.i.1.if.then13.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i.1131)
  %tobool14.not.i.2 = icmp eq i32 %lhave.1.i.1131, 0
  %sub16.i.2 = sub nsw i32 %conv25, %lx.1.i.1127
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2133, i32 %sub16.i.2)
  %cmp17.i.2 = icmp slt i32 %sub.i.2133, %sub16.i.2
  %or.cond65.i.2 = select i1 %tobool14.not.i.2, i1 true, i1 %cmp17.i.2
  %spec.select153 = select i1 %or.cond65.i.2, i32 5785, i32 %lx.1.i.1127
  %spec.select154 = select i1 %or.cond65.i.2, i32 %conv22, i32 %ly.1.i.1130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.176.i.2)
  %tobool35.not.i142 = icmp eq i32 %hhave.176.i.2, 0
  br label %if.then25.i

for.inc.i.2:                                      ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i.1132)
  %tobool24.not.i = icmp eq i32 %lhave.1.i.1132, 0
  br i1 %tobool24.not.i, label %for.inc.i.2.ar9003_hw_power_interpolate.exit_crit_edge, label %for.inc.i.2.if.then25.i_crit_edge

for.inc.i.2.if.then25.i_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i

for.inc.i.2.ar9003_hw_power_interpolate.exit_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit

if.then25.i:                                      ; preds = %for.inc.i.2.if.then25.i_crit_edge, %if.then13.i.2
  %tobool35.not.i147 = phi i1 [ %tobool35.not.i142, %if.then13.i.2 ], [ false, %for.inc.i.2.if.then25.i_crit_edge ]
  %ly.1.i.2146 = phi i32 [ %spec.select154, %if.then13.i.2 ], [ %ly.1.i.1129, %for.inc.i.2.if.then25.i_crit_edge ]
  %lx.1.i.2145 = phi i32 [ %spec.select153, %if.then13.i.2 ], [ %lx.1.i.1128, %for.inc.i.2.if.then25.i_crit_edge ]
  %hx.171.i.2144 = phi i32 [ %hx.172.i.2, %if.then13.i.2 ], [ %spec.select151, %for.inc.i.2.if.then25.i_crit_edge ]
  %hy.173.i.2143 = phi i32 [ %hy.174.i.2, %if.then13.i.2 ], [ %spec.select152, %for.inc.i.2.if.then25.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.2144, i32 %lx.1.i.2145)
  %cmp28.i = icmp eq i32 %hx.171.i.2144, %lx.1.i.2145
  %or.cond66.i = select i1 %tobool35.not.i147, i1 true, i1 %cmp28.i
  br i1 %or.cond66.i, label %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge, label %if.else.i

if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit

if.else.i:                                        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub nsw i32 %hy.173.i.2143, %ly.1.i.2146
  %sub1.i.i = sub nsw i32 %conv25, %lx.1.i.2145
  %mul.i.i = shl nsw i32 %sub1.i.i, 1
  %mul2.i.i = mul i32 %mul.i.i, %sub.i.i
  %sub3.i.i = sub nsw i32 %hx.171.i.2144, %lx.1.i.2145
  %div.i.i = sdiv i32 %mul2.i.i, %sub3.i.i
  %div.i.i.frozen = freeze i32 %div.i.i
  %div4.i.i = sdiv i32 %div.i.i.frozen, 2
  %13 = mul i32 %div4.i.i, 2
  %rem.i.i.decomposed = sub i32 %div.i.i.frozen, %13
  %add.i.i = add nsw i32 %div4.i.i, %ly.1.i.2146
  %add5.i.i = add nsw i32 %add.i.i, %rem.i.i.decomposed
  br label %ar9003_hw_power_interpolate.exit

ar9003_hw_power_interpolate.exit:                 ; preds = %if.else.i, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge, %for.inc.i.2.ar9003_hw_power_interpolate.exit_crit_edge
  %y.0.i = phi i32 [ %add5.i.i, %if.else.i ], [ %ly.1.i.2146, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge ], [ %spec.select152, %for.inc.i.2.ar9003_hw_power_interpolate.exit_crit_edge ]
  %conv27 = trunc i32 %y.0.i to i16
  br label %cleanup

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %xatten1DB30 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 0, i32 0, i32 4
  %arrayidx31 = getelementptr [3 x i8], ptr %xatten1DB30, i32 0, i32 %chain
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %15 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %ar9003_hw_power_interpolate.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv27, %ar9003_hw_power_interpolate.exit ], [ %conv32, %if.else28 ], [ %conv3, %if.then2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @ar9003_hw_atten_chain_get_margin(ptr nocapture noundef readonly %ah, i32 noundef %chain, ptr nocapture noundef readonly %chan) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chain)
  %cmp = icmp sgt i32 %chain, -1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %xatten1Margin = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 6
  %arrayidx = getelementptr [3 x i8], ptr %xatten1Margin, i32 0, i32 %chain
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %4 to i16
  br label %cleanup

if.else:                                          ; preds = %if.then
  %xatten1MarginLow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 1, i32 1
  %arrayidx4 = getelementptr [3 x i8], ptr %xatten1MarginLow, i32 0, i32 %chain
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp6.not = icmp eq i8 %6, 0
  br i1 %cmp6.not, label %if.else28, label %if.then8

if.then8:                                         ; preds = %if.else
  %conv5 = zext i8 %6 to i32
  %xatten1Margin15 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1, i32 2
  %arrayidx16 = getelementptr [3 x i8], ptr %xatten1Margin15, i32 0, i32 %chain
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %8 to i32
  %xatten1MarginHigh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 2, i32 2
  %arrayidx21 = getelementptr [3 x i8], ptr %xatten1MarginHigh, i32 0, i32 %chain
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %10 to i32
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %channel, align 4
  %conv25 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5181, i16 %12)
  %cmp2.i = icmp ult i16 %12, 5181
  br i1 %cmp2.i, label %if.end10.i, label %for.inc.i

if.end10.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 5180, i16 %12)
  %cmp11.i = icmp eq i16 %12, 5180
  %. = zext i1 %cmp11.i to i32
  %conv5. = select i1 %cmp11.i, i32 %conv5, i32 0
  %.148 = select i1 %cmp11.i, i32 5180, i32 0
  br label %for.inc.i.1.thread

for.inc.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5501, i16 %12)
  %cmp2.i.1 = icmp ult i16 %12, 5501
  br i1 %cmp2.i.1, label %if.end10.i.1, label %for.inc.i.if.then13.i.1_crit_edge

for.inc.i.if.then13.i.1_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1

if.end10.i.1:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5500, i16 %12)
  %cmp11.i.1 = icmp eq i16 %12, 5500
  br i1 %cmp11.i.1, label %if.end10.i.1.if.then13.i.1_crit_edge, label %if.end10.i.1.for.inc.i.1.thread_crit_edge

if.end10.i.1.for.inc.i.1.thread_crit_edge:        ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1.thread

if.end10.i.1.if.then13.i.1_crit_edge:             ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.1

if.then13.i.1:                                    ; preds = %if.end10.i.1.if.then13.i.1_crit_edge, %for.inc.i.if.then13.i.1_crit_edge
  %hhave.176.i.1 = phi i32 [ 1, %if.end10.i.1.if.then13.i.1_crit_edge ], [ 0, %for.inc.i.if.then13.i.1_crit_edge ]
  %hy.174.i.1 = phi i32 [ %conv17, %if.end10.i.1.if.then13.i.1_crit_edge ], [ 0, %for.inc.i.if.then13.i.1_crit_edge ]
  %hx.172.i.1 = phi i32 [ 5500, %if.end10.i.1.if.then13.i.1_crit_edge ], [ 0, %for.inc.i.if.then13.i.1_crit_edge ]
  %sub.i.2 = add nsw i32 %conv25, -5785
  call void @__sanitizer_cov_trace_const_cmp2(i16 5786, i16 %12)
  %cmp2.i.2 = icmp ult i16 %12, 5786
  br i1 %cmp2.i.2, label %if.then13.i.1.if.then.i.2_crit_edge, label %if.then13.i.1.if.then13.i.2_crit_edge

if.then13.i.1.if.then13.i.2_crit_edge:            ; preds = %if.then13.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.2

if.then13.i.1.if.then.i.2_crit_edge:              ; preds = %if.then13.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.2

for.inc.i.1.thread:                               ; preds = %if.end10.i.1.for.inc.i.1.thread_crit_edge, %if.end10.i
  %hy.173.i.1.ph = phi i32 [ %conv17, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ %conv5, %if.end10.i ]
  %hx.171.i.1.ph = phi i32 [ 5500, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ 5180, %if.end10.i ]
  %lx.1.i.1.ph = phi i32 [ 5180, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ %.148, %if.end10.i ]
  %ly.1.i.1.ph = phi i32 [ %conv5, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ %conv5., %if.end10.i ]
  %lhave.1.i.1.ph = phi i32 [ 1, %if.end10.i.1.for.inc.i.1.thread_crit_edge ], [ %., %if.end10.i ]
  %sub.i.2122 = add nsw i32 %conv25, -5785
  br label %if.then.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1.thread, %if.then13.i.1.if.then.i.2_crit_edge
  %sub.i.2134 = phi i32 [ %sub.i.2122, %for.inc.i.1.thread ], [ %sub.i.2, %if.then13.i.1.if.then.i.2_crit_edge ]
  %lhave.1.i.1132 = phi i32 [ %lhave.1.i.1.ph, %for.inc.i.1.thread ], [ 1, %if.then13.i.1.if.then.i.2_crit_edge ]
  %ly.1.i.1129 = phi i32 [ %ly.1.i.1.ph, %for.inc.i.1.thread ], [ %conv17, %if.then13.i.1.if.then.i.2_crit_edge ]
  %lx.1.i.1128 = phi i32 [ %lx.1.i.1.ph, %for.inc.i.1.thread ], [ 5500, %if.then13.i.1.if.then.i.2_crit_edge ]
  %hx.171.i.1126 = phi i32 [ %hx.171.i.1.ph, %for.inc.i.1.thread ], [ %hx.172.i.1, %if.then13.i.1.if.then.i.2_crit_edge ]
  %hy.173.i.1125 = phi i32 [ %hy.173.i.1.ph, %for.inc.i.1.thread ], [ %hy.174.i.1, %if.then13.i.1.if.then.i.2_crit_edge ]
  %hhave.175.i.1124 = phi i32 [ 1, %for.inc.i.1.thread ], [ %hhave.176.i.1, %if.then13.i.1.if.then.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i.1124)
  %tobool.not.i.2 = icmp eq i32 %hhave.175.i.1124, 0
  %sub4.i.2 = sub nsw i32 %conv25, %hx.171.i.1126
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2134, i32 %sub4.i.2)
  %cmp5.i.2 = icmp sgt i32 %sub.i.2134, %sub4.i.2
  %or.cond.i.2 = select i1 %tobool.not.i.2, i1 true, i1 %cmp5.i.2
  %spec.select151 = select i1 %or.cond.i.2, i32 5785, i32 %hx.171.i.1126
  %spec.select152 = select i1 %or.cond.i.2, i32 %conv22, i32 %hy.173.i.1125
  call void @__sanitizer_cov_trace_const_cmp2(i16 5784, i16 %12)
  %cmp11.i.2 = icmp ugt i16 %12, 5784
  br i1 %cmp11.i.2, label %if.then.i.2.if.then13.i.2_crit_edge, label %for.inc.i.2

if.then.i.2.if.then13.i.2_crit_edge:              ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.2

if.then13.i.2:                                    ; preds = %if.then.i.2.if.then13.i.2_crit_edge, %if.then13.i.1.if.then13.i.2_crit_edge
  %sub.i.2133 = phi i32 [ %sub.i.2134, %if.then.i.2.if.then13.i.2_crit_edge ], [ %sub.i.2, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %lhave.1.i.1131 = phi i32 [ %lhave.1.i.1132, %if.then.i.2.if.then13.i.2_crit_edge ], [ 1, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %ly.1.i.1130 = phi i32 [ %ly.1.i.1129, %if.then.i.2.if.then13.i.2_crit_edge ], [ %conv17, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %lx.1.i.1127 = phi i32 [ %lx.1.i.1128, %if.then.i.2.if.then13.i.2_crit_edge ], [ 5500, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %hhave.176.i.2 = phi i32 [ 1, %if.then.i.2.if.then13.i.2_crit_edge ], [ %hhave.176.i.1, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %hy.174.i.2 = phi i32 [ %spec.select152, %if.then.i.2.if.then13.i.2_crit_edge ], [ %hy.174.i.1, %if.then13.i.1.if.then13.i.2_crit_edge ]
  %hx.172.i.2 = phi i32 [ %spec.select151, %if.then.i.2.if.then13.i.2_crit_edge ], [ %hx.172.i.1, %if.then13.i.1.if.then13.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i.1131)
  %tobool14.not.i.2 = icmp eq i32 %lhave.1.i.1131, 0
  %sub16.i.2 = sub nsw i32 %conv25, %lx.1.i.1127
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2133, i32 %sub16.i.2)
  %cmp17.i.2 = icmp slt i32 %sub.i.2133, %sub16.i.2
  %or.cond65.i.2 = select i1 %tobool14.not.i.2, i1 true, i1 %cmp17.i.2
  %spec.select153 = select i1 %or.cond65.i.2, i32 5785, i32 %lx.1.i.1127
  %spec.select154 = select i1 %or.cond65.i.2, i32 %conv22, i32 %ly.1.i.1130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.176.i.2)
  %tobool35.not.i142 = icmp eq i32 %hhave.176.i.2, 0
  br label %if.then25.i

for.inc.i.2:                                      ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i.1132)
  %tobool24.not.i = icmp eq i32 %lhave.1.i.1132, 0
  br i1 %tobool24.not.i, label %for.inc.i.2.ar9003_hw_power_interpolate.exit_crit_edge, label %for.inc.i.2.if.then25.i_crit_edge

for.inc.i.2.if.then25.i_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25.i

for.inc.i.2.ar9003_hw_power_interpolate.exit_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit

if.then25.i:                                      ; preds = %for.inc.i.2.if.then25.i_crit_edge, %if.then13.i.2
  %tobool35.not.i147 = phi i1 [ %tobool35.not.i142, %if.then13.i.2 ], [ false, %for.inc.i.2.if.then25.i_crit_edge ]
  %ly.1.i.2146 = phi i32 [ %spec.select154, %if.then13.i.2 ], [ %ly.1.i.1129, %for.inc.i.2.if.then25.i_crit_edge ]
  %lx.1.i.2145 = phi i32 [ %spec.select153, %if.then13.i.2 ], [ %lx.1.i.1128, %for.inc.i.2.if.then25.i_crit_edge ]
  %hx.171.i.2144 = phi i32 [ %hx.172.i.2, %if.then13.i.2 ], [ %spec.select151, %for.inc.i.2.if.then25.i_crit_edge ]
  %hy.173.i.2143 = phi i32 [ %hy.174.i.2, %if.then13.i.2 ], [ %spec.select152, %for.inc.i.2.if.then25.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i.2144, i32 %lx.1.i.2145)
  %cmp28.i = icmp eq i32 %hx.171.i.2144, %lx.1.i.2145
  %or.cond66.i = select i1 %tobool35.not.i147, i1 true, i1 %cmp28.i
  br i1 %or.cond66.i, label %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge, label %if.else.i

if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit

if.else.i:                                        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub nsw i32 %hy.173.i.2143, %ly.1.i.2146
  %sub1.i.i = sub nsw i32 %conv25, %lx.1.i.2145
  %mul.i.i = shl nsw i32 %sub1.i.i, 1
  %mul2.i.i = mul i32 %mul.i.i, %sub.i.i
  %sub3.i.i = sub nsw i32 %hx.171.i.2144, %lx.1.i.2145
  %div.i.i = sdiv i32 %mul2.i.i, %sub3.i.i
  %div.i.i.frozen = freeze i32 %div.i.i
  %div4.i.i = sdiv i32 %div.i.i.frozen, 2
  %13 = mul i32 %div4.i.i, 2
  %rem.i.i.decomposed = sub i32 %div.i.i.frozen, %13
  %add.i.i = add nsw i32 %div4.i.i, %ly.1.i.2146
  %add5.i.i = add nsw i32 %add.i.i, %rem.i.i.decomposed
  br label %ar9003_hw_power_interpolate.exit

ar9003_hw_power_interpolate.exit:                 ; preds = %if.else.i, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge, %for.inc.i.2.ar9003_hw_power_interpolate.exit_crit_edge
  %y.0.i = phi i32 [ %add5.i.i, %if.else.i ], [ %ly.1.i.2146, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge ], [ %spec.select152, %for.inc.i.2.ar9003_hw_power_interpolate.exit_crit_edge ]
  %conv27 = trunc i32 %y.0.i to i16
  br label %cleanup

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %xatten1Margin30 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1, i32 2
  %arrayidx31 = getelementptr [3 x i8], ptr %xatten1Margin30, i32 0, i32 %chain
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %15 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %ar9003_hw_power_interpolate.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv27, %ar9003_hw_power_interpolate.exit ], [ %conv32, %if.else28 ], [ %conv3, %if.then2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ar9003_is_paprd_enabled(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_update_regulatory_maxpower(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_init_rate_txpower(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ar9003_hw_eeprom_get_tgt_pwr(ptr nocapture noundef readonly %ah, i16 noundef zeroext %rateIndex, i16 noundef zeroext %freq, i1 noundef zeroext %is2GHz) unnamed_addr #10 align 64 {
entry:
  %targetPowerArray = alloca [8 x i32], align 4
  %freqArray = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %targetPowerArray) #11
  %0 = call ptr @memset(ptr %targetPowerArray, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freqArray) #11
  %calTargetPower2G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 38, i32 0, i32 1
  %calTarget_freqbin_2G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 33
  %calTargetPower5G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 1, i32 0, i32 0, i32 2, i32 1
  %calTarget_freqbin_5G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 7, i32 1, i32 1, i32 2
  %pEepromTargetPwr.0 = select i1 %is2GHz, ptr %calTargetPower2G, ptr %calTargetPower5G
  %pFreqBin.0 = select i1 %is2GHz, ptr %calTarget_freqbin_2G, ptr %calTarget_freqbin_5G
  %idxprom12 = zext i16 %rateIndex to i32
  %wide.trip.count = select i1 %is2GHz, i32 3, i32 8
  %1 = call ptr @memset(ptr %freqArray, i32 255, i32 32)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %pFreqBin.0, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  %conv.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 2300
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %add6.i = add nuw nsw i32 %mul.i, 4800
  %cond.i = select i1 %is2GHz, i32 %add.i, i32 %add6.i
  %conv7 = select i1 %cmp.i, i32 255, i32 %cond.i
  %arrayidx9 = getelementptr [8 x i32], ptr %freqArray, i32 0, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv7, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.cal_tgt_pow_legacy, ptr %pEepromTargetPwr.0, i32 %indvars.iv
  %arrayidx13 = getelementptr [4 x i8], ptr %arrayidx11, i32 0, i32 %idxprom12
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %arrayidx16 = getelementptr [8 x i32], ptr %targetPowerArray, i32 0, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv14, ptr %arrayidx16, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %conv17 = zext i16 %freq to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end
  %hhave.088.i = phi i32 [ %hhave.175.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %hy.087.i = phi i32 [ %hy.173.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %hx.086.i = phi i32 [ %hx.171.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %lhave.084.i = phi i32 [ %lhave.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %ly.083.i = phi i32 [ %ly.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %lx.082.i = phi i32 [ %lx.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %ip.078.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %arrayidx.i = getelementptr i32, ptr %freqArray, i32 %ip.078.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %conv17, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp2.i = icmp slt i32 %sub.i, 1
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.if.then13.i_crit_edge

for.body.i.if.then13.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.088.i)
  %tobool.not.i = icmp eq i32 %hhave.088.i, 0
  %sub4.i = sub i32 %conv17, %hx.086.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp5.i = icmp sgt i32 %sub.i, %sub4.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.then7.i, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i = getelementptr i32, ptr %targetPowerArray, i32 %ip.078.i
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.then.i.if.end10.i_crit_edge
  %hx.1.i = phi i32 [ %9, %if.then7.i ], [ %hx.086.i, %if.then.i.if.end10.i_crit_edge ]
  %hy.1.i = phi i32 [ %11, %if.then7.i ], [ %hy.087.i, %if.then.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp11.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp11.i, label %if.end10.i.if.then13.i_crit_edge, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end10.i.if.then13.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i.if.then13.i_crit_edge, %for.body.i.if.then13.i_crit_edge
  %hhave.176.i = phi i32 [ 1, %if.end10.i.if.then13.i_crit_edge ], [ %hhave.088.i, %for.body.i.if.then13.i_crit_edge ]
  %hy.174.i = phi i32 [ %hy.1.i, %if.end10.i.if.then13.i_crit_edge ], [ %hy.087.i, %for.body.i.if.then13.i_crit_edge ]
  %hx.172.i = phi i32 [ %hx.1.i, %if.end10.i.if.then13.i_crit_edge ], [ %hx.086.i, %for.body.i.if.then13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.084.i)
  %tobool14.not.i = icmp eq i32 %lhave.084.i, 0
  %sub16.i = sub i32 %conv17, %lx.082.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub16.i)
  %cmp17.i = icmp slt i32 %sub.i, %sub16.i
  %or.cond65.i = select i1 %tobool14.not.i, i1 true, i1 %cmp17.i
  br i1 %or.cond65.i, label %if.then19.i, label %if.then13.i.for.inc.i_crit_edge

if.then13.i.for.inc.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then19.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx21.i = getelementptr i32, ptr %targetPowerArray, i32 %ip.078.i
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx21.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %if.then13.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge
  %hhave.175.i = phi i32 [ %hhave.176.i, %if.then19.i ], [ 1, %if.end10.i.for.inc.i_crit_edge ], [ %hhave.176.i, %if.then13.i.for.inc.i_crit_edge ]
  %hy.173.i = phi i32 [ %hy.174.i, %if.then19.i ], [ %hy.1.i, %if.end10.i.for.inc.i_crit_edge ], [ %hy.174.i, %if.then13.i.for.inc.i_crit_edge ]
  %hx.171.i = phi i32 [ %hx.172.i, %if.then19.i ], [ %hx.1.i, %if.end10.i.for.inc.i_crit_edge ], [ %hx.172.i, %if.then13.i.for.inc.i_crit_edge ]
  %lx.1.i = phi i32 [ %9, %if.then19.i ], [ %lx.082.i, %if.end10.i.for.inc.i_crit_edge ], [ %lx.082.i, %if.then13.i.for.inc.i_crit_edge ]
  %ly.1.i = phi i32 [ %13, %if.then19.i ], [ %ly.083.i, %if.end10.i.for.inc.i_crit_edge ], [ %ly.083.i, %if.then13.i.for.inc.i_crit_edge ]
  %lhave.1.i = phi i32 [ 1, %if.then19.i ], [ %lhave.084.i, %if.end10.i.for.inc.i_crit_edge ], [ 1, %if.then13.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %ip.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %wide.trip.count
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i)
  %tobool24.not.i = icmp eq i32 %lhave.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i)
  %tobool35.not.i = icmp eq i32 %hhave.175.i, 0
  br i1 %tobool24.not.i, label %if.else34.i, label %if.then25.i

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i, i32 %lx.1.i)
  %cmp28.i = icmp eq i32 %hx.171.i, %lx.1.i
  %or.cond66.i = select i1 %tobool35.not.i, i1 true, i1 %cmp28.i
  br i1 %or.cond66.i, label %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge, label %if.else.i

if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit

if.else.i:                                        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %hy.173.i, %ly.1.i
  %sub1.i.i = sub i32 %conv17, %lx.1.i
  %mul.i.i = shl i32 %sub1.i.i, 1
  %mul2.i.i = mul i32 %mul.i.i, %sub.i.i
  %sub3.i.i = sub i32 %hx.171.i, %lx.1.i
  %div.i.i = sdiv i32 %mul2.i.i, %sub3.i.i
  %div.i.i.frozen = freeze i32 %div.i.i
  %div4.i.i = sdiv i32 %div.i.i.frozen, 2
  %14 = mul i32 %div4.i.i, 2
  %rem.i.i.decomposed = sub i32 %div.i.i.frozen, %14
  %add.i.i = add i32 %div4.i.i, %ly.1.i
  %add5.i.i = add i32 %add.i.i, %rem.i.i.decomposed
  br label %ar9003_hw_power_interpolate.exit

if.else34.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %tobool35.not.i, i32 -1073741824, i32 %hy.173.i
  br label %ar9003_hw_power_interpolate.exit

ar9003_hw_power_interpolate.exit:                 ; preds = %if.else34.i, %if.else.i, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge
  %y.0.i = phi i32 [ %add5.i.i, %if.else.i ], [ %ly.1.i, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge ], [ %spec.select, %if.else34.i ]
  %conv21 = trunc i32 %y.0.i to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freqArray) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %targetPowerArray) #11
  ret i8 %conv21
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ar9003_hw_eeprom_get_ht20_tgt_pwr(ptr nocapture noundef readonly %ah, i16 noundef zeroext %rateIndex, i16 noundef zeroext %freq, i1 noundef zeroext %is2GHz) unnamed_addr #10 align 64 {
entry:
  %targetPowerArray = alloca [8 x i32], align 4
  %freqArray = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %targetPowerArray) #11
  %0 = call ptr @memset(ptr %targetPowerArray, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freqArray) #11
  %calTargetPower2GHT20 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 38, i32 3, i32 1
  %calTarget_freqbin_2GHT20 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 36
  %calTargetPower5GHT20 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 1, i32 1, i32 0, i32 0, i32 3
  %calTarget_freqbin_5GHT20 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 7, i32 1, i32 3
  %pEepromTargetPwr.0 = select i1 %is2GHz, ptr %calTargetPower2GHT20, ptr %calTargetPower5GHT20
  %pFreqBin.0 = select i1 %is2GHz, ptr %calTarget_freqbin_2GHT20, ptr %calTarget_freqbin_5GHT20
  %idxprom12 = zext i16 %rateIndex to i32
  %wide.trip.count = select i1 %is2GHz, i32 3, i32 8
  %1 = call ptr @memset(ptr %freqArray, i32 255, i32 32)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %pFreqBin.0, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  %conv.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 2300
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %add6.i = add nuw nsw i32 %mul.i, 4800
  %cond.i = select i1 %is2GHz, i32 %add.i, i32 %add6.i
  %conv7 = select i1 %cmp.i, i32 255, i32 %cond.i
  %arrayidx9 = getelementptr [8 x i32], ptr %freqArray, i32 0, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv7, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.cal_tgt_pow_ht, ptr %pEepromTargetPwr.0, i32 %indvars.iv
  %arrayidx13 = getelementptr [14 x i8], ptr %arrayidx11, i32 0, i32 %idxprom12
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %arrayidx16 = getelementptr [8 x i32], ptr %targetPowerArray, i32 0, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv14, ptr %arrayidx16, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %conv17 = zext i16 %freq to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end
  %hhave.088.i = phi i32 [ %hhave.175.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %hy.087.i = phi i32 [ %hy.173.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %hx.086.i = phi i32 [ %hx.171.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %lhave.084.i = phi i32 [ %lhave.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %ly.083.i = phi i32 [ %ly.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %lx.082.i = phi i32 [ %lx.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %ip.078.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %arrayidx.i = getelementptr i32, ptr %freqArray, i32 %ip.078.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %conv17, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp2.i = icmp slt i32 %sub.i, 1
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.if.then13.i_crit_edge

for.body.i.if.then13.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.088.i)
  %tobool.not.i = icmp eq i32 %hhave.088.i, 0
  %sub4.i = sub i32 %conv17, %hx.086.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp5.i = icmp sgt i32 %sub.i, %sub4.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.then7.i, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i = getelementptr i32, ptr %targetPowerArray, i32 %ip.078.i
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.then.i.if.end10.i_crit_edge
  %hx.1.i = phi i32 [ %9, %if.then7.i ], [ %hx.086.i, %if.then.i.if.end10.i_crit_edge ]
  %hy.1.i = phi i32 [ %11, %if.then7.i ], [ %hy.087.i, %if.then.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp11.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp11.i, label %if.end10.i.if.then13.i_crit_edge, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end10.i.if.then13.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i.if.then13.i_crit_edge, %for.body.i.if.then13.i_crit_edge
  %hhave.176.i = phi i32 [ 1, %if.end10.i.if.then13.i_crit_edge ], [ %hhave.088.i, %for.body.i.if.then13.i_crit_edge ]
  %hy.174.i = phi i32 [ %hy.1.i, %if.end10.i.if.then13.i_crit_edge ], [ %hy.087.i, %for.body.i.if.then13.i_crit_edge ]
  %hx.172.i = phi i32 [ %hx.1.i, %if.end10.i.if.then13.i_crit_edge ], [ %hx.086.i, %for.body.i.if.then13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.084.i)
  %tobool14.not.i = icmp eq i32 %lhave.084.i, 0
  %sub16.i = sub i32 %conv17, %lx.082.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub16.i)
  %cmp17.i = icmp slt i32 %sub.i, %sub16.i
  %or.cond65.i = select i1 %tobool14.not.i, i1 true, i1 %cmp17.i
  br i1 %or.cond65.i, label %if.then19.i, label %if.then13.i.for.inc.i_crit_edge

if.then13.i.for.inc.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then19.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx21.i = getelementptr i32, ptr %targetPowerArray, i32 %ip.078.i
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx21.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %if.then13.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge
  %hhave.175.i = phi i32 [ %hhave.176.i, %if.then19.i ], [ 1, %if.end10.i.for.inc.i_crit_edge ], [ %hhave.176.i, %if.then13.i.for.inc.i_crit_edge ]
  %hy.173.i = phi i32 [ %hy.174.i, %if.then19.i ], [ %hy.1.i, %if.end10.i.for.inc.i_crit_edge ], [ %hy.174.i, %if.then13.i.for.inc.i_crit_edge ]
  %hx.171.i = phi i32 [ %hx.172.i, %if.then19.i ], [ %hx.1.i, %if.end10.i.for.inc.i_crit_edge ], [ %hx.172.i, %if.then13.i.for.inc.i_crit_edge ]
  %lx.1.i = phi i32 [ %9, %if.then19.i ], [ %lx.082.i, %if.end10.i.for.inc.i_crit_edge ], [ %lx.082.i, %if.then13.i.for.inc.i_crit_edge ]
  %ly.1.i = phi i32 [ %13, %if.then19.i ], [ %ly.083.i, %if.end10.i.for.inc.i_crit_edge ], [ %ly.083.i, %if.then13.i.for.inc.i_crit_edge ]
  %lhave.1.i = phi i32 [ 1, %if.then19.i ], [ %lhave.084.i, %if.end10.i.for.inc.i_crit_edge ], [ 1, %if.then13.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %ip.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %wide.trip.count
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i)
  %tobool24.not.i = icmp eq i32 %lhave.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i)
  %tobool35.not.i = icmp eq i32 %hhave.175.i, 0
  br i1 %tobool24.not.i, label %if.else34.i, label %if.then25.i

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i, i32 %lx.1.i)
  %cmp28.i = icmp eq i32 %hx.171.i, %lx.1.i
  %or.cond66.i = select i1 %tobool35.not.i, i1 true, i1 %cmp28.i
  br i1 %or.cond66.i, label %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge, label %if.else.i

if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit

if.else.i:                                        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %hy.173.i, %ly.1.i
  %sub1.i.i = sub i32 %conv17, %lx.1.i
  %mul.i.i = shl i32 %sub1.i.i, 1
  %mul2.i.i = mul i32 %mul.i.i, %sub.i.i
  %sub3.i.i = sub i32 %hx.171.i, %lx.1.i
  %div.i.i = sdiv i32 %mul2.i.i, %sub3.i.i
  %div.i.i.frozen = freeze i32 %div.i.i
  %div4.i.i = sdiv i32 %div.i.i.frozen, 2
  %14 = mul i32 %div4.i.i, 2
  %rem.i.i.decomposed = sub i32 %div.i.i.frozen, %14
  %add.i.i = add i32 %div4.i.i, %ly.1.i
  %add5.i.i = add i32 %add.i.i, %rem.i.i.decomposed
  br label %ar9003_hw_power_interpolate.exit

if.else34.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %tobool35.not.i, i32 -1073741824, i32 %hy.173.i
  br label %ar9003_hw_power_interpolate.exit

ar9003_hw_power_interpolate.exit:                 ; preds = %if.else34.i, %if.else.i, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge
  %y.0.i = phi i32 [ %add5.i.i, %if.else.i ], [ %ly.1.i, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge ], [ %spec.select, %if.else34.i ]
  %conv21 = trunc i32 %y.0.i to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freqArray) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %targetPowerArray) #11
  ret i8 %conv21
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ar9003_hw_eeprom_get_ht40_tgt_pwr(ptr nocapture noundef readonly %ah, i16 noundef zeroext %rateIndex, i16 noundef zeroext %freq, i1 noundef zeroext %is2GHz) unnamed_addr #10 align 64 {
entry:
  %targetPowerArray = alloca [8 x i32], align 4
  %freqArray = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %targetPowerArray) #11
  %0 = call ptr @memset(ptr %targetPowerArray, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freqArray) #11
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %calTargetPower2GHT40 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 13, i32 1
  %calTarget_freqbin_2GHT40 = getelementptr inbounds %struct.ar9300_eeprom, ptr %eeprom, i32 0, i32 12
  %calTargetPower5GHT40 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 1, i32 3, i32 1, i32 3
  %calTarget_freqbin_5GHT40 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 1, i32 0, i32 0, i32 0, i32 3
  %pEepromTargetPwr.0 = select i1 %is2GHz, ptr %calTargetPower2GHT40, ptr %calTargetPower5GHT40
  %pFreqBin.0 = select i1 %is2GHz, ptr %calTarget_freqbin_2GHT40, ptr %calTarget_freqbin_5GHT40
  %idxprom12 = zext i16 %rateIndex to i32
  %wide.trip.count = select i1 %is2GHz, i32 3, i32 8
  %1 = call ptr @memset(ptr %freqArray, i32 255, i32 32)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %pFreqBin.0, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  %conv.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 2300
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %add6.i = add nuw nsw i32 %mul.i, 4800
  %cond.i = select i1 %is2GHz, i32 %add.i, i32 %add6.i
  %conv7 = select i1 %cmp.i, i32 255, i32 %cond.i
  %arrayidx9 = getelementptr [8 x i32], ptr %freqArray, i32 0, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv7, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.cal_tgt_pow_ht, ptr %pEepromTargetPwr.0, i32 %indvars.iv
  %arrayidx13 = getelementptr [14 x i8], ptr %arrayidx11, i32 0, i32 %idxprom12
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %arrayidx16 = getelementptr [8 x i32], ptr %targetPowerArray, i32 0, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv14, ptr %arrayidx16, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %conv17 = zext i16 %freq to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end
  %hhave.088.i = phi i32 [ %hhave.175.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %hy.087.i = phi i32 [ %hy.173.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %hx.086.i = phi i32 [ %hx.171.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %lhave.084.i = phi i32 [ %lhave.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %ly.083.i = phi i32 [ %ly.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %lx.082.i = phi i32 [ %lx.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %ip.078.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %arrayidx.i = getelementptr i32, ptr %freqArray, i32 %ip.078.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %conv17, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp2.i = icmp slt i32 %sub.i, 1
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.if.then13.i_crit_edge

for.body.i.if.then13.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.088.i)
  %tobool.not.i = icmp eq i32 %hhave.088.i, 0
  %sub4.i = sub i32 %conv17, %hx.086.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp5.i = icmp sgt i32 %sub.i, %sub4.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.then7.i, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i = getelementptr i32, ptr %targetPowerArray, i32 %ip.078.i
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.then.i.if.end10.i_crit_edge
  %hx.1.i = phi i32 [ %9, %if.then7.i ], [ %hx.086.i, %if.then.i.if.end10.i_crit_edge ]
  %hy.1.i = phi i32 [ %11, %if.then7.i ], [ %hy.087.i, %if.then.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp11.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp11.i, label %if.end10.i.if.then13.i_crit_edge, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end10.i.if.then13.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i.if.then13.i_crit_edge, %for.body.i.if.then13.i_crit_edge
  %hhave.176.i = phi i32 [ 1, %if.end10.i.if.then13.i_crit_edge ], [ %hhave.088.i, %for.body.i.if.then13.i_crit_edge ]
  %hy.174.i = phi i32 [ %hy.1.i, %if.end10.i.if.then13.i_crit_edge ], [ %hy.087.i, %for.body.i.if.then13.i_crit_edge ]
  %hx.172.i = phi i32 [ %hx.1.i, %if.end10.i.if.then13.i_crit_edge ], [ %hx.086.i, %for.body.i.if.then13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.084.i)
  %tobool14.not.i = icmp eq i32 %lhave.084.i, 0
  %sub16.i = sub i32 %conv17, %lx.082.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub16.i)
  %cmp17.i = icmp slt i32 %sub.i, %sub16.i
  %or.cond65.i = select i1 %tobool14.not.i, i1 true, i1 %cmp17.i
  br i1 %or.cond65.i, label %if.then19.i, label %if.then13.i.for.inc.i_crit_edge

if.then13.i.for.inc.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then19.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx21.i = getelementptr i32, ptr %targetPowerArray, i32 %ip.078.i
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx21.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %if.then13.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge
  %hhave.175.i = phi i32 [ %hhave.176.i, %if.then19.i ], [ 1, %if.end10.i.for.inc.i_crit_edge ], [ %hhave.176.i, %if.then13.i.for.inc.i_crit_edge ]
  %hy.173.i = phi i32 [ %hy.174.i, %if.then19.i ], [ %hy.1.i, %if.end10.i.for.inc.i_crit_edge ], [ %hy.174.i, %if.then13.i.for.inc.i_crit_edge ]
  %hx.171.i = phi i32 [ %hx.172.i, %if.then19.i ], [ %hx.1.i, %if.end10.i.for.inc.i_crit_edge ], [ %hx.172.i, %if.then13.i.for.inc.i_crit_edge ]
  %lx.1.i = phi i32 [ %9, %if.then19.i ], [ %lx.082.i, %if.end10.i.for.inc.i_crit_edge ], [ %lx.082.i, %if.then13.i.for.inc.i_crit_edge ]
  %ly.1.i = phi i32 [ %13, %if.then19.i ], [ %ly.083.i, %if.end10.i.for.inc.i_crit_edge ], [ %ly.083.i, %if.then13.i.for.inc.i_crit_edge ]
  %lhave.1.i = phi i32 [ 1, %if.then19.i ], [ %lhave.084.i, %if.end10.i.for.inc.i_crit_edge ], [ 1, %if.then13.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %ip.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %wide.trip.count
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lhave.1.i)
  %tobool24.not.i = icmp eq i32 %lhave.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hhave.175.i)
  %tobool35.not.i = icmp eq i32 %hhave.175.i, 0
  br i1 %tobool24.not.i, label %if.else34.i, label %if.then25.i

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %hx.171.i, i32 %lx.1.i)
  %cmp28.i = icmp eq i32 %hx.171.i, %lx.1.i
  %or.cond66.i = select i1 %tobool35.not.i, i1 true, i1 %cmp28.i
  br i1 %or.cond66.i, label %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge, label %if.else.i

if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ar9003_hw_power_interpolate.exit

if.else.i:                                        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %hy.173.i, %ly.1.i
  %sub1.i.i = sub i32 %conv17, %lx.1.i
  %mul.i.i = shl i32 %sub1.i.i, 1
  %mul2.i.i = mul i32 %mul.i.i, %sub.i.i
  %sub3.i.i = sub i32 %hx.171.i, %lx.1.i
  %div.i.i = sdiv i32 %mul2.i.i, %sub3.i.i
  %div.i.i.frozen = freeze i32 %div.i.i
  %div4.i.i = sdiv i32 %div.i.i.frozen, 2
  %14 = mul i32 %div4.i.i, 2
  %rem.i.i.decomposed = sub i32 %div.i.i.frozen, %14
  %add.i.i = add i32 %div4.i.i, %ly.1.i
  %add5.i.i = add i32 %add.i.i, %rem.i.i.decomposed
  br label %ar9003_hw_power_interpolate.exit

if.else34.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %tobool35.not.i, i32 -1073741824, i32 %hy.173.i
  br label %ar9003_hw_power_interpolate.exit

ar9003_hw_power_interpolate.exit:                 ; preds = %if.else34.i, %if.else.i, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge
  %y.0.i = phi i32 [ %add5.i.i, %if.else.i ], [ %ly.1.i, %if.then25.i.ar9003_hw_power_interpolate.exit_crit_edge ], [ %spec.select, %if.else34.i ]
  %conv21 = trunc i32 %y.0.i to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freqArray) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %targetPowerArray) #11
  ret i8 %conv21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_channel_centers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ath9k_hw_get_scaled_power(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ar9003_mci_get_max_txpower(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @eep_ar9300_ops, !1, !"eep_ar9300_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5621, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3308, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3327, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3339, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3350, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3356, i32 4}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3365, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3371, i32 4}
!17 = !{ptr @ar9300_default, !18, !"ar9300_default", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 46, i32 35}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3049, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3080, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3193, i32 4}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3199, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3207, i32 5}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3214, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3221, i32 3}
!33 = distinct !{null, !34, !"ar9300_eep_templates", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 2940, i32 36}
!35 = !{ptr @ar9300_x112, !36, !"ar9300_x112", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 1783, i32 35}
!37 = !{ptr @ar9300_h116, !38, !"ar9300_h116", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 2361, i32 35}
!39 = !{ptr @ar9300_h112, !40, !"ar9300_h112", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 1204, i32 35}
!41 = !{ptr @ar9300_x113, !42, !"ar9300_x113", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 625, i32 35}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3165, i32 4}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3171, i32 4}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3502, i32 6}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3502, i32 18}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3506, i32 43}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3510, i32 18}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3522, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3523, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3524, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3525, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3526, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3527, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3529, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3531, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3533, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3535, i32 2}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3537, i32 2}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3539, i32 2}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3541, i32 2}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3542, i32 2}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3543, i32 2}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3544, i32 2}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3545, i32 2}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3546, i32 2}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3547, i32 2}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3548, i32 2}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3549, i32 2}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3550, i32 2}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3551, i32 2}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3552, i32 2}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3553, i32 2}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3554, i32 2}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3555, i32 2}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3556, i32 2}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3557, i32 2}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3558, i32 2}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3559, i32 2}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3560, i32 2}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3561, i32 2}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3562, i32 2}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3563, i32 2}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3565, i32 42}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3565, i32 58}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3405, i32 2}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3406, i32 2}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3407, i32 2}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3408, i32 2}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3409, i32 2}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3410, i32 2}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3411, i32 2}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3412, i32 2}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3413, i32 2}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3414, i32 2}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3415, i32 2}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3416, i32 2}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3417, i32 2}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3418, i32 2}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3419, i32 2}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3420, i32 2}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3421, i32 2}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3422, i32 2}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3423, i32 2}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3424, i32 2}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3425, i32 2}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3426, i32 2}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3427, i32 2}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3429, i32 2}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3430, i32 2}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3431, i32 2}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3432, i32 2}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3433, i32 2}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3434, i32 2}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3435, i32 2}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3461, i32 43}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3464, i32 4}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3476, i32 5}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3479, i32 5}
!198 = distinct !{null, !199, !"switch_chain_reg", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 3651, i32 19}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5518, i32 5}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5536, i32 3}
!204 = !{ptr @ar9003_hw_set_power_per_rate_table.ctlModesFor11a, !205, !"ctlModesFor11a", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5240, i32 19}
!206 = !{ptr @ar9003_hw_set_power_per_rate_table.ctlModesFor11g, !207, !"ctlModesFor11g", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5243, i32 19}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5299, i32 3}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5315, i32 4}
!212 = !{ptr @.str.97, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5356, i32 3}
!214 = !{ptr @.str.98, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5046, i32 3}
!216 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 5124, i32 2}
!218 = distinct !{null, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 4765, i32 3}
!220 = distinct !{null, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 4773, i32 4}
!222 = !{ptr @.str.102, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_eeprom.c", i32 4783, i32 4}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{i8 0, i8 2}
!234 = !{ptr @ar9300_read_eeprom, ptr @ar9300_read_otp}
!235 = !{!"auto-init"}
!236 = !{!"branch_weights", i32 2000, i32 1}
