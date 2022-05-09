; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/common-debug.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/common-debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath9k_cmn_debug_modal_eeprom\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_debug_modal_eeprom\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_debug_modal_eeprom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_debug_modal_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_debug_modal_eeprom\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_debug_modal_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_debug_base_eeprom\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_debug_base_eeprom\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_debug_base_eeprom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_debug_base_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_debug_base_eeprom\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_debug_base_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_debug_stat_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_debug_stat_rx\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_debug_stat_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_debug_stat_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_debug_stat_rx\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_debug_stat_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_debug_recv\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_debug_recv\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_debug_recv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_debug_recv:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_debug_recv\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_debug_recv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_debug_phy_err\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_debug_phy_err\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_debug_phy_err\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_debug_phy_err:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_debug_phy_err\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_debug_phy_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ath_rx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i32 }
%struct.ath_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [39 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.129, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.130, %union.anon.131, %union.anon.132, %union.anon.133, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"modal_eeprom\00", [19 x i8] zeroinitializer }, align 32
@fops_modal_eeprom = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_modal_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_debug_modal_eeprom = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_debug_modal_eeprom = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_debug_modal_eeprom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_debug_modal_eeprom to i32), ptr @__kstrtab_ath9k_cmn_debug_modal_eeprom, ptr @__kstrtabns_ath9k_cmn_debug_modal_eeprom }, section "___ksymtab+ath9k_cmn_debug_modal_eeprom", align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"base_eeprom\00", [20 x i8] zeroinitializer }, align 32
@fops_base_eeprom = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_base_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_debug_base_eeprom = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_debug_base_eeprom = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_debug_base_eeprom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_debug_base_eeprom to i32), ptr @__kstrtab_ath9k_cmn_debug_base_eeprom, ptr @__kstrtabns_ath9k_cmn_debug_base_eeprom }, section "___ksymtab+ath9k_cmn_debug_base_eeprom", align 4
@__kstrtab_ath9k_cmn_debug_stat_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_debug_stat_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_debug_stat_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_debug_stat_rx to i32), ptr @__kstrtab_ath9k_cmn_debug_stat_rx, ptr @__kstrtabns_ath9k_cmn_debug_stat_rx }, section "___ksymtab+ath9k_cmn_debug_stat_rx", align 4
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"recv\00", [27 x i8] zeroinitializer }, align 32
@fops_recv = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_recv, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_debug_recv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_debug_recv = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_debug_recv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_debug_recv to i32), ptr @__kstrtab_ath9k_cmn_debug_recv, ptr @__kstrtabns_ath9k_cmn_debug_recv }, section "___ksymtab+ath9k_cmn_debug_recv", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy_err\00", [24 x i8] zeroinitializer }, align 32
@fops_phy_err = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_phy_err, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_debug_phy_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_debug_phy_err = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_debug_phy_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_debug_phy_err to i32), ptr @__kstrtab_ath9k_cmn_debug_phy_err, ptr @__kstrtabns_ath9k_cmn_debug_phy_err }, section "___ksymtab+ath9k_cmn_debug_phy_err", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%18s : %10u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PKTS-ALL\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BYTES-ALL\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BEACONS\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FRAGS\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPECTRAL\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SPECTRAL SMPL GOOD\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SPECTRAL SMPL ERR\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CRC ERR\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DECRYPT CRC ERR\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PHY ERR\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MIC ERR\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PRE-DELIM CRC ERR\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"POST-DELIM CRC ERR\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DECRYPT BUSY ERR\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LENGTH-ERR\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OOM-ERR\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RATE-ERR\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TOO-MANY-FRAGS\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%22s : %10u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UNDERRUN ERR\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TIMING ERR\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PARITY ERR\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RATE ERR\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LENGTH ERR\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RADAR ERR\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SERVICE ERR\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TOR ERR\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OFDM-TIMING ERR\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OFDM-SIGNAL-PARITY ERR\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OFDM-RATE ERR\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OFDM-LENGTH ERR\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OFDM-POWER-DROP ERR\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OFDM-SERVICE ERR\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OFDM-RESTART ERR\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CCK-BLOCKER ERR\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCK-TIMING ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CCK-HEADER-CRC ERR\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CCK-RATE ERR\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCK-LENGTH ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CCK-POWER-DROP ERR\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CCK-SERVICE ERR\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CCK-RESTART ERR\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HT-CRC ERR\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HT-LENGTH ERR\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HT-RATE ERR\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HT-ZLF ERR\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FALSE-RADAR-EXT ERR\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GREEN-FIELD ERR\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPECTRAL ERR\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 50, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"fops_modal_eeprom\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 39, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 85, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"fops_base_eeprom\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 75, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 183, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"fops_recv\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 173, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 259, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"fops_phy_err\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 249, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 142, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 143, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 144, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 145, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 146, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 147, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 148, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 150, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 151, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 152, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 153, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 154, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 155, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 156, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 157, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 158, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 159, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 160, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 203, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 204, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 205, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 206, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 207, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 208, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 209, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 210, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 212, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 213, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 214, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 215, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 216, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 217, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 218, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 220, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 221, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 222, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 223, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 224, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 225, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 226, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 227, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 229, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 230, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 231, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 232, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 234, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 235, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath9k/common-debug.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 236, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__ksymtab_ath9k_cmn_debug_base_eeprom, ptr @__ksymtab_ath9k_cmn_debug_modal_eeprom, ptr @__ksymtab_ath9k_cmn_debug_phy_err, ptr @__ksymtab_ath9k_cmn_debug_recv, ptr @__ksymtab_ath9k_cmn_debug_stat_rx, ptr @.str, ptr @fops_modal_eeprom, ptr @.str.1, ptr @fops_base_eeprom, ptr @.str.2, ptr @fops_recv, ptr @.str.3, ptr @fops_phy_err, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_modal_eeprom to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_base_eeprom to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_recv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_phy_err to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_debug_modal_eeprom(ptr noundef %debugfs_phy, ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %debugfs_phy, ptr noundef %ah, ptr noundef nonnull @fops_modal_eeprom) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_debug_base_eeprom(ptr noundef %debugfs_phy, ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef %debugfs_phy, ptr noundef %ah, ptr noundef nonnull @fops_base_eeprom) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath9k_cmn_debug_stat_rx(ptr nocapture noundef %rxstats, ptr nocapture noundef readonly %rs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxstats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxstats, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rxstats, align 4
  %rs_datalen = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 1
  %2 = ptrtoint ptr %rs_datalen to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rs_datalen, align 4
  %conv = zext i16 %3 to i32
  %rx_bytes_all = getelementptr inbounds %struct.ath_rx_stats, ptr %rxstats, i32 0, i32 1
  %4 = ptrtoint ptr %rx_bytes_all to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_bytes_all, align 4
  %add = add i32 %5, %conv
  store i32 %add, ptr %rx_bytes_all, align 4
  %rs_status = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 2
  %6 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rs_status, align 2
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %crc_err = getelementptr inbounds %struct.ath_rx_stats, ptr %rxstats, i32 0, i32 2
  %9 = ptrtoint ptr %crc_err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crc_err, align 4
  %inc2 = add i32 %10, 1
  store i32 %inc2, ptr %crc_err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rs_status, align 2
  %13 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %decrypt_crc_err = getelementptr inbounds %struct.ath_rx_stats, ptr %rxstats, i32 0, i32 3
  %14 = ptrtoint ptr %decrypt_crc_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %decrypt_crc_err, align 4
  %inc8 = add i32 %15, 1
  store i32 %inc8, ptr %decrypt_crc_err, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %16 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rs_status, align 2
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not = icmp eq i8 %18, 0
  br i1 %tobool13.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %mic_err = getelementptr inbounds %struct.ath_rx_stats, ptr %rxstats, i32 0, i32 5
  %19 = ptrtoint ptr %mic_err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mic_err, align 4
  %inc15 = add i32 %20, 1
  store i32 %inc15, ptr %mic_err, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %21 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rs_status, align 2
  %23 = and i8 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  br i1 %tobool20.not, label %if.end16.if.end23_crit_edge, label %if.then21

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %pre_delim_crc_err = getelementptr inbounds %struct.ath_rx_stats, ptr %rxstats, i32 0, i32 6
  %24 = ptrtoint ptr %pre_delim_crc_err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pre_delim_crc_err, align 4
  %inc22 = add i32 %25, 1
  store i32 %inc22, ptr %pre_delim_crc_err, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %26 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rs_status, align 2
  %28 = and i8 %27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool27.not = icmp eq i8 %28, 0
  br i1 %tobool27.not, label %if.end23.if.end30_crit_edge, label %if.then28

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %post_delim_crc_err = getelementptr inbounds %struct.ath_rx_stats, ptr %rxstats, i32 0, i32 7
  %29 = ptrtoint ptr %post_delim_crc_err to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %post_delim_crc_err, align 4
  %inc29 = add i32 %30, 1
  store i32 %inc29, ptr %post_delim_crc_err, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end23.if.end30_crit_edge
  %31 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rs_status, align 2
  %33 = and i8 %32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  br i1 %tobool34.not, label %if.end30.if.end37_crit_edge, label %if.then35

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %decrypt_busy_err = getelementptr inbounds %struct.ath_rx_stats, ptr %rxstats, i32 0, i32 8
  %34 = ptrtoint ptr %decrypt_busy_err to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %decrypt_busy_err, align 4
  %inc36 = add i32 %35, 1
  store i32 %inc36, ptr %decrypt_busy_err, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end30.if.end37_crit_edge
  %36 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rs_status, align 2
  %38 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool41.not = icmp eq i8 %38, 0
  br i1 %tobool41.not, label %if.end37.if.end50_crit_edge, label %if.then42

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then42:                                        ; preds = %if.end37
  %phy_err = getelementptr inbounds %struct.ath_rx_stats, ptr %rxstats, i32 0, i32 4
  %39 = ptrtoint ptr %phy_err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phy_err, align 4
  %inc43 = add i32 %40, 1
  store i32 %inc43, ptr %phy_err, align 4
  %rs_phyerr = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 3
  %41 = ptrtoint ptr %rs_phyerr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rs_phyerr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %42)
  %cmp = icmp ult i8 %42, 39
  br i1 %cmp, label %if.then46, label %if.then42.if.end50_crit_edge

