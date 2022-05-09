; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/common-beacon.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/common-beacon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath9k_cmn_beacon_config_sta\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_beacon_config_sta\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_beacon_config_sta\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_beacon_config_sta:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_beacon_config_sta\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_beacon_config_sta:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_beacon_config_adhoc\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_beacon_config_adhoc\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_beacon_config_adhoc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_beacon_config_adhoc:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_beacon_config_adhoc\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_beacon_config_adhoc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_beacon_config_ap\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_beacon_config_ap\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_beacon_config_ap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_beacon_config_ap:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_beacon_config_ap\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_beacon_config_ap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.ath_beacon_config = type { ptr, i32, i16, i16, i8, i8, i8, i32, i32 }
%struct.ath9k_beacon_state = type { i32, i32, i32, i32, i16, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"STA is not yet associated..skipping beacon config\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bmiss: %u sleep: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_beacon_config_sta = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_beacon_config_sta = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_beacon_config_sta = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_beacon_config_sta to i32), ptr @__kstrtab_ath9k_cmn_beacon_config_sta, ptr @__kstrtabns_ath9k_cmn_beacon_config_sta }, section "___ksymtab+ath9k_cmn_beacon_config_sta", align 4
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"IBSS (%s) nexttbtt: %u intval: %u conf_intval: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_beacon_config_adhoc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_beacon_config_adhoc = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_beacon_config_adhoc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_beacon_config_adhoc to i32), ptr @__kstrtab_ath9k_cmn_beacon_config_adhoc, ptr @__kstrtabns_ath9k_cmn_beacon_config_adhoc }, section "___ksymtab+ath9k_cmn_beacon_config_adhoc", align 4
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"AP (%s) nexttbtt: %u intval: %u conf_intval: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_beacon_config_ap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_beacon_config_ap = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_beacon_config_ap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_beacon_config_ap to i32), ptr @__kstrtab_ath9k_cmn_beacon_config_ap, ptr @__kstrtabns_ath9k_cmn_beacon_config_ap }, section "___ksymtab+ath9k_cmn_beacon_config_ap", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 51, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 108, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 132, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [50 x i8] c"../drivers/net/wireless/ath/ath9k/common-beacon.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 161, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_ath9k_cmn_beacon_config_adhoc, ptr @__ksymtab_ath9k_cmn_beacon_config_ap, ptr @__ksymtab_ath9k_cmn_beacon_config_sta, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_cmn_beacon_config_sta(ptr noundef %ah, ptr nocapture noundef %conf, ptr nocapture noundef %bs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %op_flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_mask, align 4
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #3
  br label %cleanup

if.end4:                                          ; preds = %entry
  %5 = call ptr @memset(ptr %bs, i32 0, i32 28)
  %beacon_interval = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 1
  %6 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %beacon_interval, align 4
  %intval = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 8
  %8 = ptrtoint ptr %intval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %intval, align 4
  %dtim_period = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 2
  %9 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dtim_period, align 4
  %call6 = tail call i64 @ath9k_hw_gettsf64(ptr noundef %ah) #3
  %11 = ptrtoint ptr %intval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intval, align 4
  %sw_beacon_response_time.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %sw_beacon_response_time.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sw_beacon_response_time.i, align 4
  %add.i = shl i32 %14, 10
  %shl.i = add i32 %add.i, 2048
  %conv.i = sext i32 %shl.i to i64
  %add1.i = add i64 %call6, %conv.i
  %shl2.i = shl i32 %12, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add1.i)
  %cmp164.i.i = icmp ult i64 %add1.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !26

if.then168.i.i:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %conv169.i.i = trunc i64 %add1.i to i32
  %rem170.i.i = urem i32 %conv169.i.i, %shl2.i
  br label %ath9k_get_next_tbtt.exit

if.else174.i.i:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl2.i, i64 %add1.i) #6, !srcloc !27
  %asmresult.i3.i.i = extractvalue { i64, i64 } %15, 0
  %shr.i.i.i = lshr i64 %asmresult.i3.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %.pre.i = trunc i64 %add1.i to i32
  br label %ath9k_get_next_tbtt.exit

