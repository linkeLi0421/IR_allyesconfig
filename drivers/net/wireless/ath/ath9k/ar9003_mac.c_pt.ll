; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9003_mac.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9003_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath9k_hw_set_rx_bufsize\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_set_rx_bufsize\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_set_rx_bufsize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_set_rx_bufsize:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_set_rx_bufsize\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_set_rx_bufsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_addrxbuf_edma\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_addrxbuf_edma\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_addrxbuf_edma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_addrxbuf_edma:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_addrxbuf_edma\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_addrxbuf_edma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_process_rxdesc_edma\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_process_rxdesc_edma\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_process_rxdesc_edma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_process_rxdesc_edma:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_process_rxdesc_edma\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_process_rxdesc_edma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_setup_statusring\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_setup_statusring\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_setup_statusring\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_setup_statusring:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_setup_statusring\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_setup_statusring:\09\09\09\09\09"
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
%struct.ar9003_txc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.ath_tx_info = type { i8, i8, i8, i32, i8, i16, i32, i32, i32, [4 x i32], [4 x i32], [4 x %struct.ath9k_11n_rate_series], i8, i8, i32, i32, i8, [4 x i8] }
%struct.ath9k_11n_rate_series = type { i32, i32, i32, i32, i32 }
%struct.ar9003_txs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_tx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.ar9003_rxs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_rx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i32 }

@__kstrtab_ath9k_hw_set_rx_bufsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_set_rx_bufsize = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_set_rx_bufsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_set_rx_bufsize to i32), ptr @__kstrtab_ath9k_hw_set_rx_bufsize, ptr @__kstrtabns_ath9k_hw_set_rx_bufsize }, section "___ksymtab+ath9k_hw_set_rx_bufsize", align 4
@__kstrtab_ath9k_hw_addrxbuf_edma = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_addrxbuf_edma = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_addrxbuf_edma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_addrxbuf_edma to i32), ptr @__kstrtab_ath9k_hw_addrxbuf_edma, ptr @__kstrtabns_ath9k_hw_addrxbuf_edma }, section "___ksymtab+ath9k_hw_addrxbuf_edma", align 4
@__kstrtab_ath9k_hw_process_rxdesc_edma = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_process_rxdesc_edma = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_process_rxdesc_edma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_process_rxdesc_edma to i32), ptr @__kstrtab_ath9k_hw_process_rxdesc_edma, ptr @__kstrtabns_ath9k_hw_process_rxdesc_edma }, section "___ksymtab+ath9k_hw_process_rxdesc_edma", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"TS Start 0x%x End 0x%x Virt %p, Size %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_hw_setup_statusring = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_setup_statusring = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_setup_statusring = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_setup_statusring to i32), ptr @__kstrtab_ath9k_hw_setup_statusring, ptr @__kstrtabns_ath9k_hw_setup_statusring }, section "___ksymtab+ath9k_hw_setup_statusring", align 4
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received PCI FATAL interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"received PCI PERR interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AR_INTR_SYNC_LOCAL_TIMEOUT\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Tx Descriptor error %x\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 598, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 327, i32 5 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 331, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 344, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [47 x i8] c"../drivers/net/wireless/ath/ath9k/ar9003_mac.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 370, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_ath9k_hw_addrxbuf_edma, ptr @__ksymtab_ath9k_hw_process_rxdesc_edma, ptr @__ksymtab_ath9k_hw_set_rx_bufsize, ptr @__ksymtab_ath9k_hw_setup_statusring, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ar9003_hw_attach_mac_ops(ptr nocapture noundef writeonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_enable = getelementptr inbounds %struct.ath_hw, ptr %hw, i32 0, i32 63, i32 1
  %0 = ptrtoint ptr %rx_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ar9003_hw_rx_enable, ptr %rx_enable, align 4
  %set_desc_link = getelementptr inbounds %struct.ath_hw, ptr %hw, i32 0, i32 63, i32 2
  %1 = ptrtoint ptr %set_desc_link to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ar9003_hw_set_desc_link, ptr %set_desc_link, align 4
  %get_isr = getelementptr inbounds %struct.ath_hw, ptr %hw, i32 0, i32 63, i32 4
  %2 = ptrtoint ptr %get_isr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ar9003_hw_get_isr, ptr %get_isr, align 4
  %set_txdesc = getelementptr inbounds %struct.ath_hw, ptr %hw, i32 0, i32 63, i32 5
  %3 = ptrtoint ptr %set_txdesc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ar9003_set_txdesc, ptr %set_txdesc, align 4
  %proc_txdesc = getelementptr inbounds %struct.ath_hw, ptr %hw, i32 0, i32 63, i32 6
  %4 = ptrtoint ptr %proc_txdesc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ar9003_hw_proc_txdesc, ptr %proc_txdesc, align 4
  %get_duration = getelementptr inbounds %struct.ath_hw, ptr %hw, i32 0, i32 63, i32 7
  %5 = ptrtoint ptr %get_duration to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ar9003_hw_get_duration, ptr %get_duration, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_rx_enable(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %hw, i32 noundef 0, i32 noundef 8) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ar9003_hw_set_desc_link(ptr nocapture noundef %ds, i32 noundef %ds_link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ds_link, ptr %link, align 4
  %ctl10 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 10
  %1 = ptrtoint ptr %ctl10 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ctl10, align 4
  %and = and i32 %2, -65536
  %3 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ds, align 4
  %add.i = add i32 %4, %ds_link
  %data0.i = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 2
  %5 = ptrtoint ptr %data0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data0.i, align 4
  %add1.i = add i32 %add.i, %6
  %ctl3.i = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 3
  %7 = ptrtoint ptr %ctl3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctl3.i, align 4
  %add2.i = add i32 %add1.i, %8
  %data1.i = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 4
  %9 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data1.i, align 4
  %add3.i = add i32 %add2.i, %10
  %ctl5.i = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 5
  %11 = ptrtoint ptr %ctl5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctl5.i, align 4
  %add4.i = add i32 %add3.i, %12
  %data2.i = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 6
  %13 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data2.i, align 4
  %add5.i = add i32 %add4.i, %14
  %ctl7.i = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 7
  %15 = ptrtoint ptr %ctl7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctl7.i, align 4
  %add6.i = add i32 %add5.i, %16
  %data3.i = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 8
  %17 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data3.i, align 4
  %add7.i = add i32 %add6.i, %18
  %ctl9.i = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 9
  %19 = ptrtoint ptr %ctl9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctl9.i, align 4
  %add8.i = add i32 %add7.i, %20
  %21 = lshr i32 %add8.i, 16
  %add9.i = add i32 %21, %add8.i
  %conv = and i32 %add9.i, 65535
  %or = or i32 %conv, %and
  store i32 %or, ptr %ctl10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar9003_hw_get_isr(ptr noundef %ah, ptr noundef %masked, ptr noundef writeonly %sync_cause_p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %btcoex_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoex_enabled.i, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.ath9k_hw_mci_is_enabled.exit.thread_crit_edge, label %ath9k_hw_mci_is_enabled.exit

entry.ath9k_hw_mci_is_enabled.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_mci_is_enabled.exit.thread

ath9k_hw_mci_is_enabled.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and.i = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool1.i.not, i32 2, i32 130
  br label %ath9k_hw_mci_is_enabled.exit.thread

ath9k_hw_mci_is_enabled.exit.thread:              ; preds = %ath9k_hw_mci_is_enabled.exit, %entry.ath9k_hw_mci_is_enabled.exit.thread_crit_edge
  %4 = phi i32 [ 2, %entry.ath9k_hw_mci_is_enabled.exit.thread_crit_edge ], [ %spec.select, %ath9k_hw_mci_is_enabled.exit ]
  %5 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %8)
  %cmp = icmp eq i32 %8, 768
  %cond = select i1 %cmp, i32 16416, i32 16440
  %call2 = tail call i32 %6(ptr noundef %ah, i32 noundef %cond) #6
  %and = and i32 %call2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ath9k_hw_mci_is_enabled.exit.thread.if.end22_crit_edge, label %if.then3

ath9k_hw_mci_is_enabled.exit.thread.if.end22_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then3:                                         ; preds = %ath9k_hw_mci_is_enabled.exit.thread
  %9 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah, align 4
  %11 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %12)
  %cmp8 = icmp eq i32 %12, 20
  %cond9 = select i1 %cmp8, i32 131140, i32 28740
  %call10 = tail call i32 %10(ptr noundef %ah, i32 noundef %cond9) #6
  %13 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %14)
  %cmp13 = icmp eq i32 %14, 20
  %cond14 = select i1 %cmp13, i32 63, i32 15
  %and15 = and i32 %cond14, %call10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 2
  br i1 %cmp16, label %if.then17, label %if.then3.if.end22_crit_edge

