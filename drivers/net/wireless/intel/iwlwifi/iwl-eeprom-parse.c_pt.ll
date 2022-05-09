; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.0, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.0 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.128, %struct.anon.129, %struct.iwl_dma_ptr }
%struct.anon.128 = type { i8, i8, i32 }
%struct.anon.129 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_ht_params = type { i8, i8 }
%struct.iwl_eeprom_calib_hdr = type { i8, i8, i16 }
%struct.iwl_eeprom_channel = type { i8, i8 }
%struct.iwl_eeprom_params = type { [7 x i8], i8 }
%struct.iwl_eeprom_enhanced_txpwr = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid antennas (0x%x, 0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iwl_cfg80211_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 1, i16 1 }, %struct.ieee80211_rate { i32 1, i16 55, i16 2, i16 2 }, %struct.ieee80211_rate { i32 1, i16 110, i16 3, i16 3 }, %struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 4 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 5 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 6 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 7 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 8 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 9 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 10 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 11 }], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"EEPROM: used only %d of %d channels\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_init_channel_map = private unnamed_addr constant [21 x i8] c"iwl_init_channel_map\00", align 1
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Ch. %d Flags %x [%sGHz] - No traffic\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5.2\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.4\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Ch. %d [%sGHz] %s%s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VALID \00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IBSS \00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ACTIVE \00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RADAR \00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WIDE \00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DFS \00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@iwl_eeprom_band_1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [18 x i8] zeroinitializer }, align 32
@iwl_eeprom_band_2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\B7\B8\B9\BB\BC\BD\C0\C4\07\08\0B\0C\10", [19 x i8] zeroinitializer }, align 32
@iwl_eeprom_band_3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\22$&(*,.048<@", [20 x i8] zeroinitializer }, align 32
@iwl_eeprom_band_4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dhlptx|\80\84\88\8C", [21 x i8] zeroinitializer }, align 32
@iwl_eeprom_band_5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\91\95\99\9D\A1\A5", [26 x i8] zeroinitializer }, align 32
@iwl_eeprom_band_7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"$,4<dlt|\84\95\9D", [21 x i8] zeroinitializer }, align 32
@__func__.iwl_eeprom_enhanced_txpower = private unnamed_addr constant [28 x i8] c"iwl_eeprom_enhanced_txpower\00", align 1
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s %d:\09 %s%s%s%s%s%s%s%s (0x%02x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Common \00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Channel\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Common\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BAND_52G \00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OFDM \00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"40MHZ \00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HT_AP \00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RES1 \00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RES2 \00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"COMMON_TYPE \00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\09\09 chain_A: %d chain_B: %d chain_C: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\09\09 MIMO2: %d MIMO3: %d High 20_on_40: 0x%02x Low 20_on_40: 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_mod_ht40_chan_info = private unnamed_addr constant [23 x i8] c"iwl_mod_ht40_chan_info\00", align 1
@.str.28 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"HT40 Ch. %d [%sGHz] %s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\0A\00", [62 x i8] zeroinitializer }, align 32
@switch.table.iwl_init_sbands = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @iwl_eeprom_band_1, ptr @iwl_eeprom_band_2, ptr @iwl_eeprom_band_3, ptr @iwl_eeprom_band_4, ptr @iwl_eeprom_band_5], [44 x i8] zeroinitializer }, align 32
@switch.table.iwl_init_sbands.29 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 14, i32 13, i32 12, i32 11, i32 6], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 6, i64 7]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 743, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 866, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"iwl_cfg80211_rates\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 125, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 785, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 540, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 573, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"iwl_eeprom_band_1\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 90, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"iwl_eeprom_band_2\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 94, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"iwl_eeprom_band_3\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 98, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"iwl_eeprom_band_4\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 102, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"iwl_eeprom_band_5\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 106, i32 17 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"iwl_eeprom_band_7\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 114, i32 17 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 384, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 399, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 403, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 491, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [29 x i8] c"switch.table.iwl_init_sbands\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [32 x i8] c"switch.table.iwl_init_sbands.29\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @.str.1, ptr @iwl_cfg80211_rates, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @iwl_eeprom_band_1, ptr @iwl_eeprom_band_2, ptr @iwl_eeprom_band_3, ptr @iwl_eeprom_band_4, ptr @iwl_eeprom_band_5, ptr @iwl_eeprom_band_7, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @switch.table.iwl_init_sbands, ptr @switch.table.iwl_init_sbands.29], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_cfg80211_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_eeprom_band_1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_eeprom_band_2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_eeprom_band_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_eeprom_band_4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_eeprom_band_5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_eeprom_band_7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_init_sbands to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_init_sbands.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_init_sband_channels(ptr noundef %data, ptr nocapture noundef writeonly %sband, i32 noundef %n_channels, i32 noundef %band) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_channels)
  %cmp34 = icmp sgt i32 %n_channels, 0
  br i1 %cmp34, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %idx.036 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %chan.035 = phi ptr [ %arrayidx4, %while.body.land.rhs_crit_edge ], [ %channels, %entry.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %chan.035 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan.035, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %band)
  %cmp2.not = icmp eq i32 %1, %band
  br i1 %cmp2.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %idx.036, 1
  %arrayidx4 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %inc
  %exitcond.not = icmp eq i32 %inc, %n_channels
  br i1 %exitcond.not, label %while.end.thread, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.end.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx649 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels
  %2 = ptrtoint ptr %sband to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx649, ptr %sband, align 4
  br label %while.end19

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %chan.0.lcssa = phi ptr [ %channels, %entry.while.end_crit_edge ], [ %chan.035, %land.rhs.while.end_crit_edge ]
  %idx.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %idx.036, %land.rhs.while.end_crit_edge ]
  %arrayidx6 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %idx.0.lcssa
  %3 = ptrtoint ptr %sband to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx6, ptr %sband, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.lcssa, i32 %n_channels)
  %cmp940 = icmp slt i32 %idx.0.lcssa, %n_channels
  br i1 %cmp940, label %land.rhs10.preheader, label %while.end.while.end19_crit_edge

while.end.while.end19_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end19

land.rhs10.preheader:                             ; preds = %while.end
  %4 = sub i32 %n_channels, %idx.0.lcssa
  br label %land.rhs10

land.rhs10:                                       ; preds = %while.body14.land.rhs10_crit_edge, %land.rhs10.preheader
  %idx.143 = phi i32 [ %inc16, %while.body14.land.rhs10_crit_edge ], [ %idx.0.lcssa, %land.rhs10.preheader ]
  %n.042 = phi i32 [ %inc18, %while.body14.land.rhs10_crit_edge ], [ 0, %land.rhs10.preheader ]
  %chan.141 = phi ptr [ %arrayidx17, %while.body14.land.rhs10_crit_edge ], [ %chan.0.lcssa, %land.rhs10.preheader ]
  %5 = ptrtoint ptr %chan.141 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan.141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %band)
  %cmp12 = icmp eq i32 %6, %band
  br i1 %cmp12, label %while.body14, label %land.rhs10.while.end19_crit_edge

land.rhs10.while.end19_crit_edge:                 ; preds = %land.rhs10
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end19

while.body14:                                     ; preds = %land.rhs10
  %inc16 = add nuw nsw i32 %idx.143, 1
  %arrayidx17 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %inc16
  %inc18 = add i32 %n.042, 1
  %exitcond46.not = icmp eq i32 %inc18, %4
  br i1 %exitcond46.not, label %while.body14.while.end19_crit_edge, label %while.body14.land.rhs10_crit_edge

while.body14.land.rhs10_crit_edge:                ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs10

while.body14.while.end19_crit_edge:               ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end19

while.end19:                                      ; preds = %while.body14.while.end19_crit_edge, %land.rhs10.while.end19_crit_edge, %while.end.while.end19_crit_edge, %while.end.thread
  %n.0.lcssa = phi i32 [ 0, %while.end.while.end19_crit_edge ], [ 0, %while.end.thread ], [ %4, %while.body14.while.end19_crit_edge ], [ %n.042, %land.rhs10.while.end19_crit_edge ]
  %n_channels20 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 3
  %7 = ptrtoint ptr %n_channels20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %n.0.lcssa, ptr %n_channels20, align 4
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_init_ht_hw_capab(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %data, ptr noundef %ht_info, i32 noundef %band, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %conv58 = zext i8 %tx_chains to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv58) #5
  %rx_with_siso_diversity = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %rx_with_siso_diversity to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %rx_with_siso_diversity, align 4
  %tobool60.not = icmp sgt i24 %bf.load, -1
  br i1 %tobool60.not, label %cond.false125, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.false125:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv126 = zext i8 %rx_chains to i32
  %call.i342 = tail call i32 @__sw_hweight8(i32 noundef %conv126) #5
  %phi.bo = and i32 %call.i342, 255
  br label %if.end

if.end:                                           ; preds = %cond.false125, %entry.if.end_crit_edge
  %rx_chains.addr.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ %phi.bo, %cond.false125 ]
  %sku_cap_11n_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %sku_cap_11n_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sku_cap_11n_enable, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool131.not = icmp eq i8 %4, 0
  br i1 %tobool131.not, label %if.end.if.then136_crit_edge, label %lor.lhs.false

if.end.if.then136_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then136

lor.lhs.false:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1), align 4
  %and132 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %lor.lhs.false134, label %lor.lhs.false.if.then136_crit_edge

lor.lhs.false.if.then136_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then136

lor.lhs.false134:                                 ; preds = %lor.lhs.false
  %ht_params = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ht_params, align 8
  %tobool135.not = icmp eq ptr %7, null
  br i1 %tobool135.not, label %lor.lhs.false134.if.then136_crit_edge, label %if.end137

lor.lhs.false134.if.then136_crit_edge:            ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then136

if.then136:                                       ; preds = %lor.lhs.false134.if.then136_crit_edge, %lor.lhs.false.if.then136_crit_edge, %if.end.if.then136_crit_edge
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 1
  %8 = ptrtoint ptr %ht_supported to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ht_supported, align 2
  br label %cleanup

if.end137:                                        ; preds = %lor.lhs.false134
  %sku_cap_mimo_disabled = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 15
  %9 = ptrtoint ptr %sku_cap_mimo_disabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sku_cap_mimo_disabled, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool138.not = icmp eq i8 %10, 0
  %ht_supported141 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 1
  %11 = ptrtoint ptr %ht_supported141 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ht_supported141, align 2
  %12 = ptrtoint ptr %ht_info to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4096, ptr %ht_info, align 2
  %13 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ht_params, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load143 = load i8, ptr %14, align 1
  %16 = and i8 %bf.load143, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool145.not = icmp eq i8 %16, 0
  br i1 %tobool145.not, label %if.end137.if.end158_crit_edge, label %if.then146

if.end137.if.end158_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then146:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  %conv150 = and i32 %call.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv150)
  %cmp.not = icmp eq i32 %conv150, 0
  %spec.store.select = select i1 %cmp.not, i16 4352, i16 4480
  %17 = ptrtoint ptr %ht_info to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %spec.store.select, ptr %ht_info, align 2
  br label %if.end158

if.end158:                                        ; preds = %if.then146, %if.end137.if.end158_crit_edge
  %18 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ht_params, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load160 = load i8, ptr %19, align 1
  %21 = and i8 %bf.load160, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool163.not = icmp eq i8 %21, 0
  br i1 %tobool163.not, label %if.end158.if.end169_crit_edge, label %if.then164

if.end158.if.end169_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end169

if.then164:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %ht_info to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ht_info, align 2
  %24 = or i16 %23, 1
  store i16 %24, ptr %ht_info, align 2
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %if.end158.if.end169_crit_edge
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %25 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load170 = load i16, ptr %mq_rx_supported, align 4
  %28 = and i16 %bf.load170, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool174.not = icmp eq i16 %28, 0
  br i1 %tobool174.not, label %lor.lhs.false175, label %if.end169.if.then178_crit_edge

if.end169.if.then178_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then178

