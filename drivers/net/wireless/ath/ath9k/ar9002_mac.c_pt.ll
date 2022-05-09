; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9002_mac.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9002_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath9k_hw_setuprxdesc\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_setuprxdesc\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_setuprxdesc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_setuprxdesc:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_setuprxdesc\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_setuprxdesc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ar5416_desc = type { i32, i32, i32, i32, %union.anon.134 }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ath_tx_info = type { i8, i8, i8, i32, i8, i16, i32, i32, i32, [4 x i32], [4 x i32], [4 x %struct.ath9k_11n_rate_series], i8, i8, i32, i32, i8, [4 x i8] }
%struct.ath9k_11n_rate_series = type { i32, i32, i32, i32, i32 }
%struct.ath_tx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, i32, i32, i32, i32, i32 }

@__kstrtab_ath9k_hw_setuprxdesc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_setuprxdesc = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_setuprxdesc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_setuprxdesc to i32), ptr @__kstrtab_ath9k_hw_setuprxdesc, ptr @__kstrtabns_ath9k_hw_setuprxdesc }, section "___ksymtab+ath9k_hw_setuprxdesc", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"receive FIFO overrun interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received PCI FATAL interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"received PCI PERR interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AR_INTR_SYNC_RADM_CPL_TIMEOUT\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AR_INTR_SYNC_LOCAL_TIMEOUT\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 130, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 183, i32 5 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 187, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 193, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [47 x i8] c"../drivers/net/wireless/ath/ath9k/ar9002_mac.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 200, i32 4 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ath9k_hw_setuprxdesc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ath9k_hw_setuprxdesc(ptr nocapture readnone %ah, ptr nocapture noundef writeonly %ds, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %size, 4095
  %and1 = shl i32 %flags, 8
  %0 = and i32 %and1, 8192
  %1 = or i32 %0, %and
  %ds_ctl1 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 3
  %2 = ptrtoint ptr %ds_ctl1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ds_ctl1, align 4
  %u = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4
  %3 = call ptr @memset(ptr %u, i32 0, i32 36)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ar9002_hw_attach_mac_ops(ptr nocapture noundef writeonly %ah) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_enable = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 1
  %0 = ptrtoint ptr %rx_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ar9002_hw_rx_enable, ptr %rx_enable, align 4
  %set_desc_link = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 2
  %1 = ptrtoint ptr %set_desc_link to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ar9002_hw_set_desc_link, ptr %set_desc_link, align 4
  %get_isr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 4
  %2 = ptrtoint ptr %get_isr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ar9002_hw_get_isr, ptr %get_isr, align 4
  %set_txdesc = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 5
  %3 = ptrtoint ptr %set_txdesc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ar9002_set_txdesc, ptr %set_txdesc, align 4
  %proc_txdesc = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 6
  %4 = ptrtoint ptr %proc_txdesc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ar9002_hw_proc_txdesc, ptr %proc_txdesc, align 4
  %get_duration = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 7
  %5 = ptrtoint ptr %get_duration to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ar9002_hw_get_duration, ptr %get_duration, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_rx_enable(ptr noundef %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %3)
  %cmp = icmp ugt i32 %3, 447
  %cond = select i1 %cmp, i32 12, i32 4
  tail call void %1(ptr noundef %ah, i32 noundef %cond, i32 noundef 8) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ar9002_hw_set_desc_link(ptr nocapture noundef writeonly %ds, i32 noundef %ds_link) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ds_link, ptr %ds, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar9002_hw_get_isr(ptr noundef %ah, ptr nocapture noundef %masked, ptr noundef writeonly %sync_cause_p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp = icmp eq i32 %1, 20
  br i1 %cmp, label %if.end39, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %1)
  %cmp3 = icmp eq i32 %1, 768
  %cond = select i1 %cmp3, i32 16416, i32 16440
  %call4 = tail call i32 %3(ptr noundef %ah, i32 noundef %cond) #6
  %and = and i32 %call4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end23_crit_edge, label %if.then5

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then5:                                         ; preds = %if.then
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %6 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %7)
  %cmp10 = icmp eq i32 %7, 20
  %cond11 = select i1 %cmp10, i32 131140, i32 28740
  %call12 = tail call i32 %5(ptr noundef %ah, i32 noundef %cond11) #6
  %8 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %9)
  %cmp15 = icmp eq i32 %9, 20
  %cond16 = select i1 %cmp15, i32 63, i32 15
  %and17 = and i32 %cond16, %call12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 2
  br i1 %cmp18, label %if.then19, label %if.then5.if.end23_crit_edge

if.then5.if.end23_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ah, align 4
  %call22 = tail call i32 %11(ptr noundef %ah, i32 noundef 128) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.then5.if.end23_crit_edge, %if.then.if.end23_crit_edge
  %isr.0 = phi i32 [ %call22, %if.then19 ], [ 0, %if.then5.if.end23_crit_edge ], [ 0, %if.then.if.end23_crit_edge ]
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %14 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %15)
  %cmp28 = icmp eq i32 %15, 768
  %cond29 = select i1 %cmp28, i32 16400, i32 16424
  %call30 = tail call i32 %13(ptr noundef %ah, i32 noundef %cond29) #6
  %and31 = and i32 %call30, 147296
  %16 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %masked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isr.0)
  %tobool32.not = icmp eq i32 %isr.0, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.end23.if.then41_crit_edge

if.end23.if.then41_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

land.lhs.true:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool33.not = icmp eq i32 %and31, 0
  br i1 %tobool33.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end206_crit_edge