ath9k_get_next_tbtt.exit:                         ; preds = %if.else174.i.i, %if.then168.i.i
  %conv3.pre-phi.i = phi i32 [ %conv169.i.i, %if.then168.i.i ], [ %.pre.i, %if.else174.i.i ]
  %__rem.0.i.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %add4.i = add i32 %conv3.pre-phi.i, %shl2.i
  %sub.i = sub i32 %add4.i, %__rem.0.i.i
  %nexttbtt = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 7
  %16 = ptrtoint ptr %nexttbtt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i, ptr %nexttbtt, align 4
  %bs_intval = getelementptr inbounds %struct.ath9k_beacon_state, ptr %bs, i32 0, i32 2
  %17 = ptrtoint ptr %bs_intval to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl2.i, ptr %bs_intval, align 4
  %18 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dtim_period, align 4
  %conv11 = zext i16 %19 to i32
  %mul13 = mul i32 %shl2.i, %conv11
  %bs_dtimperiod = getelementptr inbounds %struct.ath9k_beacon_state, ptr %bs, i32 0, i32 3
  %20 = ptrtoint ptr %bs_dtimperiod to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul13, ptr %bs_dtimperiod, align 4
  %21 = load i32, ptr %nexttbtt, align 4
  %22 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bs, align 4
  %23 = load i32, ptr %nexttbtt, align 4
  %bs_nextdtim = getelementptr inbounds %struct.ath9k_beacon_state, ptr %bs, i32 0, i32 1
  %24 = ptrtoint ptr %bs_nextdtim to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bs_nextdtim, align 4
  %25 = load i16, ptr %dtim_period, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp = icmp ugt i16 %25, 1
  br i1 %cmp, label %if.then19, label %ath9k_get_next_tbtt.exit.if.end22_crit_edge

ath9k_get_next_tbtt.exit.if.end22_crit_edge:      ; preds = %ath9k_get_next_tbtt.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then19:                                        ; preds = %ath9k_get_next_tbtt.exit
  %conv = zext i16 %10 to i32
  %26 = ptrtoint ptr %sw_beacon_response_time.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sw_beacon_response_time.i, align 4
  %add.i112 = shl i32 %27, 10
  %shl.i113 = add i32 %add.i112, 2048
  %conv.i114 = sext i32 %shl.i113 to i64
  %add1.i115 = add i64 %call6, %conv.i114
  %mul = shl i32 %7, 10
  %shl2.i116 = mul i32 %mul, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add1.i115)
  %cmp164.i.i223 = icmp ult i64 %add1.i115, 4294967296
  br i1 %cmp164.i.i223, label %if.then168.i.i227, label %if.else174.i.i232, !prof !26

if.then168.i.i227:                                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  %conv169.i.i225 = trunc i64 %add1.i115 to i32
  %rem170.i.i226 = urem i32 %conv169.i.i225, %shl2.i116
  br label %ath9k_get_next_tbtt.exit237

if.else174.i.i232:                                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl2.i116, i64 %add1.i115) #6, !srcloc !27
  %asmresult.i3.i.i228 = extractvalue { i64, i64 } %28, 0
  %shr.i.i.i229 = lshr i64 %asmresult.i3.i.i228, 32
  %conv.i.i.i230 = trunc i64 %shr.i.i.i229 to i32
  %.pre.i231 = trunc i64 %add1.i115 to i32
  br label %ath9k_get_next_tbtt.exit237

ath9k_get_next_tbtt.exit237:                      ; preds = %if.else174.i.i232, %if.then168.i.i227
  %conv3.pre-phi.i233 = phi i32 [ %conv169.i.i225, %if.then168.i.i227 ], [ %.pre.i231, %if.else174.i.i232 ]
  %__rem.0.i.i234 = phi i32 [ %rem170.i.i226, %if.then168.i.i227 ], [ %conv.i.i.i230, %if.else174.i.i232 ]
  %add4.i235 = add i32 %conv3.pre-phi.i233, %shl2.i116
  %sub.i236 = sub i32 %add4.i235, %__rem.0.i.i234
  %29 = ptrtoint ptr %bs_nextdtim to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.i236, ptr %bs_nextdtim, align 4
  br label %if.end22

if.end22:                                         ; preds = %ath9k_get_next_tbtt.exit237, %ath9k_get_next_tbtt.exit.if.end22_crit_edge
  %bmiss_timeout = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 3
  %30 = ptrtoint ptr %bmiss_timeout to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bmiss_timeout, align 2
  %conv23 = zext i16 %31 to i32
  %32 = ptrtoint ptr %intval to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %intval, align 4
  %add = add nsw i32 %conv23, -1
  %sub = add i32 %add, %33
  %div = udiv i32 %sub, %33
  %conv26 = trunc i32 %div to i16
  %bs_bmissthreshold = getelementptr inbounds %struct.ath9k_beacon_state, ptr %bs, i32 0, i32 4
  %34 = ptrtoint ptr %bs_bmissthreshold to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv26, ptr %bs_bmissthreshold, align 4
  %conv28 = and i32 %div, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv28)
  %cmp29 = icmp ugt i32 %conv28, 15
  br i1 %cmp29, label %if.end22.if.end40.sink.split_crit_edge, label %if.else

