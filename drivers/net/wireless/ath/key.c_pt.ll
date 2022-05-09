; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/key.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath_hw_keyreset\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_hw_keyreset\09\09\09\09"
module asm "\09.long\09__crc_ath_hw_keyreset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_hw_keyreset:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_hw_keyreset\22\09\09\09\09\09"
module asm "__kstrtabns_ath_hw_keyreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_hw_keysetmac\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_hw_keysetmac\09\09\09\09"
module asm "\09.long\09__crc_ath_hw_keysetmac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_hw_keysetmac:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_hw_keysetmac\22\09\09\09\09\09"
module asm "__kstrtabns_ath_hw_keysetmac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_key_config\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_key_config\09\09\09\09"
module asm "\09.long\09__crc_ath_key_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_key_config:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_key_config\22\09\09\09\09\09"
module asm "__kstrtabns_ath_key_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_key_delete\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_key_delete\09\09\09\09"
module asm "\09.long\09__crc_ath_key_delete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_key_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_key_delete\22\09\09\09\09\09"
module asm "__kstrtabns_ath_key_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_keyval = type { i8, i8, i16, [16 x i8], [8 x i8], [8 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"keyreset: keycache entry %u out of range\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_ath_hw_keyreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_hw_keyreset = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_hw_keyreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_hw_keyreset to i32), ptr @__kstrtab_ath_hw_keyreset, ptr @__kstrtabns_ath_hw_keyreset }, section "___ksymtab+ath_hw_keyreset", align 4
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"keysetmac: keycache entry %u out of range\0A\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_ath_hw_keysetmac = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_hw_keysetmac = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_hw_keysetmac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_hw_keysetmac to i32), ptr @__kstrtab_ath_hw_keysetmac, ptr @__kstrtabns_ath_hw_keysetmac }, section "___ksymtab+ath_hw_keysetmac", align 4
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/wireless/ath/key.c\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_ath_key_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_key_config = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_key_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_key_config to i32), ptr @__kstrtab_ath_key_config, ptr @__kstrtabns_ath_key_config }, section "___ksymtab+ath_key_config", align 4
@__kstrtab_ath_key_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_key_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_key_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_key_delete to i32), ptr @__kstrtab_ath_key_delete, ptr @__kstrtabns_ath_key_delete }, section "___ksymtab+ath_key_delete", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Setting TX MIC Key Failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"set-entry: keycache entry %u out of range\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AES-CCM not supported by this mac rev\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"entry %u inappropriate for TKIP\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WEP key length %u too small\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cipher %u not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 48, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 94, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 531, i32 7 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 377, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 138, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 149, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 158, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 165, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [34 x i8] c"../drivers/net/wireless/ath/key.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 180, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_ath_hw_keyreset, ptr @__ksymtab_ath_hw_keysetmac, ptr @__ksymtab_ath_key_config, ptr @__ksymtab_ath_key_delete, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath_hw_keyreset(ptr noundef %common, i16 noundef zeroext %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %conv = zext i16 %entry1 to i32
  %keymax = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 13
  %2 = ptrtoint ptr %keymax to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common, ptr noundef nonnull @.str.1, i32 noundef %conv) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 24
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 34816
  %add6 = add nuw nsw i32 %mul, 34836
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add6) #5
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %enable_write_buffer = getelementptr inbounds %struct.ath_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable_write_buffer, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %1) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.ath_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  tail call void %15(ptr noundef %1, i32 noundef 0, i32 noundef %add) #5
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %write18 = getelementptr inbounds %struct.ath_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %write18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write18, align 4
  %add22 = add nuw nsw i32 %mul, 34820
  tail call void %19(ptr noundef %1, i32 noundef 0, i32 noundef %add22) #5
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %write24 = getelementptr inbounds %struct.ath_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %write24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write24, align 4
  %add28 = add nuw nsw i32 %mul, 34824
  tail call void %23(ptr noundef %1, i32 noundef 0, i32 noundef %add28) #5
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %write30 = getelementptr inbounds %struct.ath_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %write30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write30, align 4
  %add34 = add nuw nsw i32 %mul, 34828
  tail call void %27(ptr noundef %1, i32 noundef 0, i32 noundef %add34) #5
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %write36 = getelementptr inbounds %struct.ath_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %write36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write36, align 4
  %add40 = add nuw nsw i32 %mul, 34832
  tail call void %31(ptr noundef %1, i32 noundef 0, i32 noundef %add40) #5
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %write42 = getelementptr inbounds %struct.ath_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write42, align 4
  tail call void %35(ptr noundef %1, i32 noundef 7, i32 noundef %add6) #5
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %write48 = getelementptr inbounds %struct.ath_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %write48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write48, align 4
  %add52 = add nuw nsw i32 %mul, 34840
  tail call void %39(ptr noundef %1, i32 noundef 0, i32 noundef %add52) #5
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %write54 = getelementptr inbounds %struct.ath_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %write54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write54, align 4
  %add58 = add nuw nsw i32 %mul, 34844
  tail call void %43(ptr noundef %1, i32 noundef 0, i32 noundef %add58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp59 = icmp eq i32 %call, 4
  br i1 %cmp59, label %if.then61, label %if.end11.if.end104_crit_edge

if.end11.if.end104_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then61:                                        ; preds = %if.end11
  %add63 = add i16 %entry1, 64
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %write66 = getelementptr inbounds %struct.ath_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %write66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write66, align 4
  %conv67 = zext i16 %add63 to i32
  %mul68 = shl nuw nsw i32 %conv67, 5
  %add69 = add nuw nsw i32 %mul68, 34816
  tail call void %47(ptr noundef %1, i32 noundef 0, i32 noundef %add69) #5
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %write72 = getelementptr inbounds %struct.ath_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %write72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write72, align 4
  %add76 = add nuw nsw i32 %mul68, 34820
  tail call void %51(ptr noundef %1, i32 noundef 0, i32 noundef %add76) #5
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %write78 = getelementptr inbounds %struct.ath_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %write78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write78, align 4
  %add82 = add nuw nsw i32 %mul68, 34824
  tail call void %55(ptr noundef %1, i32 noundef 0, i32 noundef %add82) #5
  %56 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops, align 4
  %write84 = getelementptr inbounds %struct.ath_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %write84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write84, align 4
  %add88 = add nuw nsw i32 %mul68, 34828
  tail call void %59(ptr noundef %1, i32 noundef 0, i32 noundef %add88) #5
  %crypt_caps = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 17
  %60 = ptrtoint ptr %crypt_caps to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %crypt_caps, align 4
  %and = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool89.not = icmp eq i32 %and, 0
  br i1 %tobool89.not, label %if.then61.if.end104_crit_edge, label %if.then90

if.then61.if.end104_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then90:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops, align 4
  %write92 = getelementptr inbounds %struct.ath_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %write92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write92, align 4
  %add96 = add nuw nsw i32 %mul68, 34832
  tail call void %65(ptr noundef %1, i32 noundef 0, i32 noundef %add96) #5
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops, align 4
  %write98 = getelementptr inbounds %struct.ath_ops, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %write98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write98, align 4
  %add102 = add nuw nsw i32 %mul68, 34836
  tail call void %69(ptr noundef %1, i32 noundef 7, i32 noundef %add102) #5
  br label %if.end104

if.end104:                                        ; preds = %if.then90, %if.then61.if.end104_crit_edge, %if.end11.if.end104_crit_edge
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops, align 4
  %write_flush = getelementptr inbounds %struct.ath_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_flush, align 4
  %tobool106.not = icmp eq ptr %73, null
  br i1 %tobool106.not, label %if.end104.cleanup_crit_edge, label %if.then107

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %73(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %if.end104.cleanup_crit_edge, %if.then
  ret i1 %cmp.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath_hw_keysetmac(ptr noundef %common, i16 noundef zeroext %entry1, ptr noundef readonly %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %conv = zext i16 %entry1 to i32
  %keymax = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 13
  %2 = ptrtoint ptr %keymax to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common, ptr noundef nonnull @.str.2, i32 noundef %conv) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp5.not = icmp eq ptr %mac, null
  br i1 %cmp5.not, label %if.end.if.end15_crit_edge, label %if.then7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac, align 1
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 15
  %9 = xor i32 %8, 32768
  %10 = load i32, ptr %mac, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %add.ptr = getelementptr i8, ptr %mac, i32 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #5
  %conv12 = zext i16 %14 to i32
  %or = tail call i32 @llvm.fshl.i32(i32 %conv12, i32 %11, i32 31)
  %shr14 = lshr i32 %conv12, 1
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end.if.end15_crit_edge
  %macHi.0 = phi i32 [ %shr14, %if.then7 ], [ 0, %if.end.if.end15_crit_edge ]
  %macLo.0 = phi i32 [ %or, %if.then7 ], [ 0, %if.end.if.end15_crit_edge ]
  %unicast_flag.1 = phi i32 [ %9, %if.then7 ], [ 32768, %if.end.if.end15_crit_edge ]
  %ops = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 24
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %enable_write_buffer = getelementptr inbounds %struct.ath_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enable_write_buffer, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %18(ptr noundef %1) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.ath_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write, align 4
  %mul = shl nuw nsw i32 %conv, 5
  %add23 = add nuw nsw i32 %mul, 34840
  tail call void %22(ptr noundef %1, i32 noundef %macLo.0, i32 noundef %add23) #5
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %write25 = getelementptr inbounds %struct.ath_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %write25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write25, align 4
  %or26 = or i32 %unicast_flag.1, %macHi.0
  %add30 = add nuw nsw i32 %mul, 34844
  tail call void %26(ptr noundef %1, i32 noundef %or26, i32 noundef %add30) #5
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %write_flush = getelementptr inbounds %struct.ath_ops, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_flush, align 4
  %tobool32.not = icmp eq ptr %30, null
  br i1 %tobool32.not, label %if.end20.cleanup_crit_edge, label %if.then33

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %30(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end20.cleanup_crit_edge, %if.then
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_key_config(ptr noundef %common, ptr nocapture noundef readonly %vif, ptr noundef %sta, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %hk = alloca %struct.ath_keyval, align 2
  %gmac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hk) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %gmac) #5
  %0 = call ptr @memset(ptr %gmac, i32 255, i32 6)
  %1 = call ptr @memset(ptr %hk, i32 0, i32 36)
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cipher, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1027073, label %entry.sw.epilog_crit_edge
    i32 1027077, label %entry.sw.epilog_crit_edge238
    i32 1027074, label %sw.bb3
    i32 1027076, label %sw.bb5
  ]

entry.sw.epilog_crit_edge238:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %hk to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %hk, align 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %hk to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %hk, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %hk to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %hk, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge238
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %8 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %keylen, align 2
  %conv = zext i8 %9 to i16
  %kv_len = getelementptr inbounds %struct.ath_keyval, ptr %hk, i32 0, i32 2
  %10 = ptrtoint ptr %kv_len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %kv_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %kv_val = getelementptr inbounds %struct.ath_keyval, ptr %hk, i32 0, i32 3
  %key8 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %conv11 = zext i8 %9 to i32
  %11 = call ptr @memcpy(ptr %kv_val, ptr %key8, i32 %conv11)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 8
  %14 = and i16 %13, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool13.not = icmp eq i16 %14, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %16, label %sw.default37 [
    i32 3, label %sw.bb15
    i32 1, label %sw.bb22
  ]

sw.bb15:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %18 = call ptr @memcpy(ptr %gmac, ptr %addr, i32 6)
  %19 = ptrtoint ptr %gmac to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %gmac, align 1
  %21 = or i8 %20, 1
  store i8 %21, ptr %gmac, align 1
  %call = tail call fastcc i32 @ath_reserve_key_cache_slot(ptr noundef %common, i32 noundef %3)
  br label %if.end121

sw.bb22:                                          ; preds = %if.then14
  %tobool23.not = icmp eq ptr %sta, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %22 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %keyidx, align 1
  %conv25 = sext i8 %23 to i32
  br label %if.end121

if.end26:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  %addr28 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %gmac, ptr %addr28, i32 6)
  %25 = ptrtoint ptr %gmac to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %gmac, align 1
  %27 = or i8 %26, 1
  store i8 %27, ptr %gmac, align 1
  %call36 = tail call fastcc i32 @ath_reserve_key_cache_slot(ptr noundef %common, i32 noundef %3)
  br label %if.end121