if.then3.if.end22_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ah, align 4
  %call20 = tail call i32 %16(ptr noundef %ah, i32 noundef 128) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.then3.if.end22_crit_edge, %ath9k_hw_mci_is_enabled.exit.thread.if.end22_crit_edge
  %isr.0 = phi i32 [ %call20, %if.then17 ], [ 0, %if.then3.if.end22_crit_edge ], [ 0, %ath9k_hw_mci_is_enabled.exit.thread.if.end22_crit_edge ]
  %17 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ah, align 4
  %19 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %20)
  %cmp27 = icmp eq i32 %20, 768
  %cond28 = select i1 %cmp27, i32 16400, i32 16424
  %call29 = tail call i32 %18(ptr noundef %ah, i32 noundef %cond28) #6
  %and30 = and i32 %call29, 147296
  %21 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %masked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isr.0)
  %tobool31.not = icmp eq i32 %isr.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool32.not = icmp eq i32 %and30, 0
  %or.cond = select i1 %tobool31.not, i1 %tobool32.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool34.not = icmp eq i32 %call2, 0
  %or.cond388 = select i1 %or.cond, i1 %tobool34.not, i1 false
  br i1 %or.cond388, label %if.end22.cleanup_crit_edge, label %if.end36

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end22
  br i1 %tobool31.not, label %if.end36.if.end185_crit_edge, label %if.then38

if.end36.if.end185_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

if.then38:                                        ; preds = %if.end36
  %and39 = and i32 %isr.0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then38.if.end73_crit_edge, label %if.then41

if.then38.if.end73_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then41:                                        ; preds = %if.then38
  %22 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ah, align 4
  %call44 = tail call i32 %23(ptr noundef %ah, i32 noundef 140) #6
  %and45 = lshr i32 %call44, 3
  %shr = and i32 %and45, 2097152
  %and47 = lshr i32 %call44, 7
  %shr48 = and i32 %and47, 4194304
  %shr51 = and i32 %and47, 524288
  %and53 = and i32 %call44, 33554432
  %and56 = shl i32 %call44, 6
  %shl = and i32 %and56, 536870912
  %shl59 = and i32 %and56, 268435456
  %and61 = lshr i32 %call44, 4
  %shr62 = and i32 %and61, 67108864
  %and64 = lshr i32 %call44, 6
  %shr65 = and i32 %and64, 1024
  %or49 = or i32 %shr48, %and53
  %or52 = or i32 %or49, %shr
  %or55 = or i32 %or52, %shr51
  %or57 = or i32 %or55, %shl
  %or60 = or i32 %or57, %shl59
  %or63 = or i32 %or60, %shr62
  %or66 = or i32 %or63, %shr65
  %24 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %caps, align 4
  %and67 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %if.then41.if.end73_crit_edge

if.then41.if.end73_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then69:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %26 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write, align 4
  tail call void %27(ptr noundef %ah, i32 noundef %call44, i32 noundef 140) #6
  %and71 = and i32 %isr.0, -8388609
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.then41.if.end73_crit_edge, %if.then38.if.end73_crit_edge
  %mask2.0 = phi i32 [ 0, %if.then38.if.end73_crit_edge ], [ %or66, %if.then69 ], [ %or66, %if.then41.if.end73_crit_edge ]
  %isr.2 = phi i32 [ %isr.0, %if.then38.if.end73_crit_edge ], [ %and71, %if.then69 ], [ %isr.0, %if.then41.if.end73_crit_edge ]
  %28 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %caps, align 4
  %and75 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end73.if.end81_crit_edge, label %if.then77

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ah, align 4
  %call80 = tail call i32 %31(ptr noundef %ah, i32 noundef 192) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end73.if.end81_crit_edge
  %isr.3 = phi i32 [ %call80, %if.then77 ], [ %isr.2, %if.end73.if.end81_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %isr.3)
  %cmp82 = icmp eq i32 %isr.3, -1
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %masked, align 4
  br label %cleanup

if.end84:                                         ; preds = %if.end81
  %and85 = and i32 %isr.3, 17160378
  %33 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and85, ptr %masked, align 4
  %rx_intr_mitigation = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 11
  %34 = ptrtoint ptr %rx_intr_mitigation to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rx_intr_mitigation, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool86.not = icmp eq i8 %35, 0
  %and88 = and i32 %isr.3, -2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %or.cond389 = select i1 %tobool86.not, i1 true, i1 %tobool89.not
  br i1 %or.cond389, label %if.end84.if.end93_crit_edge, label %if.then90

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %or91 = or i32 %and85, 2
  %36 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or91, ptr %masked, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end84.if.end93_crit_edge
  %tx_intr_mitigation = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 12
  %37 = ptrtoint ptr %tx_intr_mitigation to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_intr_mitigation, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool95.not = icmp eq i8 %38, 0
  %and97 = and i32 %isr.3, 1074266112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  %or.cond390 = select i1 %tobool95.not, i1 true, i1 %tobool98.not
  br i1 %or.cond390, label %if.end93.if.end102_crit_edge, label %if.then99

if.end93.if.end102_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %masked, align 4
  %or100 = or i32 %40, 64
  store i32 %or100, ptr %masked, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end93.if.end102_crit_edge
  %and103 = and i32 %isr.3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end102.if.end107_crit_edge, label %if.then105

if.end102.if.end107_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %masked, align 4
  %or106 = or i32 %42, 2
  store i32 %or106, ptr %masked, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end102.if.end107_crit_edge
  %and108 = and i32 %isr.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end112_crit_edge, label %if.then110

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %masked, align 4
  %or111 = or i32 %44, 1
  store i32 %or111, ptr %masked, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end107.if.end112_crit_edge
  %and113 = and i32 %isr.3, 1344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end133_crit_edge, label %if.then115

if.end112.if.end133_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.then115:                                       ; preds = %if.end112
  %45 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %masked, align 4
  %or116 = or i32 %46, 64
  store i32 %or116, ptr %masked, align 4
  %47 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %caps, align 4
  %and118 = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.then120, label %if.then115.if.end133_crit_edge

if.then115.if.end133_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.then120:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ah, align 4
  %call123 = tail call i32 %50(ptr noundef %ah, i32 noundef 132) #6
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
  %and131 = and i32 %isr.3, -1345
  br label %if.end133

if.end133:                                        ; preds = %if.then120, %if.then115.if.end133_crit_edge, %if.end112.if.end133_crit_edge
  %isr.4 = phi i32 [ %isr.3, %if.then115.if.end133_crit_edge ], [ %and131, %if.then120 ], [ %isr.3, %if.end112.if.end133_crit_edge ]
  %and134 = and i32 %isr.4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end133.if.end169_crit_edge, label %if.then136

if.end133.if.end169_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.then136:                                       ; preds = %if.end133
  %57 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %caps, align 4
  %and138 = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  %59 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ah, align 4
  br i1 %tobool139.not, label %if.then136.if.end151_crit_edge, label %if.then140

if.then136.if.end151_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then140:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %62)
  %cmp145 = icmp ugt i32 %62, 447
  %cond146 = select i1 %cmp145, i32 220, i32 216
  br label %if.end151

if.end151:                                        ; preds = %if.then140, %if.then136.if.end151_crit_edge
  %.sink = phi i32 [ %cond146, %if.then140 ], [ 152, %if.then136.if.end151_crit_edge ]
  %call150 = tail call i32 %60(ptr noundef %ah, i32 noundef %.sink) #6
  %and152 = and i32 %call150, 65408
  %intr_gen_timer_trigger = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 107
  %63 = ptrtoint ptr %intr_gen_timer_trigger to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and152, ptr %intr_gen_timer_trigger, align 4
  %and154 = lshr i32 %call150, 16
  %shr155 = and i32 %and154, 65408
  %intr_gen_timer_thresh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 108
  %64 = ptrtoint ptr %intr_gen_timer_thresh to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shr155, ptr %intr_gen_timer_thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool157.not = icmp eq i32 %and152, 0
  br i1 %tobool157.not, label %if.end151.if.end160_crit_edge, label %if.then158

if.end151.if.end160_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

if.then158:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %masked, align 4
  %or159 = or i32 %66, 134217728
  store i32 %or159, ptr %masked, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %if.end151.if.end160_crit_edge
  %67 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %caps, align 4
  %and162 = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.then164, label %if.end160.if.end169_crit_edge