lor.lhs.false175:                                 ; preds = %if.end169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 2) to i32))
  %29 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp176 = icmp sgt i32 %29, 1
  br i1 %cmp176, label %lor.lhs.false175.if.then178_crit_edge, label %lor.lhs.false175.if.end183_crit_edge

lor.lhs.false175.if.end183_crit_edge:             ; preds = %lor.lhs.false175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end183

lor.lhs.false175.if.then178_crit_edge:            ; preds = %lor.lhs.false175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then178

if.then178:                                       ; preds = %lor.lhs.false175.if.then178_crit_edge, %if.end169.if.then178_crit_edge
  %30 = ptrtoint ptr %ht_info to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ht_info, align 2
  %32 = or i16 %31, 2048
  store i16 %32, ptr %ht_info, align 2
  br label %if.end183

if.end183:                                        ; preds = %if.then178, %lor.lhs.false175.if.end183_crit_edge
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 2
  %33 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %ampdu_factor, align 1
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 3
  %34 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 5, ptr %ampdu_density, align 2
  %mcs = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4
  %35 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %mcs, align 1
  %conv184 = select i1 %tobool138.not, i32 %rx_chains.addr.0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv184)
  %cmp185 = icmp ugt i32 %conv184, 1
  br i1 %cmp185, label %if.end191, label %if.end183.if.end199_crit_edge

if.end183.if.end199_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end199

if.end191:                                        ; preds = %if.end183
  %arrayidx190 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %arrayidx190, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv184)
  %cmp193.not = icmp eq i32 %conv184, 2
  br i1 %cmp193.not, label %if.end191.if.end199_crit_edge, label %if.then195

if.end191.if.end199_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end199

if.then195:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx198 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %arrayidx198, align 1
  br label %if.end199

if.end199:                                        ; preds = %if.then195, %if.end191.if.end199_crit_edge, %if.end183.if.end199_crit_edge
  %38 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ht_params, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load201 = load i8, ptr %39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load201)
  %tobool203.not = icmp sgt i8 %bf.load201, -1
  br i1 %tobool203.not, label %if.end199.if.end209_crit_edge, label %if.then204

if.end199.if.end209_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end209

if.then204:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %ht_info to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ht_info, align 2
  %43 = or i16 %42, 16
  store i16 %43, ptr %ht_info, align 2
  br label %if.end209

if.end209:                                        ; preds = %if.then204, %if.end199.if.end209_crit_edge
  %44 = ptrtoint ptr %ht_info to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ht_info, align 2
  %46 = or i16 %45, 32
  store i16 %46, ptr %ht_info, align 2
  %47 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ht_params, align 8
  %ht40_bands = getelementptr inbounds %struct.iwl_ht_params, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %ht40_bands to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ht40_bands, align 1
  %conv215 = zext i8 %50 to i32
  %shl = shl nuw i32 1, %band
  %and216 = and i32 %shl, %conv215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.end209.if.end227_crit_edge, label %if.then218

if.end209.if.end227_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227

if.then218:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  %51 = or i16 %45, 98
  %52 = ptrtoint ptr %ht_info to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %ht_info, align 2
  br label %if.end227

if.end227:                                        ; preds = %if.then218, %if.end209.if.end227_crit_edge
  %max_bit_rate.0 = phi i32 [ 150, %if.then218 ], [ 72, %if.end209.if.end227_crit_edge ]
  %mul = mul nuw nsw i32 %max_bit_rate.0, %conv184
  %and229 = and i32 %mul, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %if.end227.if.end248_crit_edge, label %do.end, !prof !67

if.end227.if.end248_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248

do.end:                                           ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 743, i32 noundef 9, ptr noundef null) #5
  br label %if.end248

if.end248:                                        ; preds = %do.end, %if.end227.if.end248_crit_edge
  %conv255 = trunc i32 %mul to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv255)
  %rx_highest = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %rx_highest to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %rx_highest, align 1
  %tx_params = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4, i32 2
  %conv258 = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv258, i32 %conv184)
  %cmp260.not = icmp eq i32 %conv258, %conv184
  %conv258.tr = trunc i32 %call.i to i8
  %55 = shl i8 %conv258.tr, 2
  %conv274 = add i8 %55, -1
  %storemerge = select i1 %cmp260.not, i8 1, i8 %conv274
  %56 = ptrtoint ptr %tx_params to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %storemerge, ptr %tx_params, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end248, %if.then136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_parse_eeprom_data(ptr nocapture noundef readonly %trans, ptr noundef readonly %cfg, ptr noundef %eeprom, i32 noundef %eeprom_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %tobool.not = icmp eq ptr %cfg, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %eeprom_params = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 4
  %2 = ptrtoint ptr %eeprom_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eeprom_params, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.rhs.do.end_crit_edge, label %if.end26, !prof !68

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 800, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4008) #8
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %eeprom_size)
  %cmp.not.i = icmp ugt i32 %eeprom_size, 42
  br i1 %cmp.not.i, label %iwl_eeprom_query_addr.exit, label %iwl_eeprom_query_addr.exit.thread, !prof !67

iwl_eeprom_query_addr.exit.thread:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %err_free

iwl_eeprom_query_addr.exit:                       ; preds = %if.end30
  %arrayidx.i = getelementptr i8, ptr %eeprom, i32 42
  %tobool32.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool32.not, label %iwl_eeprom_query_addr.exit.err_free_crit_edge, label %if.end34

iwl_eeprom_query_addr.exit.err_free_crit_edge:    ; preds = %iwl_eeprom_query_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end34:                                         ; preds = %iwl_eeprom_query_addr.exit
  %hw_addr = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %hw_addr, ptr %arrayidx.i, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 154, i32 %eeprom_size)
  %cmp.i = icmp ult i32 %eeprom_size, 154
  br i1 %cmp.i, label %iwl_eeprom_query16.exit.thread, label %iwl_eeprom_query16.exit, !prof !68

iwl_eeprom_query16.exit.thread:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call7.i.i, align 8
  br label %do.end.i76.i.i.i

iwl_eeprom_query16.exit:                          ; preds = %if.end34
  %add.ptr.i = getelementptr i8, ptr %eeprom, i32 152
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #5
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %eeprom_size)
  %cmp.i75.i.i.i = icmp ult i32 %eeprom_size, 208
  br i1 %cmp.i75.i.i.i, label %iwl_eeprom_query16.exit.do.end.i76.i.i.i_crit_edge, label %if.end21.i78.i.i.i, !prof !68

iwl_eeprom_query16.exit.do.end.i76.i.i.i_crit_edge: ; preds = %iwl_eeprom_query16.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i76.i.i.i

do.end.i76.i.i.i:                                 ; preds = %iwl_eeprom_query16.exit.do.end.i76.i.i.i_crit_edge, %iwl_eeprom_query16.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i.i.i

if.end21.i78.i.i.i:                               ; preds = %iwl_eeprom_query16.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i77.i.i.i = getelementptr i8, ptr %eeprom, i32 206
  %11 = ptrtoint ptr %add.ptr.i77.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i77.i.i.i, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #5
  %phi.cast.i = zext i16 %13 to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 1
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %if.end21.i78.i.i.i, %do.end.i76.i.i.i
  %cmp.i75.i.i.i270 = phi i1 [ true, %do.end.i76.i.i.i ], [ false, %if.end21.i78.i.i.i ]
  %offset.0.i.i.i = phi i32 [ 0, %do.end.i76.i.i.i ], [ %phi.bo.i, %if.end21.i78.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.i.i.i, i32 %eeprom_size)
  %cmp.not.i.i = icmp ult i32 %offset.0.i.i.i, %eeprom_size
  br i1 %cmp.not.i.i, label %iwl_eeprom_query_addr.exit.i, label %iwl_eeprom_query_addr.exit.thread.i, !prof !67

iwl_eeprom_query_addr.exit.thread.i:              ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %err_free

iwl_eeprom_query_addr.exit.i:                     ; preds = %sw.epilog.i.i.i
  %arrayidx.i.i = getelementptr i8, ptr %eeprom, i32 %offset.0.i.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %iwl_eeprom_query_addr.exit.i.err_free_crit_edge, label %if.end39

iwl_eeprom_query_addr.exit.i.err_free_crit_edge:  ; preds = %iwl_eeprom_query_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end39:                                         ; preds = %iwl_eeprom_query_addr.exit.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %calib_version.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %calib_version.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %calib_version.i, align 2
  %voltage.i = getelementptr inbounds %struct.iwl_eeprom_calib_hdr, ptr %arrayidx.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %voltage.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %voltage.i, align 1
  %calib_voltage.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %calib_voltage.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %calib_voltage.i, align 4
  br i1 %cmp.i75.i.i.i270, label %do.end.i76.i.i, label %if.end21.i78.i.i, !prof !68

do.end.i76.i.i:                                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i.i

if.end21.i78.i.i:                                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i77.i.i = getelementptr i8, ptr %eeprom, i32 206
  %20 = ptrtoint ptr %add.ptr.i77.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i77.i.i, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #5
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end21.i78.i.i, %do.end.i76.i.i
  %offset.0.i.i = phi i16 [ 0, %do.end.i76.i.i ], [ %22, %if.end21.i78.i.i ]
  %conv.i.i = zext i16 %offset.0.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.i.i = add nuw nsw i32 %shl.i.i, 592
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %eeprom_size)
  %cmp.not.i211 = icmp ult i32 %add.i.i, %eeprom_size
  br i1 %cmp.not.i211, label %iwl_eeprom_query_addr.exit216, label %iwl_eeprom_query_addr.exit216.thread, !prof !67

iwl_eeprom_query_addr.exit216.thread:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %err_free

iwl_eeprom_query_addr.exit216:                    ; preds = %sw.epilog.i.i
  %arrayidx.i213 = getelementptr i8, ptr %eeprom, i32 %add.i.i
  %tobool41.not = icmp eq ptr %arrayidx.i213, null
  br i1 %tobool41.not, label %iwl_eeprom_query_addr.exit216.err_free_crit_edge, label %if.end43

iwl_eeprom_query_addr.exit216.err_free_crit_edge: ; preds = %iwl_eeprom_query_addr.exit216
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end43:                                         ; preds = %iwl_eeprom_query_addr.exit216
  %xtal_calib = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx.i213, align 1
  %25 = ptrtoint ptr %xtal_calib to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %xtal_calib, align 4
  br i1 %cmp.i75.i.i.i270, label %do.end.i76.i.i218, label %if.end21.i78.i.i220, !prof !68

do.end.i76.i.i218:                                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i.i225

if.end21.i78.i.i220:                              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i77.i.i219 = getelementptr i8, ptr %eeprom, i32 206
  %26 = ptrtoint ptr %add.ptr.i77.i.i219 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i77.i.i219, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #5
  %phi.cast = zext i16 %28 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 1
  %phi.bo280 = add nuw nsw i32 %phi.bo, 598
  br label %sw.epilog.i.i225

sw.epilog.i.i225:                                 ; preds = %if.end21.i78.i.i220, %do.end.i76.i.i218
  %offset.0.i.i221 = phi i32 [ 598, %do.end.i76.i.i218 ], [ %phi.bo280, %if.end21.i78.i.i220 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.i.i221, i32 %eeprom_size)
  %cmp.not.i226 = icmp ult i32 %offset.0.i.i221, %eeprom_size
  br i1 %cmp.not.i226, label %iwl_eeprom_query_addr.exit231, label %iwl_eeprom_query_addr.exit231.thread, !prof !67

iwl_eeprom_query_addr.exit231.thread:             ; preds = %sw.epilog.i.i225
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %err_free

iwl_eeprom_query_addr.exit231:                    ; preds = %sw.epilog.i.i225
  %arrayidx.i228 = getelementptr i8, ptr %eeprom, i32 %offset.0.i.i221
  %tobool46.not = icmp eq ptr %arrayidx.i228, null
  br i1 %tobool46.not, label %iwl_eeprom_query_addr.exit231.err_free_crit_edge, label %if.end48

