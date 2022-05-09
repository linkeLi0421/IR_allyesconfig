; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon = type { ptr, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_mei_nvm = type { [6 x i8], i8, i8, i32, i32, i32, [110 x i32] }
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
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_regdomain = type { %struct.callback_head, i32, [3 x i8], i32, [0 x %struct.ieee80211_reg_rule] }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.anon.134 = type { i16, i16, [0 x i8] }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_nvm_get_info = type { i32 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_nvm_get_info_general = type { i32, i16, i8, i8 }

@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't parse empty Calib NVM sections\0A\00", [58 x i8] zeroinitializer }, align 32
@iwl_uhb_nvm_channels = internal constant { [110 x i16], [36 x i8] } { [110 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 76, i16 80, i16 84, i16 88, i16 92, i16 96, i16 100, i16 104, i16 108, i16 112, i16 116, i16 120, i16 124, i16 128, i16 132, i16 136, i16 140, i16 144, i16 149, i16 153, i16 157, i16 161, i16 165, i16 169, i16 173, i16 177, i16 181, i16 1, i16 5, i16 9, i16 13, i16 17, i16 21, i16 25, i16 29, i16 33, i16 37, i16 41, i16 45, i16 49, i16 53, i16 57, i16 61, i16 65, i16 69, i16 73, i16 77, i16 81, i16 85, i16 89, i16 93, i16 97, i16 101, i16 105, i16 109, i16 113, i16 117, i16 121, i16 125, i16 129, i16 133, i16 137, i16 141, i16 145, i16 149, i16 153, i16 157, i16 161, i16 165, i16 169, i16 173, i16 177, i16 181, i16 185, i16 189, i16 193, i16 197, i16 201, i16 205, i16 209, i16 213, i16 217, i16 221, i16 225, i16 229, i16 233], [36 x i8] zeroinitializer }, align 32
@iwl_ext_nvm_channels = internal constant { [51 x i16], [58 x i8] } { [51 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 76, i16 80, i16 84, i16 88, i16 92, i16 96, i16 100, i16 104, i16 108, i16 112, i16 116, i16 120, i16 124, i16 128, i16 132, i16 136, i16 140, i16 144, i16 149, i16 153, i16 157, i16 161, i16 165, i16 169, i16 173, i16 177, i16 181], [58 x i8] zeroinitializer }, align 32
@iwl_nvm_channels = internal constant { [39 x i16], [50 x i8] } { [39 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64, i16 100, i16 104, i16 108, i16 112, i16 116, i16 120, i16 124, i16 128, i16 132, i16 136, i16 140, i16 144, i16 149, i16 153, i16 157, i16 161, i16 165], [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_parse_nvm_mcc_info = private unnamed_addr constant [23 x i8] c"iwl_parse_nvm_mcc_info\00", align 1
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"building regdom for %d channels\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwl_read_external_nvm = private unnamed_addr constant [22 x i8] c"iwl_read_external_nvm\00", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Read from external NVM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ERROR: %s isn't available %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Loaded NVM file %s (%zu bytes)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NVM file too large\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NVM Version %08X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NVM Manufacturing date %08X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ERROR - NVM file too short for section header\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ERROR - section too large (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ERROR - section empty\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ERROR - NVM file too short for section (%d bytes)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid NVM section ID %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid payload len in NVM response from FW %d\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OTP is empty\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no valid mac address was found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"base HW address: %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Firmware declares no reserved mac addresses. OTP is empty: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iwl_set_hw_address_family_8000.reserved_mac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\CC\AA\FF\EE\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mac address from nvm override section is not valid\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mac address is not found\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_cfg80211_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 1, i16 1 }, %struct.ieee80211_rate { i32 1, i16 55, i16 2, i16 2 }, %struct.ieee80211_rate { i32 1, i16 110, i16 3, i16 3 }, %struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 4 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 5 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 6 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 7 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 8 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 9 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 10 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 11 }], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NVM: used only %d of %d channels\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.iwl_init_channel_map = private unnamed_addr constant [21 x i8] c"iwl_init_channel_map\00", align 1
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch. %d: %ddBm\0A\00", [17 x i8] zeroinitializer }, align 32
@iwl_he_capa = internal constant { [2 x <{ i16, <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, <{ i8, i8, i8, i8, [21 x i8] }> }>, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon }>], [56 x i8] } { [2 x <{ i16, <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, <{ i8, i8, i8, i8, [21 x i8] }> }>, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon }>] [<{ i16, <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, <{ i8, i8, i8, i8, [21 x i8] }> }>, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon }> <{ i16 4, <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, <{ i8, i8, i8, i8, [21 x i8] }> }> <{ i8 1, %struct.ieee80211_he_cap_elem { [6 x i8] c"\01x \82\C0\AB", [11 x i8] c"\0E?\0A\00\FD\00\8C\06\0F\F0\01" }, %struct.ieee80211_he_mcs_nss_supp { i16 -1281, i16 -1281, i16 -1281, i16 -1281, i16 -1, i16 -1 }, <{ i8, i8, i8, i8, [21 x i8] }> <{ i8 97, i8 28, i8 -57, i8 113, [21 x i8] zeroinitializer }> }>, %struct.ieee80211_he_6ghz_capa zeroinitializer, i8 undef, %struct.anon zeroinitializer }>, <{ i16, <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, <{ i8, i8, i8, i8, [21 x i8] }> }>, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon }> <{ i16 8, <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, <{ i8, i8, i8, i8, [21 x i8] }> }> <{ i8 1, %struct.ieee80211_he_cap_elem { [6 x i8] c"\01x\00\02\00\00", [11 x i8] c"\06 \0A\00\00\00\80\04\01\C0\00" }, %struct.ieee80211_he_mcs_nss_supp { i16 -1281, i16 -1281, i16 -1281, i16 -1281, i16 -1, i16 -1 }, <{ i8, i8, i8, i8, [21 x i8] }> <{ i8 97, i8 28, i8 -57, i8 113, [21 x i8] zeroinitializer }> }>, %struct.ieee80211_he_6ghz_capa zeroinitializer, i8 undef, %struct.anon zeroinitializer }>], [56 x i8] zeroinitializer }, align 32
@iwl_vendor_caps = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\DD\06\00\175\08\01\00", [24 x i8] zeroinitializer }, align 32
@__func__.iwl_init_he_6ghz_capa = private unnamed_addr constant [22 x i8] c"iwl_init_he_6ghz_capa\00", align 1
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"he_6ghz_capa=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RB size of 2K is not supported by this device\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_nvm_no_wide_in_5ghz = private unnamed_addr constant [24 x i8] c"iwl_nvm_no_wide_in_5ghz\00", align 1
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"disabling wide channels in 5GHz (0x%0x %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwl_nvm_print_channel_flags = private unnamed_addr constant [28 x i8] c"iwl_nvm_print_channel_flags\00", align 1
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ch. %d: 0x%x: No traffic\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Ch. %d: 0x%x:%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" VALID\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" IBSS\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" ACTIVE\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" RADAR\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" INDOOR_ONLY\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" GO_CONCURRENT\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" UNIFORM\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" 20MHZ\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" 40MHZ\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" 80MHZ\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" 160MHZ\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" DC_HIGH\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 5, i64 9]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 269, i64 272]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1233, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"iwl_uhb_nvm_channels\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 98, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"iwl_ext_nvm_channels\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 89, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"iwl_nvm_channels\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 80, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1387, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1393, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1563, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1579, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1584, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1588, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1607, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1608, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1624, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1648, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1655, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1661, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1668, i32 7 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1727, i32 6 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1738, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1750, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1755, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1761, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"reserved_mac\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1015, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1036, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1052, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"iwl_cfg80211_rates\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 122, i32 30 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 904, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 442, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [12 x i8] c"iwl_he_capa\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 549, i32 49 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"iwl_vendor_caps\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 538, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 731, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 500, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1109, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 271, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 277, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @.str, ptr @iwl_uhb_nvm_channels, ptr @iwl_ext_nvm_channels, ptr @iwl_nvm_channels, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @iwl_set_hw_address_family_8000.reserved_mac, ptr @.str.19, ptr @.str.20, ptr @iwl_cfg80211_rates, ptr @.str.21, ptr @.str.22, ptr @iwl_he_capa, ptr @iwl_vendor_caps, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_uhb_nvm_channels to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_ext_nvm_channels to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_nvm_channels to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_set_hw_address_family_8000.reserved_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_cfg80211_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_he_capa to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_vendor_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_parse_mei_nvm_data(ptr noundef %trans, ptr nocapture noundef readonly %cfg, ptr nocapture noundef readonly %mei_nvm, ptr noundef %fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %valid_rx_ant = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 16
  %0 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid_rx_ant, align 1
  %uhb_supported = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 21
  %2 = ptrtoint ptr %uhb_supported to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %uhb_supported, align 4
  %3 = and i24 %bf.load, 2
  %tobool.not = icmp eq i24 %3, 0
  %.89 = select i1 %tobool.not, i32 3728, i32 7032
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %.val = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %.val90 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %4 = select i1 %tobool.not, ptr %.val, ptr %.val90
  %call7.i.i86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef %.89) #11
  %tobool5.not = icmp eq ptr %call7.i.i86, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %nvm_version = getelementptr inbounds %struct.iwl_mei_nvm, ptr %mei_nvm, i32 0, i32 5
  %5 = ptrtoint ptr %nvm_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nvm_version, align 4
  %nvm_version8 = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 22
  %7 = ptrtoint ptr %nvm_version8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %nvm_version8, align 8
  %radio_cfg = getelementptr inbounds %struct.iwl_mei_nvm, ptr %mei_nvm, i32 0, i32 3
  %8 = ptrtoint ptr %radio_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %radio_cfg, align 4
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 9
  %10 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nvm_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = trunc i32 %9 to i16
  %13 = lshr i16 %12, 4
  %conv.i = and i16 %13, 3
  %14 = trunc i32 %9 to i8
  %15 = lshr i8 %14, 2
  %conv3.i = and i8 %15, 3
  %conv5.i = and i8 %14, 3
  %16 = lshr i8 %14, 6
  br label %iwl_set_radio_cfg.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %shr9.i = lshr i32 %9, 12
  %17 = trunc i32 %shr9.i to i16
  %conv11.i = and i16 %17, 4095
  %shr13.i = lshr i32 %9, 8
  %18 = trunc i32 %shr13.i to i8
  %conv15.i = and i8 %18, 15
  %19 = trunc i32 %9 to i8
  %20 = lshr i8 %19, 4
  %conv22.i = and i8 %19, 15
  %shr24.i = lshr i32 %9, 24
  %21 = trunc i32 %shr24.i to i8
  %conv26.i = and i8 %21, 15
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 20
  %22 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv26.i, ptr %valid_tx_ant.i, align 1
  %shr27.i = lshr i32 %9, 28
  %conv29.i = trunc i32 %shr27.i to i8
  %valid_rx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 21
  %23 = ptrtoint ptr %valid_rx_ant.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv29.i, ptr %valid_rx_ant.i, align 2
  br label %iwl_set_radio_cfg.exit

iwl_set_radio_cfg.exit:                           ; preds = %if.end.i, %if.then.i
  %conv.sink.i = phi i16 [ %conv11.i, %if.end.i ], [ %conv.i, %if.then.i ]
  %conv3.sink.i = phi i8 [ %conv15.i, %if.end.i ], [ %conv3.i, %if.then.i ]
  %conv5.sink.i = phi i8 [ %20, %if.end.i ], [ %conv5.i, %if.then.i ]
  %.sink.i = phi i8 [ %conv22.i, %if.end.i ], [ %16, %if.then.i ]
  %24 = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.sink.i, ptr %24, align 8
  %26 = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 17
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv3.sink.i, ptr %26, align 2
  %28 = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 18
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv5.sink.i, ptr %28, align 1
  %30 = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 19
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink.i, ptr %30, align 4
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 20
  %32 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %valid_tx_ant, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool9.not = icmp eq i8 %33, 0
  %and84 = select i1 %tobool9.not, i8 -1, i8 %33
  %spec.select = and i8 %and84, %1
  %valid_rx_ant15 = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 21
  %34 = ptrtoint ptr %valid_rx_ant15 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %valid_rx_ant15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not = icmp eq i8 %35, 0
  %and2183 = select i1 %tobool16.not, i8 -1, i8 %35
  %rx_chains.0 = and i8 %and2183, %1
  %sku_cap_mimo_disabled = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 15
  %36 = ptrtoint ptr %sku_cap_mimo_disabled to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %sku_cap_mimo_disabled, align 1
  %sku_cap_band_24ghz_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 8
  %37 = ptrtoint ptr %sku_cap_band_24ghz_enable to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %sku_cap_band_24ghz_enable, align 8
  %sku_cap_band_52ghz_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 9
  %38 = ptrtoint ptr %sku_cap_band_52ghz_enable to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %sku_cap_band_52ghz_enable, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1) to i32))
  %39 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1), align 4
  %sku_cap_11n_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 10
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  %43 = ptrtoint ptr %sku_cap_11n_enable to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %sku_cap_11n_enable, align 2
  %sku_cap_11ac_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 11
  %44 = ptrtoint ptr %sku_cap_11ac_enable to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %sku_cap_11ac_enable, align 1
  %caps = getelementptr inbounds %struct.iwl_mei_nvm, ptr %mei_nvm, i32 0, i32 4
  %45 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %caps, align 4
  %sku_cap_11ax_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 12
  %47 = trunc i32 %46 to i8
  %48 = lshr i8 %47, 1
  %49 = and i8 %48, 1
  %50 = ptrtoint ptr %sku_cap_11ax_enable to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %sku_cap_11ax_enable, align 4
  %lar_enabled = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i86, i32 0, i32 24
  %51 = and i8 %47, 1
  %52 = ptrtoint ptr %lar_enabled to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %lar_enabled, align 1
  %n_hw_addrs = getelementptr inbounds %struct.iwl_mei_nvm, ptr %mei_nvm, i32 0, i32 1
  %53 = ptrtoint ptr %n_hw_addrs to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %n_hw_addrs, align 2
  %conv33 = zext i8 %54 to i32
  %55 = ptrtoint ptr %call7.i.i86 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv33, ptr %call7.i.i86, align 8
  %call35 = tail call fastcc i32 @iwl_set_hw_address(ptr noundef %trans, ptr noundef %cfg, ptr noundef nonnull %call7.i.i86, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %iwl_set_radio_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i86) #8
  br label %cleanup