sw.default37:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %keyidx38 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %28 = ptrtoint ptr %keyidx38 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %keyidx38, align 1
  %conv39 = sext i8 %29 to i32
  br label %if.end121

if.else:                                          ; preds = %if.end
  %keyidx41 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %30 = ptrtoint ptr %keyidx41 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %keyidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool42.not = icmp eq i8 %31, 0
  %tobool81.not = icmp eq ptr %sta, null
  br i1 %tobool42.not, label %if.else79, label %if.then43

if.then43:                                        ; preds = %if.else
  br i1 %tobool81.not, label %do.end, label %if.end69, !prof !37

do.end:                                           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 531, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end69:                                         ; preds = %if.then43
  %32 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.not = icmp eq i32 %33, 3
  br i1 %cmp.not, label %if.end69.cleanup_crit_edge, label %if.then74

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %addr70 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %conv76 = sext i8 %31 to i32
  br label %if.end121

if.else79:                                        ; preds = %if.else
  br i1 %tobool81.not, label %do.end99, label %if.end115, !prof !37

do.end99:                                         ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 542, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end115:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  %addr116 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %call119 = tail call fastcc i32 @ath_reserve_key_cache_slot(ptr noundef %common, i32 noundef %3)
  br label %if.end121

if.end121:                                        ; preds = %if.end115, %if.then74, %sw.default37, %if.end26, %if.then24, %sw.bb15
  %idx.0 = phi i32 [ %conv76, %if.then74 ], [ %call119, %if.end115 ], [ %conv39, %sw.default37 ], [ %call36, %if.end26 ], [ %conv25, %if.then24 ], [ %call, %sw.bb15 ]
  %mac.0 = phi ptr [ %addr70, %if.then74 ], [ %addr116, %if.end115 ], [ null, %sw.default37 ], [ %gmac, %if.end26 ], [ null, %if.then24 ], [ %gmac, %sw.bb15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0)
  %cmp122 = icmp slt i32 %idx.0, 0
  br i1 %cmp122, label %if.end121.cleanup_crit_edge, label %if.end125

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end125:                                        ; preds = %if.end121
  %34 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %35)
  %cmp127 = icmp eq i32 %35, 1027074
  %conv130 = trunc i32 %idx.0 to i16
  br i1 %cmp127, label %if.then129, label %if.else137

if.then129:                                       ; preds = %if.end125
  %key131 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %add.ptr.i = getelementptr i8, ptr %key131, i32 16
  %add.ptr1.i = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %cmp.i = icmp eq ptr %mac.0, null
  br i1 %cmp.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.then129
  %36 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp134 = icmp eq i32 %37, 3
  %kv_mic.i = getelementptr inbounds %struct.ath_keyval, ptr %hk, i32 0, i32 4
  %add.ptr.add.ptr1.i = select i1 %cmp134, ptr %add.ptr.i, ptr %add.ptr1.i
  %38 = ptrtoint ptr %add.ptr.add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %add.ptr.add.ptr1.i, align 1
  %40 = ptrtoint ptr %kv_mic.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %kv_mic.i, align 2
  %41 = getelementptr inbounds %struct.ath_keyval, ptr %hk, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %39, ptr %41, align 2
  %call.i = call fastcc zeroext i1 @ath_hw_set_keycache_entry(ptr noundef %common, i16 noundef zeroext %conv130, ptr noundef nonnull %hk, ptr noundef null) #5
  br i1 %call.i, label %if.then.i.if.end144_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end144_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