land.lhs.true.if.end206_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %entry
  %17 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %masked, align 4
  %18 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ah, align 4
  %call38 = tail call i32 %19(ptr noundef %ah, i32 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool40.not = icmp eq i32 %call38, 0
  br i1 %tobool40.not, label %if.end39.if.end206_crit_edge, label %if.end39.if.then41_crit_edge

if.end39.if.then41_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.end39.if.end206_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

if.then41:                                        ; preds = %if.end39.if.then41_crit_edge, %if.end23.if.then41_crit_edge
  %sync_cause.0453 = phi i32 [ 0, %if.end39.if.then41_crit_edge ], [ %and31, %if.end23.if.then41_crit_edge ]
  %isr.1452 = phi i32 [ %call38, %if.end39.if.then41_crit_edge ], [ %isr.0, %if.end23.if.then41_crit_edge ]
  %and42 = and i32 %isr.1452, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then41.if.end88_crit_edge, label %if.then44

if.then41.if.end88_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then44:                                        ; preds = %if.then41
  %20 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ah, align 4
  %call47 = tail call i32 %21(ptr noundef %ah, i32 noundef 140) #6
  %and48 = lshr i32 %call47, 3
  %22 = and i32 %and48, 2097152
  %and52 = lshr i32 %call47, 7
  %23 = and i32 %and52, 4194304
  %24 = and i32 %and48, 8388608
  %and62 = and i32 %call47, 33554432
  %and67 = shl i32 %call47, 6
  %25 = and i32 %and67, 536870912
  %26 = and i32 %and67, 268435456
  %and77 = lshr i32 %call47, 4
  %27 = and i32 %and77, 67108864
  %28 = or i32 %22, %and62
  %29 = or i32 %28, %23
  %30 = or i32 %29, %24
  %31 = or i32 %30, %25
  %32 = or i32 %31, %26
  %33 = or i32 %32, %27
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %caps, align 4
  %and82 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.then84, label %if.then44.if.end88_crit_edge

if.then44.if.end88_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then84:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  tail call void %37(ptr noundef %ah, i32 noundef %call47, i32 noundef 140) #6
  %and86 = and i32 %isr.1452, -8388609
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.then44.if.end88_crit_edge, %if.then41.if.end88_crit_edge
  %isr.3 = phi i32 [ %isr.1452, %if.then41.if.end88_crit_edge ], [ %isr.1452, %if.then44.if.end88_crit_edge ], [ %and86, %if.then84 ]
  %mask2.7 = phi i32 [ 0, %if.then41.if.end88_crit_edge ], [ %33, %if.then44.if.end88_crit_edge ], [ %33, %if.then84 ]
  %38 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %caps, align 4
  %and90 = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end96_crit_edge, label %if.then92

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ah, align 4
  %call95 = tail call i32 %41(ptr noundef %ah, i32 noundef 192) #6
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.end88.if.end96_crit_edge
  %isr.4 = phi i32 [ %call95, %if.then92 ], [ %isr.3, %if.end88.if.end96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %isr.4)
  %cmp97 = icmp eq i32 %isr.4, -1
  br i1 %cmp97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %masked, align 4
  br label %cleanup

if.end99:                                         ; preds = %if.end96
  %and100 = and i32 %isr.4, 17160378
  %and101 = and i32 %isr.4, -2130706427
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp ne i32 %and101, 0
  %or104 = zext i1 %tobool102.not to i32
  %spec.select442 = or i32 %and100, %or104
  %43 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select442, ptr %masked, align 4
  %and106 = and i32 %isr.4, 1472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end99.if.end146_crit_edge, label %if.then108

if.end99.if.end146_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then108:                                       ; preds = %if.end99
  %or109 = or i32 %spec.select442, 64
  %44 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or109, ptr %masked, align 4
  %45 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %caps, align 4
  %and111 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %47 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ah, align 4
  br i1 %tobool112.not, label %if.else120, label %if.then113

if.then113:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  %call116 = tail call i32 %48(ptr noundef %ah, i32 noundef 196) #6
  %49 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ah, align 4
  %call119 = tail call i32 %50(ptr noundef %ah, i32 noundef 200) #6
  br label %if.end132

if.else120:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  %call123 = tail call i32 %48(ptr noundef %ah, i32 noundef 132) #6
  %write125 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %51 = ptrtoint ptr %write125 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write125, align 4
  tail call void %52(ptr noundef %ah, i32 noundef %call123, i32 noundef 132) #6
  %53 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ah, align 4
  %call128 = tail call i32 %54(ptr noundef %ah, i32 noundef 136) #6
  %55 = ptrtoint ptr %write125 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write125, align 4
  tail call void %56(ptr noundef %ah, i32 noundef %call128, i32 noundef 136) #6
  %and131 = and i32 %isr.4, -1473
  br label %if.end132

if.end132:                                        ; preds = %if.else120, %if.then113
  %isr.5 = phi i32 [ %isr.4, %if.then113 ], [ %and131, %if.else120 ]
  %s0_s.0 = phi i32 [ %call116, %if.then113 ], [ %call123, %if.else120 ]
  %s1_s.0 = phi i32 [ %call119, %if.then113 ], [ %call128, %if.else120 ]
  %intr_txqs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 73
  %and134 = lshr i32 %s0_s.0, 16
  %and133439 = or i32 %and134, %s0_s.0
  %or137440 = or i32 %and133439, %s1_s.0
  %and142 = lshr i32 %s1_s.0, 16
  %or141441 = or i32 %or137440, %and142
  %or145 = and i32 %or141441, 1023
  %57 = ptrtoint ptr %intr_txqs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or145, ptr %intr_txqs, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.end132, %if.end99.if.end146_crit_edge
  %isr.6 = phi i32 [ %isr.5, %if.end132 ], [ %isr.4, %if.end99.if.end146_crit_edge ]
  %and147 = and i32 %isr.6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end146.if.end156_crit_edge, label %do.body

if.end146.if.end156_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

do.body:                                          ; preds = %if.end146
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug_mask, align 4
  %and150 = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body.if.end156_crit_edge, label %if.then152

do.body.if.end156_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then152:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #6
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %do.body.if.end156_crit_edge, %if.end146.if.end156_crit_edge
  %60 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %masked, align 4
  %or155 = or i32 %61, %mask2.7
  store i32 %or155, ptr %masked, align 4
  %62 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %63)
  %cmp159 = icmp eq i32 %63, 20
  %and161 = and i32 %isr.6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  %or.cond = select i1 %cmp159, i1 true, i1 %tobool162.not
  br i1 %or.cond, label %if.end156.if.end206_crit_edge, label %if.then163