if.then42.if.end50_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %conv44 = zext i8 %42 to i32
  %arrayidx = getelementptr %struct.ath_rx_stats, ptr %rxstats, i32 0, i32 9, i32 %conv44
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %inc48 = add i32 %44, 1
  store i32 %inc48, ptr %arrayidx, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.then42.if.end50_crit_edge, %if.end37.if.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_debug_recv(ptr noundef %debugfs_phy, ptr noundef %rxstats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %debugfs_phy, ptr noundef %rxstats, ptr noundef nonnull @fops_recv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_debug_phy_err(ptr noundef %debugfs_phy, ptr noundef %rxstats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %debugfs_phy, ptr noundef %rxstats, ptr noundef nonnull @fops_phy_err) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_modal_eeprom(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 6000) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eep_ops, align 4
  %dump_eeprom = getelementptr inbounds %struct.eeprom_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dump_eeprom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dump_eeprom, align 4
  %call2 = tail call i32 %6(ptr noundef %1, i1 noundef zeroext false, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 6000) #5
  %call3 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %call2) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_base_eeprom(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1500) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eep_ops, align 4
  %dump_eeprom = getelementptr inbounds %struct.eeprom_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dump_eeprom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dump_eeprom, align 4
  %call2 = tail call i32 %6(ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 1500) #5
  %call3 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %call2) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_recv(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1600) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1600, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %4) #5
  %add.ptr4 = getelementptr i8, ptr %call7.i.i, i32 %call2
  %sub5 = sub i32 1600, %call2
  %rx_bytes_all = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %rx_bytes_all to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_bytes_all, align 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %6) #5
  %add7 = add i32 %call6, %call2
  %add.ptr11 = getelementptr i8, ptr %call7.i.i, i32 %add7
  %sub12 = sub i32 1600, %add7
  %rx_beacons = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %rx_beacons to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_beacons, align 4
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %8) #5
  %add14 = add i32 %call13, %add7
  %add.ptr18 = getelementptr i8, ptr %call7.i.i, i32 %add14
  %sub19 = sub i32 1600, %add14
  %rx_frags = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %rx_frags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_frags, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef %10) #5
  %add21 = add i32 %call20, %add14
  %add.ptr25 = getelementptr i8, ptr %call7.i.i, i32 %add21
  %sub26 = sub i32 1600, %add21
  %rx_spectral = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %rx_spectral to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_spectral, align 4
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %12) #5
  %add28 = add i32 %call27, %add21
  %add.ptr32 = getelementptr i8, ptr %call7.i.i, i32 %add28
  %sub33 = sub i32 1600, %add28
  %rx_spectral_sample_good = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %rx_spectral_sample_good to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_spectral_sample_good, align 4
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef %14) #5
  %add35 = add i32 %call34, %add28
  %add.ptr39 = getelementptr i8, ptr %call7.i.i, i32 %add35
  %sub40 = sub i32 1600, %add35
  %rx_spectral_sample_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %rx_spectral_sample_err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_spectral_sample_err, align 4
  %call41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %16) #5
  %add42 = add i32 %call41, %add35
  %add.ptr46 = getelementptr i8, ptr %call7.i.i, i32 %add42
  %sub47 = sub i32 1600, %add42
  %crc_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %crc_err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crc_err, align 4
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef %18) #5
  %add49 = add i32 %call48, %add42
  %add.ptr53 = getelementptr i8, ptr %call7.i.i, i32 %add49
  %sub54 = sub i32 1600, %add49
  %decrypt_crc_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %decrypt_crc_err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %decrypt_crc_err, align 4
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13, i32 noundef %20) #5
  %add56 = add i32 %call55, %add49
  %add.ptr60 = getelementptr i8, ptr %call7.i.i, i32 %add56
  %sub61 = sub i32 1600, %add56
  %phy_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %phy_err to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_err, align 4
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %22) #5
  %add63 = add i32 %call62, %add56
  %add.ptr67 = getelementptr i8, ptr %call7.i.i, i32 %add63
  %sub68 = sub i32 1600, %add63
  %mic_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %mic_err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mic_err, align 4
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr67, i32 noundef %sub68, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %24) #5
  %add70 = add i32 %call69, %add63
  %add.ptr74 = getelementptr i8, ptr %call7.i.i, i32 %add70
  %sub75 = sub i32 1600, %add70
  %pre_delim_crc_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %pre_delim_crc_err to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pre_delim_crc_err, align 4
  %call76 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr74, i32 noundef %sub75, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %26) #5
  %add77 = add i32 %call76, %add70
  %add.ptr81 = getelementptr i8, ptr %call7.i.i, i32 %add77
  %sub82 = sub i32 1600, %add77
  %post_delim_crc_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %post_delim_crc_err to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %post_delim_crc_err, align 4
  %call83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr81, i32 noundef %sub82, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, i32 noundef %28) #5
  %add84 = add i32 %call83, %add77
  %add.ptr88 = getelementptr i8, ptr %call7.i.i, i32 %add84
  %sub89 = sub i32 1600, %add84
  %decrypt_busy_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %decrypt_busy_err to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %decrypt_busy_err, align 4
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18, i32 noundef %30) #5
  %add91 = add i32 %call90, %add84
  %add.ptr95 = getelementptr i8, ptr %call7.i.i, i32 %add91
  %sub96 = sub i32 1600, %add91
  %rx_len_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %rx_len_err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_len_err, align 4
  %call97 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr95, i32 noundef %sub96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, i32 noundef %32) #5
  %add98 = add i32 %call97, %add91
  %add.ptr102 = getelementptr i8, ptr %call7.i.i, i32 %add98
  %sub103 = sub i32 1600, %add98
  %rx_oom_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %rx_oom_err to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_oom_err, align 4
  %call104 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr102, i32 noundef %sub103, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef %34) #5
  %add105 = add i32 %call104, %add98
  %add.ptr109 = getelementptr i8, ptr %call7.i.i, i32 %add105
  %sub110 = sub i32 1600, %add105
  %rx_rate_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %rx_rate_err to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_rate_err, align 4
  %call111 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr109, i32 noundef %sub110, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef %36) #5
  %add112 = add i32 %call111, %add105
  %add.ptr116 = getelementptr i8, ptr %call7.i.i, i32 %add112
  %sub117 = sub i32 1600, %add112
  %rx_too_many_frags_err = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %rx_too_many_frags_err to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_too_many_frags_err, align 4
  %call118 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr116, i32 noundef %sub117, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, i32 noundef %38) #5
  %add119 = add i32 %call118, %add112
  %39 = tail call i32 @llvm.umin.i32(i32 %add119, i32 1600)
  %call125 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %39) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call125, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_phy_err(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1600) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %phy_err_stats = getelementptr inbounds %struct.ath_rx_stats, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %phy_err_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_err_stats, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1600, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %4) #5
  %add.ptr3 = getelementptr i8, ptr %call7.i.i, i32 %call2
  %sub4 = sub i32 1600, %call2
  %arrayidx6 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, i32 noundef %6) #5
  %add8 = add i32 %call7, %call2
  %add.ptr9 = getelementptr i8, ptr %call7.i.i, i32 %add8
  %sub10 = sub i32 1600, %add8
  %arrayidx12 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx12, align 4
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, i32 noundef %8) #5
  %add14 = add i32 %call13, %add8
  %add.ptr15 = getelementptr i8, ptr %call7.i.i, i32 %add14
  %sub16 = sub i32 1600, %add14
  %arrayidx18 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx18, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27, i32 noundef %10) #5
  %add20 = add i32 %call19, %add14
  %add.ptr21 = getelementptr i8, ptr %call7.i.i, i32 %add20
  %sub22 = sub i32 1600, %add20
  %arrayidx24 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 4
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx24, align 4
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i32 noundef %sub22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28, i32 noundef %12) #5
  %add26 = add i32 %call25, %add20
  %add.ptr27 = getelementptr i8, ptr %call7.i.i, i32 %add26
  %sub28 = sub i32 1600, %add26
  %arrayidx30 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 5
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx30, align 4
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29, i32 noundef %14) #5
  %add32 = add i32 %call31, %add26
  %add.ptr33 = getelementptr i8, ptr %call7.i.i, i32 %add32
  %sub34 = sub i32 1600, %add32
  %arrayidx36 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx36, align 4
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.30, i32 noundef %16) #5
  %add38 = add i32 %call37, %add32
  %add.ptr39 = getelementptr i8, ptr %call7.i.i, i32 %add38
  %sub40 = sub i32 1600, %add38
  %arrayidx42 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 7
  %17 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx42, align 4
  %call43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.31, i32 noundef %18) #5
  %add44 = add i32 %call43, %add38
  %add.ptr45 = getelementptr i8, ptr %call7.i.i, i32 %add44
  %sub46 = sub i32 1600, %add44
  %arrayidx48 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 17
  %19 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx48, align 4
  %call49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub46, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.32, i32 noundef %20) #5
  %add50 = add i32 %call49, %add44
  %add.ptr51 = getelementptr i8, ptr %call7.i.i, i32 %add50
  %sub52 = sub i32 1600, %add50
  %arrayidx54 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 18
  %21 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx54, align 4
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr51, i32 noundef %sub52, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.33, i32 noundef %22) #5
  %add56 = add i32 %call55, %add50
  %add.ptr57 = getelementptr i8, ptr %call7.i.i, i32 %add56
  %sub58 = sub i32 1600, %add56
  %arrayidx60 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 19
  %23 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx60, align 4
  %call61 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34, i32 noundef %24) #5
  %add62 = add i32 %call61, %add56
  %add.ptr63 = getelementptr i8, ptr %call7.i.i, i32 %add62
  %sub64 = sub i32 1600, %add62
  %arrayidx66 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 20
  %25 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx66, align 4
  %call67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.35, i32 noundef %26) #5
  %add68 = add i32 %call67, %add62
  %add.ptr69 = getelementptr i8, ptr %call7.i.i, i32 %add68
  %sub70 = sub i32 1600, %add68
  %arrayidx72 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 21
  %27 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx72, align 4
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.36, i32 noundef %28) #5
  %add74 = add i32 %call73, %add68
  %add.ptr75 = getelementptr i8, ptr %call7.i.i, i32 %add74
  %sub76 = sub i32 1600, %add74
  %arrayidx78 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 22
  %29 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx78, align 4
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr75, i32 noundef %sub76, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.37, i32 noundef %30) #5
  %add80 = add i32 %call79, %add74
  %add.ptr81 = getelementptr i8, ptr %call7.i.i, i32 %add80
  %sub82 = sub i32 1600, %add80
  %arrayidx84 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 23
  %31 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx84, align 4
  %call85 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr81, i32 noundef %sub82, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.38, i32 noundef %32) #5
  %add86 = add i32 %call85, %add80
  %add.ptr87 = getelementptr i8, ptr %call7.i.i, i32 %add86
  %sub88 = sub i32 1600, %add86
  %arrayidx90 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 24
  %33 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx90, align 4
  %call91 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr87, i32 noundef %sub88, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.39, i32 noundef %34) #5
  %add92 = add i32 %call91, %add86
  %add.ptr93 = getelementptr i8, ptr %call7.i.i, i32 %add92
  %sub94 = sub i32 1600, %add92
  %arrayidx96 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 25
  %35 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx96, align 4
  %call97 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr93, i32 noundef %sub94, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.40, i32 noundef %36) #5
  %add98 = add i32 %call97, %add92
  %add.ptr99 = getelementptr i8, ptr %call7.i.i, i32 %add98
  %sub100 = sub i32 1600, %add98
  %arrayidx102 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 26
  %37 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx102, align 4
  %call103 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr99, i32 noundef %sub100, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.41, i32 noundef %38) #5
  %add104 = add i32 %call103, %add98
  %add.ptr105 = getelementptr i8, ptr %call7.i.i, i32 %add104
  %sub106 = sub i32 1600, %add104
  %arrayidx108 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 27
  %39 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx108, align 4
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105, i32 noundef %sub106, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.42, i32 noundef %40) #5
  %add110 = add i32 %call109, %add104
  %add.ptr111 = getelementptr i8, ptr %call7.i.i, i32 %add110
  %sub112 = sub i32 1600, %add110
  %arrayidx114 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 28
  %41 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx114, align 4
  %call115 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr111, i32 noundef %sub112, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.43, i32 noundef %42) #5
  %add116 = add i32 %call115, %add110
  %add.ptr117 = getelementptr i8, ptr %call7.i.i, i32 %add116
  %sub118 = sub i32 1600, %add116
  %arrayidx120 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 29
  %43 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx120, align 4
  %call121 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr117, i32 noundef %sub118, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.44, i32 noundef %44) #5
  %add122 = add i32 %call121, %add116
  %add.ptr123 = getelementptr i8, ptr %call7.i.i, i32 %add122
  %sub124 = sub i32 1600, %add122
  %arrayidx126 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 30
  %45 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx126, align 4
  %call127 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr123, i32 noundef %sub124, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.45, i32 noundef %46) #5
  %add128 = add i32 %call127, %add122
  %add.ptr129 = getelementptr i8, ptr %call7.i.i, i32 %add128
  %sub130 = sub i32 1600, %add128
  %arrayidx132 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 31
  %47 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx132, align 4
  %call133 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr129, i32 noundef %sub130, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.46, i32 noundef %48) #5
  %add134 = add i32 %call133, %add128
  %add.ptr135 = getelementptr i8, ptr %call7.i.i, i32 %add134
  %sub136 = sub i32 1600, %add134
  %arrayidx138 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 32
  %49 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx138, align 4
  %call139 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr135, i32 noundef %sub136, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.47, i32 noundef %50) #5
  %add140 = add i32 %call139, %add134
  %add.ptr141 = getelementptr i8, ptr %call7.i.i, i32 %add140
  %sub142 = sub i32 1600, %add140
  %arrayidx144 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 33
  %51 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx144, align 4
  %call145 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr141, i32 noundef %sub142, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.48, i32 noundef %52) #5
  %add146 = add i32 %call145, %add140
  %add.ptr147 = getelementptr i8, ptr %call7.i.i, i32 %add146
  %sub148 = sub i32 1600, %add146
  %arrayidx150 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 34
  %53 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx150, align 4
  %call151 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr147, i32 noundef %sub148, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.49, i32 noundef %54) #5
  %add152 = add i32 %call151, %add146
  %add.ptr153 = getelementptr i8, ptr %call7.i.i, i32 %add152
  %sub154 = sub i32 1600, %add152
  %arrayidx156 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 35
  %55 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx156, align 4
  %call157 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr153, i32 noundef %sub154, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.50, i32 noundef %56) #5
  %add158 = add i32 %call157, %add152
  %add.ptr159 = getelementptr i8, ptr %call7.i.i, i32 %add158
  %sub160 = sub i32 1600, %add158
  %arrayidx162 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 36
  %57 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx162, align 4
  %call163 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr159, i32 noundef %sub160, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.51, i32 noundef %58) #5
  %add164 = add i32 %call163, %add158
  %add.ptr165 = getelementptr i8, ptr %call7.i.i, i32 %add164
  %sub166 = sub i32 1600, %add164
  %arrayidx168 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 37
  %59 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx168, align 4
  %call169 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr165, i32 noundef %sub166, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.52, i32 noundef %60) #5
  %add170 = add i32 %call169, %add164
  %add.ptr171 = getelementptr i8, ptr %call7.i.i, i32 %add170
  %sub172 = sub i32 1600, %add170
  %arrayidx174 = getelementptr %struct.ath_rx_stats, ptr %1, i32 0, i32 9, i32 38
  %61 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx174, align 4
  %call175 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr171, i32 noundef %sub172, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.53, i32 noundef %62) #5
  %add176 = add i32 %call175, %add170
  %63 = tail call i32 @llvm.umin.i32(i32 %add176, i32 1600)
  %call180 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %63) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call180, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 50, i32 22}