if.end8.i:                                        ; preds = %if.then129
  %crypt_caps.i = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 17
  %43 = ptrtoint ptr %crypt_caps.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crypt_caps.i, align 4
  %and.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %kv_mic18.i = getelementptr inbounds %struct.ath_keyval, ptr %hk, i32 0, i32 4
  br i1 %tobool9.not.i, label %if.end17.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  %45 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %add.ptr1.i, align 1
  %47 = ptrtoint ptr %kv_mic18.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %kv_mic18.i, align 2
  %kv_txmic13.i = getelementptr inbounds %struct.ath_keyval, ptr %hk, i32 0, i32 5
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %add.ptr.i, align 1
  %50 = ptrtoint ptr %kv_txmic13.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %kv_txmic13.i, align 2
  %call15.i = call fastcc zeroext i1 @ath_hw_set_keycache_entry(ptr noundef %common, i16 noundef zeroext %conv130, ptr noundef nonnull %hk, ptr noundef nonnull %mac.0) #5
  br i1 %call15.i, label %if.then10.i.if.end144_crit_edge, label %if.then10.i.cleanup_crit_edge

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.if.end144_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

if.end17.i:                                       ; preds = %if.end8.i
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %add.ptr.i, align 1
  %53 = ptrtoint ptr %kv_mic18.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %kv_mic18.i, align 2
  %call20.i = call fastcc zeroext i1 @ath_hw_set_keycache_entry(ptr noundef %common, i16 noundef zeroext %conv130, ptr noundef nonnull %hk, ptr noundef null) #5
  br i1 %call20.i, label %if.end141, label %if.then21.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.else137:                                       ; preds = %if.end125
  %call139 = call fastcc zeroext i1 @ath_hw_set_keycache_entry(ptr noundef %common, i16 noundef zeroext %conv130, ptr noundef nonnull %hk, ptr noundef %mac.0)
  br i1 %call139, label %if.else137.if.end144_crit_edge, label %if.else137.cleanup_crit_edge

if.else137.cleanup_crit_edge:                     ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else137.if.end144_crit_edge:                   ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

if.end141:                                        ; preds = %if.end17.i
  %54 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %add.ptr1.i, align 1
  %56 = ptrtoint ptr %kv_mic18.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %55, ptr %kv_mic18.i, align 2
  %add.i = add i16 %conv130, 32
  %call27.i = call fastcc zeroext i1 @ath_hw_set_keycache_entry(ptr noundef %common, i16 noundef zeroext %add.i, ptr noundef nonnull %hk, ptr noundef nonnull %mac.0) #5
  br i1 %call27.i, label %if.end141.if.end144_crit_edge, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end141.if.end144_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

if.end144:                                        ; preds = %if.end141.if.end144_crit_edge, %if.else137.if.end144_crit_edge, %if.then10.i.if.end144_crit_edge, %if.then.i.if.end144_crit_edge
  %keymap = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 14
  call void @_set_bit(i32 noundef %idx.0, ptr noundef %keymap) #5
  %57 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027076, i32 %58)
  %cmp147 = icmp eq i32 %58, 1027076
  br i1 %cmp147, label %if.then149, label %if.end144.if.end151_crit_edge

if.end144.if.end151_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.then149:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #7
  %ccmp_keymap = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 16
  call void @_set_bit(i32 noundef %idx.0, ptr noundef %ccmp_keymap) #5
  %59 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load i32, ptr %cipher, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end144.if.end151_crit_edge
  %60 = phi i32 [ %.pr, %if.then149 ], [ %58, %if.end144.if.end151_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %60)
  %cmp153 = icmp eq i32 %60, 1027074
  br i1 %cmp153, label %if.then155, label %if.end151.cleanup_crit_edge

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then155:                                       ; preds = %if.end151
  %add = add nuw i32 %idx.0, 64
  call void @_set_bit(i32 noundef %add, ptr noundef %keymap) #5
  %tkip_keymap = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 15
  call void @_set_bit(i32 noundef %idx.0, ptr noundef %tkip_keymap) #5
  call void @_set_bit(i32 noundef %add, ptr noundef %tkip_keymap) #5
  %crypt_caps = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 17
  %61 = ptrtoint ptr %crypt_caps to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %crypt_caps, align 4
  %and162 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.then164, label %if.then155.cleanup_crit_edge

if.then155.cleanup_crit_edge:                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then164:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #7
  %add165 = add nuw i32 %idx.0, 32
  call void @_set_bit(i32 noundef %add165, ptr noundef %keymap) #5
  %add169 = add nuw i32 %idx.0, 96
  call void @_set_bit(i32 noundef %add169, ptr noundef %keymap) #5
  call void @_set_bit(i32 noundef %add165, ptr noundef %tkip_keymap) #5
  call void @_set_bit(i32 noundef %add169, ptr noundef %tkip_keymap) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then164, %if.then155.cleanup_crit_edge, %if.end151.cleanup_crit_edge, %if.end141.cleanup_crit_edge, %if.else137.cleanup_crit_edge, %if.then21.i, %if.then10.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %do.end99, %if.end69.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ -95, %do.end99 ], [ -95, %entry.cleanup_crit_edge ], [ -5, %if.end69.cleanup_crit_edge ], [ -28, %if.end121.cleanup_crit_edge ], [ -5, %if.end141.cleanup_crit_edge ], [ %idx.0, %if.then155.cleanup_crit_edge ], [ %idx.0, %if.then164 ], [ %idx.0, %if.end151.cleanup_crit_edge ], [ -5, %if.then21.i ], [ -5, %if.else137.cleanup_crit_edge ], [ -5, %if.then.i.cleanup_crit_edge ], [ -5, %if.then10.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %gmac) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hk) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath_reserve_key_cache_slot(ptr noundef %common, i32 noundef %cipher) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %cipher)
  %cmp = icmp eq i32 %cipher, 1027074
  %crypt_caps.i = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %keymax.i = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 13
  %0 = ptrtoint ptr %keymax.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %keymax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp47.i = icmp ugt i32 %1, 9
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then
  %div31.i = lshr i32 %1, 1
  %keymap.i = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 4, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.048.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %keymap.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.048.i, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %add.i = add nuw i32 %i.048.i, 64
  %div3.i32.i = lshr i32 %add.i, 5
  %arrayidx.i33.i = getelementptr i32, ptr %keymap.i, i32 %div3.i32.i
  %6 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i33.i, align 4
  %8 = and i32 %7, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %crypt_caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crypt_caps.i, align 4
  %and.i338 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i338)
  %tobool5.not.i = icmp eq i32 %and.i338, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %add6.i = add nuw i32 %i.048.i, 32
  %div3.i37.i = lshr i32 %add6.i, 5
  %arrayidx.i38.i = getelementptr i32, ptr %keymap.i, i32 %div3.i37.i
  %11 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i38.i, align 4
  %13 = and i32 %12, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false11.i:                                ; preds = %land.lhs.true.i
  %add13.i = add nuw i32 %i.048.i, 96
  %div3.i42.i = lshr i32 %add13.i, 5
  %arrayidx.i43.i = getelementptr i32, ptr %keymap.i, i32 %div3.i42.i
  %14 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i43.i, align 4
  %16 = and i32 %15, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not.i = icmp eq i32 %16, 0
  br i1 %tobool17.not.i, label %lor.lhs.false11.i.cleanup_crit_edge, label %lor.lhs.false11.i.for.inc.i_crit_edge

lor.lhs.false11.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false11.i.cleanup_crit_edge:              ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.i:                                        ; preds = %lor.lhs.false11.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div31.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %crypt_caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crypt_caps.i, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %keymax = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 13
  %19 = ptrtoint ptr %keymax to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keymax, align 4
  br i1 %tobool.not, label %for.cond.preheader, label %for.cond102.preheader

for.cond102.preheader:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %20)
  %cmp105347 = icmp ugt i32 %20, 9
  br i1 %cmp105347, label %for.body106.lr.ph, label %for.cond102.preheader.if.end135_crit_edge

for.cond102.preheader.if.end135_crit_edge:        ; preds = %for.cond102.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