if.end160.if.end169_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.then164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  %write166 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %69 = ptrtoint ptr %write166 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write166, align 4
  tail call void %70(ptr noundef %ah, i32 noundef %call150, i32 noundef 152) #6
  %and167 = and i32 %isr.4, -268435457
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %if.end160.if.end169_crit_edge, %if.end133.if.end169_crit_edge
  %isr.6 = phi i32 [ %isr.4, %if.end133.if.end169_crit_edge ], [ %isr.4, %if.end160.if.end169_crit_edge ], [ %and167, %if.then164 ]
  %71 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %masked, align 4
  %or170 = or i32 %72, %mask2.0
  store i32 %or170, ptr %masked, align 4
  %73 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %caps, align 4
  %and172 = and i32 %74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.then174, label %if.end169.if.end180_crit_edge

if.end169.if.end180_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

if.then174:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  %write176 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %75 = ptrtoint ptr %write176 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write176, align 4
  tail call void %76(ptr noundef %ah, i32 noundef %isr.6, i32 noundef 128) #6
  %77 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ah, align 4
  %call179 = tail call i32 %78(ptr noundef %ah, i32 noundef 128) #6
  br label %if.end180

if.end180:                                        ; preds = %if.then174, %if.end169.if.end180_crit_edge
  %79 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %masked, align 4
  %and181 = and i32 %80, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end180.if.end185_crit_edge, label %if.then183

if.end180.if.end185_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

if.then183:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ar9003_hw_bb_watchdog_read(ptr noundef %ah) #6
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.end180.if.end185_crit_edge, %if.end36.if.end185_crit_edge
  %and186 = and i32 %call2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end185.if.end189_crit_edge, label %if.then188

if.end185.if.end189_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

if.then188:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ar9003_mci_get_isr(ptr noundef %ah, ptr noundef %masked) #6
  br label %if.end189

if.end189:                                        ; preds = %if.then188, %if.end185.if.end189_crit_edge
  br i1 %tobool32.not, label %if.end189.cleanup_crit_edge, label %if.then191

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then191:                                       ; preds = %if.end189
  %tobool192.not = icmp eq ptr %sync_cause_p, null
  br i1 %tobool192.not, label %if.then191.if.end194_crit_edge, label %if.then193

if.then191.if.end194_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

if.then193:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %sync_cause_p to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and30, ptr %sync_cause_p, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %if.then191.if.end194_crit_edge
  %and195 = and i32 %call29, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.end194.if.end222_crit_edge, label %if.then200

if.end194.if.end222_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end222

if.then200:                                       ; preds = %if.end194
  %and201 = and i32 %call29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.then200.if.end208_crit_edge, label %do.body

if.then200.if.end208_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end208

do.body:                                          ; preds = %if.then200
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %82 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %debug_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool205.not = icmp eq i32 %83, 0
  br i1 %tobool205.not, label %do.body.if.end208_crit_edge, label %if.then206

do.body.if.end208_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end208

if.then206:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2) #6
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %do.body.if.end208_crit_edge, %if.then200.if.end208_crit_edge
  %and209 = and i32 %call29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end208.if.end220_crit_edge, label %do.body212

if.end208.if.end220_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

do.body212:                                       ; preds = %if.end208
  %debug_mask213 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %84 = ptrtoint ptr %debug_mask213 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %debug_mask213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool215.not = icmp eq i32 %85, 0
  br i1 %tobool215.not, label %do.body212.if.end220_crit_edge, label %if.then216

do.body212.if.end220_crit_edge:                   ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

if.then216:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3) #6
  br label %if.end220

if.end220:                                        ; preds = %if.then216, %do.body212.if.end220_crit_edge, %if.end208.if.end220_crit_edge
  %86 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %masked, align 4
  %or221 = or i32 %87, 1073741824
  store i32 %or221, ptr %masked, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.end220, %if.end194.if.end222_crit_edge
  %and223 = and i32 %call29, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %if.end222.if.end231_crit_edge, label %if.then225

if.end222.if.end231_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231

if.then225:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #8
  %write227 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %88 = ptrtoint ptr %write227 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write227, align 4
  tail call void %89(ptr noundef %ah, i32 noundef 256, i32 noundef 16384) #6
  %90 = ptrtoint ptr %write227 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write227, align 4
  tail call void %91(ptr noundef %ah, i32 noundef 0, i32 noundef 16384) #6
  %92 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %masked, align 4
  %or230 = or i32 %93, 1073741824
  store i32 %or230, ptr %masked, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then225, %if.end222.if.end231_crit_edge
  %and232 = and i32 %call29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %if.end231.if.end243_crit_edge, label %do.body235

if.end231.if.end243_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end243

do.body235:                                       ; preds = %if.end231
  %debug_mask236 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %94 = ptrtoint ptr %debug_mask236 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %debug_mask236, align 4
  %and237 = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %do.body235.if.end243_crit_edge, label %if.then239

do.body235.if.end243_crit_edge:                   ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end243

if.then239:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4) #6
  br label %if.end243

if.end243:                                        ; preds = %if.then239, %do.body235.if.end243_crit_edge, %if.end231.if.end243_crit_edge
  %write245 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %96 = ptrtoint ptr %write245 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write245, align 4
  %98 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %99)
  %cmp248 = icmp eq i32 %99, 768
  %cond249 = select i1 %cmp248, i32 16400, i32 16424
  tail call void %97(ptr noundef %ah, i32 noundef %and30, i32 noundef %cond249) #6
  %100 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ah, align 4
  %102 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %103)
  %cmp254 = icmp eq i32 %103, 768
  %cond255 = select i1 %cmp254, i32 16400, i32 16424
  %call256 = tail call i32 %101(ptr noundef %ah, i32 noundef %cond255) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end243, %if.end189.cleanup_crit_edge, %if.then83, %if.end22.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then83 ], [ false, %if.end22.cleanup_crit_edge ], [ true, %if.end243 ], [ true, %if.end189.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_set_txdesc(ptr nocapture noundef readonly %ah, ptr noundef %ds, ptr noundef readonly %i) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  %2 = and i32 %1, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %2)
  %3 = icmp eq i32 %2, 640
  %4 = select i1 %3, i32 24, i32 23
  %5 = ptrtoint ptr %i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i, align 4
  %conv4 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %4
  %or6 = or i32 %or, 378322944
  %7 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %or6, ptr %ds, align 4
  %link = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 6
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link, align 4
  %add13 = add i32 %or6, %9
  %link20 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 1
  %10 = ptrtoint ptr %link20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %link20, align 4
  %buf_addr = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 9
  %11 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_addr, align 4
  %add25 = add i32 %add13, %12
  %data0 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 2
  %13 = ptrtoint ptr %data0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %12, ptr %data0, align 4
  %arrayidx38 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %add25, %15
  %data1 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 4
  %16 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %15, ptr %data1, align 4
  %arrayidx52 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %add39, %18
  %data2 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 6
  %19 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %18, ptr %data2, align 4
  %arrayidx66 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx66, align 4
  %add67 = add i32 %add53, %21
  %data3 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 8
  %22 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %21, ptr %data3, align 4
  %buf_len = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 10
  %23 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_len, align 4
  %shl80 = shl i32 %24, 16
  %and = and i32 %shl80, 268369920
  %add81 = add i32 %add67, %and
  %ctl3 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 3
  %25 = ptrtoint ptr %ctl3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %and, ptr %ctl3, align 4
  %arrayidx92 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx92, align 4
  %shl93 = shl i32 %27, 16
  %and94 = and i32 %shl93, 268369920
  %add95 = add i32 %add81, %and94
  %ctl5 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 5
  %28 = ptrtoint ptr %ctl5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %and94, ptr %ctl5, align 4
  %arrayidx106 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 10, i32 2
  %29 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx106, align 4
  %shl107 = shl i32 %30, 16
  %and108 = and i32 %shl107, 268369920
  %add109 = add i32 %add95, %and108
  %ctl7 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 7
  %31 = ptrtoint ptr %ctl7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %and108, ptr %ctl7, align 4
  %arrayidx120 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 10, i32 3
  %32 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx120, align 4
  %shl121 = shl i32 %33, 16
  %and122 = and i32 %shl121, 268369920
  %add123 = add i32 %add109, %and122
  %ctl9 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 9
  %34 = ptrtoint ptr %ctl9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %and122, ptr %ctl9, align 4
  %35 = lshr i32 %add123, 16
  %add134 = add i32 %35, %add123
  %conv137 = and i32 %add134, 65535
  %ctl10 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 10
  %36 = ptrtoint ptr %ctl10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %conv137, ptr %ctl10, align 4
  %is_first = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 1
  %37 = ptrtoint ptr %is_first to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_first, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body154_crit_edge