if.end22.if.end40.sink.split_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40.sink.split

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28)
  %cmp35 = icmp eq i32 %conv28, 0
  br i1 %cmp35, label %if.else.if.end40.sink.split_crit_edge, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.else.if.end40.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.else.if.end40.sink.split_crit_edge, %if.end22.if.end40.sink.split_crit_edge
  %.sink = phi i16 [ 15, %if.end22.if.end40.sink.split_crit_edge ], [ 1, %if.else.if.end40.sink.split_crit_edge ]
  %35 = ptrtoint ptr %bs_bmissthreshold to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %.sink, ptr %bs_bmissthreshold, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.else.if.end40_crit_edge
  %36 = ptrtoint ptr %intval to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %intval, align 4
  %add43 = add i32 %37, 96
  %38 = urem i32 %add43, %37
  %mul45 = sub i32 %add43, %38
  %shl46 = shl i32 %mul45, 10
  %bs_sleepduration = getelementptr inbounds %struct.ath9k_beacon_state, ptr %bs, i32 0, i32 5
  %39 = tail call i32 @llvm.umin.i32(i32 %shl46, i32 %mul13)
  %40 = ptrtoint ptr %bs_sleepduration to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %bs_sleepduration, align 4
  %bs_tsfoor_threshold = getelementptr inbounds %struct.ath9k_beacon_state, ptr %bs, i32 0, i32 6
  %41 = ptrtoint ptr %bs_tsfoor_threshold to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16960, ptr %bs_tsfoor_threshold, align 4
  %debug_mask56 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %debug_mask56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug_mask56, align 4
  %and57 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end40.cleanup_crit_edge, label %if.then59

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then59:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %bs_bmissthreshold to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %bs_bmissthreshold, align 4
  %conv61 = zext i16 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %conv61, i32 noundef %39) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end40.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %do.body.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ath9k_hw_gettsf64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_beacon_config_adhoc(ptr noundef %ah, ptr nocapture noundef %conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %beacon_interval = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 1
  %0 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beacon_interval, align 4
  %shl = shl i32 %1, 10
  %intval = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 8
  %2 = ptrtoint ptr %intval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %intval, align 4
  %ibss_creator = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 6
  %3 = ptrtoint ptr %ibss_creator to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ibss_creator, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call i64 @ath9k_hw_gettsf64(ptr noundef %ah) #3
  %5 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %beacon_interval, align 4
  %sw_beacon_response_time.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %sw_beacon_response_time.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sw_beacon_response_time.i, align 4
  %add.i = shl i32 %8, 10
  %shl.i = add i32 %add.i, 2048
  %conv.i = sext i32 %shl.i to i64
  %add1.i = add i64 %call2, %conv.i
  %shl2.i = shl i32 %6, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add1.i)
  %cmp164.i.i = icmp ult i64 %add1.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !26

if.then168.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %conv169.i.i = trunc i64 %add1.i to i32
  %rem170.i.i = urem i32 %conv169.i.i, %shl2.i
  br label %ath9k_get_next_tbtt.exit

if.else174.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl2.i, i64 %add1.i) #6, !srcloc !27
  %asmresult.i3.i.i = extractvalue { i64, i64 } %9, 0
  %shr.i.i.i = lshr i64 %asmresult.i3.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %.pre.i = trunc i64 %add1.i to i32
  br label %ath9k_get_next_tbtt.exit

ath9k_get_next_tbtt.exit:                         ; preds = %if.else174.i.i, %if.then168.i.i
  %conv3.pre-phi.i = phi i32 [ %conv169.i.i, %if.then168.i.i ], [ %.pre.i, %if.else174.i.i ]
  %__rem.0.i.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %add4.i = add i32 %conv3.pre-phi.i, %shl2.i
  %sub.i = sub i32 %add4.i, %__rem.0.i.i
  br label %if.end