if.end156.if.end206_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

if.then163:                                       ; preds = %if.end156
  %64 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %caps, align 4
  %and165 = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  %66 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ah, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %63)
  %cmp172 = icmp ugt i32 %63, 447
  %cond173 = select i1 %cmp172, i32 220, i32 216
  %.sink = select i1 %tobool166.not, i32 152, i32 %cond173
  %call178 = tail call i32 %67(ptr noundef %ah, i32 noundef %.sink) #6
  %and180 = and i32 %call178, 65408
  %intr_gen_timer_trigger = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 107
  %68 = ptrtoint ptr %intr_gen_timer_trigger to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and180, ptr %intr_gen_timer_trigger, align 4
  %and182 = lshr i32 %call178, 16
  %shr183 = and i32 %and182, 65408
  %intr_gen_timer_thresh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 108
  %69 = ptrtoint ptr %intr_gen_timer_thresh to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shr183, ptr %intr_gen_timer_thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool185.not = icmp eq i32 %and180, 0
  br i1 %tobool185.not, label %if.then163.if.end188_crit_edge, label %if.then186

if.then163.if.end188_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

if.then186:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %masked, align 4
  %or187 = or i32 %71, 134217728
  store i32 %or187, ptr %masked, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %if.then163.if.end188_crit_edge
  %and189 = and i32 %call178, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end188.if.end197_crit_edge, label %land.lhs.true191

if.end188.if.end197_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

land.lhs.true191:                                 ; preds = %if.end188
  %72 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %caps, align 4
  %and193 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.then195, label %land.lhs.true191.if.end197_crit_edge

land.lhs.true191.if.end197_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.then195:                                       ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %masked, align 4
  %or196 = or i32 %75, 256
  store i32 %or196, ptr %masked, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %land.lhs.true191.if.end197_crit_edge, %if.end188.if.end197_crit_edge
  %76 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %caps, align 4
  %and199 = and i32 %77, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.then201, label %if.end197.if.end206_crit_edge

if.end197.if.end206_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

if.then201:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  %write203 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %78 = ptrtoint ptr %write203 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write203, align 4
  tail call void %79(ptr noundef %ah, i32 noundef %call178, i32 noundef 152) #6
  %and204 = and i32 %isr.6, -268435457
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %if.end197.if.end206_crit_edge, %if.end156.if.end206_crit_edge, %if.end39.if.end206_crit_edge, %land.lhs.true.if.end206_crit_edge
  %sync_cause.0447460 = phi i32 [ %sync_cause.0453, %if.end156.if.end206_crit_edge ], [ %sync_cause.0453, %if.end197.if.end206_crit_edge ], [ %sync_cause.0453, %if.then201 ], [ 0, %if.end39.if.end206_crit_edge ], [ %and31, %land.lhs.true.if.end206_crit_edge ]
  %isr.9 = phi i32 [ %isr.6, %if.end156.if.end206_crit_edge ], [ %isr.6, %if.end197.if.end206_crit_edge ], [ %and204, %if.then201 ], [ 0, %if.end39.if.end206_crit_edge ], [ 0, %land.lhs.true.if.end206_crit_edge ]
  %80 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %caps, align 4
  %and208 = and i32 %81, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.then210, label %if.end206.if.end216_crit_edge

if.end206.if.end216_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end216

if.then210:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  %write212 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %82 = ptrtoint ptr %write212 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write212, align 4
  tail call void %83(ptr noundef %ah, i32 noundef %isr.9, i32 noundef 128) #6
  %84 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ah, align 4
  %call215 = tail call i32 %85(ptr noundef %ah, i32 noundef 128) #6
  br label %if.end216

if.end216:                                        ; preds = %if.then210, %if.end206.if.end216_crit_edge
  %86 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %87)
  %cmp219 = icmp eq i32 %87, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync_cause.0447460)
  %tobool222.not = icmp eq i32 %sync_cause.0447460, 0
  %or.cond443 = select i1 %cmp219, i1 true, i1 %tobool222.not
  br i1 %or.cond443, label %if.end216.cleanup_crit_edge, label %if.then223

if.end216.cleanup_crit_edge:                      ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then223:                                       ; preds = %if.end216
  %tobool224.not = icmp eq ptr %sync_cause_p, null
  br i1 %tobool224.not, label %if.then223.if.end226_crit_edge, label %if.then225

if.then223.if.end226_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end226

if.then225:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %sync_cause_p to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sync_cause.0447460, ptr %sync_cause_p, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then225, %if.then223.if.end226_crit_edge
  %and227 = and i32 %sync_cause.0447460, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228.not = icmp eq i32 %and227, 0
  br i1 %tobool228.not, label %if.end226.if.end258_crit_edge, label %if.then232

if.end226.if.end258_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end258

if.then232:                                       ; preds = %if.end226
  %and233 = and i32 %sync_cause.0447460, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.then232.if.end244_crit_edge, label %do.body236