entry.do.body154_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body154

lor.lhs.false:                                    ; preds = %entry
  %is_last = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 2
  %39 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_last, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool148.not = icmp eq i8 %40, 0
  br i1 %tobool148.not, label %do.body220, label %lor.lhs.false.do.body154_crit_edge

lor.lhs.false.do.body154_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body154

do.body154:                                       ; preds = %lor.lhs.false.do.body154_crit_edge, %entry.do.body154_crit_edge
  %rates = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11
  %41 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rates, align 4
  %shl156 = shl i32 %42, 16
  %and157 = and i32 %shl156, 983040
  %arrayidx159 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1
  %43 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx159, align 4
  %shl161 = shl i32 %44, 20
  %and162 = and i32 %shl161, 15728640
  %or163 = or i32 %and162, %and157
  %arrayidx165 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2
  %45 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx165, align 4
  %shl167 = shl i32 %46, 24
  %and168 = and i32 %shl167, 251658240
  %or169 = or i32 %or163, %and168
  %arrayidx171 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3
  %47 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx171, align 4
  %shl173 = shl i32 %48, 28
  %or175 = or i32 %or169, %shl173
  %dur_update = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 13
  %49 = ptrtoint ptr %dur_update to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dur_update, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool176.not = icmp eq i8 %50, 0
  %cond178 = select i1 %tobool176.not, i32 0, i32 32768
  %or179 = or i32 %or175, %cond178
  %ctl13 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 13
  %51 = ptrtoint ptr %ctl13 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %or179, ptr %ctl13, align 4
  %Rate = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 0, i32 1
  %52 = ptrtoint ptr %Rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %Rate, align 4
  %and193 = and i32 %53, 255
  %Rate196 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1, i32 1
  %54 = ptrtoint ptr %Rate196 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %Rate196, align 4
  %shl197 = shl i32 %55, 8
  %and198 = and i32 %shl197, 65280
  %or199 = or i32 %and198, %and193
  %Rate202 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2, i32 1
  %56 = ptrtoint ptr %Rate202 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %Rate202, align 4
  %shl203 = shl i32 %57, 16
  %and204 = and i32 %shl203, 16711680
  %or205 = or i32 %or199, %and204
  %Rate208 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3, i32 1
  %58 = ptrtoint ptr %Rate208 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %Rate208, align 4
  %shl209 = shl i32 %59, 24
  %or211 = or i32 %or205, %shl209
  br label %if.end

do.body220:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %ctl13221 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 13
  %60 = ptrtoint ptr %ctl13221 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %ctl13221, align 4
  br label %if.end

if.end:                                           ; preds = %do.body220, %do.body154
  %.sink = phi i32 [ 0, %do.body220 ], [ %or211, %do.body154 ]
  %ctl14231 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 14
  %61 = ptrtoint ptr %ctl14231 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %.sink, ptr %ctl14231, align 4
  %ctl20 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 20
  %ctl21 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 21
  %ctl22 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 22
  %keytype = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 15
  %62 = call ptr @memset(ptr %ctl20, i32 0, i32 16)
  %63 = ptrtoint ptr %keytype to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %keytype, align 4
  %shl236 = shl i32 %64, 26
  %and237 = and i32 %shl236, 201326592
  %65 = ptrtoint ptr %is_first to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_first, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool239.not = icmp eq i8 %66, 0
  br i1 %tobool239.not, label %do.body245, label %do.body315

do.body245:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ctl11 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 11
  %67 = ptrtoint ptr %ctl11 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %ctl11, align 4
  %is_last255 = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 2
  %68 = ptrtoint ptr %is_last255 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %is_last255, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool256.not = icmp eq i8 %69, 0
  %cond258 = select i1 %tobool256.not, i32 4096, i32 0
  %ctl12259 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 12
  %70 = ptrtoint ptr %ctl12259 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %cond258, ptr %ctl12259, align 4
  %ctl15 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 15
  %71 = ptrtoint ptr %ctl15 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 0, ptr %ctl15, align 4
  %ctl16 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 16
  %72 = ptrtoint ptr %ctl16 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 0, ptr %ctl16, align 4
  %ctl17287 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 17
  %73 = ptrtoint ptr %ctl17287 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %and237, ptr %ctl17287, align 4
  %ctl18 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 18
  %74 = ptrtoint ptr %ctl18 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %ctl18, align 4
  %ctl19 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 19
  %75 = ptrtoint ptr %ctl19 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %ctl19, align 4
  br label %cleanup

do.body315:                                       ; preds = %if.end
  %pkt_len = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 7
  %76 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pkt_len, align 4
  %and316 = and i32 %77, 4095
  %flags = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 8
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 4
  %and317 = shl i32 %79, 4
  %80 = and i32 %and317, 4096
  %or320 = or i32 %80, %and316
  %txpower = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 17
  %81 = ptrtoint ptr %txpower to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %txpower, align 1
  %conv322 = zext i8 %82 to i32
  %shl323 = shl nuw nsw i32 %conv322, 16
  %and324 = and i32 %shl323, 4128768
  %and327 = shl i32 %79, 18
  %83 = and i32 %and327, 8388608
  %keyix = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 16
  %84 = ptrtoint ptr %keyix to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %keyix, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %85)
  %cmp332.not = icmp eq i8 %85, -1
  %cond334 = select i1 %cmp332.not, i32 0, i32 1073741824
  %86 = and i32 %and317, 16384
  %and342 = shl i32 %79, 12
  %87 = and i32 %and342, 16777216
  %and347 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347)
  %tobool348.not = icmp eq i32 %and347, 0
  %and350 = shl i32 %79, 28
  %88 = and i32 %and350, -2147483648
  %cond353 = select i1 %tobool348.not, i32 %88, i32 4194304
  %or325 = or i32 %or320, %83
  %or330 = or i32 %or325, %86
  %or335 = or i32 %or330, %87
  %or340 = or i32 %or335, %cond353
  %or345 = or i32 %or340, %and324
  %or354 = or i32 %or345, %cond334
  %ctl11355 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 11
  %89 = ptrtoint ptr %ctl11355 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 %or354, ptr %ctl11355, align 4
  %90 = ptrtoint ptr %keyix to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %keyix, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %91)
  %cmp362.not = icmp eq i8 %91, -1
  %conv361 = zext i8 %91 to i32
  %shl367 = shl nuw nsw i32 %conv361, 13
  %and368 = and i32 %shl367, 1040384
  %cond371 = select i1 %cmp362.not, i32 0, i32 %and368
  %type = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 14
  %92 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %type, align 4
  %shl372 = shl i32 %93, 20
  %and373 = and i32 %shl372, 15728640
  %or374 = or i32 %cond371, %and373
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags, align 4
  %and376 = shl i32 %95, 23
  %96 = and i32 %and376, 16777216
  %or379 = or i32 %or374, %96
  %and381 = shl i32 %95, 21
  %97 = and i32 %and381, 134217728
  %or384 = or i32 %or379, %97
  %98 = and i32 %and381, 268435456
  %or389 = or i32 %or384, %98
  %and391 = shl i32 %95, 20
  %99 = and i32 %and391, -2147483648
  %or394 = or i32 %99, %and237
  %aggr = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 3
  %100 = ptrtoint ptr %aggr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %aggr, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values)
  switch i32 %101, label %do.body315.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.body315.sw.bb399_crit_edge
    i32 3, label %sw.bb405
  ]

do.body315.sw.bb399_crit_edge:                    ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb399

do.body315.sw.epilog_crit_edge:                   ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #8
  %aggr_len = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 5
  %103 = ptrtoint ptr %aggr_len to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %aggr_len, align 2
  %conv395 = zext i16 %104 to i32
  %or398 = or i32 %or394, %conv395
  br label %sw.bb399

sw.bb399:                                         ; preds = %sw.bb, %do.body315.sw.bb399_crit_edge
  %ctl17.0 = phi i32 [ %or394, %do.body315.sw.bb399_crit_edge ], [ %or398, %sw.bb ]
  %or400 = or i32 %or389, 1610612736
  %ndelim = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 4
  %105 = ptrtoint ptr %ndelim to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ndelim, align 4
  %conv401 = zext i8 %106 to i32
  %shl402 = shl nuw nsw i32 %conv401, 18
  %or404 = or i32 %shl402, %ctl17.0
  br label %sw.epilog