if.end38:                                         ; preds = %iwl_set_radio_cfg.exit
  %56 = ptrtoint ptr %lar_enabled to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %lar_enabled, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool40.not = icmp eq i8 %57, 0
  br i1 %tobool40.not, label %if.end38.if.end45_crit_edge, label %land.lhs.true

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 8
  %58 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %_capa.i, align 4
  %60 = lshr i32 %59, 1
  %.lobit = and i32 %60, 1
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true, %if.end38.if.end45_crit_edge
  %sbands_flags.0 = phi i32 [ 0, %if.end38.if.end45_crit_edge ], [ %.lobit, %land.lhs.true ]
  %channels = getelementptr inbounds %struct.iwl_mei_nvm, ptr %mei_nvm, i32 0, i32 6
  tail call fastcc void @iwl_init_sbands(ptr noundef %trans, ptr noundef nonnull %call7.i.i86, ptr noundef %channels, i8 noundef zeroext %spec.select, i8 noundef zeroext %rx_chains.0, i32 noundef %sbands_flags.0, i1 noundef zeroext true, ptr noundef %fw)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then37, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then37 ], [ %call7.i.i86, %if.end45 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_set_hw_address(ptr noundef %trans, ptr nocapture noundef readonly %cfg, ptr noundef %data, ptr noundef readonly %nvm_hw, ptr noundef readonly %mac_override) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr_from_csr = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 21
  %0 = ptrtoint ptr %mac_addr_from_csr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 3)
  %bf.load = load i24, ptr %mac_addr_from_csr, align 4
  %1 = and i24 %bf.load, 261888
  %tobool.not = icmp eq i24 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iwl_set_hw_address_from_csr(ptr noundef %trans, ptr noundef %data)
  br label %if.end20

if.else:                                          ; preds = %entry
  %nvm_type = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 9
  %2 = ptrtoint ptr %nvm_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvm_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.else19, label %if.then1

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i16, ptr %nvm_hw, i32 21
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %hw_addr2 = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %hw_addr2, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %arrayidx6 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %add.ptr, i32 3
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr i16, ptr %nvm_hw, i32 22
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %add.ptr, i32 5
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i16, ptr %nvm_hw, i32 23
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx18, align 1
  br label %if.end20

if.else19:                                        ; preds = %if.else
  %tobool.not.i = icmp eq ptr %mac_override, null
  br i1 %tobool.not.i, label %if.else19.if.end9.i_crit_edge, label %if.then.i

if.else19.if.end9.i_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %if.else19
  %add.ptr.i = getelementptr i16, ptr %mac_override, i32 1
  %hw_addr1.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %hw_addr1.i, ptr %add.ptr.i, i32 6)
  %23 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_addr1.i, align 4
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

is_valid_ether_addr.exit.i:                       ; preds = %if.then.i
  %add.ptr.i.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %27 to i32
  %or.i.i.i = or i32 %24, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

is_valid_ether_addr.exit.i.do.end.i_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %is_valid_ether_addr.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @iwl_set_hw_address_family_8000.reserved_mac, ptr noundef dereferenceable(6) %add.ptr.i, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.if.end20_crit_edge

land.lhs.true.i.if.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %is_valid_ether_addr.exit.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %29, i32 noundef 0, ptr noundef nonnull @.str.19) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %if.else19.if.end9.i_crit_edge
  %tobool10.not.i = icmp eq ptr %nvm_hw, null
  br i1 %tobool10.not.i, label %do.end20.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %30 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i, align 4
  %read_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %31, i32 0, i32 24
  %32 = ptrtoint ptr %read_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_prph.i.i, align 4
  %call.i.i = tail call i32 %33(ptr noundef %trans, i32 noundef 10498176) #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #8
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i, align 4
  %read_prph.i2.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %read_prph.i2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_prph.i2.i, align 4
  %call.i3.i = tail call i32 %38(ptr noundef %trans, i32 noundef 10498180) #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %call.i3.i) #8
  %hw_addr14.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 1
  %mac_addr0.addr.sroa.0.0.extract.shift.i.i = lshr i32 %34, 24
  %mac_addr0.addr.sroa.0.0.extract.trunc.i.i = trunc i32 %mac_addr0.addr.sroa.0.0.extract.shift.i.i to i8
  %mac_addr0.addr.sroa.2.0.extract.shift.i.i = lshr i32 %34, 16
  %mac_addr0.addr.sroa.2.0.extract.trunc.i.i = trunc i32 %mac_addr0.addr.sroa.2.0.extract.shift.i.i to i8
  %mac_addr0.addr.sroa.3.0.extract.shift.i.i = lshr i32 %34, 8
  %mac_addr0.addr.sroa.3.0.extract.trunc.i.i = trunc i32 %mac_addr0.addr.sroa.3.0.extract.shift.i.i to i8
  %mac_addr0.addr.sroa.4.0.extract.trunc.i.i = trunc i32 %34 to i8
  %mac_addr1.addr.sroa.0.0.extract.shift.i.i = lshr i32 %39, 24
  %mac_addr1.addr.sroa.0.0.extract.trunc.i.i = trunc i32 %mac_addr1.addr.sroa.0.0.extract.shift.i.i to i8
  %mac_addr1.addr.sroa.2.0.extract.shift.i.i = lshr i32 %39, 16
  %mac_addr1.addr.sroa.2.0.extract.trunc.i.i = trunc i32 %mac_addr1.addr.sroa.2.0.extract.shift.i.i to i8
  %40 = ptrtoint ptr %hw_addr14.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %mac_addr0.addr.sroa.4.0.extract.trunc.i.i, ptr %hw_addr14.i, align 1
  %arrayidx3.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %mac_addr0.addr.sroa.3.0.extract.trunc.i.i, ptr %arrayidx3.i.i, align 1
  %arrayidx5.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %mac_addr0.addr.sroa.2.0.extract.trunc.i.i, ptr %arrayidx5.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %mac_addr0.addr.sroa.0.0.extract.trunc.i.i, ptr %arrayidx7.i.i, align 1
  %arrayidx9.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %mac_addr1.addr.sroa.2.0.extract.trunc.i.i, ptr %arrayidx9.i.i, align 1
  %arrayidx11.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 5
  %45 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %mac_addr1.addr.sroa.0.0.extract.trunc.i.i, ptr %arrayidx11.i.i, align 1
  br label %if.end20

do.end20.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev21.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %46 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev21.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %47, i32 noundef 0, ptr noundef nonnull @.str.20) #8
  br label %if.end20

if.end20:                                         ; preds = %do.end20.i, %if.then11.i, %land.lhs.true.i.if.end20_crit_edge, %if.then1, %if.then
  %hw_addr21 = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 1
  %48 = ptrtoint ptr %hw_addr21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hw_addr21, align 4
  %50 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not.i = icmp eq i32 %50, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end20.do.end_crit_edge

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

is_valid_ether_addr.exit:                         ; preds = %if.end20
  %add.ptr.i.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %52 to i32
  %or.i.i = or i32 %49, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end_crit_edge, label %do.end28

is_valid_ether_addr.exit.do.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %is_valid_ether_addr.exit.do.end_crit_edge, %if.end20.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @.str.16) #8
  br label %return

do.end28:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %55 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev29, align 8
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %56, ptr noundef nonnull @.str.17, ptr noundef %hw_addr21) #8
  br label %return

return:                                           ; preds = %do.end28, %do.end
  %retval.0 = phi i32 [ 0, %do.end28 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_init_sbands(ptr noundef %trans, ptr noundef %data, ptr nocapture noundef readonly %nvm_ch_flags, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains, i32 noundef %sbands_flags, i1 noundef zeroext %v4, ptr noundef %fw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %cfg2 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg2, align 8
  %uhb_supported.i = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %uhb_supported.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 3)
  %bf.load.i = load i24, ptr %uhb_supported.i, align 4
  %5 = and i24 %bf.load.i, 2
  %tobool.not.i = icmp eq i24 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.if.end3.i_crit_edge

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nvm_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %..i = select i1 %cmp.i, i32 51, i32 39
  %iwl_ext_nvm_channels.iwl_nvm_channels.i = select i1 %cmp.i, ptr @iwl_ext_nvm_channels, ptr @iwl_nvm_channels
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.else.i, %entry.if.end3.i_crit_edge
  %num_of_ch.0.i = phi i32 [ 110, %entry.if.end3.i_crit_edge ], [ %..i, %if.else.i ]
  %nvm_chan.0.i = phi ptr [ @iwl_uhb_nvm_channels, %entry.if.end3.i_crit_edge ], [ %iwl_ext_nvm_channels.iwl_nvm_channels.i, %if.else.i ]
  %sku_cap_band_52ghz_enable.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 9
  %and.i = and i32 %sbands_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  %vht160_supported.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 25
  %and28.i = and i32 %sbands_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end3.i
  %n_channels.0165.i = phi i32 [ 0, %if.end3.i ], [ %n_channels.1.i, %cleanup.i.for.body.i_crit_edge ]
  %ch_idx.0161.i = phi i32 [ 0, %if.end3.i ], [ %inc69.i, %cleanup.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %ch_idx.0161.i)
  %cmp.i.i = icmp ugt i32 %ch_idx.0161.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %ch_idx.0161.i)
  %cmp1.i.i = icmp ugt i32 %ch_idx.0161.i, 13
  %..i.i = zext i1 %cmp1.i.i to i32
  %retval.0.i.i = select i1 %cmp.i.i, i32 3, i32 %..i.i
  br i1 %v4, label %if.then6.i, label %if.else8.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i32, ptr %nvm_ch_flags, i32 %ch_idx.0161.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  br label %if.end11.i

if.else8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr9.i = getelementptr i16, ptr %nvm_ch_flags, i32 %ch_idx.0161.i
  %11 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr9.i, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %conv.i = zext i16 %13 to i32
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else8.i, %if.then6.i
  %ch_flags.0.i = phi i32 [ %10, %if.then6.i ], [ %conv.i, %if.else8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp12.i = icmp eq i32 %retval.0.i.i, 1
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end11.i.if.end16.i_crit_edge

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %14 = ptrtoint ptr %sku_cap_band_52ghz_enable.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sku_cap_band_52ghz_enable.i, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not.i = icmp eq i8 %15, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %if.end11.i.if.end16.i_crit_edge
  %and22.i = and i32 %ch_flags.0.i, -3585
  %spec.select.i = select i1 %cmp12.i, i32 %and22.i, i32 %ch_flags.0.i
  %ch_flags.1.i = select i1 %tobool17.not.i, i32 %ch_flags.0.i, i32 %spec.select.i
  %and24.i = and i32 %ch_flags.1.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end16.i.if.end27.i_crit_edge, label %if.then26.i

if.end16.i.if.end27.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %vht160_supported.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %vht160_supported.i, align 2
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end16.i.if.end27.i_crit_edge
  %and31.i = and i32 %ch_flags.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %or.cond.i = select i1 %tobool29.not.i, i1 %tobool32.not.i, i1 false
  br i1 %or.cond.i, label %iwl_nvm_print_channel_flags.exit.i, label %if.end35.i

iwl_nvm_print_channel_flags.exit.i:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i16, ptr %nvm_chan.0.i, i32 %ch_idx.0161.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 2
  %conv34.i = zext i16 %18 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_print_channel_flags, ptr noundef nonnull @.str.27, i32 noundef %conv34.i, i32 noundef %ch_flags.1.i) #8
  br label %cleanup.i

if.end35.i:                                       ; preds = %if.end27.i
  %arrayidx36.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.0165.i
  %inc.i = add i32 %n_channels.0165.i, 1
  %arrayidx37.i = getelementptr i16, ptr %nvm_chan.0.i, i32 %ch_idx.0161.i
  %19 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx37.i, align 2
  %hw_value.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.0165.i, i32 3
  %21 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %hw_value.i, align 2
  %22 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.i, ptr %arrayidx36.i, align 4
  %conv40.i = zext i16 %20 to i32
  %call.i.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv40.i, i32 noundef %retval.0.i.i) #8
  %div.i.i = udiv i32 %call.i.i, 1000
  %center_freq.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.0165.i, i32 1
  %23 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div.i.i, ptr %center_freq.i, align 4
  %max_power.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.0165.i, i32 6
  %24 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 22, ptr %max_power.i, align 4
  br i1 %tobool29.not.i, label %if.then45.i, label %if.end35.i.if.end51.i_crit_edge

if.end35.i.if.end51.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then45.i:                                      ; preds = %if.end35.i
  %and.i117.i = and i32 %ch_flags.1.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117.i)
  %tobool.not.i118.i = icmp eq i32 %and.i117.i, 0
  %or.cond.i.i = or i1 %cmp1.i.i, %tobool.not.i118.i
  br i1 %or.cond.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv47.i = trunc i16 %20 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv47.i)
  %cmp1.i119.i = icmp ult i8 %conv47.i, 10
  %spec.select.i.i = select i1 %cmp1.i119.i, i32 32, i32 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv47.i)
  %cmp6.i.i = icmp ugt i8 %conv47.i, 4
  %and9.i.i = and i32 %spec.select.i.i, 16
  %spec.select3.i.i = select i1 %cmp6.i.i, i32 %and9.i.i, i32 %spec.select.i.i
  br label %iwl_get_channel_flags.exit.i

if.else.i.i:                                      ; preds = %if.then45.i
  br i1 %tobool.not.i118.i, label %if.else.i.i.iwl_get_channel_flags.exit.i_crit_edge, label %if.then13.i.i

if.else.i.i.iwl_get_channel_flags.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_channel_flags.exit.i

if.then13.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = and i32 %ch_idx.0161.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp14.i.i = icmp eq i32 %25, 0
  %..i120.i = select i1 %cmp14.i.i, i32 32, i32 16
  br label %iwl_get_channel_flags.exit.i

iwl_get_channel_flags.exit.i:                     ; preds = %if.then13.i.i, %if.else.i.i.iwl_get_channel_flags.exit.i_crit_edge, %if.then.i.i
  %flags.1.i.i = phi i32 [ 48, %if.else.i.i.iwl_get_channel_flags.exit.i_crit_edge ], [ %..i120.i, %if.then13.i.i ], [ %spec.select3.i.i, %if.then.i.i ]
  %and23.i121.i = lshr i32 %ch_flags.1.i, 3
  %and32.i122.i = and i32 %ch_flags.1.i, 2
  %26 = xor i32 %and32.i122.i, 2
  %and37.i.i = and i32 %ch_flags.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %tobool38.not.i.i = icmp eq i32 %and37.i.i, 0
  %flags.5.v.i.i = select i1 %tobool38.not.i.i, i32 2, i32 %26
  %27 = and i32 %and23.i121.i, 384
  %and42.i.i = lshr i32 %ch_flags.1.i, 1
  %28 = and i32 %and42.i.i, 8
  %and47.i.i = shl i32 %ch_flags.1.i, 4
  %29 = and i32 %and47.i.i, 512
  %30 = or i32 %29, %28
  %flags.5.i.i = or i32 %30, %27
  %31 = or i32 %flags.5.i.i, %flags.5.v.i.i
  %32 = xor i32 %31, 384
  %33 = or i32 %flags.1.i.i, %32
  %and52.i.i = and i32 %ch_flags.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.5.v.i.i)
  %tobool56.not.i.i = icmp eq i32 %flags.5.v.i.i, 0
  %or.cond2.i.i = or i1 %tobool53.not.i.i, %tobool56.not.i.i
  %or58.i.i = or i32 %33, 1024
  %flags.8.i.i = select i1 %or.cond2.i.i, i32 %33, i32 %or58.i.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %iwl_get_channel_flags.exit.i, %if.end35.i.if.end51.i_crit_edge
  %.sink.i = phi i32 [ %flags.8.i.i, %iwl_get_channel_flags.exit.i ], [ 0, %if.end35.i.if.end51.i_crit_edge ]
  %flags50.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 28, i32 %n_channels.0165.i, i32 4
  %34 = ptrtoint ptr %flags50.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i, ptr %flags50.i, align 4
  %35 = ptrtoint ptr %uhb_supported.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 3)
  %bf.load53.i = load i24, ptr %uhb_supported.i, align 4
  %36 = and i24 %bf.load53.i, 2
  %tobool57.not.i = icmp eq i24 %36, 0
  %spec.store.select = select i1 %tobool57.not.i, i32 %.sink.i, i32 0
  store i32 %spec.store.select, ptr %flags50.i, align 4
  %37 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hw_value.i, align 2
  %conv62.i = zext i16 %38 to i32
  br i1 %tobool32.not.i, label %do.end.i125.i, label %do.end5.i159.i

