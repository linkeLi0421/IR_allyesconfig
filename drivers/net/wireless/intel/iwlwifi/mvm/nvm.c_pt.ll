; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/nvm.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_nvm_access_cmd = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%union.anon.136 = type { %struct.mvm_statistics_rx_v3 }
%struct.mvm_statistics_rx_v3 = type { %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_non_phy_v3, %struct.mvm_statistics_rx_ht_phy_v1 }
%struct.mvm_statistics_rx_phy_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_non_phy_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_ht_phy_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.137 = type { i64, i64, i64, i64 }
%union.anon.138 = type { [32 x %struct.iwl_mvm_dqa_txq_info] }
%struct.iwl_mvm_dqa_txq_info = type { i8, i8, i8, i8, i16, [9 x i32], i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.141, %struct.anon.146, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.140], i32, i32, i32, [6 x i32] }
%struct.anon.140 = type { [15 x i32], i32 }
%struct.anon.141 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.145 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.iwl_fwrt_dump_data = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.145 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.146 = type { %struct.delayed_work, i32, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.iwl_rx_phy_info = type <{ i8, i8, i8, i8, i32, i64, i32, i16, i16, [8 x i32], i32, i32, i8, i8, i16 }>
%struct.iwl_mvm_int_sta = type { i32, i32, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.iwl_mvm_frame_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.iwl_mvm_phy_ctxt = type { i16, i16, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_bt_coex_profile_notif = type { [4 x i32], i32, i32, i32, i32, i32, i8, i8, i16 }
%struct.iwl_bt_coex_ci_cmd = type <{ i64, i32, i64, i32 }>
%struct.iwl_mvm_tt_mgmt = type { %struct.delayed_work, i8, i32, i32, %struct.iwl_tt_params, i8 }
%struct.iwl_tt_params = type { i32, i32, i32, i32, i32, i32, i32, [6 x %struct.iwl_tt_tx_backoff], i8 }
%struct.iwl_tt_tx_backoff = type { i32, i32 }
%struct.iwl_mvm_thermal_device = type { [8 x i16], [8 x i8], ptr }
%struct.iwl_mvm_cooling_device = type { i32, ptr }
%struct.iwl_mvm_tcm = type { %struct.delayed_work, %struct.spinlock, i32, i32, i32, i8, [4 x %struct.iwl_mvm_tcm_mac], %struct.anon.150 }
%struct.iwl_mvm_tcm_mac = type { %struct.anon.147, %struct.anon.148, %struct.anon.149, i8 }
%struct.anon.147 = type { [4 x i32], i32 }
%struct.anon.148 = type { [4 x i32], i32, i32 }
%struct.anon.149 = type { i64, %struct.ewma_rate, i8 }
%struct.ewma_rate = type { i32 }
%struct.anon.150 = type { i32, [4 x i32], [4 x i32], [6 x i32], i32, [4 x i8], [4 x i8] }
%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.anon.151 = type { %struct.delayed_work, i32, i8, %struct.anon.152 }
%struct.anon.152 = type { i8, i8, i8, %struct.cfg80211_chan_def, ptr, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.153 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.154, %struct.list_head }
%struct.anon.154 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.155 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_nvm_access_resp = type { i16, i16, i16, i16, [0 x i8] }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.139, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.139 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.118 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.118 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_mcc_update_cmd = type { i16, i8, i8, i32, [20 x i8] }
%struct.iwl_mcc_update_resp = type { i32, i16, i16, i16, i16, i8, [3 x i8], i32, [0 x i32] }
%struct.iwl_mcc_update_resp_v3 = type { i32, i16, i8, i8, i16, i16, i32, [0 x i32] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_mcc_chub_notif = type { i16, i8, i8 }

@__func__.iwl_mvm_load_nvm_to_nic = private unnamed_addr constant [24 x i8] c"iwl_mvm_load_nvm_to_nic\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"'Write to NVM\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iwl_mvm_send_cmd failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@iwl_nvm_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/nvm.c\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwl_nvm_init = private unnamed_addr constant [13 x i8] c"iwl_nvm_init\00", align 1
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Read from NVM\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OTP is blank\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvm version = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@iwl_mvm_update_mcc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_update_mcc = private unnamed_addr constant [19 x i8] c"iwl_mvm_update_mcc\00", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"send MCC update to FW with '%c%c' src = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"MCC response status: 0x%x. new MCC: 0x%x ('%c%c') n_chans: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Conflict between TLV & NVM regarding enabling LAR (TLV = %s NVM =%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__func__.iwl_mvm_rx_chub_update_mcc = private unnamed_addr constant [27 x i8] c"iwl_mvm_rx_chub_update_mcc\00", align 1
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Ignore mcc update while associated\0A\00", [60 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_chub_update_mcc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RX: received chub update mcc cmd (mcc '%s' src %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SAR WGDS is disabled or error received (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SAR WGDS: geo profile %d is configured\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"NVM access write command failed for section %u (status = 0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"EEPROM size is too small for NVM\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.iwl_nvm_read_section = private unnamed_addr constant [21 x i8] c"iwl_nvm_read_section\00", align 1
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Cannot read NVM from section %d offset %d, length %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NVM section %d read completed\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.iwl_nvm_read_chunk = private unnamed_addr constant [19 x i8] c"iwl_nvm_read_chunk\00", align 1
@.str.19 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"NVM access command failed on offset 0x%x since that section size is multiple 2K\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"NVM access command failed with status %d (device: %s)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NVM ACCESS response with invalid offset %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't parse empty OTP/NVM sections\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Can't parse empty family 8000 OTP/NVM sections\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't parse mac_address, empty sections\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't parse phy_sku in B0, empty sections\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 4, i64 5, i64 8, i64 12]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 4294967282, i64 4294967294]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 284, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 292, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 306, i32 6 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 311, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 372, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 401, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 433, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 488, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 510, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 566, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 578, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 587, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 591, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 63, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 196, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 202, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 212, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 117, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 122, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 131, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 229, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 241, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 248, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 256, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_load_nvm_to_nic(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %nvm_access_cmd.i.i = alloca %struct.iwl_nvm_access_cmd, align 1
  %cmd.i.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_sections = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 39
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_load_nvm_to_nic, ptr noundef nonnull @.str) #5
  %4 = getelementptr inbounds %struct.iwl_nvm_access_cmd, ptr %nvm_access_cmd.i.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.iwl_nvm_access_cmd, ptr %nvm_access_cmd.i.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.iwl_nvm_access_cmd, ptr %nvm_access_cmd.i.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.iwl_nvm_access_cmd, ptr %nvm_access_cmd.i.i, i32 0, i32 4
  %8 = getelementptr inbounds i8, ptr %cmd.i.i, i32 32
  %arrayinit.element.i.i = getelementptr inbounds ptr, ptr %cmd.i.i, i32 1
  %resp_pkt.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 1
  %_rx_page_addr.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 2
  %_rx_page_order.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 3
  %flags.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 4
  %id.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 5
  %len.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 6
  %arrayinit.element5.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %data = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 %i.040, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 %i.040
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool7.not = icmp eq i16 %12, 0
  br i1 %tobool7.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %conv = trunc i32 %i.040 to i16
  %arrayidx8 = getelementptr %struct.iwl_nvm_section, ptr %nvm_sections, i32 %i.040
  %data9 = getelementptr %struct.iwl_nvm_section, ptr %nvm_sections, i32 %i.040, i32 1
  %13 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data9, align 4
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx8, align 4
  %conv.i = zext i16 %16 to i32
  %17 = call i16 @llvm.bswap.i16(i16 %conv) #5
  br label %while.cond.i

while.cond.i:                                     ; preds = %iwl_nvm_write_chunk.exit.i.while.cond.i_crit_edge, %if.end
  %offset.0.i = phi i32 [ 0, %if.end ], [ %add.i, %iwl_nvm_write_chunk.exit.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.i, i32 %conv.i)
  %cmp.i = icmp slt i32 %offset.0.i, %conv.i
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.inc_crit_edge

while.cond.i.for.inc_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body.i:                                     ; preds = %while.cond.i
  %sub.i = sub i32 %conv.i, %offset.0.i
  %18 = call i32 @llvm.smin.i32(i32 %sub.i, i32 2048) #5
  %conv5.i = trunc i32 %offset.0.i to i16
  %conv6.i = trunc i32 %18 to i16
  %add.ptr.i = getelementptr i8, ptr %14, i32 %offset.0.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nvm_access_cmd.i.i) #5
  %19 = ptrtoint ptr %nvm_access_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %nvm_access_cmd.i.i, align 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %4, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %17, ptr %5, align 1
  %22 = call i16 @llvm.bswap.i16(i16 %conv5.i) #5
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %6, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %conv6.i) #5
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i.i) #5
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %8, align 4, !annotation !70
  %27 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %nvm_access_cmd.i.i, ptr %cmd.i.i, align 4
  %28 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %arrayinit.element.i.i, align 4
  %29 = ptrtoint ptr %resp_pkt.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %resp_pkt.i.i, align 4
  %30 = ptrtoint ptr %_rx_page_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %_rx_page_addr.i.i, align 4
  %31 = ptrtoint ptr %_rx_page_order.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %_rx_page_order.i.i, align 4
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 6, ptr %flags.i.i, align 4
  %33 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 136, ptr %id.i.i, align 4
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 8, ptr %len.i.i, align 4
  %35 = ptrtoint ptr %arrayinit.element5.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv6.i, ptr %arrayinit.element5.i.i, align 2
  %call.i.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.iwl_nvm_write_chunk.exit.i_crit_edge

while.body.i.iwl_nvm_write_chunk.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_nvm_write_chunk.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %36 = ptrtoint ptr %resp_pkt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resp_pkt.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %37, i32 1, i32 1, i32 2
  %38 = ptrtoint ptr %status.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp.not.i.i = icmp eq i16 %39, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end18.i.i_crit_edge, label %do.end.i.i

if.end.i.i.if.end18.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = call i16 @llvm.bswap.i16(i16 %39) #5
  %conv.i.i = zext i16 %40 to i32
  %41 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %i.040, i32 noundef %conv.i.i) #5
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %do.end.i.i, %if.end.i.i.if.end18.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -5, %do.end.i.i ], [ 0, %if.end.i.i.if.end18.i.i_crit_edge ]
  %43 = ptrtoint ptr %_rx_page_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %_rx_page_addr.i.i, align 4
  %45 = ptrtoint ptr %_rx_page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %_rx_page_order.i.i, align 4
  call void @free_pages(i32 noundef %44, i32 noundef %46) #5
  br label %iwl_nvm_write_chunk.exit.i