sw.bb405:                                         ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #8
  %or406 = or i32 %or389, 1073741824
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb405, %sw.bb399, %do.body315.sw.epilog_crit_edge
  %ctl12.0 = phi i32 [ %or389, %do.body315.sw.epilog_crit_edge ], [ %or406, %sw.bb405 ], [ %or400, %sw.bb399 ]
  %ctl17.1 = phi i32 [ %or394, %do.body315.sw.epilog_crit_edge ], [ %or394, %sw.bb405 ], [ %or404, %sw.bb399 ]
  %107 = lshr i32 %95, 7
  %shl410 = and i32 %107, 3584
  %or412 = or i32 %ctl12.0, %shl410
  %ctl12418 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 12
  %108 = ptrtoint ptr %ctl12418 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 %or412, ptr %ctl12418, align 4
  %ctl17428 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 17
  %109 = ptrtoint ptr %ctl17428 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 %ctl17.1, ptr %ctl17428, align 4
  %PktDuration = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 0, i32 2
  %110 = ptrtoint ptr %PktDuration to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %PktDuration, align 4
  %and441 = and i32 %111, 32767
  %RateFlags = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 0, i32 4
  %112 = ptrtoint ptr %RateFlags to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %RateFlags, align 4
  %and444 = shl i32 %113, 15
  %114 = and i32 %and444, 32768
  %or447 = or i32 %and441, %114
  %PktDuration450 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1, i32 2
  %115 = ptrtoint ptr %PktDuration450 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %PktDuration450, align 4
  %shl451 = shl i32 %116, 16
  %and452 = and i32 %shl451, 2147418112
  %RateFlags455 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1, i32 4
  %117 = ptrtoint ptr %RateFlags455 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %RateFlags455, align 4
  %119 = shl i32 %118, 31
  %or459 = or i32 %and452, %119
  %or460 = or i32 %or459, %or447
  %ctl15461 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 15
  %120 = ptrtoint ptr %ctl15461 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 %or460, ptr %ctl15461, align 4
  %PktDuration473 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2, i32 2
  %121 = ptrtoint ptr %PktDuration473 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %PktDuration473, align 4
  %and475 = and i32 %122, 32767
  %RateFlags478 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2, i32 4
  %123 = ptrtoint ptr %RateFlags478 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %RateFlags478, align 4
  %and479 = shl i32 %124, 15
  %125 = and i32 %and479, 32768
  %or482 = or i32 %and475, %125
  %PktDuration485 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3, i32 2
  %126 = ptrtoint ptr %PktDuration485 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %PktDuration485, align 4
  %shl486 = shl i32 %127, 16
  %and487 = and i32 %shl486, 2147418112
  %RateFlags490 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3, i32 4
  %128 = ptrtoint ptr %RateFlags490 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %RateFlags490, align 4
  %130 = shl i32 %129, 31
  %or494 = or i32 %and487, %130
  %or495 = or i32 %or494, %or482
  %ctl16496 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 16
  %131 = ptrtoint ptr %ctl16496 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile i32 %or495, ptr %ctl16496, align 4
  %132 = load i32, ptr %RateFlags, align 4
  %and509 = lshr i32 %132, 1
  %or518 = and i32 %and509, 3
  %and522 = shl i32 %132, 25
  %133 = and i32 %and522, 268435456
  %ChSel = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 0, i32 3
  %134 = ptrtoint ptr %ChSel to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ChSel, align 4
  %shl528 = shl i32 %135, 2
  %and529 = and i32 %shl528, 28
  %136 = load i32, ptr %RateFlags455, align 4
  %and534 = shl i32 %136, 4
  %or543 = and i32 %and534, 96
  %and547 = shl i32 %136, 26
  %137 = and i32 %and547, 536870912
  %ChSel553 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 1, i32 3
  %138 = ptrtoint ptr %ChSel553 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ChSel553, align 4
  %shl554 = shl i32 %139, 7
  %and555 = and i32 %shl554, 896
  %140 = load i32, ptr %RateFlags478, align 4
  %and561 = shl i32 %140, 9
  %or570 = and i32 %and561, 3072
  %and574 = shl i32 %140, 27
  %141 = and i32 %and574, 1073741824
  %ChSel580 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 2, i32 3
  %142 = ptrtoint ptr %ChSel580 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ChSel580, align 4
  %shl581 = shl i32 %143, 12
  %and582 = and i32 %shl581, 28672
  %or577 = or i32 %or518, %133
  %or583 = or i32 %or577, %and529
  %or550 = or i32 %or583, %137
  %or556 = or i32 %or550, %or543
  %or525 = or i32 %or556, %and555
  %or530 = or i32 %or525, %141
  %or557 = or i32 %or530, %or570
  %or584 = or i32 %or557, %and582
  %144 = load i32, ptr %RateFlags490, align 4
  %and588 = shl i32 %144, 14
  %or597 = and i32 %and588, 98304
  %and601 = shl i32 %144, 28
  %145 = and i32 %and601, -2147483648
  %or604 = or i32 %or597, %145
  %ChSel607 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 11, i32 3, i32 3
  %146 = ptrtoint ptr %ChSel607 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ChSel607, align 4
  %shl608 = shl i32 %147, 17
  %and609 = and i32 %shl608, 917504
  %or610 = or i32 %or604, %and609
  %or611 = add nuw nsw i32 %or610, %or584
  %rtscts_rate = getelementptr inbounds %struct.ath_tx_info, ptr %i, i32 0, i32 12
  %148 = ptrtoint ptr %rtscts_rate to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %rtscts_rate, align 4
  %conv612 = zext i8 %149 to i32
  %shl613 = shl nuw nsw i32 %conv612, 20
  %or615 = add nuw nsw i32 %or611, %shl613
  %ctl18616 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 18
  %150 = ptrtoint ptr %ctl18616 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile i32 %or615, ptr %ctl18616, align 4
  %ctl19626 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 19
  %151 = ptrtoint ptr %ctl19626 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 536870912, ptr %ctl19626, align 4
  %arrayidx637 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 17, i32 1
  %152 = ptrtoint ptr %arrayidx637 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx637, align 1
  %conv638 = zext i8 %153 to i32
  %shl639 = shl nuw i32 %conv638, 24
  %and640 = and i32 %shl639, 1056964608
  %154 = ptrtoint ptr %ctl20 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 %and640, ptr %ctl20, align 4
  %arrayidx652 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 17, i32 2
  %155 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx652, align 1
  %conv653 = zext i8 %156 to i32
  %shl654 = shl nuw i32 %conv653, 24
  %and655 = and i32 %shl654, 1056964608
  %157 = ptrtoint ptr %ctl21 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 %and655, ptr %ctl21, align 4
  %arrayidx667 = getelementptr %struct.ath_tx_info, ptr %i, i32 0, i32 17, i32 3
  %158 = ptrtoint ptr %arrayidx667 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx667, align 1
  %conv668 = zext i8 %159 to i32
  %shl669 = shl nuw i32 %conv668, 24
  %and670 = and i32 %shl669, 1056964608
  %160 = ptrtoint ptr %ctl22 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile i32 %and670, ptr %ctl22, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body245
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9003_hw_proc_txdesc(ptr noundef %ah, ptr nocapture noundef readnone %ds, ptr nocapture noundef %ts) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_ring = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 110
  %0 = ptrtoint ptr %ts_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts_ring, align 4
  %ts_tail = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 113
  %2 = ptrtoint ptr %ts_tail to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ts_tail, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.ar9003_txs, ptr %1, i32 %idxprom
  %status8 = getelementptr %struct.ar9003_txs, ptr %1, i32 %idxprom, i32 8
  %4 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status8, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw nsw i32 %idxprom, 1
  %ts_size = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 114
  %6 = ptrtoint ptr %ts_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ts_size, align 2
  %conv2 = zext i16 %7 to i32
  %rem = urem i32 %add, %conv2
  %conv3 = trunc i32 %rem to i16
  %8 = ptrtoint ptr %ts_tail to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv3, ptr %ts_tail, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = and i32 %10, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 378306560, i32 %11)
  %.not = icmp eq i32 %11, 378306560
  br i1 %.not, label %if.end22, label %do.body14

do.body14:                                        ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and15 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %do.body14.cleanup.sink.split_crit_edge, label %if.then16

