; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.ath9k_platform_data = type { ptr, [2048 x i16], ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, i8 }
%struct.ath_bus_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.chan_centers = type { i16, i16, i16 }
%struct.cal_data_per_freq_4k = type { [2 x [5 x i8]], [2 x [5 x i8]] }
%struct.cal_data_per_freq_ar9287 = type { [4 x [1 x i8]], [4 x [1 x i8]] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to read eeprom region at offset %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reading Magic # failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"EEPROM needs byte-swapping to correct endianness.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Ignoring invalid EEPROM magic (0x%04x).\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid EEPROM magic (0x%04x).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Ignoring endianness difference in EEPROM magic bytes.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Big Endian EEPROM detected according to EEPMISC register.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad EEPROM checksum 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Bad EEPROM VER 0x%04x or REV 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid chainmask configuration\0A\00", [63 x i8] zeroinitializer }, align 32
@ath9k_hw_get_gain_boundaries_pdadcs.vpdTableL = internal global { [4 x [64 x i8]], [64 x i8] } zeroinitializer, align 32
@ath9k_hw_get_gain_boundaries_pdadcs.vpdTableR = internal global { [4 x [64 x i8]], [64 x i8] } zeroinitializer, align 32
@ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI = internal global { [4 x [64 x i8]], [64 x i8] } zeroinitializer, align 32
@eep_ar9300_ops = external dso_local constant %struct.eeprom_ops, align 4
@eep_ar9287_ops = external dso_local constant %struct.eeprom_ops, align 4
@eep_4k_ops = external dso_local constant %struct.eeprom_ops, align 4
@eep_def_ops = external dso_local constant %struct.eeprom_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 192, i64 320]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 192, i64 320]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 192, i64 320]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 192, i64 320, i64 384]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 162, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 177, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 183, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 187, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 191, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 199, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 211, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 230, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 243, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 459, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"vpdTableL\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 475, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"vpdTableR\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 477, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"vpdTableI\00", align 1
@___asan_gen_.64 = private constant [43 x i8] c"../drivers/net/wireless/ath/ath9k/eeprom.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 479, i32 12 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableL, ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableR, ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableL to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableR to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_analog_shift_regwrite(ptr noundef %ah, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef %val, i32 noundef %reg) #9
  %analog_shiftreg = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %analog_shiftreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %analog_shiftreg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef %reg, i32 noundef %mask, i32 noundef %shift, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %shl = shl i32 %val, %shift
  %and = and i32 %shl, %mask
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef %reg, i32 noundef %and, i32 noundef %mask) #9
  %analog_shiftreg = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %analog_shiftreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %analog_shiftreg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i16 @ath9k_hw_interpolate(i16 noundef zeroext %target, i16 noundef zeroext %srcLeft, i16 noundef zeroext %srcRight, i16 noundef signext %targetLeft, i16 noundef signext %targetRight) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp2(i16 %srcRight, i16 %srcLeft)
  %cmp = icmp eq i16 %srcRight, %srcLeft
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1 = zext i16 %srcLeft to i32
  %conv = zext i16 %srcRight to i32
  %conv3 = zext i16 %target to i32
  %sub = sub nsw i32 %conv3, %conv1
  %conv5 = sext i16 %targetRight to i32
  %mul = mul nsw i32 %sub, %conv5
  %sub8 = sub nsw i32 %conv, %conv3
  %conv9 = sext i16 %targetLeft to i32
  %mul10 = mul nsw i32 %sub8, %conv9
  %add = add i32 %mul, %mul10
  %sub13 = sub nsw i32 %conv, %conv1
  %div = sdiv i32 %add, %sub13
  %conv14 = trunc i32 %div to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %rv.0 = phi i16 [ %conv14, %if.else ], [ %targetLeft, %entry.if.end_crit_edge ]
  ret i16 %rv.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_hw_get_lower_upper_index(i8 noundef zeroext %target, ptr nocapture noundef readonly %pList, i16 noundef zeroext %listSize, ptr nocapture noundef writeonly %indexL, ptr nocapture noundef writeonly %indexR) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pList to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pList, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %target)
  %cmp.not = icmp ult i8 %1, %target
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %indexR to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %indexR, align 2
  %3 = ptrtoint ptr %indexL to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %indexL, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv4 = zext i16 %listSize to i32
  %sub = add nsw i32 %conv4, -1
  %arrayidx5 = getelementptr i8, ptr %pList, i32 %sub
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %target)
  %cmp7.not = icmp ugt i8 %5, %target
  br i1 %cmp7.not, label %for.cond.preheader, label %if.then9

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %listSize)
  %cmp1759 = icmp ugt i16 %listSize, 1
  br i1 %cmp1759, label %for.body.preheader, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %6 = trunc i32 %sub to i16
  br label %for.body

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv12 = trunc i32 %sub to i16
  %7 = ptrtoint ptr %indexR to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv12, ptr %indexR, align 2
  %8 = ptrtoint ptr %indexL to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv12, ptr %indexL, align 2
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %conv1461 = phi i32 [ %conv14, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.060 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx19 = getelementptr i8, ptr %pList, i32 %conv1461
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %target)
  %cmp22 = icmp eq i8 %10, %target
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %indexR to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %i.060, ptr %indexR, align 2
  %12 = ptrtoint ptr %indexL to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %i.060, ptr %indexL, align 2
  br label %cleanup

if.end25:                                         ; preds = %for.body
  %add = add nuw nsw i32 %conv1461, 1
  %arrayidx28 = getelementptr i8, ptr %pList, i32 %add
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %target)
  %cmp30 = icmp ugt i8 %14, %target
  br i1 %cmp30, label %if.then32, label %for.inc

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %indexL to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %i.060, ptr %indexL, align 2
  %conv35 = trunc i32 %add to i16
  %16 = ptrtoint ptr %indexR to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv35, ptr %indexR, align 2
  br label %cleanup

for.inc:                                          ; preds = %if.end25
  %inc = add nuw i16 %i.060, 1
  %conv14 = zext i16 %inc to i32
  %cmp17 = icmp ult i16 %inc, %6
  br i1 %cmp17, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then32, %if.then24, %if.then9, %for.cond.preheader.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %if.then9 ], [ true, %if.then24 ], [ false, %if.then32 ], [ false, %for.cond.preheader.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_usb_gen_fill_eeprom(ptr noundef %ah, ptr nocapture noundef writeonly %eep_data, i32 noundef %eep_start_loc, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %addrdata = alloca [8 x i32], align 4
  %data = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %addrdata) #9
  %0 = call ptr @memset(ptr %addrdata, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #9
  %1 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp55 = icmp sgt i32 %size, 0
  %8 = call ptr @memset(ptr %data, i32 255, i32 32)
  br i1 %cmp55, label %for.body.lr.ph, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.body.lr.ph:                                   ; preds = %entry
  %multi_read = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc11.for.body_crit_edge, %for.body.lr.ph
  %addr.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %for.inc11.for.body_crit_edge ]
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc11.for.body_crit_edge ]
  %eep_data.addr.056 = phi ptr [ %eep_data, %for.body.lr.ph ], [ %eep_data.addr.2, %for.inc11.for.body_crit_edge ]
  %add = add i32 %addr.058, %eep_start_loc
  %shl = shl i32 %add, 2
  %add1 = add i32 %shl, 8192
  %arrayidx = getelementptr [8 x i32], ptr %addrdata, i32 0, i32 %i.057
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add1, ptr %arrayidx, align 4
  %inc = add i32 %i.057, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp2 = icmp eq i32 %inc, 8
  br i1 %cmp2, label %if.then, label %for.body.for.inc11_crit_edge

for.body.for.inc11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc11

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %multi_read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %multi_read, align 4
  call void %11(ptr noundef %ah, ptr noundef nonnull %addrdata, ptr noundef nonnull %data, i16 noundef zeroext 8) #9
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %conv9 = trunc i32 %13 to i16
  %14 = ptrtoint ptr %eep_data.addr.056 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv9, ptr %eep_data.addr.056, align 2
  %incdec.ptr = getelementptr i16, ptr %eep_data.addr.056, i32 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %conv9.1 = trunc i32 %16 to i16
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv9.1, ptr %incdec.ptr, align 2
  %incdec.ptr.1 = getelementptr i16, ptr %eep_data.addr.056, i32 2
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %conv9.2 = trunc i32 %19 to i16
  %20 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv9.2, ptr %incdec.ptr.1, align 2
  %incdec.ptr.2 = getelementptr i16, ptr %eep_data.addr.056, i32 3
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  %conv9.3 = trunc i32 %22 to i16
  %23 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv9.3, ptr %incdec.ptr.2, align 2
  %incdec.ptr.3 = getelementptr i16, ptr %eep_data.addr.056, i32 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  %conv9.4 = trunc i32 %25 to i16
  %26 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv9.4, ptr %incdec.ptr.3, align 2
  %incdec.ptr.4 = getelementptr i16, ptr %eep_data.addr.056, i32 5
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  %conv9.5 = trunc i32 %28 to i16
  %29 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv9.5, ptr %incdec.ptr.4, align 2
  %incdec.ptr.5 = getelementptr i16, ptr %eep_data.addr.056, i32 6
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %6, align 4
  %conv9.6 = trunc i32 %31 to i16
  %32 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv9.6, ptr %incdec.ptr.5, align 2
  %incdec.ptr.6 = getelementptr i16, ptr %eep_data.addr.056, i32 7
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %7, align 4
  %conv9.7 = trunc i32 %34 to i16
  %35 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv9.7, ptr %incdec.ptr.6, align 2
  %incdec.ptr.7 = getelementptr i16, ptr %eep_data.addr.056, i32 8
  br label %for.inc11

for.inc11:                                        ; preds = %if.then, %for.body.for.inc11_crit_edge
  %eep_data.addr.2 = phi ptr [ %eep_data.addr.056, %for.body.for.inc11_crit_edge ], [ %incdec.ptr.7, %if.then ]
  %i.1 = phi i32 [ %inc, %for.body.for.inc11_crit_edge ], [ 0, %if.then ]
  %inc12 = add nuw nsw i32 %addr.058, 1
  %exitcond.not = icmp eq i32 %inc12, %size
  br i1 %exitcond.not, label %for.end13, label %for.inc11.for.body_crit_edge

for.inc11.for.body_crit_edge:                     ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end13:                                        ; preds = %for.inc11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp14.not = icmp eq i32 %i.1, 0
  br i1 %cmp14.not, label %for.end13.if.end32_crit_edge, label %if.then16

for.end13.if.end32_crit_edge:                     ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then16:                                        ; preds = %for.end13
  %multi_read18 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 1
  %36 = ptrtoint ptr %multi_read18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %multi_read18, align 4
  %conv21 = trunc i32 %i.1 to i16
  call void %37(ptr noundef %ah, ptr noundef nonnull %addrdata, ptr noundef nonnull %data, i16 noundef zeroext %conv21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp2360 = icmp sgt i32 %i.1, 0
  br i1 %cmp2360, label %if.then16.for.body25_crit_edge, label %if.then16.if.end32_crit_edge

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then16.for.body25_crit_edge:                   ; preds = %if.then16
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %if.then16.for.body25_crit_edge
  %j.162 = phi i32 [ %inc30, %for.body25.for.body25_crit_edge ], [ 0, %if.then16.for.body25_crit_edge ]
  %eep_data.addr.361 = phi ptr [ %incdec.ptr28, %for.body25.for.body25_crit_edge ], [ %eep_data.addr.2, %if.then16.for.body25_crit_edge ]
  %arrayidx26 = getelementptr [8 x i32], ptr %data, i32 0, i32 %j.162
  %38 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx26, align 4
  %conv27 = trunc i32 %39 to i16
  %40 = ptrtoint ptr %eep_data.addr.361 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv27, ptr %eep_data.addr.361, align 2
  %incdec.ptr28 = getelementptr i16, ptr %eep_data.addr.361, i32 1
  %inc30 = add nuw nsw i32 %j.162, 1
  %exitcond63.not = icmp eq i32 %inc30, %i.1
  br i1 %exitcond63.not, label %for.body25.if.end32_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25

for.body25.if.end32_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end32:                                         ; preds = %for.body25.if.end32_crit_edge, %if.then16.if.end32_crit_edge, %for.end13.if.end32_crit_edge, %entry.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %addrdata) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef %off, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %dev = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %nvmem_blob = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 134
  %4 = ptrtoint ptr %nvmem_blob to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvmem_blob, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %nvmem_blob_len.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 135
  %6 = ptrtoint ptr %nvmem_blob_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nvmem_blob_len.i, align 4
  %div2.i = lshr i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.i, i32 %off)
  %cmp.not.i.i = icmp ugt i32 %div2.i, %off
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 %off
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.i, align 2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %data, align 2
  br label %if.end23

if.else:                                          ; preds = %entry
  %eeprom_blob = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 133
  %11 = ptrtoint ptr %eeprom_blob to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eeprom_blob, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %if.else7, label %if.then3

if.then3:                                         ; preds = %if.else
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %div3.i = lshr i32 %14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %off)
  %cmp.not.i.i44 = icmp ugt i32 %div3.i, %off
  br i1 %cmp.not.i.i44, label %if.end.i.i46, label %if.then3.do.body_crit_edge

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i.i46:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %data1.i = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data1.i, align 4
  %arrayidx.i.i45 = getelementptr i16, ptr %16, i32 %off
  %17 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i45, align 2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %data, align 2
  br label %if.end23

if.else7:                                         ; preds = %if.else
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.else7.if.end17_crit_edge, label %land.lhs.true

if.else7.if.end17_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.else7
  %use_eeprom = getelementptr inbounds %struct.ath9k_platform_data, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %use_eeprom to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_eeprom, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not = icmp eq i8 %21, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %off)
  %cmp.not.i.i47 = icmp ult i32 %off, 2048
  br i1 %cmp.not.i.i47, label %if.end.i.i49, label %if.then10.do.body_crit_edge