iwl_nvm_write_chunk.exit.i:                       ; preds = %if.end18.i.i, %while.body.i.iwl_nvm_write_chunk.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %ret.0.i.i, %if.end18.i.i ], [ %call.i.i, %while.body.i.iwl_nvm_write_chunk.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nvm_access_cmd.i.i) #5
  %cmp7.i = icmp slt i32 %retval.0.i.i, 0
  %add.i = add i32 %18, %offset.0.i
  br i1 %cmp7.i, label %do.end18, label %iwl_nvm_write_chunk.exit.i.while.cond.i_crit_edge

iwl_nvm_write_chunk.exit.i.while.cond.i_crit_edge: ; preds = %iwl_nvm_write_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

do.end18:                                         ; preds = %iwl_nvm_write_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i.i) #5
  br label %for.end

for.inc:                                          ; preds = %while.cond.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end18
  %ret.2 = phi i32 [ %retval.0.i.i, %do.end18 ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_nvm_init(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %nvm_access_cmd.i.i = alloca %struct.iwl_nvm_access_cmd, align 1
  %cmd.i.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %default_nvm_file_C_step = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %default_nvm_file_C_step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_nvm_file_C_step, align 4
  %nvm_hw_section_num = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %nvm_hw_section_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nvm_hw_section_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %5)
  %cmp = icmp ugt i8 %5, 12
  br i1 %cmp, label %land.rhs, label %do.end44

land.rhs:                                         ; preds = %entry
  %.b235 = load i1, ptr @iwl_nvm_init.__already_done, align 1
  br i1 %.b235, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !71

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @iwl_nvm_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 306, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

do.end44:                                         ; preds = %entry
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %6 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans, align 4
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_init, ptr noundef nonnull @.str.3) #5
  %10 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans_cfg, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %eeprom_size = getelementptr inbounds %struct.iwl_base_params, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %eeprom_size, align 4
  %conv48 = zext i16 %17 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv48, i32 noundef 3264) #8
  %tobool49.not = icmp eq ptr %call9.i, null
  br i1 %tobool49.not, label %do.end44.cleanup_crit_edge, label %for.cond.preheader

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end44
  %18 = getelementptr inbounds %struct.iwl_nvm_access_cmd, ptr %nvm_access_cmd.i.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.iwl_nvm_access_cmd, ptr %nvm_access_cmd.i.i, i32 0, i32 2
  %20 = getelementptr inbounds %struct.iwl_nvm_access_cmd, ptr %nvm_access_cmd.i.i, i32 0, i32 3
  %21 = getelementptr inbounds %struct.iwl_nvm_access_cmd, ptr %nvm_access_cmd.i.i, i32 0, i32 4
  %22 = getelementptr inbounds i8, ptr %cmd.i.i, i32 32
  %arrayinit.cur.ptr.i.i = getelementptr inbounds ptr, ptr %cmd.i.i, i32 1
  %_rx_page_addr.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 2
  %_rx_page_order.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 3
  %flags.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 4
  %id.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 5
  %len.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 6
  %resp_pkt.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 1
  %nvm_reg_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 82
  %size89 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 82, i32 1
  %nvm_phy_sku_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 81
  %size85 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 81, i32 1
  %nvm_prod_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 80
  %size81 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 80, i32 1
  %nvm_calib_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 79
  %size77 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 79, i32 1
  %nvm_sw_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 78
  %size = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 78, i32 1
  %nvm_hw_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 77
  %size98 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 77, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %size_read.0263 = phi i32 [ 0, %for.cond.preheader ], [ %size_read.1, %for.inc.for.body_crit_edge ]
  %section.0261 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv54 = trunc i32 %section.0261 to i16
  %add.i = add i32 %size_read.0263, 2048
  %23 = call i16 @llvm.bswap.i16(i16 %conv54) #5
  br label %while.body.i