do.end.i125.i:                                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_print_channel_flags, ptr noundef nonnull @.str.27, i32 noundef %conv62.i, i32 noundef %ch_flags.1.i) #8
  br label %iwl_nvm_print_channel_flags.exit160.i

do.end5.i159.i:                                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %and8.i126.i = and i32 %ch_flags.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i126.i)
  %tobool9.not.i127.i = icmp eq i32 %and8.i126.i, 0
  %cond10.i128.i = select i1 %tobool9.not.i127.i, ptr @.str.30, ptr @.str.31
  %and11.i129.i = and i32 %ch_flags.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i129.i)
  %tobool12.not.i130.i = icmp eq i32 %and11.i129.i, 0
  %cond13.i131.i = select i1 %tobool12.not.i130.i, ptr @.str.30, ptr @.str.32
  %and14.i132.i = and i32 %ch_flags.1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i132.i)
  %tobool15.not.i133.i = icmp eq i32 %and14.i132.i, 0
  %cond16.i134.i = select i1 %tobool15.not.i133.i, ptr @.str.30, ptr @.str.33
  %and17.i135.i = and i32 %ch_flags.1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i135.i)
  %tobool18.not.i136.i = icmp eq i32 %and17.i135.i, 0
  %cond19.i137.i = select i1 %tobool18.not.i136.i, ptr @.str.30, ptr @.str.34
  %and20.i138.i = and i32 %ch_flags.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i138.i)
  %tobool21.not.i139.i = icmp eq i32 %and20.i138.i, 0
  %cond22.i140.i = select i1 %tobool21.not.i139.i, ptr @.str.30, ptr @.str.35
  %and23.i141.i = and i32 %ch_flags.1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i141.i)
  %tobool24.not.i142.i = icmp eq i32 %and23.i141.i, 0
  %cond25.i143.i = select i1 %tobool24.not.i142.i, ptr @.str.30, ptr @.str.36
  %and26.i144.i = and i32 %ch_flags.1.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i144.i)
  %tobool27.not.i145.i = icmp eq i32 %and26.i144.i, 0
  %cond28.i146.i = select i1 %tobool27.not.i145.i, ptr @.str.30, ptr @.str.37
  %and29.i147.i = and i32 %ch_flags.1.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i147.i)
  %tobool30.not.i148.i = icmp eq i32 %and29.i147.i, 0
  %cond31.i149.i = select i1 %tobool30.not.i148.i, ptr @.str.30, ptr @.str.38
  %and32.i150.i = and i32 %ch_flags.1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i150.i)
  %tobool33.not.i151.i = icmp eq i32 %and32.i150.i, 0
  %cond34.i152.i = select i1 %tobool33.not.i151.i, ptr @.str.30, ptr @.str.39
  %cond37.i155.i = select i1 %tobool25.not.i, ptr @.str.30, ptr @.str.40
  %and38.i156.i = and i32 %ch_flags.1.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i156.i)
  %tobool39.not.i157.i = icmp eq i32 %and38.i156.i, 0
  %cond40.i158.i = select i1 %tobool39.not.i157.i, ptr @.str.30, ptr @.str.41
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_print_channel_flags, ptr noundef nonnull @.str.28, i32 noundef %conv62.i, i32 noundef %ch_flags.1.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond10.i128.i, ptr noundef nonnull %cond13.i131.i, ptr noundef nonnull %cond16.i134.i, ptr noundef nonnull %cond19.i137.i, ptr noundef nonnull %cond22.i140.i, ptr noundef nonnull %cond25.i143.i, ptr noundef nonnull %cond28.i146.i, ptr noundef nonnull %cond31.i149.i, ptr noundef nonnull %cond34.i152.i, ptr noundef nonnull %cond37.i155.i, ptr noundef nonnull %cond40.i158.i) #8
  br label %iwl_nvm_print_channel_flags.exit160.i

iwl_nvm_print_channel_flags.exit160.i:            ; preds = %do.end5.i159.i, %do.end.i125.i
  %39 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hw_value.i, align 2
  %conv65.i = zext i16 %40 to i32
  %41 = ptrtoint ptr %max_power.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_power.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_init_channel_map, ptr noundef nonnull @.str.22, i32 noundef %conv65.i, i32 noundef %42) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %iwl_nvm_print_channel_flags.exit160.i, %iwl_nvm_print_channel_flags.exit.i, %land.lhs.true.i.cleanup.i_crit_edge
  %n_channels.1.i = phi i32 [ %inc.i, %iwl_nvm_print_channel_flags.exit160.i ], [ %n_channels.0165.i, %iwl_nvm_print_channel_flags.exit.i ], [ %n_channels.0165.i, %land.lhs.true.i.cleanup.i_crit_edge ]
  %inc69.i = add nuw nsw i32 %ch_idx.0161.i, 1
  %exitcond.not.i = icmp eq i32 %inc69.i, %num_of_ch.0.i
  br i1 %exitcond.not.i, label %iwl_init_channel_map.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

iwl_init_channel_map.exit:                        ; preds = %cleanup.i
  %bands = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26
  %band = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 0, i32 2
  %43 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %band, align 4
  %bitrates = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 0, i32 1
  %44 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @iwl_cfg80211_rates, ptr %bitrates, align 4
  %n_bitrates = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 0, i32 4
  %45 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 12, ptr %n_bitrates, align 4
  %call3 = tail call i32 @iwl_init_sband_channels(ptr noundef %data, ptr noundef %bands, i32 noundef %n_channels.1.i, i32 noundef 0) #8
  %ht_cap = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 0, i32 5
  tail call void @iwl_init_ht_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef %ht_cap, i32 noundef 0, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains) #8
  %sku_cap_11ax_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 12
  %46 = ptrtoint ptr %sku_cap_11ax_enable to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sku_cap_11ax_enable, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool4.not = icmp eq i8 %47, 0
  br i1 %tobool4.not, label %iwl_init_channel_map.exit.if.end_crit_edge, label %land.lhs.true

iwl_init_channel_map.exit.if.end_crit_edge:       ; preds = %iwl_init_channel_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %iwl_init_channel_map.exit
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12) to i32))
  %48 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12), align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool5.not = icmp eq i8 %48, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iwl_init_he_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef %bands, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains, ptr noundef %fw)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %iwl_init_channel_map.exit.if.end_crit_edge
  %arrayidx7 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1
  %band8 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 2
  %49 = ptrtoint ptr %band8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %band8, align 4
  %bitrates9 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 1
  %50 = ptrtoint ptr %bitrates9 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @iwl_cfg80211_rates, i32 0, i32 4), ptr %bitrates9, align 4
  %n_bitrates10 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 4
  %51 = ptrtoint ptr %n_bitrates10 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %n_bitrates10, align 4
  %call11 = tail call i32 @iwl_init_sband_channels(ptr noundef %data, ptr noundef %arrayidx7, i32 noundef %n_channels.1.i, i32 noundef 1) #8
  %add12 = add i32 %call11, %call3
  %ht_cap13 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 5
  tail call void @iwl_init_ht_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef %ht_cap13, i32 noundef 1, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains) #8
  %sku_cap_11ac_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 11
  %52 = ptrtoint ptr %sku_cap_11ac_enable to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sku_cap_11ac_enable, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool14.not = icmp eq i8 %53, 0
  br i1 %tobool14.not, label %if.end.if.end18_crit_edge, label %land.lhs.true15

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true15:                                  ; preds = %if.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 11) to i32))
  %54 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 11), align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool16.not = icmp eq i8 %54, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true15.if.end18_crit_edge

land.lhs.true15.if.end18_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  %vht_cap = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 1, i32 6
  tail call fastcc void @iwl_init_vht_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef %vht_cap, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true15.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %55 = ptrtoint ptr %sku_cap_11ax_enable to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sku_cap_11ax_enable, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool20.not = icmp eq i8 %56, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %land.lhs.true21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true21:                                  ; preds = %if.end18
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12) to i32))
  %57 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12), align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool22.not = icmp eq i8 %57, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true21.if.end24_crit_edge

land.lhs.true21.if.end24_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iwl_init_he_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef %arrayidx7, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains, ptr noundef %fw)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true21.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  %arrayidx26 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 3
  %band27 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 3, i32 2
  %58 = ptrtoint ptr %band27 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3, ptr %band27, align 4
  %bitrates28 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 3, i32 1
  %59 = ptrtoint ptr %bitrates28 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @iwl_cfg80211_rates, i32 0, i32 4), ptr %bitrates28, align 4
  %n_bitrates29 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 3, i32 4
  %60 = ptrtoint ptr %n_bitrates29 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 8, ptr %n_bitrates29, align 4
  %call30 = tail call i32 @iwl_init_sband_channels(ptr noundef %data, ptr noundef %arrayidx26, i32 noundef %n_channels.1.i, i32 noundef 3) #8
  %add31 = add i32 %add12, %call30
  %61 = ptrtoint ptr %sku_cap_11ax_enable to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sku_cap_11ax_enable, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool33.not = icmp eq i8 %62, 0
  br i1 %tobool33.not, label %if.end24.if.else_crit_edge, label %land.lhs.true34

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true34:                                  ; preds = %if.end24
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12) to i32))
  %63 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12), align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool35.not = icmp eq i8 %63, 0
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true34.if.else_crit_edge

land.lhs.true34.if.else_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iwl_init_he_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef %arrayidx26, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains, ptr noundef %fw)
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true34.if.else_crit_edge, %if.end24.if.else_crit_edge
  %n_channels37 = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 26, i32 3, i32 3
  %64 = ptrtoint ptr %n_channels37 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %n_channels37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36
  call void @__sanitizer_cov_trace_cmp4(i32 %n_channels.1.i, i32 %add31)
  %cmp.not = icmp eq i32 %n_channels.1.i, %add31
  br i1 %cmp.not, label %if.end38.if.end43_crit_edge, label %do.end

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %add31, i32 noundef %n_channels.1.i) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end, %if.end38.if.end43_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_parse_nvm_data(ptr noundef %trans, ptr nocapture noundef readonly %cfg, ptr noundef %fw, ptr noundef %nvm_hw, ptr nocapture noundef readonly %nvm_sw, ptr noundef readonly %nvm_calib, ptr nocapture noundef readonly %regulatory, ptr noundef %mac_override, ptr nocapture noundef readonly %phy_sku, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uhb_supported = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 21
  %0 = ptrtoint ptr %uhb_supported to i32
  call void @__asan_loadN_noabort(i32 %0, i32 3)
  %bf.load = load i24, ptr %uhb_supported, align 4
  %1 = and i24 %bf.load, 2
  %tobool.not = icmp eq i24 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 7032) #11
  br label %if.end8

if.else:                                          ; preds = %entry
  %nvm_type = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 9
  %3 = ptrtoint ptr %nvm_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nvm_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  br i1 %cmp.not, label %if.else5, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i174 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3056) #11
  br label %if.end8

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i175 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3728) #11
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then2, %if.then
  %data.0 = phi ptr [ %call7.i.i, %if.then ], [ %call7.i.i174, %if.then2 ], [ %call7.i.i175, %if.else5 ]
  %tobool9.not = icmp eq ptr %data.0, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 9
  %6 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nvm_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %if.end.i185, label %if.then.i184

if.then.i184:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %nvm_sw to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nvm_sw, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %nvm_version = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 22
  %11 = ptrtoint ptr %nvm_version to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %nvm_version, align 8
  %add.ptr.i = getelementptr i16, ptr %nvm_sw, i32 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  %15 = lshr i16 %14, 4
  %conv.i183 = and i16 %15, 3
  %16 = trunc i16 %14 to i8
  %17 = lshr i8 %16, 2
  %conv3.i = and i8 %17, 3
  %conv5.i = and i8 %16, 3
  %18 = lshr i8 %16, 6
  br label %iwl_set_radio_cfg.exit

if.end.i185:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %nvm_sw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nvm_sw, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %nvm_version204 = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 22
  %22 = ptrtoint ptr %nvm_version204 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nvm_version204, align 8
  %23 = ptrtoint ptr %phy_sku to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phy_sku, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %shr9.i = lshr i32 %25, 12
  %26 = trunc i32 %shr9.i to i16
  %conv11.i = and i16 %26, 4095
  %shr13.i = lshr i32 %25, 8
  %27 = trunc i32 %shr13.i to i8
  %conv15.i = and i8 %27, 15
  %28 = trunc i32 %25 to i8
  %29 = lshr i8 %28, 4
  %conv22.i = and i8 %28, 15
  %shr24.i = lshr i32 %25, 24
  %30 = trunc i32 %shr24.i to i8
  %conv26.i = and i8 %30, 15
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 20
  %31 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv26.i, ptr %valid_tx_ant.i, align 1
  %shr27.i = lshr i32 %25, 28
  %conv29.i = trunc i32 %shr27.i to i8
  %valid_rx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 21
  %32 = ptrtoint ptr %valid_rx_ant.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv29.i, ptr %valid_rx_ant.i, align 2
  br label %iwl_set_radio_cfg.exit

iwl_set_radio_cfg.exit:                           ; preds = %if.end.i185, %if.then.i184
  %nvm_version205209 = phi ptr [ %nvm_version204, %if.end.i185 ], [ %nvm_version, %if.then.i184 ]
  %conv.sink.i = phi i16 [ %conv11.i, %if.end.i185 ], [ %conv.i183, %if.then.i184 ]
  %conv3.sink.i = phi i8 [ %conv15.i, %if.end.i185 ], [ %conv3.i, %if.then.i184 ]
  %conv5.sink.i = phi i8 [ %29, %if.end.i185 ], [ %conv5.i, %if.then.i184 ]
  %.sink.i = phi i8 [ %conv22.i, %if.end.i185 ], [ %18, %if.then.i184 ]
  %33 = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 16
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.sink.i, ptr %33, align 8
  %35 = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 17
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv3.sink.i, ptr %35, align 2
  %37 = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 18
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv5.sink.i, ptr %37, align 1
  %39 = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 19
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink.i, ptr %39, align 4
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 20
  %41 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %valid_tx_ant, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool14.not = icmp eq i8 %42, 0
  %and171 = select i1 %tobool14.not, i8 -1, i8 %42
  %spec.select = and i8 %and171, %tx_chains
  %valid_rx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 21
  %43 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %valid_rx_ant, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool20.not = icmp eq i8 %44, 0
  %and25170 = select i1 %tobool20.not, i8 -1, i8 %44
  %rx_chains.addr.0 = and i8 %and25170, %rx_chains
  br i1 %cmp.not.i, label %if.end.i191, label %if.then.i190

if.then.i190:                                     ; preds = %iwl_set_radio_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i188 = getelementptr i16, ptr %nvm_sw, i32 2
  %45 = ptrtoint ptr %add.ptr.i188 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i188, align 2
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #8
  %conv.i189 = zext i16 %47 to i32
  br label %iwl_get_sku.exit