if.then10.do.body_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i.i49:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %eeprom_data.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %3, i32 0, i32 1
  %arrayidx.i.i48 = getelementptr i16, ptr %eeprom_data.i, i32 %off
  %22 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i48, align 2
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %data, align 2
  br label %if.end23

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.else7.if.end17_crit_edge
  %bus_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  %25 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus_ops, align 4
  %eeprom_read = getelementptr inbounds %struct.ath_bus_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %eeprom_read to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eeprom_read, align 4
  %call14 = tail call zeroext i1 %28(ptr noundef %common.i, i32 noundef %off, ptr noundef %data) #9
  br i1 %call14, label %if.end17.if.end23_crit_edge, label %if.end17.do.body_crit_edge

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %if.then10.do.body_crit_edge, %if.then3.do.body_crit_edge, %if.then.do.body_crit_edge
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_mask, align 4
  %and = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.body.if.end23_crit_edge, label %if.then21

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %off) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body.if.end23_crit_edge, %if.end17.if.end23_crit_edge, %if.end.i.i49, %if.end.i.i46, %if.end.i.i
  %ret.0.in51 = phi i1 [ false, %do.body.if.end23_crit_edge ], [ false, %if.then21 ], [ true, %if.end17.if.end23_crit_edge ], [ true, %if.end.i.i49 ], [ true, %if.end.i.i46 ], [ true, %if.end.i.i ]
  ret i1 %ret.0.in51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_hw_nvram_swap_data(ptr noundef %ah, ptr nocapture noundef writeonly %swap_needed, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %magic = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %magic) #9
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %magic, align 2, !annotation !39
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %nvmem_blob.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 134
  %5 = ptrtoint ptr %nvmem_blob.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nvmem_blob.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %nvmem_blob_len.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 135
  %7 = ptrtoint ptr %nvmem_blob_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nvmem_blob_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not.i.i.i.not = icmp ult i32 %8, 2
  br i1 %cmp.not.i.i.i.not, label %if.then.i.do.body.i_crit_edge, label %if.end.i.i.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %6, align 2
  %11 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %magic, align 2
  br label %if.end

if.else.i:                                        ; preds = %entry
  %eeprom_blob.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 133
  %12 = ptrtoint ptr %eeprom_blob.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eeprom_blob.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i.i44.i.not = icmp ult i32 %15, 2
  br i1 %cmp.not.i.i44.i.not, label %if.then3.i.do.body.i_crit_edge, label %if.end.i.i46.i

if.then3.i.do.body.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i.i46.i:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %data1.i.i = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data1.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  %20 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %magic, align 2
  br label %if.end

if.else7.i:                                       ; preds = %if.else.i
  %tobool8.not.i = icmp eq ptr %4, null
  br i1 %tobool8.not.i, label %if.else7.i.if.end17.i_crit_edge, label %land.lhs.true.i

if.else7.i.if.end17.i_crit_edge:                  ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.else7.i
  %use_eeprom.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %4, i32 0, i32 17
  %21 = ptrtoint ptr %use_eeprom.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_eeprom.i, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool9.not.i = icmp eq i8 %22, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %eeprom_data.i.i = getelementptr inbounds %struct.ath9k_platform_data, ptr %4, i32 0, i32 1
  %23 = ptrtoint ptr %eeprom_data.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %eeprom_data.i.i, align 2
  %25 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %magic, align 2
  br label %if.end

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %if.else7.i.if.end17.i_crit_edge
  %bus_ops.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  %26 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i = getelementptr inbounds %struct.ath_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %eeprom_read.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eeprom_read.i, align 4
  %call14.i = call zeroext i1 %29(ptr noundef %common.i, i32 noundef 0, ptr noundef nonnull %magic) #9
  br i1 %call14.i, label %if.endthread-pre-split, label %if.end17.i.do.body.i_crit_edge

if.end17.i.do.body.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.end17.i.do.body.i_crit_edge, %if.then3.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %do.body.i.if.then_crit_edge, label %if.then21.i

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then21.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef 0) #9
  br label %if.then

if.then:                                          ; preds = %if.then21.i, %do.body.i.if.then_crit_edge
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.endthread-pre-split:                           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %32)
  %.pr = load i16, ptr %magic, align 2
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then10.i, %if.end.i.i46.i, %if.end.i.i.i
  %33 = phi i16 [ %.pr, %if.endthread-pre-split ], [ %24, %if.then10.i ], [ %19, %if.end.i.i46.i ], [ %10, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23206, i16 %33)
  %cmp = icmp eq i16 %33, -23206
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug_mask, align 4
  %and = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3.if.then28_crit_edge, label %if.then4

if.then3.if.then28_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4) #9
  br label %if.then28

if.else:                                          ; preds = %if.end
  %conv6 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 23205, i16 %33)
  %cmp7.not = icmp eq i16 %33, 23205
  br i1 %cmp7.not, label %if.else.if.end38_crit_edge, label %if.then9

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then9:                                         ; preds = %if.else
  %ah_flags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 24
  %36 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ah_flags, align 4
  %and10 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body13, label %if.else22

do.body13:                                        ; preds = %if.then9
  %debug_mask14 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %debug_mask14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug_mask14, align 4
  %and15 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body13.if.end38_crit_edge, label %if.then17

do.body13.if.end38_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %conv6) #9
  br label %if.end38

if.else22:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %conv6) #9
  br label %cleanup

if.then28:                                        ; preds = %if.then4, %if.then3.if.then28_crit_edge
  %ah_flags29 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 24
  %40 = ptrtoint ptr %ah_flags29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ah_flags29, align 4
  %and30 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.7, ptr noundef %common.i, ptr noundef nonnull @.str.8) #9
  br label %if.end38

if.else33:                                        ; preds = %if.then28
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp3481 = icmp sgt i32 %size, 0
  br i1 %cmp3481, label %if.else33.for.body_crit_edge, label %if.else33.if.end38_crit_edge

if.else33.if.end38_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.else33.for.body_crit_edge:                     ; preds = %if.else33
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else33.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.else33.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %eeprom, i32 %i.082
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx, align 2
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.if.end38_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end38:                                         ; preds = %for.body.if.end38_crit_edge, %if.else33.if.end38_crit_edge, %if.then32, %if.then17, %do.body13.if.end38_crit_edge, %if.else.if.end38_crit_edge
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %46 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %eep_ops, align 4
  %get_eepmisc = getelementptr inbounds %struct.eeprom_ops, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %get_eepmisc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_eepmisc, align 4
  %call39 = call zeroext i8 %49(ptr noundef %ah) #9
  %50 = and i8 %call39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool42.not = icmp eq i8 %50, 0
  br i1 %tobool42.not, label %if.else52, label %if.then43

if.then43:                                        ; preds = %if.end38
  %51 = ptrtoint ptr %swap_needed to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %swap_needed, align 1
  %debug_mask45 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %debug_mask45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_mask45, align 4
  %and46 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then43.cleanup_crit_edge, label %if.then48

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.else52:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %swap_needed to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %swap_needed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else52, %if.then48, %if.then43.cleanup_crit_edge, %if.else22, %if.then
  %retval.0 = phi i32 [ -22, %if.else22 ], [ -5, %if.then ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %if.else52 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %magic) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_hw_nvram_validate_checksum(ptr noundef %ah, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp11.not = icmp eq i32 %size, 0
  br i1 %cmp11.not, label %entry.if.then_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %sum.013 = phi i32 [ %xor, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %eeprom, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %xor = xor i32 %sum.013, %conv
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %xor)
  %cmp1.not = icmp eq i32 %xor, 65535
  br i1 %cmp1.not, label %for.end.cleanup_crit_edge, label %for.end.if.then_crit_edge

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %for.end.if.then_crit_edge, %entry.if.then_crit_edge
  %sum.0.lcssa16 = phi i32 [ %xor, %for.end.if.then_crit_edge ], [ 0, %entry.if.then_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef %sum.0.lcssa16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.end.cleanup_crit_edge
  %cmp1.not18 = phi i1 [ true, %for.end.cleanup_crit_edge ], [ false, %if.then ]
  ret i1 %cmp1.not18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_hw_nvram_check_version(ptr noundef %ah, i32 noundef %version, i32 noundef %minrev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %0 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eep_ops, align 4
  %get_eeprom_ver = getelementptr inbounds %struct.eeprom_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %get_eeprom_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_eeprom_ver, align 4
  %call1 = tail call i32 %3(ptr noundef %ah) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %version)
  %cmp.not = icmp eq i32 %call1, %version
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eep_ops, align 4
  %get_eeprom_rev = getelementptr inbounds %struct.eeprom_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %get_eeprom_rev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_eeprom_rev, align 4
  %call3 = tail call i32 %7(ptr noundef %ah) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %minrev)
  %cmp4 = icmp slt i32 %call3, %minrev
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eep_ops, align 4
  %get_eeprom_ver6 = getelementptr inbounds %struct.eeprom_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %get_eeprom_ver6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_eeprom_ver6, align 4
  %call7 = tail call i32 %11(ptr noundef %ah) #9
  %12 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eep_ops, align 4
  %get_eeprom_rev9 = getelementptr inbounds %struct.eeprom_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %get_eeprom_rev9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_eeprom_rev9, align 4
  %call10 = tail call i32 %15(ptr noundef %ah) #9
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.11, i32 noundef %call7, i32 noundef %call10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then ], [ true, %lor.lhs.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_fill_vpd_table(i8 noundef zeroext %pwrMin, i8 noundef zeroext %pwrMax, ptr nocapture noundef readonly %pPwrList, ptr nocapture noundef readonly %pVpdList, i16 noundef zeroext %numIntercepts, ptr nocapture noundef writeonly %pRetVpdList) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = zext i8 %pwrMax to i16
  %conv2 = zext i8 %pwrMin to i16
  %sub = sub nsw i16 %conv1, %conv2
  %div84 = sdiv i16 %sub, 2
  %div.sext = sext i16 %div84 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %sub)
  %cmp.not86 = icmp slt i16 %sub, -1
  br i1 %cmp.not86, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv4.i = zext i16 %numIntercepts to i32
  %sub.i = add nsw i32 %conv4.i, -1
  %arrayidx5.i = getelementptr i8, ptr %pPwrList, i32 %sub.i
  %conv12.i = trunc i32 %sub.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %numIntercepts)
  %cmp1759.i = icmp ult i16 %numIntercepts, 2
  %sub14 = add i16 %numIntercepts, -2
  %wide.trip.count = and i32 %sub.i, 65535
  br label %for.body

for.body:                                         ; preds = %if.end53.for.body_crit_edge, %for.body.lr.ph
  %conv95 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %if.end53.for.body_crit_edge ]
  %currPwr.090 = phi i8 [ %pwrMin, %for.body.lr.ph ], [ %add58, %if.end53.for.body_crit_edge ]
  %i.089 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %if.end53.for.body_crit_edge ]
  %idxR.088 = phi i16 [ 0, %for.body.lr.ph ], [ %idxR.2, %if.end53.for.body_crit_edge ]
  %idxL.087 = phi i16 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end53.for.body_crit_edge ]
  %0 = ptrtoint ptr %pPwrList to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pPwrList, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %currPwr.090)
  %cmp.not.i = icmp ult i8 %1, %currPwr.090
  br i1 %cmp.not.i, label %if.end.i, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %currPwr.090)
  %cmp7.not.i = icmp ule i8 %3, %currPwr.090
  %brmerge = or i1 %cmp7.not.i, %cmp1759.i
  %conv12.i.mux = select i1 %cmp7.not.i, i16 %conv12.i, i16 %idxL.087
  %conv12.i.mux96 = select i1 %cmp7.not.i, i16 %conv12.i, i16 %idxR.088
  br i1 %brmerge, label %if.end.i.ath9k_hw_get_lower_upper_index.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.ath9k_hw_get_lower_upper_index.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_hw_get_lower_upper_index.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %indvars.iv = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx19.i = getelementptr i8, ptr %pPwrList, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %currPwr.090)
  %cmp22.i = icmp eq i8 %5, %currPwr.090
  br i1 %cmp22.i, label %ath9k_hw_get_lower_upper_index.exit.loopexit.split.loop.exit99, label %if.end25.i

if.end25.i:                                       ; preds = %for.body.i
  %add.i = add nuw nsw i32 %indvars.iv, 1
  %arrayidx28.i = getelementptr i8, ptr %pPwrList, i32 %add.i
  %6 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %currPwr.090)
  %cmp30.i = icmp ugt i8 %7, %currPwr.090
  br i1 %cmp30.i, label %if.then32.i, label %for.inc.i

if.then32.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = trunc i32 %indvars.iv to i16
  %conv35.i = trunc i32 %add.i to i16
  br label %ath9k_hw_get_lower_upper_index.exit

for.inc.i:                                        ; preds = %if.end25.i
  %exitcond.not = icmp eq i32 %add.i, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_hw_get_lower_upper_index.exit

ath9k_hw_get_lower_upper_index.exit.loopexit.split.loop.exit99: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = trunc i32 %indvars.iv to i16
  br label %ath9k_hw_get_lower_upper_index.exit

ath9k_hw_get_lower_upper_index.exit:              ; preds = %ath9k_hw_get_lower_upper_index.exit.loopexit.split.loop.exit99, %for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge, %if.then32.i, %if.end.i.ath9k_hw_get_lower_upper_index.exit_crit_edge
  %idxL.1 = phi i16 [ %8, %if.then32.i ], [ %conv12.i.mux, %if.end.i.ath9k_hw_get_lower_upper_index.exit_crit_edge ], [ %9, %ath9k_hw_get_lower_upper_index.exit.loopexit.split.loop.exit99 ], [ %idxL.087, %for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge ]
  %idxR.1 = phi i16 [ %conv35.i, %if.then32.i ], [ %conv12.i.mux96, %if.end.i.ath9k_hw_get_lower_upper_index.exit_crit_edge ], [ %9, %ath9k_hw_get_lower_upper_index.exit.loopexit.split.loop.exit99 ], [ %idxR.088, %for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %idxR.1)
  %cmp5 = icmp eq i16 %idxR.1, 0
  br i1 %cmp5, label %ath9k_hw_get_lower_upper_index.exit.if.then_crit_edge, label %ath9k_hw_get_lower_upper_index.exit.if.end_crit_edge