if.then232.if.end244_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

do.body236:                                       ; preds = %if.then232
  %debug_mask237 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %89 = ptrtoint ptr %debug_mask237 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %debug_mask237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool239.not = icmp eq i32 %90, 0
  br i1 %tobool239.not, label %do.body236.if.end244_crit_edge, label %if.then240

do.body236.if.end244_crit_edge:                   ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

if.then240:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2) #6
  br label %if.end244

if.end244:                                        ; preds = %if.then240, %do.body236.if.end244_crit_edge, %if.then232.if.end244_crit_edge
  %and245 = and i32 %sync_cause.0447460, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %if.end244.if.end256_crit_edge, label %do.body248

if.end244.if.end256_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

do.body248:                                       ; preds = %if.end244
  %debug_mask249 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %91 = ptrtoint ptr %debug_mask249 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %debug_mask249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool251.not = icmp eq i32 %92, 0
  br i1 %tobool251.not, label %do.body248.if.end256_crit_edge, label %if.then252

do.body248.if.end256_crit_edge:                   ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

if.then252:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3) #6
  br label %if.end256

if.end256:                                        ; preds = %if.then252, %do.body248.if.end256_crit_edge, %if.end244.if.end256_crit_edge
  %93 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %masked, align 4
  %or257 = or i32 %94, 1073741824
  store i32 %or257, ptr %masked, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.end256, %if.end226.if.end258_crit_edge
  %and259 = and i32 %sync_cause.0447460, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  br i1 %tobool260.not, label %if.end258.if.end275_crit_edge, label %do.body262

if.end258.if.end275_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end275

do.body262:                                       ; preds = %if.end258
  %debug_mask263 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %95 = ptrtoint ptr %debug_mask263 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %debug_mask263, align 4
  %and264 = and i32 %96, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %do.body262.do.end269_crit_edge, label %if.then266

do.body262.do.end269_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end269

if.then266:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4) #6
  br label %do.end269

do.end269:                                        ; preds = %if.then266, %do.body262.do.end269_crit_edge
  %write271 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %97 = ptrtoint ptr %write271 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write271, align 4
  tail call void %98(ptr noundef %ah, i32 noundef 256, i32 noundef 16384) #6
  %99 = ptrtoint ptr %write271 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write271, align 4
  tail call void %100(ptr noundef %ah, i32 noundef 0, i32 noundef 16384) #6
  %101 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %masked, align 4
  %or274 = or i32 %102, 1073741824
  store i32 %or274, ptr %masked, align 4
  br label %if.end275

if.end275:                                        ; preds = %do.end269, %if.end258.if.end275_crit_edge
  %and276 = and i32 %sync_cause.0447460, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  br i1 %tobool277.not, label %if.end275.if.end287_crit_edge, label %do.body279

if.end275.if.end287_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

do.body279:                                       ; preds = %if.end275
  %debug_mask280 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %103 = ptrtoint ptr %debug_mask280 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %debug_mask280, align 4
  %and281 = and i32 %104, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and281)
  %tobool282.not = icmp eq i32 %and281, 0
  br i1 %tobool282.not, label %do.body279.if.end287_crit_edge, label %if.then283

do.body279.if.end287_crit_edge:                   ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

if.then283:                                       ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5) #6
  br label %if.end287