for.body106.lr.ph:                                ; preds = %for.cond102.preheader
  %div104235 = lshr i32 %20, 1
  %keymap107 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 14
  br label %for.body106

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %20)
  %cmp2351 = icmp ugt i32 %20, 19
  br i1 %cmp2351, label %for.body.lr.ph, label %for.cond.preheader.if.end135_crit_edge

for.cond.preheader.if.end135_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div234 = lshr i32 %20, 2
  %keymap = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0352 = phi i32 [ 4, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0352, 5
  %arrayidx.i = getelementptr i32, ptr %keymap, i32 %div3.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0352, 31
  %23 = shl nuw i32 1, %and.i
  %24 = and i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not = icmp eq i32 %24, 0
  %add = add nuw nsw i32 %i.0352, 32
  %div3.i238 = lshr i32 %add, 5
  br i1 %tobool4.not, label %land.lhs.true, label %for.body.if.end22_crit_edge

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true:                                    ; preds = %for.body
  %arrayidx.i239 = getelementptr i32, ptr %keymap, i32 %div3.i238
  %25 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i239, align 4
  %27 = and i32 %26, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not = icmp eq i32 %27, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %add9 = add nuw nsw i32 %i.0352, 64
  %div3.i243 = lshr i32 %add9, 5
  %arrayidx.i244 = getelementptr i32, ptr %keymap, i32 %div3.i243
  %28 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i244, align 4
  %30 = and i32 %29, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool13.not = icmp eq i32 %30, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %add16 = add nuw nsw i32 %i.0352, 96
  %div3.i248 = lshr i32 %add16, 5
  %arrayidx.i249 = getelementptr i32, ptr %keymap, i32 %div3.i248
  %31 = ptrtoint ptr %arrayidx.i249 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i249, align 4
  %33 = and i32 %32, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not = icmp eq i32 %33, 0
  br i1 %tobool20.not, label %lor.lhs.false14.if.end22_crit_edge, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false14.if.end22_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false14.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %arrayidx.i254 = getelementptr i32, ptr %keymap, i32 %div3.i238
  %34 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i254, align 4
  %36 = and i32 %35, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool27.not = icmp eq i32 %36, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end22.if.end48_crit_edge

if.end22.if.end48_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %.pre371 = add nuw nsw i32 %i.0352, 64
  %.pre372 = lshr i32 %.pre371, 5
  br label %if.end48

land.lhs.true28:                                  ; preds = %if.end22
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i, align 4
  %39 = and i32 %38, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool32.not = icmp eq i32 %39, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false33:                                  ; preds = %land.lhs.true28
  %add34 = add nuw nsw i32 %i.0352, 64
  %div3.i263 = lshr i32 %add34, 5
  %arrayidx.i264 = getelementptr i32, ptr %keymap, i32 %div3.i263
  %40 = ptrtoint ptr %arrayidx.i264 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i264, align 4
  %42 = and i32 %41, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool38.not = icmp eq i32 %42, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false33.cleanup_crit_edge

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false33
  %add41 = add nuw nsw i32 %i.0352, 96
  %div3.i268 = lshr i32 %add41, 5
  %arrayidx.i269 = getelementptr i32, ptr %keymap, i32 %div3.i268
  %43 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i269, align 4
  %45 = and i32 %44, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool45.not = icmp eq i32 %45, 0
  br i1 %tobool45.not, label %lor.lhs.false39.if.end48_crit_edge, label %lor.lhs.false39.cleanup_crit_edge

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false39.if.end48_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end48:                                         ; preds = %lor.lhs.false39.if.end48_crit_edge, %if.end22.if.end48_crit_edge
  %div3.i273.pre-phi = phi i32 [ %.pre372, %if.end22.if.end48_crit_edge ], [ %div3.i263, %lor.lhs.false39.if.end48_crit_edge ]
  %add49.pre-phi = phi i32 [ %.pre371, %if.end22.if.end48_crit_edge ], [ %add34, %lor.lhs.false39.if.end48_crit_edge ]
  %arrayidx.i274 = getelementptr i32, ptr %keymap, i32 %div3.i273.pre-phi
  %46 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i274, align 4
  %48 = and i32 %47, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool53.not = icmp eq i32 %48, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %if.end48.if.end74_crit_edge

if.end48.if.end74_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %.pre373 = add nuw nsw i32 %i.0352, 96
  %.pre374 = lshr i32 %.pre373, 5
  br label %if.end74

land.lhs.true54:                                  ; preds = %if.end48
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i, align 4
  %51 = and i32 %50, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool58.not = icmp eq i32 %51, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %land.lhs.true54.cleanup_crit_edge

land.lhs.true54.cleanup_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false59:                                  ; preds = %land.lhs.true54
  %52 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx.i254, align 4
  %54 = and i32 %53, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool64.not = icmp eq i32 %54, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %lor.lhs.false59.cleanup_crit_edge

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false65:                                  ; preds = %lor.lhs.false59
  %add67 = add nuw nsw i32 %i.0352, 96
  %div3.i288 = lshr i32 %add67, 5
  %arrayidx.i289 = getelementptr i32, ptr %keymap, i32 %div3.i288
  %55 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i289, align 4
  %57 = and i32 %56, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool71.not = icmp eq i32 %57, 0
  br i1 %tobool71.not, label %lor.lhs.false65.if.end74_crit_edge, label %lor.lhs.false65.cleanup_crit_edge

lor.lhs.false65.cleanup_crit_edge:                ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false65.if.end74_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.end74:                                         ; preds = %lor.lhs.false65.if.end74_crit_edge, %if.end48.if.end74_crit_edge
  %div3.i293.pre-phi = phi i32 [ %.pre374, %if.end48.if.end74_crit_edge ], [ %div3.i288, %lor.lhs.false65.if.end74_crit_edge ]
  %add76.pre-phi = phi i32 [ %.pre373, %if.end48.if.end74_crit_edge ], [ %add67, %lor.lhs.false65.if.end74_crit_edge ]
  %arrayidx.i294 = getelementptr i32, ptr %keymap, i32 %div3.i293.pre-phi
  %58 = ptrtoint ptr %arrayidx.i294 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx.i294, align 4
  %60 = and i32 %59, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool80.not = icmp eq i32 %60, 0
  br i1 %tobool80.not, label %land.lhs.true81, label %if.end74.for.inc_crit_edge

if.end74.for.inc_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true81:                                  ; preds = %if.end74
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %arrayidx.i, align 4
  %63 = and i32 %62, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool85.not = icmp eq i32 %63, 0
  br i1 %tobool85.not, label %lor.lhs.false86, label %land.lhs.true81.cleanup_crit_edge

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false86:                                  ; preds = %land.lhs.true81
  %64 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %arrayidx.i254, align 4
  %66 = and i32 %65, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool91.not = icmp eq i32 %66, 0
  br i1 %tobool91.not, label %lor.lhs.false92, label %lor.lhs.false86.cleanup_crit_edge

lor.lhs.false86.cleanup_crit_edge:                ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false92:                                  ; preds = %lor.lhs.false86
  %67 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %arrayidx.i274, align 4
  %69 = and i32 %68, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool97.not = icmp eq i32 %69, 0
  br i1 %tobool97.not, label %lor.lhs.false92.for.inc_crit_edge, label %lor.lhs.false92.cleanup_crit_edge

lor.lhs.false92.cleanup_crit_edge:                ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false92.for.inc_crit_edge:                ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false92.for.inc_crit_edge, %if.end74.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0352, 1
  %exitcond368.not = icmp eq i32 %inc, %div234
  br i1 %exitcond368.not, label %for.inc.if.end135_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end135_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

for.body106:                                      ; preds = %for.inc132.for.body106_crit_edge, %for.body106.lr.ph
  %i.1348 = phi i32 [ 4, %for.body106.lr.ph ], [ %inc133, %for.inc132.for.body106_crit_edge ]
  %div3.i313 = lshr i32 %i.1348, 5
  %arrayidx.i314 = getelementptr i32, ptr %keymap107, i32 %div3.i313
  %70 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx.i314, align 4
  %and.i315 = and i32 %i.1348, 31
  %72 = shl nuw i32 1, %and.i315
  %73 = and i32 %71, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool110.not = icmp eq i32 %73, 0
  br i1 %tobool110.not, label %land.lhs.true111, label %for.body106.if.end118_crit_edge

for.body106.if.end118_crit_edge:                  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

land.lhs.true111:                                 ; preds = %for.body106
  %add112 = add nuw i32 %i.1348, 64
  %div3.i318 = lshr i32 %add112, 5
  %arrayidx.i319 = getelementptr i32, ptr %keymap107, i32 %div3.i318
  %74 = ptrtoint ptr %arrayidx.i319 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %arrayidx.i319, align 4
  %76 = and i32 %75, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool116.not = icmp eq i32 %76, 0
  br i1 %tobool116.not, label %land.lhs.true111.if.end118_crit_edge, label %land.lhs.true111.cleanup_crit_edge

land.lhs.true111.cleanup_crit_edge:               ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true111.if.end118_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.end118:                                        ; preds = %land.lhs.true111.if.end118_crit_edge, %for.body106.if.end118_crit_edge
  %77 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %arrayidx.i314, align 4
  %79 = and i32 %78, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool122.not = icmp eq i32 %79, 0
  br i1 %tobool122.not, label %if.end118.for.inc132_crit_edge, label %land.lhs.true123

if.end118.for.inc132_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc132

land.lhs.true123:                                 ; preds = %if.end118
  %add124 = add nuw i32 %i.1348, 64
  %div3.i328 = lshr i32 %add124, 5
  %arrayidx.i329 = getelementptr i32, ptr %keymap107, i32 %div3.i328
  %80 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %arrayidx.i329, align 4
  %82 = and i32 %81, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool128.not = icmp eq i32 %82, 0
  br i1 %tobool128.not, label %land.lhs.true123.cleanup_crit_edge, label %land.lhs.true123.for.inc132_crit_edge

land.lhs.true123.for.inc132_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc132

land.lhs.true123.cleanup_crit_edge:               ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc132:                                       ; preds = %land.lhs.true123.for.inc132_crit_edge, %if.end118.for.inc132_crit_edge
  %inc133 = add nuw nsw i32 %i.1348, 1
  %exitcond.not = icmp eq i32 %inc133, %div104235
  br i1 %exitcond.not, label %for.inc132.if.end135_crit_edge, label %for.inc132.for.body106_crit_edge

for.inc132.for.body106_crit_edge:                 ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body106

for.inc132.if.end135_crit_edge:                   ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

if.end135:                                        ; preds = %for.inc132.if.end135_crit_edge, %for.inc.if.end135_crit_edge, %for.cond.preheader.if.end135_crit_edge, %for.cond102.preheader.if.end135_crit_edge
  %keymax137 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 13
  %83 = ptrtoint ptr %keymax137 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %keymax137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %cmp138356 = icmp ugt i32 %84, 4
  br i1 %cmp138356, label %for.body139.lr.ph, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body139.lr.ph:                                ; preds = %if.end135
  %keymap160 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 14
  br label %for.body139

for.body139:                                      ; preds = %for.inc166.for.body139_crit_edge, %for.body139.lr.ph
  %i.2357 = phi i32 [ 4, %for.body139.lr.ph ], [ %inc167, %for.inc166.for.body139_crit_edge ]
  %85 = and i32 %i.2357, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %85)
  %86 = icmp eq i32 %85, 64
  br i1 %86, label %for.body139.for.inc166_crit_edge, label %if.end144