ath9k_hw_get_lower_upper_index.exit.if.end_crit_edge: ; preds = %ath9k_hw_get_lower_upper_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

ath9k_hw_get_lower_upper_index.exit.if.then_crit_edge: ; preds = %ath9k_hw_get_lower_upper_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ath9k_hw_get_lower_upper_index.exit.if.then_crit_edge, %for.body.if.then_crit_edge
  %idxL.183 = phi i16 [ %idxL.1, %ath9k_hw_get_lower_upper_index.exit.if.then_crit_edge ], [ 0, %for.body.if.then_crit_edge ]
  br label %if.end

if.end:                                           ; preds = %if.then, %ath9k_hw_get_lower_upper_index.exit.if.end_crit_edge
  %idxL.182 = phi i16 [ %idxL.183, %if.then ], [ %idxL.1, %ath9k_hw_get_lower_upper_index.exit.if.end_crit_edge ]
  %idxR.2 = phi i16 [ 1, %if.then ], [ %idxR.1, %ath9k_hw_get_lower_upper_index.exit.if.end_crit_edge ]
  %conv7 = zext i16 %idxL.182 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv7)
  %cmp10 = icmp eq i32 %sub.i, %conv7
  %spec.select = select i1 %cmp10, i16 %sub14, i16 %idxL.182
  %idxprom = zext i16 %spec.select to i32
  %arrayidx = getelementptr i8, ptr %pPwrList, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %idxprom18 = zext i16 %idxR.2 to i32
  %arrayidx19 = getelementptr i8, ptr %pPwrList, i32 %idxprom18
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %11)
  %cmp21 = icmp eq i8 %13, %11
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx25 = getelementptr i8, ptr %pVpdList, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  br label %if.end53

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv17 = zext i8 %11 to i32
  %conv20 = zext i8 %13 to i32
  %conv27 = zext i8 %currPwr.090 to i32
  %sub31 = sub nsw i32 %conv27, %conv17
  %arrayidx33 = getelementptr i8, ptr %pVpdList, i32 %idxprom18
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %17 to i32
  %mul = mul nsw i32 %sub31, %conv34
  %sub39 = sub nsw i32 %conv20, %conv27
  %arrayidx41 = getelementptr i8, ptr %pVpdList, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %19 to i32
  %mul43 = mul nsw i32 %sub39, %conv42
  %add = add nsw i32 %mul43, %mul
  %sub50 = sub nsw i32 %conv20, %conv17
  %div51 = sdiv i32 %add, %sub50
  %extract.t76 = trunc i32 %div51 to i8
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then23
  %k.0.off0 = phi i8 [ %15, %if.then23 ], [ %extract.t76, %if.else ]
  %arrayidx56 = getelementptr i8, ptr %pRetVpdList, i32 %conv95
  %20 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %k.0.off0, ptr %arrayidx56, align 1
  %add58 = add i8 %currPwr.090, 2
  %inc = add i16 %i.089, 1
  %conv = zext i16 %inc to i32
  %cmp.not = icmp slt i32 %div.sext, %conv
  br i1 %cmp.not, label %if.end53.for.end_crit_edge, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end53.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr nocapture noundef readonly %powInfo, i16 noundef zeroext %numChannels, ptr nocapture noundef writeonly %pNewPower, i16 noundef zeroext %numRates, i1 noundef zeroext %isExtTarget) local_unnamed_addr #0 align 64 {
entry:
  %centers = alloca %struct.chan_centers, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #9
  %0 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %centers, align 2, !annotation !39
  %1 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !39
  %3 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !39
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #9
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %.val = load i16, ptr %3, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %.val257 = load i16, ptr %1, align 2
  %7 = select i1 %isExtTarget, i16 %.val, i16 %.val257
  %8 = ptrtoint ptr %powInfo to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %powInfo, align 1
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %10 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %channelFlags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool5.not = icmp eq i16 %12, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp.i = icmp eq i8 %9, -1
  %conv.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, 2300
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %add6.i = add nuw nsw i32 %mul.i, 4800
  %cond.i = select i1 %tobool5.not, i32 %add.i, i32 %add6.i
  %conv7.i = trunc i32 %cond.i to i16
  %retval.0.i = select i1 %cmp.i, i16 255, i16 %conv7.i
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %retval.0.i)
  %cmp.not = icmp ugt i16 %7, %retval.0.i
  br i1 %cmp.not, label %for.cond.preheader, label %entry.if.then79_crit_edge

entry.if.then79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

for.cond.preheader:                               ; preds = %entry
  %conv10 = zext i16 %numChannels to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numChannels)
  %cmp11243.not = icmp eq i16 %numChannels, 0
  br i1 %cmp11243.not, label %for.cond.preheader.if.else81_crit_edge, label %for.cond.preheader.land.rhs_crit_edge

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

for.cond.preheader.if.else81_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.0244 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %arrayidx13 = getelementptr %struct.cal_target_power_leg, ptr %powInfo, i32 %i.0244
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp16.not = icmp eq i8 %14, -1
  br i1 %cmp16.not, label %land.rhs.if.end76_crit_edge, label %ath9k_hw_fbin2freq.exit173

land.rhs.if.end76_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

ath9k_hw_fbin2freq.exit173:                       ; preds = %land.rhs
  %conv.i165 = zext i8 %14 to i32
  %add.i166 = add nuw nsw i32 %conv.i165, 2300
  %mul.i167 = mul nuw nsw i32 %conv.i165, 5
  %add6.i168 = add nuw nsw i32 %mul.i167, 4800
  %cond.i169 = select i1 %tobool5.not, i32 %add.i166, i32 %add6.i168
  %conv7.i170 = trunc i32 %cond.i169 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %conv7.i170)
  %cmp30 = icmp eq i16 %7, %conv7.i170
  br i1 %cmp30, label %ath9k_hw_fbin2freq.exit173.if.then79_crit_edge, label %ath9k_hw_fbin2freq.exit183

ath9k_hw_fbin2freq.exit173.if.then79_crit_edge:   ; preds = %ath9k_hw_fbin2freq.exit173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

ath9k_hw_fbin2freq.exit183:                       ; preds = %ath9k_hw_fbin2freq.exit173
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %conv7.i170)
  %cmp46 = icmp ult i16 %7, %conv7.i170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0244)
  %cmp48 = icmp ne i32 %i.0244, 0
  %or.cond = select i1 %cmp46, i1 %cmp48, i1 false
  br i1 %or.cond, label %land.lhs.true50, label %ath9k_hw_fbin2freq.exit183.for.inc_crit_edge

ath9k_hw_fbin2freq.exit183.for.inc_crit_edge:     ; preds = %ath9k_hw_fbin2freq.exit183
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true50:                                  ; preds = %ath9k_hw_fbin2freq.exit183
  %sub = add nsw i32 %i.0244, -1
  %arrayidx52 = getelementptr %struct.cal_target_power_leg, ptr %powInfo, i32 %sub
  %15 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp.i184 = icmp eq i8 %16, -1
  %conv.i185 = zext i8 %16 to i32
  %add.i186 = add nuw nsw i32 %conv.i185, 2300
  %mul.i187 = mul nuw nsw i32 %conv.i185, 5
  %add6.i188 = add nuw nsw i32 %mul.i187, 4800
  %cond.i189 = select i1 %tobool5.not, i32 %add.i186, i32 %add6.i188
  %conv7.i190 = trunc i32 %cond.i189 to i16
  %retval.0.i192 = select i1 %cmp.i184, i16 255, i16 %conv7.i190
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %retval.0.i192)
  %cmp63 = icmp ugt i16 %7, %retval.0.i192
  br i1 %cmp63, label %land.lhs.true50.if.else81_crit_edge, label %land.lhs.true50.for.inc_crit_edge

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true50.if.else81_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

for.inc:                                          ; preds = %land.lhs.true50.for.inc_crit_edge, %ath9k_hw_fbin2freq.exit183.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc, %conv10
  br i1 %exitcond.not, label %for.inc.if.end76_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.if.end76_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.end76:                                         ; preds = %for.inc.if.end76_crit_edge, %land.rhs.if.end76_crit_edge
  %i.0242 = phi i32 [ %conv10, %for.inc.if.end76_crit_edge ], [ %i.0244, %land.rhs.if.end76_crit_edge ]
  %sub74234 = add nsw i32 %i.0242, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0242)
  %cmp77.not = icmp eq i32 %i.0242, 0
  br i1 %cmp77.not, label %if.end76.if.else81_crit_edge, label %if.end76.if.then79_crit_edge

if.end76.if.then79_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

if.end76.if.else81_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

if.then79:                                        ; preds = %if.end76.if.then79_crit_edge, %ath9k_hw_fbin2freq.exit173.if.then79_crit_edge, %entry.if.then79_crit_edge
  %matchIndex.1226 = phi i32 [ %sub74234, %if.end76.if.then79_crit_edge ], [ 0, %entry.if.then79_crit_edge ], [ %i.0244, %ath9k_hw_fbin2freq.exit173.if.then79_crit_edge ]
  %arrayidx80 = getelementptr %struct.cal_target_power_leg, ptr %powInfo, i32 %matchIndex.1226
  %17 = call ptr @memcpy(ptr %pNewPower, ptr %arrayidx80, i32 5)
  br label %if.end122

if.else81:                                        ; preds = %if.end76.if.else81_crit_edge, %land.lhs.true50.if.else81_crit_edge, %for.cond.preheader.if.else81_crit_edge
  %lowIndex.1231 = phi i32 [ -1, %if.end76.if.else81_crit_edge ], [ -1, %for.cond.preheader.if.else81_crit_edge ], [ %sub, %land.lhs.true50.if.else81_crit_edge ]
  %add = add nsw i32 %lowIndex.1231, 1
  %conv103 = zext i16 %numRates to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numRates)
  %cmp104247.not = icmp eq i16 %numRates, 0
  br i1 %cmp104247.not, label %if.else81.if.end122_crit_edge, label %for.body106.lr.ph

if.else81.if.end122_crit_edge:                    ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

for.body106.lr.ph:                                ; preds = %if.else81
  %arrayidx92 = getelementptr %struct.cal_target_power_leg, ptr %powInfo, i32 %add
  %18 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp.i204 = icmp eq i8 %19, -1
  %conv.i205 = zext i8 %19 to i32
  %add.i206 = add nuw nsw i32 %conv.i205, 2300
  %mul.i207 = mul nuw nsw i32 %conv.i205, 5
  %add6.i208 = add nuw nsw i32 %mul.i207, 4800
  %cond.i209 = select i1 %tobool5.not, i32 %add.i206, i32 %add6.i208
  %conv7.i210 = trunc i32 %cond.i209 to i16
  %retval.0.i212 = select i1 %cmp.i204, i16 255, i16 %conv7.i210
  %arrayidx82 = getelementptr %struct.cal_target_power_leg, ptr %powInfo, i32 %lowIndex.1231
  %20 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp.i194 = icmp eq i8 %21, -1
  %conv.i195 = zext i8 %21 to i32
  %add.i196 = add nuw nsw i32 %conv.i195, 2300
  %mul.i197 = mul nuw nsw i32 %conv.i195, 5
  %add6.i198 = add nuw nsw i32 %mul.i197, 4800
  %cond.i199 = select i1 %tobool5.not, i32 %add.i196, i32 %add6.i198
  %conv7.i200 = trunc i32 %cond.i199 to i16
  %retval.0.i202 = select i1 %cmp.i194, i16 255, i16 %conv7.i200
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i212, i16 %retval.0.i202)
  %cmp.i214 = icmp eq i16 %retval.0.i212, %retval.0.i202
  %conv1.i = zext i16 %retval.0.i202 to i32
  %conv.i215 = zext i16 %retval.0.i212 to i32
  %conv3.i = zext i16 %7 to i32
  %sub.i = sub nsw i32 %conv3.i, %conv1.i
  %sub8.i = sub nsw i32 %conv.i215, %conv3.i
  %sub13.i = sub nsw i32 %conv.i215, %conv1.i
  br label %for.body106

for.body106:                                      ; preds = %ath9k_hw_interpolate.exit.for.body106_crit_edge, %for.body106.lr.ph
  %i.1248 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc120, %ath9k_hw_interpolate.exit.for.body106_crit_edge ]
  %arrayidx108 = getelementptr %struct.cal_target_power_leg, ptr %powInfo, i32 %lowIndex.1231, i32 1, i32 %i.1248
  %22 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx108, align 1
  br i1 %cmp.i214, label %for.body106.ath9k_hw_interpolate.exit_crit_edge, label %if.else.i

for.body106.ath9k_hw_interpolate.exit_crit_edge:  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_hw_interpolate.exit

if.else.i:                                        ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx113 = getelementptr %struct.cal_target_power_leg, ptr %powInfo, i32 %add, i32 1, i32 %i.1248
  %24 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx113, align 1
  %conv5.i237 = zext i8 %25 to i32
  %mul.i216 = mul nsw i32 %sub.i, %conv5.i237
  %conv9.i238 = zext i8 %23 to i32
  %mul10.i = mul nsw i32 %sub8.i, %conv9.i238
  %add.i217 = add nsw i32 %mul.i216, %mul10.i
  %div.i = sdiv i32 %add.i217, %sub13.i
  %extract.t = trunc i32 %div.i to i8
  br label %ath9k_hw_interpolate.exit