while.cond.i:                                     ; preds = %iwl_nvm_read_chunk.exit.i
  %24 = trunc i32 %retval.0.i.i to i16
  %conv29.i = add i16 %offset.070.i, %24
  %cmp.i237 = icmp eq i32 %retval.0.i.i, 2048
  br i1 %cmp.i237, label %while.cond.i.while.body.i_crit_edge, label %if.end59

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %for.body
  %offset.070.i = phi i16 [ 0, %for.body ], [ %conv29.i, %while.cond.i.while.body.i_crit_edge ]
  %conv3.i = zext i16 %offset.070.i to i32
  %add5.i = add i32 %add.i, %conv3.i
  %25 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trans_cfg.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %eeprom_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %eeprom_size.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %eeprom_size.i, align 4
  %conv6.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %conv6.i)
  %cmp7.i = icmp ugt i32 %add5.i, %conv6.i
  br i1 %cmp7.i, label %if.end59.thread251, label %if.end.i239

if.end59.thread251:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %34, i32 noundef 0, ptr noundef nonnull @.str.16) #5
  br label %for.end

if.end.i239:                                      ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nvm_access_cmd.i.i) #5
  %35 = ptrtoint ptr %nvm_access_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %nvm_access_cmd.i.i, align 1
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %18, align 1
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %23, ptr %19, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %offset.070.i) #5
  %39 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %20, align 1
  %40 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 8, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i.i) #5
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 65535, ptr %22, align 4, !annotation !70
  %42 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %nvm_access_cmd.i.i, ptr %cmd.i.i, align 4
  %43 = call ptr @memset(ptr %arrayinit.cur.ptr.i.i, i32 0, i32 16)
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 6, ptr %flags.i.i, align 4
  %45 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 136, ptr %id.i.i, align 4
  %46 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 524288, ptr %len.i.i, align 4
  %call.i.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i238 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i238, label %if.end.i.i240, label %if.end.i239.iwl_nvm_read_chunk.exit.i_crit_edge

if.end.i239.iwl_nvm_read_chunk.exit.i_crit_edge:  ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_nvm_read_chunk.exit.i

if.end.i.i240:                                    ; preds = %if.end.i239
  %47 = ptrtoint ptr %resp_pkt.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resp_pkt.i.i, align 4
  %data7.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %48, i32 0, i32 2
  %status.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %48, i32 1, i32 1, i32 2
  %49 = ptrtoint ptr %status.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %status.i.i, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50) #5
  %conv.i.i = zext i16 %51 to i32
  %length8.i.i = getelementptr inbounds %struct.iwl_nvm_access_resp, ptr %data7.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %length8.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %length8.i.i, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53) #5
  %conv9.i.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %data7.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %data7.i.i, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56) #5
  %conv11.i.i = zext i16 %57 to i32
  %data12.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %48, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool14.not.i.i = icmp eq i16 %50, 0
  br i1 %tobool14.not.i.i, label %if.end35.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %offset.070.i)
  %cmp.not.i.i = icmp ne i16 %offset.070.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %50)
  %cmp18.i.i241 = icmp eq i16 %50, 256
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp18.i.i241, i1 false
  %58 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trans, align 4
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i, align 8
  br i1 %or.cond.i.i, label %do.end.i.i, label %do.end28.i.i

do.end.i.i:                                       ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %61, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_read_chunk, ptr noundef nonnull @.str.19, i32 noundef %conv3.i) #5
  br label %exit.i.i

do.end28.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.iwl_trans, ptr %59, i32 0, i32 35
  %62 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name.i.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %61, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_read_chunk, ptr noundef nonnull @.str.20, i32 noundef %conv.i.i, ptr noundef %63) #5
  br label %exit.i.i

if.end35.i.i:                                     ; preds = %if.end.i.i240
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %offset.070.i)
  %cmp37.not.i.i = icmp eq i16 %57, %offset.070.i
  br i1 %cmp37.not.i.i, label %if.end47.i.i, label %do.end43.i.i

do.end43.i.i:                                     ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %65, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %conv11.i.i) #5
  br label %exit.i.i

if.end47.i.i:                                     ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %conv3.i
  %66 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %data12.i.i, i32 %conv9.i.i)
  br label %exit.i.i

exit.i.i:                                         ; preds = %if.end47.i.i, %do.end43.i.i, %do.end28.i.i, %do.end.i.i
  %ret.0.i.i = phi i32 [ 0, %do.end.i.i ], [ -61, %do.end28.i.i ], [ -22, %do.end43.i.i ], [ %conv9.i.i, %if.end47.i.i ]
  %67 = ptrtoint ptr %_rx_page_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %_rx_page_addr.i.i, align 4
  %69 = ptrtoint ptr %_rx_page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %_rx_page_order.i.i, align 4
  call void @free_pages(i32 noundef %68, i32 noundef %70) #5
  br label %iwl_nvm_read_chunk.exit.i

iwl_nvm_read_chunk.exit.i:                        ; preds = %exit.i.i, %if.end.i239.iwl_nvm_read_chunk.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %ret.0.i.i, %exit.i.i ], [ %call.i.i, %if.end.i239.iwl_nvm_read_chunk.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nvm_access_cmd.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp12.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp12.i, label %iwl_nvm_read_section.exit, label %while.cond.i

iwl_nvm_read_section.exit:                        ; preds = %iwl_nvm_read_chunk.exit.i
  %71 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trans, align 4
  %dev20.i = getelementptr inbounds %struct.iwl_trans, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev20.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %74, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_read_section, ptr noundef nonnull @.str.17, i32 noundef %section.0261, i32 noundef %conv3.i, i32 noundef 2048) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.0.i.i)
  %cmp56 = icmp eq i32 %retval.0.i.i, -61
  br i1 %cmp56, label %iwl_nvm_read_section.exit.for.inc_crit_edge, label %iwl_nvm_read_section.exit.for.end_crit_edge

iwl_nvm_read_section.exit.for.end_crit_edge:      ; preds = %iwl_nvm_read_section.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

iwl_nvm_read_section.exit.for.inc_crit_edge:      ; preds = %iwl_nvm_read_section.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end59:                                         ; preds = %while.cond.i
  %75 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %trans, align 4
  %hw_id.i = getelementptr inbounds %struct.iwl_trans, ptr %76, i32 0, i32 13
  %77 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hw_id.i, align 4
  %conv32.i = zext i16 %conv29.i to i32
  call void @iwl_nvm_fixups(i32 noundef %78, i32 noundef %section.0261, ptr noundef nonnull %call9.i, i32 noundef %conv32.i) #5
  %79 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %trans, align 4
  %dev38.i = getelementptr inbounds %struct.iwl_trans, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev38.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %82, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_read_section, ptr noundef nonnull @.str.18, i32 noundef %section.0261) #5
  %add = add i32 %size_read.0263, %conv32.i
  %call64 = call ptr @kmemdup(ptr noundef nonnull %call9.i, i32 noundef %conv32.i, i32 noundef 3264) #5
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.end59.for.end_crit_edge, label %if.end67

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end67:                                         ; preds = %if.end59
  %83 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %trans, align 4
  %hw_id = getelementptr inbounds %struct.iwl_trans, ptr %84, i32 0, i32 13
  %85 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hw_id, align 4
  call void @iwl_nvm_fixups(i32 noundef %86, i32 noundef %section.0261, ptr noundef nonnull %call64, i32 noundef %conv32.i) #5
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 %section.0261
  %data = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 %section.0261, i32 1
  %87 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call64, ptr %data, align 4
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv29.i, ptr %arrayidx, align 8
  %89 = zext i32 %section.0261 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i32 %section.0261, label %sw.default [
    i32 1, label %if.end67.for.inc.sink.split_crit_edge
    i32 4, label %sw.bb74
    i32 5, label %sw.bb78
    i32 12, label %for.inc.thread
    i32 8, label %if.end67.sw.bb86_crit_edge
    i32 3, label %if.end67.sw.bb86_crit_edge297
  ]