for.body139.for.inc166_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc166

if.end144:                                        ; preds = %for.body139
  %87 = and i32 %i.2357, -68
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %87)
  %88 = icmp eq i32 %87, 32
  %or.cond = select i1 %tobool.not, i1 %88, i1 false
  br i1 %or.cond, label %if.end144.for.inc166_crit_edge, label %if.end159

if.end144.for.inc166_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc166

if.end159:                                        ; preds = %if.end144
  %div3.i333 = lshr i32 %i.2357, 5
  %arrayidx.i334 = getelementptr i32, ptr %keymap160, i32 %div3.i333
  %89 = ptrtoint ptr %arrayidx.i334 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %arrayidx.i334, align 4
  %and.i335 = and i32 %i.2357, 31
  %91 = shl nuw i32 1, %and.i335
  %92 = and i32 %90, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool163.not = icmp eq i32 %92, 0
  br i1 %tobool163.not, label %if.end159.cleanup_crit_edge, label %if.end159.for.inc166_crit_edge

if.end159.for.inc166_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc166

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc166:                                       ; preds = %if.end159.for.inc166_crit_edge, %if.end144.for.inc166_crit_edge, %for.body139.for.inc166_crit_edge
  %inc167 = add nuw i32 %i.2357, 1
  %exitcond369.not = icmp eq i32 %inc167, %84
  br i1 %exitcond369.not, label %for.inc166.cleanup_crit_edge, label %for.inc166.for.body139_crit_edge

for.inc166.for.body139_crit_edge:                 ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body139

for.inc166.cleanup_crit_edge:                     ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc166.cleanup_crit_edge, %if.end159.cleanup_crit_edge, %if.end135.cleanup_crit_edge, %land.lhs.true123.cleanup_crit_edge, %land.lhs.true111.cleanup_crit_edge, %lor.lhs.false92.cleanup_crit_edge, %lor.lhs.false86.cleanup_crit_edge, %land.lhs.true81.cleanup_crit_edge, %lor.lhs.false65.cleanup_crit_edge, %lor.lhs.false59.cleanup_crit_edge, %land.lhs.true54.cleanup_crit_edge, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false33.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %lor.lhs.false11.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then.cleanup_crit_edge ], [ -1, %if.end135.cleanup_crit_edge ], [ %i.048.i, %lor.lhs.false11.i.cleanup_crit_edge ], [ %i.048.i, %if.end.i.cleanup_crit_edge ], [ -1, %for.inc.i.cleanup_crit_edge ], [ %i.2357, %if.end159.cleanup_crit_edge ], [ -1, %for.inc166.cleanup_crit_edge ], [ %add76.pre-phi, %land.lhs.true81.cleanup_crit_edge ], [ %add76.pre-phi, %lor.lhs.false86.cleanup_crit_edge ], [ %add76.pre-phi, %lor.lhs.false92.cleanup_crit_edge ], [ %add49.pre-phi, %land.lhs.true54.cleanup_crit_edge ], [ %add49.pre-phi, %lor.lhs.false59.cleanup_crit_edge ], [ %add49.pre-phi, %lor.lhs.false65.cleanup_crit_edge ], [ %add, %land.lhs.true28.cleanup_crit_edge ], [ %add, %lor.lhs.false33.cleanup_crit_edge ], [ %add, %lor.lhs.false39.cleanup_crit_edge ], [ %i.0352, %land.lhs.true.cleanup_crit_edge ], [ %i.0352, %lor.lhs.false.cleanup_crit_edge ], [ %i.0352, %lor.lhs.false14.cleanup_crit_edge ], [ %add124, %land.lhs.true123.cleanup_crit_edge ], [ %i.1348, %land.lhs.true111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath_hw_set_keycache_entry(ptr noundef %common, i16 noundef zeroext %entry1, ptr nocapture noundef readonly %k, ptr noundef %mac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %conv = zext i16 %entry1 to i32
  %keymax = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 13
  %2 = ptrtoint ptr %keymax to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common, ptr noundef nonnull @.str.5, i32 noundef %conv) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %k, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %5, label %sw.default [
    i8 1, label %if.end.sw.epilog_crit_edge
    i8 2, label %sw.bb6
    i8 4, label %sw.bb13
    i8 0, label %sw.bb29
    i8 5, label %sw.bb58
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %crypt_caps = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 17
  %7 = ptrtoint ptr %crypt_caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crypt_caps, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb6
  %debug_mask = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %do.body.cleanup_crit_edge, label %if.then10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.6, ptr noundef %common, ptr noundef nonnull @.str.7) #5
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %add = add nuw nsw i32 %conv, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp16.not = icmp ult i32 %add, %3
  br i1 %cmp16.not, label %sw.bb13.sw.epilog_crit_edge, label %do.body19

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body19:                                        ; preds = %sw.bb13
  %debug_mask20 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 3
  %11 = ptrtoint ptr %debug_mask20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_mask20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %do.body19.cleanup_crit_edge, label %if.then23

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.6, ptr noundef %common, ptr noundef nonnull @.str.8, i32 noundef %conv) #5
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  %kv_len = getelementptr inbounds %struct.ath_keyval, ptr %k, i32 0, i32 2
  %13 = ptrtoint ptr %kv_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %kv_len, align 2
  %conv30 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %14)
  %cmp31 = icmp ult i16 %14, 5
  br i1 %cmp31, label %do.body34, label %if.end44