ath9k_hw_interpolate.exit:                        ; preds = %if.else.i, %for.body106.ath9k_hw_interpolate.exit_crit_edge
  %rv.0.i.off0 = phi i8 [ %extract.t, %if.else.i ], [ %23, %for.body106.ath9k_hw_interpolate.exit_crit_edge ]
  %arrayidx118 = getelementptr %struct.cal_target_power_leg, ptr %pNewPower, i32 0, i32 1, i32 %i.1248
  %26 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %rv.0.i.off0, ptr %arrayidx118, align 1
  %inc120 = add nuw nsw i32 %i.1248, 1
  %exitcond251.not = icmp eq i32 %inc120, %conv103
  br i1 %exitcond251.not, label %ath9k_hw_interpolate.exit.if.end122_crit_edge, label %ath9k_hw_interpolate.exit.for.body106_crit_edge

ath9k_hw_interpolate.exit.for.body106_crit_edge:  ; preds = %ath9k_hw_interpolate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body106

ath9k_hw_interpolate.exit.if.end122_crit_edge:    ; preds = %ath9k_hw_interpolate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.end122:                                        ; preds = %ath9k_hw_interpolate.exit.if.end122_crit_edge, %if.else81.if.end122_crit_edge, %if.then79
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_channel_centers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_get_target_powers(ptr noundef %ah, ptr noundef %chan, ptr nocapture noundef readonly %powInfo, i16 noundef zeroext %numChannels, ptr nocapture noundef writeonly %pNewPower, i16 noundef zeroext %numRates, i1 noundef zeroext %isHt40Target) local_unnamed_addr #0 align 64 {
entry:
  %centers = alloca %struct.chan_centers, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #9
  %0 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %centers, align 2, !annotation !39
  %1 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !39
  %3 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !39
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #9
  br i1 %isHt40Target, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %centers, align 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i16 [ %6, %cond.true ], [ %8, %cond.false ]
  %9 = ptrtoint ptr %powInfo to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %powInfo, align 1
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %11 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %channelFlags, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool5.not = icmp eq i16 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp.i = icmp eq i8 %10, -1
  %conv.i = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %conv.i, 2300
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %add6.i = add nuw nsw i32 %mul.i, 4800
  %cond.i = select i1 %tobool5.not, i32 %add.i, i32 %add6.i
  %conv7.i = trunc i32 %cond.i to i16
  %retval.0.i = select i1 %cmp.i, i16 255, i16 %conv7.i
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.in, i16 %retval.0.i)
  %cmp.not = icmp ugt i16 %cond.in, %retval.0.i
  br i1 %cmp.not, label %for.cond.preheader, label %cond.end.if.then79_crit_edge

cond.end.if.then79_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

for.cond.preheader:                               ; preds = %cond.end
  %conv10 = zext i16 %numChannels to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numChannels)
  %cmp11243.not = icmp eq i16 %numChannels, 0
  br i1 %cmp11243.not, label %for.cond.preheader.if.else81_crit_edge, label %for.cond.preheader.land.rhs_crit_edge

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

for.cond.preheader.if.else81_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.0244 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %arrayidx13 = getelementptr %struct.cal_target_power_ht, ptr %powInfo, i32 %i.0244
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp16.not = icmp eq i8 %15, -1
  br i1 %cmp16.not, label %land.rhs.if.end76_crit_edge, label %ath9k_hw_fbin2freq.exit173

land.rhs.if.end76_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

ath9k_hw_fbin2freq.exit173:                       ; preds = %land.rhs
  %conv.i165 = zext i8 %15 to i32
  %add.i166 = add nuw nsw i32 %conv.i165, 2300
  %mul.i167 = mul nuw nsw i32 %conv.i165, 5
  %add6.i168 = add nuw nsw i32 %mul.i167, 4800
  %cond.i169 = select i1 %tobool5.not, i32 %add.i166, i32 %add6.i168
  %conv7.i170 = trunc i32 %cond.i169 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.in, i16 %conv7.i170)
  %cmp30 = icmp eq i16 %cond.in, %conv7.i170
  br i1 %cmp30, label %ath9k_hw_fbin2freq.exit173.if.then79_crit_edge, label %ath9k_hw_fbin2freq.exit183

ath9k_hw_fbin2freq.exit173.if.then79_crit_edge:   ; preds = %ath9k_hw_fbin2freq.exit173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

ath9k_hw_fbin2freq.exit183:                       ; preds = %ath9k_hw_fbin2freq.exit173
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.in, i16 %conv7.i170)
  %cmp46 = icmp ult i16 %cond.in, %conv7.i170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0244)
  %cmp48 = icmp ne i32 %i.0244, 0
  %or.cond = select i1 %cmp46, i1 %cmp48, i1 false
  br i1 %or.cond, label %land.lhs.true50, label %ath9k_hw_fbin2freq.exit183.for.inc_crit_edge

ath9k_hw_fbin2freq.exit183.for.inc_crit_edge:     ; preds = %ath9k_hw_fbin2freq.exit183
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true50:                                  ; preds = %ath9k_hw_fbin2freq.exit183
  %sub = add nsw i32 %i.0244, -1
  %arrayidx52 = getelementptr %struct.cal_target_power_ht, ptr %powInfo, i32 %sub
  %16 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp.i184 = icmp eq i8 %17, -1
  %conv.i185 = zext i8 %17 to i32
  %add.i186 = add nuw nsw i32 %conv.i185, 2300
  %mul.i187 = mul nuw nsw i32 %conv.i185, 5
  %add6.i188 = add nuw nsw i32 %mul.i187, 4800
  %cond.i189 = select i1 %tobool5.not, i32 %add.i186, i32 %add6.i188
  %conv7.i190 = trunc i32 %cond.i189 to i16
  %retval.0.i192 = select i1 %cmp.i184, i16 255, i16 %conv7.i190
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.in, i16 %retval.0.i192)
  %cmp63 = icmp ugt i16 %cond.in, %retval.0.i192
  br i1 %cmp63, label %land.lhs.true50.if.else81_crit_edge, label %land.lhs.true50.for.inc_crit_edge

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true50.if.else81_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

for.inc:                                          ; preds = %land.lhs.true50.for.inc_crit_edge, %ath9k_hw_fbin2freq.exit183.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc, %conv10
  br i1 %exitcond.not, label %for.inc.if.end76_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.if.end76_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.end76:                                         ; preds = %for.inc.if.end76_crit_edge, %land.rhs.if.end76_crit_edge
  %i.0242 = phi i32 [ %conv10, %for.inc.if.end76_crit_edge ], [ %i.0244, %land.rhs.if.end76_crit_edge ]
  %sub74234 = add nsw i32 %i.0242, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0242)
  %cmp77.not = icmp eq i32 %i.0242, 0
  br i1 %cmp77.not, label %if.end76.if.else81_crit_edge, label %if.end76.if.then79_crit_edge

if.end76.if.then79_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

if.end76.if.else81_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

if.then79:                                        ; preds = %if.end76.if.then79_crit_edge, %ath9k_hw_fbin2freq.exit173.if.then79_crit_edge, %cond.end.if.then79_crit_edge
  %matchIndex.1226 = phi i32 [ %sub74234, %if.end76.if.then79_crit_edge ], [ 0, %cond.end.if.then79_crit_edge ], [ %i.0244, %ath9k_hw_fbin2freq.exit173.if.then79_crit_edge ]
  %arrayidx80 = getelementptr %struct.cal_target_power_ht, ptr %powInfo, i32 %matchIndex.1226
  %18 = call ptr @memcpy(ptr %pNewPower, ptr %arrayidx80, i32 9)
  br label %if.end122

if.else81:                                        ; preds = %if.end76.if.else81_crit_edge, %land.lhs.true50.if.else81_crit_edge, %for.cond.preheader.if.else81_crit_edge
  %lowIndex.1231 = phi i32 [ -1, %if.end76.if.else81_crit_edge ], [ -1, %for.cond.preheader.if.else81_crit_edge ], [ %sub, %land.lhs.true50.if.else81_crit_edge ]
  %add = add nsw i32 %lowIndex.1231, 1
  %conv103 = zext i16 %numRates to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numRates)
  %cmp104247.not = icmp eq i16 %numRates, 0
  br i1 %cmp104247.not, label %if.else81.if.end122_crit_edge, label %for.body106.lr.ph

if.else81.if.end122_crit_edge:                    ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

for.body106.lr.ph:                                ; preds = %if.else81
  %arrayidx92 = getelementptr %struct.cal_target_power_ht, ptr %powInfo, i32 %add
  %19 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp.i204 = icmp eq i8 %20, -1
  %conv.i205 = zext i8 %20 to i32
  %add.i206 = add nuw nsw i32 %conv.i205, 2300
  %mul.i207 = mul nuw nsw i32 %conv.i205, 5
  %add6.i208 = add nuw nsw i32 %mul.i207, 4800
  %cond.i209 = select i1 %tobool5.not, i32 %add.i206, i32 %add6.i208
  %conv7.i210 = trunc i32 %cond.i209 to i16
  %retval.0.i212 = select i1 %cmp.i204, i16 255, i16 %conv7.i210
  %arrayidx82 = getelementptr %struct.cal_target_power_ht, ptr %powInfo, i32 %lowIndex.1231
  %21 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp.i194 = icmp eq i8 %22, -1
  %conv.i195 = zext i8 %22 to i32
  %add.i196 = add nuw nsw i32 %conv.i195, 2300
  %mul.i197 = mul nuw nsw i32 %conv.i195, 5
  %add6.i198 = add nuw nsw i32 %mul.i197, 4800
  %cond.i199 = select i1 %tobool5.not, i32 %add.i196, i32 %add6.i198
  %conv7.i200 = trunc i32 %cond.i199 to i16
  %retval.0.i202 = select i1 %cmp.i194, i16 255, i16 %conv7.i200
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i212, i16 %retval.0.i202)
  %cmp.i214 = icmp eq i16 %retval.0.i212, %retval.0.i202
  %conv1.i = zext i16 %retval.0.i202 to i32
  %conv.i215 = zext i16 %retval.0.i212 to i32
  %conv3.i = zext i16 %cond.in to i32
  %sub.i = sub nsw i32 %conv3.i, %conv1.i
  %sub8.i = sub nsw i32 %conv.i215, %conv3.i
  %sub13.i = sub nsw i32 %conv.i215, %conv1.i
  br label %for.body106

for.body106:                                      ; preds = %ath9k_hw_interpolate.exit.for.body106_crit_edge, %for.body106.lr.ph
  %i.1248 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc120, %ath9k_hw_interpolate.exit.for.body106_crit_edge ]
  %arrayidx108 = getelementptr %struct.cal_target_power_ht, ptr %powInfo, i32 %lowIndex.1231, i32 1, i32 %i.1248
  %23 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx108, align 1
  br i1 %cmp.i214, label %for.body106.ath9k_hw_interpolate.exit_crit_edge, label %if.else.i

for.body106.ath9k_hw_interpolate.exit_crit_edge:  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_hw_interpolate.exit

if.else.i:                                        ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx113 = getelementptr %struct.cal_target_power_ht, ptr %powInfo, i32 %add, i32 1, i32 %i.1248
  %25 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx113, align 1
  %conv5.i237 = zext i8 %26 to i32
  %mul.i216 = mul nsw i32 %sub.i, %conv5.i237
  %conv9.i238 = zext i8 %24 to i32
  %mul10.i = mul nsw i32 %sub8.i, %conv9.i238
  %add.i217 = add nsw i32 %mul.i216, %mul10.i
  %div.i = sdiv i32 %add.i217, %sub13.i
  %extract.t = trunc i32 %div.i to i8
  br label %ath9k_hw_interpolate.exit

ath9k_hw_interpolate.exit:                        ; preds = %if.else.i, %for.body106.ath9k_hw_interpolate.exit_crit_edge
  %rv.0.i.off0 = phi i8 [ %extract.t, %if.else.i ], [ %24, %for.body106.ath9k_hw_interpolate.exit_crit_edge ]
  %arrayidx118 = getelementptr %struct.cal_target_power_ht, ptr %pNewPower, i32 0, i32 1, i32 %i.1248
  %27 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %rv.0.i.off0, ptr %arrayidx118, align 1
  %inc120 = add nuw nsw i32 %i.1248, 1
  %exitcond251.not = icmp eq i32 %inc120, %conv103
  br i1 %exitcond251.not, label %ath9k_hw_interpolate.exit.if.end122_crit_edge, label %ath9k_hw_interpolate.exit.for.body106_crit_edge

ath9k_hw_interpolate.exit.for.body106_crit_edge:  ; preds = %ath9k_hw_interpolate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body106

ath9k_hw_interpolate.exit.if.end122_crit_edge:    ; preds = %ath9k_hw_interpolate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.end122:                                        ; preds = %ath9k_hw_interpolate.exit.if.end122_crit_edge, %if.else81.if.end122_crit_edge, %if.then79
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #9
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ath9k_hw_get_max_edge_power(i16 noundef zeroext %freq, ptr nocapture noundef readonly %pRdEdgesPower, i1 noundef zeroext %is2GHz, i32 noundef %num_band_edges) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_band_edges)
  %cmp88 = icmp sgt i32 %num_band_edges, 0
  br i1 %cmp88, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.089 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.cal_ctl_edges, ptr %pRdEdgesPower, i32 %i.089
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp1.not = icmp eq i8 %1, -1
  br i1 %cmp1.not, label %land.rhs.for.end_crit_edge, label %ath9k_hw_fbin2freq.exit

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ath9k_hw_fbin2freq.exit:                          ; preds = %land.rhs
  %conv.i = zext i8 %1 to i32
  %add.i = add nuw nsw i32 %conv.i, 2300
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %add6.i = add nuw nsw i32 %mul.i, 4800
  %cond.i = select i1 %is2GHz, i32 %add.i, i32 %add6.i
  %conv7.i = trunc i32 %cond.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv7.i, i16 %freq)
  %cmp7 = icmp eq i16 %conv7.i, %freq
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %ath9k_hw_fbin2freq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ctl = getelementptr %struct.cal_ctl_edges, ptr %pRdEdgesPower, i32 %i.089, i32 1
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctl, align 1
  %4 = and i8 %3, 63
  br label %for.end