!2 = !{ptr @__ksymtab_ath9k_cmn_debug_modal_eeprom, !3, !"__ksymtab_ath9k_cmn_debug_modal_eeprom", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 53, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 85, i32 22}
!6 = !{ptr @__ksymtab_ath9k_cmn_debug_base_eeprom, !7, !"__ksymtab_ath9k_cmn_debug_base_eeprom", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 88, i32 1}
!8 = !{ptr @__ksymtab_ath9k_cmn_debug_stat_rx, !9, !"__ksymtab_ath9k_cmn_debug_stat_rx", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 121, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 183, i32 22}
!12 = !{ptr @__ksymtab_ath9k_cmn_debug_recv, !13, !"__ksymtab_ath9k_cmn_debug_recv", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 185, i32 1}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 259, i32 22}
!16 = !{ptr @__ksymtab_ath9k_cmn_debug_phy_err, !17, !"__ksymtab_ath9k_cmn_debug_phy_err", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 262, i32 1}
!18 = !{ptr @fops_modal_eeprom, !19, !"fops_modal_eeprom", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 39, i32 37}
!20 = !{ptr @fops_base_eeprom, !21, !"fops_base_eeprom", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 75, i32 37}
!22 = !{ptr @fops_recv, !23, !"fops_recv", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 173, i32 37}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 142, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 143, i32 2}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 144, i32 2}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 145, i32 2}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 146, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 147, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 148, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 150, i32 2}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 151, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 152, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 153, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 154, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 155, i32 2}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 156, i32 2}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 157, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 158, i32 2}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 159, i32 2}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 160, i32 2}
!61 = !{ptr @fops_phy_err, !62, !"fops_phy_err", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 249, i32 37}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 203, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 204, i32 2}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 205, i32 2}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 206, i32 2}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 207, i32 2}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 208, i32 2}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 209, i32 2}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 210, i32 2}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 212, i32 2}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 213, i32 2}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 214, i32 2}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 215, i32 2}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 216, i32 2}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 217, i32 2}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 218, i32 2}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 220, i32 2}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 221, i32 2}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 222, i32 2}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 223, i32 2}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 224, i32 2}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 225, i32 2}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 226, i32 2}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 227, i32 2}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 229, i32 2}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 230, i32 2}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 231, i32 2}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 232, i32 2}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 234, i32 2}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 235, i32 2}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath9k/common-debug.c", i32 236, i32 2}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