do.body34:                                        ; preds = %sw.bb29
  %debug_mask35 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 3
  %15 = ptrtoint ptr %debug_mask35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_mask35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool37.not = icmp eq i32 %16, 0
  br i1 %tobool37.not, label %do.body34.cleanup_crit_edge, label %if.then38

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.6, ptr noundef %common, ptr noundef nonnull @.str.9, i32 noundef %conv30) #5
  br label %cleanup

if.end44:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %14)
  %cmp47 = icmp eq i16 %14, 5
  br i1 %cmp47, label %if.end44.sw.epilog_crit_edge, label %if.else

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %14)
  %cmp52 = icmp ult i16 %14, 14
  %. = select i1 %cmp52, i32 1, i32 3
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv5 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common, ptr noundef nonnull @.str.10, i32 noundef %conv5) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb58, %if.else, %if.end44.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %cmp86 = phi i1 [ true, %sw.bb13.sw.epilog_crit_edge ], [ false, %sw.bb58 ], [ false, %if.end.sw.epilog_crit_edge ], [ false, %sw.bb6.sw.epilog_crit_edge ], [ false, %if.end44.sw.epilog_crit_edge ], [ false, %if.else ]
  %keyType.0 = phi i32 [ 4, %sw.bb13.sw.epilog_crit_edge ], [ 7, %sw.bb58 ], [ 5, %if.end.sw.epilog_crit_edge ], [ 6, %sw.bb6.sw.epilog_crit_edge ], [ 0, %if.end44.sw.epilog_crit_edge ], [ %., %if.else ]
  %kv_val = getelementptr inbounds %struct.ath_keyval, ptr %k, i32 0, i32 3
  %17 = ptrtoint ptr %kv_val to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %kv_val, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %add.ptr63 = getelementptr %struct.ath_keyval, ptr %k, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr63, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #5
  %conv65 = zext i16 %22 to i32
  %add.ptr68 = getelementptr %struct.ath_keyval, ptr %k, i32 0, i32 3, i32 6
  %23 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %add.ptr68, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %add.ptr72 = getelementptr %struct.ath_keyval, ptr %k, i32 0, i32 3, i32 10
  %26 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %add.ptr72, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #5
  %conv74 = zext i16 %28 to i32
  %add.ptr77 = getelementptr %struct.ath_keyval, ptr %k, i32 0, i32 3, i32 12
  %29 = ptrtoint ptr %add.ptr77 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr77, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %kv_len79 = getelementptr inbounds %struct.ath_keyval, ptr %k, i32 0, i32 2
  %32 = ptrtoint ptr %kv_len79 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %kv_len79, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %33)
  %cmp81 = icmp ult i16 %33, 14
  %and84 = and i32 %31, 255
  %spec.select = select i1 %cmp81, i32 %and84, i32 %31
  br i1 %cmp86, label %if.then88, label %if.else301

if.then88:                                        ; preds = %sw.epilog
  %add90 = add i16 %entry1, 64
  %ops = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 24
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.ath_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  %neg = xor i32 %19, -1
  %mul = shl nuw nsw i32 %conv, 5
  %add93 = add nuw nsw i32 %mul, 34816
  tail call void %37(ptr noundef %1, i32 noundef %neg, i32 noundef %add93) #5
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %write96 = getelementptr inbounds %struct.ath_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write96 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write96, align 4
  %neg97 = xor i32 %conv65, -1
  %add101 = add nuw nsw i32 %mul, 34820
  tail call void %41(ptr noundef %1, i32 noundef %neg97, i32 noundef %add101) #5
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %write103 = getelementptr inbounds %struct.ath_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %write103 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write103, align 4
  %add107 = add nuw nsw i32 %mul, 34824
  tail call void %45(ptr noundef %1, i32 noundef %25, i32 noundef %add107) #5
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %write109 = getelementptr inbounds %struct.ath_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %write109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write109, align 4
  %add113 = add nuw nsw i32 %mul, 34828
  tail call void %49(ptr noundef %1, i32 noundef %conv74, i32 noundef %add113) #5
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 4
  %write115 = getelementptr inbounds %struct.ath_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %write115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write115, align 4
  %add119 = add nuw nsw i32 %mul, 34832
  tail call void %53(ptr noundef %1, i32 noundef %spec.select, i32 noundef %add119) #5
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %write121 = getelementptr inbounds %struct.ath_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %write121 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write121, align 4
  %add125 = add nuw nsw i32 %mul, 34836
  tail call void %57(ptr noundef %1, i32 noundef 4, i32 noundef %add125) #5
  %call126 = tail call zeroext i1 @ath_hw_keysetmac(ptr noundef %common, i16 noundef zeroext %entry1, ptr noundef %mac)
  %crypt_caps127 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 17
  %58 = ptrtoint ptr %crypt_caps127 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crypt_caps127, align 4
  %and128 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  %kv_mic204 = getelementptr inbounds %struct.ath_keyval, ptr %k, i32 0, i32 4
  %60 = ptrtoint ptr %kv_mic204 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %kv_mic204, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %add.ptr210 = getelementptr %struct.ath_keyval, ptr %k, i32 0, i32 4, i32 4
  %63 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %add.ptr210, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #5
  br i1 %tobool129.not, label %if.else201, label %if.then130

if.then130:                                       ; preds = %if.then88
  %kv_txmic = getelementptr inbounds %struct.ath_keyval, ptr %k, i32 0, i32 5
  %add.ptr139 = getelementptr %struct.ath_keyval, ptr %k, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %add.ptr139 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %add.ptr139, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #5
  %conv141 = zext i16 %68 to i32
  %69 = ptrtoint ptr %kv_txmic to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %kv_txmic, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #5
  %conv147 = zext i16 %71 to i32
  %add.ptr151 = getelementptr %struct.ath_keyval, ptr %k, i32 0, i32 5, i32 4
  %72 = ptrtoint ptr %add.ptr151 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %add.ptr151, align 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #5
  %75 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops, align 4
  %enable_write_buffer = getelementptr inbounds %struct.ath_ops, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %enable_write_buffer, align 4
  %tobool154.not = icmp eq ptr %78, null
  br i1 %tobool154.not, label %if.then130.if.end158_crit_edge, label %if.then155