if.else:                                          ; preds = %ath9k_hw_fbin2freq.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.089)
  %cmp12.not = icmp ne i32 %i.089, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %conv7.i, i16 %freq)
  %cmp20 = icmp ugt i16 %conv7.i, %freq
  %or.cond = select i1 %cmp12.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %if.then22, label %for.inc

if.then22:                                        ; preds = %if.else
  %sub = add nsw i32 %i.089, -1
  %arrayidx23 = getelementptr %struct.cal_ctl_edges, ptr %pRdEdgesPower, i32 %sub
  %5 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.i76 = icmp eq i8 %6, -1
  %conv.i77 = zext i8 %6 to i32
  %add.i78 = add nuw nsw i32 %conv.i77, 2300
  %mul.i79 = mul nuw nsw i32 %conv.i77, 5
  %add6.i80 = add nuw nsw i32 %mul.i79, 4800
  %cond.i81 = select i1 %is2GHz, i32 %add.i78, i32 %add6.i80
  %conv7.i82 = trunc i32 %cond.i81 to i16
  %retval.0.i84 = select i1 %cmp.i76, i16 255, i16 %conv7.i82
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i84, i16 %freq)
  %cmp29 = icmp ult i16 %retval.0.i84, %freq
  br i1 %cmp29, label %land.lhs.true31, label %if.then22.for.end_crit_edge

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true31:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %ctl34 = getelementptr %struct.cal_ctl_edges, ptr %pRdEdgesPower, i32 %sub, i32 1
  %7 = ptrtoint ptr %ctl34 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctl34, align 1
  %9 = and i8 %8, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %8)
  %tobool37.not.inv = icmp ugt i8 %8, 63
  %spec.select = select i1 %tobool37.not.inv, i8 %9, i8 63
  br label %for.end

for.inc:                                          ; preds = %if.else
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %num_band_edges
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true31, %if.then22.for.end_crit_edge, %if.then, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %twiceMaxEdgePower.0.shrunk = phi i8 [ %4, %if.then ], [ 63, %if.then22.for.end_crit_edge ], [ %spec.select, %land.lhs.true31 ], [ 63, %entry.for.end_crit_edge ], [ 63, %for.inc.for.end_crit_edge ], [ 63, %land.rhs.for.end_crit_edge ]
  %twiceMaxEdgePower.0 = zext i8 %twiceMaxEdgePower.0.shrunk to i16
  ret i16 %twiceMaxEdgePower.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @ath9k_hw_get_scaled_power(ptr nocapture noundef readonly %ah, i16 noundef zeroext %power_limit, i8 noundef zeroext %antenna_reduction) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %antenna_reduction to i16
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %0 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txchainmask, align 4
  %conv1 = zext i8 %1 to i32
  %2 = lshr i32 %conv1, 2
  %and = and i32 %2, 1
  %3 = lshr i32 %conv1, 1
  %and5 = and i32 %3, 1
  %and8 = and i32 %conv1, 1
  %add = add nuw nsw i32 %and5, %and8
  %add9 = add nuw nsw i32 %add, %and
  %4 = zext i32 %add9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %add9, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb13
    i32 2, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add11 = add nuw nsw i16 %conv, 6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add15 = add nuw nsw i16 %conv, 10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb, %entry.sw.epilog_crit_edge
  %reduction.0 = phi i16 [ %conv, %entry.sw.epilog_crit_edge ], [ %add11, %sw.bb ], [ %add15, %sw.bb13 ]
  call void @__sanitizer_cov_trace_cmp2(i16 %reduction.0, i16 %power_limit)
  %cmp = icmp ult i16 %reduction.0, %power_limit
  %conv18 = zext i16 %reduction.0 to i32
  %conv17 = zext i16 %power_limit to i32
  %sub = sub nsw i32 %conv17, %conv18
  %phi.cast = and i32 %sub, 65535
  %5 = tail call i32 @llvm.umin.i32(i32 %phi.cast, i32 63)
  %6 = trunc i32 %5 to i16
  %conv29 = select i1 %cmp, i16 %6, i16 0
  ret i16 %conv29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_update_regulatory_maxpower(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %0 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txchainmask, align 4
  %conv = zext i8 %1 to i32
  %2 = lshr i32 %conv, 2
  %and = and i32 %2, 1
  %3 = lshr i32 %conv, 1
  %and5 = and i32 %3, 1
  %and8 = and i32 %conv, 1
  %add = add nuw nsw i32 %and5, %and8
  %add9 = add nuw nsw i32 %add, %and
  %4 = zext i32 %add9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %add9, label %do.body [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 3, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_power_level = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 22, i32 3
  %5 = ptrtoint ptr %max_power_level to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %max_power_level, align 2
  %add11 = add i16 %6, 6
  store i16 %add11, ptr %max_power_level, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_power_level14 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 22, i32 3
  %7 = ptrtoint ptr %max_power_level14 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %max_power_level14, align 2
  %add16 = add i16 %8, 10
  store i16 %add16, ptr %max_power_level14, align 2
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and18 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %if.then

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.12) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body.sw.epilog_crit_edge, %sw.bb13, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_get_gain_boundaries_pdadcs(ptr noundef %ah, ptr noundef %chan, ptr noundef readonly %pRawDataSet, ptr nocapture noundef readonly %bChans, i16 noundef zeroext %availPiers, i16 noundef zeroext %tPdGainOverlap, ptr nocapture noundef %pPdGainBoundaries, ptr nocapture noundef %pPDADCValues, i16 noundef zeroext %numXpdGains) local_unnamed_addr #0 align 64 {
entry:
  %minPwrT4 = alloca [4 x i8], align 4
  %maxPwrT4 = alloca [4 x i8], align 4
  %centers = alloca %struct.chan_centers, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minPwrT4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxPwrT4) #9
  %0 = ptrtoint ptr %maxPwrT4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %maxPwrT4, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #9
  %1 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %centers, align 2, !annotation !39
  %2 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !39
  %4 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !39
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %7)
  %cmp6 = icmp eq i32 %7, 384
  %intercepts.0 = select i1 %cmp6, i32 1, i32 5
  %8 = ptrtoint ptr %minPwrT4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %minPwrT4, align 4
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %availPiers)
  %cmp8802.not = icmp eq i16 %availPiers, 0
  br i1 %cmp8802.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %numPiers.0803 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv = zext i16 %numPiers.0803 to i32
  %arrayidx = getelementptr i8, ptr %bChans, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp11 = icmp eq i8 %10, -1
  br i1 %cmp11, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i16 %numPiers.0803, 1
  %cmp8 = icmp ult i16 %inc, %availPiers
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %numPiers.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %numPiers.0803, %for.body.for.end_crit_edge ], [ %availPiers, %for.inc.for.end_crit_edge ]
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %11 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %channelFlags, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  %14 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %centers, align 2
  %conv16 = zext i16 %15 to i32
  %sub = add nuw nsw i32 %conv16, 4
  %sub19 = add nsw i32 %conv16, -4800
  %div = sdiv i32 %sub19, 5
  %cond = select i1 %tobool.not, i32 %sub, i32 %div
  %conv20 = trunc i32 %cond to i8
  %16 = ptrtoint ptr %bChans to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bChans, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %conv20)
  %cmp.not.i = icmp ult i8 %17, %conv20
  br i1 %cmp.not.i, label %if.end.i, label %for.end.if.then23_crit_edge

for.end.if.then23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.end.i:                                         ; preds = %for.end
  %conv4.i = zext i16 %numPiers.0.lcssa to i32
  %sub.i = add nsw i32 %conv4.i, -1
  %arrayidx5.i = getelementptr i8, ptr %bChans, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %conv20)
  %cmp7.not.i = icmp ugt i8 %19, %conv20
  br i1 %cmp7.not.i, label %for.cond.preheader.i, label %if.then9.i

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %numPiers.0.lcssa)
  %cmp1759.i = icmp ugt i16 %numPiers.0.lcssa, 1
  br i1 %cmp1759.i, label %for.body.preheader.i, label %for.cond.preheader.i.ath9k_hw_get_lower_upper_index.exit_crit_edge

for.cond.preheader.i.ath9k_hw_get_lower_upper_index.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_hw_get_lower_upper_index.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %wide.trip.count = and i32 %sub.i, 65535
  br label %for.body.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i = trunc i32 %sub.i to i16
  br label %if.then23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx19.i = getelementptr i8, ptr %bChans, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %conv20)
  %cmp22.i = icmp eq i8 %21, %conv20
  br i1 %cmp22.i, label %if.then23.loopexit, label %if.end25.i

if.end25.i:                                       ; preds = %for.body.i
  %add.i = add nuw nsw i32 %indvars.iv, 1
  %arrayidx28.i = getelementptr i8, ptr %bChans, i32 %add.i
  %22 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %conv20)
  %cmp30.i = icmp ugt i8 %23, %conv20
  br i1 %cmp30.i, label %if.then32.i, label %for.inc.i

if.then32.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = and i32 %indvars.iv, 65535
  %phi.cast868 = and i32 %add.i, 65535
  br label %ath9k_hw_get_lower_upper_index.exit

for.inc.i:                                        ; preds = %if.end25.i
  %exitcond.not = icmp eq i32 %add.i, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_hw_get_lower_upper_index.exit

ath9k_hw_get_lower_upper_index.exit:              ; preds = %for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge, %if.then32.i, %for.cond.preheader.i.ath9k_hw_get_lower_upper_index.exit_crit_edge
  %idxL.0 = phi i32 [ %phi.cast, %if.then32.i ], [ 0, %for.cond.preheader.i.ath9k_hw_get_lower_upper_index.exit_crit_edge ], [ 0, %for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge ]
  %idxR.0 = phi i32 [ %phi.cast868, %if.then32.i ], [ 0, %for.cond.preheader.i.ath9k_hw_get_lower_upper_index.exit_crit_edge ], [ 0, %for.inc.i.ath9k_hw_get_lower_upper_index.exit_crit_edge ]
  %conv142 = zext i16 %numXpdGains to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numXpdGains)
  %cmp143807.not = icmp eq i16 %numXpdGains, 0
  br i1 %cmp143807.not, label %ath9k_hw_get_lower_upper_index.exit.for.end530_crit_edge, label %for.body145.lr.ph

ath9k_hw_get_lower_upper_index.exit.for.end530_crit_edge: ; preds = %ath9k_hw_get_lower_upper_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end530

for.body145.lr.ph:                                ; preds = %ath9k_hw_get_lower_upper_index.exit
  %arrayidx175 = getelementptr %struct.cal_data_per_freq_4k, ptr %pRawDataSet, i32 %idxL.0
  %arrayidx185 = getelementptr %struct.cal_data_per_freq_4k, ptr %pRawDataSet, i32 %idxR.0
  %arrayidx196 = getelementptr %struct.cal_data_per_freq, ptr %pRawDataSet, i32 %idxL.0
  %arrayidx206 = getelementptr %struct.cal_data_per_freq, ptr %pRawDataSet, i32 %idxR.0
  %arrayidx152 = getelementptr %struct.cal_data_per_freq_ar9287, ptr %pRawDataSet, i32 %idxL.0
  %arrayidx162 = getelementptr %struct.cal_data_per_freq_ar9287, ptr %pRawDataSet, i32 %idxR.0
  %sub231 = add nsw i32 %intercepts.0, -1
  %conv250 = trunc i32 %intercepts.0 to i16
  %arrayidx286 = getelementptr i8, ptr %bChans, i32 %idxL.0
  %arrayidx289 = getelementptr i8, ptr %bChans, i32 %idxR.0
  br label %for.body145

if.then23.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = trunc i32 %indvars.iv to i16
  br label %if.then23

if.then23:                                        ; preds = %if.then23.loopexit, %if.then9.i, %for.end.if.then23_crit_edge
  %idxL.0.ph = phi i16 [ 0, %for.end.if.then23_crit_edge ], [ %conv12.i, %if.then9.i ], [ %24, %if.then23.loopexit ]
  %25 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %26)
  %cmp26 = icmp eq i32 %26, 384
  br i1 %cmp26, label %for.cond29.preheader, label %if.else62

for.cond29.preheader:                             ; preds = %if.then23
  %conv30 = zext i16 %numXpdGains to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numXpdGains)
  %cmp31815.not = icmp eq i16 %numXpdGains, 0
  br i1 %cmp31815.not, label %for.cond29.preheader.for.end530_crit_edge, label %for.body33.lr.ph

for.cond29.preheader.for.end530_crit_edge:        ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end530

for.body33.lr.ph:                                 ; preds = %for.cond29.preheader
  %idxprom34 = zext i16 %idxL.0.ph to i32
  %arrayidx35 = getelementptr %struct.cal_data_per_freq_ar9287, ptr %pRawDataSet, i32 %idxprom34
  %sub43 = add nsw i32 %intercepts.0, -1
  %conv56 = trunc i32 %intercepts.0 to i16
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.lr.ph
  %i.0816 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc60, %for.body33.for.body33_crit_edge ]
  %arrayidx36 = getelementptr [4 x [1 x i8]], ptr %arrayidx35, i32 0, i32 %i.0816
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx36, align 1
  %arrayidx38 = getelementptr [4 x i8], ptr %minPwrT4, i32 0, i32 %i.0816
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx38, align 1
  %arrayidx44 = getelementptr [1 x i8], ptr %arrayidx36, i32 0, i32 %sub43
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx44, align 1
  %arrayidx45 = getelementptr [4 x i8], ptr %maxPwrT4, i32 0, i32 %i.0816
  %32 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx45, align 1
  %arrayidx54 = getelementptr %struct.cal_data_per_freq_ar9287, ptr %pRawDataSet, i32 %idxprom34, i32 1, i32 %i.0816
  %arrayidx57 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, i32 0, i32 %i.0816
  call void @ath9k_hw_fill_vpd_table(i8 noundef zeroext %28, i8 noundef zeroext %31, ptr noundef %arrayidx36, ptr noundef %arrayidx54, i16 noundef zeroext %conv56, ptr noundef %arrayidx57)
  %inc60 = add nuw nsw i32 %i.0816, 1
  %exitcond861.not = icmp eq i32 %inc60, %conv30
  br i1 %exitcond861.not, label %for.body33.if.end307_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.body33.if.end307_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end307