if.end67.sw.bb86_crit_edge297:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb86

if.end67.sw.bb86_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb86

if.end67.for.inc.sink.split_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split

sw.bb74:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split

sw.bb78:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split

for.inc.thread:                                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %nvm_phy_sku_blob to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call64, ptr %nvm_phy_sku_blob, align 4
  %91 = ptrtoint ptr %size85 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv32.i, ptr %size85, align 4
  br label %for.end

sw.bb86:                                          ; preds = %if.end67.sw.bb86_crit_edge, %if.end67.sw.bb86_crit_edge297
  br label %for.inc.sink.split

sw.default:                                       ; preds = %if.end67
  %92 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfg, align 4
  %nvm_hw_section_num91 = getelementptr inbounds %struct.iwl_cfg, ptr %93, i32 0, i32 25
  %94 = ptrtoint ptr %nvm_hw_section_num91 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nvm_hw_section_num91, align 2
  %conv92 = zext i8 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %section.0261, i32 %conv92)
  %cmp93 = icmp eq i32 %section.0261, %conv92
  br i1 %cmp93, label %sw.default.for.inc.sink.split_crit_edge, label %sw.default.for.inc_crit_edge

sw.default.for.inc_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.default.for.inc.sink.split_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.default.for.inc.sink.split_crit_edge, %sw.bb86, %sw.bb78, %sw.bb74, %if.end67.for.inc.sink.split_crit_edge
  %nvm_sw_blob.sink = phi ptr [ %nvm_calib_blob, %sw.bb74 ], [ %nvm_prod_blob, %sw.bb78 ], [ %nvm_reg_blob, %sw.bb86 ], [ %nvm_sw_blob, %if.end67.for.inc.sink.split_crit_edge ], [ %nvm_hw_blob, %sw.default.for.inc.sink.split_crit_edge ]
  %size.sink = phi ptr [ %size77, %sw.bb74 ], [ %size81, %sw.bb78 ], [ %size89, %sw.bb86 ], [ %size, %if.end67.for.inc.sink.split_crit_edge ], [ %size98, %sw.default.for.inc.sink.split_crit_edge ]
  %96 = ptrtoint ptr %nvm_sw_blob.sink to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call64, ptr %nvm_sw_blob.sink, align 4
  %97 = ptrtoint ptr %size.sink to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv32.i, ptr %size.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.default.for.inc_crit_edge, %iwl_nvm_read_section.exit.for.inc_crit_edge
  %size_read.1 = phi i32 [ %add, %sw.default.for.inc_crit_edge ], [ %size_read.0263, %iwl_nvm_read_section.exit.for.inc_crit_edge ], [ %add, %for.inc.sink.split ]
  %ret.1 = phi i32 [ %conv32.i, %sw.default.for.inc_crit_edge ], [ 0, %iwl_nvm_read_section.exit.for.inc_crit_edge ], [ %conv32.i, %for.inc.sink.split ]
  %inc = add nuw nsw i32 %section.0261, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.thread, %if.end59.for.end_crit_edge, %iwl_nvm_read_section.exit.for.end_crit_edge, %if.end59.thread251
  %size_read.2 = phi i32 [ %size_read.0263, %if.end59.thread251 ], [ %add, %for.inc.thread ], [ %size_read.0263, %iwl_nvm_read_section.exit.for.end_crit_edge ], [ %add, %if.end59.for.end_crit_edge ], [ %size_read.1, %for.inc.for.end_crit_edge ]
  %ret.2 = phi i32 [ -105, %if.end59.thread251 ], [ %conv32.i, %for.inc.thread ], [ %retval.0.i.i, %iwl_nvm_read_section.exit.for.end_crit_edge ], [ -12, %if.end59.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size_read.2)
  %tobool100.not = icmp eq i32 %size_read.2, 0
  br i1 %tobool100.not, label %do.end105, label %for.end.if.end109_crit_edge

for.end.if.end109_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

do.end105:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %99, i32 noundef 0, ptr noundef nonnull @.str.4) #5
  br label %if.end109

if.end109:                                        ; preds = %do.end105, %for.end.if.end109_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #5
  %nvm_file_name = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 30
  %100 = ptrtoint ptr %nvm_file_name to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nvm_file_name, align 4
  %tobool110.not = icmp eq ptr %101, null
  br i1 %tobool110.not, label %if.end109.if.end136_crit_edge, label %if.then111