iwl_eeprom_query_addr.exit231.err_free_crit_edge: ; preds = %iwl_eeprom_query_addr.exit231
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end48:                                         ; preds = %iwl_eeprom_query_addr.exit231
  %29 = ptrtoint ptr %arrayidx.i228 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i228, align 2
  %raw_temperature = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %raw_temperature to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %raw_temperature, align 2
  br i1 %cmp.i75.i.i.i270, label %do.end.i76.i.i233, label %if.end21.i78.i.i235, !prof !68

do.end.i76.i.i233:                                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i.i240

if.end21.i78.i.i235:                              ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i77.i.i234 = getelementptr i8, ptr %eeprom, i32 206
  %32 = ptrtoint ptr %add.ptr.i77.i.i234 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i77.i.i234, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #5
  %phi.cast281 = zext i16 %34 to i32
  %phi.bo282 = shl nuw nsw i32 %phi.cast281, 1
  %phi.bo283 = add nuw nsw i32 %phi.bo282, 596
  br label %sw.epilog.i.i240

sw.epilog.i.i240:                                 ; preds = %if.end21.i78.i.i235, %do.end.i76.i.i233
  %offset.0.i.i236 = phi i32 [ 596, %do.end.i76.i.i233 ], [ %phi.bo283, %if.end21.i78.i.i235 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.i.i236, i32 %eeprom_size)
  %cmp.not.i241 = icmp ult i32 %offset.0.i.i236, %eeprom_size
  br i1 %cmp.not.i241, label %iwl_eeprom_query_addr.exit246, label %iwl_eeprom_query_addr.exit246.thread, !prof !67

iwl_eeprom_query_addr.exit246.thread:             ; preds = %sw.epilog.i.i240
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %err_free

iwl_eeprom_query_addr.exit246:                    ; preds = %sw.epilog.i.i240
  %arrayidx.i243 = getelementptr i8, ptr %eeprom, i32 %offset.0.i.i236
  %tobool50.not = icmp eq ptr %arrayidx.i243, null
  br i1 %tobool50.not, label %iwl_eeprom_query_addr.exit246.err_free_crit_edge, label %if.end52

iwl_eeprom_query_addr.exit246.err_free_crit_edge: ; preds = %iwl_eeprom_query_addr.exit246
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end52:                                         ; preds = %iwl_eeprom_query_addr.exit246
  %35 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i243, align 2
  %kelvin_temperature = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %kelvin_temperature to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %kelvin_temperature, align 8
  %add.ptr = getelementptr i16, ptr %arrayidx.i243, i32 1
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr, align 2
  %kelvin_voltage = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %kelvin_voltage to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %kelvin_voltage, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %eeprom_size)
  %cmp.i247 = icmp ult i32 %eeprom_size, 146
  br i1 %cmp.i247, label %do.end.i248, label %if.end21.i250, !prof !68

do.end.i248:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %iwl_eeprom_query16.exit252

if.end21.i250:                                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i249 = getelementptr i8, ptr %eeprom, i32 144
  %41 = ptrtoint ptr %add.ptr.i249 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i249, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #5
  br label %iwl_eeprom_query16.exit252

iwl_eeprom_query16.exit252:                       ; preds = %if.end21.i250, %do.end.i248
  %retval.0.i251 = phi i16 [ 0, %do.end.i248 ], [ %43, %if.end21.i250 ]
  %44 = trunc i16 %retval.0.i251 to i8
  %45 = lshr i8 %44, 4
  %conv55 = and i8 %45, 3
  %radio_cfg_dash = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 18
  %46 = ptrtoint ptr %radio_cfg_dash to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv55, ptr %radio_cfg_dash, align 1
  %47 = lshr i8 %44, 6
  %radio_cfg_pnum = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 19
  %48 = ptrtoint ptr %radio_cfg_pnum to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %radio_cfg_pnum, align 4
  %49 = lshr i8 %44, 2
  %conv63 = and i8 %49, 3
  %radio_cfg_step = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 17
  %50 = ptrtoint ptr %radio_cfg_step to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv63, ptr %radio_cfg_step, align 2
  %and65 = and i16 %retval.0.i251, 3
  %radio_cfg_type = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 16
  %51 = ptrtoint ptr %radio_cfg_type to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %and65, ptr %radio_cfg_type, align 8
  %52 = lshr i16 %retval.0.i251, 12
  %conv70 = trunc i16 %52 to i8
  %valid_rx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 21
  %53 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv70, ptr %valid_rx_ant, align 2
  %54 = lshr i16 %retval.0.i251, 8
  %55 = trunc i16 %54 to i8
  %conv74 = and i8 %55, 15
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 20
  %56 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv74, ptr %valid_tx_ant, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %eeprom_size)
  %cmp.i253 = icmp ult i32 %eeprom_size, 140
  br i1 %cmp.i253, label %do.end.i254, label %if.end21.i256, !prof !68

do.end.i254:                                      ; preds = %iwl_eeprom_query16.exit252
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %iwl_eeprom_query16.exit258

if.end21.i256:                                    ; preds = %iwl_eeprom_query16.exit252
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i255 = getelementptr i8, ptr %eeprom, i32 138
  %57 = ptrtoint ptr %add.ptr.i255 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i255, align 2
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #5
  %extract.t = trunc i16 %59 to i8
  %extract = lshr i16 %59, 8
  %extract.t284 = trunc i16 %extract to i8
  %phi.bo285 = and i8 %extract.t284, 1
  br label %iwl_eeprom_query16.exit258

iwl_eeprom_query16.exit258:                       ; preds = %if.end21.i256, %do.end.i254
  %retval.0.i257.off0 = phi i8 [ 0, %do.end.i254 ], [ %extract.t, %if.end21.i256 ]
  %retval.0.i257.off8 = phi i8 [ 0, %do.end.i254 ], [ %phi.bo285, %if.end21.i256 ]
  %sku_cap_11n_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 10
  %60 = lshr i8 %retval.0.i257.off0, 6
  %61 = and i8 %60, 1
  %62 = ptrtoint ptr %sku_cap_11n_enable to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %sku_cap_11n_enable, align 2
  %sku_cap_amt_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 13
  %63 = lshr i8 %retval.0.i257.off0, 7
  %64 = ptrtoint ptr %sku_cap_amt_enable to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %sku_cap_amt_enable, align 1
  %sku_cap_band_24ghz_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 8
  %65 = lshr i8 %retval.0.i257.off0, 4
  %66 = and i8 %65, 1
  %67 = ptrtoint ptr %sku_cap_band_24ghz_enable to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %sku_cap_band_24ghz_enable, align 8
  %sku_cap_band_52ghz_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 9
  %68 = lshr i8 %retval.0.i257.off0, 5
  %69 = and i8 %68, 1
  %70 = ptrtoint ptr %sku_cap_band_52ghz_enable to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %sku_cap_band_52ghz_enable, align 1
  %sku_cap_ipan_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 14
  %71 = ptrtoint ptr %sku_cap_ipan_enable to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %retval.0.i257.off8, ptr %sku_cap_ipan_enable, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1) to i32))
  %72 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1), align 4
  %and95 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %iwl_eeprom_query16.exit258.if.end99_crit_edge, label %if.then97

iwl_eeprom_query16.exit258.if.end99_crit_edge:    ; preds = %iwl_eeprom_query16.exit258
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then97:                                        ; preds = %iwl_eeprom_query16.exit258
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %sku_cap_11n_enable to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %sku_cap_11n_enable, align 2
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %iwl_eeprom_query16.exit258.if.end99_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 138, i32 %eeprom_size)
  %cmp.i259 = icmp ult i32 %eeprom_size, 138
  br i1 %cmp.i259, label %do.end.i260, label %if.end21.i262, !prof !68

do.end.i260:                                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %iwl_eeprom_query16.exit264

if.end21.i262:                                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i261 = getelementptr i8, ptr %eeprom, i32 136
  %74 = ptrtoint ptr %add.ptr.i261 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i261, align 2
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #5
  %phi.cast286 = zext i16 %76 to i32
  br label %iwl_eeprom_query16.exit264

iwl_eeprom_query16.exit264:                       ; preds = %if.end21.i262, %do.end.i260
  %retval.0.i263 = phi i32 [ 0, %do.end.i260 ], [ %phi.cast286, %if.end21.i262 ]
  %nvm_version = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 22
  %77 = ptrtoint ptr %nvm_version to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %retval.0.i263, ptr %nvm_version, align 8
  %valid_tx_ant102 = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 22
  %78 = ptrtoint ptr %valid_tx_ant102 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %valid_tx_ant102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool103.not = icmp eq i8 %79, 0
  br i1 %tobool103.not, label %iwl_eeprom_query16.exit264.if.end107_crit_edge, label %if.then104

iwl_eeprom_query16.exit264.if.end107_crit_edge:   ; preds = %iwl_eeprom_query16.exit264
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.then104:                                       ; preds = %iwl_eeprom_query16.exit264
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %valid_tx_ant, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %iwl_eeprom_query16.exit264.if.end107_crit_edge
  %valid_rx_ant108 = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 23
  %81 = ptrtoint ptr %valid_rx_ant108 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %valid_rx_ant108, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool109.not = icmp eq i8 %82, 0
  br i1 %tobool109.not, label %if.end107.if.end113_crit_edge, label %if.then110

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %valid_rx_ant, align 2
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %84 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %valid_tx_ant, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool115.not = icmp eq i8 %85, 0
  br i1 %tobool115.not, label %if.end113.do.end122_crit_edge, label %lor.lhs.false

if.end113.do.end122_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end122

lor.lhs.false:                                    ; preds = %if.end113
  %86 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %valid_rx_ant, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool117.not = icmp eq i8 %87, 0
  br i1 %tobool117.not, label %lor.lhs.false.do.end122_crit_edge, label %if.end129

lor.lhs.false.do.end122_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end122

do.end122:                                        ; preds = %lor.lhs.false.do.end122_crit_edge, %if.end113.do.end122_crit_edge
  %conv124 = zext i8 %85 to i32
  %88 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %valid_rx_ant, align 2
  %conv126 = zext i8 %89 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %conv124, i32 noundef %conv126) #5
  br label %err_free

if.end129:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @iwl_init_sbands(ptr noundef %trans, ptr noundef nonnull %cfg, ptr noundef nonnull %call7.i.i, ptr noundef %eeprom, i32 noundef %eeprom_size)
  br label %cleanup

err_free:                                         ; preds = %do.end122, %iwl_eeprom_query_addr.exit246.err_free_crit_edge, %iwl_eeprom_query_addr.exit246.thread, %iwl_eeprom_query_addr.exit231.err_free_crit_edge, %iwl_eeprom_query_addr.exit231.thread, %iwl_eeprom_query_addr.exit216.err_free_crit_edge, %iwl_eeprom_query_addr.exit216.thread, %iwl_eeprom_query_addr.exit.i.err_free_crit_edge, %iwl_eeprom_query_addr.exit.thread.i, %iwl_eeprom_query_addr.exit.err_free_crit_edge, %iwl_eeprom_query_addr.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end129, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %err_free ], [ %call7.i.i, %if.end129 ], [ null, %if.end26.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iwl_eeprom_query_addr(ptr noundef readonly %eeprom, i32 noundef %eeprom_size, i32 noundef %offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %offset, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %entry.eeprom_indirect_address.exit_crit_edge, label %if.end.i

entry.eeprom_indirect_address.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_indirect_address.exit

if.end.i:                                         ; preds = %entry
  %and1.i = and i32 %offset, 983040
  %0 = add nsw i32 %and1.i, -65536
  %1 = lshr exact i32 %0, 16
  %trunc.i = trunc i32 %1 to i16
  %2 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %do.end.i [
    i16 0, label %sw.bb.i
    i16 1, label %sw.bb2.i
    i16 2, label %sw.bb4.i
    i16 6, label %sw.bb6.i
    i16 7, label %sw.bb8.i
    i16 3, label %sw.bb10.i
    i16 4, label %sw.bb12.i
    i16 5, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 202, i32 %eeprom_size)
  %cmp.i.i = icmp ult i32 %eeprom_size, 202
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end21.i.i, !prof !68

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

if.end21.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %eeprom, i32 200
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #5
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %eeprom_size)
  %cmp.i51.i = icmp ult i32 %eeprom_size, 204
  br i1 %cmp.i51.i, label %do.end.i52.i, label %if.end21.i54.i, !prof !68

do.end.i52.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

if.end21.i54.i:                                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i53.i = getelementptr i8, ptr %eeprom, i32 202
  %6 = ptrtoint ptr %add.ptr.i53.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i53.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #5
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 206, i32 %eeprom_size)
  %cmp.i57.i = icmp ult i32 %eeprom_size, 206
  br i1 %cmp.i57.i, label %do.end.i58.i, label %if.end21.i60.i, !prof !68