if.else62:                                        ; preds = %if.then23
  %33 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %7, label %for.cond102.preheader [
    i32 320, label %if.else62.if.then64_crit_edge
    i32 192, label %if.else62.if.then64_crit_edge897
  ]

if.else62.if.then64_crit_edge897:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

if.else62.if.then64_crit_edge:                    ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

for.cond102.preheader:                            ; preds = %if.else62
  %conv103 = zext i16 %numXpdGains to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numXpdGains)
  %cmp104813.not = icmp eq i16 %numXpdGains, 0
  br i1 %cmp104813.not, label %for.cond102.preheader.for.end530_crit_edge, label %for.body106.lr.ph

for.cond102.preheader.for.end530_crit_edge:       ; preds = %for.cond102.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end530

for.body106.lr.ph:                                ; preds = %for.cond102.preheader
  %idxprom107 = zext i16 %idxL.0.ph to i32
  %arrayidx108 = getelementptr %struct.cal_data_per_freq, ptr %pRawDataSet, i32 %idxprom107
  %sub117 = add nsw i32 %intercepts.0, -1
  %conv132 = trunc i32 %intercepts.0 to i16
  br label %for.body106

if.then64:                                        ; preds = %if.else62.if.then64_crit_edge, %if.else62.if.then64_crit_edge897
  %conv66 = zext i16 %numXpdGains to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numXpdGains)
  %cmp67811.not = icmp eq i16 %numXpdGains, 0
  br i1 %cmp67811.not, label %if.then64.for.end530_crit_edge, label %for.body69.lr.ph

if.then64.for.end530_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end530

for.body69.lr.ph:                                 ; preds = %if.then64
  %idxprom70 = zext i16 %idxL.0.ph to i32
  %arrayidx71 = getelementptr %struct.cal_data_per_freq_4k, ptr %pRawDataSet, i32 %idxprom70
  %sub80 = add nsw i32 %intercepts.0, -1
  %conv95 = trunc i32 %intercepts.0 to i16
  br label %for.body69

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %for.body69.lr.ph
  %i.1812 = phi i32 [ 0, %for.body69.lr.ph ], [ %inc99, %for.body69.for.body69_crit_edge ]
  %arrayidx73 = getelementptr [2 x [5 x i8]], ptr %arrayidx71, i32 0, i32 %i.1812
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx73, align 1
  %arrayidx75 = getelementptr [4 x i8], ptr %minPwrT4, i32 0, i32 %i.1812
  %36 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx75, align 1
  %arrayidx81 = getelementptr [5 x i8], ptr %arrayidx73, i32 0, i32 %sub80
  %37 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx81, align 1
  %arrayidx82 = getelementptr [4 x i8], ptr %maxPwrT4, i32 0, i32 %i.1812
  %39 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx82, align 1
  %arrayidx93 = getelementptr %struct.cal_data_per_freq_4k, ptr %pRawDataSet, i32 %idxprom70, i32 1, i32 %i.1812
  %arrayidx96 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, i32 0, i32 %i.1812
  call void @ath9k_hw_fill_vpd_table(i8 noundef zeroext %35, i8 noundef zeroext %38, ptr noundef %arrayidx73, ptr noundef %arrayidx93, i16 noundef zeroext %conv95, ptr noundef %arrayidx96)
  %inc99 = add nuw nsw i32 %i.1812, 1
  %exitcond859.not = icmp eq i32 %inc99, %conv66
  br i1 %exitcond859.not, label %for.body69.if.end307_crit_edge, label %for.body69.for.body69_crit_edge

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body69

for.body69.if.end307_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end307

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.body106.lr.ph
  %i.2814 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc136, %for.body106.for.body106_crit_edge ]
  %arrayidx110 = getelementptr [4 x [5 x i8]], ptr %arrayidx108, i32 0, i32 %i.2814
  %40 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx110, align 1
  %arrayidx112 = getelementptr [4 x i8], ptr %minPwrT4, i32 0, i32 %i.2814
  %42 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx112, align 1
  %arrayidx118 = getelementptr [5 x i8], ptr %arrayidx110, i32 0, i32 %sub117
  %43 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx118, align 1
  %arrayidx119 = getelementptr [4 x i8], ptr %maxPwrT4, i32 0, i32 %i.2814
  %45 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx119, align 1
  %arrayidx130 = getelementptr %struct.cal_data_per_freq, ptr %pRawDataSet, i32 %idxprom107, i32 1, i32 %i.2814
  %arrayidx133 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, i32 0, i32 %i.2814
  call void @ath9k_hw_fill_vpd_table(i8 noundef zeroext %41, i8 noundef zeroext %44, ptr noundef %arrayidx110, ptr noundef %arrayidx130, i16 noundef zeroext %conv132, ptr noundef %arrayidx133)
  %inc136 = add nuw nsw i32 %i.2814, 1
  %exitcond860.not = icmp eq i32 %inc136, %conv103
  br i1 %exitcond860.not, label %for.body106.if.end307_crit_edge, label %for.body106.for.body106_crit_edge

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body106

for.body106.if.end307_crit_edge:                  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end307

for.body145:                                      ; preds = %for.inc304.for.body145_crit_edge, %for.body145.lr.ph
  %i.3808 = phi i32 [ 0, %for.body145.lr.ph ], [ %inc305, %for.inc304.for.body145_crit_edge ]
  %46 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %47)
  %cmp148 = icmp eq i32 %47, 384
  br i1 %cmp148, label %if.then150, label %if.else171

if.then150:                                       ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx154 = getelementptr %struct.cal_data_per_freq_ar9287, ptr %pRawDataSet, i32 %idxL.0, i32 1, i32 %i.3808
  %arrayidx159 = getelementptr [4 x [1 x i8]], ptr %arrayidx152, i32 0, i32 %i.3808
  %arrayidx164 = getelementptr %struct.cal_data_per_freq_ar9287, ptr %pRawDataSet, i32 %idxR.0, i32 1, i32 %i.3808
  %arrayidx169 = getelementptr [4 x [1 x i8]], ptr %arrayidx162, i32 0, i32 %i.3808
  br label %if.end216

if.else171:                                       ; preds = %for.body145
  %48 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %7, label %if.else194 [
    i32 320, label %if.else171.if.then173_crit_edge
    i32 192, label %if.else171.if.then173_crit_edge898
  ]

if.else171.if.then173_crit_edge898:               ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then173

if.else171.if.then173_crit_edge:                  ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then173

if.then173:                                       ; preds = %if.else171.if.then173_crit_edge, %if.else171.if.then173_crit_edge898
  %arrayidx177 = getelementptr %struct.cal_data_per_freq_4k, ptr %pRawDataSet, i32 %idxL.0, i32 1, i32 %i.3808
  %arrayidx182 = getelementptr [2 x [5 x i8]], ptr %arrayidx175, i32 0, i32 %i.3808
  %arrayidx187 = getelementptr %struct.cal_data_per_freq_4k, ptr %pRawDataSet, i32 %idxR.0, i32 1, i32 %i.3808
  %arrayidx192 = getelementptr [2 x [5 x i8]], ptr %arrayidx185, i32 0, i32 %i.3808
  br label %if.end216

if.else194:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx198 = getelementptr %struct.cal_data_per_freq, ptr %pRawDataSet, i32 %idxL.0, i32 1, i32 %i.3808
  %arrayidx203 = getelementptr [4 x [5 x i8]], ptr %arrayidx196, i32 0, i32 %i.3808
  %arrayidx208 = getelementptr %struct.cal_data_per_freq, ptr %pRawDataSet, i32 %idxR.0, i32 1, i32 %i.3808
  %arrayidx213 = getelementptr [4 x [5 x i8]], ptr %arrayidx206, i32 0, i32 %i.3808
  br label %if.end216

if.end216:                                        ; preds = %if.else194, %if.then173, %if.then150
  %pVpdL.0 = phi ptr [ %arrayidx154, %if.then150 ], [ %arrayidx177, %if.then173 ], [ %arrayidx198, %if.else194 ]
  %pVpdR.0 = phi ptr [ %arrayidx164, %if.then150 ], [ %arrayidx187, %if.then173 ], [ %arrayidx208, %if.else194 ]
  %pPwrL.0 = phi ptr [ %arrayidx159, %if.then150 ], [ %arrayidx182, %if.then173 ], [ %arrayidx203, %if.else194 ]
  %pPwrR.0 = phi ptr [ %arrayidx169, %if.then150 ], [ %arrayidx192, %if.then173 ], [ %arrayidx213, %if.else194 ]
  %49 = ptrtoint ptr %pPwrL.0 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pPwrL.0, align 1
  %51 = ptrtoint ptr %pPwrR.0 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pPwrR.0, align 1
  %53 = call i8 @llvm.umax.i8(i8 %50, i8 %52)
  %arrayidx230 = getelementptr [4 x i8], ptr %minPwrT4, i32 0, i32 %i.3808
  %54 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx230, align 1
  %arrayidx232 = getelementptr i8, ptr %pPwrL.0, i32 %sub231
  %55 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx232, align 1
  %arrayidx234 = getelementptr i8, ptr %pPwrR.0, i32 %sub231
  %57 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx234, align 1
  %59 = call i8 @llvm.umin.i8(i8 %56, i8 %58)
  %arrayidx247 = getelementptr [4 x i8], ptr %maxPwrT4, i32 0, i32 %i.3808
  %60 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx247, align 1
  %arrayidx251 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableL, i32 0, i32 %i.3808
  call void @ath9k_hw_fill_vpd_table(i8 noundef zeroext %53, i8 noundef zeroext %59, ptr noundef %pPwrL.0, ptr noundef %pVpdL.0, i16 noundef zeroext %conv250, ptr noundef %arrayidx251)
  %arrayidx256 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableR, i32 0, i32 %i.3808
  call void @ath9k_hw_fill_vpd_table(i8 noundef zeroext %53, i8 noundef zeroext %59, ptr noundef %pPwrR.0, ptr noundef %pVpdR.0, i16 noundef zeroext %conv250, ptr noundef %arrayidx256)
  %conv260 = zext i8 %59 to i16
  %conv262 = zext i8 %53 to i16
  %sub263 = sub nsw i16 %conv260, %conv262
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %sub263)
  %cmp265.not805 = icmp slt i16 %sub263, -1
  br i1 %cmp265.not805, label %if.end216.for.inc304_crit_edge, label %for.body267.preheader

if.end216.for.inc304_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc304

for.body267.preheader:                            ; preds = %if.end216
  %div264790 = sdiv i16 %sub263, 2
  %narrow869 = add nuw nsw i16 %div264790, 1
  %61 = zext i16 %narrow869 to i32
  br label %for.body267

for.body267:                                      ; preds = %ath9k_hw_interpolate.exit.for.body267_crit_edge, %for.body267.preheader
  %j.0806 = phi i32 [ %inc302, %ath9k_hw_interpolate.exit.for.body267_crit_edge ], [ 0, %for.body267.preheader ]
  %62 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx286, align 1
  %64 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx289, align 1
  %arrayidx292 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableL, i32 0, i32 %i.3808, i32 %j.0806
  %66 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx292, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %63)
  %cmp.i = icmp eq i8 %65, %63
  br i1 %cmp.i, label %for.body267.ath9k_hw_interpolate.exit_crit_edge, label %if.else.i

for.body267.ath9k_hw_interpolate.exit_crit_edge:  ; preds = %for.body267
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_hw_interpolate.exit

if.else.i:                                        ; preds = %for.body267
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %channelFlags, align 2
  %70 = and i16 %69, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool271.not = icmp eq i16 %70, 0
  %71 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %centers, align 2
  %conv274 = zext i16 %72 to i32
  %sub275 = add nuw nsw i32 %conv274, 4
  %sub279 = add nsw i32 %conv274, -4800
  %div280 = sdiv i32 %sub279, 5
  %cond282 = select i1 %tobool271.not, i32 %sub275, i32 %div280
  %arrayidx295 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableR, i32 0, i32 %i.3808, i32 %j.0806
  %73 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx295, align 1
  %conv284 = and i32 %cond282, 255
  %conv1.i = zext i8 %63 to i32
  %conv.i = zext i8 %65 to i32
  %sub.i766 = sub nsw i32 %conv284, %conv1.i
  %conv5.i791 = zext i8 %74 to i32
  %mul.i = mul nsw i32 %sub.i766, %conv5.i791
  %sub8.i = sub nsw i32 %conv.i, %conv284
  %conv9.i792 = zext i8 %67 to i32
  %mul10.i = mul nsw i32 %sub8.i, %conv9.i792
  %add.i767 = add nsw i32 %mul.i, %mul10.i
  %sub13.i = sub nsw i32 %conv.i, %conv1.i
  %div.i = sdiv i32 %add.i767, %sub13.i
  %extract.t = trunc i32 %div.i to i8
  br label %ath9k_hw_interpolate.exit