if.end.i191:                                      ; preds = %iwl_set_radio_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr i16, ptr %phy_sku, i32 2
  %48 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr1.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  br label %iwl_get_sku.exit

iwl_get_sku.exit:                                 ; preds = %if.end.i191, %if.then.i190
  %retval.0.i192 = phi i32 [ %conv.i189, %if.then.i190 ], [ %50, %if.end.i191 ]
  %sku_cap_band_24ghz_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 8
  %51 = trunc i32 %retval.0.i192 to i8
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %sku_cap_band_24ghz_enable to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %sku_cap_band_24ghz_enable, align 8
  %sku_cap_band_52ghz_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 9
  %54 = lshr i8 %51, 1
  %55 = and i8 %54, 1
  %56 = ptrtoint ptr %sku_cap_band_52ghz_enable to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %sku_cap_band_52ghz_enable, align 1
  %sku_cap_11n_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 10
  %57 = lshr i8 %51, 2
  %58 = and i8 %57, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1) to i32))
  %59 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1), align 4
  %and37 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %spec.store.select = select i1 %tobool38.not, i8 %58, i8 0
  %60 = ptrtoint ptr %sku_cap_11n_enable to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %spec.store.select, ptr %sku_cap_11n_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %tobool43.not = icmp ne i8 %spec.store.select, 0
  %and45 = and i32 %retval.0.i192, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46 = icmp ne i32 %and45, 0
  %61 = select i1 %tobool43.not, i1 %tobool46, i1 false
  %sku_cap_11ac_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 11
  %frombool47 = zext i1 %61 to i8
  %62 = ptrtoint ptr %sku_cap_11ac_enable to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool47, ptr %sku_cap_11ac_enable, align 1
  %sku_cap_mimo_disabled = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 15
  %63 = lshr i8 %51, 5
  %64 = and i8 %63, 1
  %65 = ptrtoint ptr %sku_cap_mimo_disabled to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %sku_cap_mimo_disabled, align 1
  %add.ptr1.i195 = getelementptr i16, ptr %nvm_sw, i32 3
  br i1 %cmp.not.i, label %if.end90, label %if.then55

if.then55:                                        ; preds = %iwl_get_sku.exit
  %66 = ptrtoint ptr %add.ptr1.i195 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr1.i195, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #8
  %conv.i196 = zext i16 %68 to i32
  %69 = ptrtoint ptr %data.0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv.i196, ptr %data.0, align 8
  %tobool56.not = icmp eq ptr %nvm_calib, null
  br i1 %tobool56.not, label %do.end, label %if.end90.thread

do.end:                                           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %71, i32 noundef 0, ptr noundef nonnull @.str) #8
  tail call void @kfree(ptr noundef nonnull %data.0) #8
  br label %cleanup

if.end90:                                         ; preds = %iwl_get_sku.exit
  %72 = ptrtoint ptr %add.ptr1.i195 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr1.i195, align 4
  %74 = lshr i32 %73, 24
  %and.i = and i32 %74, 15
  %75 = ptrtoint ptr %data.0 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and.i, ptr %data.0, align 8
  %76 = ptrtoint ptr %nvm_version205209 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nvm_version205209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3641, i32 %77)
  %cmp73 = icmp ult i32 %77, 3641
  %conv77 = select i1 %cmp73, i32 1223, i32 1287
  %add.ptr78 = getelementptr i16, ptr %regulatory, i32 %conv77
  %78 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr78, align 2
  %80 = and i16 %79, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool82 = icmp ne i16 %80, 0
  %lar_enabled84 = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 24
  %frombool85 = zext i1 %tobool82 to i8
  %81 = ptrtoint ptr %lar_enabled84 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %frombool85, ptr %lar_enabled84, align 1
  %call91 = tail call fastcc i32 @iwl_set_hw_address(ptr noundef %trans, ptr noundef %cfg, ptr noundef nonnull %data.0, ptr noundef %nvm_hw, ptr noundef %mac_override)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.if.then93_crit_edge

if.end90.if.then93_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then93

if.end90.thread:                                  ; preds = %if.then55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp63 = icmp eq i32 %7, 2
  %arrayidx65 = getelementptr i16, ptr %nvm_sw, i32 32
  %cond = select i1 %cmp63, ptr %regulatory, ptr %arrayidx65
  %add.ptr = getelementptr i16, ptr %nvm_calib, i32 94
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %add.ptr, align 2
  %xtal_calib = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 7
  %84 = ptrtoint ptr %xtal_calib to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %xtal_calib, align 4
  %add.ptr68 = getelementptr i16, ptr %nvm_calib, i32 95
  %85 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr68, align 2
  %arrayidx70 = getelementptr %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 7, i32 1
  %87 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %arrayidx70, align 2
  %call91215 = tail call fastcc i32 @iwl_set_hw_address(ptr noundef %trans, ptr noundef %cfg, ptr noundef nonnull %data.0, ptr noundef %nvm_hw, ptr noundef %mac_override)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91215)
  %tobool92.not216 = icmp eq i32 %call91215, 0
  br i1 %tobool92.not216, label %if.end90.thread.land.lhs.true_crit_edge, label %if.end90.thread.if.then93_crit_edge

if.end90.thread.if.then93_crit_edge:              ; preds = %if.end90.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then93

if.end90.thread.land.lhs.true_crit_edge:          ; preds = %if.end90.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then93:                                        ; preds = %if.end90.thread.if.then93_crit_edge, %if.end90.if.then93_crit_edge
  tail call void @kfree(ptr noundef nonnull %data.0) #8
  br label %cleanup

if.end94:                                         ; preds = %if.end90
  br i1 %tobool82, label %if.end94.land.lhs.true_crit_edge, label %if.end94.if.end100_crit_edge

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end94.land.lhs.true_crit_edge:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end94.land.lhs.true_crit_edge, %if.end90.thread.land.lhs.true_crit_edge
  %ch_section.0218222 = phi ptr [ %regulatory, %if.end94.land.lhs.true_crit_edge ], [ %cond, %if.end90.thread.land.lhs.true_crit_edge ]
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 8
  %88 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %_capa.i, align 4
  %90 = lshr i32 %89, 1
  %.lobit = and i32 %90, 1
  br label %if.end100

if.end100:                                        ; preds = %land.lhs.true, %if.end94.if.end100_crit_edge
  %ch_section.0218221 = phi ptr [ %regulatory, %if.end94.if.end100_crit_edge ], [ %ch_section.0218222, %land.lhs.true ]
  %sbands_flags.0 = phi i32 [ 0, %if.end94.if.end100_crit_edge ], [ %.lobit, %land.lhs.true ]
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %91 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %94)
  %cmp.i = icmp eq i32 %94, 15
  br i1 %cmp.i, label %if.then.i201, label %if.end100.iwl_nvm_no_wide_in_5ghz.exit.thread_crit_edge

if.end100.iwl_nvm_no_wide_in_5ghz.exit.thread_crit_edge: ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_nvm_no_wide_in_5ghz.exit.thread

if.then.i201:                                     ; preds = %if.end100
  %add.ptr.i200 = getelementptr i16, ptr %nvm_hw, i32 10
  %95 = ptrtoint ptr %add.ptr.i200 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %add.ptr.i200, align 2
  %97 = lshr i16 %96, 1
  %trunc.i = trunc i16 %97 to i4
  %98 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i, label %if.then.i201.iwl_nvm_no_wide_in_5ghz.exit.thread_crit_edge [
    i4 5, label %if.then.i201._crit_edge
    i4 -7, label %if.then.i201._crit_edge225
  ]

if.then.i201._crit_edge225:                       ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %99

if.then.i201._crit_edge:                          ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %99

if.then.i201.iwl_nvm_no_wide_in_5ghz.exit.thread_crit_edge: ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_nvm_no_wide_in_5ghz.exit.thread

99:                                               ; preds = %if.then.i201._crit_edge, %if.then.i201._crit_edge225
  %100 = and i16 %97, 15
  %conv1.i = zext i16 %100 to i32
  %conv.i202 = zext i16 %96 to i32
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %102, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_no_wide_in_5ghz, ptr noundef nonnull @.str.26, i32 noundef %conv.i202, i32 noundef %conv1.i) #8
  %or103 = or i32 %sbands_flags.0, 2
  br label %iwl_nvm_no_wide_in_5ghz.exit.thread

iwl_nvm_no_wide_in_5ghz.exit.thread:              ; preds = %99, %if.then.i201.iwl_nvm_no_wide_in_5ghz.exit.thread_crit_edge, %if.end100.iwl_nvm_no_wide_in_5ghz.exit.thread_crit_edge
  %103 = phi i32 [ %or103, %99 ], [ %sbands_flags.0, %if.end100.iwl_nvm_no_wide_in_5ghz.exit.thread_crit_edge ], [ %sbands_flags.0, %if.then.i201.iwl_nvm_no_wide_in_5ghz.exit.thread_crit_edge ]
  tail call fastcc void @iwl_init_sbands(ptr noundef %trans, ptr noundef nonnull %data.0, ptr noundef %ch_section.0218221, i8 noundef zeroext %spec.select, i8 noundef zeroext %rx_chains.addr.0, i32 noundef %103, i1 noundef zeroext false, ptr noundef %fw)
  %calib_version = getelementptr inbounds %struct.iwl_nvm_data, ptr %data.0, i32 0, i32 2
  %104 = ptrtoint ptr %calib_version to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -1, ptr %calib_version, align 2
  br label %cleanup

cleanup:                                          ; preds = %iwl_nvm_no_wide_in_5ghz.exit.thread, %if.then93, %do.end, %if.end8.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then93 ], [ %data.0, %iwl_nvm_no_wide_in_5ghz.exit.thread ], [ null, %do.end ], [ null, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_parse_nvm_mcc_info(ptr noundef %dev, ptr nocapture noundef readonly %cfg, i32 noundef %num_of_ch, ptr nocapture noundef readonly %channels, i16 noundef zeroext %fw_mcc, i16 noundef zeroext %geo_info, i16 noundef zeroext %cap, i8 noundef zeroext %resp_ver) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uhb_supported = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 21
  %0 = ptrtoint ptr %uhb_supported to i32
  call void @__asan_loadN_noabort(i32 %0, i32 3)
  %bf.load = load i24, ptr %uhb_supported, align 4
  %1 = and i24 %bf.load, 2
  %tobool.not = icmp eq i24 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nvm_type = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 9
  %2 = ptrtoint ptr %nvm_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvm_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %iwl_ext_nvm_channels.iwl_nvm_channels = select i1 %cmp, ptr @iwl_ext_nvm_channels, ptr @iwl_nvm_channels
  %. = select i1 %cmp, i32 51, i32 39
  br label %if.end3

if.end3:                                          ; preds = %if.else, %entry.if.end3_crit_edge
  %nvm_chan.0 = phi ptr [ @iwl_uhb_nvm_channels, %entry.if.end3_crit_edge ], [ %iwl_ext_nvm_channels.iwl_nvm_channels, %if.else ]
  %max_num_ch.0 = phi i32 [ 110, %entry.if.end3_crit_edge ], [ %., %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_num_ch.0, i32 %num_of_ch)
  %cmp4 = icmp slt i32 %max_num_ch.0, %num_of_ch
  br i1 %cmp4, label %do.end, label %if.end3.if.end19_crit_edge, !prof !101

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1387, i32 noundef 9, ptr noundef null) #8
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end3.if.end19_crit_edge
  %4 = tail call i32 @llvm.smin.i32(i32 %max_num_ch.0, i32 %num_of_ch)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %dev, i32 noundef 16384, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_parse_nvm_mcc_info, ptr noundef nonnull @.str.2, i32 noundef %4) #8
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 96) #8
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %spec.select.i = or i32 %7, 20
  %retval.0.i = select i1 %6, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #13
  %tobool90.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool90.not, label %if.end19.cleanup_crit_edge, label %if.end93

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93:                                         ; preds = %if.end19
  %8 = lshr i16 %fw_mcc, 8
  %conv94 = trunc i16 %8 to i8
  %alpha2 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %alpha2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv94, ptr %alpha2, align 4
  %conv96 = trunc i16 %fw_mcc to i8
  %arrayidx98 = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv96, ptr %arrayidx98, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_of_ch)
  %cmp100300 = icmp sgt i32 %num_of_ch, 0
  br i1 %cmp100300, label %for.body.lr.ph, label %if.end93.if.then152_crit_edge

if.end93.if.then152_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then152

for.body.lr.ph:                                   ; preds = %if.end93
  %storemerge.i = and i16 %cap, 1024
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %resp_ver)
  %cmp.i = icmp ugt i8 %resp_ver, 5
  %.sink.i = select i1 %cmp.i, i16 8, i16 4
  %and22.i = and i16 %.sink.i, %cap
  %.sink37.i = select i1 %cmp.i, i16 16, i16 8
  %and18.i = and i16 %.sink37.i, %cap
  %and.i = and i16 %cap, 256
  %and14.i = lshr i16 %cap, 7
  %and14.lobit.i = and i16 %and14.i, 1
  %11 = xor i16 %and14.lobit.i, 1
  %.sink38.i = select i1 %cmp.i, i16 %and.i, i16 %11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.sink38.i)
  %tobool67.not.i = icmp eq i16 %.sink38.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and18.i)
  %tobool71.not.i = icmp eq i16 %and18.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and22.i)
  %tobool75.not.i = icmp eq i16 %and22.i, 0
  %12 = zext i16 %storemerge.i to i32
  %13 = shl nuw nsw i32 %12, 7
  %14 = and i16 %geo_info, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool142.not = icmp eq i16 %14, 0
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch_idx.0304 = phi i32 [ 0, %for.body.lr.ph ], [ %inc150, %for.inc.for.body_crit_edge ]
  %valid_rules.0303 = phi i32 [ 0, %for.body.lr.ph ], [ %valid_rules.2, %for.inc.for.body_crit_edge ]
  %prev_center_freq.0302 = phi i32 [ 0, %for.body.lr.ph ], [ %prev_center_freq.1, %for.inc.for.body_crit_edge ]
  %prev_reg_rule_flags.0301 = phi i32 [ 0, %for.body.lr.ph ], [ %prev_reg_rule_flags.1, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i32, ptr %channels, i32 %ch_idx.0304
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %ch_idx.0304)
  %cmp.i249 = icmp ugt i32 %ch_idx.0304, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %ch_idx.0304)
  %cmp1.i = icmp ugt i32 %ch_idx.0304, 13
  %..i = zext i1 %cmp1.i to i32
  %retval.0.i250 = select i1 %cmp.i249, i32 3, i32 %..i
  %arrayidx105 = getelementptr i16, ptr %nvm_chan.0, i32 %ch_idx.0304
  %18 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx105, align 2
  %conv106 = zext i16 %19 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv106, i32 noundef %retval.0.i250) #8
  %div.i = udiv i32 %call.i, 1000
  %conv108 = and i32 %17, 65535
  %and109 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.end.i, label %if.end115

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %dev, i32 noundef 16384, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_print_channel_flags, ptr noundef nonnull @.str.27, i32 noundef %conv106, i32 noundef %conv108) #8
  br label %for.inc