if.then130.if.end158_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then155:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %78(ptr noundef %1) #5
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.then130.if.end158_crit_edge
  %79 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops, align 4
  %write160 = getelementptr inbounds %struct.ath_ops, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %write160 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write160, align 4
  %conv161 = zext i16 %add90 to i32
  %mul162 = shl nuw nsw i32 %conv161, 5
  %add163 = add nuw nsw i32 %mul162, 34816
  tail call void %82(ptr noundef %1, i32 noundef %62, i32 noundef %add163) #5
  %83 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops, align 4
  %write166 = getelementptr inbounds %struct.ath_ops, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %write166 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write166, align 4
  %add170 = add nuw nsw i32 %mul162, 34820
  tail call void %86(ptr noundef %1, i32 noundef %conv141, i32 noundef %add170) #5
  %87 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops, align 4
  %write172 = getelementptr inbounds %struct.ath_ops, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %write172 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write172, align 4
  %add176 = add nuw nsw i32 %mul162, 34824
  tail call void %90(ptr noundef %1, i32 noundef %65, i32 noundef %add176) #5
  %91 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops, align 4
  %write178 = getelementptr inbounds %struct.ath_ops, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %write178 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write178, align 4
  %add182 = add nuw nsw i32 %mul162, 34828
  tail call void %94(ptr noundef %1, i32 noundef %conv147, i32 noundef %add182) #5
  %95 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops, align 4
  %write184 = getelementptr inbounds %struct.ath_ops, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %write184 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write184, align 4
  %add188 = add nuw nsw i32 %mul162, 34832
  tail call void %98(ptr noundef %1, i32 noundef %74, i32 noundef %add188) #5
  %99 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops, align 4
  %write190 = getelementptr inbounds %struct.ath_ops, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %write190 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write190, align 4
  %add194 = add nuw nsw i32 %mul162, 34836
  tail call void %102(ptr noundef %1, i32 noundef 7, i32 noundef %add194) #5
  %103 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops, align 4
  %write_flush = getelementptr inbounds %struct.ath_ops, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write_flush, align 4
  %tobool196.not = icmp eq ptr %106, null
  br i1 %tobool196.not, label %if.end158.if.end262_crit_edge, label %if.end158.if.end262.sink.split_crit_edge

if.end158.if.end262.sink.split_crit_edge:         ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end262.sink.split

if.end158.if.end262_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end262

if.else201:                                       ; preds = %if.then88
  %107 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops, align 4
  %enable_write_buffer213 = getelementptr inbounds %struct.ath_ops, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %enable_write_buffer213 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %enable_write_buffer213, align 4
  %tobool214.not = icmp eq ptr %110, null
  br i1 %tobool214.not, label %if.else201.if.end218_crit_edge, label %if.then215

if.else201.if.end218_crit_edge:                   ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end218

if.then215:                                       ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %110(ptr noundef %1) #5
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %if.else201.if.end218_crit_edge
  %111 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops, align 4
  %write220 = getelementptr inbounds %struct.ath_ops, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %write220 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write220, align 4
  %conv221 = zext i16 %add90 to i32
  %mul222 = shl nuw nsw i32 %conv221, 5
  %add223 = add nuw nsw i32 %mul222, 34816
  tail call void %114(ptr noundef %1, i32 noundef %62, i32 noundef %add223) #5
  %115 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops, align 4
  %write226 = getelementptr inbounds %struct.ath_ops, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %write226 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write226, align 4
  %add230 = add nuw nsw i32 %mul222, 34820
  tail call void %118(ptr noundef %1, i32 noundef 0, i32 noundef %add230) #5
  %119 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ops, align 4
  %write232 = getelementptr inbounds %struct.ath_ops, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %write232 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write232, align 4
  %add236 = add nuw nsw i32 %mul222, 34824
  tail call void %122(ptr noundef %1, i32 noundef %65, i32 noundef %add236) #5
  %123 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops, align 4
  %write238 = getelementptr inbounds %struct.ath_ops, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %write238 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write238, align 4
  %add242 = add nuw nsw i32 %mul222, 34828
  tail call void %126(ptr noundef %1, i32 noundef 0, i32 noundef %add242) #5
  %127 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ops, align 4
  %write244 = getelementptr inbounds %struct.ath_ops, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %write244 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write244, align 4
  %add248 = add nuw nsw i32 %mul222, 34832
  tail call void %130(ptr noundef %1, i32 noundef 0, i32 noundef %add248) #5
  %131 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ops, align 4
  %write250 = getelementptr inbounds %struct.ath_ops, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %write250 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write250, align 4
  %add254 = add nuw nsw i32 %mul222, 34836
  tail call void %134(ptr noundef %1, i32 noundef 7, i32 noundef %add254) #5
  %135 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops, align 4
  %write_flush256 = getelementptr inbounds %struct.ath_ops, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %write_flush256 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write_flush256, align 4
  %tobool257.not = icmp eq ptr %138, null
  br i1 %tobool257.not, label %if.end218.if.end262_crit_edge, label %if.end218.if.end262.sink.split_crit_edge

if.end218.if.end262.sink.split_crit_edge:         ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end262.sink.split

if.end218.if.end262_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end262

if.end262.sink.split:                             ; preds = %if.end218.if.end262.sink.split_crit_edge, %if.end158.if.end262.sink.split_crit_edge
  %.sink = phi ptr [ %106, %if.end158.if.end262.sink.split_crit_edge ], [ %138, %if.end218.if.end262.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %1) #5
  br label %if.end262

if.end262:                                        ; preds = %if.end262.sink.split, %if.end218.if.end262_crit_edge, %if.end158.if.end262_crit_edge
  %139 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ops, align 4
  %enable_write_buffer264 = getelementptr inbounds %struct.ath_ops, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %enable_write_buffer264 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %enable_write_buffer264, align 4
  %tobool265.not = icmp eq ptr %142, null
  br i1 %tobool265.not, label %if.end262.if.end269_crit_edge, label %if.then266

if.end262.if.end269_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end269

if.then266:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %142(ptr noundef %1) #5
  br label %if.end269

if.end269:                                        ; preds = %if.then266, %if.end262.if.end269_crit_edge
  %143 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops, align 4
  %write271 = getelementptr inbounds %struct.ath_ops, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %write271 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write271, align 4
  %conv272 = zext i16 %add90 to i32
  %mul273 = shl nuw nsw i32 %conv272, 5
  %add275 = add nuw nsw i32 %mul273, 34840
  tail call void %146(ptr noundef %1, i32 noundef 0, i32 noundef %add275) #5
  %147 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops, align 4
  %write277 = getelementptr inbounds %struct.ath_ops, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %write277 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write277, align 4
  %add281 = add nuw nsw i32 %mul273, 34844
  tail call void %150(ptr noundef %1, i32 noundef 0, i32 noundef %add281) #5
  %151 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ops, align 4
  %write283 = getelementptr inbounds %struct.ath_ops, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %write283 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write283, align 4
  tail call void %154(ptr noundef %1, i32 noundef %19, i32 noundef %add93) #5
  %155 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops, align 4
  %write289 = getelementptr inbounds %struct.ath_ops, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %write289 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write289, align 4
  tail call void %158(ptr noundef %1, i32 noundef %conv65, i32 noundef %add101) #5
  %159 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops, align 4
  %write_flush295 = getelementptr inbounds %struct.ath_ops, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %write_flush295 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write_flush295, align 4
  %tobool296.not = icmp eq ptr %162, null
  br i1 %tobool296.not, label %if.end269.cleanup_crit_edge, label %if.then297

if.end269.cleanup_crit_edge:                      ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then297:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %162(ptr noundef %1) #5
  br label %cleanup

if.else301:                                       ; preds = %sw.epilog
  %ops302 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 24
  %163 = ptrtoint ptr %ops302 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ops302, align 4
  %enable_write_buffer303 = getelementptr inbounds %struct.ath_ops, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %enable_write_buffer303 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %enable_write_buffer303, align 4
  %tobool304.not = icmp eq ptr %166, null
  br i1 %tobool304.not, label %if.else301.if.end308_crit_edge, label %if.then305

if.else301.if.end308_crit_edge:                   ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end308

if.then305:                                       ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %166(ptr noundef %1) #5
  br label %if.end308