do.end.i58.i:                                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

if.end21.i60.i:                                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i59.i = getelementptr i8, ptr %eeprom, i32 204
  %9 = ptrtoint ptr %add.ptr.i59.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i59.i, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #5
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 214, i32 %eeprom_size)
  %cmp.i63.i = icmp ult i32 %eeprom_size, 214
  br i1 %cmp.i63.i, label %do.end.i64.i, label %if.end21.i66.i, !prof !68

do.end.i64.i:                                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

if.end21.i66.i:                                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i65.i = getelementptr i8, ptr %eeprom, i32 212
  %12 = ptrtoint ptr %add.ptr.i65.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i65.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #5
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 216, i32 %eeprom_size)
  %cmp.i69.i = icmp ult i32 %eeprom_size, 216
  br i1 %cmp.i69.i, label %do.end.i70.i, label %if.end21.i72.i, !prof !68

do.end.i70.i:                                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

if.end21.i72.i:                                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i71.i = getelementptr i8, ptr %eeprom, i32 214
  %15 = ptrtoint ptr %add.ptr.i71.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i71.i, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #5
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %eeprom_size)
  %cmp.i75.i = icmp ult i32 %eeprom_size, 208
  br i1 %cmp.i75.i, label %do.end.i76.i, label %if.end21.i78.i, !prof !68

do.end.i76.i:                                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

if.end21.i78.i:                                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i77.i = getelementptr i8, ptr %eeprom, i32 206
  %18 = ptrtoint ptr %add.ptr.i77.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i77.i, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #5
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %eeprom_size)
  %cmp.i81.i = icmp ult i32 %eeprom_size, 210
  br i1 %cmp.i81.i, label %do.end.i82.i, label %if.end21.i84.i, !prof !68

do.end.i82.i:                                     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

if.end21.i84.i:                                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i83.i = getelementptr i8, ptr %eeprom, i32 208
  %21 = ptrtoint ptr %add.ptr.i83.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i83.i, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #5
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 212, i32 %eeprom_size)
  %cmp.i87.i = icmp ult i32 %eeprom_size, 212
  br i1 %cmp.i87.i, label %do.end.i88.i, label %if.end21.i90.i, !prof !68

do.end.i88.i:                                     ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

if.end21.i90.i:                                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i89.i = getelementptr i8, ptr %eeprom, i32 210
  %24 = ptrtoint ptr %add.ptr.i89.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i89.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #5
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %if.end21.i90.i, %do.end.i88.i, %if.end21.i84.i, %do.end.i82.i, %if.end21.i78.i, %do.end.i76.i, %if.end21.i72.i, %do.end.i70.i, %if.end21.i66.i, %do.end.i64.i, %if.end21.i60.i, %do.end.i58.i, %if.end21.i54.i, %do.end.i52.i, %if.end21.i.i, %do.end.i.i
  %offset.0.i = phi i16 [ 0, %do.end.i ], [ 0, %do.end.i.i ], [ %5, %if.end21.i.i ], [ 0, %do.end.i52.i ], [ %8, %if.end21.i54.i ], [ 0, %do.end.i58.i ], [ %11, %if.end21.i60.i ], [ 0, %do.end.i64.i ], [ %14, %if.end21.i66.i ], [ 0, %do.end.i70.i ], [ %17, %if.end21.i72.i ], [ 0, %do.end.i76.i ], [ %20, %if.end21.i78.i ], [ 0, %do.end.i82.i ], [ %23, %if.end21.i84.i ], [ 0, %do.end.i88.i ], [ %26, %if.end21.i90.i ]
  %and32.i = and i32 %offset, 65535
  %conv.i = zext i16 %offset.0.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %shl.i, %and32.i
  br label %eeprom_indirect_address.exit

eeprom_indirect_address.exit:                     ; preds = %sw.epilog.i, %entry.eeprom_indirect_address.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %sw.epilog.i ], [ %offset, %entry.eeprom_indirect_address.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %eeprom_size)
  %cmp.not = icmp ult i32 %retval.0.i, %eeprom_size
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !67

do.end:                                           ; preds = %eeprom_indirect_address.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %eeprom_indirect_address.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i8, ptr %eeprom, i32 %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %arrayidx, %if.end21 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_init_sbands(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %cfg, ptr noundef %data, ptr noundef %eeprom, i32 noundef %eeprom_size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %eeprom_params.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %entry
  %n_channels.0295.i = phi i32 [ 0, %entry ], [ %n_channels.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %band.0293.i = phi i32 [ 1, %entry ], [ %inc116.i, %for.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %eeprom_params.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eeprom_params.i.i, align 4
  %sub.i.i = add nsw i32 %band.0293.i, -1
  %arrayidx.i.i = getelementptr [7 x i8], ptr %3, i32 0, i32 %sub.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %or.i.i = or i32 %conv.i.i, 1245184
  %call.i.i = tail call fastcc ptr @iwl_eeprom_query_addr(ptr noundef %eeprom, i32 noundef %eeprom_size, i32 noundef %or.i.i) #5
  %switch.tableidx = add nsw i32 %band.0293.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 5
  br i1 %6, label %switch.lookup, label %iwl_init_band_reference.exit.i

iwl_init_band_reference.exit.i:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 463, i32 noundef 9, ptr noundef null) #5
  br label %for.end.i

switch.lookup:                                    ; preds = %for.body.i
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.iwl_init_sbands, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep97 = getelementptr inbounds [5 x i32], ptr @switch.table.iwl_init_sbands.29, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep97 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load98 = load i32, ptr %switch.gep97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band.0293.i)
  %cmp17.i = icmp ne i32 %band.0293.i, 1
  %cond19.i = zext i1 %cmp17.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band.0293.i)
  %cmp56.not.i = icmp eq i32 %band.0293.i, 1
  %cond58.i = select i1 %cmp56.not.i, ptr @.str.5, ptr @.str.4
  br label %for.body3.i

for.body3.i:                                      ; preds = %cleanup.i.for.body3.i_crit_edge, %switch.lookup
  %n_channels.1292.i = phi i32 [ %n_channels.0295.i, %switch.lookup ], [ %n_channels.2.i, %cleanup.i.for.body3.i_crit_edge ]
  %ch_idx.0290.i = phi i32 [ 0, %switch.lookup ], [ %inc114.i, %cleanup.i.for.body3.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_eeprom_channel, ptr %call.i.i, i32 %ch_idx.0290.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5.i = getelementptr i8, ptr %switch.load, i32 %ch_idx.0290.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %12 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_init_channel_map, ptr noundef nonnull @.str.3, i32 noundef %conv6.i, i32 noundef %conv.i, ptr noundef nonnull %cond58.i) #5
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body3.i
  %arrayidx14.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.1292.i
  %inc.i = add i32 %n_channels.1292.i, 1
  %arrayidx15.i = getelementptr i8, ptr %switch.load, i32 %ch_idx.0290.i
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %14 to i16
  %hw_value.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.1292.i, i32 3
  %15 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv16.i, ptr %hw_value.i, align 2
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond19.i, ptr %arrayidx14.i, align 4
  %conv22.i = zext i8 %14 to i32
  %call.i260.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv22.i, i32 noundef %cond19.i) #5
  %div.i.i = udiv i32 %call.i260.i, 1000
  %center_freq.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.1292.i, i32 1
  %17 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.i.i, ptr %center_freq.i, align 4
  %flags24.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.1292.i, i32 4
  %18 = ptrtoint ptr %flags24.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 48, ptr %flags24.i, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool28.not.i = icmp eq i8 %21, 0
  %spec.store.select.i = select i1 %tobool28.not.i, i32 50, i32 48
  %22 = ptrtoint ptr %flags24.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select.i, ptr %flags24.i, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = and i8 %24, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool35.not.i = icmp eq i8 %25, 0
  %spec.store.select287.i = select i1 %tobool35.not.i, i32 50, i32 %spec.store.select.i
  %26 = ptrtoint ptr %flags24.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.store.select287.i, ptr %flags24.i, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %29 = and i8 %28, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool43.not.i = icmp eq i8 %29, 0
  br i1 %tobool43.not.i, label %if.end.i.if.end47.i_crit_edge, label %if.then44.i

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i

if.then44.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %or46.i = or i32 %spec.store.select287.i, 8
  %30 = ptrtoint ptr %flags24.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or46.i, ptr %flags24.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %if.end.i.if.end47.i_crit_edge
  %max_power_avg.i = getelementptr %struct.iwl_eeprom_channel, ptr %call.i.i, i32 %ch_idx.0290.i, i32 1
  %31 = ptrtoint ptr %max_power_avg.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_power_avg.i, align 1
  %conv49.i = sext i8 %32 to i32
  %max_power.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.1292.i, i32 6
  %33 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv49.i, ptr %max_power.i, align 4
  %34 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hw_value.i, align 2
  %conv55.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %conv61.i = zext i8 %37 to i32
  %and62.i = and i32 %conv61.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  %cond64.i = select i1 %tobool63.not.i, ptr @.str.8, ptr @.str.7
  %and68.i = and i32 %conv61.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  %cond70.i = select i1 %tobool69.not.i, ptr @.str.8, ptr @.str.9
  %and74.i = and i32 %conv61.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  %cond76.i = select i1 %tobool75.not.i, ptr @.str.8, ptr @.str.10
  %and80.i = and i32 %conv61.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  %cond82.i = select i1 %tobool81.not.i, ptr @.str.8, ptr @.str.11
  %and86.i = and i32 %conv61.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  %cond88.i = select i1 %tobool87.not.i, ptr @.str.8, ptr @.str.12
  %and92.i = and i32 %conv61.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  %cond94.i = select i1 %tobool93.not.i, ptr @.str.8, ptr @.str.13
  %38 = ptrtoint ptr %max_power_avg.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %max_power_avg.i, align 1
  %conv100.i = sext i8 %39 to i32
  %not.tobool69.not.i = xor i1 %tobool69.not.i, true
  %spec.select.i = and i1 %tobool81.not.i, %not.tobool69.not.i
  %cond111.i = select i1 %spec.select.i, ptr @.str.8, ptr @.str.14
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_init_channel_map, ptr noundef nonnull @.str.6, i32 noundef %conv55.i, ptr noundef nonnull %cond58.i, ptr noundef nonnull %cond64.i, ptr noundef nonnull %cond70.i, ptr noundef nonnull %cond76.i, ptr noundef nonnull %cond82.i, ptr noundef nonnull %cond88.i, ptr noundef nonnull %cond94.i, i32 noundef %conv61.i, i32 noundef %conv100.i, ptr noundef nonnull %cond111.i) #5
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end47.i, %do.end.i
  %n_channels.2.i = phi i32 [ %inc.i, %if.end47.i ], [ %n_channels.1292.i, %do.end.i ]
  %inc114.i = add nuw nsw i32 %ch_idx.0290.i, 1
  %exitcond.not.i = icmp eq i32 %inc114.i, %switch.load98
  br i1 %exitcond.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body3.i_crit_edge