if.end287:                                        ; preds = %if.then283, %do.body279.if.end287_crit_edge, %if.end275.if.end287_crit_edge
  %write289 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %105 = ptrtoint ptr %write289 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write289, align 4
  %107 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %108)
  %cmp292 = icmp eq i32 %108, 768
  %cond293 = select i1 %cmp292, i32 16400, i32 16424
  tail call void %106(ptr noundef %ah, i32 noundef %sync_cause.0447460, i32 noundef %cond293) #6
  %109 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ah, align 4
  %111 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %112)
  %cmp298 = icmp eq i32 %112, 768
  %cond299 = select i1 %cmp298, i32 16400, i32 16424
  %call300 = tail call i32 %110(ptr noundef %ah, i32 noundef %cond299) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end287, %if.end216.cleanup_crit_edge, %if.then98, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then98 ], [ false, %land.lhs.true.cleanup_crit_edge ], [ true, %if.end216.cleanup_crit_edge ], [ true, %if.end287 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_set_txdesc(ptr nocapture noundef readonly %ah, ptr noundef %ds, ptr noundef readonly %i) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4
  %status0 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 10
  %link = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 6
  %0 = call ptr @memset(ptr %status0, i32 0, i32 40)
  %1 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link, align 4
  %3 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %2, ptr %ds, align 4
  %buf_addr = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 9
  %4 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_addr, align 4
  %ds_data = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 1
  %6 = ptrtoint ptr %ds_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %5, ptr %ds_data, align 4
  %buf_len = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 10
  %7 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_len, align 4
  %is_last = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 2
  %9 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_last, align 2, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool.not, i32 4096, i32 0
  %or = or i32 %cond, %8
  %keytype = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 15
  %11 = ptrtoint ptr %keytype to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %keytype, align 4
  %shl = shl i32 %12, 26
  %and = and i32 %shl, 201326592
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %14)
  %cmp = icmp eq i32 %14, 192
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl8 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 6
  %15 = call ptr @memset(ptr %ctl8, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %is_first = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 1
  %16 = ptrtoint ptr %is_first to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_first, align 1, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp eq i8 %17, 0
  br i1 %tobool30.not, label %lor.lhs.false, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %18 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_last, align 2, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool32.not = icmp eq i8 %19, 0
  br i1 %tobool32.not, label %lor.lhs.false.do.body109_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false.do.body109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body109

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %aggr = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 3
  %20 = ptrtoint ptr %aggr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aggr, align 4
  %22 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch = icmp eq i32 %22, 2
  br i1 %switch, label %land.lhs.true.do.body109_crit_edge, label %do.body42

land.lhs.true.do.body109_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body109

do.body42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %rates = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11
  %23 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rates, align 4
  %shl44 = shl i32 %24, 16
  %and45 = and i32 %shl44, 983040
  %arrayidx47 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx47, align 4
  %shl49 = shl i32 %26, 20
  %and50 = and i32 %shl49, 15728640
  %or51 = or i32 %and50, %and45
  %arrayidx53 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx53, align 4
  %shl55 = shl i32 %28, 24
  %and56 = and i32 %shl55, 251658240
  %or57 = or i32 %or51, %and56
  %arrayidx59 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3
  %29 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx59, align 4
  %shl61 = shl i32 %30, 28
  %or63 = or i32 %or57, %shl61
  %dur_update = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 13
  %31 = ptrtoint ptr %dur_update to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dur_update, align 1, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool64.not = icmp eq i8 %32, 0
  %cond65 = select i1 %tobool64.not, i32 0, i32 32768
  %or66 = or i32 %or63, %cond65
  %33 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %or66, ptr %u, align 4
  %Rate = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 0, i32 1
  %34 = ptrtoint ptr %Rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %Rate, align 4
  %and81 = and i32 %35, 255
  %Rate84 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1, i32 1
  %36 = ptrtoint ptr %Rate84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %Rate84, align 4
  %shl85 = shl i32 %37, 8
  %and86 = and i32 %shl85, 65280
  %or87 = or i32 %and86, %and81
  %Rate90 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2, i32 1
  %38 = ptrtoint ptr %Rate90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %Rate90, align 4
  %shl91 = shl i32 %39, 16
  %and92 = and i32 %shl91, 16711680
  %or93 = or i32 %or87, %and92
  %Rate96 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3, i32 1
  %40 = ptrtoint ptr %Rate96 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %Rate96, align 4
  %shl97 = shl i32 %41, 24
  %or99 = or i32 %or93, %shl97
  br label %if.end127

do.body109:                                       ; preds = %land.lhs.true.do.body109_crit_edge, %lor.lhs.false.do.body109_crit_edge
  %42 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %u, align 4
  br label %if.end127

if.end127:                                        ; preds = %do.body109, %do.body42
  %.sink = phi i32 [ 0, %do.body109 ], [ %or99, %do.body42 ]
  %ctl3122 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 1
  %43 = ptrtoint ptr %ctl3122 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %.sink, ptr %ctl3122, align 4
  %44 = ptrtoint ptr %is_first to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_first, align 1, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool129.not = icmp eq i8 %45, 0
  br i1 %tobool129.not, label %do.body135, label %if.end160

do.body135:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  %ds_ctl0 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 2
  %46 = ptrtoint ptr %ds_ctl0 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %ds_ctl0, align 4
  %ds_ctl1 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 3
  %47 = ptrtoint ptr %ds_ctl1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %or, ptr %ds_ctl1, align 4
  %ctl6155 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 4
  %48 = ptrtoint ptr %ctl6155 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %and, ptr %ctl6155, align 4
  br label %cleanup

if.end160:                                        ; preds = %if.end127
  %keyix = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 16
  %49 = ptrtoint ptr %keyix to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %keyix, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp161.not = icmp eq i8 %50, -1
  %conv = zext i8 %50 to i32
  %shl165 = shl nuw nsw i32 %conv, 13
  %and166 = and i32 %shl165, 1040384
  %cond167 = select i1 %cmp161.not, i32 0, i32 %and166
  %type = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 14
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type, align 4
  %shl168 = shl i32 %52, 20
  %and169 = and i32 %shl168, 15728640
  %flags = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 8
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %and171 = shl i32 %54, 23
  %55 = and i32 %and171, 16777216
  %and176 = shl i32 %54, 21
  %56 = and i32 %and176, 134217728
  %57 = and i32 %and176, 268435456
  %or170 = or i32 %and169, %or
  %or174 = or i32 %or170, %cond167
  %or179 = or i32 %or174, %55
  %or184 = or i32 %or179, %56
  %or185 = or i32 %or184, %57
  %aggr186 = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 3
  %58 = ptrtoint ptr %aggr186 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %aggr186, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i32 %59, label %if.end160.do.body203_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end160.sw.bb191_crit_edge
    i32 3, label %sw.bb197
  ]

if.end160.sw.bb191_crit_edge:                     ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb191

if.end160.do.body203_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body203

sw.bb:                                            ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  %aggr_len = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 5
  %61 = ptrtoint ptr %aggr_len to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %aggr_len, align 2
  %conv187 = zext i16 %62 to i32
  %or190 = or i32 %and, %conv187
  br label %sw.bb191

sw.bb191:                                         ; preds = %sw.bb, %if.end160.sw.bb191_crit_edge
  %ctl6.0 = phi i32 [ %and, %if.end160.sw.bb191_crit_edge ], [ %or190, %sw.bb ]
  %or192 = or i32 %or185, 1610612736
  %ndelim = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 4
  %63 = ptrtoint ptr %ndelim to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ndelim, align 4
  %conv193 = zext i8 %64 to i32
  %shl194 = shl nuw nsw i32 %conv193, 18
  %or196 = or i32 %shl194, %ctl6.0
  br label %do.body203

sw.bb197:                                         ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  %or198 = or i32 %or185, 1073741824
  br label %do.body203