if.end308:                                        ; preds = %if.then305, %if.else301.if.end308_crit_edge
  %167 = ptrtoint ptr %ops302 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ops302, align 4
  %write310 = getelementptr inbounds %struct.ath_ops, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %write310 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write310, align 4
  %mul312 = shl nuw nsw i32 %conv, 5
  %add313 = add nuw nsw i32 %mul312, 34816
  tail call void %170(ptr noundef %1, i32 noundef %19, i32 noundef %add313) #5
  %171 = ptrtoint ptr %ops302 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ops302, align 4
  %write316 = getelementptr inbounds %struct.ath_ops, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %write316 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write316, align 4
  %add320 = add nuw nsw i32 %mul312, 34820
  tail call void %174(ptr noundef %1, i32 noundef %conv65, i32 noundef %add320) #5
  %175 = ptrtoint ptr %ops302 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ops302, align 4
  %write322 = getelementptr inbounds %struct.ath_ops, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %write322 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write322, align 4
  %add326 = add nuw nsw i32 %mul312, 34824
  tail call void %178(ptr noundef %1, i32 noundef %25, i32 noundef %add326) #5
  %179 = ptrtoint ptr %ops302 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ops302, align 4
  %write328 = getelementptr inbounds %struct.ath_ops, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %write328 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write328, align 4
  %add332 = add nuw nsw i32 %mul312, 34828
  tail call void %182(ptr noundef %1, i32 noundef %conv74, i32 noundef %add332) #5
  %183 = ptrtoint ptr %ops302 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ops302, align 4
  %write334 = getelementptr inbounds %struct.ath_ops, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %write334 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write334, align 4
  %add338 = add nuw nsw i32 %mul312, 34832
  tail call void %186(ptr noundef %1, i32 noundef %spec.select, i32 noundef %add338) #5
  %187 = ptrtoint ptr %ops302 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ops302, align 4
  %write340 = getelementptr inbounds %struct.ath_ops, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %write340 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write340, align 4
  %add344 = add nuw nsw i32 %mul312, 34836
  tail call void %190(ptr noundef %1, i32 noundef %keyType.0, i32 noundef %add344) #5
  %191 = ptrtoint ptr %ops302 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ops302, align 4
  %write_flush346 = getelementptr inbounds %struct.ath_ops, ptr %192, i32 0, i32 4
  %193 = ptrtoint ptr %write_flush346 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write_flush346, align 4
  %tobool347.not = icmp eq ptr %194, null
  br i1 %tobool347.not, label %if.end308.if.end351_crit_edge, label %if.then348

if.end308.if.end351_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end351

if.then348:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %194(ptr noundef %1) #5
  br label %if.end351

if.end351:                                        ; preds = %if.then348, %if.end308.if.end351_crit_edge
  %call352 = tail call zeroext i1 @ath_hw_keysetmac(ptr noundef %common, i16 noundef zeroext %entry1, ptr noundef %mac)
  br label %cleanup

cleanup:                                          ; preds = %if.end351, %if.then297, %if.end269.cleanup_crit_edge, %sw.default, %if.then38, %do.body34.cleanup_crit_edge, %if.then23, %do.body19.cleanup_crit_edge, %if.then10, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %sw.default ], [ false, %if.then10 ], [ false, %do.body.cleanup_crit_edge ], [ false, %if.then23 ], [ false, %do.body19.cleanup_crit_edge ], [ false, %if.then38 ], [ false, %do.body34.cleanup_crit_edge ], [ true, %if.end269.cleanup_crit_edge ], [ true, %if.then297 ], [ true, %if.end351 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_key_delete(ptr noundef %common, i8 noundef zeroext %hw_key_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %hw_key_idx to i32
  %ccmp_keymap = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 16
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %ccmp_keymap, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tkip_keymap = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 15
  %arrayidx.i91 = getelementptr i32, ptr %tkip_keymap, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i91, align 4
  %6 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %7 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common, align 4
  %keymax.i = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 13
  %9 = ptrtoint ptr %keymax.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %keymax.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp.not.i = icmp ugt i32 %10, %conv
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common, ptr noundef nonnull @.str.2, i32 noundef %conv) #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 24
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %enable_write_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %enable_write_buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enable_write_buffer.i, align 4
  %tobool16.not.i = icmp eq ptr %14, null
  br i1 %tobool16.not.i, label %if.end.i.if.end20.i_crit_edge, label %if.then17.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %14(ptr noundef %8) #5
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end.i.if.end20.i_crit_edge
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %mul.i = shl nuw nsw i32 %conv, 5
  %add23.i = add nuw nsw i32 %mul.i, 34840
  tail call void %18(ptr noundef %8, i32 noundef 0, i32 noundef %add23.i) #5
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write25.i = getelementptr inbounds %struct.ath_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %write25.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write25.i, align 4
  %add30.i = add nuw nsw i32 %mul.i, 34844
  tail call void %22(ptr noundef %8, i32 noundef 32768, i32 noundef %add30.i) #5
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %write_flush.i = getelementptr inbounds %struct.ath_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %write_flush.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_flush.i, align 4
  %tobool32.not.i = icmp eq ptr %26, null
  br i1 %tobool32.not.i, label %if.end20.i.if.end_crit_edge, label %if.then33.i

if.end20.i.if.end_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then33.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %26(ptr noundef %8) #5
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %conv7 = zext i8 %hw_key_idx to i16
  %call8 = tail call zeroext i1 @ath_hw_keyreset(ptr noundef %common, i16 noundef zeroext %conv7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then33.i, %if.end20.i.if.end_crit_edge, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hw_key_idx)
  %cmp = icmp ult i8 %hw_key_idx, 4
  br i1 %cmp, label %if.end.if.end59_crit_edge, label %if.end12

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.end12:                                         ; preds = %if.end
  %keymap = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %keymap) #5
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %ccmp_keymap) #5
  %tkip_keymap19 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 15
  %arrayidx.i96 = getelementptr i32, ptr %tkip_keymap19, i32 %div3.i
  %27 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i96, align 4
  %29 = and i32 %28, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not = icmp eq i32 %29, 0
  br i1 %tobool22.not, label %if.end12.if.end59_crit_edge, label %if.end24

if.end12.if.end59_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.end24:                                         ; preds = %if.end12
  %add = add nuw nsw i32 %conv, 64
  tail call void @_clear_bit(i32 noundef %add, ptr noundef %keymap) #5
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %tkip_keymap19) #5
  tail call void @_clear_bit(i32 noundef %add, ptr noundef %tkip_keymap19) #5
  %crypt_caps = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 17
  %30 = ptrtoint ptr %crypt_caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crypt_caps, align 4
  %and = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.then36, label %if.end24.if.end59_crit_edge

if.end24.if.end59_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then36:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %add38 = add nuw nsw i32 %conv, 32
  %conv39 = trunc i32 %add38 to i16
  %call40 = tail call zeroext i1 @ath_hw_keyreset(ptr noundef %common, i16 noundef zeroext %conv39)
  tail call void @_clear_bit(i32 noundef %add38, ptr noundef %keymap) #5
  %add47 = add nuw nsw i32 %conv, 96
  tail call void @_clear_bit(i32 noundef %add47, ptr noundef %keymap) #5
  tail call void @_clear_bit(i32 noundef %add38, ptr noundef %tkip_keymap19) #5
  tail call void @_clear_bit(i32 noundef %add47, ptr noundef %tkip_keymap19) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then36, %if.end24.if.end59_crit_edge, %if.end12.if.end59_crit_edge, %if.end.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/key.c", i32 48, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_ath_hw_keyreset, !4, !"__ksymtab_ath_hw_keyreset", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/key.c", i32 85, i32 1}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/key.c", i32 94, i32 3}
!7 = !{ptr @__ksymtab_ath_hw_keysetmac, !8, !"__ksymtab_ath_hw_keysetmac", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/key.c", i32 127, i32 1}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/key.c", i32 531, i32 7}
!11 = !{ptr @__ksymtab_ath_key_config, !12, !"__ksymtab_ath_key_config", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/key.c", i32 579, i32 1}
!13 = !{ptr @__ksymtab_ath_key_delete, !14, !"__ksymtab_ath_key_delete", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/key.c", i32 618, i32 1}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/key.c", i32 377, i32 3}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/key.c", i32 138, i32 3}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/key.c", i32 149, i32 4}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/key.c", i32 158, i32 4}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/key.c", i32 165, i32 4}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/key.c", i32 180, i32 3}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