cleanup.i.for.body3.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %iwl_init_band_reference.exit.i
  %n_channels.1.lcssa.i = phi i32 [ %n_channels.0295.i, %iwl_init_band_reference.exit.i ], [ %n_channels.2.i, %cleanup.i.for.end.i_crit_edge ]
  %inc116.i = add nuw nsw i32 %band.0293.i, 1
  %exitcond302.not.i = icmp eq i32 %inc116.i, 6
  br i1 %exitcond302.not.i, label %for.end117.i, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end117.i:                                     ; preds = %for.end.i
  %40 = ptrtoint ptr %eeprom_params.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eeprom_params.i.i, align 4
  %enhanced_txpower.i = getelementptr inbounds %struct.iwl_eeprom_params, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %enhanced_txpower.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %enhanced_txpower.i, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool118.not.i = icmp eq i8 %43, 0
  br i1 %tobool118.not.i, label %if.else.i, label %if.then119.i

if.then119.i:                                     ; preds = %for.end117.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 216, i32 %eeprom_size)
  %cmp.i69.i.i.i.i = icmp ult i32 %eeprom_size, 216
  br i1 %cmp.i69.i.i.i.i, label %do.end.i70.i.i.i.i, label %if.end21.i72.i.i.i.i, !prof !68

do.end.i70.i.i.i.i:                               ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i.i.i.i

if.end21.i72.i.i.i.i:                             ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i71.i.i.i.i = getelementptr i8, ptr %eeprom, i32 214
  %44 = ptrtoint ptr %add.ptr.i71.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i71.i.i.i.i, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #5
  %phi.cast155.i.i = zext i16 %46 to i32
  %phi.bo156.i.i = shl nuw nsw i32 %phi.cast155.i.i, 1
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %if.end21.i72.i.i.i.i, %do.end.i70.i.i.i.i
  %offset.0.i.i.i.i = phi i32 [ 0, %do.end.i70.i.i.i.i ], [ %phi.bo156.i.i, %if.end21.i72.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.i.i.i.i, i32 %eeprom_size)
  %cmp.not.i.i.i = icmp ult i32 %offset.0.i.i.i.i, %eeprom_size
  br i1 %cmp.not.i.i.i, label %if.end21.i.i.i, label %do.end.i.i.i, !prof !67

do.end.i.i.i:                                     ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %iwl_eeprom_query_addr.exit.i.i

if.end21.i.i.i:                                   ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i.i = getelementptr i8, ptr %eeprom, i32 %offset.0.i.i.i.i
  br label %iwl_eeprom_query_addr.exit.i.i

iwl_eeprom_query_addr.exit.i.i:                   ; preds = %if.end21.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi ptr [ null, %do.end.i.i.i ], [ %arrayidx.i.i.i, %if.end21.i.i.i ]
  %47 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %retval.0.i.i.i, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #5
  %50 = lshr i16 %49, 2
  %div.i261.i = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 214, i32 %eeprom_size)
  %cmp.i63.i.i.i.i = icmp ult i32 %eeprom_size, 214
  br i1 %cmp.i63.i.i.i.i, label %do.end.i64.i.i.i.i, label %if.end21.i66.i.i.i.i, !prof !68

do.end.i64.i.i.i.i:                               ; preds = %iwl_eeprom_query_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i.i134.i.i

if.end21.i66.i.i.i.i:                             ; preds = %iwl_eeprom_query_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i65.i.i.i.i = getelementptr i8, ptr %eeprom, i32 212
  %51 = ptrtoint ptr %add.ptr.i65.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr.i65.i.i.i.i, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #5
  %phi.cast.i.i = zext i16 %53 to i32
  %phi.bo.i.i = shl nuw nsw i32 %phi.cast.i.i, 1
  br label %sw.epilog.i.i134.i.i

sw.epilog.i.i134.i.i:                             ; preds = %if.end21.i66.i.i.i.i, %do.end.i64.i.i.i.i
  %offset.0.i.i131.i.i = phi i32 [ 0, %do.end.i64.i.i.i.i ], [ %phi.bo.i.i, %if.end21.i66.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.i.i131.i.i, i32 %eeprom_size)
  %cmp.not.i135.i.i = icmp ult i32 %offset.0.i.i131.i.i, %eeprom_size
  br i1 %cmp.not.i135.i.i, label %if.end21.i138.i.i, label %do.end.i136.i.i, !prof !67

do.end.i136.i.i:                                  ; preds = %sw.epilog.i.i134.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %iwl_eeprom_query_addr.exit140.i.i

if.end21.i138.i.i:                                ; preds = %sw.epilog.i.i134.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i137.i.i = getelementptr i8, ptr %eeprom, i32 %offset.0.i.i131.i.i
  br label %iwl_eeprom_query_addr.exit140.i.i

iwl_eeprom_query_addr.exit140.i.i:                ; preds = %if.end21.i138.i.i, %do.end.i136.i.i
  %retval.0.i139.i.i = phi ptr [ null, %do.end.i136.i.i ], [ %arrayidx.i137.i.i, %if.end21.i138.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %49)
  %cmp149.not.i.i = icmp ult i16 %49, 4
  br i1 %cmp149.not.i.i, label %iwl_eeprom_query_addr.exit140.i.i.if.end141.i_crit_edge, label %for.body.lr.ph.i.i

iwl_eeprom_query_addr.exit140.i.i.if.end141.i_crit_edge: ; preds = %iwl_eeprom_query_addr.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141.i

for.body.lr.ph.i.i:                               ; preds = %iwl_eeprom_query_addr.exit140.i.i
  %valid_tx_ant.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_channels.1.lcssa.i)
  %cmp36.i.i.i = icmp sgt i32 %n_channels.1.lcssa.i, 0
  %max_tx_pwr_half_dbm.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 23
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %div.i261.i, i32 1) #5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %idx.0150.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i262.i = getelementptr %struct.iwl_eeprom_enhanced_txpwr, ptr %retval.0.i139.i.i, i32 %idx.0150.i.i
  %54 = ptrtoint ptr %arrayidx.i262.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i262.i, align 1
  %conv4.i.i = zext i8 %55 to i32
  %and.i.i = and i32 %conv4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end8.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

do.end8.i.i:                                      ; preds = %for.body.i.i
  %channel.i.i = getelementptr %struct.iwl_eeprom_enhanced_txpwr, ptr %retval.0.i139.i.i, i32 %idx.0150.i.i, i32 1
  %56 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %channel.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool10.not.i.i = icmp eq i8 %57, 0
  %and13.i.i = and i32 %conv4.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  %or.cond.i.i = select i1 %tobool10.not.i.i, i1 true, i1 %tobool14.not.i.i
  %cond.i.i = select i1 %tobool10.not.i.i, ptr @.str.18, ptr @.str.17
  %spec.select.i.i = select i1 %or.cond.i.i, ptr %cond.i.i, ptr @.str.16
  %conv20.i.i = zext i8 %57 to i32
  %and28.i.i = and i32 %conv4.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  %cond30.i.i = select i1 %tobool29.not.i.i, ptr @.str.8, ptr @.str.19
  %and33.i.i = and i32 %conv4.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  %cond35.i.i = select i1 %tobool34.not.i.i, ptr @.str.8, ptr @.str.20
  %and38.i.i = and i32 %conv4.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  %cond40.i.i = select i1 %tobool39.not.i.i, ptr @.str.8, ptr @.str.21
  %and43.i.i = and i32 %conv4.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  %cond45.i.i = select i1 %tobool44.not.i.i, ptr @.str.8, ptr @.str.22
  %and48.i.i = and i32 %conv4.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  %cond50.i.i = select i1 %tobool49.not.i.i, ptr @.str.8, ptr @.str.23
  %and53.i.i = and i32 %conv4.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  %cond55.i.i = select i1 %tobool54.not.i.i, ptr @.str.8, ptr @.str.24
  %cond60.i.i = select i1 %tobool14.not.i.i, ptr @.str.8, ptr @.str.25
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_eeprom_enhanced_txpower, ptr noundef nonnull @.str.15, ptr noundef nonnull %spec.select.i.i, i32 noundef %conv20.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond30.i.i, ptr noundef nonnull %cond35.i.i, ptr noundef nonnull %cond40.i.i, ptr noundef nonnull %cond45.i.i, ptr noundef nonnull %cond50.i.i, ptr noundef nonnull %cond55.i.i, ptr noundef nonnull %cond60.i.i, i32 noundef %conv4.i.i) #5
  %chain_a_max.i.i = getelementptr %struct.iwl_eeprom_enhanced_txpwr, ptr %retval.0.i139.i.i, i32 %idx.0150.i.i, i32 2
  %58 = ptrtoint ptr %chain_a_max.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %chain_a_max.i.i, align 1
  %conv69.i.i = sext i8 %59 to i32
  %chain_b_max.i.i = getelementptr %struct.iwl_eeprom_enhanced_txpwr, ptr %retval.0.i139.i.i, i32 %idx.0150.i.i, i32 3
  %60 = ptrtoint ptr %chain_b_max.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %chain_b_max.i.i, align 1
  %conv70.i.i = sext i8 %61 to i32
  %chain_c_max.i.i = getelementptr %struct.iwl_eeprom_enhanced_txpwr, ptr %retval.0.i139.i.i, i32 %idx.0150.i.i, i32 4
  %62 = ptrtoint ptr %chain_c_max.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %chain_c_max.i.i, align 1
  %conv71.i.i = sext i8 %63 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_eeprom_enhanced_txpower, ptr noundef nonnull @.str.26, i32 noundef %conv69.i.i, i32 noundef %conv70.i.i, i32 noundef %conv71.i.i) #5
  %mimo2_max.i.i = getelementptr %struct.iwl_eeprom_enhanced_txpwr, ptr %retval.0.i139.i.i, i32 %idx.0150.i.i, i32 6
  %64 = ptrtoint ptr %mimo2_max.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mimo2_max.i.i, align 1
  %conv78.i.i = sext i8 %65 to i32
  %mimo3_max.i.i = getelementptr %struct.iwl_eeprom_enhanced_txpwr, ptr %retval.0.i139.i.i, i32 %idx.0150.i.i, i32 7
  %66 = ptrtoint ptr %mimo3_max.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mimo3_max.i.i, align 1
  %conv79.i.i = sext i8 %67 to i32
  %delta_20_in_40.i.i = getelementptr %struct.iwl_eeprom_enhanced_txpwr, ptr %retval.0.i139.i.i, i32 %idx.0150.i.i, i32 5
  %68 = ptrtoint ptr %delta_20_in_40.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %delta_20_in_40.i.i, align 1
  %conv80.i.i = zext i8 %69 to i32
  %70 = lshr i32 %conv80.i.i, 4
  %and84.i.i = and i32 %conv80.i.i, 15
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_eeprom_enhanced_txpower, ptr noundef nonnull @.str.27, i32 noundef %conv78.i.i, i32 noundef %conv79.i.i, i32 noundef %70, i32 noundef %and84.i.i) #5
  %71 = ptrtoint ptr %valid_tx_ant.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %valid_tx_ant.i.i.i, align 1
  %73 = and i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i.i.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i.i.i, label %do.end8.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end8.i.i.if.end.i.i.i_crit_edge:               ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %chain_a_max.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %chain_a_max.i.i, align 1
  %76 = tail call i8 @llvm.smax.i8(i8 %75, i8 0) #5
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i, %do.end8.i.i.if.end.i.i.i_crit_edge
  %result.0.i.i.i = phi i8 [ 0, %do.end8.i.i.if.end.i.i.i_crit_edge ], [ %76, %land.lhs.true.i.i.i ]
  %77 = and i8 %72, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool8.not.i.i.i = icmp eq i8 %77, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i.i.i.if.end16.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