do.body203:                                       ; preds = %sw.bb197, %sw.bb191, %if.end160.do.body203_crit_edge
  %ctl1.0 = phi i32 [ %or185, %if.end160.do.body203_crit_edge ], [ %or198, %sw.bb197 ], [ %or192, %sw.bb191 ]
  %ctl6.1 = phi i32 [ %and, %if.end160.do.body203_crit_edge ], [ %and, %sw.bb197 ], [ %or196, %sw.bb191 ]
  %pkt_len = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 7
  %65 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pkt_len, align 4
  %and204 = and i32 %66, 4095
  %and206 = shl i32 %54, 4
  %67 = and i32 %and206, 4096
  %txpower = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 17
  %68 = ptrtoint ptr %txpower to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %txpower, align 1
  %conv211 = zext i8 %69 to i32
  %shl212 = shl nuw nsw i32 %conv211, 16
  %and213 = and i32 %shl212, 4128768
  %and216 = shl i32 %54, 18
  %70 = and i32 %and216, 8388608
  %and221 = shl i32 %54, 25
  %71 = and i32 %and221, 536870912
  %cond229 = select i1 %cmp161.not, i32 0, i32 1073741824
  %and232 = shl i32 %54, 12
  %72 = and i32 %and232, 16777216
  %and237 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  %and242 = shl i32 %54, 28
  %73 = and i32 %and242, -2147483648
  %cond246 = select i1 %tobool238.not, i32 %73, i32 4194304
  %or209 = or i32 %67, %cond229
  %or214 = or i32 %or209, %70
  %or219 = or i32 %or214, %71
  %or224 = or i32 %or219, %72
  %or230 = or i32 %or224, %cond246
  %or235 = or i32 %or230, %and204
  %or247 = or i32 %or235, %and213
  %ds_ctl0248 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 2
  %74 = ptrtoint ptr %ds_ctl0248 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %or247, ptr %ds_ctl0248, align 4
  %ds_ctl1258 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 3
  %75 = ptrtoint ptr %ds_ctl1258 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %ctl1.0, ptr %ds_ctl1258, align 4
  %ctl6269 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 4
  %76 = ptrtoint ptr %ctl6269 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %ctl6.1, ptr %ctl6269, align 4
  %77 = ptrtoint ptr %aggr186 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %aggr186, align 4
  %79 = and i32 %78, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %switch627 = icmp eq i32 %79, 2
  br i1 %switch627, label %do.body203.cleanup_crit_edge, label %do.body287