if.end:                                           ; preds = %ath9k_get_next_tbtt.exit, %entry.if.end_crit_edge
  %sub.i.sink = phi i32 [ %sub.i, %ath9k_get_next_tbtt.exit ], [ %shl, %entry.if.end_crit_edge ]
  %nexttbtt5 = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 7
  %10 = ptrtoint ptr %nexttbtt5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.i.sink, ptr %nexttbtt5, align 4
  %enable_beacon = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 5
  %11 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_beacon, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  %imask9 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 36
  %13 = ptrtoint ptr %imask9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %imask9, align 4
  %and = and i32 %14, -65537
  %masksel = select i1 %tobool6.not, i32 0, i32 65536
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %imask9, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_mask, align 4
  %and11 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.do.end_crit_edge, label %if.then13

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable_beacon, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  %cond = select i1 %tobool15.not, ptr @.str.5, ptr @.str.4
  %nexttbtt16 = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 7
  %19 = ptrtoint ptr %nexttbtt16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nexttbtt16, align 4
  %21 = ptrtoint ptr %intval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %intval, align 4
  %23 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %beacon_interval, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond, i32 noundef %20, i32 noundef %22, i32 noundef %24) #3
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_beacon_config_ap(ptr noundef %ah, ptr nocapture noundef %conf, i32 noundef %bc_buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %beacon_interval = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 1
  %0 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beacon_interval, align 4
  %shl = shl i32 %1, 10
  %intval = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 8
  %div = udiv i32 %shl, %bc_buf
  %2 = ptrtoint ptr %intval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %intval, align 4
  %call2 = tail call i64 @ath9k_hw_gettsf64(ptr noundef %ah) #3
  %3 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %beacon_interval, align 4
  %sw_beacon_response_time.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %sw_beacon_response_time.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw_beacon_response_time.i, align 4
  %add.i = shl i32 %6, 10
  %shl.i = add i32 %add.i, 2048
  %conv.i = sext i32 %shl.i to i64
  %add1.i = add i64 %call2, %conv.i
  %shl2.i = shl i32 %4, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add1.i)
  %cmp164.i.i = icmp ult i64 %add1.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !26

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv169.i.i = trunc i64 %add1.i to i32
  %rem170.i.i = urem i32 %conv169.i.i, %shl2.i
  br label %ath9k_get_next_tbtt.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl2.i, i64 %add1.i) #6, !srcloc !27
  %asmresult.i3.i.i = extractvalue { i64, i64 } %7, 0
  %shr.i.i.i = lshr i64 %asmresult.i3.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %.pre.i = trunc i64 %add1.i to i32
  br label %ath9k_get_next_tbtt.exit

ath9k_get_next_tbtt.exit:                         ; preds = %if.else174.i.i, %if.then168.i.i
  %conv3.pre-phi.i = phi i32 [ %conv169.i.i, %if.then168.i.i ], [ %.pre.i, %if.else174.i.i ]
  %__rem.0.i.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %add4.i = add i32 %conv3.pre-phi.i, %shl2.i
  %sub.i = sub i32 %add4.i, %__rem.0.i.i
  %nexttbtt = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 7
  %8 = ptrtoint ptr %nexttbtt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %nexttbtt, align 4
  %enable_beacon = getelementptr inbounds %struct.ath_beacon_config, ptr %conf, i32 0, i32 5
  %9 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_beacon, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %imask5 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 36
  %11 = ptrtoint ptr %imask5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %imask5, align 4
  %and = and i32 %12, -65537
  %masksel = select i1 %tobool.not, i32 0, i32 65536
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %imask5, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_mask, align 4
  %and6 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %ath9k_get_next_tbtt.exit.do.end_crit_edge, label %if.then8

ath9k_get_next_tbtt.exit.do.end_crit_edge:        ; preds = %ath9k_get_next_tbtt.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then8:                                         ; preds = %ath9k_get_next_tbtt.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable_beacon, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  %cond = select i1 %tobool10.not, ptr @.str.5, ptr @.str.4
  %17 = ptrtoint ptr %nexttbtt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nexttbtt, align 4
  %19 = ptrtoint ptr %intval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %intval, align 4
  %21 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %beacon_interval, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond, i32 noundef %18, i32 noundef %20, i32 noundef %22) #3
  br label %do.end

do.end:                                           ; preds = %if.then8, %ath9k_get_next_tbtt.exit.do.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/common-beacon.c", i32 51, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/common-beacon.c", i32 108, i32 2}
!5 = !{ptr @__ksymtab_ath9k_cmn_beacon_config_sta, !6, !"__ksymtab_ath9k_cmn_beacon_config_sta", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/common-beacon.c", i32 112, i32 1}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/common-beacon.c", i32 132, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_ath9k_cmn_beacon_config_adhoc, !12, !"__ksymtab_ath9k_cmn_beacon_config_adhoc", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/common-beacon.c", i32 137, i32 1}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/common-beacon.c", i32 161, i32 2}
!15 = !{ptr @__ksymtab_ath9k_cmn_beacon_config_ap, !16, !"__ksymtab_ath9k_cmn_beacon_config_ap", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/common-beacon.c", i32 166, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148986160, i64 2148986440, i64 2148986774, i64 2148987108}
!28 = !{i8 0, i8 2}