if.end.i.i.i.if.end16.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %chain_b_max.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %chain_b_max.i.i, align 1
  %80 = tail call i8 @llvm.smax.i8(i8 %79, i8 %result.0.i.i.i) #5
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %land.lhs.true9.i.i.i, %if.end.i.i.i.if.end16.i.i.i_crit_edge
  %result.1.i.i.i = phi i8 [ %result.0.i.i.i, %if.end.i.i.i.if.end16.i.i.i_crit_edge ], [ %80, %land.lhs.true9.i.i.i ]
  %81 = and i8 %72, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool20.not.i.i.i = icmp eq i8 %81, 0
  br i1 %tobool20.not.i.i.i, label %if.end16.i.i.i.if.end28.i.i.i_crit_edge, label %land.lhs.true21.i.i.i

if.end16.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i.i.i

land.lhs.true21.i.i.i:                            ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %chain_c_max.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %chain_c_max.i.i, align 1
  %84 = tail call i8 @llvm.smax.i8(i8 %83, i8 %result.1.i.i.i) #5
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %land.lhs.true21.i.i.i, %if.end16.i.i.i.if.end28.i.i.i_crit_edge
  %result.2.i.i.i = phi i8 [ %result.1.i.i.i, %if.end16.i.i.i.if.end28.i.i.i_crit_edge ], [ %84, %land.lhs.true21.i.i.i ]
  %85 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %72, label %if.end28.i.i.i.iwl_get_max_txpwr_half_dbm.exit.i.i_crit_edge [
    i8 3, label %if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge
    i8 6, label %if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge108
    i8 5, label %if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge109
    i8 7, label %land.lhs.true54.i.i.i
  ]

if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge109: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.sink.split.i.i.i

if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge108: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.sink.split.i.i.i

if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.sink.split.i.i.i

if.end28.i.i.i.iwl_get_max_txpwr_half_dbm.exit.i.i_crit_edge: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_get_max_txpwr_half_dbm.exit.i.i

land.lhs.true54.i.i.i:                            ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.sink.split.i.i.i

if.end61.sink.split.i.i.i:                        ; preds = %land.lhs.true54.i.i.i, %if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge, %if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge108, %if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge109
  %mimo2_max.sink.i.i.i = phi ptr [ %mimo3_max.i.i, %land.lhs.true54.i.i.i ], [ %mimo2_max.i.i, %if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge ], [ %mimo2_max.i.i, %if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge108 ], [ %mimo2_max.i.i, %if.end28.i.i.i.if.end61.sink.split.i.i.i_crit_edge109 ]
  %86 = ptrtoint ptr %mimo2_max.sink.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %mimo2_max.sink.i.i.i, align 1
  %88 = tail call i8 @llvm.smax.i8(i8 %87, i8 %result.2.i.i.i) #5
  br label %iwl_get_max_txpwr_half_dbm.exit.i.i

iwl_get_max_txpwr_half_dbm.exit.i.i:              ; preds = %if.end61.sink.split.i.i.i, %if.end28.i.i.i.iwl_get_max_txpwr_half_dbm.exit.i.i_crit_edge
  %result.4.i.i.i = phi i8 [ %result.2.i.i.i, %if.end28.i.i.i.iwl_get_max_txpwr_half_dbm.exit.i.i_crit_edge ], [ %88, %if.end61.sink.split.i.i.i ]
  %89 = ptrtoint ptr %arrayidx.i262.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i262.i, align 1
  %91 = lshr i8 %90, 1
  %.lobit.i.i.i = and i8 %91, 1
  %92 = zext i8 %.lobit.i.i.i to i32
  br i1 %cmp36.i.i.i, label %for.body.lr.ph.i.i.i, label %iwl_get_max_txpwr_half_dbm.exit.i.i.iwl_eeprom_enh_txp_read_element.exit.i.i_crit_edge

iwl_get_max_txpwr_half_dbm.exit.i.i.iwl_eeprom_enh_txp_read_element.exit.i.i_crit_edge: ; preds = %iwl_get_max_txpwr_half_dbm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_eeprom_enh_txp_read_element.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %iwl_get_max_txpwr_half_dbm.exit.i.i
  %sub.i263.i = add nuw i8 %result.4.i.i.i, 1
  %div89145146148.i.i = lshr i8 %sub.i263.i, 1
  %conv15.i147.i.i = zext i8 %div89145146148.i.i to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cleanup.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %ch_idx.037.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i141.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %ch_idx.037.i.i.i
  %93 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %channel.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp3.not.i.i.i = icmp eq i8 %94, 0
  br i1 %cmp3.not.i.i.i, label %for.body.i.i.i.if.end.i143.i.i_crit_edge, label %land.lhs.true.i142.i.i

for.body.i.i.i.if.end.i143.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i143.i.i

land.lhs.true.i142.i.i:                           ; preds = %for.body.i.i.i
  %hw_value.i.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %ch_idx.037.i.i.i, i32 3
  %95 = ptrtoint ptr %hw_value.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %hw_value.i.i.i, align 2
  %97 = zext i8 %94 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %97)
  %cmp8.not.i.i.i = icmp eq i16 %96, %97
  br i1 %cmp8.not.i.i.i, label %land.lhs.true.i142.i.i.if.end.i143.i.i_crit_edge, label %land.lhs.true.i142.i.i.cleanup.i.i.i_crit_edge

land.lhs.true.i142.i.i.cleanup.i.i.i_crit_edge:   ; preds = %land.lhs.true.i142.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i.i

land.lhs.true.i142.i.i.if.end.i143.i.i_crit_edge: ; preds = %land.lhs.true.i142.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i143.i.i

if.end.i143.i.i:                                  ; preds = %land.lhs.true.i142.i.i.if.end.i143.i.i_crit_edge, %for.body.i.i.i.if.end.i143.i.i_crit_edge
  %98 = ptrtoint ptr %arrayidx.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i141.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %92)
  %cmp11.not.i.i.i = icmp eq i32 %99, %92
  br i1 %cmp11.not.i.i.i, label %if.end14.i.i.i, label %if.end.i143.i.i.cleanup.i.i.i_crit_edge

if.end.i143.i.i.cleanup.i.i.i_crit_edge:          ; preds = %if.end.i143.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i.i

if.end14.i.i.i:                                   ; preds = %if.end.i143.i.i
  %max_power.i.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %ch_idx.037.i.i.i, i32 6
  %100 = ptrtoint ptr %max_power.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_power.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %conv15.i147.i.i)
  %cmp16.i.i.i = icmp slt i32 %101, %conv15.i147.i.i
  br i1 %cmp16.i.i.i, label %land.lhs.true18.i.i.i, label %if.end14.i.i.i.cleanup.i.i.i_crit_edge

if.end14.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i.i

land.lhs.true18.i.i.i:                            ; preds = %if.end14.i.i.i
  %102 = ptrtoint ptr %arrayidx.i262.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i262.i, align 1
  %104 = and i8 %103, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool22.not.i.i.i = icmp eq i8 %104, 0
  br i1 %tobool22.not.i.i.i, label %if.then23.i.i.i, label %land.lhs.true18.i.i.i.cleanup.i.i.i_crit_edge

land.lhs.true18.i.i.i.cleanup.i.i.i_crit_edge:    ; preds = %land.lhs.true18.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i.i

if.then23.i.i.i:                                  ; preds = %land.lhs.true18.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %max_power.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv15.i147.i.i, ptr %max_power.i.i.i, align 4
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then23.i.i.i, %land.lhs.true18.i.i.i.cleanup.i.i.i_crit_edge, %if.end14.i.i.i.cleanup.i.i.i_crit_edge, %if.end.i143.i.i.cleanup.i.i.i_crit_edge, %land.lhs.true.i142.i.i.cleanup.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %ch_idx.037.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %n_channels.1.lcssa.i
  br i1 %exitcond.not.i.i.i, label %cleanup.i.i.i.iwl_eeprom_enh_txp_read_element.exit.i.i_crit_edge, label %cleanup.i.i.i.for.body.i.i.i_crit_edge

cleanup.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

cleanup.i.i.i.iwl_eeprom_enh_txp_read_element.exit.i.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_eeprom_enh_txp_read_element.exit.i.i

iwl_eeprom_enh_txp_read_element.exit.i.i:         ; preds = %cleanup.i.i.i.iwl_eeprom_enh_txp_read_element.exit.i.i_crit_edge, %iwl_get_max_txpwr_half_dbm.exit.i.i.iwl_eeprom_enh_txp_read_element.exit.i.i_crit_edge
  %106 = ptrtoint ptr %max_tx_pwr_half_dbm.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %max_tx_pwr_half_dbm.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %result.4.i.i.i, i8 %107)
  %cmp93.i.i = icmp sgt i8 %result.4.i.i.i, %107
  br i1 %cmp93.i.i, label %if.then95.i.i, label %iwl_eeprom_enh_txp_read_element.exit.i.i.for.inc.i.i_crit_edge

iwl_eeprom_enh_txp_read_element.exit.i.i.for.inc.i.i_crit_edge: ; preds = %iwl_eeprom_enh_txp_read_element.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.then95.i.i:                                    ; preds = %iwl_eeprom_enh_txp_read_element.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %max_tx_pwr_half_dbm.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %result.4.i.i.i, ptr %max_tx_pwr_half_dbm.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then95.i.i, %iwl_eeprom_enh_txp_read_element.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %idx.0150.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %smax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end141.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.if.end141.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141.i

if.else.i:                                        ; preds = %for.end117.i
  %max_tx_pwr_half_dbm.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 23
  %109 = ptrtoint ptr %max_tx_pwr_half_dbm.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -128, ptr %max_tx_pwr_half_dbm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_channels.1.lcssa.i)
  %cmp121296.i = icmp sgt i32 %n_channels.1.lcssa.i, 0
  br i1 %cmp121296.i, label %if.else.i.for.body123.i_crit_edge, label %if.else.i.if.end141.i_crit_edge

if.else.i.if.end141.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141.i

if.else.i.for.body123.i_crit_edge:                ; preds = %if.else.i
  br label %for.body123.i

for.body123.i:                                    ; preds = %for.body123.i.for.body123.i_crit_edge, %if.else.i.for.body123.i_crit_edge
  %i.0297.i = phi i32 [ %inc139.i, %for.body123.i.for.body123.i_crit_edge ], [ 0, %if.else.i.for.body123.i_crit_edge ]
  %110 = ptrtoint ptr %max_tx_pwr_half_dbm.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %max_tx_pwr_half_dbm.i, align 4
  %max_power127.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %i.0297.i, i32 6
  %112 = ptrtoint ptr %max_power127.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %max_power127.i, align 4
  %.tr.i = trunc i32 %113 to i8
  %conv128.i = shl i8 %.tr.i, 1
  %114 = tail call i8 @llvm.smax.i8(i8 %111, i8 %conv128.i) #5
  %115 = ptrtoint ptr %max_tx_pwr_half_dbm.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %max_tx_pwr_half_dbm.i, align 4
  %inc139.i = add nuw nsw i32 %i.0297.i, 1
  %exitcond303.not.i = icmp eq i32 %inc139.i, %n_channels.1.lcssa.i
  br i1 %exitcond303.not.i, label %for.body123.i.if.end141.i_crit_edge, label %for.body123.i.for.body123.i_crit_edge

for.body123.i.for.body123.i_crit_edge:            ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body123.i

for.body123.i.if.end141.i_crit_edge:              ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141.i

if.end141.i:                                      ; preds = %for.body123.i.if.end141.i_crit_edge, %if.else.i.if.end141.i_crit_edge, %for.inc.i.i.if.end141.i_crit_edge, %iwl_eeprom_query_addr.exit140.i.i.if.end141.i_crit_edge
  %116 = ptrtoint ptr %eeprom_params.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %eeprom_params.i.i, align 4
  %arrayidx143.i = getelementptr [7 x i8], ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx143.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp145.i = icmp eq i8 %119, 0
  br i1 %cmp145.i, label %land.lhs.true.i, label %if.end141.i.for.body165.preheader.i_crit_edge

if.end141.i.for.body165.preheader.i_crit_edge:    ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body165.preheader.i