if.end115:                                        ; preds = %for.body
  %20 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i254 = icmp eq i32 %20, 0
  %or.cond.i = or i1 %cmp1.i, %tobool.not.i254
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %19)
  %cmp2.i = icmp ult i16 %19, 10
  %spec.select.i255 = select i1 %cmp2.i, i32 8192, i32 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %19)
  %cmp8.i = icmp ugt i16 %19, 4
  %and11.i256 = and i32 %spec.select.i255, 16384
  %spec.select5.i = select i1 %cmp8.i, i32 %and11.i256, i32 %spec.select.i255
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end115
  br i1 %tobool.not.i254, label %if.else.i.if.end25.i_crit_edge, label %if.then16.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = and i32 %ch_idx.0304, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp17.i = icmp eq i32 %21, 0
  %..i257 = select i1 %cmp17.i, i32 8192, i32 16384
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then16.i, %if.else.i.if.end25.i_crit_edge, %if.then.i
  %flags.1.i = phi i32 [ 24576, %if.else.i.if.end25.i_crit_edge ], [ %..i257, %if.then16.i ], [ %spec.select5.i, %if.then.i ]
  %and27.i = shl nuw nsw i32 %conv108, 5
  %and38.i258 = shl nuw nsw i32 %conv108, 4
  %22 = and i32 %and38.i258, 128
  %23 = and i32 %and27.i, 98304
  %24 = or i32 %22, %23
  %and44.i = and i32 %17, 16
  %and50.i = lshr i32 %17, 2
  %25 = and i32 %and50.i, 8
  %26 = or i32 %25, %and44.i
  %27 = or i32 %24, %26
  %28 = xor i32 %27, 98432
  %29 = or i32 %28, %flags.1.i
  %and56.i = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool60.not.i = icmp ne i32 %22, 0
  %or.cond2.i = select i1 %tobool57.not.i, i1 true, i1 %tobool60.not.i
  %or62.i = or i32 %29, 4096
  %flags.7.i = select i1 %or.cond2.i, i32 %29, i32 %or62.i
  br i1 %cmp1.i, label %if.then66.i, label %if.end25.i.iwl_nvm_get_regdom_bw_flags.exit_crit_edge

if.end25.i.iwl_nvm_get_regdom_bw_flags.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_nvm_get_regdom_bw_flags.exit

if.then66.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %or69.i = or i32 %flags.7.i, 24576
  %spec.select3.i = select i1 %tobool67.not.i, i32 %or69.i, i32 %flags.7.i
  %or73.i = or i32 %spec.select3.i, 32768
  %flags.9.i = select i1 %tobool71.not.i, i32 %or73.i, i32 %spec.select3.i
  %or77.i = or i32 %flags.9.i, 65536
  %spec.select6.i = select i1 %tobool75.not.i, i32 %or77.i, i32 %flags.9.i
  br label %iwl_nvm_get_regdom_bw_flags.exit

iwl_nvm_get_regdom_bw_flags.exit:                 ; preds = %if.then66.i, %if.end25.i.iwl_nvm_get_regdom_bw_flags.exit_crit_edge
  %flags.10.i = phi i32 [ %flags.7.i, %if.end25.i.iwl_nvm_get_regdom_bw_flags.exit_crit_edge ], [ %spec.select6.i, %if.then66.i ]
  %30 = or i32 %flags.10.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch_idx.0304)
  %cmp117 = icmp eq i32 %ch_idx.0304, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_reg_rule_flags.0301, i32 %30)
  %cmp119.not = icmp ne i32 %prev_reg_rule_flags.0301, %30
  %or.cond = select i1 %cmp117, i1 true, i1 %cmp119.not
  %sub = sub i32 %div.i, %prev_center_freq.0302
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub)
  %cmp122 = icmp sgt i32 %sub, 20
  %or.cond247 = select i1 %or.cond, i1 true, i1 %cmp122
  %inc = zext i1 %or.cond247 to i32
  %valid_rules.1 = add i32 %valid_rules.0303, %inc
  %sub126 = add i32 %valid_rules.1, -1
  %arrayidx127 = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 4, i32 %sub126
  %31 = mul nuw i32 %div.i, 1000
  br i1 %or.cond247, label %if.then129, label %iwl_nvm_get_regdom_bw_flags.exit.iwl_nvm_print_channel_flags.exit296_crit_edge

iwl_nvm_get_regdom_bw_flags.exit.iwl_nvm_print_channel_flags.exit296_crit_edge: ; preds = %iwl_nvm_get_regdom_bw_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_nvm_print_channel_flags.exit296

if.then129:                                       ; preds = %iwl_nvm_get_regdom_bw_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mul = add i32 %31, -10000
  %32 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %arrayidx127, align 4
  br label %iwl_nvm_print_channel_flags.exit296

iwl_nvm_print_channel_flags.exit296:              ; preds = %if.then129, %iwl_nvm_get_regdom_bw_flags.exit.iwl_nvm_print_channel_flags.exit296_crit_edge
  %mul132 = add i32 %31, 10000
  %end_freq_khz = getelementptr inbounds %struct.ieee80211_freq_range, ptr %arrayidx127, i32 0, i32 1
  %33 = ptrtoint ptr %end_freq_khz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul132, ptr %end_freq_khz, align 8
  %power_rule = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 4, i32 %sub126, i32 1
  %34 = ptrtoint ptr %power_rule to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 600, ptr %power_rule, align 32
  %max_eirp = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 4, i32 %sub126, i32 1, i32 1
  %35 = ptrtoint ptr %max_eirp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2200, ptr %max_eirp, align 4
  %flags = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 4, i32 %sub126, i32 3
  %or = or i32 %30, 2048
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or, ptr %flags, align 8
  %max_bandwidth_khz = getelementptr inbounds %struct.ieee80211_freq_range, ptr %arrayidx127, i32 0, i32 2
  %37 = ptrtoint ptr %max_bandwidth_khz to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %max_bandwidth_khz, align 4
  %and8.i262 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i262)
  %tobool9.not.i263 = icmp eq i32 %and8.i262, 0
  %cond10.i264 = select i1 %tobool9.not.i263, ptr @.str.30, ptr @.str.31
  %and11.i265 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i265)
  %tobool12.not.i266 = icmp eq i32 %and11.i265, 0
  %cond13.i267 = select i1 %tobool12.not.i266, ptr @.str.30, ptr @.str.32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool15.not.i269 = icmp eq i32 %and44.i, 0
  %cond16.i270 = select i1 %tobool15.not.i269, ptr @.str.30, ptr @.str.33
  %and17.i271 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i271)
  %tobool18.not.i272 = icmp eq i32 %and17.i271, 0
  %cond19.i273 = select i1 %tobool18.not.i272, ptr @.str.30, ptr @.str.34
  %cond22.i276 = select i1 %tobool57.not.i, ptr @.str.30, ptr @.str.35
  %and23.i277 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i277)
  %tobool24.not.i278 = icmp eq i32 %and23.i277, 0
  %cond25.i279 = select i1 %tobool24.not.i278, ptr @.str.30, ptr @.str.36
  %and26.i280 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i280)
  %tobool27.not.i281 = icmp eq i32 %and26.i280, 0
  %cond28.i282 = select i1 %tobool27.not.i281, ptr @.str.30, ptr @.str.37
  %cond31.i285 = select i1 %tobool.not.i254, ptr @.str.30, ptr @.str.38
  %and32.i286 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i286)
  %tobool33.not.i287 = icmp eq i32 %and32.i286, 0
  %cond34.i288 = select i1 %tobool33.not.i287, ptr @.str.30, ptr @.str.39
  %and35.i289 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i289)
  %tobool36.not.i290 = icmp eq i32 %and35.i289, 0
  %cond37.i291 = select i1 %tobool36.not.i290, ptr @.str.30, ptr @.str.40
  %and38.i292 = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i292)
  %tobool39.not.i293 = icmp eq i32 %and38.i292, 0
  %cond40.i294 = select i1 %tobool39.not.i293, ptr @.str.30, ptr @.str.41
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %dev, i32 noundef 16384, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_print_channel_flags, ptr noundef nonnull @.str.28, i32 noundef %conv106, i32 noundef %conv108, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond10.i264, ptr noundef nonnull %cond13.i267, ptr noundef nonnull %cond16.i270, ptr noundef nonnull %cond19.i273, ptr noundef nonnull %cond22.i276, ptr noundef nonnull %cond25.i279, ptr noundef nonnull %cond28.i282, ptr noundef nonnull %cond31.i285, ptr noundef nonnull %cond34.i288, ptr noundef nonnull %cond37.i291, ptr noundef nonnull %cond40.i294) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i250)
  %cmp144 = icmp eq i32 %retval.0.i250, 0
  %or.cond248 = or i1 %tobool142.not, %cmp144
  br i1 %or.cond248, label %iwl_nvm_print_channel_flags.exit296.for.inc_crit_edge, label %if.end147

iwl_nvm_print_channel_flags.exit296.for.inc_crit_edge: ; preds = %iwl_nvm_print_channel_flags.exit296
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end147:                                        ; preds = %iwl_nvm_print_channel_flags.exit296
  call void @__sanitizer_cov_trace_pc() #10
  %call149 = tail call i32 @reg_query_regdb_wmm(ptr noundef %alpha2, i32 noundef %div.i, ptr noundef %arrayidx127) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end147, %iwl_nvm_print_channel_flags.exit296.for.inc_crit_edge, %do.end.i
  %prev_reg_rule_flags.1 = phi i32 [ %30, %if.end147 ], [ %30, %iwl_nvm_print_channel_flags.exit296.for.inc_crit_edge ], [ %prev_reg_rule_flags.0301, %do.end.i ]
  %prev_center_freq.1 = phi i32 [ %div.i, %if.end147 ], [ %div.i, %iwl_nvm_print_channel_flags.exit296.for.inc_crit_edge ], [ %prev_center_freq.0302, %do.end.i ]
  %valid_rules.2 = phi i32 [ %valid_rules.1, %if.end147 ], [ %valid_rules.1, %iwl_nvm_print_channel_flags.exit296.for.inc_crit_edge ], [ %valid_rules.0303, %do.end.i ]
  %inc150 = add nuw nsw i32 %ch_idx.0304, 1
  %exitcond.not = icmp eq i32 %inc150, %smax
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid_rules.2)
  %tobool151.not = icmp eq i32 %valid_rules.2, 0
  br i1 %tobool151.not, label %for.end.if.then152_crit_edge, label %for.end.if.end166_crit_edge

for.end.if.end166_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

for.end.if.then152_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then152

if.then152:                                       ; preds = %for.end.if.then152_crit_edge, %if.end93.if.then152_crit_edge
  %reg_rules153 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %reg_rules153 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2412000, ptr %reg_rules153, align 4
  %end_freq_khz159 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %end_freq_khz159 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2413000, ptr %end_freq_khz159, align 8
  %max_bandwidth_khz161 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 1, i32 1
  %40 = ptrtoint ptr %max_bandwidth_khz161 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1000, ptr %max_bandwidth_khz161, align 4
  %power_rule162 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 1, i32 2
  %41 = ptrtoint ptr %power_rule162 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 600, ptr %power_rule162, align 32
  %max_eirp165 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 1, i32 3
  %42 = ptrtoint ptr %max_eirp165 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2200, ptr %max_eirp165, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then152, %for.end.if.end166_crit_edge
  %valid_rules.3 = phi i32 [ %valid_rules.2, %for.end.if.end166_crit_edge ], [ 1, %if.then152 ]
  %n_reg_rules = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %n_reg_rules to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %valid_rules.3, ptr %n_reg_rules, align 8
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %valid_rules.3, i32 96) #8
  %45 = extractvalue { i32, i1 } %44, 1
  %46 = extractvalue { i32, i1 } %44, 0
  %spec.select.i297 = or i32 %46, 20
  %retval.0.i298 = select i1 %45, i32 -1, i32 %spec.select.i297
  %call168 = tail call ptr @kmemdup(ptr noundef nonnull %call9.i.i, i32 noundef %retval.0.i298, i32 noundef 3264) #8
  %tobool169.not = icmp eq ptr %call168, null
  %spec.select299 = select i1 %tobool169.not, ptr inttoptr (i32 -12 to ptr), ptr %call168
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end166, %if.end19.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select299, %if.end166 ], [ inttoptr (i32 -12 to ptr), %if.end19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reg_query_regdb_wmm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwl_nvm_fixups(i32 noundef %hw_id, i32 noundef %section, ptr noundef %data, i32 noundef %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %section)
  %cmp = icmp ne i32 %section, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 21761, i32 %hw_id)
  %cmp1 = icmp ne i32 %hw_id, 21761
  %or.cond.not = or i1 %cmp1, %cmp
  %tobool.not = icmp eq ptr %data, null
  %or.cond10 = or i1 %or.cond.not, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp4 = icmp ult i32 %len, 5
  %0 = or i1 %or.cond10, %cmp4
  br i1 %0, label %entry.if.end_crit_edge, label %land.lhs.true5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true5:                                   ; preds = %entry
  %arrayidx = getelementptr i8, ptr %data, i32 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %land.lhs.true5.if.end_crit_edge, label %if.then

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr i8, ptr %data, i32 3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 34, ptr %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_read_external_nvm(ptr nocapture noundef readonly %trans, ptr noundef %nvm_file_name, ptr nocapture noundef %nvm_sections) local_unnamed_addr #0 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #8
  %0 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !102
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %2, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_read_external_nvm, ptr noundef nonnull @.str.3) #8
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 8
  %nvm_type = getelementptr inbounds %struct.iwl_cfg, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %nvm_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nvm_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  %. = select i1 %cmp.not, i32 8188, i32 7000
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %call = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef %nvm_file_name, ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  br i1 %tobool.not, label %do.end17, label %do.end9

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef %nvm_file_name, i32 noundef %call) #8
  br label %cleanup

do.end17:                                         ; preds = %entry
  %11 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw_entry, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %10, ptr noundef nonnull @.str.5, ptr noundef %nvm_file_name, i32 noundef %14) #8
  %15 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw_entry, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %18)
  %cmp22 = icmp ugt i32 %18, 16384
  br i1 %cmp22, label %do.end27, label %if.end31

do.end27:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.6) #8
  br label %out

if.end31:                                         ; preds = %do.end17
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp35 = icmp ugt i32 %18, 16
  br i1 %cmp35, label %land.lhs.true, label %if.end31.if.end69_crit_edge

if.end31.if.end69_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end31
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414287402, i32 %24)
  %cmp36 = icmp eq i32 %24, 1414287402
  br i1 %cmp36, label %land.lhs.true37, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true37:                                  ; preds = %land.lhs.true
  %arrayidx38 = getelementptr i32, ptr %22, i32 1
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 709711438, i32 %26)
  %cmp39 = icmp eq i32 %26, 709711438
  br i1 %cmp39, label %if.then40, label %land.lhs.true37.if.end69_crit_edge

land.lhs.true37.if.end69_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then40:                                        ; preds = %land.lhs.true37
  %add.ptr42 = getelementptr i8, ptr %22, i32 16
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %arrayidx48 = getelementptr i32, ptr %22, i32 2
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx48, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %28, ptr noundef nonnull @.str.7, i32 noundef %31) #8
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %arrayidx56 = getelementptr i32, ptr %22, i32 3
  %34 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx56, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %33, ptr noundef nonnull @.str.8, i32 noundef %36) #8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %37 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %40)
  %cmp59 = icmp eq i32 %40, 16
  br i1 %cmp59, label %land.lhs.true60, label %if.then40.if.end69_crit_edge