do.body14.cleanup.sink.split_crit_edge:           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %10) #6
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end
  %and23 = lshr i32 %5, 21
  %14 = trunc i32 %and23 to i8
  %conv25 = and i8 %14, 3
  %ts_rateindex = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 3
  %15 = ptrtoint ptr %ts_rateindex to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv25, ptr %ts_rateindex, align 1
  %16 = trunc i32 %5 to i16
  %17 = lshr i16 %16, 1
  %conv28 = and i16 %17, 4095
  %ts_seqnum = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 1
  %18 = ptrtoint ptr %ts_seqnum to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv28, ptr %ts_seqnum, align 4
  %shr30 = lshr i32 %5, 28
  %conv31 = trunc i32 %shr30 to i8
  %tid = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 17
  %19 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv31, ptr %tid, align 2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %and33 = lshr i32 %21, 8
  %22 = trunc i32 %and33 to i8
  %conv35 = and i8 %22, 15
  %qid = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 15
  %23 = ptrtoint ptr %qid to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv35, ptr %qid, align 1
  %status1 = getelementptr %struct.ar9003_txs, ptr %1, i32 %idxprom, i32 1
  %24 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status1, align 4
  %shr37 = lshr i32 %25, 16
  %conv38 = trunc i32 %shr37 to i16
  %desc_id = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 16
  %26 = ptrtoint ptr %desc_id to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv38, ptr %desc_id, align 4
  %status4 = getelementptr %struct.ar9003_txs, ptr %1, i32 %idxprom, i32 4
  %27 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status4, align 4
  %29 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ts, align 4
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %30 = ptrtoint ptr %ts_status to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ts_status, align 2
  %ts_flags = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 8
  %31 = ptrtoint ptr %ts_flags to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ts_flags, align 4
  %and39 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end22.do.end48_crit_edge, label %if.then41

if.end22.do.end48_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

if.then41:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %ts_status to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %ts_status, align 2
  br label %do.end48

do.end48:                                         ; preds = %if.then41, %if.end22.do.end48_crit_edge
  %status2 = getelementptr %struct.ar9003_txs, ptr %1, i32 %idxprom, i32 2
  %33 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %status2, align 4
  %conv52 = trunc i32 %34 to i8
  %ts_rssi_ctl0 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 9
  %35 = ptrtoint ptr %ts_rssi_ctl0 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv52, ptr %ts_rssi_ctl0, align 1
  %and53 = lshr i32 %34, 8
  %conv55 = trunc i32 %and53 to i8
  %ts_rssi_ctl1 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 10
  %36 = ptrtoint ptr %ts_rssi_ctl1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv55, ptr %ts_rssi_ctl1, align 2
  %and56 = lshr i32 %34, 16
  %conv58 = trunc i32 %and56 to i8
  %ts_rssi_ctl2 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 11
  %37 = ptrtoint ptr %ts_rssi_ctl2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv58, ptr %ts_rssi_ctl2, align 1
  %and59 = and i32 %34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.end48.do.end69_crit_edge, label %if.then61

do.end48.do.end69_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

if.then61:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %ts_flags to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %ts_flags, align 4
  %status5 = getelementptr %struct.ar9003_txs, ptr %1, i32 %idxprom, i32 5
  %39 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status5, align 4
  %ba_low = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 18
  %41 = ptrtoint ptr %ba_low to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ba_low, align 4
  %status6 = getelementptr %struct.ar9003_txs, ptr %1, i32 %idxprom, i32 6
  %42 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status6, align 4
  %ba_high = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 19
  %44 = ptrtoint ptr %ba_high to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %ba_high, align 4
  br label %do.end69

do.end69:                                         ; preds = %if.then61, %do.end48.do.end69_crit_edge
  %status3 = getelementptr %struct.ar9003_txs, ptr %1, i32 %idxprom, i32 3
  %45 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %status3, align 4
  %and71 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.end69.if.end78_crit_edge, label %if.then73

do.end69.if.end78_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then73:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ts_status, align 2
  %49 = or i8 %48, 1
  store i8 %49, ptr %ts_status, align 2
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %do.end69.if.end78_crit_edge
  %and79 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end86_crit_edge, label %if.then81

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ts_status, align 2
  %52 = or i8 %51, 2
  store i8 %52, ptr %ts_status, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %if.end78.if.end86_crit_edge
  %and87 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end86.if.end95_crit_edge, label %if.then89

if.end86.if.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ts_status, align 2
  %55 = or i8 %54, 4
  store i8 %55, ptr %ts_status, align 2
  %call94 = tail call zeroext i1 @ath9k_hw_updatetxtriglevel(ptr noundef %ah, i1 noundef zeroext true) #6
  br label %if.end95

if.end95:                                         ; preds = %if.then89, %if.end86.if.end95_crit_edge
  %and96 = and i32 %46, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end103_crit_edge, label %if.then98

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ts_status, align 2
  %58 = or i8 %57, 16
  store i8 %58, ptr %ts_status, align 2
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.end95.if.end103_crit_edge
  %and104 = and i32 %46, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end111_crit_edge, label %if.then106

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ts_flags, align 4
  %61 = or i8 %60, 4
  store i8 %61, ptr %ts_flags, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.end103.if.end111_crit_edge
  %and112 = and i32 %46, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end120_crit_edge, label %if.then114

if.end111.if.end120_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ts_flags, align 4
  %64 = or i8 %63, 8
  store i8 %64, ptr %ts_flags, align 4
  %call119 = tail call zeroext i1 @ath9k_hw_updatetxtriglevel(ptr noundef %ah, i1 noundef zeroext true) #6
  br label %if.end120

if.end120:                                        ; preds = %if.then114, %if.end111.if.end120_crit_edge
  %and121 = and i32 %46, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end129_crit_edge, label %if.then123

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ts_flags, align 4
  %67 = or i8 %66, 16
  store i8 %67, ptr %ts_flags, align 4
  %call128 = tail call zeroext i1 @ath9k_hw_updatetxtriglevel(ptr noundef %ah, i1 noundef zeroext true) #6
  br label %if.end129