ath9k_hw_interpolate.exit:                        ; preds = %if.else.i, %for.body267.ath9k_hw_interpolate.exit_crit_edge
  %rv.0.i.off0 = phi i8 [ %extract.t, %if.else.i ], [ %67, %for.body267.ath9k_hw_interpolate.exit_crit_edge ]
  %arrayidx300 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, i32 0, i32 %i.3808, i32 %j.0806
  %75 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %rv.0.i.off0, ptr %arrayidx300, align 1
  %inc302 = add nuw nsw i32 %j.0806, 1
  %exitcond857 = icmp eq i32 %inc302, %61
  br i1 %exitcond857, label %ath9k_hw_interpolate.exit.for.inc304_crit_edge, label %ath9k_hw_interpolate.exit.for.body267_crit_edge

ath9k_hw_interpolate.exit.for.body267_crit_edge:  ; preds = %ath9k_hw_interpolate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body267

ath9k_hw_interpolate.exit.for.inc304_crit_edge:   ; preds = %ath9k_hw_interpolate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc304

for.inc304:                                       ; preds = %ath9k_hw_interpolate.exit.for.inc304_crit_edge, %if.end216.for.inc304_crit_edge
  %inc305 = add nuw nsw i32 %i.3808, 1
  %exitcond858.not = icmp eq i32 %inc305, %conv142
  br i1 %exitcond858.not, label %for.inc304.if.end307_crit_edge, label %for.inc304.for.body145_crit_edge

for.inc304.for.body145_crit_edge:                 ; preds = %for.inc304
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body145

for.inc304.if.end307_crit_edge:                   ; preds = %for.inc304
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end307

if.end307:                                        ; preds = %for.inc304.if.end307_crit_edge, %for.body106.if.end307_crit_edge, %for.body69.if.end307_crit_edge, %for.body33.if.end307_crit_edge
  %conv309.pre-phi = phi i32 [ %conv30, %for.body33.if.end307_crit_edge ], [ %conv103, %for.body106.if.end307_crit_edge ], [ %conv66, %for.body69.if.end307_crit_edge ], [ %conv142, %for.inc304.if.end307_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numXpdGains)
  %cmp310841.not = icmp eq i16 %numXpdGains, 0
  br i1 %cmp310841.not, label %if.end307.for.end530_crit_edge, label %for.body312.lr.ph

if.end307.for.end530_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end530

for.body312.lr.ph:                                ; preds = %if.end307
  %sub314 = add nsw i32 %conv309.pre-phi, -1
  %conv429 = trunc i16 %tPdGainOverlap to i8
  %arrayidx318 = getelementptr [4 x i8], ptr %maxPwrT4, i32 0, i32 %sub314
  br label %for.body312

for.body312:                                      ; preds = %for.inc528.for.body312_crit_edge, %for.body312.lr.ph
  %i.4843 = phi i32 [ 0, %for.body312.lr.ph ], [ %inc529, %for.inc528.for.body312_crit_edge ]
  %k.0842 = phi i32 [ 0, %for.body312.lr.ph ], [ %k.3.lcssa, %for.inc528.for.body312_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.4843, i32 %sub314)
  %cmp315 = icmp eq i32 %i.4843, %sub314
  br i1 %cmp315, label %if.then317, label %if.else323

if.then317:                                       ; preds = %for.body312
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx318, align 1
  %78 = lshr i8 %77, 1
  %conv321 = zext i8 %78 to i16
  br label %if.end332

if.else323:                                       ; preds = %for.body312
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx324 = getelementptr [4 x i8], ptr %maxPwrT4, i32 0, i32 %i.4843
  %79 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx324, align 1
  %conv325 = zext i8 %80 to i16
  %add = add nuw nsw i32 %i.4843, 1
  %arrayidx326 = getelementptr [4 x i8], ptr %minPwrT4, i32 0, i32 %add
  %81 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx326, align 1
  %conv327 = zext i8 %82 to i16
  %add328 = add nuw nsw i16 %conv327, %conv325
  %div329755 = lshr i16 %add328, 2
  br label %if.end332

if.end332:                                        ; preds = %if.else323, %if.then317
  %div329755.sink = phi i16 [ %conv321, %if.then317 ], [ %div329755, %if.else323 ]
  %83 = getelementptr i16, ptr %pPdGainBoundaries, i32 %i.4843
  %84 = call i16 @llvm.umin.i16(i16 %div329755.sink, i16 63)
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %83, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4843)
  %cmp347 = icmp eq i32 %i.4843, 0
  br i1 %cmp347, label %if.then349, label %if.else362

if.then349:                                       ; preds = %if.end332
  %86 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %87)
  %cmp352 = icmp ugt i32 %87, 127
  br i1 %cmp352, label %if.then354, label %if.then349.if.end376_crit_edge

if.then349.if.end376_crit_edge:                   ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end376

if.then354:                                       ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %minPwrT4 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %minPwrT4, align 4
  %90 = lshr i8 %89, 1
  %div357 = zext i8 %90 to i16
  %sub358 = sub nsw i16 0, %div357
  br label %if.end376

if.else362:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #11
  %sub363 = add nsw i32 %i.4843, -1
  %arrayidx364 = getelementptr i16, ptr %pPdGainBoundaries, i32 %sub363
  %91 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx364, align 2
  %arrayidx366 = getelementptr [4 x i8], ptr %minPwrT4, i32 0, i32 %i.4843
  %93 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx366, align 1
  %95 = lshr i8 %94, 1
  %div368 = zext i8 %95 to i16
  %96 = add i16 %92, 1
  %97 = add i16 %div368, %tPdGainOverlap
  %add372 = sub i16 %96, %97
  br label %if.end376

if.end376:                                        ; preds = %if.else362, %if.then354, %if.then349.if.end376_crit_edge
  %ss.0 = phi i16 [ %sub358, %if.then354 ], [ %add372, %if.else362 ], [ 0, %if.then349.if.end376_crit_edge ]
  %arrayidx377 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, i32 0, i32 %i.4843
  %arrayidx378 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, i32 0, i32 %i.4843, i32 1
  %98 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx378, align 1
  %conv379 = zext i8 %99 to i32
  %100 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx377, align 1
  %conv382 = zext i8 %101 to i32
  %sub383 = sub nsw i32 %conv379, %conv382
  %102 = call i32 @llvm.smax.i32(i32 %sub383, i32 1)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ss.0)
  %cmp395817 = icmp slt i16 %ss.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %k.0842)
  %cmp397818 = icmp slt i32 %k.0842, 127
  %or.cond819 = select i1 %cmp395817, i1 %cmp397818, i1 false
  br i1 %or.cond819, label %while.body.preheader, label %if.end376.while.end_crit_edge

if.end376.while.end_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %if.end376
  %103 = zext i16 %ss.0 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %indvars.iv862 = phi i32 [ %103, %while.body.preheader ], [ %indvars.iv.next863, %while.body.while.body_crit_edge ]
  %k.1821 = phi i32 [ %k.0842, %while.body.preheader ], [ %inc415, %while.body.while.body_crit_edge ]
  %ss.1820 = phi i16 [ %ss.0, %while.body.preheader ], [ %inc417, %while.body.while.body_crit_edge ]
  %104 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx377, align 1
  %conv401 = zext i8 %105 to i32
  %mul = mul nsw i32 %102, %indvars.iv862
  %add404 = add nuw nsw i32 %mul, %conv401
  %sext758.mask = and i32 %add404, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext758.mask)
  %cmp407.not = icmp eq i32 %sext758.mask, 0
  %106 = trunc i32 %add404 to i8
  %conv414 = select i1 %cmp407.not, i8 %106, i8 0
  %inc415 = add nsw i32 %k.1821, 1
  %arrayidx416 = getelementptr i8, ptr %pPDADCValues, i32 %k.1821
  %107 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv414, ptr %arrayidx416, align 1
  %inc417 = add nsw i16 %ss.1820, 1
  %108 = trunc i32 %indvars.iv862 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %108)
  %cmp395 = icmp slt i16 %108, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %k.1821)
  %cmp397 = icmp slt i32 %k.1821, 126
  %or.cond = select i1 %cmp395, i1 %cmp397, i1 false
  %indvars.iv.next863 = add nuw nsw i32 %indvars.iv862, 1
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end376.while.end_crit_edge
  %ss.1.lcssa = phi i16 [ %ss.0, %if.end376.while.end_crit_edge ], [ %inc417, %while.body.while.end_crit_edge ]
  %k.1.lcssa = phi i32 [ %k.0842, %if.end376.while.end_crit_edge ], [ %inc415, %while.body.while.end_crit_edge ]
  %arrayidx418 = getelementptr [4 x i8], ptr %maxPwrT4, i32 0, i32 %i.4843
  %109 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx418, align 1
  %conv419 = zext i8 %110 to i16
  %arrayidx420 = getelementptr [4 x i8], ptr %minPwrT4, i32 0, i32 %i.4843
  %111 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx420, align 1
  %conv421 = zext i8 %112 to i16
  %sub422 = sub nsw i16 %conv419, %conv421
  %div423789 = sdiv i16 %sub422, 2
  %narrow = add nsw i16 %div423789, 1
  %113 = ptrtoint ptr %83 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %83, align 2
  %conv428 = trunc i16 %114 to i8
  %div433756 = lshr i8 %112, 1
  %add430 = sub i8 %conv429, %div433756
  %sub434 = add i8 %add430, %conv428
  %conv437 = zext i8 %sub434 to i32
  %115 = and i16 %narrow, 255
  %conv438 = zext i16 %115 to i32
  %116 = call i32 @llvm.umin.i32(i32 %conv438, i32 %conv437)
  %conv449824 = sext i16 %ss.1.lcssa to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %conv449824)
  %cmp451825 = icmp sgt i32 %116, %conv449824
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %k.1.lcssa)
  %cmp454826 = icmp slt i32 %k.1.lcssa, 127
  %or.cond762827 = select i1 %cmp451825, i1 %cmp454826, i1 false
  br i1 %or.cond762827, label %while.end.while.body457_crit_edge, label %while.end.while.end464_crit_edge

while.end.while.end464_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end464

while.end.while.body457_crit_edge:                ; preds = %while.end
  br label %while.body457

while.body457:                                    ; preds = %while.body457.while.body457_crit_edge, %while.end.while.body457_crit_edge
  %conv449830 = phi i32 [ %conv449, %while.body457.while.body457_crit_edge ], [ %conv449824, %while.end.while.body457_crit_edge ]
  %k.2829 = phi i32 [ %inc462, %while.body457.while.body457_crit_edge ], [ %k.1.lcssa, %while.end.while.body457_crit_edge ]
  %ss.2828 = phi i16 [ %inc459, %while.body457.while.body457_crit_edge ], [ %ss.1.lcssa, %while.end.while.body457_crit_edge ]
  %inc459 = add i16 %ss.2828, 1
  %arrayidx461 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, i32 0, i32 %i.4843, i32 %conv449830
  %117 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx461, align 1
  %inc462 = add nsw i32 %k.2829, 1
  %arrayidx463 = getelementptr i8, ptr %pPDADCValues, i32 %k.2829
  %119 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx463, align 1
  %conv449 = sext i16 %inc459 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %conv449)
  %cmp451 = icmp sgt i32 %116, %conv449
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %k.2829)
  %cmp454 = icmp slt i32 %k.2829, 126
  %or.cond762 = select i1 %cmp451, i1 %cmp454, i1 false
  br i1 %or.cond762, label %while.body457.while.body457_crit_edge, label %while.body457.while.end464_crit_edge

while.body457.while.end464_crit_edge:             ; preds = %while.body457
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end464

while.body457.while.body457_crit_edge:            ; preds = %while.body457
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body457

while.end464:                                     ; preds = %while.body457.while.end464_crit_edge, %while.end.while.end464_crit_edge
  %conv492833.pre-phi = phi i32 [ %conv449824, %while.end.while.end464_crit_edge ], [ %conv449, %while.body457.while.end464_crit_edge ]
  %ss.2.lcssa = phi i16 [ %ss.1.lcssa, %while.end.while.end464_crit_edge ], [ %inc459, %while.body457.while.end464_crit_edge ]
  %k.2.lcssa = phi i32 [ %k.1.lcssa, %while.end.while.end464_crit_edge ], [ %inc462, %while.body457.while.end464_crit_edge ]
  %sub467 = add nsw i32 %conv438, -1
  %arrayidx468 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, i32 0, i32 %i.4843, i32 %sub467
  %120 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx468, align 1
  %conv469 = zext i8 %121 to i32
  %sub472 = add nsw i32 %conv438, -2
  %arrayidx473 = getelementptr [4 x [64 x i8]], ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, i32 0, i32 %i.4843, i32 %sub472
  %122 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx473, align 1
  %conv474 = zext i8 %123 to i32
  %sub475 = sub nsw i32 %conv469, %conv474
  %124 = call i32 @llvm.smax.i32(i32 %sub475, i32 1)
  call void @__sanitizer_cov_trace_cmp4(i32 %conv492833.pre-phi, i32 %conv437)
  %cmp494.not834 = icmp sle i32 %conv492833.pre-phi, %conv437
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %k.2.lcssa)
  %cmp497835 = icmp slt i32 %k.2.lcssa, 127
  %or.cond764836 = select i1 %cmp494.not834, i1 %cmp497835, i1 false
  br i1 %or.cond764836, label %while.body500.lr.ph, label %while.end464.for.inc528_crit_edge

while.end464.for.inc528_crit_edge:                ; preds = %while.end464
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc528

while.body500.lr.ph:                              ; preds = %while.end464
  %sub508 = sub nsw i32 1, %116
  br label %while.body500