if.then40.if.end69_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true60:                                  ; preds = %if.then40
  %hw_rev_step = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 11
  %41 = ptrtoint ptr %hw_rev_step to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_rev_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp61 = icmp eq i32 %42, 2
  br i1 %cmp61, label %land.lhs.true62, label %land.lhs.true60.if.end69_crit_edge

land.lhs.true60.if.end69_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true62:                                  ; preds = %land.lhs.true60
  %43 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx48, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3658, i32 %45)
  %cmp64 = icmp ult i32 %45, 3658
  br i1 %cmp64, label %land.lhs.true62.out_crit_edge, label %land.lhs.true62.if.end69_crit_edge

land.lhs.true62.if.end69_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true62.out_crit_edge:                    ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end69:                                         ; preds = %land.lhs.true62.if.end69_crit_edge, %land.lhs.true60.if.end69_crit_edge, %if.then40.if.end69_crit_edge, %land.lhs.true37.if.end69_crit_edge, %land.lhs.true.if.end69_crit_edge, %if.end31.if.end69_crit_edge
  %file_sec.0 = phi ptr [ %add.ptr42, %land.lhs.true62.if.end69_crit_edge ], [ %add.ptr42, %land.lhs.true60.if.end69_crit_edge ], [ %add.ptr42, %if.then40.if.end69_crit_edge ], [ %22, %land.lhs.true37.if.end69_crit_edge ], [ %22, %land.lhs.true.if.end69_crit_edge ], [ %22, %if.end31.if.end69_crit_edge ]
  %data70257 = getelementptr inbounds %struct.anon.134, ptr %file_sec.0, i32 0, i32 2
  %cmp71258 = icmp ugt ptr %data70257, %add.ptr
  br i1 %cmp71258, label %if.end69.do.end76_crit_edge, label %if.end80.lr.ph

if.end69.do.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76

if.end80.lr.ph:                                   ; preds = %if.end69
  %hw_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 13
  br label %if.end80

do.end76:                                         ; preds = %iwl_nvm_fixups.exit.do.end76_crit_edge, %if.end69.do.end76_crit_edge
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %47, i32 noundef 0, ptr noundef nonnull @.str.9) #8
  br label %out

if.end80:                                         ; preds = %iwl_nvm_fixups.exit.if.end80_crit_edge, %if.end80.lr.ph
  %data70261 = phi ptr [ %data70257, %if.end80.lr.ph ], [ %data70, %iwl_nvm_fixups.exit.if.end80_crit_edge ]
  %file_sec.1259 = phi ptr [ %file_sec.0, %if.end80.lr.ph ], [ %add.ptr132, %iwl_nvm_fixups.exit.if.end80_crit_edge ]
  %48 = ptrtoint ptr %file_sec.1259 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %file_sec.1259, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool81.not = icmp eq i16 %49, 0
  br i1 %tobool81.not, label %land.lhs.true82, label %if.end80.if.end85_crit_edge

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.lhs.true82:                                  ; preds = %if.end80
  %word2 = getelementptr inbounds %struct.anon.134, ptr %file_sec.1259, i32 0, i32 1
  %50 = ptrtoint ptr %word2 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %word2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool83.not = icmp eq i16 %51, 0
  br i1 %tobool83.not, label %land.lhs.true82.out_crit_edge, label %land.lhs.true82.if.end85_crit_edge

land.lhs.true82.if.end85_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.lhs.true82.out_crit_edge:                    ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end85:                                         ; preds = %land.lhs.true82.if.end85_crit_edge, %if.end80.if.end85_crit_edge
  %52 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfg, align 8
  %nvm_type87 = getelementptr inbounds %struct.iwl_cfg, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %nvm_type87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nvm_type87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp88.not = icmp eq i32 %55, 1
  br i1 %cmp88.not, label %if.else95, label %if.then89

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %56 = and i16 %49, -253
  %57 = call i16 @llvm.bswap.i16(i16 %56)
  %58 = shl nuw nsw i16 %57, 4
  %mul91 = zext i16 %58 to i32
  %word292 = getelementptr inbounds %struct.anon.134, ptr %file_sec.1259, i32 0, i32 1
  %59 = ptrtoint ptr %word292 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %word292, align 2
  %61 = lshr i16 %60, 4
  %62 = and i16 %61, 15
  br label %if.end108

if.else95:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %word296 = getelementptr inbounds %struct.anon.134, ptr %file_sec.1259, i32 0, i32 1
  %63 = ptrtoint ptr %word296 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %word296, align 2
  %65 = call i16 @llvm.bswap.i16(i16 %64)
  %conv97 = zext i16 %65 to i32
  %and98 = shl nuw nsw i32 %conv97, 8
  %shl = and i32 %and98, 65280
  %66 = lshr i32 %conv97, 8
  %or = or i32 %shl, %66
  %mul103 = shl nuw nsw i32 %or, 2
  %67 = call i16 @llvm.bswap.i16(i16 %49)
  %68 = lshr i16 %67, 4
  br label %if.end108

if.end108:                                        ; preds = %if.else95, %if.then89
  %section_size.0 = phi i32 [ %mul91, %if.then89 ], [ %mul103, %if.else95 ]
  %section_id.0 = phi i16 [ %62, %if.then89 ], [ %68, %if.else95 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %section_size.0, i32 %.)
  %cmp109 = icmp sgt i32 %section_size.0, %.
  br i1 %cmp109, label %do.end115, label %if.end119

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %section_size.0) #8
  br label %out

if.end119:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section_size.0)
  %tobool120.not = icmp eq i32 %section_size.0, 0
  br i1 %tobool120.not, label %do.end125, label %if.end129

do.end125:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %72, i32 noundef 0, ptr noundef nonnull @.str.11) #8
  br label %out

if.end129:                                        ; preds = %if.end119
  %add.ptr132 = getelementptr i8, ptr %data70261, i32 %section_size.0
  %cmp133 = icmp ugt ptr %add.ptr132, %add.ptr
  br i1 %cmp133, label %do.end139, label %if.end143

do.end139:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %74, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %section_size.0) #8
  br label %out

if.end143:                                        ; preds = %if.end129
  %conv144 = zext i16 %section_id.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %section_id.0)
  %cmp145 = icmp ugt i16 %section_id.0, 12
  br i1 %cmp145, label %do.end158, label %if.end174, !prof !101

do.end158:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1669, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv144) #8
  br label %out

if.end174:                                        ; preds = %if.end143
  %call177 = call ptr @kmemdup(ptr noundef %data70261, i32 noundef %section_size.0, i32 noundef 3264) #8
  %tobool178.not = icmp eq ptr %call177, null
  br i1 %tobool178.not, label %if.end174.out_crit_edge, label %if.end180

if.end174.out_crit_edge:                          ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end180:                                        ; preds = %if.end174
  %75 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hw_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %section_id.0)
  %cmp.i = icmp ne i16 %section_id.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 21761, i32 %76)
  %cmp1.i = icmp ne i32 %76, 21761
  %or.cond.not.i = or i1 %cmp.i, %cmp1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %section_size.0)
  %cmp4.i = icmp ult i32 %section_size.0, 5
  %77 = or i1 %cmp4.i, %or.cond.not.i
  br i1 %77, label %if.end180.iwl_nvm_fixups.exit_crit_edge, label %land.lhs.true5.i

if.end180.iwl_nvm_fixups.exit_crit_edge:          ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_nvm_fixups.exit

land.lhs.true5.i:                                 ; preds = %if.end180
  %arrayidx.i = getelementptr i8, ptr %call177, i32 4
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i, align 1
  %80 = and i8 %79, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool6.not.i = icmp eq i8 %80, 0
  br i1 %tobool6.not.i, label %land.lhs.true5.i.iwl_nvm_fixups.exit_crit_edge, label %if.then.i

land.lhs.true5.i.iwl_nvm_fixups.exit_crit_edge:   ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_nvm_fixups.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i = getelementptr i8, ptr %call177, i32 3
  %81 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 34, ptr %arrayidx7.i, align 1
  br label %iwl_nvm_fixups.exit

iwl_nvm_fixups.exit:                              ; preds = %if.then.i, %land.lhs.true5.i.iwl_nvm_fixups.exit_crit_edge, %if.end180.iwl_nvm_fixups.exit_crit_edge
  %arrayidx182 = getelementptr %struct.iwl_nvm_section, ptr %nvm_sections, i32 %conv144
  %data183 = getelementptr %struct.iwl_nvm_section, ptr %nvm_sections, i32 %conv144, i32 1
  %82 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data183, align 4
  call void @kfree(ptr noundef %83) #8
  %84 = ptrtoint ptr %data183 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call177, ptr %data183, align 4
  %conv187 = trunc i32 %section_size.0 to i16
  %85 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv187, ptr %arrayidx182, align 4
  %data70 = getelementptr inbounds %struct.anon.134, ptr %add.ptr132, i32 0, i32 2
  %cmp71 = icmp ugt ptr %data70, %add.ptr
  br i1 %cmp71, label %iwl_nvm_fixups.exit.do.end76_crit_edge, label %iwl_nvm_fixups.exit.if.end80_crit_edge

iwl_nvm_fixups.exit.if.end80_crit_edge:           ; preds = %iwl_nvm_fixups.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

iwl_nvm_fixups.exit.do.end76_crit_edge:           ; preds = %iwl_nvm_fixups.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76

out:                                              ; preds = %if.end174.out_crit_edge, %do.end158, %do.end139, %do.end125, %do.end115, %land.lhs.true82.out_crit_edge, %do.end76, %land.lhs.true62.out_crit_edge, %do.end27
  %ret.0 = phi i32 [ -22, %do.end27 ], [ -22, %do.end76 ], [ -22, %do.end115 ], [ -22, %do.end139 ], [ -22, %do.end158 ], [ -22, %do.end125 ], [ -14, %land.lhs.true62.out_crit_edge ], [ -12, %if.end174.out_crit_edge ], [ 0, %land.lhs.true82.out_crit_edge ]
  %86 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %87) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end9
  %retval.0 = phi i32 [ %call, %do.end9 ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_get_nvm(ptr noundef %trans, ptr noundef %fw) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_nvm_get_info, align 4
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #8
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #8
  %1 = getelementptr inbounds i8, ptr %hcmd, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !102
  %3 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd, ptr %hcmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %hcmd, i32 1
  %_rx_page_addr = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 2
  %_rx_page_order = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 3
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 4
  %4 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %flags, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3074, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %len, align 4
  %arrayinit.start3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayinit.start3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.start3, align 2
  %arrayinit.end4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %9 = ptrtoint ptr %arrayinit.end4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %arrayinit.end4, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 7, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i = icmp ne i32 %12, 0
  %call10 = call i32 @iwl_trans_send_cmd(ptr noundef %trans, ptr noundef nonnull %hcmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 1
  %cond = select i1 %tobool.i, i32 468, i32 128
  %14 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resp_pkt, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %15, align 1
  %18 = and i32 %17, -12648448
  %19 = call i32 @llvm.bswap.i32(i32 %18) #8
  %sub.i = add nsw i32 %19, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %cond)
  %cmp.not = icmp eq i32 %sub.i, %cond
  br i1 %cmp.not, label %if.end40, label %do.end, !prof !103

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1729, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %sub.i) #8
  br label %out

if.end40:                                         ; preds = %if.end
  %data42 = getelementptr inbounds %struct.iwl_rx_packet, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %data42 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %data42, align 1
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool44.not = icmp eq i32 %22, 0
  br i1 %tobool44.not, label %if.end40.if.end58_crit_edge, label %do.end55

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end55:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %24, ptr noundef nonnull @.str.15) #8
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %if.end40.if.end58_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 7032) #11
  %tobool61.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool61.not, label %if.end58.out_crit_edge, label %if.end63

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end63:                                         ; preds = %if.end58
  call fastcc void @iwl_set_hw_address_from_csr(ptr noundef %trans, ptr noundef nonnull %call7.i.i)
  %hw_addr = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_addr, align 4
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end63.do.end70_crit_edge

if.end63.do.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

is_valid_ether_addr.exit:                         ; preds = %if.end63
  %add.ptr.i.i = getelementptr %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i, align 8
  %conv.i.i = zext i16 %30 to i32
  %or.i.i = or i32 %27, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end70_crit_edge, label %do.end78

is_valid_ether_addr.exit.do.end70_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

do.end70:                                         ; preds = %is_valid_ether_addr.exit.do.end70_crit_edge, %if.end63.do.end70_crit_edge
  %dev71 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %31 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev71, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %32, i32 noundef 0, ptr noundef nonnull @.str.16) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %out

do.end78:                                         ; preds = %is_valid_ether_addr.exit
  %dev79 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %33 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev79, align 8
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %34, ptr noundef nonnull @.str.17, ptr noundef %hw_addr) #8
  %nvm_version = getelementptr inbounds %struct.iwl_rx_packet, ptr %15, i32 1, i32 1
  %35 = ptrtoint ptr %nvm_version to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %nvm_version, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %conv = zext i16 %37 to i32
  %nvm_version85 = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 22
  %38 = ptrtoint ptr %nvm_version85 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv, ptr %nvm_version85, align 8
  %n_hw_addrs = getelementptr inbounds %struct.iwl_nvm_get_info_general, ptr %data42, i32 0, i32 3
  %39 = ptrtoint ptr %n_hw_addrs to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %n_hw_addrs, align 1
  %conv87 = zext i8 %40 to i32
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv87, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp90 = icmp eq i8 %40, 0
  br i1 %cmp90, label %do.end96, label %do.end78.if.end102_crit_edge

do.end78.if.end102_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

do.end96:                                         ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev79, align 8
  %.lobit = lshr exact i32 %22, 24
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %43, ptr noundef nonnull @.str.18, i32 noundef %.lobit) #8
  br label %if.end102