land.lhs.true.i:                                  ; preds = %if.end141.i
  %arrayidx149.i = getelementptr [7 x i8], ptr %117, i32 0, i32 6
  %120 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx149.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp151.i = icmp eq i8 %121, 0
  br i1 %cmp151.i, label %land.lhs.true.i.iwl_init_channel_map.exit_crit_edge, label %land.lhs.true.i.for.body165.preheader.i_crit_edge

land.lhs.true.i.for.body165.preheader.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body165.preheader.i

land.lhs.true.i.iwl_init_channel_map.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_init_channel_map.exit

for.body165.preheader.i:                          ; preds = %land.lhs.true.i.for.body165.preheader.i_crit_edge, %if.end141.i.for.body165.preheader.i_crit_edge
  %conv.i267.i = zext i8 %119 to i32
  %or.i268.i = or i32 %conv.i267.i, 1245184
  %call.i269.i = tail call fastcc ptr @iwl_eeprom_query_addr(ptr noundef %eeprom, i32 noundef %eeprom_size, i32 noundef %or.i268.i) #5
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 1, ptr noundef %call.i269.i, i8 noundef zeroext 16) #5
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 5, ptr noundef %call.i269.i, i8 noundef zeroext 32) #5
  %arrayidx168.i.1 = getelementptr %struct.iwl_eeprom_channel, ptr %call.i269.i, i32 1
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 2, ptr noundef %arrayidx168.i.1, i8 noundef zeroext 16) #5
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 6, ptr noundef %arrayidx168.i.1, i8 noundef zeroext 32) #5
  %arrayidx168.i.2 = getelementptr %struct.iwl_eeprom_channel, ptr %call.i269.i, i32 2
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 3, ptr noundef %arrayidx168.i.2, i8 noundef zeroext 16) #5
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 7, ptr noundef %arrayidx168.i.2, i8 noundef zeroext 32) #5
  %arrayidx168.i.3 = getelementptr %struct.iwl_eeprom_channel, ptr %call.i269.i, i32 3
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 4, ptr noundef %arrayidx168.i.3, i8 noundef zeroext 16) #5
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 8, ptr noundef %arrayidx168.i.3, i8 noundef zeroext 32) #5
  %arrayidx168.i.4 = getelementptr %struct.iwl_eeprom_channel, ptr %call.i269.i, i32 4
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 5, ptr noundef %arrayidx168.i.4, i8 noundef zeroext 16) #5
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 9, ptr noundef %arrayidx168.i.4, i8 noundef zeroext 32) #5
  %arrayidx168.i.5 = getelementptr %struct.iwl_eeprom_channel, ptr %call.i269.i, i32 5
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 6, ptr noundef %arrayidx168.i.5, i8 noundef zeroext 16) #5
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 10, ptr noundef %arrayidx168.i.5, i8 noundef zeroext 32) #5
  %arrayidx168.i.6 = getelementptr %struct.iwl_eeprom_channel, ptr %call.i269.i, i32 6
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 7, ptr noundef %arrayidx168.i.6, i8 noundef zeroext 16) #5
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 0, i16 noundef zeroext 11, ptr noundef %arrayidx168.i.6, i8 noundef zeroext 32) #5
  %122 = ptrtoint ptr %eeprom_params.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %eeprom_params.i.i, align 4
  %arrayidx.i266.1.i = getelementptr [7 x i8], ptr %123, i32 0, i32 6
  %124 = ptrtoint ptr %arrayidx.i266.1.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i266.1.i, align 1
  %conv.i267.1.i = zext i8 %125 to i32
  %or.i268.1.i = or i32 %conv.i267.1.i, 1245184
  %call.i269.1.i = tail call fastcc ptr @iwl_eeprom_query_addr(ptr noundef %eeprom, i32 noundef %eeprom_size, i32 noundef %or.i268.1.i) #5
  br label %for.body165.1.i

for.body165.1.i:                                  ; preds = %for.body165.1.i.for.body165.1.i_crit_edge, %for.body165.preheader.i
  %ch_idx.1299.1.i = phi i32 [ %inc174.1.i, %for.body165.1.i.for.body165.1.i_crit_edge ], [ 0, %for.body165.preheader.i ]
  %arrayidx166.1.i = getelementptr i8, ptr @iwl_eeprom_band_7, i32 %ch_idx.1299.1.i
  %126 = ptrtoint ptr %arrayidx166.1.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx166.1.i, align 1
  %conv167.1.i = zext i8 %127 to i16
  %arrayidx168.1.i = getelementptr %struct.iwl_eeprom_channel, ptr %call.i269.1.i, i32 %ch_idx.1299.1.i
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 1, i16 noundef zeroext %conv167.1.i, ptr noundef %arrayidx168.1.i, i8 noundef zeroext 16) #5
  %add.1.i = add nuw nsw i16 %conv167.1.i, 4
  tail call fastcc void @iwl_mod_ht40_chan_info(ptr noundef %1, ptr noundef %data, i32 noundef %n_channels.1.lcssa.i, i32 noundef 1, i16 noundef zeroext %add.1.i, ptr noundef %arrayidx168.1.i, i8 noundef zeroext 32) #5
  %inc174.1.i = add nuw nsw i32 %ch_idx.1299.1.i, 1
  %exitcond305.1.not.i = icmp eq i32 %inc174.1.i, 11
  br i1 %exitcond305.1.not.i, label %for.body165.1.i.iwl_init_channel_map.exit_crit_edge, label %for.body165.1.i.for.body165.1.i_crit_edge

for.body165.1.i.for.body165.1.i_crit_edge:        ; preds = %for.body165.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body165.1.i

for.body165.1.i.iwl_init_channel_map.exit_crit_edge: ; preds = %for.body165.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_init_channel_map.exit

iwl_init_channel_map.exit:                        ; preds = %for.body165.1.i.iwl_init_channel_map.exit_crit_edge, %land.lhs.true.i.iwl_init_channel_map.exit_crit_edge
  %bands = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26
  %band = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 0, i32 2
  %128 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %band, align 4
  %bitrates = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 0, i32 1
  %129 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @iwl_cfg80211_rates, ptr %bitrates, align 4
  %n_bitrates = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 0, i32 4
  %130 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 12, ptr %n_bitrates, align 4
  %channels.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_channels.1.lcssa.i)
  %cmp34.i = icmp sgt i32 %n_channels.1.lcssa.i, 0
  br i1 %cmp34.i, label %iwl_init_channel_map.exit.land.rhs.i_crit_edge, label %iwl_init_channel_map.exit.while.end.i_crit_edge

iwl_init_channel_map.exit.while.end.i_crit_edge:  ; preds = %iwl_init_channel_map.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

iwl_init_channel_map.exit.land.rhs.i_crit_edge:   ; preds = %iwl_init_channel_map.exit
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %iwl_init_channel_map.exit.land.rhs.i_crit_edge
  %idx.036.i = phi i32 [ %inc.i44, %while.body.i.land.rhs.i_crit_edge ], [ 0, %iwl_init_channel_map.exit.land.rhs.i_crit_edge ]
  %chan.035.i = phi ptr [ %arrayidx4.i, %while.body.i.land.rhs.i_crit_edge ], [ %channels.i, %iwl_init_channel_map.exit.land.rhs.i_crit_edge ]
  %131 = ptrtoint ptr %chan.035.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %chan.035.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp2.not.i = icmp eq i32 %132, 0
  br i1 %cmp2.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i44 = add nuw nsw i32 %idx.036.i, 1
  %arrayidx4.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %inc.i44
  %exitcond.not.i45 = icmp eq i32 %inc.i44, %n_channels.1.lcssa.i
  br i1 %exitcond.not.i45, label %while.end.thread.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.end.thread.i:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx649.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.1.lcssa.i
  %133 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx649.i, ptr %bands, align 4
  br label %iwl_init_sband_channels.exit

while.end.i:                                      ; preds = %land.rhs.i.while.end.i_crit_edge, %iwl_init_channel_map.exit.while.end.i_crit_edge
  %chan.0.lcssa.i = phi ptr [ %channels.i, %iwl_init_channel_map.exit.while.end.i_crit_edge ], [ %chan.035.i, %land.rhs.i.while.end.i_crit_edge ]
  %idx.0.lcssa.i = phi i32 [ 0, %iwl_init_channel_map.exit.while.end.i_crit_edge ], [ %idx.036.i, %land.rhs.i.while.end.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %idx.0.lcssa.i
  %134 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %arrayidx6.i, ptr %bands, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n_channels.1.lcssa.i, i32 %idx.0.lcssa.i)
  %cmp940.i = icmp sgt i32 %n_channels.1.lcssa.i, %idx.0.lcssa.i
  br i1 %cmp940.i, label %land.rhs10.preheader.i, label %while.end.i.iwl_init_sband_channels.exit_crit_edge

while.end.i.iwl_init_sband_channels.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_init_sband_channels.exit

land.rhs10.preheader.i:                           ; preds = %while.end.i
  %135 = sub i32 %n_channels.1.lcssa.i, %idx.0.lcssa.i
  br label %land.rhs10.i

land.rhs10.i:                                     ; preds = %while.body14.i.land.rhs10.i_crit_edge, %land.rhs10.preheader.i
  %idx.143.i = phi i32 [ %inc16.i, %while.body14.i.land.rhs10.i_crit_edge ], [ %idx.0.lcssa.i, %land.rhs10.preheader.i ]
  %n.042.i = phi i32 [ %inc18.i, %while.body14.i.land.rhs10.i_crit_edge ], [ 0, %land.rhs10.preheader.i ]
  %chan.141.i = phi ptr [ %arrayidx17.i, %while.body14.i.land.rhs10.i_crit_edge ], [ %chan.0.lcssa.i, %land.rhs10.preheader.i ]
  %136 = ptrtoint ptr %chan.141.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %chan.141.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp12.i = icmp eq i32 %137, 0
  br i1 %cmp12.i, label %while.body14.i, label %land.rhs10.i.iwl_init_sband_channels.exit_crit_edge

land.rhs10.i.iwl_init_sband_channels.exit_crit_edge: ; preds = %land.rhs10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_init_sband_channels.exit

while.body14.i:                                   ; preds = %land.rhs10.i
  %inc16.i = add nuw nsw i32 %idx.143.i, 1
  %arrayidx17.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %inc16.i
  %inc18.i = add nuw i32 %n.042.i, 1
  %exitcond46.not.i = icmp eq i32 %inc18.i, %135
  br i1 %exitcond46.not.i, label %while.body14.i.iwl_init_sband_channels.exit_crit_edge, label %while.body14.i.land.rhs10.i_crit_edge

while.body14.i.land.rhs10.i_crit_edge:            ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs10.i

while.body14.i.iwl_init_sband_channels.exit_crit_edge: ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_init_sband_channels.exit

iwl_init_sband_channels.exit:                     ; preds = %while.body14.i.iwl_init_sband_channels.exit_crit_edge, %land.rhs10.i.iwl_init_sband_channels.exit_crit_edge, %while.end.i.iwl_init_sband_channels.exit_crit_edge, %while.end.thread.i
  %n.0.lcssa.i = phi i32 [ 0, %while.end.i.iwl_init_sband_channels.exit_crit_edge ], [ 0, %while.end.thread.i ], [ %n.042.i, %land.rhs10.i.iwl_init_sband_channels.exit_crit_edge ], [ %135, %while.body14.i.iwl_init_sband_channels.exit_crit_edge ]
  %n_channels20.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 0, i32 3
  %138 = ptrtoint ptr %n_channels20.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %n.0.lcssa.i, ptr %n_channels20.i, align 4
  %ht_cap = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 0, i32 5
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 20
  %139 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %valid_tx_ant, align 1
  %valid_rx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 21
  %141 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %valid_rx_ant, align 2
  tail call void @iwl_init_ht_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef %ht_cap, i32 noundef 0, i8 noundef zeroext %140, i8 noundef zeroext %142)
  %arrayidx4 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1
  %band5 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 2
  %143 = ptrtoint ptr %band5 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %band5, align 4
  %bitrates6 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 1
  %144 = ptrtoint ptr %bitrates6 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @iwl_cfg80211_rates, i32 0, i32 4), ptr %bitrates6, align 4
  %n_bitrates7 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 4
  %145 = ptrtoint ptr %n_bitrates7 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 8, ptr %n_bitrates7, align 4
  br i1 %cmp34.i, label %iwl_init_sband_channels.exit.land.rhs.i51_crit_edge, label %iwl_init_sband_channels.exit.while.end.i62_crit_edge