if.end109.if.end136_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.then111:                                       ; preds = %if.end109
  %102 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %trans, align 4
  %nvm_sections114 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 39
  %call115 = call i32 @iwl_read_external_nvm(ptr noundef %103, ptr noundef nonnull %101, ptr noundef %nvm_sections114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then111.if.end136_crit_edge, label %if.then117

if.then111.if.end136_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.then117:                                       ; preds = %if.then111
  %104 = ptrtoint ptr %nvm_file_name to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %3, ptr %nvm_file_name, align 4
  %105 = zext i32 %call115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call115, label %if.then117.cleanup_crit_edge [
    i32 -14, label %if.then117.land.lhs.true_crit_edge
    i32 -2, label %if.then117.land.lhs.true_crit_edge298
  ]

if.then117.land.lhs.true_crit_edge298:            ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then117.land.lhs.true_crit_edge:               ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then117.land.lhs.true_crit_edge, %if.then117.land.lhs.true_crit_edge298
  %tobool124.not = icmp eq ptr %3, null
  br i1 %tobool124.not, label %land.lhs.true.cleanup_crit_edge, label %if.then125

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then125:                                       ; preds = %land.lhs.true
  %106 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %trans, align 4
  %call130 = call i32 @iwl_read_external_nvm(ptr noundef %107, ptr noundef nonnull %3, ptr noundef %nvm_sections114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then125.if.end136_crit_edge, label %if.then125.cleanup_crit_edge

if.then125.cleanup_crit_edge:                     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then125.if.end136_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.end136:                                        ; preds = %if.then125.if.end136_crit_edge, %if.then111.if.end136_crit_edge, %if.end109.if.end136_crit_edge
  %ret.3 = phi i32 [ 0, %if.then125.if.end136_crit_edge ], [ 0, %if.then111.if.end136_crit_edge ], [ %ret.2, %if.end109.if.end136_crit_edge ]
  %nvm_sections.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 39
  %108 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %trans, align 4
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cfg.i, align 8
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nvm_type.i, align 8
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %113, label %if.else16.i [
    i32 0, label %if.then.i243
    i32 2, label %if.end136.if.end17.i_crit_edge
  ]

if.end136.if.end17.i_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then.i243:                                     ; preds = %if.end136
  %data.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 1, i32 1
  %115 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %116, null
  br i1 %tobool.not.i, label %if.then.i243.iwl_parse_nvm_sections.exit.thread_crit_edge, label %lor.lhs.false.i

if.then.i243.iwl_parse_nvm_sections.exit.thread_crit_edge: ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_parse_nvm_sections.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then.i243
  %117 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfg, align 4
  %nvm_hw_section_num.i = getelementptr inbounds %struct.iwl_cfg, ptr %118, i32 0, i32 25
  %119 = ptrtoint ptr %nvm_hw_section_num.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %nvm_hw_section_num.i, align 2
  %idxprom.i = zext i8 %120 to i32
  %data5.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 %idxprom.i, i32 1
  %121 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data5.i, align 4
  %tobool6.not.i = icmp eq ptr %122, null
  br i1 %tobool6.not.i, label %lor.lhs.false.i.iwl_parse_nvm_sections.exit.thread_crit_edge, label %lor.lhs.false.i.iwl_parse_nvm_sections.exit_crit_edge

lor.lhs.false.i.iwl_parse_nvm_sections.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_parse_nvm_sections.exit

lor.lhs.false.i.iwl_parse_nvm_sections.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_parse_nvm_sections.exit.thread

if.else16.i:                                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else16.i, %if.end136.if.end17.i_crit_edge
  %regulatory_type.0.i = phi i32 [ 3, %if.else16.i ], [ 8, %if.end136.if.end17.i_crit_edge ]
  %data20.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 1, i32 1
  %123 = ptrtoint ptr %data20.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data20.i, align 4
  %tobool21.not.i = icmp eq ptr %124, null
  br i1 %tobool21.not.i, label %if.end17.i.iwl_parse_nvm_sections.exit.thread_crit_edge, label %lor.lhs.false22.i

if.end17.i.iwl_parse_nvm_sections.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_parse_nvm_sections.exit.thread

lor.lhs.false22.i:                                ; preds = %if.end17.i
  %data25.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 %regulatory_type.0.i, i32 1
  %125 = ptrtoint ptr %data25.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data25.i, align 4
  %tobool26.not.i = icmp eq ptr %126, null
  br i1 %tobool26.not.i, label %lor.lhs.false22.i.iwl_parse_nvm_sections.exit.thread_crit_edge, label %if.end35.i

lor.lhs.false22.i.iwl_parse_nvm_sections.exit.thread_crit_edge: ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_parse_nvm_sections.exit.thread

if.end35.i:                                       ; preds = %lor.lhs.false22.i
  %127 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg, align 4
  %nvm_hw_section_num38.i = getelementptr inbounds %struct.iwl_cfg, ptr %128, i32 0, i32 25
  %129 = ptrtoint ptr %nvm_hw_section_num38.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %nvm_hw_section_num38.i, align 2
  %idxprom39.i = zext i8 %130 to i32
  %data41.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 %idxprom39.i, i32 1
  %131 = ptrtoint ptr %data41.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data41.i, align 4
  %tobool42.not.i = icmp eq ptr %132, null
  br i1 %tobool42.not.i, label %land.lhs.true.i, label %if.end35.i.if.end55.i_crit_edge

if.end35.i.if.end55.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

land.lhs.true.i:                                  ; preds = %if.end35.i
  %data45.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 11, i32 1
  %133 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data45.i, align 4
  %tobool46.not.i = icmp eq ptr %134, null
  br i1 %tobool46.not.i, label %land.lhs.true.i.iwl_parse_nvm_sections.exit.thread_crit_edge, label %land.lhs.true.i.if.end55.i_crit_edge

land.lhs.true.i.if.end55.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

land.lhs.true.i.iwl_parse_nvm_sections.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_parse_nvm_sections.exit.thread

if.end55.i:                                       ; preds = %land.lhs.true.i.if.end55.i_crit_edge, %if.end35.i.if.end55.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp59.i = icmp eq i32 %113, 1
  br i1 %cmp59.i, label %land.lhs.true60.i, label %if.end55.i.iwl_parse_nvm_sections.exit_crit_edge

if.end55.i.iwl_parse_nvm_sections.exit_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_parse_nvm_sections.exit

land.lhs.true60.i:                                ; preds = %if.end55.i
  %data63.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 12, i32 1
  %135 = ptrtoint ptr %data63.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data63.i, align 4
  %tobool64.not.i = icmp eq ptr %136, null
  br i1 %tobool64.not.i, label %land.lhs.true60.i.iwl_parse_nvm_sections.exit.thread_crit_edge, label %land.lhs.true60.i.iwl_parse_nvm_sections.exit_crit_edge

land.lhs.true60.i.iwl_parse_nvm_sections.exit_crit_edge: ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_parse_nvm_sections.exit

land.lhs.true60.i.iwl_parse_nvm_sections.exit.thread_crit_edge: ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_parse_nvm_sections.exit.thread

iwl_parse_nvm_sections.exit.thread:               ; preds = %land.lhs.true60.i.iwl_parse_nvm_sections.exit.thread_crit_edge, %land.lhs.true.i.iwl_parse_nvm_sections.exit.thread_crit_edge, %lor.lhs.false22.i.iwl_parse_nvm_sections.exit.thread_crit_edge, %if.end17.i.iwl_parse_nvm_sections.exit.thread_crit_edge, %lor.lhs.false.i.iwl_parse_nvm_sections.exit.thread_crit_edge, %if.then.i243.iwl_parse_nvm_sections.exit.thread_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %lor.lhs.false.i.iwl_parse_nvm_sections.exit.thread_crit_edge ], [ @.str.22, %if.then.i243.iwl_parse_nvm_sections.exit.thread_crit_edge ], [ @.str.23, %lor.lhs.false22.i.iwl_parse_nvm_sections.exit.thread_crit_edge ], [ @.str.23, %if.end17.i.iwl_parse_nvm_sections.exit.thread_crit_edge ], [ @.str.24, %land.lhs.true.i.iwl_parse_nvm_sections.exit.thread_crit_edge ], [ @.str.25, %land.lhs.true60.i.iwl_parse_nvm_sections.exit.thread_crit_edge ]
  %137 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %138, i32 noundef 0, ptr noundef nonnull %.str.22.sink) #5
  %nvm_data255 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %139 = ptrtoint ptr %nvm_data255 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %nvm_data255, align 8
  br label %cleanup

iwl_parse_nvm_sections.exit:                      ; preds = %land.lhs.true60.i.iwl_parse_nvm_sections.exit_crit_edge, %if.end55.i.iwl_parse_nvm_sections.exit_crit_edge, %lor.lhs.false.i.iwl_parse_nvm_sections.exit_crit_edge
  %140 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg, align 4
  %nvm_hw_section_num76.i = getelementptr inbounds %struct.iwl_cfg, ptr %141, i32 0, i32 25
  %142 = ptrtoint ptr %nvm_hw_section_num76.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %nvm_hw_section_num76.i, align 2
  %idxprom77.i = zext i8 %143 to i32
  %data79.i = getelementptr %struct.iwl_nvm_section, ptr %nvm_sections.i, i32 %idxprom77.i, i32 1
  %144 = ptrtoint ptr %data79.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data79.i, align 4
  %data81.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 1, i32 1
  %146 = ptrtoint ptr %data81.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data81.i, align 4
  %data83.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 4, i32 1
  %148 = ptrtoint ptr %data83.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data83.i, align 4
  %data85.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 11, i32 1
  %150 = ptrtoint ptr %data85.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data85.i, align 4
  %data87.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 12, i32 1
  %152 = ptrtoint ptr %data87.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %data87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp91.i = icmp eq i32 %113, 2
  %data93.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 8, i32 1
  %data95.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 39, i32 3, i32 1
  %cond.in.i = select i1 %cmp91.i, ptr %data93.i, ptr %data95.i
  %154 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %155 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_fw, ptr %156, i32 0, i32 15
  %157 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %valid_tx_ant.i, align 4
  %valid_rx_ant.i = getelementptr inbounds %struct.iwl_fw, ptr %156, i32 0, i32 16
  %159 = ptrtoint ptr %valid_rx_ant.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %valid_rx_ant.i, align 1
  %call.i = call ptr @iwl_parse_nvm_data(ptr noundef %109, ptr noundef %141, ptr noundef %156, ptr noundef %145, ptr noundef %147, ptr noundef %149, ptr noundef %cond.i, ptr noundef %151, ptr noundef %153, i8 noundef zeroext %158, i8 noundef zeroext %160) #5
  %nvm_data = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %161 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call.i, ptr %nvm_data, align 8
  %tobool139.not = icmp eq ptr %call.i, null
  br i1 %tobool139.not, label %iwl_parse_nvm_sections.exit.cleanup_crit_edge, label %do.end145