if.end102:                                        ; preds = %do.end96, %do.end78.if.end102_crit_edge
  %mac_sku = getelementptr inbounds %struct.iwl_rx_packet, ptr %15, i32 2
  %44 = ptrtoint ptr %mac_sku to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %mac_sku, align 1
  %46 = lshr i32 %45, 24
  %sku_cap_11ac_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 11
  %47 = trunc i32 %46 to i8
  %48 = lshr i8 %47, 3
  %49 = and i8 %48, 1
  %50 = ptrtoint ptr %sku_cap_11ac_enable to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %sku_cap_11ac_enable, align 1
  %sku_cap_11n_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 10
  %51 = lshr i8 %47, 2
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %sku_cap_11n_enable to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %sku_cap_11n_enable, align 2
  %sku_cap_11ax_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 12
  %54 = lshr i8 %47, 4
  %55 = and i8 %54, 1
  %56 = ptrtoint ptr %sku_cap_11ax_enable to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %sku_cap_11ax_enable, align 4
  %sku_cap_band_24ghz_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 8
  %57 = and i8 %47, 1
  %58 = ptrtoint ptr %sku_cap_band_24ghz_enable to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %sku_cap_band_24ghz_enable, align 8
  %sku_cap_band_52ghz_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 9
  %59 = lshr i8 %47, 1
  %60 = and i8 %59, 1
  %61 = ptrtoint ptr %sku_cap_band_52ghz_enable to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %sku_cap_band_52ghz_enable, align 1
  %sku_cap_mimo_disabled = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 15
  %62 = lshr i8 %47, 5
  %63 = and i8 %62, 1
  %64 = ptrtoint ptr %sku_cap_mimo_disabled to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %sku_cap_mimo_disabled, align 1
  %phy_sku = getelementptr inbounds %struct.iwl_rx_packet, ptr %15, i32 2, i32 1
  %65 = ptrtoint ptr %phy_sku to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %phy_sku, align 1
  %67 = lshr i32 %66, 24
  %conv145 = trunc i32 %67 to i8
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 20
  %68 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv145, ptr %valid_tx_ant, align 1
  %rx_chains = getelementptr inbounds %struct.iwl_rx_packet, ptr %15, i32 3
  %69 = ptrtoint ptr %rx_chains to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %rx_chains, align 1
  %71 = lshr i32 %70, 24
  %conv147 = trunc i32 %71 to i8
  %valid_rx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 21
  %72 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv147, ptr %valid_rx_ant, align 2
  %regulatory = getelementptr inbounds %struct.iwl_rx_packet, ptr %15, i32 3, i32 1
  %73 = ptrtoint ptr %regulatory to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %regulatory, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool148.not = icmp eq i32 %74, 0
  br i1 %tobool148.not, label %if.end102.if.end154_crit_edge, label %land.lhs.true

if.end102.if.end154_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

land.lhs.true:                                    ; preds = %if.end102
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 8
  %75 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %_capa.i, align 4
  %77 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i242.not = icmp eq i32 %77, 0
  br i1 %tobool.i242.not, label %land.lhs.true.if.end154_crit_edge, label %if.then152

land.lhs.true.if.end154_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then152:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %lar_enabled153 = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 24
  %78 = ptrtoint ptr %lar_enabled153 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %lar_enabled153, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %land.lhs.true.if.end154_crit_edge, %if.end102.if.end154_crit_edge
  %sbands_flags.0 = phi i32 [ 1, %if.then152 ], [ 0, %land.lhs.true.if.end154_crit_edge ], [ 0, %if.end102.if.end154_crit_edge ]
  %channel_profile158 = getelementptr inbounds %struct.iwl_rx_packet, ptr %15, i32 4, i32 1
  %channel_profile161 = getelementptr inbounds %struct.iwl_rx_packet, ptr %15, i32 4
  %cond163 = select i1 %tobool.i, ptr %channel_profile158, ptr %channel_profile161
  %79 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %valid_tx_ant, align 1
  %valid_tx_ant166 = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 15
  %81 = ptrtoint ptr %valid_tx_ant166 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %valid_tx_ant166, align 4
  %and168239 = and i8 %82, %80
  %83 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %valid_rx_ant, align 2
  %valid_rx_ant172 = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 16
  %85 = ptrtoint ptr %valid_rx_ant172 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %valid_rx_ant172, align 1
  %and174240 = and i8 %86, %84
  call fastcc void @iwl_init_sbands(ptr noundef %trans, ptr noundef nonnull %call7.i.i, ptr noundef %cond163, i8 noundef zeroext %and168239, i8 noundef zeroext %and174240, i32 noundef %sbands_flags.0, i1 noundef zeroext %tobool.i, ptr noundef %fw)
  %87 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %_rx_page_addr, align 4
  %89 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %88, i32 noundef %90) #8
  br label %cleanup

out:                                              ; preds = %do.end70, %if.end58.out_crit_edge, %do.end
  %ret.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end70 ], [ inttoptr (i32 -12 to ptr), %if.end58.out_crit_edge ]
  %91 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %_rx_page_addr, align 4
  %93 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %92, i32 noundef %94) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end154, %if.then
  %retval.0 = phi ptr [ %13, %if.then ], [ %ret.0, %out ], [ %call7.i.i, %if.end154 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_set_hw_address_from_csr(ptr noundef %trans, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %mac_addr_from_csr = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %mac_addr_from_csr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %mac_addr_from_csr, align 4
  %bf.lshr = lshr i24 %bf.load, 8
  %bf.clear = and i24 %bf.lshr, 1023
  %narrow = add nuw nsw i24 %bf.clear, 8
  %add = zext i24 %narrow to i32
  %call = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef %add) #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %call)
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 8
  %mac_addr_from_csr2 = getelementptr inbounds %struct.iwl_cfg, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %mac_addr_from_csr2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %bf.load3 = load i24, ptr %mac_addr_from_csr2, align 4
  %bf.lshr4 = lshr i24 %bf.load3, 8
  %bf.clear5 = and i24 %bf.lshr4, 1023
  %narrow42 = add nuw nsw i24 %bf.clear5, 12
  %add7 = zext i24 %narrow42 to i32
  %call8 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef %add7) #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %call8)
  %hw_addr = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 1
  %mac_addr0.addr.sroa.0.0.extract.shift.i = lshr i32 %3, 24
  %mac_addr0.addr.sroa.0.0.extract.trunc.i = trunc i32 %mac_addr0.addr.sroa.0.0.extract.shift.i to i8
  %mac_addr0.addr.sroa.2.0.extract.shift.i = lshr i32 %3, 16
  %mac_addr0.addr.sroa.2.0.extract.trunc.i = trunc i32 %mac_addr0.addr.sroa.2.0.extract.shift.i to i8
  %mac_addr0.addr.sroa.3.0.extract.shift.i = lshr i32 %3, 8
  %mac_addr0.addr.sroa.3.0.extract.trunc.i = trunc i32 %mac_addr0.addr.sroa.3.0.extract.shift.i to i8
  %mac_addr0.addr.sroa.4.0.extract.trunc.i = trunc i32 %3 to i8
  %mac_addr1.addr.sroa.0.0.extract.shift.i = lshr i32 %7, 24
  %mac_addr1.addr.sroa.0.0.extract.trunc.i = trunc i32 %mac_addr1.addr.sroa.0.0.extract.shift.i to i8
  %mac_addr1.addr.sroa.2.0.extract.shift.i = lshr i32 %7, 16
  %mac_addr1.addr.sroa.2.0.extract.trunc.i = trunc i32 %mac_addr1.addr.sroa.2.0.extract.shift.i to i8
  %8 = ptrtoint ptr %hw_addr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %mac_addr0.addr.sroa.4.0.extract.trunc.i, ptr %hw_addr, align 1
  %arrayidx3.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %mac_addr0.addr.sroa.3.0.extract.trunc.i, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %mac_addr0.addr.sroa.2.0.extract.trunc.i, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %mac_addr0.addr.sroa.0.0.extract.trunc.i, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %mac_addr1.addr.sroa.2.0.extract.trunc.i, ptr %arrayidx9.i, align 1
  %arrayidx11.i = getelementptr %struct.iwl_nvm_data, ptr %data, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %mac_addr1.addr.sroa.0.0.extract.trunc.i, ptr %arrayidx11.i, align 1
  %14 = load i32, ptr %hw_addr, align 4
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

is_valid_ether_addr.exit:                         ; preds = %entry
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx9.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %or.i.i = or i32 %14, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end_crit_edge, label %is_valid_ether_addr.exit.cleanup_crit_edge

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_valid_ether_addr.exit.if.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %is_valid_ether_addr.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg, align 8
  %mac_addr_from_csr13 = getelementptr inbounds %struct.iwl_cfg, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %mac_addr_from_csr13 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %bf.load14 = load i24, ptr %mac_addr_from_csr13, align 4
  %bf.lshr15 = lshr i24 %bf.load14, 8
  %bf.clear16 = and i24 %bf.lshr15, 1023
  %bf.cast17 = zext i24 %bf.clear16 to i32
  %call19 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef %bf.cast17) #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %call19)
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 8
  %mac_addr_from_csr21 = getelementptr inbounds %struct.iwl_cfg, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %mac_addr_from_csr21 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 3)
  %bf.load22 = load i24, ptr %mac_addr_from_csr21, align 4
  %bf.lshr23 = lshr i24 %bf.load22, 8
  %bf.clear24 = and i24 %bf.lshr23, 1023
  %narrow43 = add nuw nsw i24 %bf.clear24, 4
  %add26 = zext i24 %narrow43 to i32
  %call27 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef %add26) #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %call27)
  %mac_addr0.addr.sroa.0.0.extract.shift.i44 = lshr i32 %21, 24
  %mac_addr0.addr.sroa.0.0.extract.trunc.i45 = trunc i32 %mac_addr0.addr.sroa.0.0.extract.shift.i44 to i8
  %mac_addr0.addr.sroa.2.0.extract.shift.i46 = lshr i32 %21, 16
  %mac_addr0.addr.sroa.2.0.extract.trunc.i47 = trunc i32 %mac_addr0.addr.sroa.2.0.extract.shift.i46 to i8
  %mac_addr0.addr.sroa.3.0.extract.shift.i48 = lshr i32 %21, 8
  %mac_addr0.addr.sroa.3.0.extract.trunc.i49 = trunc i32 %mac_addr0.addr.sroa.3.0.extract.shift.i48 to i8
  %mac_addr0.addr.sroa.4.0.extract.trunc.i50 = trunc i32 %21 to i8
  %mac_addr1.addr.sroa.0.0.extract.shift.i51 = lshr i32 %25, 24
  %mac_addr1.addr.sroa.0.0.extract.trunc.i52 = trunc i32 %mac_addr1.addr.sroa.0.0.extract.shift.i51 to i8
  %mac_addr1.addr.sroa.2.0.extract.shift.i53 = lshr i32 %25, 16
  %mac_addr1.addr.sroa.2.0.extract.trunc.i54 = trunc i32 %mac_addr1.addr.sroa.2.0.extract.shift.i53 to i8
  %26 = ptrtoint ptr %hw_addr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %mac_addr0.addr.sroa.4.0.extract.trunc.i50, ptr %hw_addr, align 1
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %mac_addr0.addr.sroa.3.0.extract.trunc.i49, ptr %arrayidx3.i, align 1
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %mac_addr0.addr.sroa.2.0.extract.trunc.i47, ptr %arrayidx5.i, align 1
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %mac_addr0.addr.sroa.0.0.extract.trunc.i45, ptr %arrayidx7.i, align 1
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %mac_addr1.addr.sroa.2.0.extract.trunc.i54, ptr %arrayidx9.i, align 1
  %31 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %mac_addr1.addr.sroa.0.0.extract.trunc.i52, ptr %arrayidx11.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_init_sband_channels(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_ht_hw_capab(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_init_he_hw_capab(ptr noundef %trans, ptr noundef %data, ptr nocapture noundef %sband, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains, ptr noundef %fw) unnamed_addr #0 align 64 {
entry:
  %ht_cap.i = alloca %struct.ieee80211_sta_ht_cap, align 2
  %vht_cap.i = alloca %struct.ieee80211_sta_vht_cap, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iftype_data1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 10
  %0 = ptrtoint ptr %iftype_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iftype_data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end29, label %do.end, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 815, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.end29:                                         ; preds = %entry
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 2
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %do.end45 [
    i32 0, label %sw.bb
    i32 1, label %do.end29.sw.bb30_crit_edge
    i32 3, label %do.end29.sw.bb30_crit_edge89
  ]

do.end29.sw.bb30_crit_edge89:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

do.end29.sw.bb30_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

sw.bb:                                            ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %iftd = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 27
  br label %for.body.lr.ph

sw.bb30:                                          ; preds = %do.end29.sw.bb30_crit_edge, %do.end29.sw.bb30_crit_edge89
  %high = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 27, i32 1
  br label %for.body.lr.ph

do.end45:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 830, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.bb30, %sw.bb
  %iftype_data.0 = phi ptr [ %high, %sw.bb30 ], [ %iftd, %sw.bb ]
  %5 = call ptr @memcpy(ptr %iftype_data.0, ptr @iwl_he_capa, i32 136)
  %6 = ptrtoint ptr %iftype_data1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %iftype_data.0, ptr %iftype_data1, align 4
  %n_iftype_data = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 9
  %7 = ptrtoint ptr %n_iftype_data to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %n_iftype_data, align 4
  %and24131.i = and i8 %rx_chains, %tx_chains
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and24131.i)
  %cmp25.i = icmp eq i8 %and24131.i, 3
  %hw_rf_id.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 12
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 8, i32 1
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %iwl_nvm_fixup_sband_iftd.exit.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %iwl_nvm_fixup_sband_iftd.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 4
  %10 = and i16 %9, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  %11 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  %arrayidx7.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  %..i = select i1 %cmp.not.i, i8 24, i8 8
  %15 = or i8 %..i, %14
  store i8 %15, ptr %arrayidx7.i, align 1
  br i1 %tobool.not.i, label %if.end21.thread.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 9), align 4
  %tobool13.not.i = icmp eq ptr %16, null
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end21.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %phy_cap_info.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %phy_cap_info.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %phy_cap_info.i, align 1
  %19 = or i8 %18, 8
  store i8 %19, ptr %phy_cap_info.i, align 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then14.i, %land.lhs.true.i.if.end21.i_crit_edge
  br i1 %cmp25.i, label %if.end77.critedge.i, label %if.end21.i.if.end77.i_crit_edge

if.end21.i.if.end77.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

if.end21.thread.i:                                ; preds = %for.body
  br i1 %cmp25.i, label %if.then27.thread.i, label %if.then54.i

if.then27.thread.i:                               ; preds = %if.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx31134.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx31134.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx31134.i, align 1
  %22 = or i8 %21, 4
  store i8 %22, ptr %arrayidx31134.i, align 1
  %arrayidx38135.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1, i32 5
  %23 = ptrtoint ptr %arrayidx38135.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx38135.i, align 1
  %25 = or i8 %24, 9
  store i8 %25, ptr %arrayidx38135.i, align 1
  %arrayidx47.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1, i32 7
  br label %if.end77.sink.split.i

if.then54.i:                                      ; preds = %if.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx58.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx58.i, align 1
  %28 = and i8 %27, 127
  store i8 %28, ptr %arrayidx58.i, align 1
  %arrayidx65.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx65.i, align 1
  %31 = and i8 %30, -2
  store i8 %31, ptr %arrayidx65.i, align 1
  %arrayidx72.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1, i32 7
  br label %if.end77.sink.split.i

if.end77.critedge.i:                              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx31.c.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx31.c.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx31.c.i, align 1
  %34 = or i8 %33, 4
  store i8 %34, ptr %arrayidx31.c.i, align 1
  %arrayidx38.c.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1, i32 5
  br label %if.end77.sink.split.i

if.end77.sink.split.i:                            ; preds = %if.end77.critedge.i, %if.then54.i, %if.then27.thread.i
  %arrayidx38.c.sink140.i = phi ptr [ %arrayidx38.c.i, %if.end77.critedge.i ], [ %arrayidx72.i, %if.then54.i ], [ %arrayidx47.i, %if.then27.thread.i ]
  %.sink139.i = phi i8 [ 9, %if.end77.critedge.i ], [ 8, %if.then54.i ], [ 16, %if.then27.thread.i ]
  %35 = ptrtoint ptr %arrayidx38.c.sink140.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx38.c.sink140.i, align 1
  %37 = or i8 %36, %.sink139.i
  store i8 %37, ptr %arrayidx38.c.sink140.i, align 1
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end77.sink.split.i, %if.end21.i.if.end77.i_crit_edge
  %38 = ptrtoint ptr %hw_rf_id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_rf_id.i, align 8
  %and78.i = lshr i32 %39, 12
  %shr.i = and i32 %and78.i, 4095
  %40 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %shr.i, label %if.end77.i.sw.epilog.i_crit_edge [
    i32 269, label %if.end77.i.sw.bb.i_crit_edge
    i32 272, label %if.end77.i.sw.bb.i_crit_edge90
  ]