if.end129:                                        ; preds = %if.then123, %if.end120.if.end129_crit_edge
  %68 = trunc i32 %46 to i8
  %69 = lshr i8 %68, 4
  %ts_shortretry = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 5
  %70 = ptrtoint ptr %ts_shortretry to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %ts_shortretry, align 1
  %and133 = lshr i32 %46, 8
  %71 = trunc i32 %and133 to i8
  %conv135 = and i8 %71, 15
  %ts_longretry = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 6
  %72 = ptrtoint ptr %ts_longretry to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv135, ptr %ts_longretry, align 2
  %and136 = lshr i32 %46, 12
  %73 = trunc i32 %and136 to i8
  %conv138 = and i8 %73, 15
  %ts_virtcol = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 7
  %74 = ptrtoint ptr %ts_virtcol to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv138, ptr %ts_virtcol, align 1
  %status7 = getelementptr %struct.ar9003_txs, ptr %1, i32 %idxprom, i32 7
  %75 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %status7, align 4
  %shr144 = lshr i32 %76, 24
  %conv145 = trunc i32 %shr144 to i8
  %ts_rssi = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 4
  %77 = ptrtoint ptr %ts_rssi to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv145, ptr %ts_rssi, align 4
  %conv148 = trunc i32 %76 to i8
  %ts_rssi_ext0 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 12
  %78 = ptrtoint ptr %ts_rssi_ext0 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv148, ptr %ts_rssi_ext0, align 4
  %and149 = lshr i32 %76, 8
  %conv151 = trunc i32 %and149 to i8
  %ts_rssi_ext1 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 13
  %79 = ptrtoint ptr %ts_rssi_ext1 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv151, ptr %ts_rssi_ext1, align 1
  %and152 = lshr i32 %76, 16
  %conv154 = trunc i32 %and152 to i8
  %ts_rssi_ext2 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 14
  %80 = ptrtoint ptr %ts_rssi_ext2 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv154, ptr %ts_rssi_ext2, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end129, %if.then16, %do.body14.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end129 ], [ -5, %if.then16 ], [ -5, %do.body14.cleanup.sink.split_crit_edge ]
  %81 = call ptr @memset(ptr %arrayidx, i32 0, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ar9003_hw_get_duration(ptr nocapture noundef readnone %ah, ptr noundef %ds, i32 noundef %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %index, label %entry.cleanup_crit_edge [
    i32 0, label %do.end
    i32 1, label %do.end4
    i32 2, label %do.end12
    i32 3, label %do.end19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl15 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 15
  %1 = ptrtoint ptr %ctl15 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %ctl15, align 4
  %and = and i32 %2, 32767
  br label %cleanup

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl156 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 15
  %3 = ptrtoint ptr %ctl156 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ctl156, align 4
  %and7 = lshr i32 %4, 16
  %shr8 = and i32 %and7, 32767
  br label %cleanup

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl16 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 16
  %5 = ptrtoint ptr %ctl16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ctl16, align 4
  %and14 = and i32 %6, 32767
  br label %cleanup

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl1621 = getelementptr inbounds %struct.ar9003_txc, ptr %ds, i32 0, i32 16
  %7 = ptrtoint ptr %ctl1621 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ctl1621, align 4
  %and22 = lshr i32 %8, 16
  %shr23 = and i32 %and22, 32767
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end12, %do.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr23, %do.end19 ], [ %and14, %do.end12 ], [ %shr8, %do.end4 ], [ %and, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_set_rx_bufsize(ptr noundef %ah, i16 noundef zeroext %buf_size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %2 = and i16 %buf_size, 4095
  %and = zext i16 %2 to i32
  tail call void %1(ptr noundef %ah, i32 noundef %and, i32 noundef 96) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_addrxbuf_edma(ptr noundef %ah, i32 noundef %rxdp, i32 noundef %qtype) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qtype)
  %cmp = icmp eq i32 %qtype, 0
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %. = select i1 %cmp, i32 116, i32 120
  tail call void %1(ptr noundef %ah, i32 noundef %rxdp, i32 noundef %.) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath9k_hw_process_rxdesc_edma(ptr nocapture readnone %ah, ptr noundef %rxs, ptr nocapture noundef readonly %buf_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status11 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 11
  %0 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status11, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_addr, align 4
  %shr.mask = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 378273792, i32 %shr.mask)
  %cmp2.not = icmp eq i32 %shr.mask, 378273792
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %3, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %rs_status = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 2
  %4 = ptrtoint ptr %rs_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %rs_status, align 2
  %rs_flags = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 15
  %5 = ptrtoint ptr %rs_flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %rs_flags, align 1
  %enc_flags = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 22
  %6 = ptrtoint ptr %enc_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %enc_flags, align 4
  %bw = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 23
  %7 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bw, align 4
  %status2 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 2
  %8 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status2, align 4
  %10 = trunc i32 %9 to i16
  %conv = and i16 %10, 4095
  %rs_datalen = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 1
  %11 = ptrtoint ptr %rs_datalen to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %rs_datalen, align 4
  %status3 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 3
  %12 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status3, align 4
  %14 = ptrtoint ptr %rxs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rxs, align 4
  %status5 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 5
  %15 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status5, align 4
  %shr12 = lshr i32 %16, 24
  %conv13 = trunc i32 %shr12 to i8
  %rs_rssi = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 4
  %17 = ptrtoint ptr %rs_rssi to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv13, ptr %rs_rssi, align 4
  %status1 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 1
  %18 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status1, align 4
  %conv16 = trunc i32 %19 to i8
  %rs_rssi_ctl = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 9
  %20 = ptrtoint ptr %rs_rssi_ctl to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv16, ptr %rs_rssi_ctl, align 1
  %21 = load i32, ptr %status1, align 4
  %and18 = lshr i32 %21, 8
  %conv20 = trunc i32 %and18 to i8
  %arrayidx22 = getelementptr %struct.ath_rx_status, ptr %rxs, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv20, ptr %arrayidx22, align 1
  %23 = load i32, ptr %status1, align 4
  %and24 = lshr i32 %23, 16
  %conv26 = trunc i32 %and24 to i8
  %arrayidx28 = getelementptr %struct.ath_rx_status, ptr %rxs, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv26, ptr %arrayidx28, align 1
  %25 = load i32, ptr %status5, align 4
  %conv32 = trunc i32 %25 to i8
  %rs_rssi_ext = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 10
  %26 = ptrtoint ptr %rs_rssi_ext to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv32, ptr %rs_rssi_ext, align 4
  %27 = load i32, ptr %status5, align 4
  %and35 = lshr i32 %27, 8
  %conv37 = trunc i32 %and35 to i8
  %arrayidx39 = getelementptr %struct.ath_rx_status, ptr %rxs, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv37, ptr %arrayidx39, align 1
  %29 = load i32, ptr %status5, align 4
  %and41 = lshr i32 %29, 16
  %conv43 = trunc i32 %and41 to i8
  %arrayidx45 = getelementptr %struct.ath_rx_status, ptr %rxs, i32 0, i32 10, i32 2
  %30 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv43, ptr %arrayidx45, align 2
  %31 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status11, align 4
  %and47 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool.not = icmp eq i32 %and47, 0
  %and50 = lshr i32 %32, 9
  %33 = trunc i32 %and50 to i8
  %conv52 = and i8 %33, 127
  %conv52.sink = select i1 %tobool.not, i8 -1, i8 %conv52
  %34 = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv52.sink, ptr %34, align 1
  %36 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status1, align 4
  %shr57 = lshr i32 %37, 24
  %conv58 = trunc i32 %shr57 to i8
  %rs_rate = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 6
  %38 = ptrtoint ptr %rs_rate to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv58, ptr %rs_rate, align 2
  %39 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status2, align 4
  %and60 = lshr i32 %40, 12
  %41 = trunc i32 %and60 to i8
  %42 = and i8 %41, 1
  %rs_more = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 8
  %43 = ptrtoint ptr %rs_more to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %rs_more, align 4
  %44 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status11, align 4
  %and64 = lshr i32 %45, 29
  %46 = trunc i32 %and64 to i8
  %47 = and i8 %46, 1
  %rs_firstaggr = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 12
  %48 = ptrtoint ptr %rs_firstaggr to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %rs_firstaggr, align 4
  %49 = load i32, ptr %status11, align 4
  %and69 = lshr i32 %49, 17
  %50 = trunc i32 %and69 to i8
  %51 = and i8 %50, 1
  %rs_isaggr = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 11
  %52 = ptrtoint ptr %rs_isaggr to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %rs_isaggr, align 1
  %53 = load i32, ptr %status11, align 4
  %and74 = lshr i32 %53, 16
  %54 = trunc i32 %and74 to i8
  %55 = and i8 %54, 1
  %rs_moreaggr = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 13
  %56 = ptrtoint ptr %rs_moreaggr to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %rs_moreaggr, align 1
  %status4 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 4
  %57 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status4, align 4
  %shr79 = lshr i32 %58, 8
  %59 = trunc i32 %shr79 to i8
  %conv81 = and i8 %59, 7
  %rs_antenna = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 7
  %60 = ptrtoint ptr %rs_antenna to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv81, ptr %rs_antenna, align 1
  %61 = load i32, ptr %status4, align 4
  %.tr = trunc i32 %61 to i16
  %62 = shl i16 %.tr, 2
  %63 = and i16 %62, 4
  %64 = ptrtoint ptr %enc_flags to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %enc_flags, align 4
  %65 = load i32, ptr %status4, align 4
  %.tr274 = trunc i32 %65 to i16
  %66 = shl i16 %.tr274, 1
  %67 = and i16 %66, 16
  %conv96 = or i16 %67, %63
  store i16 %conv96, ptr %enc_flags, align 4
  %68 = load i32, ptr %status4, align 4
  %and98 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %cond100 = select i1 %tobool99.not, i32 0, i32 3
  %69 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond100, ptr %bw, align 4
  %status6 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 6
  %70 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status6, align 4
  %evm0 = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 17
  %72 = ptrtoint ptr %evm0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %evm0, align 4
  %status7 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 7
  %73 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %status7, align 4
  %evm1 = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 18
  %75 = ptrtoint ptr %evm1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %evm1, align 4
  %status8 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 8
  %76 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %status8, align 4
  %evm2 = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 19
  %78 = ptrtoint ptr %evm2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %evm2, align 4
  %status9 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 9
  %79 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %status9, align 4
  %evm3 = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 20
  %81 = ptrtoint ptr %evm3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %evm3, align 4
  %status10 = getelementptr inbounds %struct.ar9003_rxs, ptr %buf_addr, i32 0, i32 10
  %82 = ptrtoint ptr %status10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %status10, align 4
  %and102 = and i32 %83, 65535
  %evm4 = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 21
  %84 = ptrtoint ptr %evm4 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and102, ptr %evm4, align 4
  %85 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %status11, align 4
  %and104 = and i32 %86, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end9.if.end111_crit_edge, label %if.then106

if.end9.if.end111_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then106:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %rs_flags to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 16, ptr %rs_flags, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.end9.if.end111_crit_edge
  %88 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %status11, align 4
  %and113 = and i32 %89, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end111.if.end120_crit_edge, label %if.then115

if.end111.if.end120_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %rs_flags to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rs_flags, align 1
  %92 = or i8 %91, 32
  store i8 %92, ptr %rs_flags, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.end111.if.end120_crit_edge
  %93 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %status11, align 4
  %and122 = and i32 %94, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end120.if.end129_crit_edge, label %if.then124

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %rs_flags to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rs_flags, align 1
  %97 = or i8 %96, 64
  store i8 %97, ptr %rs_flags, align 1
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end120.if.end129_crit_edge
  %98 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %status11, align 4
  %and131 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %cmp132 = icmp eq i32 %and131, 0
  br i1 %cmp132, label %if.then134, label %if.end129.if.end186_crit_edge

if.end129.if.end186_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then134:                                       ; preds = %if.end129
  %and136 = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.else143, label %if.then134.if.end163.sink.split_crit_edge

if.then134.if.end163.sink.split_crit_edge:        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163.sink.split

if.else143:                                       ; preds = %if.then134
  %and145 = and i32 %99, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.else152, label %if.else143.if.end163.sink.split_crit_edge

if.else143.if.end163.sink.split_crit_edge:        ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163.sink.split

if.else152:                                       ; preds = %if.else143
  %and154 = and i32 %99, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.else152.if.end163_crit_edge, label %if.else152.if.end163.sink.split_crit_edge

if.else152.if.end163.sink.split_crit_edge:        ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163.sink.split

if.else152.if.end163_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.end163.sink.split:                             ; preds = %if.else152.if.end163.sink.split_crit_edge, %if.else143.if.end163.sink.split_crit_edge, %if.then134.if.end163.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then134.if.end163.sink.split_crit_edge ], [ 8, %if.else143.if.end163.sink.split_crit_edge ], [ 16, %if.else152.if.end163.sink.split_crit_edge ]
  %100 = ptrtoint ptr %rs_status to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %.sink, ptr %rs_status, align 2
  br label %if.end163

if.end163:                                        ; preds = %if.end163.sink.split, %if.else152.if.end163_crit_edge
  %101 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %status11, align 4
  %and165 = and i32 %102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end163.if.end186_crit_edge, label %if.then167

if.end163.if.end186_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then167:                                       ; preds = %if.end163
  %103 = and i32 %102, 327424
  call void @__sanitizer_cov_trace_const_cmp4(i32 268032, i32 %103)
  %.not = icmp eq i32 %103, 268032
  br i1 %.not, label %if.then167.if.end186thread-pre-split_crit_edge, label %if.else177

if.then167.if.end186thread-pre-split_crit_edge:   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186thread-pre-split

if.else177:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  %and169 = lshr i32 %102, 8
  %104 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %rs_status, align 2
  %106 = or i8 %105, 2
  store i8 %106, ptr %rs_status, align 2
  %conv182 = trunc i32 %and169 to i8
  br label %if.end186thread-pre-split

if.end186thread-pre-split:                        ; preds = %if.else177, %if.then167.if.end186thread-pre-split_crit_edge
  %conv182.sink = phi i8 [ %conv182, %if.else177 ], [ 0, %if.then167.if.end186thread-pre-split_crit_edge ]
  %107 = getelementptr inbounds %struct.ath_rx_status, ptr %rxs, i32 0, i32 3
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv182.sink, ptr %107, align 1
  %109 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr = load i32, ptr %status11, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.end186thread-pre-split, %if.end163.if.end186_crit_edge, %if.end129.if.end186_crit_edge
  %110 = phi i32 [ %.pr, %if.end186thread-pre-split ], [ %102, %if.end163.if.end186_crit_edge ], [ %99, %if.end129.if.end186_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %tobool189.not = icmp sgt i32 %110, -1
  br i1 %tobool189.not, label %if.end186.cleanup_crit_edge, label %if.then190

if.end186.cleanup_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then190:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %rs_status, align 2
  %113 = or i8 %112, 32
  store i8 %113, ptr %rs_status, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then190, %if.end186.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -115, %if.end4.cleanup_crit_edge ], [ 0, %if.then190 ], [ 0, %if.end186.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_reset_txstatus_ring(ptr noundef %ah) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_tail = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 113
  %0 = ptrtoint ptr %ts_tail to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ts_tail, align 4
  %ts_ring = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 110
  %1 = ptrtoint ptr %ts_ring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ts_ring, align 4
  %ts_size = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 114
  %3 = ptrtoint ptr %ts_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ts_size, align 2
  %conv = zext i16 %4 to i32
  %mul = mul nuw nsw i32 %conv, 36
  %5 = call ptr @memset(ptr %2, i32 0, i32 %mul)
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %ts_paddr_start = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 111
  %8 = ptrtoint ptr %ts_paddr_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ts_paddr_start, align 4
  %ts_paddr_end = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 112
  %10 = ptrtoint ptr %ts_paddr_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ts_paddr_end, align 4
  %12 = ptrtoint ptr %ts_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ts_ring, align 4
  %14 = ptrtoint ptr %ts_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ts_size, align 2
  %conv4 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %conv4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %ts_paddr_start5 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 111
  %18 = ptrtoint ptr %ts_paddr_start5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ts_paddr_start5, align 4
  tail call void %17(ptr noundef %ah, i32 noundef %19, i32 noundef 2096) #6
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  %ts_paddr_end8 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 112
  %22 = ptrtoint ptr %ts_paddr_end8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ts_paddr_end8, align 4
  tail call void %21(ptr noundef %ah, i32 noundef %23, i32 noundef 2100) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_setup_statusring(ptr noundef %ah, ptr noundef %ts_start, i32 noundef %ts_paddr_start, i16 noundef zeroext %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_paddr_start1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 111
  %0 = ptrtoint ptr %ts_paddr_start1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ts_paddr_start, ptr %ts_paddr_start1, align 4
  %conv = zext i16 %size to i32
  %mul = mul nuw nsw i32 %conv, 36
  %add = add i32 %mul, %ts_paddr_start
  %ts_paddr_end = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 112
  %1 = ptrtoint ptr %ts_paddr_end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %ts_paddr_end, align 4
  %ts_size = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 114
  %2 = ptrtoint ptr %ts_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %size, ptr %ts_size, align 2
  %ts_ring = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 110
  %3 = ptrtoint ptr %ts_ring to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ts_start, ptr %ts_ring, align 4
  %ts_tail.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 113
  %4 = ptrtoint ptr %ts_tail.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %ts_tail.i, align 4
  %5 = call ptr @memset(ptr %ts_start, i32 0, i32 %mul)
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ath9k_hw_reset_txstatus_ring.exit_crit_edge, label %if.then.i

entry.ath9k_hw_reset_txstatus_ring.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_reset_txstatus_ring.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %8 = ptrtoint ptr %ts_paddr_start1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ts_paddr_start1, align 4
  %10 = ptrtoint ptr %ts_paddr_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ts_paddr_end, align 4
  %12 = ptrtoint ptr %ts_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ts_ring, align 4
  %14 = ptrtoint ptr %ts_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ts_size, align 2
  %conv4.i = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %conv4.i) #6
  br label %ath9k_hw_reset_txstatus_ring.exit

ath9k_hw_reset_txstatus_ring.exit:                ; preds = %if.then.i, %entry.ath9k_hw_reset_txstatus_ring.exit_crit_edge
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 4
  %18 = ptrtoint ptr %ts_paddr_start1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ts_paddr_start1, align 4
  tail call void %17(ptr noundef %ah, i32 noundef %19, i32 noundef 2096) #6
  %20 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i, align 4
  %22 = ptrtoint ptr %ts_paddr_end to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ts_paddr_end, align 4
  tail call void %21(ptr noundef %ah, i32 noundef %23, i32 noundef 2100) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_bb_watchdog_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_mci_get_isr(ptr noundef, ptr noundef) local_unnamed_addr #5

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_ath9k_hw_set_rx_bufsize, !1, !"__ksymtab_ath9k_hw_set_rx_bufsize", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_mac.c", i32 468, i32 1}
!2 = !{ptr @__ksymtab_ath9k_hw_addrxbuf_edma, !3, !"__ksymtab_ath9k_hw_addrxbuf_edma", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_mac.c", i32 478, i32 1}
!4 = !{ptr @__ksymtab_ath9k_hw_process_rxdesc_edma, !5, !"__ksymtab_ath9k_hw_process_rxdesc_edma", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_mac.c", i32 589, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_mac.c", i32 598, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_ath9k_hw_setup_statusring, !10, !"__ksymtab_ath9k_hw_setup_statusring", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_mac.c", i32 619, i32 1}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_mac.c", i32 327, i32 5}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_mac.c", i32 331, i32 5}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_mac.c", i32 344, i32 4}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_mac.c", i32 370, i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