iwl_parse_nvm_sections.exit.cleanup_crit_edge:    ; preds = %iwl_parse_nvm_sections.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end145:                                        ; preds = %iwl_parse_nvm_sections.exit
  call void @__sanitizer_cov_trace_pc() #7
  %162 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %trans, align 4
  %dev147 = getelementptr inbounds %struct.iwl_trans, ptr %163, i32 0, i32 8
  %164 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev147, align 8
  %nvm_version = getelementptr inbounds %struct.iwl_nvm_data, ptr %call.i, i32 0, i32 22
  %166 = ptrtoint ptr %nvm_version to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %nvm_version, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %165, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_init, ptr noundef nonnull @.str.5, i32 noundef %167) #5
  %168 = call i32 @llvm.smin.i32(i32 %ret.3, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end145, %iwl_parse_nvm_sections.exit.cleanup_crit_edge, %iwl_parse_nvm_sections.exit.thread, %if.then125.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then117.cleanup_crit_edge, %do.end44.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %168, %do.end145 ], [ -22, %if.then ], [ -12, %do.end44.cleanup_crit_edge ], [ %call130, %if.then125.cleanup_crit_edge ], [ %call115, %if.then117.cleanup_crit_edge ], [ %call115, %land.lhs.true.cleanup_crit_edge ], [ -61, %iwl_parse_nvm_sections.exit.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -61, %iwl_parse_nvm_sections.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_nvm_fixups(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_external_nvm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_mvm_update_mcc(ptr noundef %mvm, ptr nocapture noundef readonly %alpha2, i32 noundef %src_id) local_unnamed_addr #0 align 64 {
entry:
  %mcc_update_cmd = alloca %struct.iwl_mcc_update_cmd, align 2
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mcc_update_cmd) #5
  %0 = getelementptr inbounds %struct.iwl_mcc_update_cmd, ptr %mcc_update_cmd, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %mcc_update_cmd, i32 2
  %2 = call ptr @memset(ptr %1, i32 0, i32 26)
  %3 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %alpha2, align 1
  %conv = zext i8 %4 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %alpha2, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %6 to i16
  %or = or i16 %shl, %conv2
  %7 = tail call i16 @llvm.bswap.i16(i16 %or)
  %8 = ptrtoint ptr %mcc_update_cmd to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %mcc_update_cmd, align 2
  %conv4 = trunc i32 %src_id to i8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #5
  %10 = getelementptr inbounds i8, ptr %cmd, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !70
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mcc_update_cmd, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %_rx_page_addr = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %_rx_page_order = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %13 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %flags, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 200, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1835008, ptr %len, align 4
  %dataflags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %17 = ptrtoint ptr %dataflags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %dataflags, align 4
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %18 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nvm_data.i, align 8
  %lar_enabled.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %lar_enabled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lar_enabled.i, align 1, !range !72
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %22 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw.i, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %23, i32 0, i32 5, i32 8
  %24 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_capa.i.i, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.i = icmp ne i32 %26, 0
  %cfg.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %27 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i, align 4
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nvm_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i = icmp eq i32 %30, 1
  br i1 %cmp.i, label %if.then.i, label %iwl_mvm_is_lar_supported.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp ne i8 %21, 0
  %spec.select.i = select i1 %tobool.not.i, i1 %tobool.i.i, i1 false
  br i1 %spec.select.i, label %if.then.i.if.end46_crit_edge, label %if.then.i.land.rhs_crit_edge

if.then.i.land.rhs_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.then.i.if.end46_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

iwl_mvm_is_lar_supported.exit:                    ; preds = %entry
  br i1 %tobool.i.i, label %iwl_mvm_is_lar_supported.exit.if.end46_crit_edge, label %iwl_mvm_is_lar_supported.exit.land.rhs_crit_edge

iwl_mvm_is_lar_supported.exit.land.rhs_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

iwl_mvm_is_lar_supported.exit.if.end46_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

land.rhs:                                         ; preds = %iwl_mvm_is_lar_supported.exit.land.rhs_crit_edge, %if.then.i.land.rhs_crit_edge
  %.b173 = load i1, ptr @iwl_mvm_update_mcc.__already_done, align 1
  br i1 %.b173, label %land.rhs.cleanup121_crit_edge, label %if.then, !prof !71

land.rhs.cleanup121_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup121

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @iwl_mvm_update_mcc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 428, i32 noundef 9, ptr noundef null) #5
  br label %cleanup121

if.end46:                                         ; preds = %iwl_mvm_is_lar_supported.exit.if.end46_crit_edge, %if.then.i.if.end46_crit_edge
  %31 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mvm, align 8
  %conv54 = zext i8 %4 to i32
  %conv56 = zext i8 %6 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %32, i32 noundef 16384, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_mcc, ptr noundef nonnull @.str.6, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %src_id) #5
  %call59 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %33 = inttoptr i32 %call59 to ptr
  br label %cleanup121

if.end63:                                         ; preds = %if.end46
  %34 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resp_pkt, align 4
  %36 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %37, i32 0, i32 5, i32 8, i32 2
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i.i, align 4
  %40 = and i32 %39, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not = icmp eq i32 %40, 0
  br i1 %tobool.i.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end63
  %data67 = getelementptr inbounds %struct.iwl_rx_packet, ptr %35, i32 0, i32 2
  %n_channels68 = getelementptr inbounds %struct.iwl_rx_packet, ptr %35, i32 3
  %41 = ptrtoint ptr %n_channels68 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %n_channels68, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %mul = shl i32 %43, 2
  %add = add i32 %mul, 20
  %call69 = call ptr @kmemdup(ptr noundef %data67, i32 noundef %add, i32 noundef 3264) #5
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.then66.exit_crit_edge, label %if.then66.if.end103_crit_edge

if.then66.if.end103_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then66.exit_crit_edge:                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else:                                          ; preds = %if.end63
  %n_channels76 = getelementptr inbounds %struct.iwl_rx_packet, ptr %35, i32 2, i32 1
  %44 = ptrtoint ptr %n_channels76 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %n_channels76, align 1
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %mul77 = shl i32 %46, 2
  %add78 = add i32 %mul77, 20
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add78, i32 noundef 3520) #8
  %tobool80.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool80.not, label %if.else.exit_crit_edge, label %cleanup100.thread

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