if.end77.i.sw.bb.i_crit_edge90:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end77.i.sw.bb.i_crit_edge:                     ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end77.i.sw.epilog.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end77.i.sw.bb.i_crit_edge, %if.end77.i.sw.bb.i_crit_edge90
  %arrayidx82.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 1, i32 9
  %41 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx82.i, align 1
  %43 = or i8 %42, 4
  store i8 %43, ptr %arrayidx82.i, align 1
  br i1 %tobool.not.i, label %if.then87.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then87.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = or i8 %42, 12
  %45 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx82.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then87.i, %sw.bb.i.sw.epilog.i_crit_edge, %if.end77.i.sw.epilog.i_crit_edge
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %48 = and i32 %47, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i, label %sw.epilog.i.if.end104.i_crit_edge, label %if.then96.i

sw.epilog.i.if.end104.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

if.then96.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx100.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 1, i32 1, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx100.i, align 1
  %51 = or i8 %50, 16
  store i8 %51, ptr %arrayidx100.i, align 1
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then96.i, %sw.epilog.i.if.end104.i_crit_edge
  %52 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %55)
  %cmp105.i = icmp ne i32 %55, 18
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %brmerge.i = select i1 %cmp105.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge.i, label %if.end104.i.iwl_nvm_fixup_sband_iftd.exit_crit_edge, label %if.then109.i

if.end104.i.iwl_nvm_fixup_sband_iftd.exit_crit_edge: ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_nvm_fixup_sband_iftd.exit

if.then109.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  %vendor_elems.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 4
  %56 = ptrtoint ptr %vendor_elems.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @iwl_vendor_caps, ptr %vendor_elems.i, align 4
  %len.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.0, i32 %i.085, i32 4, i32 1
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %len.i, align 4
  br label %iwl_nvm_fixup_sband_iftd.exit

iwl_nvm_fixup_sband_iftd.exit:                    ; preds = %if.then109.i, %if.end104.i.iwl_nvm_fixup_sband_iftd.exit_crit_edge
  %inc = add nuw nsw i32 %i.085, 1
  %58 = ptrtoint ptr %n_iftype_data to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %n_iftype_data, align 4
  %conv = zext i16 %59 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %iwl_nvm_fixup_sband_iftd.exit.for.body_crit_edge, label %for.end

iwl_nvm_fixup_sband_iftd.exit.for.body_crit_edge: ; preds = %iwl_nvm_fixup_sband_iftd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %iwl_nvm_fixup_sband_iftd.exit
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %ht_cap.i) #8
  %60 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap.i, i32 0, i32 3
  %61 = call ptr @memset(ptr %ht_cap.i, i32 255, i32 22)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vht_cap.i) #8
  %62 = call ptr @memset(ptr %vht_cap.i, i32 0, i32 16)
  %63 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp.not.i81 = icmp eq i32 %64, 3
  br i1 %cmp.not.i81, label %if.end.i, label %for.end.iwl_init_he_6ghz_capa.exit_crit_edge

for.end.iwl_init_he_6ghz_capa.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_init_he_6ghz_capa.exit

if.end.i:                                         ; preds = %for.end
  %65 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap.i, i32 0, i32 1
  call void @iwl_init_ht_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef nonnull %ht_cap.i, i32 noundef 1, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains) #8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 2, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i82 = icmp eq i8 %67, 0
  br i1 %tobool.not.i82, label %do.end.i, label %if.end.i.if.end16.i_crit_edge, !prof !101

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 711, i32 noundef 9, ptr noundef null) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i, %if.end.i.if.end16.i_crit_edge
  call fastcc void @iwl_init_vht_hw_capab(ptr noundef %trans, ptr noundef %data, ptr noundef nonnull %vht_cap.i, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains) #8
  %68 = ptrtoint ptr %vht_cap.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vht_cap.i, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool24.not.i = icmp eq i8 %69, 0
  br i1 %tobool24.not.i, label %do.end42.i, label %if.end16.i.u16_encode_bits.exit.i_crit_edge, !prof !101

if.end16.i.u16_encode_bits.exit.i_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u16_encode_bits.exit.i

do.end42.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 713, i32 noundef 9, ptr noundef null) #8
  br label %u16_encode_bits.exit.i

u16_encode_bits.exit.i:                           ; preds = %do.end42.i, %if.end16.i.u16_encode_bits.exit.i_crit_edge
  %70 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %60, align 2
  %72 = and i8 %71, 7
  %conv8.i.i = zext i8 %72 to i16
  %cap.i = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap.i, i32 0, i32 1
  %73 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cap.i, align 4
  %75 = lshr i32 %74, 20
  %76 = trunc i32 %75 to i16
  %conv8.i136.i = and i16 %76, 56
  %.tr.i = trunc i32 %74 to i16
  %77 = shl i16 %.tr.i, 6
  %conv8.i148.i = and i16 %77, 192
  %and.i = lshr i32 %74, 16
  %78 = trunc i32 %and.i to i16
  %79 = and i16 %78, 8192
  %80 = and i16 %78, 4096
  %or64124.i = or i16 %conv8.i148.i, %conv8.i.i
  %or72125.i = or i16 %or64124.i, %79
  %81 = or i16 %or72125.i, %80
  %82 = or i16 %81, %conv8.i136.i
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 8
  %conv93.i = zext i16 %82 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %84, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_init_he_6ghz_capa, ptr noundef nonnull @.str.24, i32 noundef %conv93.i) #8
  %85 = ptrtoint ptr %iftype_data1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iftype_data1, align 4
  %87 = ptrtoint ptr %n_iftype_data to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %n_iftype_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp98152.not.i = icmp eq i16 %88, 0
  br i1 %cmp98152.not.i, label %u16_encode_bits.exit.i.iwl_init_he_6ghz_capa.exit_crit_edge, label %for.body.lr.ph.i

u16_encode_bits.exit.i.iwl_init_he_6ghz_capa.exit_crit_edge: ; preds = %u16_encode_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_init_he_6ghz_capa.exit

for.body.lr.ph.i:                                 ; preds = %u16_encode_bits.exit.i
  %89 = call i16 @llvm.bswap.i16(i16 %82) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0153.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %he_6ghz_capa100.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %86, i32 %i.0153.i, i32 2
  %90 = ptrtoint ptr %he_6ghz_capa100.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 %89, ptr %he_6ghz_capa100.i, align 1
  %inc.i = add nuw nsw i32 %i.0153.i, 1
  %91 = ptrtoint ptr %n_iftype_data to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %n_iftype_data, align 4
  %conv97.i = zext i16 %92 to i32
  %cmp98.i = icmp ult i32 %inc.i, %conv97.i
  br i1 %cmp98.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.iwl_init_he_6ghz_capa.exit_crit_edge

for.body.i.iwl_init_he_6ghz_capa.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_init_he_6ghz_capa.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

iwl_init_he_6ghz_capa.exit:                       ; preds = %for.body.i.iwl_init_he_6ghz_capa.exit_crit_edge, %u16_encode_bits.exit.i.iwl_init_he_6ghz_capa.exit_crit_edge, %for.end.iwl_init_he_6ghz_capa.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vht_cap.i) #8
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %ht_cap.i) #8
  br label %cleanup

cleanup:                                          ; preds = %iwl_init_he_6ghz_capa.exit, %do.end45, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_init_vht_hw_capab(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %data, ptr nocapture noundef %vht_cap, i8 noundef zeroext %tx_chains, i8 noundef zeroext %rx_chains) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %and.i = and i8 %rx_chains, 1
  %and3.i = lshr i8 %rx_chains, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i
  %and10.i = lshr i8 %rx_chains, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  %and.i126 = and i8 %tx_chains, 1
  %and3.i127 = lshr i8 %tx_chains, 1
  %and3.lobit.i128 = and i8 %and3.i127, 1
  %add.i129 = add nuw nsw i8 %and3.lobit.i128, %and.i126
  %and10.i130 = lshr i8 %tx_chains, 2
  %and10.lobit.i131 = and i8 %and10.i130, 1
  %add16.i132 = add nuw nsw i8 %add.i129, %and10.lobit.i131
  %2 = ptrtoint ptr %vht_cap to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %vht_cap, align 4
  %cap = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 1
  %3 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 58749216, ptr %cap, align 4
  %vht160_supported = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 25
  %4 = ptrtoint ptr %vht160_supported to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vht160_supported, align 2, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.store.select = select i1 %tobool.not, i32 58749216, i32 58749284
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.store.select, ptr %cap, align 4
  %vht_mu_mimo_supported = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %vht_mu_mimo_supported to i32
  call void @__asan_loadN_noabort(i32 %7, i32 3)
  %bf.load = load i24, ptr %vht_mu_mimo_supported, align 4
  %8 = and i24 %bf.load, 16
  %tobool5.not = icmp eq i24 %8, 0
  br i1 %tobool5.not, label %entry.if.end9_crit_edge, label %if.then6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or8 = or i32 %spec.store.select, 1048576
  %9 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or8, ptr %cap, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %ht_params = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ht_params, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load10 = load i8, ptr %11, align 1
  %13 = and i8 %bf.load10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.end9.if.end17_crit_edge, label %if.then14

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cap, align 4
  %or16 = or i32 %15, 16
  store i32 %or16, ptr %cap, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end9.if.end17_crit_edge
  %sku_cap_mimo_disabled = getelementptr inbounds %struct.iwl_nvm_data, ptr %data, i32 0, i32 15
  %16 = ptrtoint ptr %sku_cap_mimo_disabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sku_cap_mimo_disabled, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i132)
  %cmp134 = icmp ugt i8 %add16.i132, 1
  %cmp = select i1 %tobool18.not, i1 %cmp134, i1 false
  %18 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cap, align 4
  %. = select i1 %cmp, i32 128, i32 536870912
  %or26 = or i32 %19, %.
  store i32 %or26, ptr %cap, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 2) to i32))
  %20 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 2), align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %20, label %if.end17.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb40
    i32 3, label %sw.bb76
    i32 2, label %sw.bb73
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end17
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %22 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load28 = load i16, ptr %mq_rx_supported, align 4
  %25 = and i16 %bf.load28, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool32.not = icmp eq i16 %25, 0
  br i1 %tobool32.not, label %sw.bb.sw.epilog_crit_edge, label %if.then33

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then33:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %or35 = or i32 %or26, 2
  %26 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or35, ptr %cap, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end17
  %trans_cfg41 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %27 = ptrtoint ptr %trans_cfg41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trans_cfg41, align 4
  %mq_rx_supported42 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %mq_rx_supported42 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load43 = load i16, ptr %mq_rx_supported42, align 4
  %30 = and i16 %bf.load43, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool47.not = icmp eq i16 %30, 0
  br i1 %tobool47.not, label %do.end, label %if.then48

if.then48:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  %or50 = or i32 %or26, 2
  %31 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or50, ptr %cap, align 4
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 500, i32 noundef 9, ptr noundef nonnull @.str.25) #8
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %or75 = or i32 %or26, 1
  %32 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or75, ptr %cap, align 4
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %or78 = or i32 %or26, 2
  %33 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or78, ptr %cap, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb76, %sw.bb73, %do.end, %if.then48, %if.then33, %sw.bb.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge
  %vht_mcs = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 2
  %34 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1281, ptr %vht_mcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i)
  %cmp79135 = icmp eq i8 %add16.i, 1
  %not.tobool18.not = xor i1 %tobool18.not, true
  %cmp79 = select i1 %not.tobool18.not, i1 true, i1 %cmp79135
  br i1 %cmp79, label %sw.epilog.if.then85_crit_edge, label %lor.lhs.false

sw.epilog.if.then85_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

lor.lhs.false:                                    ; preds = %sw.epilog
  %35 = ptrtoint ptr %vht_mu_mimo_supported to i32
  call void @__asan_loadN_noabort(i32 %35, i32 3)
  %bf.load81 = load i24, ptr %vht_mu_mimo_supported, align 4
  %tobool84.not = icmp sgt i24 %bf.load81, -1
  br i1 %tobool84.not, label %lor.lhs.false.if.end93_crit_edge, label %lor.lhs.false.if.then85_crit_edge

lor.lhs.false.if.then85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

lor.lhs.false.if.end93_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then85:                                        ; preds = %lor.lhs.false.if.then85_crit_edge, %sw.epilog.if.then85_crit_edge
  %36 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cap, align 4
  %or87 = or i32 %37, 268435456
  store i32 %or87, ptr %cap, align 4
  %38 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -257, ptr %vht_mcs, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %lor.lhs.false.if.end93_crit_edge
  %39 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vht_mcs, align 4
  %tx_mcs_map = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %tx_mcs_map to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %tx_mcs_map, align 4
  %tx_highest = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %tx_highest to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_highest, align 2
  %44 = or i16 %43, 32
  store i16 %44, ptr %tx_highest, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !62, !64, !66, !67, !69, !71, !73, !75, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1233, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1387, i32 6}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1390, i32 6}
!6 = !{ptr @__func__.iwl_parse_nvm_mcc_info, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1393, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.iwl_read_external_nvm, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1563, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1579, i32 3}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1584, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1588, i32 3}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1607, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1608, i32 3}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1624, i32 4}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1648, i32 4}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1655, i32 4}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1661, i32 4}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1668, i32 7}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1727, i32 6}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1738, i32 3}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1750, i32 3}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1755, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1761, i32 3}
!42 = !{ptr @iwl_set_hw_address_family_8000.reserved_mac, !43, !"reserved_mac", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1015, i32 19}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1036, i32 3}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1052, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 904, i32 3}
!50 = !{ptr @__func__.iwl_init_channel_map, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 442, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @iwl_cfg80211_rates, !54, !"iwl_cfg80211_rates", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 122, i32 30}
!55 = !{ptr @iwl_he_capa, !56, !"iwl_he_capa", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 549, i32 49}
!57 = !{ptr @iwl_vendor_caps, !58, !"iwl_vendor_caps", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 538, i32 17}
!59 = !{ptr @__func__.iwl_init_he_6ghz_capa, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 731, i32 2}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 500, i32 4}
!64 = !{ptr @__func__.iwl_nvm_no_wide_in_5ghz, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 1109, i32 4}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @iwl_uhb_nvm_channels, !68, !"iwl_uhb_nvm_channels", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 98, i32 18}
!69 = !{ptr @iwl_ext_nvm_channels, !70, !"iwl_ext_nvm_channels", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 89, i32 18}
!71 = !{ptr @iwl_nvm_channels, !72, !"iwl_nvm_channels", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 80, i32 18}
!73 = !{ptr @__func__.iwl_nvm_print_channel_flags, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 271, i32 3}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-nvm-parse.c", i32 277, i32 2}
!78 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i8 0, i8 2}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{!"auto-init"}
!103 = !{!"branch_weights", i32 2000, i32 1}