iwl_init_sband_channels.exit.while.end.i62_crit_edge: ; preds = %iwl_init_sband_channels.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i62

iwl_init_sband_channels.exit.land.rhs.i51_crit_edge: ; preds = %iwl_init_sband_channels.exit
  br label %land.rhs.i51

land.rhs.i51:                                     ; preds = %while.body.i55.land.rhs.i51_crit_edge, %iwl_init_sband_channels.exit.land.rhs.i51_crit_edge
  %idx.036.i48 = phi i32 [ %inc.i52, %while.body.i55.land.rhs.i51_crit_edge ], [ 0, %iwl_init_sband_channels.exit.land.rhs.i51_crit_edge ]
  %chan.035.i49 = phi ptr [ %arrayidx4.i53, %while.body.i55.land.rhs.i51_crit_edge ], [ %channels.i, %iwl_init_sband_channels.exit.land.rhs.i51_crit_edge ]
  %146 = ptrtoint ptr %chan.035.i49 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %chan.035.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp2.not.i50 = icmp eq i32 %147, 1
  br i1 %cmp2.not.i50, label %land.rhs.i51.while.end.i62_crit_edge, label %while.body.i55

land.rhs.i51.while.end.i62_crit_edge:             ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i62

while.body.i55:                                   ; preds = %land.rhs.i51
  %inc.i52 = add nuw nsw i32 %idx.036.i48, 1
  %arrayidx4.i53 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %inc.i52
  %exitcond.not.i54 = icmp eq i32 %inc.i52, %n_channels.1.lcssa.i
  br i1 %exitcond.not.i54, label %while.end.thread.i57, label %while.body.i55.land.rhs.i51_crit_edge

while.body.i55.land.rhs.i51_crit_edge:            ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i51

while.end.thread.i57:                             ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx649.i56 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.1.lcssa.i
  %148 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %arrayidx649.i56, ptr %arrayidx4, align 4
  br label %iwl_init_sband_channels.exit76

while.end.i62:                                    ; preds = %land.rhs.i51.while.end.i62_crit_edge, %iwl_init_sband_channels.exit.while.end.i62_crit_edge
  %chan.0.lcssa.i58 = phi ptr [ %channels.i, %iwl_init_sband_channels.exit.while.end.i62_crit_edge ], [ %chan.035.i49, %land.rhs.i51.while.end.i62_crit_edge ]
  %idx.0.lcssa.i59 = phi i32 [ 0, %iwl_init_sband_channels.exit.while.end.i62_crit_edge ], [ %idx.036.i48, %land.rhs.i51.while.end.i62_crit_edge ]
  %arrayidx6.i60 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %idx.0.lcssa.i59
  %149 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %arrayidx6.i60, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n_channels.1.lcssa.i, i32 %idx.0.lcssa.i59)
  %cmp940.i61 = icmp sgt i32 %n_channels.1.lcssa.i, %idx.0.lcssa.i59
  br i1 %cmp940.i61, label %land.rhs10.preheader.i63, label %while.end.i62.iwl_init_sband_channels.exit76_crit_edge

while.end.i62.iwl_init_sband_channels.exit76_crit_edge: ; preds = %while.end.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_init_sband_channels.exit76

land.rhs10.preheader.i63:                         ; preds = %while.end.i62
  %150 = sub i32 %n_channels.1.lcssa.i, %idx.0.lcssa.i59
  br label %land.rhs10.i68

land.rhs10.i68:                                   ; preds = %while.body14.i73.land.rhs10.i68_crit_edge, %land.rhs10.preheader.i63
  %idx.143.i64 = phi i32 [ %inc16.i69, %while.body14.i73.land.rhs10.i68_crit_edge ], [ %idx.0.lcssa.i59, %land.rhs10.preheader.i63 ]
  %n.042.i65 = phi i32 [ %inc18.i71, %while.body14.i73.land.rhs10.i68_crit_edge ], [ 0, %land.rhs10.preheader.i63 ]
  %chan.141.i66 = phi ptr [ %arrayidx17.i70, %while.body14.i73.land.rhs10.i68_crit_edge ], [ %chan.0.lcssa.i58, %land.rhs10.preheader.i63 ]
  %151 = ptrtoint ptr %chan.141.i66 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %chan.141.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp12.i67 = icmp eq i32 %152, 1
  br i1 %cmp12.i67, label %while.body14.i73, label %land.rhs10.i68.iwl_init_sband_channels.exit76_crit_edge

land.rhs10.i68.iwl_init_sband_channels.exit76_crit_edge: ; preds = %land.rhs10.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_init_sband_channels.exit76

while.body14.i73:                                 ; preds = %land.rhs10.i68
  %inc16.i69 = add nuw nsw i32 %idx.143.i64, 1
  %arrayidx17.i70 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %inc16.i69
  %inc18.i71 = add nuw i32 %n.042.i65, 1
  %exitcond46.not.i72 = icmp eq i32 %inc18.i71, %150
  br i1 %exitcond46.not.i72, label %while.body14.i73.iwl_init_sband_channels.exit76_crit_edge, label %while.body14.i73.land.rhs10.i68_crit_edge

while.body14.i73.land.rhs10.i68_crit_edge:        ; preds = %while.body14.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs10.i68

while.body14.i73.iwl_init_sband_channels.exit76_crit_edge: ; preds = %while.body14.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_init_sband_channels.exit76

iwl_init_sband_channels.exit76:                   ; preds = %while.body14.i73.iwl_init_sband_channels.exit76_crit_edge, %land.rhs10.i68.iwl_init_sband_channels.exit76_crit_edge, %while.end.i62.iwl_init_sband_channels.exit76_crit_edge, %while.end.thread.i57
  %n.0.lcssa.i74 = phi i32 [ 0, %while.end.i62.iwl_init_sband_channels.exit76_crit_edge ], [ 0, %while.end.thread.i57 ], [ %n.042.i65, %land.rhs10.i68.iwl_init_sband_channels.exit76_crit_edge ], [ %150, %while.body14.i73.iwl_init_sband_channels.exit76_crit_edge ]
  %n_channels20.i75 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 3
  %153 = ptrtoint ptr %n_channels20.i75 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %n.0.lcssa.i74, ptr %n_channels20.i75, align 4
  %add9 = add i32 %n.0.lcssa.i74, %n.0.lcssa.i
  %ht_cap10 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 5
  %154 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %valid_tx_ant, align 1
  %156 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %valid_rx_ant, align 2
  tail call void @iwl_init_ht_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef %ht_cap10, i32 noundef 1, i8 noundef zeroext %155, i8 noundef zeroext %157)
  call void @__sanitizer_cov_trace_cmp4(i32 %n_channels.1.lcssa.i, i32 %add9)
  %cmp.not = icmp eq i32 %n_channels.1.lcssa.i, %add9
  br i1 %cmp.not, label %iwl_init_sband_channels.exit76.if.end_crit_edge, label %do.end

iwl_init_sband_channels.exit76.if.end_crit_edge:  ; preds = %iwl_init_sband_channels.exit76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %iwl_init_sband_channels.exit76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %add9, i32 noundef %n_channels.1.lcssa.i) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %iwl_init_sband_channels.exit76.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mod_ht40_chan_info(ptr noundef %dev, ptr noundef %data, i32 noundef %n_channels, i32 noundef %band, i16 noundef zeroext %channel, ptr nocapture noundef readonly %eeprom_ch, i8 noundef zeroext %clear_ht40_extension_channel) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_channels)
  %cmp86 = icmp sgt i32 %n_channels, 0
  br i1 %cmp86, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.087 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %i.087
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %band)
  %cmp2.not = icmp eq i32 %1, %band
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %hw_value = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %i.087, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %channel)
  %cmp6.not = icmp eq i16 %3, %channel
  br i1 %cmp6.not, label %for.end, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %n_channels
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %for.end
  %conv15 = zext i16 %channel to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp16 = icmp eq i32 %band, 1
  %cond = select i1 %cmp16, ptr @.str.4, ptr @.str.5
  %4 = ptrtoint ptr %eeprom_ch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eeprom_ch, align 1
  %conv18 = zext i8 %5 to i32
  %and = and i32 %conv18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.8, ptr @.str.9
  %and23 = and i32 %conv18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.8, ptr @.str.10
  %and28 = and i32 %conv18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond30 = select i1 %tobool29.not, ptr @.str.8, ptr @.str.11
  %and33 = and i32 %conv18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, ptr @.str.8, ptr @.str.12
  %and38 = and i32 %conv18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.8, ptr @.str.13
  %max_power_avg = getelementptr inbounds %struct.iwl_eeprom_channel, ptr %eeprom_ch, i32 0, i32 1
  %6 = ptrtoint ptr %max_power_avg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_power_avg, align 1
  %conv43 = sext i8 %7 to i32
  %phi.sel = select i1 %tobool29.not, ptr @.str.8, ptr @.str.14
  %spec.select = select i1 %tobool19.not, ptr @.str.14, ptr %phi.sel
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %dev, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mod_ht40_chan_info, ptr noundef nonnull @.str.28, i32 noundef %conv15, ptr noundef nonnull %cond, ptr noundef nonnull %cond20, ptr noundef nonnull %cond25, ptr noundef nonnull %cond30, ptr noundef nonnull %cond35, ptr noundef nonnull %cond40, i32 noundef %conv18, i32 noundef %conv43, ptr noundef nonnull %spec.select) #5
  %8 = ptrtoint ptr %eeprom_ch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %eeprom_ch, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool58.not = icmp eq i8 %10, 0
  br i1 %tobool58.not, label %do.end.cleanup_crit_edge, label %if.then59

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then59:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv60 = zext i8 %clear_ht40_extension_channel to i32
  %neg = xor i32 %conv60, -1
  %flags61 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %i.087, i32 4
  %11 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags61, align 4
  %and62 = and i32 %12, %neg
  store i32 %and62, ptr %flags61, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.end.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !52, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 743, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 866, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 785, i32 3}
!6 = !{ptr @__func__.iwl_init_channel_map, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 540, i32 5}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 573, i32 4}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.12, !12, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.13, !12, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.14, !12, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @iwl_eeprom_band_1, !22, !"iwl_eeprom_band_1", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 90, i32 17}
!23 = !{ptr @iwl_eeprom_band_2, !24, !"iwl_eeprom_band_2", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 94, i32 17}
!25 = !{ptr @iwl_eeprom_band_3, !26, !"iwl_eeprom_band_3", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 98, i32 17}
!27 = !{ptr @iwl_eeprom_band_4, !28, !"iwl_eeprom_band_4", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 102, i32 17}
!29 = !{ptr @iwl_eeprom_band_5, !30, !"iwl_eeprom_band_5", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 106, i32 17}
!31 = distinct !{null, !32, !"iwl_eeprom_band_6", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 110, i32 17}
!33 = !{ptr @iwl_eeprom_band_7, !34, !"iwl_eeprom_band_7", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 114, i32 17}
!35 = !{ptr @__func__.iwl_eeprom_enhanced_txpower, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 384, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !36, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 399, i32 3}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 403, i32 3}
!52 = !{ptr @__func__.iwl_mod_ht40_chan_info, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 491, i32 2}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @iwl_cfg80211_rates, !56, !"iwl_cfg80211_rates", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-eeprom-parse.c", i32 125, i32 30}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i8 0, i8 2}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{!"branch_weights", i32 1, i32 2000}