while.body500:                                    ; preds = %while.body500.while.body500_crit_edge, %while.body500.lr.ph
  %conv492839 = phi i32 [ %conv492833.pre-phi, %while.body500.lr.ph ], [ %conv492, %while.body500.while.body500_crit_edge ]
  %k.3838 = phi i32 [ %k.2.lcssa, %while.body500.lr.ph ], [ %inc523, %while.body500.while.body500_crit_edge ]
  %ss.3837 = phi i16 [ %ss.2.lcssa, %while.body500.lr.ph ], [ %inc525, %while.body500.while.body500_crit_edge ]
  %125 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx468, align 1
  %conv505 = zext i8 %126 to i32
  %add509 = add nsw i32 %sub508, %conv492839
  %mul511 = mul nsw i32 %add509, %124
  %add512 = add nsw i32 %mul511, %conv505
  %sext = shl i32 %add512, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %sext)
  %cmp515 = icmp sgt i32 %sext, 16711680
  %127 = trunc i32 %add512 to i8
  %conv522 = select i1 %cmp515, i8 -1, i8 %127
  %inc523 = add nsw i32 %k.3838, 1
  %arrayidx524 = getelementptr i8, ptr %pPDADCValues, i32 %k.3838
  %128 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv522, ptr %arrayidx524, align 1
  %inc525 = add i16 %ss.3837, 1
  %conv492 = sext i16 %inc525 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv492, i32 %conv437)
  %cmp494.not = icmp sle i32 %conv492, %conv437
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %k.3838)
  %cmp497 = icmp slt i32 %k.3838, 126
  %or.cond764 = select i1 %cmp494.not, i1 %cmp497, i1 false
  br i1 %or.cond764, label %while.body500.while.body500_crit_edge, label %while.body500.for.inc528_crit_edge

while.body500.for.inc528_crit_edge:               ; preds = %while.body500
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc528

while.body500.while.body500_crit_edge:            ; preds = %while.body500
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body500

for.inc528:                                       ; preds = %while.body500.for.inc528_crit_edge, %while.end464.for.inc528_crit_edge
  %k.3.lcssa = phi i32 [ %k.2.lcssa, %while.end464.for.inc528_crit_edge ], [ %inc523, %while.body500.for.inc528_crit_edge ]
  %inc529 = add nuw nsw i32 %i.4843, 1
  %exitcond864.not = icmp eq i32 %inc529, %conv309.pre-phi
  br i1 %exitcond864.not, label %for.inc528.for.end530_crit_edge, label %for.inc528.for.body312_crit_edge

for.inc528.for.body312_crit_edge:                 ; preds = %for.inc528
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body312

for.inc528.for.end530_crit_edge:                  ; preds = %for.inc528
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end530

for.end530:                                       ; preds = %for.inc528.for.end530_crit_edge, %if.end307.for.end530_crit_edge, %if.then64.for.end530_crit_edge, %for.cond102.preheader.for.end530_crit_edge, %for.cond29.preheader.for.end530_crit_edge, %ath9k_hw_get_lower_upper_index.exit.for.end530_crit_edge
  %k.0.lcssa = phi i32 [ 0, %if.end307.for.end530_crit_edge ], [ 0, %ath9k_hw_get_lower_upper_index.exit.for.end530_crit_edge ], [ 0, %if.then64.for.end530_crit_edge ], [ 0, %for.cond102.preheader.for.end530_crit_edge ], [ 0, %for.cond29.preheader.for.end530_crit_edge ], [ %k.3.lcssa, %for.inc528.for.end530_crit_edge ]
  %i.4.lcssa = phi i32 [ 0, %if.end307.for.end530_crit_edge ], [ 0, %ath9k_hw_get_lower_upper_index.exit.for.end530_crit_edge ], [ 0, %if.then64.for.end530_crit_edge ], [ 0, %for.cond102.preheader.for.end530_crit_edge ], [ 0, %for.cond29.preheader.for.end530_crit_edge ], [ %conv309.pre-phi, %for.inc528.for.end530_crit_edge ]
  %129 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %7, label %if.else533 [
    i32 320, label %for.end530.if.end537_crit_edge
    i32 192, label %for.end530.if.end537_crit_edge899
  ]

for.end530.if.end537_crit_edge899:                ; preds = %for.end530
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end537

for.end530.if.end537_crit_edge:                   ; preds = %for.end530
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end537

if.else533:                                       ; preds = %for.end530
  call void @__sanitizer_cov_trace_pc() #11
  %sub534 = add nsw i32 %i.4.lcssa, -1
  %arrayidx535 = getelementptr i16, ptr %pPdGainBoundaries, i32 %sub534
  %130 = ptrtoint ptr %arrayidx535 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx535, align 2
  br label %if.end537

if.end537:                                        ; preds = %if.else533, %for.end530.if.end537_crit_edge, %for.end530.if.end537_crit_edge899
  %pdgain_boundary_default.0 = phi i16 [ %131, %if.else533 ], [ 58, %for.end530.if.end537_crit_edge ], [ 58, %for.end530.if.end537_crit_edge899 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.4.lcssa)
  %cmp539847 = icmp slt i32 %i.4.lcssa, 4
  br i1 %cmp539847, label %while.body541, label %if.end537.while.cond546.preheader_crit_edge

if.end537.while.cond546.preheader_crit_edge:      ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond546.preheader

while.cond546.preheader:                          ; preds = %while.body541.3, %while.body541.2.while.cond546.preheader_crit_edge, %while.body541.1.while.cond546.preheader_crit_edge, %while.body541.while.cond546.preheader_crit_edge, %if.end537.while.cond546.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %k.0.lcssa)
  %cmp547849 = icmp slt i32 %k.0.lcssa, 128
  br i1 %cmp547849, label %while.body549.lver.check, label %while.cond546.preheader.while.end554_crit_edge

while.cond546.preheader.while.end554_crit_edge:   ; preds = %while.cond546.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end554

while.body549.lver.check:                         ; preds = %while.cond546.preheader
  %132 = add i32 %k.0.lcssa, -1
  %uglygep = getelementptr i8, ptr %pPDADCValues, i32 %132
  %133 = getelementptr i8, ptr %pPDADCValues, i32 126
  %134 = icmp ult ptr %133, %uglygep
  %uglygep884 = getelementptr i8, ptr %pPDADCValues, i32 %k.0.lcssa
  %135 = getelementptr i8, ptr %pPDADCValues, i32 127
  %136 = icmp ult ptr %135, %uglygep884
  %137 = or i1 %134, %136
  br i1 %137, label %while.body549.lver.check.while.body549.lver.orig_crit_edge, label %while.body549.ph

while.body549.lver.check.while.body549.lver.orig_crit_edge: ; preds = %while.body549.lver.check
  br label %while.body549.lver.orig

while.body549.lver.orig:                          ; preds = %while.body549.lver.orig.while.body549.lver.orig_crit_edge, %while.body549.lver.check.while.body549.lver.orig_crit_edge
  %k.5850.lver.orig = phi i32 [ %inc553.lver.orig, %while.body549.lver.orig.while.body549.lver.orig_crit_edge ], [ %k.0.lcssa, %while.body549.lver.check.while.body549.lver.orig_crit_edge ]
  %sub550.lver.orig = add i32 %k.5850.lver.orig, -1
  %arrayidx551.lver.orig = getelementptr i8, ptr %pPDADCValues, i32 %sub550.lver.orig
  %138 = ptrtoint ptr %arrayidx551.lver.orig to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx551.lver.orig, align 1
  %arrayidx552.lver.orig = getelementptr i8, ptr %pPDADCValues, i32 %k.5850.lver.orig
  %140 = ptrtoint ptr %arrayidx552.lver.orig to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx552.lver.orig, align 1
  %inc553.lver.orig = add i32 %k.5850.lver.orig, 1
  %exitcond867.not.lver.orig = icmp eq i32 %inc553.lver.orig, 128
  br i1 %exitcond867.not.lver.orig, label %while.body549.lver.orig.while.end554_crit_edge, label %while.body549.lver.orig.while.body549.lver.orig_crit_edge

while.body549.lver.orig.while.body549.lver.orig_crit_edge: ; preds = %while.body549.lver.orig
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body549.lver.orig

while.body549.lver.orig.while.end554_crit_edge:   ; preds = %while.body549.lver.orig
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end554

while.body549.ph:                                 ; preds = %while.body549.lver.check
  %141 = add i32 %k.0.lcssa, -1
  %uglygep886 = getelementptr i8, ptr %pPDADCValues, i32 %141
  %142 = ptrtoint ptr %uglygep886 to i32
  call void @__asan_load1_noabort(i32 %142)
  %load_initial = load i8, ptr %uglygep886, align 1
  br label %while.body549

while.body541:                                    ; preds = %if.end537
  %arrayidx543 = getelementptr i16, ptr %pPdGainBoundaries, i32 %i.4.lcssa
  %143 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %pdgain_boundary_default.0, ptr %arrayidx543, align 2
  %inc544 = add nuw nsw i32 %i.4.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc544)
  %exitcond865.not = icmp eq i32 %inc544, 4
  br i1 %exitcond865.not, label %while.body541.while.cond546.preheader_crit_edge, label %while.body541.1

while.body541.while.cond546.preheader_crit_edge:  ; preds = %while.body541
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond546.preheader

while.body541.1:                                  ; preds = %while.body541
  %arrayidx543.1 = getelementptr i16, ptr %pPdGainBoundaries, i32 %inc544
  %144 = ptrtoint ptr %arrayidx543.1 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %pdgain_boundary_default.0, ptr %arrayidx543.1, align 2
  %inc544.1 = add nuw nsw i32 %i.4.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc544.1)
  %exitcond865.not.1 = icmp eq i32 %inc544.1, 4
  br i1 %exitcond865.not.1, label %while.body541.1.while.cond546.preheader_crit_edge, label %while.body541.2

while.body541.1.while.cond546.preheader_crit_edge: ; preds = %while.body541.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond546.preheader

while.body541.2:                                  ; preds = %while.body541.1
  %arrayidx543.2 = getelementptr i16, ptr %pPdGainBoundaries, i32 %inc544.1
  %145 = ptrtoint ptr %arrayidx543.2 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %pdgain_boundary_default.0, ptr %arrayidx543.2, align 2
  %inc544.2 = add nuw nsw i32 %i.4.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc544.2)
  %exitcond865.not.2 = icmp eq i32 %inc544.2, 4
  br i1 %exitcond865.not.2, label %while.body541.2.while.cond546.preheader_crit_edge, label %while.body541.3

while.body541.2.while.cond546.preheader_crit_edge: ; preds = %while.body541.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond546.preheader

while.body541.3:                                  ; preds = %while.body541.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx543.3 = getelementptr i16, ptr %pPdGainBoundaries, i32 %inc544.2
  %146 = ptrtoint ptr %arrayidx543.3 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %pdgain_boundary_default.0, ptr %arrayidx543.3, align 2
  br label %while.cond546.preheader

while.body549:                                    ; preds = %while.body549.while.body549_crit_edge, %while.body549.ph
  %k.5850 = phi i32 [ %inc553, %while.body549.while.body549_crit_edge ], [ %k.0.lcssa, %while.body549.ph ]
  %arrayidx552 = getelementptr i8, ptr %pPDADCValues, i32 %k.5850
  %147 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %load_initial, ptr %arrayidx552, align 1
  %inc553 = add i32 %k.5850, 1
  %exitcond867.not = icmp eq i32 %inc553, 128
  br i1 %exitcond867.not, label %while.body549.while.end554_crit_edge, label %while.body549.while.body549_crit_edge

while.body549.while.body549_crit_edge:            ; preds = %while.body549
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body549

while.body549.while.end554_crit_edge:             ; preds = %while.body549
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end554

while.end554:                                     ; preds = %while.body549.while.end554_crit_edge, %while.body549.lver.orig.while.end554_crit_edge, %while.cond546.preheader.while.end554_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxPwrT4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minPwrT4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_hw_eeprom_init(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %1)
  %cmp = icmp ugt i32 %1, 447
  br i1 %cmp, label %entry.if.end18_crit_edge, label %if.else

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else:                                          ; preds = %entry
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %1, label %if.else15 [
    i32 384, label %if.else.if.end18_crit_edge
    i32 192, label %if.else.if.then13_crit_edge
    i32 320, label %if.else.if.then13_crit_edge35
  ]

if.else.if.then13_crit_edge35:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.else.if.then13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.else.if.then13_crit_edge, %if.else.if.then13_crit_edge35
  br label %if.end18

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.then13, %if.else.if.end18_crit_edge, %entry.if.end18_crit_edge
  %eep_ar9287_ops.sink = phi ptr [ @eep_def_ops, %if.else15 ], [ @eep_4k_ops, %if.then13 ], [ @eep_ar9300_ops, %entry.if.end18_crit_edge ], [ @eep_ar9287_ops, %if.else.if.end18_crit_edge ]
  %eep_ops5 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %3 = ptrtoint ptr %eep_ops5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %eep_ar9287_ops.sink, ptr %eep_ops5, align 4
  %fill_eeprom = getelementptr inbounds %struct.eeprom_ops, ptr %eep_ar9287_ops.sink, i32 0, i32 2
  %4 = ptrtoint ptr %fill_eeprom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fill_eeprom, align 4
  %call = tail call zeroext i1 %5(ptr noundef %ah) #9
  br i1 %call, label %if.end21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %eep_ops19 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %6 = ptrtoint ptr %eep_ops19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eep_ops19, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call23 = tail call i32 %9(ptr noundef %ah) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end21 ], [ -5, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 162, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 177, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 183, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 187, i32 4}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 191, i32 4}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 199, i32 4}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 211, i32 3}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 230, i32 3}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 243, i32 3}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 459, i32 3}
!23 = !{ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableL, !24, !"vpdTableL", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 475, i32 12}
!25 = !{ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableR, !26, !"vpdTableR", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 477, i32 12}
!27 = !{ptr @ath9k_hw_get_gain_boundaries_pdadcs.vpdTableI, !28, !"vpdTableI", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/eeprom.c", i32 479, i32 12}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{!"auto-init"}