cleanup100.thread:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %data74 = getelementptr inbounds %struct.iwl_rx_packet, ptr %35, i32 0, i32 2
  %47 = ptrtoint ptr %data74 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %data74, align 1
  %49 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %call9.i.i, align 128
  %mcc86 = getelementptr inbounds %struct.iwl_rx_packet, ptr %35, i32 1, i32 1
  %50 = ptrtoint ptr %mcc86 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %mcc86, align 1
  %mcc87 = getelementptr inbounds %struct.iwl_mcc_update_resp, ptr %call9.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %mcc87 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %mcc87, align 4
  %cap = getelementptr inbounds %struct.iwl_rx_packet, ptr %35, i32 1, i32 1, i32 2
  %53 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cap, align 1
  %conv88 = zext i8 %54 to i16
  %55 = shl nuw i16 %conv88, 8
  %cap89 = getelementptr inbounds %struct.iwl_mcc_update_resp, ptr %call9.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %cap89 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %cap89, align 2
  %source_id90 = getelementptr inbounds %struct.iwl_mcc_update_resp_v3, ptr %data74, i32 0, i32 3
  %57 = ptrtoint ptr %source_id90 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %source_id90, align 1
  %source_id91 = getelementptr inbounds %struct.iwl_mcc_update_resp, ptr %call9.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %source_id91 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %source_id91, align 4
  %time = getelementptr inbounds %struct.iwl_rx_packet, ptr %35, i32 2
  %60 = ptrtoint ptr %time to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %time, align 1
  %time92 = getelementptr inbounds %struct.iwl_mcc_update_resp, ptr %call9.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %time92 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %time92, align 8
  %geo_info = getelementptr inbounds %struct.iwl_mcc_update_resp_v3, ptr %data74, i32 0, i32 5
  %63 = ptrtoint ptr %geo_info to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %geo_info, align 1
  %geo_info93 = getelementptr inbounds %struct.iwl_mcc_update_resp, ptr %call9.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %geo_info93 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %geo_info93, align 2
  %66 = ptrtoint ptr %n_channels76 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %n_channels76, align 1
  %n_channels95 = getelementptr inbounds %struct.iwl_mcc_update_resp, ptr %call9.i.i, i32 0, i32 7
  %68 = ptrtoint ptr %n_channels95 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %n_channels95, align 16
  %channels = getelementptr inbounds %struct.iwl_mcc_update_resp, ptr %call9.i.i, i32 0, i32 8
  %channels97 = getelementptr inbounds %struct.iwl_rx_packet, ptr %35, i32 3
  %69 = call ptr @memcpy(ptr %channels, ptr %channels97, i32 %mul77)
  br label %if.end103

if.end103:                                        ; preds = %cleanup100.thread, %if.then66.if.end103_crit_edge
  %n_channels.0 = phi i32 [ %46, %cleanup100.thread ], [ %43, %if.then66.if.end103_crit_edge ]
  %resp_cp.2 = phi ptr [ %call9.i.i, %cleanup100.thread ], [ %call69, %if.then66.if.end103_crit_edge ]
  %70 = ptrtoint ptr %resp_cp.2 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %resp_cp.2, align 1
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %mcc105 = getelementptr inbounds %struct.iwl_mcc_update_resp, ptr %resp_cp.2, i32 0, i32 1
  %73 = ptrtoint ptr %mcc105 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %mcc105, align 1
  %75 = call i16 @llvm.bswap.i16(i16 %74)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp = icmp eq i16 %74, 0
  br i1 %cmp, label %if.then108, label %if.end103.do.end114_crit_edge

if.end103.do.end114_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end114

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %mcc105 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 12336, ptr %mcc105, align 1
  br label %do.end114

do.end114:                                        ; preds = %if.then108, %if.end103.do.end114_crit_edge
  %mcc6.0 = phi i16 [ 12336, %if.then108 ], [ %75, %if.end103.do.end114_crit_edge ]
  %77 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mvm, align 8
  %conv116 = zext i16 %mcc6.0 to i32
  %79 = lshr i32 %conv116, 8
  %and = and i32 %conv116, 255
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %78, i32 noundef 16384, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_mcc, ptr noundef nonnull @.str.7, i32 noundef %72, i32 noundef %conv116, i32 noundef %79, i32 noundef %and, i32 noundef %n_channels.0) #5
  br label %exit

exit:                                             ; preds = %do.end114, %if.else.exit_crit_edge, %if.then66.exit_crit_edge
  %resp_cp.3 = phi ptr [ %resp_cp.2, %do.end114 ], [ inttoptr (i32 -12 to ptr), %if.then66.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.exit_crit_edge ]
  %80 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %_rx_page_addr, align 4
  %82 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %81, i32 noundef %83) #5
  br label %cleanup121

cleanup121:                                       ; preds = %exit, %if.then61, %if.then, %land.rhs.cleanup121_crit_edge
  %retval.0 = phi ptr [ %33, %if.then61 ], [ %resp_cp.3, %exit ], [ inttoptr (i32 -95 to ptr), %land.rhs.cleanup121_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.then ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mcc_update_cmd) #5
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_init_mcc(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %nvm_type = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nvm_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvm_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %entry
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 8
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_capa.i, align 4
  %8 = and i32 %7, 2
  %nvm_data = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %9 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nvm_data, align 8
  %lar_enabled = getelementptr inbounds %struct.iwl_nvm_data, ptr %10, i32 0, i32 24
  %11 = ptrtoint ptr %lar_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lar_enabled, align 1, !range !72
  %.lobit = lshr exact i32 %8, 1
  %13 = trunc i32 %.lobit to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %13)
  %cmp6.not = icmp eq i8 %12, %13
  br i1 %cmp6.not, label %if.then.if.end17_crit_edge, label %do.end

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %14 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mvm, align 8
  %cond = select i1 %tobool.i.not, ptr @.str.10, ptr @.str.9
  %cond14 = select i1 %tobool.not, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond, ptr noundef nonnull %cond14) #5
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %16 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nvm_data.i, align 8
  %lar_enabled.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %lar_enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lar_enabled.i, align 1, !range !72
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %20 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw.i, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %21, i32 0, i32 5, i32 8
  %22 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_capa.i.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.i = icmp ne i32 %24, 0
  %25 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg, align 4
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nvm_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i = icmp eq i32 %28, 1
  br i1 %cmp.i, label %if.then.i, label %iwl_mvm_is_lar_supported.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp ne i8 %19, 0
  %spec.select.i = select i1 %tobool.not.i, i1 %tobool.i.i, i1 false
  br i1 %spec.select.i, label %if.then.i.if.end20_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

iwl_mvm_is_lar_supported.exit:                    ; preds = %if.end17
  br i1 %tobool.i.i, label %iwl_mvm_is_lar_supported.exit.if.end20_crit_edge, label %iwl_mvm_is_lar_supported.exit.cleanup_crit_edge

iwl_mvm_is_lar_supported.exit.cleanup_crit_edge:  ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