do.body203.cleanup_crit_edge:                     ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body287:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #8
  %PktDuration = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 0, i32 2
  %80 = ptrtoint ptr %PktDuration to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %PktDuration, align 4
  %and291 = and i32 %81, 32767
  %RateFlags = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 0, i32 4
  %82 = ptrtoint ptr %RateFlags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %RateFlags, align 4
  %and294 = shl i32 %83, 15
  %84 = and i32 %and294, 32768
  %or297 = or i32 %and291, %84
  %PktDuration300 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1, i32 2
  %85 = ptrtoint ptr %PktDuration300 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %PktDuration300, align 4
  %shl301 = shl i32 %86, 16
  %and302 = and i32 %shl301, 2147418112
  %RateFlags305 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1, i32 4
  %87 = ptrtoint ptr %RateFlags305 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %RateFlags305, align 4
  %89 = shl i32 %88, 31
  %or309 = or i32 %and302, %89
  %or310 = or i32 %or309, %or297
  %ctl4 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 2
  %90 = ptrtoint ptr %ctl4 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 %or310, ptr %ctl4, align 4
  %PktDuration323 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2, i32 2
  %91 = ptrtoint ptr %PktDuration323 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %PktDuration323, align 4
  %and325 = and i32 %92, 32767
  %RateFlags328 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2, i32 4
  %93 = ptrtoint ptr %RateFlags328 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %RateFlags328, align 4
  %and329 = shl i32 %94, 15
  %95 = and i32 %and329, 32768
  %or332 = or i32 %and325, %95
  %PktDuration335 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3, i32 2
  %96 = ptrtoint ptr %PktDuration335 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %PktDuration335, align 4
  %shl336 = shl i32 %97, 16
  %and337 = and i32 %shl336, 2147418112
  %RateFlags340 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3, i32 4
  %98 = ptrtoint ptr %RateFlags340 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %RateFlags340, align 4
  %100 = shl i32 %99, 31
  %or344 = or i32 %and337, %100
  %or345 = or i32 %or344, %or332
  %ctl5 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 3
  %101 = ptrtoint ptr %ctl5 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 %or345, ptr %ctl5, align 4
  %102 = load i32, ptr %RateFlags, align 4
  %and359 = lshr i32 %102, 1
  %or368 = and i32 %and359, 3
  %and372 = shl i32 %102, 25
  %103 = and i32 %and372, 268435456
  %ChSel = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 0, i32 3
  %104 = ptrtoint ptr %ChSel to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ChSel, align 4
  %shl378 = shl i32 %105, 2
  %and379 = and i32 %shl378, 28
  %106 = load i32, ptr %RateFlags305, align 4
  %and384 = shl i32 %106, 4
  %or393 = and i32 %and384, 96
  %and397 = shl i32 %106, 26
  %107 = and i32 %and397, 536870912
  %ChSel403 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1, i32 3
  %108 = ptrtoint ptr %ChSel403 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ChSel403, align 4
  %shl404 = shl i32 %109, 7
  %and405 = and i32 %shl404, 896
  %110 = load i32, ptr %RateFlags328, align 4
  %and411 = shl i32 %110, 9
  %or420 = and i32 %and411, 3072
  %and424 = shl i32 %110, 27
  %111 = and i32 %and424, 1073741824
  %ChSel430 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2, i32 3
  %112 = ptrtoint ptr %ChSel430 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ChSel430, align 4
  %shl431 = shl i32 %113, 12
  %and432 = and i32 %shl431, 28672
  %or427 = or i32 %or368, %103
  %or433 = or i32 %or427, %and379
  %or400 = or i32 %or433, %107
  %or406 = or i32 %or400, %or393
  %or375 = or i32 %or406, %and405
  %or380 = or i32 %or375, %111
  %or407 = or i32 %or380, %or420
  %or434 = or i32 %or407, %and432
  %114 = load i32, ptr %RateFlags340, align 4
  %and438 = shl i32 %114, 14
  %or447 = and i32 %and438, 98304
  %and451 = shl i32 %114, 28
  %115 = and i32 %and451, -2147483648
  %or454 = or i32 %or447, %115
  %ChSel457 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3, i32 3
  %116 = ptrtoint ptr %ChSel457 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ChSel457, align 4
  %shl458 = shl i32 %117, 17
  %and459 = and i32 %shl458, 917504
  %or460 = or i32 %or454, %and459
  %or461 = add nuw nsw i32 %or460, %or434
  %rtscts_rate = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 12
  %118 = ptrtoint ptr %rtscts_rate to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %rtscts_rate, align 4
  %conv462 = zext i8 %119 to i32
  %shl463 = shl nuw nsw i32 %conv462, 20
  %or465 = add nuw nsw i32 %or461, %shl463
  %ctl7 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 5
  %120 = ptrtoint ptr %ctl7 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 %or465, ptr %ctl7, align 4
  %arrayidx477 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 17, i32 1
  %121 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx477, align 1
  %conv478 = zext i8 %122 to i32
  %shl479 = shl nuw i32 %conv478, 24
  %and480 = and i32 %shl479, 1056964608
  %ctl9482 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 7
  %123 = ptrtoint ptr %ctl9482 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 %and480, ptr %ctl9482, align 4
  %arrayidx493 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 17, i32 2
  %124 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx493, align 1
  %conv494 = zext i8 %125 to i32
  %shl495 = shl nuw i32 %conv494, 24
  %and496 = and i32 %shl495, 1056964608
  %ctl10498 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 8
  %126 = ptrtoint ptr %ctl10498 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 %and496, ptr %ctl10498, align 4
  %arrayidx509 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 17, i32 3
  %127 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx509, align 1
  %conv510 = zext i8 %128 to i32
  %shl511 = shl nuw i32 %conv510, 24
  %and512 = and i32 %shl511, 1056964608
  %ctl11514 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 9
  %129 = ptrtoint ptr %ctl11514 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 %and512, ptr %ctl11514, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body287, %do.body203.cleanup_crit_edge, %do.body135
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9002_hw_proc_txdesc(ptr noundef %ah, ptr noundef %ds, ptr noundef %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status9 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 19
  %0 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status9, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %status2 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 12
  %2 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2, align 4
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ts, align 4
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %5 = ptrtoint ptr %ts_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ts_status, align 2
  %ts_flags = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 8
  %6 = ptrtoint ptr %ts_flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ts_flags, align 4
  %and2 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %ts_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %ts_status, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %shr = lshr i32 %1, 28
  %conv8 = trunc i32 %shr to i8
  %tid = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 17
  %8 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv8, ptr %tid, align 2
  %and9 = lshr i32 %1, 21
  %9 = trunc i32 %and9 to i8
  %conv11 = and i8 %9, 3
  %ts_rateindex = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 3
  %10 = ptrtoint ptr %ts_rateindex to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11, ptr %ts_rateindex, align 1
  %11 = trunc i32 %1 to i16
  %12 = lshr i16 %11, 1
  %conv14 = and i16 %12, 4095
  %ts_seqnum = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 1
  %13 = ptrtoint ptr %ts_seqnum to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14, ptr %ts_seqnum, align 4
  %status0 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 10
  %14 = ptrtoint ptr %status0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status0, align 4
  %conv22 = trunc i32 %15 to i8
  %ts_rssi_ctl0 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 9
  %16 = ptrtoint ptr %ts_rssi_ctl0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv22, ptr %ts_rssi_ctl0, align 1
  %and23 = lshr i32 %15, 8
  %conv25 = trunc i32 %and23 to i8
  %ts_rssi_ctl1 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 10
  %17 = ptrtoint ptr %ts_rssi_ctl1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv25, ptr %ts_rssi_ctl1, align 2
  %and26 = lshr i32 %15, 16
  %conv28 = trunc i32 %and26 to i8
  %ts_rssi_ctl2 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 11
  %18 = ptrtoint ptr %ts_rssi_ctl2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv28, ptr %ts_rssi_ctl2, align 1
  %and29 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end6.do.end41_crit_edge, label %if.then31

if.end6.do.end41_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

if.then31:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ts_flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %ts_flags, align 4
  %status3 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 13
  %20 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status3, align 4
  %ba_low = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 18
  %22 = ptrtoint ptr %ba_low to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ba_low, align 4
  %status4 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 14
  %23 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status4, align 4
  %ba_high = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 19
  %25 = ptrtoint ptr %ba_high to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ba_high, align 4
  br label %do.end41

do.end41:                                         ; preds = %if.then31, %if.end6.do.end41_crit_edge
  %status1 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 11
  %26 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %status1, align 4
  %and44 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ts_status, align 2
  %30 = or i8 %29, 32
  store i8 %30, ptr %ts_status, align 2
  br label %if.end75

if.else:                                          ; preds = %do.end41
  %and51 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else.if.end58_crit_edge, label %if.then53

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ts_status, align 2
  %33 = or i8 %32, 1
  store i8 %33, ptr %ts_status, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.else.if.end58_crit_edge
  %and59 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end66_crit_edge, label %if.then61

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ts_status, align 2
  %36 = or i8 %35, 2
  store i8 %36, ptr %ts_status, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end58.if.end66_crit_edge
  %and67 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end75_crit_edge, label %if.then69

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ts_status, align 2
  %39 = or i8 %38, 4
  store i8 %39, ptr %ts_status, align 2
  %call = tail call zeroext i1 @ath9k_hw_updatetxtriglevel(ptr noundef %ah, i1 noundef zeroext true) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.end66.if.end75_crit_edge, %if.then46
  %and76 = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end83_crit_edge, label %if.then78

if.end75.if.end83_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ts_status, align 2
  %42 = or i8 %41, 16
  store i8 %42, ptr %ts_status, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end75.if.end83_crit_edge
  %and84 = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end91_crit_edge, label %if.then86

if.end83.if.end91_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ts_flags, align 4
  %45 = or i8 %44, 4
  store i8 %45, ptr %ts_flags, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end83.if.end91_crit_edge
  %and92 = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end100_crit_edge, label %if.then94

if.end91.if.end100_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ts_flags, align 4
  %48 = or i8 %47, 8
  store i8 %48, ptr %ts_flags, align 4
  %call99 = tail call zeroext i1 @ath9k_hw_updatetxtriglevel(ptr noundef %ah, i1 noundef zeroext true) #6
  br label %if.end100

if.end100:                                        ; preds = %if.then94, %if.end91.if.end100_crit_edge
  %and101 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end109_crit_edge, label %if.then103

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ts_flags, align 4
  %51 = or i8 %50, 16
  store i8 %51, ptr %ts_flags, align 4
  %call108 = tail call zeroext i1 @ath9k_hw_updatetxtriglevel(ptr noundef %ah, i1 noundef zeroext true) #6
  br label %if.end109

if.end109:                                        ; preds = %if.then103, %if.end100.if.end109_crit_edge
  %52 = trunc i32 %27 to i8
  %53 = lshr i8 %52, 4
  %ts_shortretry = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 5
  %54 = ptrtoint ptr %ts_shortretry to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %ts_shortretry, align 1
  %and113 = lshr i32 %27, 8
  %55 = trunc i32 %and113 to i8
  %conv115 = and i8 %55, 15
  %ts_longretry = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 6
  %56 = ptrtoint ptr %ts_longretry to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv115, ptr %ts_longretry, align 2
  %and116 = lshr i32 %27, 12
  %57 = trunc i32 %and116 to i8
  %conv118 = and i8 %57, 15
  %ts_virtcol = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 7
  %58 = ptrtoint ptr %ts_virtcol to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv118, ptr %ts_virtcol, align 1
  %status5 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 15
  %59 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %status5, align 4
  %shr125 = lshr i32 %60, 24
  %conv126 = trunc i32 %shr125 to i8
  %ts_rssi = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 4
  %61 = ptrtoint ptr %ts_rssi to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv126, ptr %ts_rssi, align 4
  %conv129 = trunc i32 %60 to i8
  %ts_rssi_ext0 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 12
  %62 = ptrtoint ptr %ts_rssi_ext0 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv129, ptr %ts_rssi_ext0, align 4
  %and130 = lshr i32 %60, 8
  %conv132 = trunc i32 %and130 to i8
  %ts_rssi_ext1 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 13
  %63 = ptrtoint ptr %ts_rssi_ext1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv132, ptr %ts_rssi_ext1, align 1
  %and133 = lshr i32 %60, 16
  %conv135 = trunc i32 %and133 to i8
  %ts_rssi_ext2 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 14
  %64 = ptrtoint ptr %ts_rssi_ext2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv135, ptr %ts_rssi_ext2, align 2
  %65 = load i32, ptr %status5, align 4
  %evm0 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 20
  %66 = ptrtoint ptr %evm0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %evm0, align 4
  %status6 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 16
  %67 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %status6, align 4
  %evm1 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 21
  %69 = ptrtoint ptr %evm1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %evm1, align 4
  %status7 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 17
  %70 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status7, align 4
  %evm2 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 22
  %72 = ptrtoint ptr %evm2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %evm2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end109 ], [ -115, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ar9002_hw_get_duration(ptr nocapture noundef readnone %ah, ptr noundef %ds, i32 noundef %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %index, label %entry.cleanup_crit_edge [
    i32 0, label %do.end
    i32 1, label %do.end4
    i32 2, label %do.end13
    i32 3, label %do.end21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl4 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 2
  %1 = ptrtoint ptr %ctl4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %ctl4, align 4
  %and = and i32 %2, 32767
  br label %cleanup

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl47 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %ctl47 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ctl47, align 4
  %and8 = lshr i32 %4, 16
  %shr9 = and i32 %and8, 32767
  br label %cleanup

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl5 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 3
  %5 = ptrtoint ptr %ctl5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ctl5, align 4
  %and16 = and i32 %6, 32767
  br label %cleanup

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl524 = getelementptr inbounds %struct.ar5416_desc, ptr %ds, i32 0, i32 4, i32 0, i32 3
  %7 = ptrtoint ptr %ctl524 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ctl524, align 4
  %and25 = lshr i32 %8, 16
  %shr26 = and i32 %and25, 32767
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end13, %do.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr26, %do.end21 ], [ %and16, %do.end13 ], [ %shr9, %do.end4 ], [ %and, %do.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_updatetxtriglevel(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_ath9k_hw_setuprxdesc, !1, !"__ksymtab_ath9k_hw_setuprxdesc", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_mac.c", i32 416, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_mac.c", i32 130, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_mac.c", i32 183, i32 5}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_mac.c", i32 187, i32 5}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_mac.c", i32 193, i32 4}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_mac.c", i32 200, i32 4}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i8 0, i8 2}