iwl_mvm_is_lar_supported.exit.if.end20_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20:                                         ; preds = %iwl_mvm_is_lar_supported.exit.if.end20_crit_edge, %if.then.i.if.end20_crit_edge
  %call21 = tail call i32 @iwl_mvm_init_fw_regd(ptr noundef %mvm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, -2
  br i1 %cmp22.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %lar_regdom_set = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 155
  %29 = ptrtoint ptr %lar_regdom_set to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %lar_regdom_set, align 1
  %call26 = tail call ptr @iwl_mvm_get_current_regdomain(ptr noundef %mvm, ptr noundef null) #5
  %tobool.not.i68 = icmp eq ptr %call26, null
  %cmp.i69 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %spec.select.i70 = or i1 %tobool.not.i68, %cmp.i69
  br i1 %spec.select.i70, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %30 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw.i, align 8
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %31, i32 0, i32 5, i32 7
  %32 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_api.i.i, align 4
  %34 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i, label %iwl_mvm_is_wifi_mcc_supported.exit, label %if.end29.if.end41_crit_edge

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

iwl_mvm_is_wifi_mcc_supported.exit:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %_capa.i.i72 = getelementptr inbounds %struct.iwl_fw, ptr %31, i32 0, i32 5, i32 8
  %35 = ptrtoint ptr %_capa.i.i72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_capa.i.i72, align 4
  br label %if.end41

if.end41:                                         ; preds = %iwl_mvm_is_wifi_mcc_supported.exit, %if.end29.if.end41_crit_edge
  %hw42 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %37 = ptrtoint ptr %hw42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw42, align 4
  %wiphy43 = getelementptr inbounds %struct.ieee80211_hw, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %wiphy43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wiphy43, align 8
  %call44 = tail call i32 @regulatory_set_wiphy_regd_sync(ptr noundef %40, ptr noundef nonnull %call26) #5
  tail call void @kfree(ptr noundef nonnull %call26) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %iwl_mvm_is_lar_supported.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %if.end41 ], [ 0, %iwl_mvm_is_lar_supported.exit.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ -5, %if.end25.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_init_fw_regd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_mvm_get_current_regdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_mvm_get_regdomain(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_set_wiphy_regd_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_chub_update_mcc(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  %mcc = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #5
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mcc) #5
  %6 = getelementptr inbounds [3 x i8], ptr %mcc, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %mcc, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i166 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp.not = icmp eq i32 %call.i166, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !73

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 563, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call25 = tail call zeroext i1 @iwl_mvm_is_vif_assoc(ptr noundef %mvm) #5
  br i1 %call25, label %land.lhs.true, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end
  %source_id = getelementptr inbounds %struct.iwl_mcc_chub_notif, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %source_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %source_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp26 = icmp eq i8 %10, 5
  br i1 %cmp26, label %do.end32, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end32:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 16384, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_chub_update_mcc, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %13 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nvm_data.i, align 8
  %lar_enabled.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %lar_enabled.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lar_enabled.i, align 1, !range !72
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %17 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw.i, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %18, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_capa.i.i, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.i = icmp ne i32 %21, 0
  %cfg.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i, align 4
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nvm_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i = icmp eq i32 %25, 1
  br i1 %cmp.i, label %if.then.i, label %iwl_mvm_is_lar_supported.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp ne i8 %16, 0
  %spec.select.i = select i1 %tobool.not.i, i1 %tobool.i.i, i1 false
  br i1 %spec.select.i, label %if.then.i.if.end93_crit_edge, label %if.then.i.land.rhs45_crit_edge

if.then.i.land.rhs45_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs45

if.then.i.if.end93_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

iwl_mvm_is_lar_supported.exit:                    ; preds = %if.end35
  br i1 %tobool.i.i, label %iwl_mvm_is_lar_supported.exit.if.end93_crit_edge, label %iwl_mvm_is_lar_supported.exit.land.rhs45_crit_edge

iwl_mvm_is_lar_supported.exit.land.rhs45_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs45

iwl_mvm_is_lar_supported.exit.if.end93_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

land.rhs45:                                       ; preds = %iwl_mvm_is_lar_supported.exit.land.rhs45_crit_edge, %if.then.i.land.rhs45_crit_edge
  %.b164 = load i1, ptr @iwl_mvm_rx_chub_update_mcc.__already_done, align 1
  br i1 %.b164, label %land.rhs45.cleanup_crit_edge, label %if.then56, !prof !71

land.rhs45.cleanup_crit_edge:                     ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then56:                                        ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @iwl_mvm_rx_chub_update_mcc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 570, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end93:                                         ; preds = %iwl_mvm_is_lar_supported.exit.if.end93_crit_edge, %if.then.i.if.end93_crit_edge
  %26 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %data, align 1
  %conv96 = trunc i16 %27 to i8
  %28 = ptrtoint ptr %mcc to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv96, ptr %mcc, align 1
  %29 = lshr i16 %27, 8
  %conv99 = trunc i16 %29 to i8
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv99, ptr %6, align 1
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %7, align 1
  %source_id102 = getelementptr inbounds %struct.iwl_mcc_chub_notif, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %source_id102 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %source_id102, align 1
  %conv103 = zext i8 %33 to i32
  %34 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef 16384, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_chub_update_mcc, ptr noundef nonnull @.str.12, ptr noundef nonnull %mcc, i32 noundef %conv103) #5
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy, align 8
  %call113 = call ptr @iwl_mvm_get_regdomain(ptr noundef %39, ptr noundef nonnull %mcc, i32 noundef %conv103, ptr noundef null) #5
  %tobool.not.i167 = icmp eq ptr %call113, null
  %cmp.i168 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  %spec.select.i169 = or i1 %tobool.not.i167, %cmp.i168
  br i1 %spec.select.i169, label %if.end93.cleanup_crit_edge, label %if.end116

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end116:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %call117 = call i32 @iwl_mvm_get_sar_geo_profile(ptr noundef %mvm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 1
  %40 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mvm, align 8
  %.str.13..str.14 = select i1 %cmp118, ptr @.str.13, ptr @.str.14
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %41, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_chub_update_mcc, ptr noundef nonnull %.str.13..str.14, i32 noundef %call117) #5
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %wiphy137 = getelementptr inbounds %struct.ieee80211_hw, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wiphy137 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wiphy137, align 8
  %call138 = call i32 @regulatory_set_wiphy_regd(ptr noundef %45, ptr noundef nonnull %call113) #5
  call void @kfree(ptr noundef nonnull %call113) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.end93.cleanup_crit_edge, %if.then56, %land.rhs45.cleanup_crit_edge, %do.end32
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mcc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_mvm_is_vif_assoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_get_sar_geo_profile(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_set_wiphy_regd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_parse_nvm_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__func__.iwl_mvm_load_nvm_to_nic, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 284, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 292, i32 4}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 306, i32 6}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.iwl_nvm_init, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 311, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 372, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 401, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 428, i32 6}
!17 = !{ptr @__func__.iwl_mvm_update_mcc, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 433, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 488, i32 2}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 510, i32 4}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__func__.iwl_mvm_rx_chub_update_mcc, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 566, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 570, i32 6}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 578, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 587, i32 3}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 591, i32 3}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 63, i32 3}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 196, i32 4}
!41 = !{ptr @__func__.iwl_nvm_read_section, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 202, i32 4}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 212, i32 2}
!46 = !{ptr @__func__.iwl_nvm_read_chunk, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 117, i32 4}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 122, i32 4}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 131, i32 3}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 229, i32 4}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 241, i32 4}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 248, i32 4}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/nvm.c", i32 256, i32 4}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i8 0, i8 2}
!73 = !{!"branch_weights", i32 1, i32 2000}
