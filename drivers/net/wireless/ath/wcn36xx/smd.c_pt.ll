; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wcn36xx/smd.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wcn36xx/smd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wcn36xx_cfg_val = type { i32, i32 }
%struct.beacon_filter_ie = type { i8, i8, i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wcn36xx = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, [4 x i32], i8, [65 x i8], [65 x i8], i8, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, %struct.mutex, %struct.completion, ptr, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, ptr, %struct.mutex, i8, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.spinlock, i8, %struct.wcn36xx_dxe_mem_pool, %struct.wcn36xx_dxe_mem_pool, ptr, %struct.timer_list, %struct.sk_buff_head, i32, %struct.wcn36xx_dfs_entry }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wcn36xx_dxe_ch = type { %struct.spinlock, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wcn36xx_dxe_mem_pool = type { i32, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.wcn36xx_dfs_entry = type { ptr, %struct.wcn36xx_dfs_file, %struct.wcn36xx_dfs_file }
%struct.wcn36xx_dfs_file = type { ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.nv_data = type { i32, i8 }
%struct.wcn36xx_hal_msg_header = type { i32, i32 }
%struct.wcn36xx_hal_cfg = type { i16, i16, i16, i16 }
%struct.wcn36xx_hal_mac_start_req_msg = type { %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_mac_start_parameters }
%struct.wcn36xx_hal_mac_start_parameters = type { i32, i32 }
%struct.wcn36xx_hal_mac_start_rsp_msg = type { %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_mac_start_rsp_params }
%struct.wcn36xx_hal_mac_start_rsp_params = type { i16, i8, i8, %struct.wcnss_wlan_version, [64 x i8], [64 x i8] }
%struct.wcnss_wlan_version = type { i8, i8, i8, i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.wcn36xx_hal_start_scan_offload_req_msg = type <{ %struct.wcn36xx_hal_msg_header, i8, [4 x [6 x i8]], i8, [10 x %struct.wcn36xx_hal_mac_ssid], i8, [6 x i8], i32, i32, i32, i32, i8, i8, [80 x i8], i16, [500 x i8] }>
%struct.wcn36xx_hal_mac_ssid = type { i8, [32 x i8] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.wcn36xx_hal_update_channel_list_req_msg = type <{ %struct.wcn36xx_hal_msg_header, i8, [80 x %struct.wcn36xx_hal_channel_param] }>
%struct.wcn36xx_hal_channel_param = type { i32, i32, i32, i32, i32, i32 }
%struct.wcn36xx_hal_switch_channel_rsp_msg = type { %struct.wcn36xx_hal_msg_header, i32, i8, i8, [6 x i8] }
%struct.wcn36xx_hal_process_ptt_msg_req_msg = type { %struct.wcn36xx_hal_msg_header, [0 x i8] }
%struct.wcn36xx_hal_process_ptt_msg_rsp_msg = type { %struct.wcn36xx_hal_msg_header, i32, [0 x i8] }
%struct.wcn36xx_hal_update_scan_params_resp = type { %struct.wcn36xx_hal_msg_header, i32 }
%struct.wcn36xx_hal_add_sta_self_req = type <{ %struct.wcn36xx_hal_msg_header, [6 x i8], i32 }>
%struct.wcn36xx_hal_add_sta_self_rsp_msg = type <{ %struct.wcn36xx_hal_msg_header, i32, i8, i8, i8 }>
%struct.wcn36xx_vif = type { %struct.list_head, i8, i32, i8, i8, %struct.wcn36xx_hal_mac_ssid, i32, i32, i8, i8, i8, i8, [2 x %struct.in6_addr], [1 x i32], i32, %struct.anon.132, %struct.list_head, i32 }
%struct.in6_addr = type { %union.anon.39 }
%union.anon.39 = type { [4 x i32] }
%struct.anon.132 = type { [16 x i8], [16 x i8], i64, i8 }
%struct.wcn36xx_hal_join_req_msg = type <{ %struct.wcn36xx_hal_msg_header, [6 x i8], i8, [6 x i8], i8, i32, i32, i8 }>
%struct.wcn36xx_hal_join_rsp_msg = type <{ %struct.wcn36xx_hal_msg_header, i32, i8 }>
%struct.wcn36xx_hal_set_link_state_req_msg = type <{ %struct.wcn36xx_hal_msg_header, [6 x i8], i32, [6 x i8] }>
%struct.wcn36xx_hal_config_sta_req_msg = type <{ %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_config_sta_params }>
%struct.wcn36xx_hal_config_sta_params = type <{ [6 x i8], i16, i8, i8, [6 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wcn36xx_hal_supported_rates, i8, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>
%struct.wcn36xx_hal_supported_rates = type <{ i32, [4 x i16], [8 x i16], [3 x i16], i16, i32, [16 x i8], i16 }>
%struct.wcn36xx_hal_config_sta_req_msg_v1 = type { %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_config_sta_params_v1 }
%struct.wcn36xx_hal_config_sta_params_v1 = type <{ [6 x i8], i16, i8, i8, [6 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, %struct.wcn36xx_hal_supported_rates_v1, i8, i8 }>
%struct.wcn36xx_hal_supported_rates_v1 = type <{ i32, [4 x i16], [8 x i16], [3 x i16], i16, i32, [16 x i8], i16, i16, i16, i16, i16 }>
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.wcn36xx_hal_config_sta_rsp_msg = type <{ %struct.wcn36xx_hal_msg_header, %struct.config_sta_rsp_params }>
%struct.config_sta_rsp_params = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.wcn36xx_sta = type { %struct.list_head, ptr, i16, i16, i8, i8, i8, i8, i8, i8, %struct.wcn36xx_hal_supported_rates_v1, %struct.spinlock, [16 x i32], i32 }
%struct.wcn36xx_hal_config_bss_params = type <{ [6 x i8], [6 x i8], i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_mac_ssid, i8, %struct.wcn36xx_hal_rate_set, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.wcn36xx_hal_edca_param_record, %struct.wcn36xx_hal_edca_param_record, %struct.wcn36xx_hal_edca_param_record, %struct.wcn36xx_hal_edca_param_record, i8, %struct.wcn36xx_hal_set_sta_key_params, i8, i8, i8, i8 }>
%struct.wcn36xx_hal_rate_set = type { i8, [12 x i8] }
%struct.wcn36xx_hal_edca_param_record = type { %struct.wcn36xx_hal_aci_aifsn, %struct.wcn36xx_hal_mac_cw, i16 }
%struct.wcn36xx_hal_aci_aifsn = type { i8 }
%struct.wcn36xx_hal_mac_cw = type { i8 }
%struct.wcn36xx_hal_set_sta_key_params = type <{ i16, i32, i32, i8, [4 x %struct.wcn36xx_hal_keys], i8 }>
%struct.wcn36xx_hal_keys = type <{ i8, i8, i32, [16 x i8], i8, i16, [32 x i8] }>
%struct.wcn36xx_hal_config_bss_req_msg_v1 = type <{ %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_config_bss_params_v1 }>
%struct.wcn36xx_hal_config_bss_params_v1 = type <{ [6 x i8], [6 x i8], i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, %struct.wcn36xx_hal_mac_ssid, i8, %struct.wcn36xx_hal_rate_set, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.wcn36xx_hal_edca_param_record, %struct.wcn36xx_hal_edca_param_record, %struct.wcn36xx_hal_edca_param_record, %struct.wcn36xx_hal_edca_param_record, i8, %struct.wcn36xx_hal_set_sta_key_params, i8, i8, i8, i8, %struct.wcn36xx_hal_config_sta_params_v1, i8, i8 }>
%struct.wcn36xx_hal_config_bss_req_msg = type <{ %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_config_bss_params }>
%struct.wcn36xx_hal_config_bss_rsp_msg = type <{ %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_config_bss_rsp_params }>
%struct.wcn36xx_hal_config_bss_rsp_params = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.wcn36xx_hal_send_beacon_req_msg = type <{ %struct.wcn36xx_hal_msg_header, i32, i32, [380 x i8], [6 x i8], i32, i16 }>
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wcn36xx_hal_send_probe_resp_req_msg = type { %struct.wcn36xx_hal_msg_header, [384 x i8], i32, [8 x i32], [6 x i8] }
%struct.wcn36xx_hal_feat_caps_msg = type { %struct.wcn36xx_hal_msg_header, [4 x i32] }
%struct.wcn36xx_hal_add_ba_session_rsp_msg = type { %struct.wcn36xx_hal_msg_header, i32, i8, i8, i8, i8, i8, i8, i16 }
%struct.add_ba_info = type { i16 }
%struct.wcn36xx_hal_trigger_ba_rsp_msg = type <{ %struct.wcn36xx_hal_msg_header, [6 x i8], i32, i16 }>
%struct.wcn36xx_hal_update_cfg_req_msg = type { %struct.wcn36xx_hal_msg_header, i32 }
%struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg = type <{ %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type }>
%struct.wcn36xx_hal_rcv_flt_mc_addr_list_type = type <{ i8, i32, [240 x [6 x i8]], i8 }>
%struct.wcn36xx_hal_gtk_offload_get_info_rsp_msg = type <{ %struct.wcn36xx_hal_msg_header, i32, i32, i64, i32, i32, i32, i8 }>
%struct.wcn36xx_hal_add_bcn_filter_req_msg = type <{ %struct.wcn36xx_hal_msg_header, i16, i16, i16, i16, i8, i8 }>
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wcn36xx_hal_ind_msg = type { %struct.list_head, i32, [0 x i8] }
%struct.wcn36xx_hal_delete_sta_context_ind_msg = type <{ %struct.wcn36xx_hal_msg_header, i16, i16, [6 x i8], [6 x i8], i16 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wcn36xx_hal_print_reg_info_ind = type { %struct.wcn36xx_hal_msg_header, i32, i32, i32, [0 x %struct.anon.134] }
%struct.anon.134 = type { i32, i32 }

@wcn36xx_smd_load_nv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Failed to load nv file %s: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wcn36xx_smd_load_nv\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/wcn36xx/smd.c\00", [57 x i8] zeroinitializer }, align 32
@wcn36xx_smd_load_nv._entry_ptr = internal global ptr @wcn36xx_smd_load_nv._entry, section ".printk_index", align 4
@wcn36xx_smd_load_nv._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wcn36xx: ERROR hal_load_nv response failed err=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_smd_load_nv._entry_ptr.5 = internal global ptr @wcn36xx_smd_load_nv._entry.3, section ".printk_index", align 4
@wcn36xx_smd_start.cfg_vals = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wcn3680_cfg_vals = internal global { [93 x %struct.wcn36xx_cfg_val], [184 x i8] } { [93 x %struct.wcn36xx_cfg_val] [%struct.wcn36xx_cfg_val { i32 1, i32 1 }, %struct.wcn36xx_cfg_val { i32 2, i32 1 }, %struct.wcn36xx_cfg_val { i32 3, i32 0 }, %struct.wcn36xx_cfg_val { i32 4, i32 785 }, %struct.wcn36xx_cfg_val { i32 5, i32 5 }, %struct.wcn36xx_cfg_val { i32 6, i32 1 }, %struct.wcn36xx_cfg_val { i32 7, i32 0 }, %struct.wcn36xx_cfg_val { i32 8, i32 3 }, %struct.wcn36xx_cfg_val { i32 9, i32 4096 }, %struct.wcn36xx_cfg_val { i32 10, i32 64 }, %struct.wcn36xx_cfg_val { i32 11, i32 2347 }, %struct.wcn36xx_cfg_val { i32 12, i32 15 }, %struct.wcn36xx_cfg_val { i32 13, i32 15 }, %struct.wcn36xx_cfg_val { i32 14, i32 8000 }, %struct.wcn36xx_cfg_val { i32 15, i32 5 }, %struct.wcn36xx_cfg_val { i32 16, i32 10 }, %struct.wcn36xx_cfg_val { i32 17, i32 15 }, %struct.wcn36xx_cfg_val { i32 18, i32 0 }, %struct.wcn36xx_cfg_val { i32 19, i32 4 }, %struct.wcn36xx_cfg_val { i32 20, i32 0 }, %struct.wcn36xx_cfg_val { i32 21, i32 0 }, %struct.wcn36xx_cfg_val { i32 22, i32 5 }, %struct.wcn36xx_cfg_val { i32 23, i32 1 }, %struct.wcn36xx_cfg_val { i32 24, i32 5 }, %struct.wcn36xx_cfg_val { i32 25, i32 1 }, %struct.wcn36xx_cfg_val { i32 26, i32 5 }, %struct.wcn36xx_cfg_val { i32 27, i32 40 }, %struct.wcn36xx_cfg_val { i32 28, i32 200 }, %struct.wcn36xx_cfg_val { i32 29, i32 1 }, %struct.wcn36xx_cfg_val { i32 30, i32 1 }, %struct.wcn36xx_cfg_val { i32 31, i32 20 }, %struct.wcn36xx_cfg_val { i32 32, i32 10 }, %struct.wcn36xx_cfg_val { i32 33, i32 30000 }, %struct.wcn36xx_cfg_val { i32 34, i32 0 }, %struct.wcn36xx_cfg_val { i32 40, i32 128 }, %struct.wcn36xx_cfg_val { i32 41, i32 2560 }, %struct.wcn36xx_cfg_val { i32 57, i32 0 }, %struct.wcn36xx_cfg_val { i32 64, i32 1 }, %struct.wcn36xx_cfg_val { i32 75, i32 1 }, %struct.wcn36xx_cfg_val { i32 99, i32 0 }, %struct.wcn36xx_cfg_val { i32 87, i32 120000 }, %struct.wcn36xx_cfg_val { i32 91, i32 30000 }, %struct.wcn36xx_cfg_val { i32 98, i32 10 }, %struct.wcn36xx_cfg_val { i32 100, i32 0 }, %struct.wcn36xx_cfg_val { i32 109, i32 0 }, %struct.wcn36xx_cfg_val { i32 108, i32 1 }, %struct.wcn36xx_cfg_val { i32 110, i32 0 }, %struct.wcn36xx_cfg_val { i32 111, i32 10 }, %struct.wcn36xx_cfg_val { i32 116, i32 1 }, %struct.wcn36xx_cfg_val { i32 115, i32 1 }, %struct.wcn36xx_cfg_val { i32 114, i32 0 }, %struct.wcn36xx_cfg_val { i32 112, i32 3 }, %struct.wcn36xx_cfg_val { i32 113, i32 0 }, %struct.wcn36xx_cfg_val { i32 166, i32 60000 }, %struct.wcn36xx_cfg_val { i32 167, i32 90000 }, %struct.wcn36xx_cfg_val { i32 168, i32 30000 }, %struct.wcn36xx_cfg_val { i32 169, i32 30000 }, %struct.wcn36xx_cfg_val { i32 171, i32 50 }, %struct.wcn36xx_cfg_val { i32 172, i32 -60 }, %struct.wcn36xx_cfg_val { i32 173, i32 3 }, %struct.wcn36xx_cfg_val { i32 174, i32 0 }, %struct.wcn36xx_cfg_val { i32 194, i32 0 }, %struct.wcn36xx_cfg_val { i32 195, i32 60 }, %struct.wcn36xx_cfg_val { i32 196, i32 2 }, %struct.wcn36xx_cfg_val { i32 197, i32 1 }, %struct.wcn36xx_cfg_val { i32 198, i32 0 }, %struct.wcn36xx_cfg_val { i32 199, i32 1 }, %struct.wcn36xx_cfg_val { i32 201, i32 10 }, %struct.wcn36xx_cfg_val { i32 202, i32 50 }, %struct.wcn36xx_cfg_val { i32 203, i32 50 }, %struct.wcn36xx_cfg_val { i32 205, i32 500 }, %struct.wcn36xx_cfg_val { i32 204, i32 500 }, %struct.wcn36xx_cfg_val { i32 206, i32 0 }, %struct.wcn36xx_cfg_val { i32 207, i32 10 }, %struct.wcn36xx_cfg_val { i32 208, i32 1 }, %struct.wcn36xx_cfg_val { i32 209, i32 0 }, %struct.wcn36xx_cfg_val { i32 210, i32 136 }, %struct.wcn36xx_cfg_val { i32 211, i32 1 }, %struct.wcn36xx_cfg_val { i32 212, i32 0 }, %struct.wcn36xx_cfg_val { i32 213, i32 30000 }, %struct.wcn36xx_cfg_val { i32 214, i32 120000 }, %struct.wcn36xx_cfg_val { i32 215, i32 1000 }, %struct.wcn36xx_cfg_val { i32 216, i32 0 }, %struct.wcn36xx_cfg_val { i32 217, i32 0 }, %struct.wcn36xx_cfg_val { i32 218, i32 0 }, %struct.wcn36xx_cfg_val { i32 219, i32 0 }, %struct.wcn36xx_cfg_val { i32 220, i32 0 }, %struct.wcn36xx_cfg_val { i32 223, i32 5 }, %struct.wcn36xx_cfg_val { i32 224, i32 2 }, %struct.wcn36xx_cfg_val { i32 222, i32 0 }, %struct.wcn36xx_cfg_val { i32 221, i32 0 }, %struct.wcn36xx_cfg_val { i32 225, i32 0 }, %struct.wcn36xx_cfg_val { i32 226, i32 0 }], [184 x i8] zeroinitializer }, align 32
@wcn36xx_cfg_vals = internal global { [45 x %struct.wcn36xx_cfg_val], [88 x i8] } { [45 x %struct.wcn36xx_cfg_val] [%struct.wcn36xx_cfg_val { i32 1, i32 1 }, %struct.wcn36xx_cfg_val { i32 2, i32 1 }, %struct.wcn36xx_cfg_val { i32 3, i32 0 }, %struct.wcn36xx_cfg_val { i32 4, i32 785 }, %struct.wcn36xx_cfg_val { i32 5, i32 5 }, %struct.wcn36xx_cfg_val { i32 6, i32 1 }, %struct.wcn36xx_cfg_val { i32 7, i32 0 }, %struct.wcn36xx_cfg_val { i32 8, i32 3 }, %struct.wcn36xx_cfg_val { i32 9, i32 6000 }, %struct.wcn36xx_cfg_val { i32 10, i32 64 }, %struct.wcn36xx_cfg_val { i32 11, i32 2347 }, %struct.wcn36xx_cfg_val { i32 12, i32 15 }, %struct.wcn36xx_cfg_val { i32 13, i32 15 }, %struct.wcn36xx_cfg_val { i32 14, i32 8000 }, %struct.wcn36xx_cfg_val { i32 15, i32 5 }, %struct.wcn36xx_cfg_val { i32 16, i32 10 }, %struct.wcn36xx_cfg_val { i32 17, i32 15 }, %struct.wcn36xx_cfg_val { i32 18, i32 0 }, %struct.wcn36xx_cfg_val { i32 19, i32 4 }, %struct.wcn36xx_cfg_val { i32 20, i32 0 }, %struct.wcn36xx_cfg_val { i32 21, i32 0 }, %struct.wcn36xx_cfg_val { i32 22, i32 5 }, %struct.wcn36xx_cfg_val { i32 23, i32 1 }, %struct.wcn36xx_cfg_val { i32 24, i32 5 }, %struct.wcn36xx_cfg_val { i32 26, i32 5 }, %struct.wcn36xx_cfg_val { i32 27, i32 40 }, %struct.wcn36xx_cfg_val { i32 28, i32 200 }, %struct.wcn36xx_cfg_val { i32 29, i32 1 }, %struct.wcn36xx_cfg_val { i32 30, i32 1 }, %struct.wcn36xx_cfg_val { i32 31, i32 20 }, %struct.wcn36xx_cfg_val { i32 32, i32 10 }, %struct.wcn36xx_cfg_val { i32 33, i32 30000 }, %struct.wcn36xx_cfg_val { i32 34, i32 0 }, %struct.wcn36xx_cfg_val { i32 40, i32 128 }, %struct.wcn36xx_cfg_val { i32 41, i32 2560 }, %struct.wcn36xx_cfg_val { i32 57, i32 0 }, %struct.wcn36xx_cfg_val { i32 64, i32 1 }, %struct.wcn36xx_cfg_val { i32 75, i32 1 }, %struct.wcn36xx_cfg_val { i32 99, i32 0 }, %struct.wcn36xx_cfg_val { i32 87, i32 120000 }, %struct.wcn36xx_cfg_val { i32 91, i32 30000 }, %struct.wcn36xx_cfg_val { i32 98, i32 10 }, %struct.wcn36xx_cfg_val { i32 100, i32 0 }, %struct.wcn36xx_cfg_val { i32 210, i32 133 }, %struct.wcn36xx_cfg_val { i32 215, i32 1000 }], [88 x i8] zeroinitializer }, align 32
@wcn36xx_dbg_mask = external dso_local local_unnamed_addr global i32, align 4
@wcn36xx_smd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017wcn36xx: hal start type %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcn36xx_smd_start\00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start._entry_ptr = internal global ptr @wcn36xx_smd_start._entry, section ".printk_index", align 4
@wcn36xx_smd_start._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wcn36xx: ERROR Sending hal_start failed\0A\00", [53 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start._entry_ptr.10 = internal global ptr @wcn36xx_smd_start._entry.8, section ".printk_index", align 4
@wcn36xx_smd_start._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013wcn36xx: ERROR hal_start response failed err=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start._entry_ptr.13 = internal global ptr @wcn36xx_smd_start._entry.11, section ".printk_index", align 4
@wcn36xx_smd_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013wcn36xx: ERROR Sending hal_stop failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wcn36xx_smd_stop\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_smd_stop._entry_ptr = internal global ptr @wcn36xx_smd_stop._entry, section ".printk_index", align 4
@wcn36xx_smd_stop._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013wcn36xx: ERROR hal_stop response failed err=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_smd_stop._entry_ptr.18 = internal global ptr @wcn36xx_smd_stop._entry.16, section ".printk_index", align 4
@wcn36xx_smd_init_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017wcn36xx: hal init scan mode %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wcn36xx_smd_init_scan\00", [42 x i8] zeroinitializer }, align 32
@wcn36xx_smd_init_scan._entry_ptr = internal global ptr @wcn36xx_smd_init_scan._entry, section ".printk_index", align 4
@wcn36xx_smd_init_scan._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wcn36xx: ERROR Sending hal_init_scan failed\0A\00", [49 x i8] zeroinitializer }, align 32
@wcn36xx_smd_init_scan._entry_ptr.23 = internal global ptr @wcn36xx_smd_init_scan._entry.21, section ".printk_index", align 4
@wcn36xx_smd_init_scan._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wcn36xx: ERROR hal_init_scan response failed err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_init_scan._entry_ptr.26 = internal global ptr @wcn36xx_smd_init_scan._entry.24, section ".printk_index", align 4
@wcn36xx_smd_start_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017wcn36xx: hal start scan channel %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_start_scan\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start_scan._entry_ptr = internal global ptr @wcn36xx_smd_start_scan._entry, section ".printk_index", align 4
@wcn36xx_smd_start_scan._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_start_scan failed\0A\00", [48 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start_scan._entry_ptr.31 = internal global ptr @wcn36xx_smd_start_scan._entry.29, section ".printk_index", align 4
@wcn36xx_smd_start_scan._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_start_scan response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start_scan._entry_ptr.34 = internal global ptr @wcn36xx_smd_start_scan._entry.32, section ".printk_index", align 4
@wcn36xx_smd_end_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017wcn36xx: hal end scan channel %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcn36xx_smd_end_scan\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_smd_end_scan._entry_ptr = internal global ptr @wcn36xx_smd_end_scan._entry, section ".printk_index", align 4
@wcn36xx_smd_end_scan._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013wcn36xx: ERROR Sending hal_end_scan failed\0A\00", [50 x i8] zeroinitializer }, align 32
@wcn36xx_smd_end_scan._entry_ptr.39 = internal global ptr @wcn36xx_smd_end_scan._entry.37, section ".printk_index", align 4
@wcn36xx_smd_end_scan._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wcn36xx: ERROR hal_end_scan response failed err=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@wcn36xx_smd_end_scan._entry_ptr.42 = internal global ptr @wcn36xx_smd_end_scan._entry.40, section ".printk_index", align 4
@wcn36xx_smd_finish_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017wcn36xx: hal finish scan mode %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_smd_finish_scan\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_finish_scan._entry_ptr = internal global ptr @wcn36xx_smd_finish_scan._entry, section ".printk_index", align 4
@wcn36xx_smd_finish_scan._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wcn36xx: ERROR Sending hal_finish_scan failed\0A\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_smd_finish_scan._entry_ptr.47 = internal global ptr @wcn36xx_smd_finish_scan._entry.45, section ".printk_index", align 4
@wcn36xx_smd_finish_scan._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wcn36xx: ERROR hal_finish_scan response failed err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_finish_scan._entry_ptr.50 = internal global ptr @wcn36xx_smd_finish_scan._entry.48, section ".printk_index", align 4
@wcn36xx_smd_start_hw_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017wcn36xx: hal start hw-scan (channels: %u; ssids: %u; p2p: %s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_smd_start_hw_scan\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start_hw_scan._entry_ptr = internal global ptr @wcn36xx_smd_start_hw_scan._entry, section ".printk_index", align 4
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start_hw_scan._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.52, ptr @.str.2, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR Sending hal_start_scan_offload failed\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start_hw_scan._entry_ptr.57 = internal global ptr @wcn36xx_smd_start_hw_scan._entry.55, section ".printk_index", align 4
@wcn36xx_smd_start_hw_scan._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.52, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013wcn36xx: ERROR hal_start_scan_offload response failed err=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start_hw_scan._entry_ptr.60 = internal global ptr @wcn36xx_smd_start_hw_scan._entry.58, section ".printk_index", align 4
@wcn36xx_smd_stop_hw_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017wcn36xx: hal stop hw-scan\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_smd_stop_hw_scan\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_stop_hw_scan._entry_ptr = internal global ptr @wcn36xx_smd_stop_hw_scan._entry, section ".printk_index", align 4
@wcn36xx_smd_stop_hw_scan._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wcn36xx: ERROR Sending hal_stop_scan_offload failed\0A\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_stop_hw_scan._entry_ptr.65 = internal global ptr @wcn36xx_smd_stop_hw_scan._entry.63, section ".printk_index", align 4
@wcn36xx_smd_stop_hw_scan._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013wcn36xx: ERROR hal_stop_scan_offload response failed err=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@wcn36xx_smd_stop_hw_scan._entry_ptr.68 = internal global ptr @wcn36xx_smd_stop_hw_scan._entry.66, section ".printk_index", align 4
@wcn36xx_smd_update_channel_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017wcn36xx: %s: freq=%u, channel_info=%08x, reg_info1=%08x, reg_info2=%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wcn36xx_smd_update_channel_list\00", [32 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_channel_list._entry_ptr = internal global ptr @wcn36xx_smd_update_channel_list._entry, section ".printk_index", align 4
@wcn36xx_smd_update_channel_list._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wcn36xx: ERROR Sending hal_update_channel_list failed\0A\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_channel_list._entry_ptr.73 = internal global ptr @wcn36xx_smd_update_channel_list._entry.71, section ".printk_index", align 4
@wcn36xx_smd_update_channel_list._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013wcn36xx: ERROR hal_update_channel_list response failed err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_channel_list._entry_ptr.76 = internal global ptr @wcn36xx_smd_update_channel_list._entry.74, section ".printk_index", align 4
@wcn36xx_smd_switch_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wcn36xx: ERROR Sending hal_switch_channel failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wcn36xx_smd_switch_channel\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_switch_channel._entry_ptr = internal global ptr @wcn36xx_smd_switch_channel._entry, section ".printk_index", align 4
@wcn36xx_smd_switch_channel._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013wcn36xx: ERROR hal_switch_channel response failed err=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_smd_switch_channel._entry_ptr.81 = internal global ptr @wcn36xx_smd_switch_channel._entry.79, section ".printk_index", align 4
@wcn36xx_smd_process_ptt_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wcn36xx: ERROR Sending hal_process_ptt_msg failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wcn36xx_smd_process_ptt_msg\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_smd_process_ptt_msg._entry_ptr = internal global ptr @wcn36xx_smd_process_ptt_msg._entry, section ".printk_index", align 4
@wcn36xx_smd_process_ptt_msg._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wcn36xx: ERROR process_ptt_msg response failed err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_process_ptt_msg._entry_ptr.86 = internal global ptr @wcn36xx_smd_process_ptt_msg._entry.84, section ".printk_index", align 4
@wcn36xx_smd_update_scan_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017wcn36xx: hal update scan params channel_count %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wcn36xx_smd_update_scan_params\00", [33 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_scan_params._entry_ptr = internal global ptr @wcn36xx_smd_update_scan_params._entry, section ".printk_index", align 4
@wcn36xx_smd_update_scan_params._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR Sending hal_update_scan_params failed\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_scan_params._entry_ptr.91 = internal global ptr @wcn36xx_smd_update_scan_params._entry.89, section ".printk_index", align 4
@wcn36xx_smd_update_scan_params._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013wcn36xx: ERROR hal_update_scan_params response failed err=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_scan_params._entry_ptr.94 = internal global ptr @wcn36xx_smd_update_scan_params._entry.92, section ".printk_index", align 4
@wcn36xx_smd_add_sta_self._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017wcn36xx: hal add sta self self_addr %pM status %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_smd_add_sta_self\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_sta_self._entry_ptr = internal global ptr @wcn36xx_smd_add_sta_self._entry, section ".printk_index", align 4
@wcn36xx_smd_add_sta_self._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013wcn36xx: ERROR Sending hal_add_sta_self failed\0A\00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_sta_self._entry_ptr.99 = internal global ptr @wcn36xx_smd_add_sta_self._entry.97, section ".printk_index", align 4
@wcn36xx_smd_add_sta_self._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.2, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013wcn36xx: ERROR hal_add_sta_self response failed err=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_sta_self._entry_ptr.102 = internal global ptr @wcn36xx_smd_add_sta_self._entry.100, section ".printk_index", align 4
@wcn36xx_smd_delete_sta_self._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wcn36xx: ERROR Sending hal_delete_sta_self failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wcn36xx_smd_delete_sta_self\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_sta_self._entry_ptr = internal global ptr @wcn36xx_smd_delete_sta_self._entry, section ".printk_index", align 4
@wcn36xx_smd_delete_sta_self._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013wcn36xx: ERROR hal_delete_sta_self response failed err=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_sta_self._entry_ptr.107 = internal global ptr @wcn36xx_smd_delete_sta_self._entry.105, section ".printk_index", align 4
@wcn36xx_smd_delete_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017wcn36xx: hal delete sta sta_index %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_delete_sta\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_sta._entry_ptr = internal global ptr @wcn36xx_smd_delete_sta._entry, section ".printk_index", align 4
@wcn36xx_smd_delete_sta._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_delete_sta failed\0A\00", [48 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_sta._entry_ptr.112 = internal global ptr @wcn36xx_smd_delete_sta._entry.110, section ".printk_index", align 4
@wcn36xx_smd_delete_sta._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_delete_sta response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_sta._entry_ptr.115 = internal global ptr @wcn36xx_smd_delete_sta._entry.113, section ".printk_index", align 4
@wcn36xx_smd_join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\017wcn36xx: hal join req bssid %pM self_sta_mac_addr %pM channel %d link_state %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wcn36xx_smd_join\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_smd_join._entry_ptr = internal global ptr @wcn36xx_smd_join._entry, section ".printk_index", align 4
@wcn36xx_smd_join._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013wcn36xx: ERROR Sending hal_join failed\0A\00", [54 x i8] zeroinitializer }, align 32
@wcn36xx_smd_join._entry_ptr.120 = internal global ptr @wcn36xx_smd_join._entry.118, section ".printk_index", align 4
@wcn36xx_smd_join._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.2, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013wcn36xx: ERROR hal_join response failed err=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_smd_join._entry_ptr.123 = internal global ptr @wcn36xx_smd_join._entry.121, section ".printk_index", align 4
@wcn36xx_smd_set_link_st._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017wcn36xx: hal set link state bssid %pM self_mac_addr %pM state %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_smd_set_link_st\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_link_st._entry_ptr = internal global ptr @wcn36xx_smd_set_link_st._entry, section ".printk_index", align 4
@wcn36xx_smd_set_link_st._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wcn36xx: ERROR Sending hal_set_link_st failed\0A\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_link_st._entry_ptr.128 = internal global ptr @wcn36xx_smd_set_link_st._entry.126, section ".printk_index", align 4
@wcn36xx_smd_set_link_st._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.2, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wcn36xx: ERROR hal_set_link_st response failed err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_link_st._entry_ptr.131 = internal global ptr @wcn36xx_smd_set_link_st._entry.129, section ".printk_index", align 4
@wcn36xx_smd_config_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_config_sta failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_config_sta\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_sta._entry_ptr = internal global ptr @wcn36xx_smd_config_sta._entry, section ".printk_index", align 4
@wcn36xx_smd_config_sta._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.2, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_config_sta response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_sta._entry_ptr.136 = internal global ptr @wcn36xx_smd_config_sta._entry.134, section ".printk_index", align 4
@wcn36xx_smd_config_bss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_config_bss failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_config_bss\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_bss._entry_ptr = internal global ptr @wcn36xx_smd_config_bss._entry, section ".printk_index", align 4
@wcn36xx_smd_config_bss._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 1902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_config_bss response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_bss._entry_ptr.141 = internal global ptr @wcn36xx_smd_config_bss._entry.139, section ".printk_index", align 4
@wcn36xx_smd_delete_bss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 1926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017wcn36xx: hal delete bss %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_delete_bss\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_bss._entry_ptr = internal global ptr @wcn36xx_smd_delete_bss._entry, section ".printk_index", align 4
@wcn36xx_smd_delete_bss._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 1930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_delete_bss failed\0A\00", [48 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_bss._entry_ptr.146 = internal global ptr @wcn36xx_smd_delete_bss._entry.144, section ".printk_index", align 4
@wcn36xx_smd_delete_bss._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.2, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_delete_bss response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_bss._entry_ptr.149 = internal global ptr @wcn36xx_smd_delete_bss._entry.147, section ".printk_index", align 4
@wcn36xx_smd_send_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 1968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wcn36xx: ERROR Beacon is too big: beacon size=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_smd_send_beacon\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_send_beacon._entry_ptr = internal global ptr @wcn36xx_smd_send_beacon._entry, section ".printk_index", align 4
@wcn36xx_smd_send_beacon._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 1983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017wcn36xx: Pad TIM PVM. %d bytes at %d\0A\00", [56 x i8] zeroinitializer }, align 32
@wcn36xx_smd_send_beacon._entry_ptr.154 = internal global ptr @wcn36xx_smd_send_beacon._entry.152, section ".printk_index", align 4
@wcn36xx_smd_send_beacon._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.151, ptr @.str.2, i32 2002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017wcn36xx: hal send beacon beacon_length %d\0A\00", [51 x i8] zeroinitializer }, align 32
@wcn36xx_smd_send_beacon._entry_ptr.157 = internal global ptr @wcn36xx_smd_send_beacon._entry.155, section ".printk_index", align 4
@wcn36xx_smd_send_beacon._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.151, ptr @.str.2, i32 2006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wcn36xx: ERROR Sending hal_send_beacon failed\0A\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_smd_send_beacon._entry_ptr.160 = internal global ptr @wcn36xx_smd_send_beacon._entry.158, section ".printk_index", align 4
@wcn36xx_smd_send_beacon._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.151, ptr @.str.2, i32 2011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wcn36xx: ERROR hal_send_beacon response failed err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_send_beacon._entry_ptr.163 = internal global ptr @wcn36xx_smd_send_beacon._entry.161, section ".printk_index", align 4
@wcn36xx_smd_update_proberesp_tmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.2, i32 2031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wcn36xx: WARNING probe response template is too big: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wcn36xx_smd_update_proberesp_tmpl\00", [62 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_proberesp_tmpl._entry_ptr = internal global ptr @wcn36xx_smd_update_proberesp_tmpl._entry, section ".printk_index", align 4
@wcn36xx_smd_update_proberesp_tmpl._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.165, ptr @.str.2, i32 2045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017wcn36xx: hal update probe rsp len %d bssid %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_proberesp_tmpl._entry_ptr.168 = internal global ptr @wcn36xx_smd_update_proberesp_tmpl._entry.166, section ".printk_index", align 4
@wcn36xx_smd_update_proberesp_tmpl._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.165, ptr @.str.2, i32 2049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wcn36xx: ERROR Sending hal_update_proberesp_tmpl failed\0A\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_proberesp_tmpl._entry_ptr.171 = internal global ptr @wcn36xx_smd_update_proberesp_tmpl._entry.169, section ".printk_index", align 4
@wcn36xx_smd_update_proberesp_tmpl._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.165, ptr @.str.2, i32 2055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013wcn36xx: ERROR hal_update_proberesp_tmpl response failed err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_proberesp_tmpl._entry_ptr.174 = internal global ptr @wcn36xx_smd_update_proberesp_tmpl._entry.172, section ".printk_index", align 4
@wcn36xx_smd_set_stakey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_set_stakey failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_set_stakey\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_stakey._entry_ptr = internal global ptr @wcn36xx_smd_set_stakey._entry, section ".printk_index", align 4
@wcn36xx_smd_set_stakey._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.2, i32 2104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_set_stakey response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_stakey._entry_ptr.179 = internal global ptr @wcn36xx_smd_set_stakey._entry.177, section ".printk_index", align 4
@wcn36xx_smd_set_bsskey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 2138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_set_bsskey failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_set_bsskey\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_bsskey._entry_ptr = internal global ptr @wcn36xx_smd_set_bsskey._entry, section ".printk_index", align 4
@wcn36xx_smd_set_bsskey._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.2, i32 2143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_set_bsskey response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_bsskey._entry_ptr.184 = internal global ptr @wcn36xx_smd_set_bsskey._entry.182, section ".printk_index", align 4
@wcn36xx_smd_remove_stakey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.2, i32 2170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013wcn36xx: ERROR Sending hal_remove_stakey failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_smd_remove_stakey\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_remove_stakey._entry_ptr = internal global ptr @wcn36xx_smd_remove_stakey._entry, section ".printk_index", align 4
@wcn36xx_smd_remove_stakey._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.186, ptr @.str.2, i32 2175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wcn36xx: ERROR hal_remove_stakey response failed err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_remove_stakey._entry_ptr.189 = internal global ptr @wcn36xx_smd_remove_stakey._entry.187, section ".printk_index", align 4
@wcn36xx_smd_remove_bsskey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.2, i32 2201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013wcn36xx: ERROR Sending hal_remove_bsskey failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_smd_remove_bsskey\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_remove_bsskey._entry_ptr = internal global ptr @wcn36xx_smd_remove_bsskey._entry, section ".printk_index", align 4
@wcn36xx_smd_remove_bsskey._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.2, i32 2206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wcn36xx: ERROR hal_remove_bsskey response failed err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_remove_bsskey._entry_ptr.194 = internal global ptr @wcn36xx_smd_remove_bsskey._entry.192, section ".printk_index", align 4
@wcn36xx_smd_enter_bmps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 2231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_enter_bmps failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_enter_bmps\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_enter_bmps._entry_ptr = internal global ptr @wcn36xx_smd_enter_bmps._entry, section ".printk_index", align 4
@wcn36xx_smd_enter_bmps._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.196, ptr @.str.2, i32 2236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_enter_bmps response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_enter_bmps._entry_ptr.199 = internal global ptr @wcn36xx_smd_enter_bmps._entry.197, section ".printk_index", align 4
@wcn36xx_smd_exit_bmps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 2260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wcn36xx: ERROR Sending hal_exit_bmps failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wcn36xx_smd_exit_bmps\00", [42 x i8] zeroinitializer }, align 32
@wcn36xx_smd_exit_bmps._entry_ptr = internal global ptr @wcn36xx_smd_exit_bmps._entry, section ".printk_index", align 4
@wcn36xx_smd_exit_bmps._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.2, i32 2265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wcn36xx: ERROR hal_exit_bmps response failed err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_exit_bmps._entry_ptr.204 = internal global ptr @wcn36xx_smd_exit_bmps._entry.202, section ".printk_index", align 4
@wcn36xx_smd_enter_imps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.2, i32 2285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_enter_imps failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_enter_imps\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_enter_imps._entry_ptr = internal global ptr @wcn36xx_smd_enter_imps._entry, section ".printk_index", align 4
@wcn36xx_smd_enter_imps._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.206, ptr @.str.2, i32 2290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_enter_imps response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_enter_imps._entry_ptr.209 = internal global ptr @wcn36xx_smd_enter_imps._entry.207, section ".printk_index", align 4
@wcn36xx_smd_enter_imps._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.206, ptr @.str.2, i32 2294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017wcn36xx: Entered idle mode\0A\00", [34 x i8] zeroinitializer }, align 32
@wcn36xx_smd_enter_imps._entry_ptr.212 = internal global ptr @wcn36xx_smd_enter_imps._entry.210, section ".printk_index", align 4
@wcn36xx_smd_exit_imps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.2, i32 2312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wcn36xx: ERROR Sending hal_exit_imps failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wcn36xx_smd_exit_imps\00", [42 x i8] zeroinitializer }, align 32
@wcn36xx_smd_exit_imps._entry_ptr = internal global ptr @wcn36xx_smd_exit_imps._entry, section ".printk_index", align 4
@wcn36xx_smd_exit_imps._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.2, i32 2317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wcn36xx: ERROR hal_exit_imps response failed err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_exit_imps._entry_ptr.217 = internal global ptr @wcn36xx_smd_exit_imps._entry.215, section ".printk_index", align 4
@wcn36xx_smd_exit_imps._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.214, ptr @.str.2, i32 2320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017wcn36xx: Exited idle mode\0A\00", [35 x i8] zeroinitializer }, align 32
@wcn36xx_smd_exit_imps._entry_ptr.220 = internal global ptr @wcn36xx_smd_exit_imps._entry.218, section ".printk_index", align 4
@wcn36xx_smd_set_power_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.2, i32 2347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wcn36xx: ERROR Sending hal_set_power_params failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wcn36xx_smd_set_power_params\00", [35 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_power_params._entry_ptr = internal global ptr @wcn36xx_smd_set_power_params._entry, section ".printk_index", align 4
@wcn36xx_smd_keep_alive_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.2, i32 2377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014wcn36xx: WARNING unknown keep alive packet type %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wcn36xx_smd_keep_alive_req\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_keep_alive_req._entry_ptr = internal global ptr @wcn36xx_smd_keep_alive_req._entry, section ".printk_index", align 4
@wcn36xx_smd_keep_alive_req._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.224, ptr @.str.2, i32 2386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_keep_alive failed\0A\00", [48 x i8] zeroinitializer }, align 32
@wcn36xx_smd_keep_alive_req._entry_ptr.227 = internal global ptr @wcn36xx_smd_keep_alive_req._entry.225, section ".printk_index", align 4
@wcn36xx_smd_keep_alive_req._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.224, ptr @.str.2, i32 2391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_keep_alive response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_keep_alive_req._entry_ptr.230 = internal global ptr @wcn36xx_smd_keep_alive_req._entry.228, section ".printk_index", align 4
@wcn36xx_smd_dump_cmd_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.2, i32 2418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013wcn36xx: ERROR Sending hal_dump_cmd failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_smd_dump_cmd_req\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_dump_cmd_req._entry_ptr = internal global ptr @wcn36xx_smd_dump_cmd_req._entry, section ".printk_index", align 4
@wcn36xx_smd_dump_cmd_req._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.232, ptr @.str.2, i32 2423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wcn36xx: ERROR hal_dump_cmd response failed err=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@wcn36xx_smd_dump_cmd_req._entry_ptr.235 = internal global ptr @wcn36xx_smd_dump_cmd_req._entry.233, section ".printk_index", align 4
@set_feat_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.2, i32 2436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014wcn36xx: WARNING error cap idx %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_feat_caps\00", [18 x i8] zeroinitializer }, align 32
@set_feat_caps._entry_ptr = internal global ptr @set_feat_caps._entry, section ".printk_index", align 4
@get_feat_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.238, ptr @.str.2, i32 2450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_feat_caps\00", [18 x i8] zeroinitializer }, align 32
@get_feat_caps._entry_ptr = internal global ptr @get_feat_caps._entry, section ".printk_index", align 4
@clear_feat_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.239, ptr @.str.2, i32 2465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clear_feat_caps\00", [16 x i8] zeroinitializer }, align 32
@clear_feat_caps._entry_ptr = internal global ptr @clear_feat_caps._entry, section ".printk_index", align 4
@wcn36xx_smd_feature_caps_exchange._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.241, ptr @.str.2, i32 2493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wcn36xx: ERROR Sending hal_feature_caps_exchange failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wcn36xx_smd_feature_caps_exchange\00", [62 x i8] zeroinitializer }, align 32
@wcn36xx_smd_feature_caps_exchange._entry_ptr = internal global ptr @wcn36xx_smd_feature_caps_exchange._entry, section ".printk_index", align 4
@wcn36xx_smd_feature_caps_exchange._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.241, ptr @.str.2, i32 2497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013wcn36xx: ERROR Invalid hal_feature_caps_exchange response\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_smd_feature_caps_exchange._entry_ptr.244 = internal global ptr @wcn36xx_smd_feature_caps_exchange._entry.242, section ".printk_index", align 4
@wcn36xx_smd_add_ba_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.2, i32 2557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wcn36xx: ERROR Sending hal_add_ba_session failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wcn36xx_smd_add_ba_session\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_ba_session._entry_ptr = internal global ptr @wcn36xx_smd_add_ba_session._entry, section ".printk_index", align 4
@wcn36xx_smd_add_ba_session._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.246, ptr @.str.2, i32 2563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013wcn36xx: ERROR hal_add_ba_session response failed err=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_ba_session._entry_ptr.249 = internal global ptr @wcn36xx_smd_add_ba_session._entry.247, section ".printk_index", align 4
@wcn36xx_smd_add_ba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.2, i32 2589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wcn36xx: ERROR Sending hal_add_ba failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wcn36xx_smd_add_ba\00", [45 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_ba._entry_ptr = internal global ptr @wcn36xx_smd_add_ba._entry, section ".printk_index", align 4
@wcn36xx_smd_add_ba._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.251, ptr @.str.2, i32 2594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wcn36xx: ERROR hal_add_ba response failed err=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_ba._entry_ptr.254 = internal global ptr @wcn36xx_smd_add_ba._entry.252, section ".printk_index", align 4
@wcn36xx_smd_del_ba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.2, i32 2617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wcn36xx: ERROR Sending hal_del_ba failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wcn36xx_smd_del_ba\00", [45 x i8] zeroinitializer }, align 32
@wcn36xx_smd_del_ba._entry_ptr = internal global ptr @wcn36xx_smd_del_ba._entry, section ".printk_index", align 4
@wcn36xx_smd_del_ba._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.256, ptr @.str.2, i32 2622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wcn36xx: ERROR hal_del_ba response failed err=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@wcn36xx_smd_del_ba._entry_ptr.259 = internal global ptr @wcn36xx_smd_del_ba._entry.257, section ".printk_index", align 4
@wcn36xx_smd_trigger_ba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.261, ptr @.str.2, i32 2678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_trigger_ba failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_trigger_ba\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_trigger_ba._entry_ptr = internal global ptr @wcn36xx_smd_trigger_ba._entry, section ".printk_index", align 4
@wcn36xx_smd_trigger_ba._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.261, ptr @.str.2, i32 2683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_trigger_ba response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_trigger_ba._entry_ptr.264 = internal global ptr @wcn36xx_smd_trigger_ba._entry.262, section ".printk_index", align 4
@wcn36xx_smd_update_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.266, ptr @.str.2, i32 2882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending hal_update_cfg failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_smd_update_cfg\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_cfg._entry_ptr = internal global ptr @wcn36xx_smd_update_cfg._entry, section ".printk_index", align 4
@wcn36xx_smd_update_cfg._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.266, ptr @.str.2, i32 2887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR hal_update_cfg response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_cfg._entry_ptr.269 = internal global ptr @wcn36xx_smd_update_cfg._entry.267, section ".printk_index", align 4
@wcn36xx_smd_set_mc_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.271, ptr @.str.2, i32 2920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wcn36xx: ERROR Sending HAL_8023_MULTICAST_LIST failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_smd_set_mc_list\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_mc_list._entry_ptr = internal global ptr @wcn36xx_smd_set_mc_list._entry, section ".printk_index", align 4
@wcn36xx_smd_set_mc_list._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.271, ptr @.str.2, i32 2925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013wcn36xx: ERROR HAL_8023_MULTICAST_LIST rsp failed err=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_mc_list._entry_ptr.274 = internal global ptr @wcn36xx_smd_set_mc_list._entry.272, section ".printk_index", align 4
@wcn36xx_smd_arp_offload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.276, ptr @.str.2, i32 2957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013wcn36xx: ERROR Sending host_offload_arp failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_smd_arp_offload\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_arp_offload._entry_ptr = internal global ptr @wcn36xx_smd_arp_offload._entry, section ".printk_index", align 4
@wcn36xx_smd_arp_offload._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.276, ptr @.str.2, i32 2962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wcn36xx: ERROR host_offload_arp failed err=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_smd_arp_offload._entry_ptr.279 = internal global ptr @wcn36xx_smd_arp_offload._entry.277, section ".printk_index", align 4
@wcn36xx_smd_ipv6_ns_offload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.280, ptr @.str.2, i32 3013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wcn36xx_smd_ipv6_ns_offload\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_smd_ipv6_ns_offload._entry_ptr = internal global ptr @wcn36xx_smd_ipv6_ns_offload._entry, section ".printk_index", align 4
@wcn36xx_smd_ipv6_ns_offload._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.280, ptr @.str.2, i32 3018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_ipv6_ns_offload._entry_ptr.282 = internal global ptr @wcn36xx_smd_ipv6_ns_offload._entry.281, section ".printk_index", align 4
@wcn36xx_smd_gtk_offload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.283, ptr @.str.2, i32 3058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_smd_gtk_offload\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_gtk_offload._entry_ptr = internal global ptr @wcn36xx_smd_gtk_offload._entry, section ".printk_index", align 4
@wcn36xx_smd_gtk_offload._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.283, ptr @.str.2, i32 3063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_gtk_offload._entry_ptr.285 = internal global ptr @wcn36xx_smd_gtk_offload._entry.284, section ".printk_index", align 4
@wcn36xx_smd_gtk_offload_get_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.2, i32 3129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wcn36xx: ERROR Sending gtk_offload_get_info failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wcn36xx_smd_gtk_offload_get_info\00", [63 x i8] zeroinitializer }, align 32
@wcn36xx_smd_gtk_offload_get_info._entry_ptr = internal global ptr @wcn36xx_smd_gtk_offload_get_info._entry, section ".printk_index", align 4
@wcn36xx_smd_gtk_offload_get_info._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.287, ptr @.str.2, i32 3134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wcn36xx: ERROR gtk_offload_get_info failed err=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_smd_gtk_offload_get_info._entry_ptr.290 = internal global ptr @wcn36xx_smd_gtk_offload_get_info._entry.288, section ".printk_index", align 4
@wcn36xx_smd_host_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.292, ptr @.str.2, i32 3177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013wcn36xx: ERROR Sending wlan_host_resume failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_smd_host_resume\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_host_resume._entry_ptr = internal global ptr @wcn36xx_smd_host_resume._entry, section ".printk_index", align 4
@wcn36xx_smd_host_resume._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.292, ptr @.str.2, i32 3182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013wcn36xx: ERROR wlan_host_resume err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@wcn36xx_smd_host_resume._entry_ptr.295 = internal global ptr @wcn36xx_smd_host_resume._entry.293, section ".printk_index", align 4
@wcn36xx_smd_host_resume._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.292, ptr @.str.2, i32 3188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wcn36xx: WARNING wlan_host_resume status=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@wcn36xx_smd_host_resume._entry_ptr.298 = internal global ptr @wcn36xx_smd_host_resume._entry.296, section ".printk_index", align 4
@bcn_filter_ies = internal constant { [13 x %struct.beacon_filter_ie], [50 x i8] } { [13 x %struct.beacon_filter_ie] [%struct.beacon_filter_ie { i8 3, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.beacon_filter_ie { i8 42, i8 0, i8 0, i8 0, i8 -8, i8 0 }, %struct.beacon_filter_ie { i8 12, i8 0, i8 0, i8 0, i8 -16, i8 0 }, %struct.beacon_filter_ie { i8 46, i8 0, i8 0, i8 0, i8 -16, i8 0 }, %struct.beacon_filter_ie { i8 37, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.beacon_filter_ie { i8 61, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.beacon_filter_ie { i8 61, i8 0, i8 2, i8 0, i8 -21, i8 0 }, %struct.beacon_filter_ie { i8 61, i8 0, i8 5, i8 0, i8 -3, i8 0 }, %struct.beacon_filter_ie { i8 32, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.beacon_filter_ie { i8 -57, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.beacon_filter_ie { i8 -64, i8 0, i8 0, i8 0, i8 -4, i8 0 }, %struct.beacon_filter_ie { i8 48, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.beacon_filter_ie { i8 -35, i8 1, i8 0, i8 0, i8 0, i8 0 }], [50 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_beacon_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.300, ptr @.str.2, i32 3267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Sending add bcn_filter failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wcn36xx_smd_add_beacon_filter\00", [34 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_beacon_filter._entry_ptr = internal global ptr @wcn36xx_smd_add_beacon_filter._entry, section ".printk_index", align 4
@wcn36xx_smd_add_beacon_filter._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.300, ptr @.str.2, i32 3273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR add bcn filter response failed err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_beacon_filter._entry_ptr.303 = internal global ptr @wcn36xx_smd_add_beacon_filter._entry.301, section ".printk_index", align 4
@.str.304 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcn36xx: SMD <<< \00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_smd_rsp_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.307, ptr @.str.2, i32 3353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013wcn36xx: ERROR Run out of memory while handling SMD_EVENT (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_smd_rsp_process\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_rsp_process._entry_ptr = internal global ptr @wcn36xx_smd_rsp_process._entry, section ".printk_index", align 4
@wcn36xx_smd_rsp_process._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.307, ptr @.str.2, i32 3364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017wcn36xx: indication arrived\0A\00", [33 x i8] zeroinitializer }, align 32
@wcn36xx_smd_rsp_process._entry_ptr.310 = internal global ptr @wcn36xx_smd_rsp_process._entry.308, section ".printk_index", align 4
@wcn36xx_smd_rsp_process._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.307, ptr @.str.2, i32 3368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wcn36xx: ERROR SMD_EVENT (%d) not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@wcn36xx_smd_rsp_process._entry_ptr.313 = internal global ptr @wcn36xx_smd_rsp_process._entry.311, section ".printk_index", align 4
@.str.314 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wcn36xx_smd_ind\00", [16 x i8] zeroinitializer }, align 32
@wcn36xx_smd_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.316 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&wcn->hal_ind_work)\00", [58 x i8] zeroinitializer }, align 32
@wcn36xx_smd_open.__key.317 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.318 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&wcn->hal_ind_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcn36xx: HAL >>> \00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wcn36xx_smd_send_and_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.320, ptr @.str.321, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wcn36xx: ERROR HAL TX failed for req %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_smd_send_and_wait\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_send_and_wait._entry_ptr = internal global ptr @wcn36xx_smd_send_and_wait._entry, section ".printk_index", align 4
@wcn36xx_smd_send_and_wait._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.321, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013wcn36xx: ERROR Timeout! No SMD response to req %d in %dms\0A\00", [35 x i8] zeroinitializer }, align 32
@wcn36xx_smd_send_and_wait._entry_ptr.324 = internal global ptr @wcn36xx_smd_send_and_wait._entry.322, section ".printk_index", align 4
@wcn36xx_smd_send_and_wait._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.321, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017wcn36xx: SMD command (req %d, rsp %d) completed in %dms\0A\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_send_and_wait._entry_ptr.327 = internal global ptr @wcn36xx_smd_send_and_wait._entry.325, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.328 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@put_cfg_tlv_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.330, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR Not enough room for TLV entry\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"put_cfg_tlv_u32\00", [16 x i8] zeroinitializer }, align 32
@put_cfg_tlv_u32._entry_ptr = internal global ptr @put_cfg_tlv_u32._entry, section ".printk_index", align 4
@wcn36xx_smd_start_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.332, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016wcn36xx: firmware WLAN version '%s' and CRM version '%s'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wcn36xx_smd_start_rsp\00", [42 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start_rsp._entry_ptr = internal global ptr @wcn36xx_smd_start_rsp._entry, section ".printk_index", align 4
@wcn36xx_smd_start_rsp._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.332, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016wcn36xx: firmware API %u.%u.%u.%u, %u stations, %u bssids\0A\00", [35 x i8] zeroinitializer }, align 32
@wcn36xx_smd_start_rsp._entry_ptr.335 = internal global ptr @wcn36xx_smd_start_rsp._entry.333, section ".printk_index", align 4
@wcn36xx_smd_switch_channel_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.337, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017wcn36xx: channel switched to: %d, status: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wcn36xx_smd_switch_channel_rsp\00", [33 x i8] zeroinitializer }, align 32
@wcn36xx_smd_switch_channel_rsp._entry_ptr = internal global ptr @wcn36xx_smd_switch_channel_rsp._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wcn36xx_smd_process_ptt_msg_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.339, ptr @.str.2, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017wcn36xx: process ptt msg responded with length %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wcn36xx_smd_process_ptt_msg_rsp\00", [32 x i8] zeroinitializer }, align 32
@wcn36xx_smd_process_ptt_msg_rsp._entry_ptr = internal global ptr @wcn36xx_smd_process_ptt_msg_rsp._entry, section ".printk_index", align 4
@.str.340 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx: HAL_PTT_MSG_RSP:\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_scan_params_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.341, ptr @.str.342, ptr @.str.2, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wcn36xx: WARNING error response from update scan\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wcn36xx_smd_update_scan_params_rsp\00", [61 x i8] zeroinitializer }, align 32
@wcn36xx_smd_update_scan_params_rsp._entry_ptr = internal global ptr @wcn36xx_smd_update_scan_params_rsp._entry, section ".printk_index", align 4
@wcn36xx_smd_add_sta_self_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.343, ptr @.str.344, ptr @.str.2, i32 1201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014wcn36xx: WARNING hal add sta self failure: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wcn36xx_smd_add_sta_self_rsp\00", [35 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_sta_self_rsp._entry_ptr = internal global ptr @wcn36xx_smd_add_sta_self_rsp._entry, section ".printk_index", align 4
@wcn36xx_smd_add_sta_self_rsp._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.344, ptr @.str.2, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017wcn36xx: hal add sta self status %d self_sta_index %d dpu_index %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wcn36xx_smd_add_sta_self_rsp._entry_ptr.347 = internal global ptr @wcn36xx_smd_add_sta_self_rsp._entry.345, section ".printk_index", align 4
@wcn36xx_smd_join_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.349, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017wcn36xx: hal rsp join status %d tx_mgmt_power %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcn36xx_smd_join_rsp\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_smd_join_rsp._entry_ptr = internal global ptr @wcn36xx_smd_join_rsp._entry, section ".printk_index", align 4
@wcn36xx_smd_config_sta_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.351, ptr @.str.2, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\017wcn36xx: hal config sta v1 action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_smd_config_sta_v1\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_sta_v1._entry_ptr = internal global ptr @wcn36xx_smd_config_sta_v1._entry, section ".printk_index", align 4
@wcn36xx_smd_config_sta_v0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @.str.353, ptr @.str.2, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\017wcn36xx: hal config sta action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_smd_config_sta_v0\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_sta_v0._entry_ptr = internal global ptr @wcn36xx_smd_config_sta_v0._entry, section ".printk_index", align 4
@wcn36xx_smd_config_sta_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.355, ptr @.str.2, i32 1485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014wcn36xx: WARNING hal config sta response failure: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wcn36xx_smd_config_sta_rsp\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_sta_rsp._entry_ptr = internal global ptr @wcn36xx_smd_config_sta_rsp._entry, section ".printk_index", align 4
@wcn36xx_smd_config_sta_rsp._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.355, ptr @.str.2, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017wcn36xx: hal config sta rsp status %d sta_index %d bssid_index %d uc_ucast_sig %d p2p %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_sta_rsp._entry_ptr.358 = internal global ptr @wcn36xx_smd_config_sta_rsp._entry.356, section ".printk_index", align 4
@wcn36xx_smd_config_bss_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.359, ptr @.str.360, ptr @.str.2, i32 1779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\017wcn36xx: hal config bss v1 bssid %pM self_mac_addr %pM bss_type %d oper_mode %d nw_type %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_smd_config_bss_v1\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_bss_v1._entry_ptr = internal global ptr @wcn36xx_smd_config_bss_v1._entry, section ".printk_index", align 4
@wcn36xx_smd_config_bss_v1._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.360, ptr @.str.2, i32 1784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\017wcn36xx: - sta bssid %pM action %d sta_index %d bssid_index %d aid %d type %d mac %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_bss_v1._entry_ptr.363 = internal global ptr @wcn36xx_smd_config_bss_v1._entry.361, section ".printk_index", align 4
@wcn36xx_smd_set_bss_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.364, ptr @.str.365, ptr @.str.2, i32 1616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wcn36xx: WARNING Unknown type for bss config: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wcn36xx_smd_set_bss_params\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_set_bss_params._entry_ptr = internal global ptr @wcn36xx_smd_set_bss_params._entry, section ".printk_index", align 4
@wcn36xx_smd_config_bss_v0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.366, ptr @.str.367, ptr @.str.2, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\017wcn36xx: hal config bss bssid %pM self_mac_addr %pM bss_type %d oper_mode %d nw_type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_smd_config_bss_v0\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_bss_v0._entry_ptr = internal global ptr @wcn36xx_smd_config_bss_v0._entry, section ".printk_index", align 4
@wcn36xx_smd_config_bss_v0._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.367, ptr @.str.2, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_bss_v0._entry_ptr.369 = internal global ptr @wcn36xx_smd_config_bss_v0._entry.368, section ".printk_index", align 4
@wcn36xx_smd_config_bss_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.371, ptr @.str.2, i32 1853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014wcn36xx: WARNING hal config bss response failure: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wcn36xx_smd_config_bss_rsp\00", [37 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_bss_rsp._entry_ptr = internal global ptr @wcn36xx_smd_config_bss_rsp._entry, section ".printk_index", align 4
@wcn36xx_smd_config_bss_rsp._entry.372 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.373, ptr @.str.371, ptr @.str.2, i32 1864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [146 x i8], [46 x i8] } { [146 x i8] c"\017wcn36xx: hal config bss rsp status %d bss_idx %d dpu_desc_index %d sta_idx %d self_idx %d bcast_idx %d mac %pM power %d ucast_dpu_signature %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_smd_config_bss_rsp._entry_ptr.374 = internal global ptr @wcn36xx_smd_config_bss_rsp._entry.372, section ".printk_index", align 4
@wcn36xx_smd_gtk_offload_get_info_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.376, ptr @.str.2, i32 3085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013wcn36xx: ERROR gtk_offload_info invalid response bss index %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wcn36xx_smd_gtk_offload_get_info_rsp\00", [59 x i8] zeroinitializer }, align 32
@wcn36xx_smd_gtk_offload_get_info_rsp._entry_ptr = internal global ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry, section ".printk_index", align 4
@wcn36xx_smd_gtk_offload_get_info_rsp._entry.377 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.376, ptr @.str.2, i32 3097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017wcn36xx: GTK replay counter increment %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@wcn36xx_smd_gtk_offload_get_info_rsp._entry_ptr.379 = internal global ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry.377, section ".printk_index", align 4
@wcn36xx_smd_gtk_offload_get_info_rsp._entry.380 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @.str.376, ptr @.str.2, i32 3107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"\017wcn36xx: gtk offload info status %d last_rekey_status %d replay_counter %llu total_rekey_count %d gtk_rekey_count %d igtk_rekey_count %d bss_index %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_gtk_offload_get_info_rsp._entry_ptr.382 = internal global ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry.380, section ".printk_index", align 4
@wcn36xx_ind_smd_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.383, ptr @.str.2, i32 3430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcn36xx_ind_smd_work\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_ind_smd_work._entry_ptr = internal global ptr @wcn36xx_ind_smd_work._entry, section ".printk_index", align 4
@wcn36xx_smd_tx_compl_ind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.384, ptr @.str.385, ptr @.str.2, i32 2700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wcn36xx: WARNING Bad TX complete indication\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_smd_tx_compl_ind\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_smd_tx_compl_ind._entry_ptr = internal global ptr @wcn36xx_smd_tx_compl_ind._entry, section ".printk_index", align 4
@wcn36xx_smd_missed_beacon_ind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.387, ptr @.str.2, i32 2758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017wcn36xx: beacon missed bss_index %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wcn36xx_smd_missed_beacon_ind\00", [34 x i8] zeroinitializer }, align 32
@wcn36xx_smd_missed_beacon_ind._entry_ptr = internal global ptr @wcn36xx_smd_missed_beacon_ind._entry, section ".printk_index", align 4
@wcn36xx_smd_missed_beacon_ind._entry.388 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.389, ptr @.str.387, ptr @.str.2, i32 2766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wcn36xx: WARNING Corrupted missed beacon indication\0A\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_missed_beacon_ind._entry_ptr.390 = internal global ptr @wcn36xx_smd_missed_beacon_ind._entry.388, section ".printk_index", align 4
@wcn36xx_smd_missed_beacon_ind._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.387, ptr @.str.2, i32 2773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_missed_beacon_ind._entry_ptr.392 = internal global ptr @wcn36xx_smd_missed_beacon_ind._entry.391, section ".printk_index", align 4
@wcn36xx_smd_missed_beacon_ind._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.394, ptr @.str.387, ptr @.str.2, i32 2780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014wcn36xx: WARNING BSS index %d not found\0A\00", [53 x i8] zeroinitializer }, align 32
@wcn36xx_smd_missed_beacon_ind._entry_ptr.395 = internal global ptr @wcn36xx_smd_missed_beacon_ind._entry.393, section ".printk_index", align 4
@wcn36xx_smd_delete_sta_context_ind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.396, ptr @.str.397, ptr @.str.2, i32 2796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wcn36xx: WARNING Corrupted delete sta indication\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wcn36xx_smd_delete_sta_context_ind\00", [61 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_sta_context_ind._entry_ptr = internal global ptr @wcn36xx_smd_delete_sta_context_ind._entry, section ".printk_index", align 4
@wcn36xx_smd_delete_sta_context_ind._entry.398 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.399, ptr @.str.397, ptr @.str.2, i32 2802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017wcn36xx: delete station indication %pM index %d reason %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_sta_context_ind._entry_ptr.400 = internal global ptr @wcn36xx_smd_delete_sta_context_ind._entry.398, section ".printk_index", align 4
@wcn36xx_smd_delete_sta_context_ind._entry.401 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.402, ptr @.str.397, ptr @.str.2, i32 2818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017wcn36xx: connection loss bss_index %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_sta_context_ind._entry_ptr.403 = internal global ptr @wcn36xx_smd_delete_sta_context_ind._entry.401, section ".printk_index", align 4
@wcn36xx_smd_delete_sta_context_ind._entry.404 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.405, ptr @.str.397, ptr @.str.2, i32 2834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wcn36xx: WARNING BSS or STA with addr %pM not found\0A\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_smd_delete_sta_context_ind._entry_ptr.406 = internal global ptr @wcn36xx_smd_delete_sta_context_ind._entry.404, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.407 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.409 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@wcn36xx_smd_print_reg_info_ind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.410, ptr @.str.411, ptr @.str.2, i32 2846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014wcn36xx: WARNING Corrupted print reg info indication\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wcn36xx_smd_print_reg_info_ind\00", [33 x i8] zeroinitializer }, align 32
@wcn36xx_smd_print_reg_info_ind._entry_ptr = internal global ptr @wcn36xx_smd_print_reg_info_ind._entry, section ".printk_index", align 4
@wcn36xx_smd_print_reg_info_ind._entry.412 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.413, ptr @.str.411, ptr @.str.2, i32 2852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017wcn36xx: reginfo indication, scenario: 0x%x reason: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_smd_print_reg_info_ind._entry_ptr.414 = internal global ptr @wcn36xx_smd_print_reg_info_ind._entry.412, section ".printk_index", align 4
@wcn36xx_smd_print_reg_info_ind._entry.415 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.416, ptr @.str.411, ptr @.str.2, i32 2856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017wcn36xx: \090x%x: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_print_reg_info_ind._entry_ptr.417 = internal global ptr @wcn36xx_smd_print_reg_info_ind._entry.415, section ".printk_index", align 4
@wcn36xx_smd_hw_scan_ind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.418, ptr @.str.419, ptr @.str.2, i32 2715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014wcn36xx: WARNING Corrupted delete scan indication\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcn36xx_smd_hw_scan_ind\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_smd_hw_scan_ind._entry_ptr = internal global ptr @wcn36xx_smd_hw_scan_ind._entry, section ".printk_index", align 4
@wcn36xx_smd_hw_scan_ind._entry.420 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.421, ptr @.str.419, ptr @.str.2, i32 2719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017wcn36xx: scan indication (type %x)\0A\00", [58 x i8] zeroinitializer }, align 32
@wcn36xx_smd_hw_scan_ind._entry_ptr.422 = internal global ptr @wcn36xx_smd_hw_scan_ind._entry.420, section ".printk_index", align 4
@wcn36xx_smd_hw_scan_ind._entry.423 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.424, ptr @.str.419, ptr @.str.2, i32 2740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wcn36xx: WARNING Unknown scan indication type %x\0A\00", [44 x i8] zeroinitializer }, align 32
@wcn36xx_smd_hw_scan_ind._entry_ptr.425 = internal global ptr @wcn36xx_smd_hw_scan_ind._entry.423, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.426 = internal global [56 x i64] [i64 54, i64 16, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11, i64 13, i64 15, i64 17, i64 19, i64 21, i64 25, i64 27, i64 29, i64 31, i64 39, i64 41, i64 43, i64 45, i64 49, i64 50, i64 56, i64 58, i64 60, i64 64, i64 67, i64 69, i64 71, i64 95, i64 96, i64 97, i64 98, i64 104, i64 107, i64 122, i64 126, i64 128, i64 129, i64 130, i64 133, i64 146, i64 152, i64 158, i64 167, i64 172, i64 174, i64 176, i64 188, i64 205, i64 207, i64 209, i64 210, i64 233, i64 259]
@__sancov_gen_cov_switch_values.427 = internal global [10 x i64] [i64 8, i64 16, i64 50, i64 67, i64 129, i64 130, i64 188, i64 210, i64 233, i64 259]
@__sancov_gen_cov_switch_values.428 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.429 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.430 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 511, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 554, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant [9 x i8] c"cfg_vals\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 615, i32 33 }
@___asan_gen_.452 = private unnamed_addr constant [17 x i8] c"wcn3680_cfg_vals\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 85, i32 31 }
@___asan_gen_.455 = private unnamed_addr constant [17 x i8] c"wcn36xx_cfg_vals\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 37, i32 31 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 645, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 650, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 656, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 679, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 684, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 713, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 717, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 722, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 743, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 748, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 753, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 774, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 779, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 784, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 816, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 821, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 826, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 887, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 894, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 899, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 918, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 922, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 927, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 988, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1000, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1006, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1048, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1053, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1110, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1116, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1165, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1171, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1177, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1227, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1233, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1241, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1263, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1268, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1289, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1295, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1300, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1351, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1358, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1363, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1387, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1393, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1398, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1566, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1574, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1893, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1902, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1926, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1930, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1935, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1967, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1982, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2000, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2006, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2011, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2030, i32 3 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2043, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2049, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2054, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2099, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2104, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2138, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2143, i32 3 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2170, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2175, i32 3 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2201, i32 3 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2206, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2231, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2236, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2260, i32 3 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2265, i32 3 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2285, i32 3 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2290, i32 3 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2294, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2312, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2317, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2320, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2347, i32 3 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2377, i32 3 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2386, i32 3 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2391, i32 3 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2418, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2423, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2436, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2450, i32 3 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2465, i32 3 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2493, i32 3 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2497, i32 3 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2557, i32 3 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2563, i32 3 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2589, i32 3 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2594, i32 3 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2617, i32 3 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2622, i32 3 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2678, i32 3 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2683, i32 3 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2882, i32 3 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2887, i32 3 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2920, i32 3 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2925, i32 3 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2957, i32 3 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2962, i32 3 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3013, i32 3 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3018, i32 3 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3058, i32 3 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3063, i32 3 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3129, i32 3 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3134, i32 3 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3177, i32 3 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3182, i32 3 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3188, i32 3 }
@___asan_gen_.1280 = private unnamed_addr constant [15 x i8] c"bcn_filter_ies\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3206, i32 38 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3267, i32 3 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3273, i32 3 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3288, i32 2 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3352, i32 4 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3364, i32 3 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3367, i32 3 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3439, i32 20 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3443, i32 2 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3445, i32 2 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 426, i32 2 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 432, i32 3 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 437, i32 3 }
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 442, i32 2 }
@___asan_gen_.1367 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1371, i32 87, i32 2 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 187, i32 3 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 596, i32 3 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 599, i32 3 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1025, i32 2 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1073, i32 2 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1075, i32 2 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1136, i32 3 }
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1200, i32 3 }
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1205, i32 2 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1317, i32 2 }
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1521, i32 2 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1544, i32 2 }
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1484, i32 3 }
@___asan_gen_.1483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1493, i32 2 }
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1776, i32 2 }
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1781, i32 2 }
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1616, i32 3 }
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1817, i32 2 }
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1822, i32 2 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1852, i32 3 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 1857, i32 2 }
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3084, i32 3 }
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3095, i32 4 }
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3100, i32 2 }
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 3429, i32 4 }
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2700, i32 3 }
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2757, i32 4 }
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2766, i32 3 }
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2772, i32 4 }
@___asan_gen_.1594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2780, i32 2 }
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2796, i32 3 }
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2800, i32 2 }
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2816, i32 5 }
@___asan_gen_.1621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2834, i32 2 }
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1629, i32 695, i32 2 }
@___asan_gen_.1629 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.1630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1629, i32 723, i32 2 }
@___asan_gen_.1639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2846, i32 3 }
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2850, i32 2 }
@___asan_gen_.1651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2855, i32 3 }
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2715, i32 3 }
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2719, i32 2 }
@___asan_gen_.1667 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1670 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1671 = private constant [42 x i8] c"../drivers/net/wireless/ath/wcn36xx/smd.c\00", align 1
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1671, i32 2740, i32 3 }
@llvm.compiler.used = appending global [578 x ptr] [ptr @clear_feat_caps._entry, ptr @clear_feat_caps._entry_ptr, ptr @get_feat_caps._entry, ptr @get_feat_caps._entry_ptr, ptr @put_cfg_tlv_u32._entry, ptr @put_cfg_tlv_u32._entry_ptr, ptr @set_feat_caps._entry, ptr @set_feat_caps._entry_ptr, ptr @wcn36xx_ind_smd_work._entry, ptr @wcn36xx_ind_smd_work._entry_ptr, ptr @wcn36xx_smd_add_ba._entry, ptr @wcn36xx_smd_add_ba._entry.252, ptr @wcn36xx_smd_add_ba._entry_ptr, ptr @wcn36xx_smd_add_ba._entry_ptr.254, ptr @wcn36xx_smd_add_ba_session._entry, ptr @wcn36xx_smd_add_ba_session._entry.247, ptr @wcn36xx_smd_add_ba_session._entry_ptr, ptr @wcn36xx_smd_add_ba_session._entry_ptr.249, ptr @wcn36xx_smd_add_beacon_filter._entry, ptr @wcn36xx_smd_add_beacon_filter._entry.301, ptr @wcn36xx_smd_add_beacon_filter._entry_ptr, ptr @wcn36xx_smd_add_beacon_filter._entry_ptr.303, ptr @wcn36xx_smd_add_sta_self._entry, ptr @wcn36xx_smd_add_sta_self._entry.100, ptr @wcn36xx_smd_add_sta_self._entry.97, ptr @wcn36xx_smd_add_sta_self._entry_ptr, ptr @wcn36xx_smd_add_sta_self._entry_ptr.102, ptr @wcn36xx_smd_add_sta_self._entry_ptr.99, ptr @wcn36xx_smd_add_sta_self_rsp._entry, ptr @wcn36xx_smd_add_sta_self_rsp._entry.345, ptr @wcn36xx_smd_add_sta_self_rsp._entry_ptr, ptr @wcn36xx_smd_add_sta_self_rsp._entry_ptr.347, ptr @wcn36xx_smd_arp_offload._entry, ptr @wcn36xx_smd_arp_offload._entry.277, ptr @wcn36xx_smd_arp_offload._entry_ptr, ptr @wcn36xx_smd_arp_offload._entry_ptr.279, ptr @wcn36xx_smd_config_bss._entry, ptr @wcn36xx_smd_config_bss._entry.139, ptr @wcn36xx_smd_config_bss._entry_ptr, ptr @wcn36xx_smd_config_bss._entry_ptr.141, ptr @wcn36xx_smd_config_bss_rsp._entry, ptr @wcn36xx_smd_config_bss_rsp._entry.372, ptr @wcn36xx_smd_config_bss_rsp._entry_ptr, ptr @wcn36xx_smd_config_bss_rsp._entry_ptr.374, ptr @wcn36xx_smd_config_bss_v0._entry, ptr @wcn36xx_smd_config_bss_v0._entry.368, ptr @wcn36xx_smd_config_bss_v0._entry_ptr, ptr @wcn36xx_smd_config_bss_v0._entry_ptr.369, ptr @wcn36xx_smd_config_bss_v1._entry, ptr @wcn36xx_smd_config_bss_v1._entry.361, ptr @wcn36xx_smd_config_bss_v1._entry_ptr, ptr @wcn36xx_smd_config_bss_v1._entry_ptr.363, ptr @wcn36xx_smd_config_sta._entry, ptr @wcn36xx_smd_config_sta._entry.134, ptr @wcn36xx_smd_config_sta._entry_ptr, ptr @wcn36xx_smd_config_sta._entry_ptr.136, ptr @wcn36xx_smd_config_sta_rsp._entry, ptr @wcn36xx_smd_config_sta_rsp._entry.356, ptr @wcn36xx_smd_config_sta_rsp._entry_ptr, ptr @wcn36xx_smd_config_sta_rsp._entry_ptr.358, ptr @wcn36xx_smd_config_sta_v0._entry, ptr @wcn36xx_smd_config_sta_v0._entry_ptr, ptr @wcn36xx_smd_config_sta_v1._entry, ptr @wcn36xx_smd_config_sta_v1._entry_ptr, ptr @wcn36xx_smd_del_ba._entry, ptr @wcn36xx_smd_del_ba._entry.257, ptr @wcn36xx_smd_del_ba._entry_ptr, ptr @wcn36xx_smd_del_ba._entry_ptr.259, ptr @wcn36xx_smd_delete_bss._entry, ptr @wcn36xx_smd_delete_bss._entry.144, ptr @wcn36xx_smd_delete_bss._entry.147, ptr @wcn36xx_smd_delete_bss._entry_ptr, ptr @wcn36xx_smd_delete_bss._entry_ptr.146, ptr @wcn36xx_smd_delete_bss._entry_ptr.149, ptr @wcn36xx_smd_delete_sta._entry, ptr @wcn36xx_smd_delete_sta._entry.110, ptr @wcn36xx_smd_delete_sta._entry.113, ptr @wcn36xx_smd_delete_sta._entry_ptr, ptr @wcn36xx_smd_delete_sta._entry_ptr.112, ptr @wcn36xx_smd_delete_sta._entry_ptr.115, ptr @wcn36xx_smd_delete_sta_context_ind._entry, ptr @wcn36xx_smd_delete_sta_context_ind._entry.398, ptr @wcn36xx_smd_delete_sta_context_ind._entry.401, ptr @wcn36xx_smd_delete_sta_context_ind._entry.404, ptr @wcn36xx_smd_delete_sta_context_ind._entry_ptr, ptr @wcn36xx_smd_delete_sta_context_ind._entry_ptr.400, ptr @wcn36xx_smd_delete_sta_context_ind._entry_ptr.403, ptr @wcn36xx_smd_delete_sta_context_ind._entry_ptr.406, ptr @wcn36xx_smd_delete_sta_self._entry, ptr @wcn36xx_smd_delete_sta_self._entry.105, ptr @wcn36xx_smd_delete_sta_self._entry_ptr, ptr @wcn36xx_smd_delete_sta_self._entry_ptr.107, ptr @wcn36xx_smd_dump_cmd_req._entry, ptr @wcn36xx_smd_dump_cmd_req._entry.233, ptr @wcn36xx_smd_dump_cmd_req._entry_ptr, ptr @wcn36xx_smd_dump_cmd_req._entry_ptr.235, ptr @wcn36xx_smd_end_scan._entry, ptr @wcn36xx_smd_end_scan._entry.37, ptr @wcn36xx_smd_end_scan._entry.40, ptr @wcn36xx_smd_end_scan._entry_ptr, ptr @wcn36xx_smd_end_scan._entry_ptr.39, ptr @wcn36xx_smd_end_scan._entry_ptr.42, ptr @wcn36xx_smd_enter_bmps._entry, ptr @wcn36xx_smd_enter_bmps._entry.197, ptr @wcn36xx_smd_enter_bmps._entry_ptr, ptr @wcn36xx_smd_enter_bmps._entry_ptr.199, ptr @wcn36xx_smd_enter_imps._entry, ptr @wcn36xx_smd_enter_imps._entry.207, ptr @wcn36xx_smd_enter_imps._entry.210, ptr @wcn36xx_smd_enter_imps._entry_ptr, ptr @wcn36xx_smd_enter_imps._entry_ptr.209, ptr @wcn36xx_smd_enter_imps._entry_ptr.212, ptr @wcn36xx_smd_exit_bmps._entry, ptr @wcn36xx_smd_exit_bmps._entry.202, ptr @wcn36xx_smd_exit_bmps._entry_ptr, ptr @wcn36xx_smd_exit_bmps._entry_ptr.204, ptr @wcn36xx_smd_exit_imps._entry, ptr @wcn36xx_smd_exit_imps._entry.215, ptr @wcn36xx_smd_exit_imps._entry.218, ptr @wcn36xx_smd_exit_imps._entry_ptr, ptr @wcn36xx_smd_exit_imps._entry_ptr.217, ptr @wcn36xx_smd_exit_imps._entry_ptr.220, ptr @wcn36xx_smd_feature_caps_exchange._entry, ptr @wcn36xx_smd_feature_caps_exchange._entry.242, ptr @wcn36xx_smd_feature_caps_exchange._entry_ptr, ptr @wcn36xx_smd_feature_caps_exchange._entry_ptr.244, ptr @wcn36xx_smd_finish_scan._entry, ptr @wcn36xx_smd_finish_scan._entry.45, ptr @wcn36xx_smd_finish_scan._entry.48, ptr @wcn36xx_smd_finish_scan._entry_ptr, ptr @wcn36xx_smd_finish_scan._entry_ptr.47, ptr @wcn36xx_smd_finish_scan._entry_ptr.50, ptr @wcn36xx_smd_gtk_offload._entry, ptr @wcn36xx_smd_gtk_offload._entry.284, ptr @wcn36xx_smd_gtk_offload._entry_ptr, ptr @wcn36xx_smd_gtk_offload._entry_ptr.285, ptr @wcn36xx_smd_gtk_offload_get_info._entry, ptr @wcn36xx_smd_gtk_offload_get_info._entry.288, ptr @wcn36xx_smd_gtk_offload_get_info._entry_ptr, ptr @wcn36xx_smd_gtk_offload_get_info._entry_ptr.290, ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry, ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry.377, ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry.380, ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry_ptr, ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry_ptr.379, ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry_ptr.382, ptr @wcn36xx_smd_host_resume._entry, ptr @wcn36xx_smd_host_resume._entry.293, ptr @wcn36xx_smd_host_resume._entry.296, ptr @wcn36xx_smd_host_resume._entry_ptr, ptr @wcn36xx_smd_host_resume._entry_ptr.295, ptr @wcn36xx_smd_host_resume._entry_ptr.298, ptr @wcn36xx_smd_hw_scan_ind._entry, ptr @wcn36xx_smd_hw_scan_ind._entry.420, ptr @wcn36xx_smd_hw_scan_ind._entry.423, ptr @wcn36xx_smd_hw_scan_ind._entry_ptr, ptr @wcn36xx_smd_hw_scan_ind._entry_ptr.422, ptr @wcn36xx_smd_hw_scan_ind._entry_ptr.425, ptr @wcn36xx_smd_init_scan._entry, ptr @wcn36xx_smd_init_scan._entry.21, ptr @wcn36xx_smd_init_scan._entry.24, ptr @wcn36xx_smd_init_scan._entry_ptr, ptr @wcn36xx_smd_init_scan._entry_ptr.23, ptr @wcn36xx_smd_init_scan._entry_ptr.26, ptr @wcn36xx_smd_ipv6_ns_offload._entry, ptr @wcn36xx_smd_ipv6_ns_offload._entry.281, ptr @wcn36xx_smd_ipv6_ns_offload._entry_ptr, ptr @wcn36xx_smd_ipv6_ns_offload._entry_ptr.282, ptr @wcn36xx_smd_join._entry, ptr @wcn36xx_smd_join._entry.118, ptr @wcn36xx_smd_join._entry.121, ptr @wcn36xx_smd_join._entry_ptr, ptr @wcn36xx_smd_join._entry_ptr.120, ptr @wcn36xx_smd_join._entry_ptr.123, ptr @wcn36xx_smd_join_rsp._entry, ptr @wcn36xx_smd_join_rsp._entry_ptr, ptr @wcn36xx_smd_keep_alive_req._entry, ptr @wcn36xx_smd_keep_alive_req._entry.225, ptr @wcn36xx_smd_keep_alive_req._entry.228, ptr @wcn36xx_smd_keep_alive_req._entry_ptr, ptr @wcn36xx_smd_keep_alive_req._entry_ptr.227, ptr @wcn36xx_smd_keep_alive_req._entry_ptr.230, ptr @wcn36xx_smd_load_nv._entry, ptr @wcn36xx_smd_load_nv._entry.3, ptr @wcn36xx_smd_load_nv._entry_ptr, ptr @wcn36xx_smd_load_nv._entry_ptr.5, ptr @wcn36xx_smd_missed_beacon_ind._entry, ptr @wcn36xx_smd_missed_beacon_ind._entry.388, ptr @wcn36xx_smd_missed_beacon_ind._entry.391, ptr @wcn36xx_smd_missed_beacon_ind._entry.393, ptr @wcn36xx_smd_missed_beacon_ind._entry_ptr, ptr @wcn36xx_smd_missed_beacon_ind._entry_ptr.390, ptr @wcn36xx_smd_missed_beacon_ind._entry_ptr.392, ptr @wcn36xx_smd_missed_beacon_ind._entry_ptr.395, ptr @wcn36xx_smd_print_reg_info_ind._entry, ptr @wcn36xx_smd_print_reg_info_ind._entry.412, ptr @wcn36xx_smd_print_reg_info_ind._entry.415, ptr @wcn36xx_smd_print_reg_info_ind._entry_ptr, ptr @wcn36xx_smd_print_reg_info_ind._entry_ptr.414, ptr @wcn36xx_smd_print_reg_info_ind._entry_ptr.417, ptr @wcn36xx_smd_process_ptt_msg._entry, ptr @wcn36xx_smd_process_ptt_msg._entry.84, ptr @wcn36xx_smd_process_ptt_msg._entry_ptr, ptr @wcn36xx_smd_process_ptt_msg._entry_ptr.86, ptr @wcn36xx_smd_process_ptt_msg_rsp._entry, ptr @wcn36xx_smd_process_ptt_msg_rsp._entry_ptr, ptr @wcn36xx_smd_remove_bsskey._entry, ptr @wcn36xx_smd_remove_bsskey._entry.192, ptr @wcn36xx_smd_remove_bsskey._entry_ptr, ptr @wcn36xx_smd_remove_bsskey._entry_ptr.194, ptr @wcn36xx_smd_remove_stakey._entry, ptr @wcn36xx_smd_remove_stakey._entry.187, ptr @wcn36xx_smd_remove_stakey._entry_ptr, ptr @wcn36xx_smd_remove_stakey._entry_ptr.189, ptr @wcn36xx_smd_rsp_process._entry, ptr @wcn36xx_smd_rsp_process._entry.308, ptr @wcn36xx_smd_rsp_process._entry.311, ptr @wcn36xx_smd_rsp_process._entry_ptr, ptr @wcn36xx_smd_rsp_process._entry_ptr.310, ptr @wcn36xx_smd_rsp_process._entry_ptr.313, ptr @wcn36xx_smd_send_and_wait._entry, ptr @wcn36xx_smd_send_and_wait._entry.322, ptr @wcn36xx_smd_send_and_wait._entry.325, ptr @wcn36xx_smd_send_and_wait._entry_ptr, ptr @wcn36xx_smd_send_and_wait._entry_ptr.324, ptr @wcn36xx_smd_send_and_wait._entry_ptr.327, ptr @wcn36xx_smd_send_beacon._entry, ptr @wcn36xx_smd_send_beacon._entry.152, ptr @wcn36xx_smd_send_beacon._entry.155, ptr @wcn36xx_smd_send_beacon._entry.158, ptr @wcn36xx_smd_send_beacon._entry.161, ptr @wcn36xx_smd_send_beacon._entry_ptr, ptr @wcn36xx_smd_send_beacon._entry_ptr.154, ptr @wcn36xx_smd_send_beacon._entry_ptr.157, ptr @wcn36xx_smd_send_beacon._entry_ptr.160, ptr @wcn36xx_smd_send_beacon._entry_ptr.163, ptr @wcn36xx_smd_set_bss_params._entry, ptr @wcn36xx_smd_set_bss_params._entry_ptr, ptr @wcn36xx_smd_set_bsskey._entry, ptr @wcn36xx_smd_set_bsskey._entry.182, ptr @wcn36xx_smd_set_bsskey._entry_ptr, ptr @wcn36xx_smd_set_bsskey._entry_ptr.184, ptr @wcn36xx_smd_set_link_st._entry, ptr @wcn36xx_smd_set_link_st._entry.126, ptr @wcn36xx_smd_set_link_st._entry.129, ptr @wcn36xx_smd_set_link_st._entry_ptr, ptr @wcn36xx_smd_set_link_st._entry_ptr.128, ptr @wcn36xx_smd_set_link_st._entry_ptr.131, ptr @wcn36xx_smd_set_mc_list._entry, ptr @wcn36xx_smd_set_mc_list._entry.272, ptr @wcn36xx_smd_set_mc_list._entry_ptr, ptr @wcn36xx_smd_set_mc_list._entry_ptr.274, ptr @wcn36xx_smd_set_power_params._entry, ptr @wcn36xx_smd_set_power_params._entry_ptr, ptr @wcn36xx_smd_set_stakey._entry, ptr @wcn36xx_smd_set_stakey._entry.177, ptr @wcn36xx_smd_set_stakey._entry_ptr, ptr @wcn36xx_smd_set_stakey._entry_ptr.179, ptr @wcn36xx_smd_start._entry, ptr @wcn36xx_smd_start._entry.11, ptr @wcn36xx_smd_start._entry.8, ptr @wcn36xx_smd_start._entry_ptr, ptr @wcn36xx_smd_start._entry_ptr.10, ptr @wcn36xx_smd_start._entry_ptr.13, ptr @wcn36xx_smd_start_hw_scan._entry, ptr @wcn36xx_smd_start_hw_scan._entry.55, ptr @wcn36xx_smd_start_hw_scan._entry.58, ptr @wcn36xx_smd_start_hw_scan._entry_ptr, ptr @wcn36xx_smd_start_hw_scan._entry_ptr.57, ptr @wcn36xx_smd_start_hw_scan._entry_ptr.60, ptr @wcn36xx_smd_start_rsp._entry, ptr @wcn36xx_smd_start_rsp._entry.333, ptr @wcn36xx_smd_start_rsp._entry_ptr, ptr @wcn36xx_smd_start_rsp._entry_ptr.335, ptr @wcn36xx_smd_start_scan._entry, ptr @wcn36xx_smd_start_scan._entry.29, ptr @wcn36xx_smd_start_scan._entry.32, ptr @wcn36xx_smd_start_scan._entry_ptr, ptr @wcn36xx_smd_start_scan._entry_ptr.31, ptr @wcn36xx_smd_start_scan._entry_ptr.34, ptr @wcn36xx_smd_stop._entry, ptr @wcn36xx_smd_stop._entry.16, ptr @wcn36xx_smd_stop._entry_ptr, ptr @wcn36xx_smd_stop._entry_ptr.18, ptr @wcn36xx_smd_stop_hw_scan._entry, ptr @wcn36xx_smd_stop_hw_scan._entry.63, ptr @wcn36xx_smd_stop_hw_scan._entry.66, ptr @wcn36xx_smd_stop_hw_scan._entry_ptr, ptr @wcn36xx_smd_stop_hw_scan._entry_ptr.65, ptr @wcn36xx_smd_stop_hw_scan._entry_ptr.68, ptr @wcn36xx_smd_switch_channel._entry, ptr @wcn36xx_smd_switch_channel._entry.79, ptr @wcn36xx_smd_switch_channel._entry_ptr, ptr @wcn36xx_smd_switch_channel._entry_ptr.81, ptr @wcn36xx_smd_switch_channel_rsp._entry, ptr @wcn36xx_smd_switch_channel_rsp._entry_ptr, ptr @wcn36xx_smd_trigger_ba._entry, ptr @wcn36xx_smd_trigger_ba._entry.262, ptr @wcn36xx_smd_trigger_ba._entry_ptr, ptr @wcn36xx_smd_trigger_ba._entry_ptr.264, ptr @wcn36xx_smd_tx_compl_ind._entry, ptr @wcn36xx_smd_tx_compl_ind._entry_ptr, ptr @wcn36xx_smd_update_cfg._entry, ptr @wcn36xx_smd_update_cfg._entry.267, ptr @wcn36xx_smd_update_cfg._entry_ptr, ptr @wcn36xx_smd_update_cfg._entry_ptr.269, ptr @wcn36xx_smd_update_channel_list._entry, ptr @wcn36xx_smd_update_channel_list._entry.71, ptr @wcn36xx_smd_update_channel_list._entry.74, ptr @wcn36xx_smd_update_channel_list._entry_ptr, ptr @wcn36xx_smd_update_channel_list._entry_ptr.73, ptr @wcn36xx_smd_update_channel_list._entry_ptr.76, ptr @wcn36xx_smd_update_proberesp_tmpl._entry, ptr @wcn36xx_smd_update_proberesp_tmpl._entry.166, ptr @wcn36xx_smd_update_proberesp_tmpl._entry.169, ptr @wcn36xx_smd_update_proberesp_tmpl._entry.172, ptr @wcn36xx_smd_update_proberesp_tmpl._entry_ptr, ptr @wcn36xx_smd_update_proberesp_tmpl._entry_ptr.168, ptr @wcn36xx_smd_update_proberesp_tmpl._entry_ptr.171, ptr @wcn36xx_smd_update_proberesp_tmpl._entry_ptr.174, ptr @wcn36xx_smd_update_scan_params._entry, ptr @wcn36xx_smd_update_scan_params._entry.89, ptr @wcn36xx_smd_update_scan_params._entry.92, ptr @wcn36xx_smd_update_scan_params._entry_ptr, ptr @wcn36xx_smd_update_scan_params._entry_ptr.91, ptr @wcn36xx_smd_update_scan_params._entry_ptr.94, ptr @wcn36xx_smd_update_scan_params_rsp._entry, ptr @wcn36xx_smd_update_scan_params_rsp._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @wcn36xx_smd_start.cfg_vals, ptr @wcn3680_cfg_vals, ptr @wcn36xx_cfg_vals, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.188, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.206, ptr @.str.208, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.219, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.226, ptr @.str.229, ptr @.str.231, ptr @.str.232, ptr @.str.234, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.243, ptr @.str.245, ptr @.str.246, ptr @.str.248, ptr @.str.250, ptr @.str.251, ptr @.str.253, ptr @.str.255, ptr @.str.256, ptr @.str.258, ptr @.str.260, ptr @.str.261, ptr @.str.263, ptr @.str.265, ptr @.str.266, ptr @.str.268, ptr @.str.270, ptr @.str.271, ptr @.str.273, ptr @.str.275, ptr @.str.276, ptr @.str.278, ptr @.str.280, ptr @.str.283, ptr @.str.286, ptr @.str.287, ptr @.str.289, ptr @.str.291, ptr @.str.292, ptr @.str.294, ptr @.str.297, ptr @bcn_filter_ies, ptr @.str.299, ptr @.str.300, ptr @.str.302, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.309, ptr @.str.312, ptr @.str.314, ptr @.str.315, ptr @wcn36xx_smd_open.__key, ptr @.str.316, ptr @wcn36xx_smd_open.__key.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.323, ptr @.str.326, ptr @init_completion.__key, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.334, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.346, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.357, ptr @.str.359, ptr @.str.360, ptr @.str.362, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.370, ptr @.str.371, ptr @.str.373, ptr @.str.375, ptr @.str.376, ptr @.str.378, ptr @.str.381, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.389, ptr @.str.394, ptr @.str.396, ptr @.str.397, ptr @.str.399, ptr @.str.402, ptr @.str.405, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.413, ptr @.str.416, ptr @.str.418, ptr @.str.419, ptr @.str.421, ptr @.str.424], section "llvm.metadata"
@0 = internal global [414 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_load_nv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_load_nv._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start.cfg_vals to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3680_cfg_vals to i32), i32 744, i32 928, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_cfg_vals to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_stop._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_init_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_init_scan._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_init_scan._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start_scan._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start_scan._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_end_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_end_scan._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_end_scan._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_finish_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_finish_scan._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_finish_scan._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start_hw_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start_hw_scan._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start_hw_scan._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_stop_hw_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_stop_hw_scan._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_stop_hw_scan._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_channel_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_channel_list._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_channel_list._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_switch_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_switch_channel._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_process_ptt_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_process_ptt_msg._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_scan_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_scan_params._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_scan_params._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_sta_self._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_sta_self._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_sta_self._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_sta_self._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_sta_self._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_sta._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_sta._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_join._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_join._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_link_st._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_link_st._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_link_st._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_sta._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_bss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_bss._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_bss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_bss._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_bss._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_send_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_send_beacon._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_send_beacon._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_send_beacon._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_send_beacon._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_proberesp_tmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_proberesp_tmpl._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_proberesp_tmpl._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_proberesp_tmpl._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_stakey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_stakey._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_bsskey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_bsskey._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_remove_stakey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_remove_stakey._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_remove_bsskey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_remove_bsskey._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_enter_bmps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_enter_bmps._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_exit_bmps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_exit_bmps._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_enter_imps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_enter_imps._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_enter_imps._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_exit_imps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_exit_imps._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_exit_imps._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_power_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_keep_alive_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_keep_alive_req._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_keep_alive_req._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_dump_cmd_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_dump_cmd_req._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_feat_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_feat_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_feat_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_feature_caps_exchange._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_feature_caps_exchange._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_ba_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_ba_session._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_ba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_ba._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_del_ba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_del_ba._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_trigger_ba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_trigger_ba._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_cfg._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_mc_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_mc_list._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_arp_offload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_arp_offload._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_ipv6_ns_offload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_ipv6_ns_offload._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_gtk_offload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_gtk_offload._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_gtk_offload_get_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_gtk_offload_get_info._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_host_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_host_resume._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_host_resume._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcn_filter_ies to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_beacon_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_beacon_filter._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_rsp_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_rsp_process._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_rsp_process._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_open.__key.317 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_send_and_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_send_and_wait._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_send_and_wait._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_cfg_tlv_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_start_rsp._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_switch_channel_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_process_ptt_msg_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_update_scan_params_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_sta_self_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_add_sta_self_rsp._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_join_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_sta_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_sta_v0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_sta_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_sta_rsp._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_bss_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_bss_v1._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_set_bss_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_bss_v0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_bss_v0._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_bss_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_config_bss_rsp._entry.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 146, i32 192, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry.377 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry.380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_ind_smd_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_tx_compl_ind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_missed_beacon_ind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_missed_beacon_ind._entry.388 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_missed_beacon_ind._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_missed_beacon_ind._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_sta_context_ind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_sta_context_ind._entry.398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_sta_context_ind._entry.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_delete_sta_context_ind._entry.404 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_print_reg_info_ind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_print_reg_info_ind._entry.412 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_print_reg_info_ind._entry.415 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_hw_scan_ind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_hw_scan_ind._entry.420 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_smd_hw_scan_ind._entry.423 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_load_nv(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nv = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 4
  %0 = ptrtoint ptr %nv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %nv_file = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 3
  %2 = ptrtoint ptr %nv_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nv_file, align 4
  %dev = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call i32 @request_firmware(ptr noundef %nv, ptr noundef %3, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %nv_file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nv_file, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef %call) #13
  br label %out

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %8 = ptrtoint ptr %nv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nv, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %table = getelementptr inbounds %struct.nv_data, ptr %11, i32 0, i32 1
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  br label %do.body18

do.body18:                                        ; preds = %if.end48.do.body18_crit_edge, %if.end6
  %msg_body.sroa.15.0 = phi i16 [ 0, %if.end6 ], [ %inc, %if.end48.do.body18_crit_edge ]
  %fm_offset.0 = phi i32 [ 0, %if.end6 ], [ %add51, %if.end48.do.body18_crit_edge ]
  %12 = ptrtoint ptr %nv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nv, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %conv = and i32 %fm_offset.0, 65535
  %sub = sub i32 %15, %conv
  %sub20 = add i32 %sub, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %sub20)
  %cmp = icmp sgt i32 %sub20, 3072
  %add25 = add i32 %sub, 12
  %msg_body.sroa.9.1 = select i1 %cmp, i32 3088, i32 %add25
  %not.cmp = xor i1 %cmp, true
  %msg_body.sroa.19.0 = zext i1 %not.cmp to i16
  %16 = tail call i32 @llvm.smin.i32(i32 %sub20, i32 3072)
  %17 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hal_buf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 3604480, ptr %18, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %18, i32 4
  %20 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %msg_body.sroa.9.1, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %18, i32 8
  %21 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %msg_body.sroa.15.0, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %18, i32 10
  %22 = ptrtoint ptr %msg_body.sroa.19.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %msg_body.sroa.19.0, ptr %msg_body.sroa.19.0..sroa_idx, align 1
  %msg_body.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %18, i32 12
  %23 = ptrtoint ptr %msg_body.sroa.23.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %16, ptr %msg_body.sroa.23.0..sroa_idx, align 1
  %24 = load ptr, ptr %hal_buf, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 16
  %add.ptr31 = getelementptr i8, ptr %table, i32 %conv
  %25 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr31, i32 %16)
  %call35 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %msg_body.sroa.9.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %do.body18.out_unlock_crit_edge

do.body18.out_unlock_crit_edge:                   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end38:                                         ; preds = %do.body18
  %26 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %27)
  %cmp.i = icmp ult i32 %27, 12
  br i1 %cmp.i, label %if.end38.do.end45_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end38.do.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end38
  %28 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 8
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool41.not = icmp eq i32 %31, 0
  br i1 %tobool41.not, label %if.end48, label %wcn36xx_smd_rsp_status_check.exit.do.end45_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end45_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end45:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end45_crit_edge, %if.end38.do.end45_crit_edge
  %retval.0.i91 = phi i32 [ %31, %wcn36xx_smd_rsp_status_check.exit.do.end45_crit_edge ], [ -5, %if.end38.do.end45_crit_edge ]
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i91) #13
  br label %out_unlock

if.end48:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit
  %inc = add i16 %msg_body.sroa.15.0, 1
  %add51 = add nuw nsw i32 %conv, 3072
  br i1 %cmp, label %if.end48.do.body18_crit_edge, label %if.end48.out_unlock_crit_edge

if.end48.out_unlock_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end48.do.body18_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

out_unlock:                                       ; preds = %if.end48.out_unlock_crit_edge, %do.end45, %do.body18.out_unlock_crit_edge
  %ret.0 = phi i32 [ %retval.0.i91, %do.end45 ], [ 0, %if.end48.out_unlock_crit_edge ], [ %call35, %do.body18.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  br label %out

out:                                              ; preds = %out_unlock, %do.end
  %ret.1 = phi i32 [ %ret.0, %out_unlock ], [ %call, %do.end ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load = load i32, ptr %1, align 1
  %bf.lshr = lshr i32 %bf.load, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %3 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.319, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %1, i32 noundef %len, i1 noundef zeroext false) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %hal_rsp_compl = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 27
  %4 = ptrtoint ptr %hal_rsp_compl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %hal_rsp_compl, align 4
  %wait.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 27, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.328, ptr noundef nonnull @init_completion.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %smd_channel = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 18
  %6 = ptrtoint ptr %smd_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smd_channel, align 4
  %8 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hal_buf, align 4
  %call = tail call i32 @rpmsg_send(ptr noundef %7, ptr noundef %9, i32 noundef %len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.320, i32 noundef %bf.lshr) #13
  br label %out

if.end10:                                         ; preds = %do.end
  %call13 = tail call i32 @wait_for_completion_timeout(ptr noundef %hal_rsp_compl, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %do.end18, label %do.body23

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.323, i32 noundef %bf.lshr, i32 noundef 10000) #13
  br label %out

do.body23:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %10 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and24 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.out_crit_edge, label %do.end29

do.body23.out_crit_edge:                          ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load32 = load i32, ptr %1, align 1
  %bf.lshr33 = lshr i32 %bf.load32, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %12, %5
  %call34 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, i32 noundef %bf.lshr, i32 noundef %bf.lshr33, i32 noundef %call34) #13
  br label %out

out:                                              ; preds = %do.end29, %do.body23.out_crit_edge, %do.end18, %do.end7
  %ret.0 = phi i32 [ %call, %do.end7 ], [ -62, %do.end18 ], [ 0, %do.end29 ], [ 0, %do.body23.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_start(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 16, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.12.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %msg_body.sroa.12.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 12
  %7 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %8 = load ptr, ptr %hal_buf, align 4
  %len17 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %len17 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %len17, align 1
  %rf_id = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 51
  %11 = ptrtoint ptr %rf_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13952, i32 %12)
  %cmp = icmp eq i32 %12, 13952
  %wcn3680_cfg_vals.wcn36xx_cfg_vals = select i1 %cmp, ptr @wcn3680_cfg_vals, ptr @wcn36xx_cfg_vals
  %. = select i1 %cmp, i32 93, i32 45
  store ptr %wcn3680_cfg_vals.wcn36xx_cfg_vals, ptr @wcn36xx_smd_start.cfg_vals, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.098 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.097 = phi i32 [ %10, %entry ], [ %add6.i, %for.inc.for.body_crit_edge ]
  %13 = add i32 %len.097, -4084
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %13)
  %cmp.i = icmp ult i32 %13, -4096
  br i1 %cmp.i, label %put_cfg_tlv_u32.exit, label %for.inc

put_cfg_tlv_u32.exit:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329) #13
  br label %out

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr @wcn36xx_smd_start.cfg_vals, align 4
  %value = getelementptr %struct.wcn36xx_cfg_val, ptr %14, i32 %i.098, i32 1
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %arrayidx = getelementptr %struct.wcn36xx_cfg_val, ptr %14, i32 %i.098
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %len.097
  %conv.i = trunc i32 %18 to i16
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %conv.i, ptr %add.ptr.i, align 1
  %len4.i = getelementptr inbounds %struct.wcn36xx_hal_cfg, ptr %add.ptr.i, i32 0, i32 1
  %22 = ptrtoint ptr %len4.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 4, ptr %len4.i, align 1
  %pad_bytes.i = getelementptr inbounds %struct.wcn36xx_hal_cfg, ptr %add.ptr.i, i32 0, i32 2
  %23 = ptrtoint ptr %pad_bytes.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 0, ptr %pad_bytes.i, align 1
  %reserve.i = getelementptr inbounds %struct.wcn36xx_hal_cfg, ptr %add.ptr.i, i32 0, i32 3
  %24 = ptrtoint ptr %reserve.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 0, ptr %reserve.i, align 1
  %add.ptr5.i = getelementptr %struct.wcn36xx_hal_cfg, ptr %add.ptr.i, i32 1
  %25 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %16, ptr %add.ptr5.i, align 4
  %add6.i = add nsw i32 %len.097, 12
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %26 = ptrtoint ptr %len17 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %add6.i, ptr %len17, align 1
  %sub = add nsw i32 %len.097, -4
  %len25 = getelementptr inbounds %struct.wcn36xx_hal_mac_start_req_msg, ptr %8, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %len25 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %sub, ptr %len25, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %28 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %for.end.do.end37_crit_edge, label %do.end31

for.end.do.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 0) #13
  br label %do.end37

do.end37:                                         ; preds = %do.end31, %for.end.do.end37_crit_edge
  %29 = ptrtoint ptr %len17 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %len17, align 1
  %call40 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %out

if.end48:                                         ; preds = %do.end37
  %31 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %33 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %34)
  %cmp.i84 = icmp ult i32 %34, 144
  br i1 %cmp.i84, label %if.end48.do.end55_crit_edge, label %if.end.i85

if.end48.do.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

if.end.i85:                                       ; preds = %if.end48
  %start_rsp_params.i = getelementptr inbounds %struct.wcn36xx_hal_mac_start_rsp_msg, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %start_rsp_params.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %start_rsp_params.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp1.not.i = icmp eq i16 %36, 0
  br i1 %cmp1.not.i, label %if.end4.i, label %if.end.i85.do.end55_crit_edge

if.end.i85.do.end55_crit_edge:                    ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

if.end4.i:                                        ; preds = %if.end.i85
  %crm_version.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 11
  %crm_version6.i = getelementptr inbounds %struct.wcn36xx_hal_mac_start_rsp_msg, ptr %32, i32 0, i32 1, i32 4
  %37 = call ptr @memcpy(ptr %crm_version.i, ptr %crm_version6.i, i32 64)
  %wlan_version.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 12
  %wlan_version10.i = getelementptr inbounds %struct.wcn36xx_hal_mac_start_rsp_msg, ptr %32, i32 0, i32 1, i32 5
  %38 = call ptr @memcpy(ptr %wlan_version.i, ptr %wlan_version10.i, i32 64)
  %arrayidx.i = getelementptr %struct.wcn36xx, ptr %wcn, i32 0, i32 11, i32 64
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx14.i = getelementptr %struct.wcn36xx, ptr %wcn, i32 0, i32 12, i32 64
  %40 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx14.i, align 2
  %version.i = getelementptr inbounds %struct.wcn36xx_hal_mac_start_rsp_msg, ptr %32, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %version.i, align 1
  %fw_revision.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 5
  %43 = ptrtoint ptr %fw_revision.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %fw_revision.i, align 4
  %version18.i = getelementptr inbounds %struct.wcn36xx_hal_mac_start_rsp_msg, ptr %32, i32 0, i32 1, i32 3, i32 1
  %44 = ptrtoint ptr %version18.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %version18.i, align 1
  %fw_version.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 6
  %46 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %fw_version.i, align 1
  %minor.i = getelementptr inbounds %struct.wcn36xx_hal_mac_start_rsp_msg, ptr %32, i32 0, i32 1, i32 3, i32 2
  %47 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %minor.i, align 1
  %fw_minor.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 7
  %49 = ptrtoint ptr %fw_minor.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %fw_minor.i, align 2
  %major.i = getelementptr inbounds %struct.wcn36xx_hal_mac_start_rsp_msg, ptr %32, i32 0, i32 1, i32 3, i32 3
  %50 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %major.i, align 1
  %fw_major.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 8
  %52 = ptrtoint ptr %fw_major.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %fw_major.i, align 1
  %first_boot.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 13
  %53 = ptrtoint ptr %first_boot.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %first_boot.i, align 1, !range !767
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i, label %if.end4.i.out_crit_edge, label %if.then23.i

if.end4.i.out_crit_edge:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then23.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %first_boot.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %first_boot.i, align 1
  %call.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef %wlan_version.i, ptr noundef %crm_version.i) #13
  %56 = ptrtoint ptr %fw_major.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fw_major.i, align 1
  %conv34.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %fw_minor.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %fw_minor.i, align 2
  %conv36.i = zext i8 %59 to i32
  %60 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %fw_version.i, align 1
  %conv38.i = zext i8 %61 to i32
  %62 = ptrtoint ptr %fw_revision.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fw_revision.i, align 4
  %conv40.i = zext i8 %63 to i32
  %stations.i = getelementptr inbounds %struct.wcn36xx_hal_mac_start_rsp_msg, ptr %32, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %stations.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %stations.i, align 1
  %conv42.i = zext i8 %65 to i32
  %bssids.i = getelementptr inbounds %struct.wcn36xx_hal_mac_start_rsp_msg, ptr %32, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %bssids.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bssids.i, align 1
  %conv44.i = zext i8 %67 to i32
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334, i32 noundef %conv34.i, i32 noundef %conv36.i, i32 noundef %conv38.i, i32 noundef %conv40.i, i32 noundef %conv42.i, i32 noundef %conv44.i) #13
  br label %out

do.end55:                                         ; preds = %if.end.i85.do.end55_crit_edge, %if.end48.do.end55_crit_edge
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef -5) #13
  br label %out

out:                                              ; preds = %do.end55, %if.then23.i, %if.end4.i.out_crit_edge, %do.end45, %put_cfg_tlv_u32.exit
  %ret.0 = phi i32 [ -12, %put_cfg_tlv_u32.exit ], [ %call40, %do.end45 ], [ -5, %do.end55 ], [ 0, %if.then23.i ], [ 0, %if.end4.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_stop(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 131072, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 12, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 2, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end16

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %7 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp.i = icmp ult i32 %8, 12
  br i1 %cmp.i, label %if.end.do.end24_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %9 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end24:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge, %if.end.do.end24_crit_edge
  %retval.0.i45 = phi i32 [ %12, %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge ], [ -5, %if.end.do.end24_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %retval.0.i45) #13
  br label %out

out:                                              ; preds = %do.end24, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end16
  %ret.0 = phi i32 [ %call, %do.end16 ], [ %retval.0.i45, %do.end24 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_init_scan(ptr noundef %wcn, i32 noundef %mode, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %0 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not = icmp eq i8 %1, -1
  %msg_body.sroa.15.0 = select i1 %cmp.not, i8 0, i8 2
  %msg_body.sroa.1654.0 = select i1 %cmp.not, i8 0, i8 %1
  %not.cmp.not = xor i1 %cmp.not, true
  %msg_body.sroa.1755.0 = zext i1 %not.cmp.not to i8
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %2 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 48)
  %5 = load ptr, ptr %hal_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 262144, ptr %5, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 4
  %7 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 48, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 8
  %8 = ptrtoint ptr %msg_body.sroa.12.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %mode, ptr %msg_body.sroa.12.0..sroa_idx, align 1
  %msg_body.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 12
  %9 = call ptr @memset(ptr %msg_body.sroa.14.0..sroa_idx, i32 0, i32 6)
  %msg_body.sroa.1453.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 18
  %10 = ptrtoint ptr %msg_body.sroa.1453.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %msg_body.sroa.1755.0, ptr %msg_body.sroa.1453.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 19
  %11 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %msg_body.sroa.15.0, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 20
  %12 = call ptr @memset(ptr %msg_body.sroa.16.0..sroa_idx, i32 0, i32 25)
  %msg_body.sroa.1654.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 45
  %13 = ptrtoint ptr %msg_body.sroa.1654.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %msg_body.sroa.1654.0, ptr %msg_body.sroa.1654.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 46
  %14 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.1755.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 47
  %15 = ptrtoint ptr %msg_body.sroa.1755.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %msg_body.sroa.1755.0, ptr %msg_body.sroa.1755.0..sroa_idx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %16 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end26_crit_edge, label %do.end21

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %mode) #13
  br label %do.end26

do.end26:                                         ; preds = %do.end21, %entry.do.end26_crit_edge
  %call29 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %out

if.end37:                                         ; preds = %do.end26
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %17 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %18)
  %cmp.i = icmp ult i32 %18, 12
  br i1 %cmp.i, label %if.end37.do.end44_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end37.do.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end37
  %19 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 8
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool40.not = icmp eq i32 %22, 0
  br i1 %tobool40.not, label %if.end47, label %wcn36xx_smd_rsp_status_check.exit.do.end44_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end44_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

do.end44:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end44_crit_edge, %if.end37.do.end44_crit_edge
  %retval.0.i79 = phi i32 [ %22, %wcn36xx_smd_rsp_status_check.exit.do.end44_crit_edge ], [ -5, %if.end37.do.end44_crit_edge ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %retval.0.i79) #13
  br label %out

if.end47:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sw_scan_init = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 35
  %23 = ptrtoint ptr %sw_scan_init to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %sw_scan_init, align 2
  br label %out

out:                                              ; preds = %if.end47, %do.end44, %do.end34
  %ret.0 = phi i32 [ %call29, %do.end34 ], [ %retval.0.i79, %do.end44 ], [ 0, %if.end47 ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_start_scan(ptr noundef %wcn, i8 noundef zeroext %scan_channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 9)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 393216, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 9, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %scan_channel, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %7 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.end16

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %scan_channel to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end16, %entry.do.end19_crit_edge
  %call22 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #13
  br label %out

if.end30:                                         ; preds = %do.end19
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %8 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.i = icmp ult i32 %9, 12
  br i1 %cmp.i, label %if.end30.do.end37_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end30
  %10 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %if.end40, label %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end37:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge, %if.end30.do.end37_crit_edge
  %retval.0.i60 = phi i32 [ %13, %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge ], [ -5, %if.end30.do.end37_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %retval.0.i60) #13
  br label %out

if.end40:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sw_scan_channel = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 36
  %14 = ptrtoint ptr %sw_scan_channel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %scan_channel, ptr %sw_scan_channel, align 1
  br label %out

out:                                              ; preds = %if.end40, %do.end37, %do.end27
  %ret.0 = phi i32 [ %call22, %do.end27 ], [ %retval.0.i60, %do.end37 ], [ 0, %if.end40 ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_end_scan(ptr noundef %wcn, i8 noundef zeroext %scan_channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 9)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 524288, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 9, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %scan_channel, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %7 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.end16

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %scan_channel to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end16, %entry.do.end19_crit_edge
  %call22 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %out

if.end30:                                         ; preds = %do.end19
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %8 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.i = icmp ult i32 %9, 12
  br i1 %cmp.i, label %if.end30.do.end37_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end30
  %10 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %if.end40, label %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end37:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge, %if.end30.do.end37_crit_edge
  %retval.0.i59 = phi i32 [ %13, %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge ], [ -5, %if.end30.do.end37_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %retval.0.i59) #13
  br label %out

if.end40:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sw_scan_channel = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 36
  %14 = ptrtoint ptr %sw_scan_channel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %sw_scan_channel, align 1
  br label %out

out:                                              ; preds = %if.end40, %do.end37, %do.end27
  %ret.0 = phi i32 [ %call22, %do.end27 ], [ %retval.0.i59, %do.end37 ], [ 0, %if.end40 ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_finish_scan(ptr noundef %wcn, i32 noundef %mode, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %0 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wcn, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value, align 2
  %conv7 = trunc i16 %5 to i8
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %6 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bss_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.not = icmp eq i8 %7, -1
  %msg_body.sroa.16.0 = select i1 %cmp.not, i8 0, i8 2
  %msg_body.sroa.1757.0 = select i1 %cmp.not, i8 0, i8 %7
  %not.cmp.not = xor i1 %cmp.not, true
  %msg_body.sroa.1858.0 = zext i1 %not.cmp.not to i8
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %8 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hal_buf, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 53)
  %11 = load ptr, ptr %hal_buf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 655360, ptr %11, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 4
  %13 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 53, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 8
  %14 = ptrtoint ptr %msg_body.sroa.12.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %mode, ptr %msg_body.sroa.12.0..sroa_idx, align 1
  %msg_body.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 12
  %15 = ptrtoint ptr %msg_body.sroa.14.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7, ptr %msg_body.sroa.14.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 13
  %16 = call ptr @memset(ptr %msg_body.sroa.15.0..sroa_idx, i32 0, i32 10)
  %msg_body.sroa.1556.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 23
  %17 = ptrtoint ptr %msg_body.sroa.1556.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %msg_body.sroa.1858.0, ptr %msg_body.sroa.1556.0..sroa_idx, align 1
  %msg_body.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 24
  %18 = ptrtoint ptr %msg_body.sroa.16.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %msg_body.sroa.16.0, ptr %msg_body.sroa.16.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 25
  %19 = call ptr @memset(ptr %msg_body.sroa.17.0..sroa_idx, i32 0, i32 25)
  %msg_body.sroa.1757.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 50
  %20 = ptrtoint ptr %msg_body.sroa.1757.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %msg_body.sroa.1757.0, ptr %msg_body.sroa.1757.0..sroa_idx, align 1
  %msg_body.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 51
  %21 = ptrtoint ptr %msg_body.sroa.18.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %msg_body.sroa.18.0..sroa_idx, align 1
  %msg_body.sroa.1858.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 52
  %22 = ptrtoint ptr %msg_body.sroa.1858.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %msg_body.sroa.1858.0, ptr %msg_body.sroa.1858.0..sroa_idx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %23 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and20 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  br i1 %tobool.not, label %entry.do.end29_crit_edge, label %do.end24

entry.do.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %mode) #13
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %entry.do.end29_crit_edge
  %call32 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %out

if.end40:                                         ; preds = %do.end29
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %24 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %25)
  %cmp.i = icmp ult i32 %25, 12
  br i1 %cmp.i, label %if.end40.do.end47_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end40.do.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end40
  %26 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 8
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool43.not = icmp eq i32 %29, 0
  br i1 %tobool43.not, label %if.end50, label %wcn36xx_smd_rsp_status_check.exit.do.end47_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end47_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.end47:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end47_crit_edge, %if.end40.do.end47_crit_edge
  %retval.0.i84 = phi i32 [ %29, %wcn36xx_smd_rsp_status_check.exit.do.end47_crit_edge ], [ -5, %if.end40.do.end47_crit_edge ]
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %retval.0.i84) #13
  br label %out

if.end50:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sw_scan_init = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 35
  %30 = ptrtoint ptr %sw_scan_init to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %sw_scan_init, align 2
  br label %out

out:                                              ; preds = %if.end50, %do.end47, %do.end37
  %ret.0 = phi i32 [ %call32, %do.end37 ], [ %retval.0.i84, %do.end47 ], [ 0, %if.end50 ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_start_hw_scan(ptr noundef %wcn, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %1)
  %cmp = icmp ugt i32 %1, 500
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 971) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end
  %3 = getelementptr inbounds i8, ptr %call7.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 963)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13369344, ptr %call7.i.i, align 8
  %len = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 971, ptr %len, align 4
  %scan_type = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %scan_type to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 2147483647, ptr %scan_type, align 1
  %min_ch_time = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %min_ch_time to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 30, ptr %min_ch_time, align 1
  %max_ch_time = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %max_ch_time to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 100, ptr %max_ch_time, align 1
  %scan_hidden = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %scan_hidden to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %scan_hidden, align 4
  %mac = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 6
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %mac, ptr %addr, i32 6)
  %bss_type = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  %12 = ptrtoint ptr %bss_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bss_type, align 4
  %bss_type10 = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %bss_type10 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %bss_type10, align 1
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %15 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p2p, align 2, !range !767
  %p2p_search = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %p2p_search to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %p2p_search, align 1
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_ssids, align 4
  %conv13 = and i32 %19, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv13)
  %cmp15 = icmp ult i32 %conv13, 10
  %phi.cast = trunc i32 %19 to i8
  %cond = select i1 %cmp15, i8 %phi.cast, i8 10
  %num_ssid = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %num_ssid to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cond, ptr %num_ssid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond)
  %cmp22215.not = icmp eq i8 %cond, 0
  br i1 %cmp22215.not, label %do.body.for.end_crit_edge, label %for.body.lr.ph

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %ssid_len = getelementptr %struct.cfg80211_ssid, ptr %22, i32 %i.0216, i32 1
  %23 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ssid_len, align 1
  %25 = tail call i8 @llvm.umin.i8(i8 %24, i8 32)
  %arrayidx37 = getelementptr %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 4, i32 %i.0216
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx37, align 1
  %ssid = getelementptr %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 4, i32 %i.0216, i32 1
  %arrayidx42 = getelementptr %struct.cfg80211_ssid, ptr %22, i32 %i.0216
  %conv48 = zext i8 %25 to i32
  %27 = call ptr @memcpy(ptr %ssid, ptr %arrayidx42, i32 %conv48)
  %inc = add nuw nsw i32 %i.0216, 1
  %28 = ptrtoint ptr %num_ssid to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_ssid, align 1
  %conv21 = zext i8 %29 to i32
  %cmp22 = icmp ult i32 %inc, %conv21
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 2
  %30 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_channels, align 8
  %conv51 = and i32 %31, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %conv51)
  %cmp53 = icmp ult i32 %conv51, 80
  %phi.cast210 = trunc i32 %31 to i8
  %cond60 = select i1 %cmp53, i8 %phi.cast210, i8 80
  %num_channel = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 12
  %32 = ptrtoint ptr %num_channel to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %cond60, ptr %num_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond60)
  %cmp65218.not = icmp eq i8 %cond60, 0
  br i1 %cmp65218.not, label %for.end.for.end75_crit_edge, label %for.end.for.body67_crit_edge

for.end.for.body67_crit_edge:                     ; preds = %for.end
  br label %for.body67

for.end.for.end75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end75

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.end.for.body67_crit_edge
  %i.1219 = phi i32 [ %inc74, %for.body67.for.body67_crit_edge ], [ 0, %for.end.for.body67_crit_edge ]
  %arrayidx68 = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22, i32 %i.1219
  %33 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx68, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hw_value, align 2
  %conv70 = trunc i16 %36 to i8
  %arrayidx72 = getelementptr %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 13, i32 %i.1219
  %37 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv70, ptr %arrayidx72, align 1
  %inc74 = add nuw nsw i32 %i.1219, 1
  %38 = ptrtoint ptr %num_channel to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_channel, align 4
  %conv64 = zext i8 %39 to i32
  %cmp65 = icmp ult i32 %inc74, %conv64
  br i1 %cmp65, label %for.body67.for.body67_crit_edge, label %for.body67.for.end75_crit_edge

for.body67.for.end75_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end75

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body67

for.end75:                                        ; preds = %for.body67.for.end75_crit_edge, %for.end.for.end75_crit_edge
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %sub = add i32 %41, -500
  store i32 %sub, ptr %len, align 4
  %42 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp79.not = icmp eq i32 %43, 0
  br i1 %cmp79.not, label %for.end75.do.body92_crit_edge, label %if.then81

for.end75.do.body92_crit_edge:                    ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

if.then81:                                        ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #12
  %conv83 = trunc i32 %43 to i16
  %ie_len84 = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 14
  %44 = ptrtoint ptr %ie_len84 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %conv83, ptr %ie_len84, align 1
  %add = add i32 %43, %sub
  %45 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add, ptr %len, align 4
  %ie = getelementptr inbounds %struct.wcn36xx_hal_start_scan_offload_req_msg, ptr %call7.i.i, i32 0, i32 15
  %ie89 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 4
  %46 = ptrtoint ptr %ie89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ie89, align 8
  %48 = call ptr @memcpy(ptr %ie, ptr %47, i32 %43)
  br label %do.body92

do.body92:                                        ; preds = %if.then81, %for.end75.do.body92_crit_edge
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %49 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hal_buf, align 4
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  %53 = call ptr @memset(ptr %50, i32 0, i32 %52)
  %54 = load ptr, ptr %hal_buf, align 4
  %55 = call ptr @memcpy(ptr %54, ptr %call7.i.i, i32 971)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %56 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and99 = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body92.do.end117_crit_edge, label %do.end104

do.body92.do.end117_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end117

do.end104:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %num_channel to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num_channel, align 4
  %conv107 = zext i8 %58 to i32
  %59 = ptrtoint ptr %num_ssid to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_ssid, align 1
  %conv109 = zext i8 %60 to i32
  %61 = ptrtoint ptr %p2p_search to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %p2p_search, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool112.not = icmp eq i8 %62, 0
  %cond113 = select i1 %tobool112.not, ptr @.str.54, ptr @.str.53
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv107, i32 noundef %conv109, ptr noundef nonnull %cond113) #13
  br label %do.end117

do.end117:                                        ; preds = %do.end104, %do.body92.do.end117_crit_edge
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  %call120 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end128, label %do.end125

do.end125:                                        ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #12
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #13
  br label %out

if.end128:                                        ; preds = %do.end117
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %65 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %66)
  %cmp.i = icmp ult i32 %66, 12
  br i1 %cmp.i, label %if.end128.do.end135_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end128.do.end135_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end135

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end128
  %67 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 8
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool131.not = icmp eq i32 %70, 0
  br i1 %tobool131.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end135_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end135_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end135

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end135:                                        ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end135_crit_edge, %if.end128.do.end135_crit_edge
  %retval.0.i213 = phi i32 [ %70, %wcn36xx_smd_rsp_status_check.exit.do.end135_crit_edge ], [ -5, %if.end128.do.end135_crit_edge ]
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %retval.0.i213) #13
  br label %out

out:                                              ; preds = %do.end135, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end125, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call120, %do.end125 ], [ %retval.0.i213, %do.end135 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #10
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_stop_hw_scan(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 13500416, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 8, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %6 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end17_crit_edge, label %do.end15

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #13
  br label %do.end17

do.end17:                                         ; preds = %do.end15, %entry.do.end17_crit_edge
  %call20 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #13
  br label %out

if.end28:                                         ; preds = %do.end17
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %7 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp.i = icmp ult i32 %8, 12
  br i1 %cmp.i, label %if.end28.do.end35_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end28.do.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end28
  %9 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool31.not = icmp eq i32 %12, 0
  br i1 %tobool31.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end35_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end35_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end35:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end35_crit_edge, %if.end28.do.end35_crit_edge
  %retval.0.i54 = phi i32 [ %12, %wcn36xx_smd_rsp_status_check.exit.do.end35_crit_edge ], [ -5, %if.end28.do.end35_crit_edge ]
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %retval.0.i54) #13
  br label %out

out:                                              ; preds = %do.end35, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end25
  %ret.0 = phi i32 [ %call20, %do.end25 ], [ %retval.0.i54, %do.end35 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_update_channel_list(ptr noundef %wcn, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1929) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %call7.i.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 1921)
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 13631488, ptr %call7.i.i, align 8
  %len = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1929, ptr %len, align 4
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_channels, align 8
  %conv6 = and i32 %6, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %conv6)
  %cmp = icmp ult i32 %conv6, 80
  %phi.cast = trunc i32 %6 to i8
  %cond = select i1 %cmp, i8 %phi.cast, i8 80
  %num_channel = getelementptr inbounds %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %num_channel to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cond, ptr %num_channel, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond)
  %cmp14251.not = icmp eq i8 %cond, 0
  br i1 %cmp14251.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %do.end89.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.0252 = phi i32 [ %inc, %do.end89.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 2, i32 %i.0252
  %arrayidx17 = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22, i32 %i.0252
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx17, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %center_freq, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %arrayidx, align 1
  %13 = load i32, ptr %center_freq, align 4
  %band_center_freq1 = getelementptr %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 2, i32 %i.0252, i32 1
  %14 = ptrtoint ptr %band_center_freq1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %band_center_freq1, align 1
  %band_center_freq2 = getelementptr %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 2, i32 %i.0252, i32 2
  %15 = ptrtoint ptr %band_center_freq2 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %band_center_freq2, align 1
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %for.body.if.end25_crit_edge, label %if.then24

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %channel_info = getelementptr %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 2, i32 %i.0252, i32 3
  %18 = ptrtoint ptr %channel_info to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %channel_info, align 1
  %or = or i32 %19, 128
  store i32 %or, ptr %channel_info, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.body.if.end25_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and29 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end25.if.end34_crit_edge, label %if.then31

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %channel_info32 = getelementptr %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 2, i32 %i.0252, i32 3
  %22 = ptrtoint ptr %channel_info32 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %channel_info32, align 1
  %or33 = or i32 %23, 1024
  store i32 %or33, ptr %channel_info32, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end25.if.end34_crit_edge
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp37 = icmp eq i32 %25, 1
  %channel_info40 = getelementptr %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 2, i32 %i.0252, i32 3
  %26 = ptrtoint ptr %channel_info40 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %channel_info40, align 1
  %. = select i1 %cmp37, i32 6144, i32 1
  %or47 = or i32 %27, %.
  store i32 %or47, ptr %channel_info40, align 1
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 6
  %28 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_power, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 6)
  %max_antenna_gain = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 5
  %31 = ptrtoint ptr %max_antenna_gain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_antenna_gain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool60.not = icmp eq i32 %32, 0
  %reg_info_1 = getelementptr %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 2, i32 %i.0252, i32 4
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx17, align 4
  %max_reg_power = getelementptr inbounds %struct.ieee80211_channel, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %max_reg_power to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_reg_power, align 4
  %max_power69 = getelementptr inbounds %struct.ieee80211_channel, ptr %34, i32 0, i32 6
  %37 = ptrtoint ptr %max_power69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_power69, align 4
  %39 = shl i32 %38, 8
  %.masked257 = and i32 %39, 65280
  %and.i212 = or i32 %.masked257, %30
  %40 = shl i32 %36, 16
  %.masked = and i32 %40, 16711680
  %and.i224 = or i32 %.masked, %and.i212
  %41 = ptrtoint ptr %reg_info_1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i224, ptr %reg_info_1, align 4
  %reg_info_2 = getelementptr %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 2, i32 %i.0252, i32 5
  %42 = ptrtoint ptr %reg_info_2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_info_2, align 4
  %and.i235 = and i32 %43, -256
  %.op = and i32 %32, 255
  %44 = select i1 %tobool60.not, i32 6, i32 %.op
  %or.i240 = or i32 %and.i235, %44
  store i32 %or.i240, ptr %reg_info_2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %45 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and75 = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end34.do.end89_crit_edge, label %do.end80

if.end34.do.end89_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

do.end80:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx, align 1
  %channel_info83 = getelementptr %struct.wcn36xx_hal_update_channel_list_req_msg, ptr %call7.i.i, i32 0, i32 2, i32 %i.0252, i32 3
  %48 = ptrtoint ptr %channel_info83 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %channel_info83, align 1
  %50 = ptrtoint ptr %reg_info_1 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %reg_info_1, align 1
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %or.i240) #13
  br label %do.end89

do.end89:                                         ; preds = %do.end80, %if.end34.do.end89_crit_edge
  %inc = add nuw nsw i32 %i.0252, 1
  %52 = ptrtoint ptr %num_channel to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num_channel, align 8
  %conv13 = zext i8 %53 to i32
  %cmp14 = icmp ult i32 %inc, %conv13
  br i1 %cmp14, label %do.end89.for.body_crit_edge, label %do.end89.for.end_crit_edge

do.end89.for.end_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end89.for.body_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %do.end89.for.end_crit_edge, %do.body.for.end_crit_edge
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %54 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hal_buf, align 4
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %58 = call ptr @memset(ptr %55, i32 0, i32 %57)
  %59 = load ptr, ptr %hal_buf, align 4
  %60 = call ptr @memcpy(ptr %59, ptr %call7.i.i, i32 1929)
  %61 = load i32, ptr %len, align 4
  %call98 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end106, label %do.end103

do.end103:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #13
  br label %out

if.end106:                                        ; preds = %for.end
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %62 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %63)
  %cmp.i = icmp ult i32 %63, 12
  br i1 %cmp.i, label %if.end106.do.end113_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end106.do.end113_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end113

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end106
  %64 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 8
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool109.not = icmp eq i32 %67, 0
  br i1 %tobool109.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end113_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end113_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end113

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end113:                                        ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end113_crit_edge, %if.end106.do.end113_crit_edge
  %retval.0.i245 = phi i32 [ %67, %wcn36xx_smd_rsp_status_check.exit.do.end113_crit_edge ], [ -5, %if.end106.do.end113_crit_edge ]
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %retval.0.i245) #13
  br label %out

out:                                              ; preds = %do.end113, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end103
  %ret.0 = phi i32 [ %call98, %do.end103 ], [ %retval.0.i245, %do.end113 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_switch_channel(ptr noundef %wcn, ptr nocapture noundef readonly %vif, i32 noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %conv = trunc i32 %ch to i8
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %msg_body.sroa.21.16.copyload = load i8, ptr %addr, align 8
  %msg_body.sroa.23.16.arraydecay6.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %msg_body.sroa.23.16.arraydecay6.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %msg_body.sroa.23.16.copyload = load i8, ptr %msg_body.sroa.23.16.arraydecay6.sroa_idx, align 1
  %msg_body.sroa.24.16.arraydecay6.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %msg_body.sroa.24.16.arraydecay6.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %msg_body.sroa.24.16.copyload = load i8, ptr %msg_body.sroa.24.16.arraydecay6.sroa_idx, align 2
  %msg_body.sroa.25.16.arraydecay6.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %msg_body.sroa.25.16.arraydecay6.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %msg_body.sroa.25.16.copyload = load i8, ptr %msg_body.sroa.25.16.arraydecay6.sroa_idx, align 1
  %msg_body.sroa.26.16.arraydecay6.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %msg_body.sroa.26.16.arraydecay6.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %msg_body.sroa.26.16.copyload = load i8, ptr %msg_body.sroa.26.16.arraydecay6.sroa_idx, align 4
  %msg_body.sroa.27.16.arraydecay6.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %msg_body.sroa.27.16.arraydecay6.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %msg_body.sroa.27.16.copyload = load i8, ptr %msg_body.sroa.27.16.arraydecay6.sroa_idx, align 1
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %6 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hal_buf, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 28)
  %9 = load ptr, ptr %hal_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 2752512, ptr %9, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 4
  %11 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 28, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 8
  %12 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 9
  %13 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 10
  %14 = ptrtoint ptr %msg_body.sroa.16.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %msg_body.sroa.16.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 14
  %15 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -65, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 15
  %16 = ptrtoint ptr %msg_body.sroa.19.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -65, ptr %msg_body.sroa.19.0..sroa_idx, align 1
  %msg_body.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 16
  %17 = ptrtoint ptr %msg_body.sroa.21.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %msg_body.sroa.21.16.copyload, ptr %msg_body.sroa.21.0..sroa_idx, align 1
  %msg_body.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 17
  %18 = ptrtoint ptr %msg_body.sroa.23.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %msg_body.sroa.23.16.copyload, ptr %msg_body.sroa.23.0..sroa_idx, align 1
  %msg_body.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 18
  %19 = ptrtoint ptr %msg_body.sroa.24.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %msg_body.sroa.24.16.copyload, ptr %msg_body.sroa.24.0..sroa_idx, align 1
  %msg_body.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 19
  %20 = ptrtoint ptr %msg_body.sroa.25.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %msg_body.sroa.25.16.copyload, ptr %msg_body.sroa.25.0..sroa_idx, align 1
  %msg_body.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 20
  %21 = ptrtoint ptr %msg_body.sroa.26.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %msg_body.sroa.26.16.copyload, ptr %msg_body.sroa.26.0..sroa_idx, align 1
  %msg_body.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 21
  %22 = ptrtoint ptr %msg_body.sroa.27.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %msg_body.sroa.27.16.copyload, ptr %msg_body.sroa.27.0..sroa_idx, align 1
  %msg_body.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 22
  %23 = call ptr @memset(ptr %msg_body.sroa.28.0..sroa_idx, i32 0, i32 6)
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end17

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #13
  br label %out

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %26 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %27)
  %cmp.i.i = icmp ult i32 %27, 12
  br i1 %cmp.i.i, label %if.end.do.end25_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.i

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

wcn36xx_smd_rsp_status_check.exit.i:              ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 8
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.end.i, label %wcn36xx_smd_rsp_status_check.exit.i.do.end25_crit_edge

wcn36xx_smd_rsp_status_check.exit.i.do.end25_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.end.i:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %30 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %do.end.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %channel_number.i = getelementptr inbounds %struct.wcn36xx_hal_switch_channel_rsp_msg, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %channel_number.i, align 1
  %conv.i = zext i8 %32 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.336, i32 noundef %conv.i, i32 noundef 0) #13
  br label %out

do.end25:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.i.do.end25_crit_edge, %if.end.do.end25_crit_edge
  %retval.0.i15.i = phi i32 [ %29, %wcn36xx_smd_rsp_status_check.exit.i.do.end25_crit_edge ], [ -5, %if.end.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %retval.0.i15.i) #13
  br label %out

out:                                              ; preds = %do.end25, %do.end.i, %if.end.i.out_crit_edge, %do.end17
  %ret.0 = phi i32 [ %call, %do.end17 ], [ %retval.0.i15.i, %do.end25 ], [ 0, %if.end.i.out_crit_edge ], [ 0, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_process_ptt_msg(ptr noundef %wcn, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %ptt_msg, i32 noundef %len, ptr nocapture noundef writeonly %ptt_rsp_msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %add = add i32 %len, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.out_nomem_crit_edge, label %do.body

entry.out_nomem_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nomem

do.body:                                          ; preds = %entry
  %0 = call ptr @memset(ptr %call9.i, i32 0, i32 %add)
  %1 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4587520, ptr %call9.i, align 128
  %len8 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %call9.i, i32 0, i32 1
  %2 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %len8, align 4
  %ptt_msg9 = getelementptr inbounds %struct.wcn36xx_hal_process_ptt_msg_req_msg, ptr %call9.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %ptt_msg9, ptr %ptt_msg, i32 %len)
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %4 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hal_buf, align 4
  %6 = call ptr @memcpy(ptr %5, ptr %call9.i, i32 %add)
  %7 = load i32, ptr %len8, align 4
  %call17 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #13
  br label %out

if.end24:                                         ; preds = %do.body
  %8 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %10 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp.i.i56 = icmp ult i32 %11, 12
  br i1 %cmp.i.i56, label %if.end24.do.end31_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.i

if.end24.do.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

wcn36xx_smd_rsp_status_check.exit.i:              ; preds = %if.end24
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 8
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i57, label %wcn36xx_smd_rsp_status_check.exit.i.do.end31_crit_edge

wcn36xx_smd_rsp_status_check.exit.i.do.end31_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

if.end.i57:                                       ; preds = %wcn36xx_smd_rsp_status_check.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %14 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i57.do.body9.i_crit_edge, label %do.end.i

if.end.i57.do.body9.i_crit_edge:                  ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.i

do.end.i:                                         ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  %len4.i = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %len4.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %len4.i, align 1
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338, i32 noundef %16) #13
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.end.i, %if.end.i57.do.body9.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %17 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and10.i = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body9.i.do.end17.i_crit_edge, label %if.then12.i

do.body9.i.do.end17.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17.i

if.then12.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  %ptt_msg.i = getelementptr inbounds %struct.wcn36xx_hal_process_ptt_msg_rsp_msg, ptr %9, i32 0, i32 2
  %len14.i = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %len14.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %len14.i, align 1
  %sub.i = add i32 %19, -4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.340, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %ptt_msg.i, i32 noundef %sub.i, i1 noundef zeroext false) #10
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then12.i, %do.body9.i.do.end17.i_crit_edge
  %len19.i = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %len19.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %len19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %do.end17.i.out_crit_edge, label %if.then20.i

do.end17.i.out_crit_edge:                         ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then20.i:                                      ; preds = %do.end17.i
  %ptt_msg21.i = getelementptr inbounds %struct.wcn36xx_hal_process_ptt_msg_rsp_msg, ptr %9, i32 0, i32 2
  %call25.i = tail call ptr @kmemdup(ptr noundef %ptt_msg21.i, i32 noundef %21, i32 noundef 2592) #10
  %22 = ptrtoint ptr %ptt_rsp_msg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call25.i, ptr %ptt_rsp_msg, align 4
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.then20.i.do.end31_crit_edge, label %if.then20.i.out_crit_edge

if.then20.i.out_crit_edge:                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then20.i.do.end31_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

do.end31:                                         ; preds = %if.then20.i.do.end31_crit_edge, %wcn36xx_smd_rsp_status_check.exit.i.do.end31_crit_edge, %if.end24.do.end31_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end24.do.end31_crit_edge ], [ -12, %if.then20.i.do.end31_crit_edge ], [ %13, %wcn36xx_smd_rsp_status_check.exit.i.do.end31_crit_edge ]
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %retval.0.i.ph) #13
  br label %out

out:                                              ; preds = %do.end31, %if.then20.i.out_crit_edge, %do.end17.i.out_crit_edge, %do.end22
  %ret.0 = phi i32 [ %call17, %do.end22 ], [ %retval.0.i.ph, %do.end31 ], [ 0, %do.end17.i.out_crit_edge ], [ 0, %if.then20.i.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %out_nomem

out_nomem:                                        ; preds = %out, %entry.out_nomem_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out ], [ -12, %entry.out_nomem_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_update_scan_params(ptr noundef %wcn, ptr nocapture noundef readonly %channels, i32 noundef %channel_count) local_unnamed_addr #0 align 64 {
entry:
  %msg_body.sroa.16 = alloca <{ [60 x i8], i16, i16, i16, i16, i32 }>, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %msg_body.sroa.16)
  %0 = call ptr @memset(ptr %msg_body.sroa.16, i32 255, i32 60)
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %conv = trunc i32 %channel_count to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %channel_count)
  %1 = icmp ugt i32 %channel_count, 71
  %2 = sub i32 72, %channel_count
  %3 = select i1 %1, i32 0, i32 %2
  %4 = getelementptr i8, ptr %msg_body.sroa.16, i32 %channel_count
  %5 = call ptr @memset(ptr %4, i32 0, i32 %3)
  %6 = call ptr @memcpy(ptr %msg_body.sroa.16, ptr %channels, i32 %channel_count)
  %msg_body.sroa.16.60.active_min_ch_time.sroa_idx = getelementptr inbounds i8, ptr %msg_body.sroa.16, i32 60
  %7 = ptrtoint ptr %msg_body.sroa.16.60.active_min_ch_time.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 60, ptr %msg_body.sroa.16.60.active_min_ch_time.sroa_idx, align 4
  %msg_body.sroa.16.62.active_max_ch_time.sroa_idx = getelementptr inbounds i8, ptr %msg_body.sroa.16, i32 62
  %8 = ptrtoint ptr %msg_body.sroa.16.62.active_max_ch_time.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 120, ptr %msg_body.sroa.16.62.active_max_ch_time.sroa_idx, align 2
  %msg_body.sroa.16.64.passive_min_ch_time.sroa_idx = getelementptr inbounds i8, ptr %msg_body.sroa.16, i32 64
  %9 = ptrtoint ptr %msg_body.sroa.16.64.passive_min_ch_time.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 60, ptr %msg_body.sroa.16.64.passive_min_ch_time.sroa_idx, align 4
  %msg_body.sroa.16.66.passive_max_ch_time.sroa_idx = getelementptr inbounds i8, ptr %msg_body.sroa.16, i32 66
  %10 = ptrtoint ptr %msg_body.sroa.16.66.passive_max_ch_time.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 110, ptr %msg_body.sroa.16.66.passive_max_ch_time.sroa_idx, align 2
  %msg_body.sroa.16.68.state.sroa_idx = getelementptr inbounds i8, ptr %msg_body.sroa.16, i32 68
  %11 = ptrtoint ptr %msg_body.sroa.16.68.state.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msg_body.sroa.16.68.state.sroa_idx, align 4
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %12 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hal_buf, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 83)
  %15 = load ptr, ptr %hal_buf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 9895936, ptr %15, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 4
  %17 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 83, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 8
  %18 = ptrtoint ptr %msg_body.sroa.12.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %msg_body.sroa.12.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 9
  %19 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 10
  %20 = ptrtoint ptr %msg_body.sroa.14.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %msg_body.sroa.14.0..sroa_idx, align 1
  %msg_body.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 11
  %21 = call ptr @memcpy(ptr %msg_body.sroa.16.0..sroa_idx, ptr %msg_body.sroa.16, i32 72)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %22 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.end17

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv19 = and i32 %channel_count, 255
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %conv19) #13
  br label %do.end21

do.end21:                                         ; preds = %do.end17, %entry.do.end21_crit_edge
  %call24 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #13
  br label %out

if.end32:                                         ; preds = %do.end21
  %23 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hal_buf, align 4
  %status.i = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_resp, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %status.i, align 1
  %and.i = and i32 %26, -32769
  store i32 %and.i, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end32.out_crit_edge, label %wcn36xx_smd_update_scan_params_rsp.exit

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

wcn36xx_smd_update_scan_params_rsp.exit:          ; preds = %if.end32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.341) #13
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool35.not = icmp eq i32 %28, 0
  br i1 %tobool35.not, label %wcn36xx_smd_update_scan_params_rsp.exit.out_crit_edge, label %do.end39

wcn36xx_smd_update_scan_params_rsp.exit.out_crit_edge: ; preds = %wcn36xx_smd_update_scan_params_rsp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end39:                                         ; preds = %wcn36xx_smd_update_scan_params_rsp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %28) #13
  br label %out

out:                                              ; preds = %do.end39, %wcn36xx_smd_update_scan_params_rsp.exit.out_crit_edge, %if.end32.out_crit_edge, %do.end29
  %ret.0 = phi i32 [ %call24, %do.end29 ], [ %28, %do.end39 ], [ 0, %wcn36xx_smd_update_scan_params_rsp.exit.out_crit_edge ], [ 0, %if.end32.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %msg_body.sroa.16)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_add_sta_self(ptr noundef %wcn, ptr nocapture noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %msg_body = alloca %struct.wcn36xx_hal_add_sta_self_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %msg_body) #10
  %0 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %msg_body, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_req, ptr %msg_body, i32 0, i32 1
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %2 = getelementptr inbounds i8, ptr %msg_body, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 6)
  %4 = ptrtoint ptr %msg_body to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8192000, ptr %msg_body, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 18, ptr %0, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %1, ptr %addr, i32 6)
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %7 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hal_buf, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 18)
  %10 = load ptr, ptr %hal_buf, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %msg_body, i32 18)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %12 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.end15

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_req, ptr %msg_body, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %13, align 2
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %1, i32 noundef %15) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end15, %entry.do.end19_crit_edge
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  %call22 = call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #13
  br label %out

if.end30:                                         ; preds = %do.end19
  %18 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %20 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hal_rsp_len, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %cmp.i = icmp ult i32 %21, 15
  br i1 %cmp.i, label %if.end30.do.end37_crit_edge, label %if.end.i

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

if.end.i:                                         ; preds = %if.end30
  %status.i = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.not.i = icmp eq i32 %23, 0
  br i1 %cmp1.not.i, label %do.body7.i, label %wcn36xx_smd_add_sta_self_rsp.exit

do.body7.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %24 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body7.i.wcn36xx_smd_add_sta_self_rsp.exit.thread_crit_edge, label %do.end11.i

do.body7.i.wcn36xx_smd_add_sta_self_rsp.exit.thread_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_add_sta_self_rsp.exit.thread

do.end11.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %self_sta_index.i = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, ptr %19, i32 0, i32 2
  %25 = ptrtoint ptr %self_sta_index.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %self_sta_index.i, align 1
  %conv.i = zext i8 %26 to i32
  %dpu_index.i = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, ptr %19, i32 0, i32 3
  %27 = ptrtoint ptr %dpu_index.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dpu_index.i, align 1
  %conv14.i = zext i8 %28 to i32
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.346, i32 noundef 0, i32 noundef %conv.i, i32 noundef %conv14.i) #13
  br label %wcn36xx_smd_add_sta_self_rsp.exit.thread

wcn36xx_smd_add_sta_self_rsp.exit.thread:         ; preds = %do.end11.i, %do.body7.i.wcn36xx_smd_add_sta_self_rsp.exit.thread_crit_edge
  %self_sta_index19.i = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, ptr %19, i32 0, i32 2
  %29 = ptrtoint ptr %self_sta_index19.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %self_sta_index19.i, align 1
  %self_sta_index20.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %drv_priv.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %self_sta_index20.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %self_sta_index20.i, align 1
  %dpu_index21.i = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, ptr %19, i32 0, i32 3
  %32 = ptrtoint ptr %dpu_index21.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dpu_index21.i, align 1
  %self_dpu_desc_index.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %drv_priv.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %self_dpu_desc_index.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %self_dpu_desc_index.i, align 2
  br label %out

wcn36xx_smd_add_sta_self_rsp.exit:                ; preds = %if.end.i
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.343, i32 noundef %23) #13
  %35 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool33.not = icmp eq i32 %36, 0
  br i1 %tobool33.not, label %wcn36xx_smd_add_sta_self_rsp.exit.out_crit_edge, label %wcn36xx_smd_add_sta_self_rsp.exit.do.end37_crit_edge

wcn36xx_smd_add_sta_self_rsp.exit.do.end37_crit_edge: ; preds = %wcn36xx_smd_add_sta_self_rsp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

wcn36xx_smd_add_sta_self_rsp.exit.out_crit_edge:  ; preds = %wcn36xx_smd_add_sta_self_rsp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end37:                                         ; preds = %wcn36xx_smd_add_sta_self_rsp.exit.do.end37_crit_edge, %if.end30.do.end37_crit_edge
  %retval.0.i58 = phi i32 [ %36, %wcn36xx_smd_add_sta_self_rsp.exit.do.end37_crit_edge ], [ -22, %if.end30.do.end37_crit_edge ]
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %retval.0.i58) #13
  br label %out

out:                                              ; preds = %do.end37, %wcn36xx_smd_add_sta_self_rsp.exit.out_crit_edge, %wcn36xx_smd_add_sta_self_rsp.exit.thread, %do.end27
  %ret.0 = phi i32 [ %call22, %do.end27 ], [ %retval.0.i58, %do.end37 ], [ 0, %wcn36xx_smd_add_sta_self_rsp.exit.out_crit_edge ], [ 0, %wcn36xx_smd_add_sta_self_rsp.exit.thread ]
  call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %msg_body) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_delete_sta_self(ptr noundef %wcn, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %msg_body.sroa.13.8.copyload = load i8, ptr %addr, align 1
  %msg_body.sroa.15.8..sroa_idx = getelementptr inbounds i8, ptr %addr, i32 1
  %1 = ptrtoint ptr %msg_body.sroa.15.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %msg_body.sroa.15.8.copyload = load i8, ptr %msg_body.sroa.15.8..sroa_idx, align 1
  %msg_body.sroa.16.8..sroa_idx = getelementptr inbounds i8, ptr %addr, i32 2
  %2 = ptrtoint ptr %msg_body.sroa.16.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %msg_body.sroa.16.8.copyload = load i8, ptr %msg_body.sroa.16.8..sroa_idx, align 1
  %msg_body.sroa.17.8..sroa_idx = getelementptr inbounds i8, ptr %addr, i32 3
  %3 = ptrtoint ptr %msg_body.sroa.17.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %msg_body.sroa.17.8.copyload = load i8, ptr %msg_body.sroa.17.8..sroa_idx, align 1
  %msg_body.sroa.18.8..sroa_idx = getelementptr inbounds i8, ptr %addr, i32 4
  %4 = ptrtoint ptr %msg_body.sroa.18.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %msg_body.sroa.18.8.copyload = load i8, ptr %msg_body.sroa.18.8..sroa_idx, align 1
  %msg_body.sroa.19.8..sroa_idx = getelementptr inbounds i8, ptr %addr, i32 5
  %5 = ptrtoint ptr %msg_body.sroa.19.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %msg_body.sroa.19.8.copyload = load i8, ptr %msg_body.sroa.19.8..sroa_idx, align 1
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %6 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hal_buf, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 14)
  %9 = load ptr, ptr %hal_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 8323072, ptr %9, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 4
  %11 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 14, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 8
  %12 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %msg_body.sroa.13.8.copyload, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 9
  %13 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %msg_body.sroa.15.8.copyload, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 10
  %14 = ptrtoint ptr %msg_body.sroa.16.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %msg_body.sroa.16.8.copyload, ptr %msg_body.sroa.16.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 11
  %15 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %msg_body.sroa.17.8.copyload, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 12
  %16 = ptrtoint ptr %msg_body.sroa.18.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %msg_body.sroa.18.8.copyload, ptr %msg_body.sroa.18.0..sroa_idx, align 1
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 13
  %17 = ptrtoint ptr %msg_body.sroa.19.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %msg_body.sroa.19.8.copyload, ptr %msg_body.sroa.19.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end16

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %18 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %19)
  %cmp.i = icmp ult i32 %19, 12
  br i1 %cmp.i, label %if.end.do.end24_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %20 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not = icmp eq i32 %23, 0
  br i1 %tobool20.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end24:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge, %if.end.do.end24_crit_edge
  %retval.0.i45 = phi i32 [ %23, %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge ], [ -5, %if.end.do.end24_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %retval.0.i45) #13
  br label %out

out:                                              ; preds = %do.end24, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end16
  %ret.0 = phi i32 [ %call, %do.end16 ], [ %retval.0.i45, %do.end24 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_delete_sta(ptr noundef %wcn, i8 noundef zeroext %sta_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 9)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 917504, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 9, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %sta_index, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %7 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.end16

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %sta_index to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %conv) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end16, %entry.do.end19_crit_edge
  %call22 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #13
  br label %out

if.end30:                                         ; preds = %do.end19
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %8 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.i = icmp ult i32 %9, 12
  br i1 %cmp.i, label %if.end30.do.end37_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end30
  %10 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end37:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge, %if.end30.do.end37_crit_edge
  %retval.0.i58 = phi i32 [ %13, %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge ], [ -5, %if.end30.do.end37_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %retval.0.i58) #13
  br label %out

out:                                              ; preds = %do.end37, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end27
  %ret.0 = phi i32 [ %call22, %do.end27 ], [ %retval.0.i58, %do.end37 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_join(ptr noundef %wcn, ptr nocapture noundef readonly %bssid, ptr nocapture noundef readonly %vif, i8 noundef zeroext %ch) local_unnamed_addr #0 align 64 {
entry:
  %msg_body = alloca %struct.wcn36xx_hal_join_req_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %msg_body) #10
  %0 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %msg_body, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wcn36xx_hal_join_req_msg, ptr %msg_body, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wcn36xx_hal_join_req_msg, ptr %msg_body, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wcn36xx_hal_join_req_msg, ptr %msg_body, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wcn36xx_hal_join_req_msg, ptr %msg_body, i32 0, i32 5
  %5 = getelementptr inbounds %struct.wcn36xx_hal_join_req_msg, ptr %msg_body, i32 0, i32 6
  %6 = getelementptr inbounds %struct.wcn36xx_hal_join_req_msg, ptr %msg_body, i32 0, i32 7
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %7 = getelementptr inbounds i8, ptr %msg_body, i32 20
  %8 = call ptr @memset(ptr %7, i32 0, i32 11)
  %9 = ptrtoint ptr %msg_body to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1310720, ptr %msg_body, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 31, ptr %0, align 4
  %11 = call ptr @memcpy(ptr %1, ptr %bssid, i32 6)
  %12 = call ptr @memcpy(ptr %3, ptr %vif, i32 6)
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %ch, ptr %2, align 2
  %14 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wcn, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %15, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %conf_is_ht40_minus.exit, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

conf_is_ht40_minus.exit:                          ; preds = %entry
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %15, i32 0, i32 7
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %15, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %center_freq1.i, align 4
  %20 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp3.i = icmp ult i32 %19, %23
  br i1 %cmp3.i, label %conf_is_ht40_minus.exit.if.end14.sink.split_crit_edge, label %conf_is_ht40_plus.exit

conf_is_ht40_minus.exit.if.end14.sink.split_crit_edge: ; preds = %conf_is_ht40_minus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split

conf_is_ht40_plus.exit:                           ; preds = %conf_is_ht40_minus.exit
  %24 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %center_freq1.i, align 4
  %26 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chandef.i, align 4
  %center_freq.i72 = getelementptr inbounds %struct.ieee80211_channel, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %center_freq.i72 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %center_freq.i72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %29)
  %cmp3.i73 = icmp ugt i32 %25, %29
  br i1 %cmp3.i73, label %conf_is_ht40_plus.exit.if.end14.sink.split_crit_edge, label %conf_is_ht40_plus.exit.if.end14_crit_edge

conf_is_ht40_plus.exit.if.end14_crit_edge:        ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

conf_is_ht40_plus.exit.if.end14.sink.split_crit_edge: ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %conf_is_ht40_plus.exit.if.end14.sink.split_crit_edge, %conf_is_ht40_minus.exit.if.end14.sink.split_crit_edge
  %.sink = phi i32 [ 3, %conf_is_ht40_minus.exit.if.end14.sink.split_crit_edge ], [ 1, %conf_is_ht40_plus.exit.if.end14.sink.split_crit_edge ]
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %.sink, ptr %4, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %conf_is_ht40_plus.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 1, ptr %5, align 2
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -65, ptr %6, align 2
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %33 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hal_buf, align 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 31)
  %36 = load ptr, ptr %hal_buf, align 4
  %37 = call ptr @memcpy(ptr %36, ptr %msg_body, i32 31)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %38 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14.do.end34_crit_edge, label %do.end25

if.end14.do.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

do.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 2
  %conv = zext i8 %40 to i32
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %5, align 2
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %1, ptr noundef %3, i32 noundef %conv, i32 noundef %42) #13
  br label %do.end34

do.end34:                                         ; preds = %do.end25, %if.end14.do.end34_crit_edge
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %0, align 4
  %call37 = call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #13
  br label %out

if.end45:                                         ; preds = %do.end34
  %45 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %47 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %48)
  %cmp.i.i = icmp ult i32 %48, 12
  br i1 %cmp.i.i, label %if.end45.do.end52_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.i

if.end45.do.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52

wcn36xx_smd_rsp_status_check.exit.i:              ; preds = %if.end45
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 8
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %if.end.i, label %wcn36xx_smd_rsp_status_check.exit.i.do.end52_crit_edge

wcn36xx_smd_rsp_status_check.exit.i.do.end52_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52

if.end.i:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %51 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %do.end.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_mgmt_power.i = getelementptr inbounds %struct.wcn36xx_hal_join_rsp_msg, ptr %46, i32 0, i32 2
  %52 = ptrtoint ptr %tx_mgmt_power.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tx_mgmt_power.i, align 1
  %conv.i = zext i8 %53 to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.348, i32 noundef 0, i32 noundef %conv.i) #13
  br label %out

do.end52:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.i.do.end52_crit_edge, %if.end45.do.end52_crit_edge
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef -5) #13
  br label %out

out:                                              ; preds = %do.end52, %do.end.i, %if.end.i.out_crit_edge, %do.end42
  %ret.0 = phi i32 [ %call37, %do.end42 ], [ -5, %do.end52 ], [ 0, %do.end.i ], [ 0, %if.end.i.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %msg_body) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_set_link_st(ptr noundef %wcn, ptr nocapture noundef readonly %bssid, ptr nocapture noundef readonly %sta_mac, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %msg_body = alloca %struct.wcn36xx_hal_set_link_state_req_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg_body) #10
  %0 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %msg_body, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, ptr %msg_body, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, ptr %msg_body, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, ptr %msg_body, i32 0, i32 3
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %4 = ptrtoint ptr %msg_body to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2883584, ptr %msg_body, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %0, align 4
  %6 = call ptr @memcpy(ptr %1, ptr %bssid, i32 6)
  %7 = call ptr @memcpy(ptr %3, ptr %sta_mac, i32 6)
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %state, ptr %2, align 2
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %9 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hal_buf, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 24)
  %12 = load ptr, ptr %hal_buf, align 4
  %13 = call ptr @memcpy(ptr %12, ptr %msg_body, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %14 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end23_crit_edge, label %do.end17

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %2, align 2
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %1, ptr noundef %3, i32 noundef %16) #13
  br label %do.end23

do.end23:                                         ; preds = %do.end17, %entry.do.end23_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  %call26 = call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %out

if.end34:                                         ; preds = %do.end23
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %19 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %20)
  %cmp.i = icmp ult i32 %20, 12
  br i1 %cmp.i, label %if.end34.do.end41_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end34.do.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end34
  %21 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 8
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool37.not = icmp eq i32 %24, 0
  br i1 %tobool37.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end41_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end41_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end41:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end41_crit_edge, %if.end34.do.end41_crit_edge
  %retval.0.i57 = phi i32 [ %24, %wcn36xx_smd_rsp_status_check.exit.do.end41_crit_edge ], [ -5, %if.end34.do.end41_crit_edge ]
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %retval.0.i57) #13
  br label %out

out:                                              ; preds = %do.end41, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end31
  %ret.0 = phi i32 [ %call26, %do.end31 ], [ %retval.0.i57, %do.end41 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_body) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_config_sta(ptr noundef %wcn, ptr nocapture noundef readonly %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.wcn36xx_hal_config_sta_req_msg, align 4
  %msg_body.i = alloca %struct.wcn36xx_hal_config_sta_req_msg_v1, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %fw_major.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 8
  %0 = ptrtoint ptr %fw_major.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_major.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %fw_minor.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 7
  %2 = ptrtoint ptr %fw_minor.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_minor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp5.i = icmp eq i8 %3, 2
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %fw_version.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 6
  %4 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp10.i = icmp eq i8 %5, 2
  br i1 %cmp10.i, label %wcn36xx_is_fw_version.exit, label %land.lhs.true7.i.if.then_crit_edge

land.lhs.true7.i.if.then_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

wcn36xx_is_fw_version.exit:                       ; preds = %land.lhs.true7.i
  %fw_revision.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 5
  %6 = ptrtoint ptr %fw_revision.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %7)
  %cmp14.i = icmp eq i8 %7, 24
  br i1 %cmp14.i, label %if.else, label %wcn36xx_is_fw_version.exit.if.then_crit_edge

wcn36xx_is_fw_version.exit.if.then_crit_edge:     ; preds = %wcn36xx_is_fw_version.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %wcn36xx_is_fw_version.exit.if.then_crit_edge, %land.lhs.true7.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %msg_body.i) #10
  %rf_id.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 51
  %8 = ptrtoint ptr %rf_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rf_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13952, i32 %9)
  %cmp.i29 = icmp eq i32 %9, 13952
  %10 = getelementptr inbounds i8, ptr %msg_body.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 116)
  %..i = select i1 %cmp.i29, i32 786433, i32 786432
  %.55.i = select i1 %cmp.i29, i32 124, i32 114
  %12 = ptrtoint ptr %msg_body.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %..i, ptr %msg_body.i, align 4
  %13 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %msg_body.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.55.i, ptr %13, align 4
  call fastcc void @wcn36xx_smd_set_sta_params_v1(ptr noundef %wcn, ptr noundef %vif, ptr noundef %sta, ptr noundef %10) #10
  %hal_buf.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %15 = ptrtoint ptr %hal_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hal_buf.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 4
  %19 = call ptr @memset(ptr %16, i32 0, i32 %18)
  %20 = load ptr, ptr %hal_buf.i, align 4
  %21 = call ptr @memcpy(ptr %20, ptr %msg_body.i, i32 124)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %22 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.wcn36xx_smd_config_sta_v1.exit_crit_edge, label %do.end32.i

if.then.wcn36xx_smd_config_sta_v1.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_config_sta_v1.exit

do.end32.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %action.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg_v1, ptr %msg_body.i, i32 0, i32 1, i32 18
  %23 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %action.i, align 1
  %conv.i = zext i8 %24 to i32
  %sta_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg_v1, ptr %msg_body.i, i32 0, i32 1, i32 26
  %25 = ptrtoint ptr %sta_index.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sta_index.i, align 4
  %conv33.i = zext i8 %26 to i32
  %bssid_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg_v1, ptr %msg_body.i, i32 0, i32 1, i32 27
  %27 = ptrtoint ptr %bssid_index.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bssid_index.i, align 1
  %conv34.i = zext i8 %28 to i32
  %type.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg_v1, ptr %msg_body.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type.i, align 4
  %conv35.i = zext i8 %30 to i32
  %mac.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg_v1, ptr %msg_body.i, i32 0, i32 1, i32 4
  %aid.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg_v1, ptr %msg_body.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %aid.i, align 2
  %conv37.i = zext i16 %32 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, i32 noundef %conv.i, i32 noundef %conv33.i, i32 noundef %conv34.i, ptr noundef %10, i32 noundef %conv35.i, ptr noundef %mac.i, i32 noundef %conv37.i) #13
  br label %wcn36xx_smd_config_sta_v1.exit

wcn36xx_smd_config_sta_v1.exit:                   ; preds = %do.end32.i, %if.then.wcn36xx_smd_config_sta_v1.exit_crit_edge
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %13, align 4
  %call43.i = call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %34) #10
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %msg_body.i) #10
  br label %if.end

if.else:                                          ; preds = %wcn36xx_is_fw_version.exit
  call void @llvm.lifetime.start.p0(i64 113, ptr nonnull %msg.i) #10
  %35 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 105)
  %37 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 786432, ptr %msg.i, align 4
  %len.i = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %msg.i, i32 0, i32 1
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 113, ptr %len.i, align 4
  call fastcc void @wcn36xx_smd_set_sta_params(ptr noundef %wcn, ptr noundef %vif, ptr noundef %sta, ptr noundef %35) #10
  %hal_buf.i30 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %39 = ptrtoint ptr %hal_buf.i30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hal_buf.i30, align 4
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  %43 = call ptr @memset(ptr %40, i32 0, i32 %42)
  %44 = load ptr, ptr %hal_buf.i30, align 4
  %45 = call ptr @memcpy(ptr %44, ptr %msg.i, i32 113)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %46 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i31 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool.not.i32 = icmp eq i32 %and.i31, 0
  br i1 %tobool.not.i32, label %if.else.wcn36xx_smd_config_sta_v0.exit_crit_edge, label %do.end16.i

if.else.wcn36xx_smd_config_sta_v0.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_config_sta_v0.exit

do.end16.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %action.i33 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg, ptr %msg.i, i32 0, i32 1, i32 19
  %47 = ptrtoint ptr %action.i33 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %action.i33, align 1
  %conv.i34 = zext i8 %48 to i32
  %sta_index.i35 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg, ptr %msg.i, i32 0, i32 1, i32 27
  %49 = ptrtoint ptr %sta_index.i35 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sta_index.i35, align 2
  %conv17.i = zext i8 %50 to i32
  %bssid_index.i36 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg, ptr %msg.i, i32 0, i32 1, i32 28
  %51 = ptrtoint ptr %bssid_index.i36 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bssid_index.i36, align 1
  %conv18.i = zext i8 %52 to i32
  %type.i37 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg, ptr %msg.i, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %type.i37 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type.i37, align 4
  %conv19.i = zext i8 %54 to i32
  %mac.i38 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg, ptr %msg.i, i32 0, i32 1, i32 4
  %aid.i39 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg, ptr %msg.i, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %aid.i39 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %aid.i39, align 2
  %conv21.i = zext i16 %56 to i32
  %call.i40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.352, i32 noundef %conv.i34, i32 noundef %conv17.i, i32 noundef %conv18.i, ptr noundef %35, i32 noundef %conv19.i, ptr noundef %mac.i38, i32 noundef %conv21.i) #13
  br label %wcn36xx_smd_config_sta_v0.exit

wcn36xx_smd_config_sta_v0.exit:                   ; preds = %do.end16.i, %if.else.wcn36xx_smd_config_sta_v0.exit_crit_edge
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i, align 4
  %call26.i = call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %58) #10
  call void @llvm.lifetime.end.p0(i64 113, ptr nonnull %msg.i) #10
  br label %if.end

if.end:                                           ; preds = %wcn36xx_smd_config_sta_v0.exit, %wcn36xx_smd_config_sta_v1.exit
  %ret.0 = phi i32 [ %call26.i, %wcn36xx_smd_config_sta_v0.exit ], [ %call43.i, %wcn36xx_smd_config_sta_v1.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #13
  br label %out

if.end5:                                          ; preds = %if.end
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %59 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %61 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hal_rsp_len, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %62)
  %cmp.i41 = icmp ult i32 %62, 21
  br i1 %cmp.i41, label %if.end5.do.end11_crit_edge, label %if.end.i

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.end.i:                                         ; preds = %if.end5
  %params1.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_rsp_msg, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %params1.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %params1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp2.not.i = icmp eq i32 %64, 0
  br i1 %cmp2.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, i32 noundef %64) #13
  br label %do.end11

if.end6.i:                                        ; preds = %if.end.i
  %sta_index.i42 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_rsp_msg, ptr %60, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %sta_index.i42 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %sta_index.i42, align 1
  %sta_index7.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %67 = ptrtoint ptr %sta_index7.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %sta_index7.i, align 4
  %dpu_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_rsp_msg, ptr %60, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %dpu_index.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dpu_index.i, align 1
  %dpu_desc_index.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %dpu_desc_index.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %dpu_desc_index.i, align 1
  %uc_ucast_sig.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_rsp_msg, ptr %60, i32 0, i32 1, i32 6
  %71 = ptrtoint ptr %uc_ucast_sig.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %uc_ucast_sig.i, align 1
  %ucast_dpu_sign.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i.i, i32 0, i32 6
  %73 = ptrtoint ptr %ucast_dpu_sign.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %ucast_dpu_sign.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %74 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i43 = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %if.end6.i.out_crit_edge, label %do.end12.i

if.end6.i.out_crit_edge:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %params1.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %params1.i, align 1
  %77 = ptrtoint ptr %sta_index.i42 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %sta_index.i42, align 1
  %conv.i45 = zext i8 %78 to i32
  %bssid_index.i46 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_rsp_msg, ptr %60, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %bssid_index.i46 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bssid_index.i46, align 1
  %conv16.i = zext i8 %80 to i32
  %81 = ptrtoint ptr %uc_ucast_sig.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %uc_ucast_sig.i, align 1
  %conv18.i47 = zext i8 %82 to i32
  %p2p.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_rsp_msg, ptr %60, i32 0, i32 1, i32 9
  %83 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %p2p.i, align 1
  %conv19.i48 = zext i8 %84 to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.357, i32 noundef %76, i32 noundef %conv.i45, i32 noundef %conv16.i, i32 noundef %conv18.i47, i32 noundef %conv19.i48) #13
  br label %out

do.end11:                                         ; preds = %do.end.i, %if.end5.do.end11_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ -22, %if.end5.do.end11_crit_edge ]
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %retval.0.i) #13
  br label %out

out:                                              ; preds = %do.end11, %do.end12.i, %if.end6.i.out_crit_edge, %do.end
  %ret.1 = phi i32 [ %ret.0, %do.end ], [ %retval.0.i, %do.end11 ], [ 0, %do.end12.i ], [ 0, %if.end6.i.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_config_bss(ptr noundef %wcn, ptr nocapture noundef %vif, ptr noundef %sta, ptr nocapture noundef readonly %bssid, i1 noundef zeroext %update) local_unnamed_addr #0 align 64 {
entry:
  %bss_v0.i = alloca %struct.wcn36xx_hal_config_bss_params, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %fw_major.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 8
  %0 = ptrtoint ptr %fw_major.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_major.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %fw_minor.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 7
  %2 = ptrtoint ptr %fw_minor.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_minor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp5.i = icmp eq i8 %3, 2
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %fw_version.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 6
  %4 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp10.i = icmp eq i8 %5, 2
  br i1 %cmp10.i, label %wcn36xx_is_fw_version.exit, label %land.lhs.true7.i.if.then_crit_edge

land.lhs.true7.i.if.then_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

wcn36xx_is_fw_version.exit:                       ; preds = %land.lhs.true7.i
  %fw_revision.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 5
  %6 = ptrtoint ptr %fw_revision.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %7)
  %cmp14.i = icmp eq i8 %7, 24
  br i1 %cmp14.i, label %if.else, label %wcn36xx_is_fw_version.exit.if.then_crit_edge

wcn36xx_is_fw_version.exit.if.then_crit_edge:     ; preds = %wcn36xx_is_fw_version.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %wcn36xx_is_fw_version.exit.if.then_crit_edge, %land.lhs.true7.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 461, ptr nonnull %bss_v0.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 482) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.wcn36xx_smd_config_bss_v1.exit_crit_edge, label %if.end.i

if.then.wcn36xx_smd_config_bss_v1.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_config_bss_v1.exit

if.end.i:                                         ; preds = %if.then
  %rf_id.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 51
  %9 = ptrtoint ptr %rf_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rf_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13952, i32 %10)
  %cmp.i34 = icmp eq i32 %10, 13952
  %11 = getelementptr inbounds i8, ptr %call7.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 474)
  %..i = select i1 %cmp.i34, i32 1048577, i32 1048576
  %.212.i = select i1 %cmp.i34, i32 482, i32 470
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %..i, ptr %call7.i.i.i, align 8
  %14 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.212.i, ptr %14, align 4
  %sta23.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 41
  %16 = call ptr @memset(ptr %bss_v0.i, i32 0, i32 461)
  call fastcc void @wcn36xx_smd_set_bss_params(ptr noundef %wcn, ptr noundef %vif, ptr noundef %sta, ptr noundef %bssid, i1 noundef zeroext %update, ptr noundef nonnull %bss_v0.i) #10
  call fastcc void @wcn36xx_smd_set_sta_params_v1(ptr noundef %wcn, ptr noundef %vif, ptr noundef %sta, ptr noundef %sta23.i) #10
  %17 = call ptr @memcpy(ptr %11, ptr %bss_v0.i, i32 6)
  %self_mac_addr.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %self_mac_addr28.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %self_mac_addr.i, ptr %self_mac_addr28.i, i32 6)
  %bss_type.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 2
  %19 = ptrtoint ptr %bss_type.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %bss_type.i, align 1
  %bss_type29.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %bss_type29.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bss_type29.i, align 4
  %oper_mode.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 3
  %22 = ptrtoint ptr %oper_mode.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %oper_mode.i, align 1
  %oper_mode30.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %oper_mode30.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %oper_mode30.i, align 8
  %nw_type.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 4
  %25 = ptrtoint ptr %nw_type.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %nw_type.i, align 1
  %nw_type31.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %nw_type31.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %nw_type31.i, align 1
  %short_slot_time_supported.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 5
  %28 = ptrtoint ptr %short_slot_time_supported.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %short_slot_time_supported.i, align 1
  %short_slot_time_supported32.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %short_slot_time_supported32.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %short_slot_time_supported32.i, align 1
  %lla_coexist.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 6
  %31 = ptrtoint ptr %lla_coexist.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lla_coexist.i, align 1
  %lla_coexist33.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %33 = ptrtoint ptr %lla_coexist33.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %lla_coexist33.i, align 2
  %llb_coexist.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 7
  %34 = ptrtoint ptr %llb_coexist.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %llb_coexist.i, align 1
  %llb_coexist34.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 7
  %36 = ptrtoint ptr %llb_coexist34.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %llb_coexist34.i, align 1
  %llg_coexist.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 8
  %37 = ptrtoint ptr %llg_coexist.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %llg_coexist.i, align 1
  %llg_coexist35.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 8
  %39 = ptrtoint ptr %llg_coexist35.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %llg_coexist35.i, align 8
  %ht20_coexist.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 9
  %40 = ptrtoint ptr %ht20_coexist.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ht20_coexist.i, align 1
  %ht20_coexist36.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 9
  %42 = ptrtoint ptr %ht20_coexist36.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %ht20_coexist36.i, align 1
  %lln_non_gf_coexist.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 10
  %43 = ptrtoint ptr %lln_non_gf_coexist.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lln_non_gf_coexist.i, align 1
  %lln_non_gf_coexist37.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 10
  %45 = ptrtoint ptr %lln_non_gf_coexist37.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %lln_non_gf_coexist37.i, align 2
  %lsig_tx_op_protection_full_support.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 11
  %46 = ptrtoint ptr %lsig_tx_op_protection_full_support.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %lsig_tx_op_protection_full_support.i, align 1
  %lsig_tx_op_protection_full_support38.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 11
  %48 = ptrtoint ptr %lsig_tx_op_protection_full_support38.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %lsig_tx_op_protection_full_support38.i, align 1
  %rifs_mode.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 12
  %49 = ptrtoint ptr %rifs_mode.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rifs_mode.i, align 1
  %rifs_mode39.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 12
  %51 = ptrtoint ptr %rifs_mode39.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %rifs_mode39.i, align 4
  %beacon_interval.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 13
  %52 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %beacon_interval.i, align 1
  %beacon_interval40.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 13
  %54 = ptrtoint ptr %beacon_interval40.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %beacon_interval40.i, align 1
  %dtim_period.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 14
  %55 = ptrtoint ptr %dtim_period.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dtim_period.i, align 1
  %dtim_period41.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 14
  %57 = ptrtoint ptr %dtim_period41.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %dtim_period41.i, align 1
  %tx_channel_width_set.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 15
  %58 = ptrtoint ptr %tx_channel_width_set.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tx_channel_width_set.i, align 1
  %tx_channel_width_set42.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 15
  %60 = ptrtoint ptr %tx_channel_width_set42.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %tx_channel_width_set42.i, align 8
  %oper_channel.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 16
  %61 = ptrtoint ptr %oper_channel.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %oper_channel.i, align 1
  %oper_channel43.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 16
  %63 = ptrtoint ptr %oper_channel43.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %oper_channel43.i, align 1
  %64 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wcn, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %65, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp45.i = icmp eq i32 %67, 3
  br i1 %cmp45.i, label %if.then46.i, label %if.else51.i

if.then46.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %chandef44.i = getelementptr inbounds %struct.ieee80211_conf, ptr %65, i32 0, i32 7
  %68 = ptrtoint ptr %chandef44.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chandef44.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %hw_value.i, align 2
  %72 = lshr i16 %71, 8
  %conv50.i = trunc i16 %72 to i8
  br label %if.end54.i

if.else51.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ext_channel52.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 17
  %73 = ptrtoint ptr %ext_channel52.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ext_channel52.i, align 1
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else51.i, %if.then46.i
  %.sink211.i = phi i8 [ %conv50.i, %if.then46.i ], [ %74, %if.else51.i ]
  %75 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 17
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %.sink211.i, ptr %75, align 2
  %reserved.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 18
  %77 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %reserved.i, align 1
  %reserved55.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 18
  %79 = ptrtoint ptr %reserved55.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %reserved55.i, align 1
  %ssid.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 19
  %ssid56.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 20
  %80 = call ptr @memcpy(ptr %ssid.i, ptr %ssid56.i, i32 33)
  %action.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 21
  %81 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %action.i, align 1
  %action57.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 20
  %83 = ptrtoint ptr %action57.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %action57.i, align 1
  %rateset.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 21
  %rateset58.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 22
  %84 = call ptr @memcpy(ptr %rateset.i, ptr %rateset58.i, i32 13)
  %ht.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 23
  %85 = ptrtoint ptr %ht.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ht.i, align 1
  %ht59.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 22
  %87 = ptrtoint ptr %ht59.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %ht59.i, align 1
  %obss_prot_enabled.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 24
  %88 = ptrtoint ptr %obss_prot_enabled.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %obss_prot_enabled.i, align 1
  %obss_prot_enabled60.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 23
  %90 = ptrtoint ptr %obss_prot_enabled60.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %obss_prot_enabled60.i, align 4
  %rmf.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 25
  %91 = ptrtoint ptr %rmf.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rmf.i, align 1
  %rmf61.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 24
  %93 = ptrtoint ptr %rmf61.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %rmf61.i, align 1
  %ht_oper_mode.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 26
  %94 = ptrtoint ptr %ht_oper_mode.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %ht_oper_mode.i, align 1
  %ht_oper_mode62.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 25
  %96 = ptrtoint ptr %ht_oper_mode62.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %ht_oper_mode62.i, align 2
  %dual_cts_protection.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 27
  %97 = ptrtoint ptr %dual_cts_protection.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %dual_cts_protection.i, align 1
  %dual_cts_protection63.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 26
  %99 = ptrtoint ptr %dual_cts_protection63.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %dual_cts_protection63.i, align 2
  %max_probe_resp_retry_limit.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 28
  %100 = ptrtoint ptr %max_probe_resp_retry_limit.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %max_probe_resp_retry_limit.i, align 1
  %max_probe_resp_retry_limit64.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 27
  %102 = ptrtoint ptr %max_probe_resp_retry_limit64.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %max_probe_resp_retry_limit64.i, align 1
  %hidden_ssid.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 29
  %103 = ptrtoint ptr %hidden_ssid.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %hidden_ssid.i, align 1
  %hidden_ssid65.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 28
  %105 = ptrtoint ptr %hidden_ssid65.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %hidden_ssid65.i, align 4
  %proxy_probe_resp.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 30
  %106 = ptrtoint ptr %proxy_probe_resp.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %proxy_probe_resp.i, align 1
  %proxy_probe_resp66.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 29
  %108 = ptrtoint ptr %proxy_probe_resp66.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %proxy_probe_resp66.i, align 1
  %edca_params_valid.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 31
  %109 = ptrtoint ptr %edca_params_valid.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %edca_params_valid.i, align 1
  %edca_params_valid67.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 30
  %111 = ptrtoint ptr %edca_params_valid67.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %edca_params_valid67.i, align 2
  %acbe.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 31
  %acbe68.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 32
  %112 = ptrtoint ptr %acbe68.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %acbe68.i, align 1
  %114 = ptrtoint ptr %acbe.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %113, ptr %acbe.i, align 1
  %acbk.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 32
  %acbk69.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 33
  %115 = ptrtoint ptr %acbk69.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %acbk69.i, align 1
  %117 = ptrtoint ptr %acbk.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %116, ptr %acbk.i, align 1
  %acvi.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 33
  %acvi70.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 34
  %118 = ptrtoint ptr %acvi70.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %acvi70.i, align 1
  %120 = ptrtoint ptr %acvi.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %119, ptr %acvi.i, align 1
  %acvo.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 34
  %acvo71.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 35
  %121 = ptrtoint ptr %acvo71.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %acvo71.i, align 1
  %123 = ptrtoint ptr %acvo.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 %122, ptr %acvo.i, align 1
  %ext_set_sta_key_param_valid.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 36
  %124 = ptrtoint ptr %ext_set_sta_key_param_valid.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ext_set_sta_key_param_valid.i, align 1
  %ext_set_sta_key_param_valid72.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 35
  %126 = ptrtoint ptr %ext_set_sta_key_param_valid72.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %ext_set_sta_key_param_valid72.i, align 1
  %ext_set_sta_key_param.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 36
  %ext_set_sta_key_param73.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 37
  %127 = ptrtoint ptr %ext_set_sta_key_param73.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %ext_set_sta_key_param73.i, align 1
  %129 = ptrtoint ptr %ext_set_sta_key_param.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %ext_set_sta_key_param.i, align 8
  %wcn36xx_hal_persona.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 38
  %130 = ptrtoint ptr %wcn36xx_hal_persona.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %wcn36xx_hal_persona.i, align 1
  %wcn36xx_hal_persona74.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 37
  %132 = ptrtoint ptr %wcn36xx_hal_persona74.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %wcn36xx_hal_persona74.i, align 8
  %spectrum_mgt_enable.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 39
  %133 = ptrtoint ptr %spectrum_mgt_enable.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %spectrum_mgt_enable.i, align 1
  %spectrum_mgt_enable75.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 38
  %135 = ptrtoint ptr %spectrum_mgt_enable75.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %spectrum_mgt_enable75.i, align 1
  %tx_mgmt_power.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 40
  %136 = ptrtoint ptr %tx_mgmt_power.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %tx_mgmt_power.i, align 1
  %tx_mgmt_power76.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 39
  %138 = ptrtoint ptr %tx_mgmt_power76.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %tx_mgmt_power76.i, align 2
  %max_tx_power.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss_v0.i, i32 0, i32 41
  %139 = ptrtoint ptr %max_tx_power.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %max_tx_power.i, align 1
  %max_tx_power77.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 40
  %141 = ptrtoint ptr %max_tx_power77.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %max_tx_power77.i, align 1
  %tobool.not.i.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i.i, label %if.end54.i.wcn36xx_smd_set_bss_vht_params.exit.i_crit_edge, label %land.lhs.true.i.i

if.end54.i.wcn36xx_smd_set_bss_vht_params.exit.i_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_set_bss_vht_params.exit.i

land.lhs.true.i.i:                                ; preds = %if.end54.i
  %vht_cap.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %142 = ptrtoint ptr %vht_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %vht_cap.i.i, align 4, !range !767
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool1.not.i.i = icmp eq i8 %143, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.wcn36xx_smd_set_bss_vht_params.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.wcn36xx_smd_set_bss_vht_params.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_set_bss_vht_params.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %vht_capable.i.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 42
  %144 = ptrtoint ptr %vht_capable.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %vht_capable.i.i, align 8
  br label %wcn36xx_smd_set_bss_vht_params.exit.i

wcn36xx_smd_set_bss_vht_params.exit.i:            ; preds = %if.then.i.i, %land.lhs.true.i.i.wcn36xx_smd_set_bss_vht_params.exit.i_crit_edge, %if.end54.i.wcn36xx_smd_set_bss_vht_params.exit.i_crit_edge
  %hal_buf.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %145 = ptrtoint ptr %hal_buf.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hal_buf.i, align 4
  %147 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %14, align 4
  %149 = call ptr @memset(ptr %146, i32 0, i32 %148)
  %150 = load ptr, ptr %hal_buf.i, align 4
  %151 = call ptr @memcpy(ptr %150, ptr %call7.i.i.i, i32 482)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %152 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %152, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool85.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool85.not.i, label %wcn36xx_smd_set_bss_vht_params.exit.i.do.body102.i_crit_edge, label %do.end89.i

wcn36xx_smd_set_bss_vht_params.exit.i.do.body102.i_crit_edge: ; preds = %wcn36xx_smd_set_bss_vht_params.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body102.i

do.end89.i:                                       ; preds = %wcn36xx_smd_set_bss_vht_params.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %bss_type29.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %bss_type29.i, align 4
  %155 = ptrtoint ptr %oper_mode30.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %oper_mode30.i, align 8
  %conv96.i = zext i8 %156 to i32
  %157 = ptrtoint ptr %nw_type31.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %nw_type31.i, align 1
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.359, ptr noundef %11, ptr noundef %self_mac_addr.i, i32 noundef %154, i32 noundef %conv96.i, i32 noundef %158) #13
  br label %do.body102.i

do.body102.i:                                     ; preds = %do.end89.i, %wcn36xx_smd_set_bss_vht_params.exit.i.do.body102.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %159 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and103.i = and i32 %159, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %do.body102.i.do.end122.i_crit_edge, label %do.end108.i

do.body102.i.do.end122.i_crit_edge:               ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122.i

do.end108.i:                                      ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #12
  %action112.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 41, i32 18
  %160 = ptrtoint ptr %action112.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %action112.i, align 1
  %conv113.i = zext i8 %161 to i32
  %sta_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 41, i32 26
  %162 = ptrtoint ptr %sta_index.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %sta_index.i, align 8
  %conv114.i = zext i8 %163 to i32
  %bssid_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 41, i32 27
  %164 = ptrtoint ptr %bssid_index.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bssid_index.i, align 1
  %conv115.i = zext i8 %165 to i32
  %aid.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 41, i32 1
  %166 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %aid.i, align 2
  %conv116.i = zext i16 %167 to i32
  %type.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 41, i32 2
  %168 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %type.i, align 4
  %conv117.i = zext i8 %169 to i32
  %mac.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg_v1, ptr %call7.i.i.i, i32 0, i32 1, i32 41, i32 4
  %call119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.362, ptr noundef %sta23.i, i32 noundef %conv113.i, i32 noundef %conv114.i, i32 noundef %conv115.i, i32 noundef %conv116.i, i32 noundef %conv117.i, ptr noundef %mac.i) #13
  br label %do.end122.i

do.end122.i:                                      ; preds = %do.end108.i, %do.body102.i.do.end122.i_crit_edge
  %170 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %14, align 4
  %call125.i = call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %171) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %wcn36xx_smd_config_bss_v1.exit

wcn36xx_smd_config_bss_v1.exit:                   ; preds = %do.end122.i, %if.then.wcn36xx_smd_config_bss_v1.exit_crit_edge
  %retval.0.i = phi i32 [ %call125.i, %do.end122.i ], [ -12, %if.then.wcn36xx_smd_config_bss_v1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 461, ptr nonnull %bss_v0.i) #10
  br label %if.end

if.else:                                          ; preds = %wcn36xx_is_fw_version.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %172 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %172, i32 noundef 3520, i32 noundef 469) #14
  %tobool.not.i36 = icmp eq ptr %call7.i.i.i35, null
  br i1 %tobool.not.i36, label %if.else.do.end_crit_edge, label %do.body.i

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.body.i:                                        ; preds = %if.else
  %173 = getelementptr inbounds i8, ptr %call7.i.i.i35, i32 8
  %174 = call ptr @memset(ptr %173, i32 0, i32 461)
  %175 = ptrtoint ptr %call7.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 1048576, ptr %call7.i.i.i35, align 8
  %len.i = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %call7.i.i.i35, i32 0, i32 1
  %176 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 469, ptr %len.i, align 4
  %sta6.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 19
  tail call fastcc void @wcn36xx_smd_set_bss_params(ptr noundef %wcn, ptr noundef %vif, ptr noundef %sta, ptr noundef %bssid, i1 noundef zeroext %update, ptr noundef %173) #10
  tail call fastcc void @wcn36xx_smd_set_sta_params(ptr noundef %wcn, ptr noundef %vif, ptr noundef %sta, ptr noundef %sta6.i) #10
  %hal_buf.i38 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %177 = ptrtoint ptr %hal_buf.i38 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hal_buf.i38, align 4
  %179 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %len.i, align 4
  %181 = call ptr @memset(ptr %178, i32 0, i32 %180)
  %182 = load ptr, ptr %hal_buf.i38, align 4
  %183 = call ptr @memcpy(ptr %182, ptr %call7.i.i.i35, i32 469)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %184 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i39 = and i32 %184, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool15.not.i = icmp eq i32 %and.i39, 0
  br i1 %tobool15.not.i, label %do.body.i.do.body26.i_crit_edge, label %do.end19.i

do.body.i.do.body26.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

do.end19.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %self_mac_addr.i40 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 1
  %bss_type.i41 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 2
  %185 = ptrtoint ptr %bss_type.i41 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %bss_type.i41, align 4
  %oper_mode.i42 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 3
  %187 = ptrtoint ptr %oper_mode.i42 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %oper_mode.i42, align 8
  %conv.i = zext i8 %188 to i32
  %nw_type.i43 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 4
  %189 = ptrtoint ptr %nw_type.i43 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %nw_type.i43, align 1
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.366, ptr noundef %173, ptr noundef %self_mac_addr.i40, i32 noundef %186, i32 noundef %conv.i, i32 noundef %190) #13
  br label %do.body26.i

do.body26.i:                                      ; preds = %do.end19.i, %do.body.i.do.body26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %191 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and27.i = and i32 %191, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.do.end45.i_crit_edge, label %do.end32.i

do.body26.i.do.end45.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45.i

do.end32.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %action.i44 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 19, i32 19
  %192 = ptrtoint ptr %action.i44 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %action.i44, align 1
  %conv36.i = zext i8 %193 to i32
  %sta_index.i45 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 19, i32 27
  %194 = ptrtoint ptr %sta_index.i45 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %sta_index.i45, align 2
  %conv37.i = zext i8 %195 to i32
  %bssid_index.i46 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 19, i32 28
  %196 = ptrtoint ptr %bssid_index.i46 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %bssid_index.i46, align 1
  %conv38.i = zext i8 %197 to i32
  %aid.i47 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 19, i32 1
  %198 = ptrtoint ptr %aid.i47 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %aid.i47, align 2
  %conv39.i = zext i16 %199 to i32
  %type.i48 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 19, i32 2
  %200 = ptrtoint ptr %type.i48 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %type.i48, align 4
  %conv40.i = zext i8 %201 to i32
  %mac.i49 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_req_msg, ptr %call7.i.i.i35, i32 0, i32 1, i32 19, i32 4
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.362, ptr noundef %sta6.i, i32 noundef %conv36.i, i32 noundef %conv37.i, i32 noundef %conv38.i, i32 noundef %conv39.i, i32 noundef %conv40.i, ptr noundef %mac.i49) #13
  br label %do.end45.i

do.end45.i:                                       ; preds = %do.end32.i, %do.body26.i.do.end45.i_crit_edge
  %202 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %len.i, align 4
  %call48.i = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %203) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i35) #10
  br label %if.end

if.end:                                           ; preds = %do.end45.i, %wcn36xx_smd_config_bss_v1.exit
  %ret.0 = phi i32 [ %retval.0.i, %wcn36xx_smd_config_bss_v1.exit ], [ %call48.i, %do.end45.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool4.not = icmp eq i32 %ret.0, 0
  br i1 %tobool4.not, label %if.end7, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.else.do.end_crit_edge
  %ret.061 = phi i32 [ %ret.0, %if.end.do.end_crit_edge ], [ -12, %if.else.do.end_crit_edge ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #13
  br label %out

if.end7:                                          ; preds = %if.end
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %204 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %206 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %hal_rsp_len, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %207)
  %cmp.i51 = icmp ult i32 %207, 29
  br i1 %cmp.i51, label %if.end7.do.end13_crit_edge, label %if.end.i52

if.end7.do.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

if.end.i52:                                       ; preds = %if.end7
  %bss_rsp_params.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1
  %208 = ptrtoint ptr %bss_rsp_params.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %bss_rsp_params.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp1.not.i = icmp eq i32 %209, 0
  br i1 %cmp1.not.i, label %do.body6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.370, i32 noundef %209) #13
  br label %do.end13

do.body6.i:                                       ; preds = %if.end.i52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %210 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i53 = and i32 %210, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %do.body6.i.do.end22.i_crit_edge, label %do.end10.i

do.body6.i.do.end22.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end10.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  %bss_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 1
  %211 = ptrtoint ptr %bss_index.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %bss_index.i, align 1
  %conv.i55 = zext i8 %212 to i32
  %dpu_desc_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 2
  %213 = ptrtoint ptr %dpu_desc_index.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %dpu_desc_index.i, align 1
  %conv13.i = zext i8 %214 to i32
  %bss_sta_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 8
  %215 = ptrtoint ptr %bss_sta_index.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %bss_sta_index.i, align 1
  %conv14.i = zext i8 %216 to i32
  %bss_self_sta_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 9
  %217 = ptrtoint ptr %bss_self_sta_index.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %bss_self_sta_index.i, align 1
  %conv15.i = zext i8 %218 to i32
  %bss_bcast_sta_idx.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 10
  %219 = ptrtoint ptr %bss_bcast_sta_idx.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %bss_bcast_sta_idx.i, align 1
  %conv16.i = zext i8 %220 to i32
  %mac.i56 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 11
  %tx_mgmt_power.i57 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 12
  %221 = ptrtoint ptr %tx_mgmt_power.i57 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %tx_mgmt_power.i57, align 1
  %conv17.i = sext i8 %222 to i32
  %ucast_dpu_signature.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 3
  %223 = ptrtoint ptr %ucast_dpu_signature.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %ucast_dpu_signature.i, align 1
  %conv18.i = zext i8 %224 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef 0, i32 noundef %conv.i55, i32 noundef %conv13.i, i32 noundef %conv14.i, i32 noundef %conv15.i, i32 noundef %conv16.i, ptr noundef %mac.i56, i32 noundef %conv17.i, i32 noundef %conv18.i) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end10.i, %do.body6.i.do.end22.i_crit_edge
  %bss_index23.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 1
  %225 = ptrtoint ptr %bss_index23.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %bss_index23.i, align 1
  %bss_index24.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %227 = ptrtoint ptr %bss_index24.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %bss_index24.i, align 4
  %tobool25.not.i = icmp eq ptr %sta, null
  br i1 %tobool25.not.i, label %do.end22.i.wcn36xx_smd_config_bss_rsp.exit_crit_edge, label %if.then26.i

do.end22.i.wcn36xx_smd_config_bss_rsp.exit_crit_edge: ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_config_bss_rsp.exit

if.then26.i:                                      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv.i1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %bss_sta_index28.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 8
  %228 = ptrtoint ptr %bss_sta_index28.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %bss_sta_index28.i, align 1
  %bss_sta_index29.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i1.i, i32 0, i32 7
  %230 = ptrtoint ptr %bss_sta_index29.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %bss_sta_index29.i, align 1
  %dpu_desc_index30.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 2
  %231 = ptrtoint ptr %dpu_desc_index30.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %dpu_desc_index30.i, align 1
  %bss_dpu_desc_index.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 5
  %233 = ptrtoint ptr %bss_dpu_desc_index.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %bss_dpu_desc_index.i, align 4
  br label %wcn36xx_smd_config_bss_rsp.exit

wcn36xx_smd_config_bss_rsp.exit:                  ; preds = %if.then26.i, %do.end22.i.wcn36xx_smd_config_bss_rsp.exit_crit_edge
  %ucast_dpu_signature32.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, ptr %205, i32 0, i32 1, i32 3
  %234 = ptrtoint ptr %ucast_dpu_signature32.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %ucast_dpu_signature32.i, align 1
  %self_ucast_dpu_sign.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %drv_priv.i.i, i32 0, i32 11
  %236 = ptrtoint ptr %self_ucast_dpu_sign.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %self_ucast_dpu_sign.i, align 1
  br label %out

do.end13:                                         ; preds = %do.end.i, %if.end7.do.end13_crit_edge
  %retval.0.i58.ph = phi i32 [ -22, %if.end7.do.end13_crit_edge ], [ -5, %do.end.i ]
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %retval.0.i58.ph) #13
  br label %out

out:                                              ; preds = %do.end13, %wcn36xx_smd_config_bss_rsp.exit, %do.end
  %ret.1 = phi i32 [ %ret.061, %do.end ], [ %retval.0.i58.ph, %do.end13 ], [ 0, %wcn36xx_smd_config_bss_rsp.exit ]
  call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_delete_bss(ptr noundef %wcn, ptr nocapture noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %0 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_index, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %entry.out_crit_edge, label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %entry
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %2 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 9)
  %5 = load ptr, ptr %hal_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1179648, ptr %5, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 4
  %7 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 9, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 8
  %8 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %9 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end25_crit_edge, label %do.end19

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

do.end19:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %conv) #13
  br label %do.end25

do.end25:                                         ; preds = %do.end19, %do.body.do.end25_crit_edge
  %call28 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #13
  br label %out

if.end36:                                         ; preds = %do.end25
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %10 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp.i = icmp ult i32 %11, 12
  br i1 %cmp.i, label %if.end36.do.end43_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end36.do.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end36
  %12 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool39.not = icmp eq i32 %15, 0
  br i1 %tobool39.not, label %if.end46, label %wcn36xx_smd_rsp_status_check.exit.do.end43_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end43_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

do.end43:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end43_crit_edge, %if.end36.do.end43_crit_edge
  %retval.0.i67 = phi i32 [ %15, %wcn36xx_smd_rsp_status_check.exit.do.end43_crit_edge ], [ -5, %if.end36.do.end43_crit_edge ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %retval.0.i67) #13
  br label %out

if.end46:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %bss_index to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %bss_index, align 4
  br label %out

out:                                              ; preds = %if.end46, %do.end43, %do.end33, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call28, %do.end33 ], [ %retval.0.i67, %do.end43 ], [ 0, %if.end46 ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_send_beacon(ptr noundef %wcn, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %skb_beacon, i16 noundef zeroext %tim_off, i16 noundef zeroext %p2p_off) local_unnamed_addr #0 align 64 {
entry:
  %msg_body = alloca %struct.wcn36xx_hal_send_beacon_req_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 408, ptr nonnull %msg_body) #10
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %0 = getelementptr inbounds i8, ptr %msg_body, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 392)
  %2 = ptrtoint ptr %msg_body to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4128768, ptr %msg_body, align 4
  %len = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %msg_body, i32 0, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 408, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb_beacon, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %conv = zext i16 %tim_off to i32
  %add = add nuw nsw i32 %conv, 1
  %arrayidx = getelementptr i8, ptr %5, i32 %add
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %7 to i32
  %sub = add nsw i32 %conv6, -3
  %sub7 = sub nsw i32 9, %conv6
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp = icmp eq i32 %9, 7
  %spec.store.select = select i1 %cmp, i32 0, i32 %sub7
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %skb_beacon, i32 0, i32 6
  %10 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len9, align 4
  %add10 = add i32 %spec.store.select, %11
  %beacon_length = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, ptr %msg_body, i32 0, i32 2
  %12 = ptrtoint ptr %beacon_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add10, ptr %beacon_length, align 4
  %add12 = add i32 %add10, 6
  %beacon_length6 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, ptr %msg_body, i32 0, i32 1
  %13 = ptrtoint ptr %beacon_length6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add12, ptr %beacon_length6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %add10)
  %cmp14 = icmp ugt i32 %add10, 384
  br i1 %cmp14, label %do.end19, label %if.end21

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %add10) #13
  br label %out

if.end21:                                         ; preds = %entry
  %beacon = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, ptr %msg_body, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %beacon, ptr %5, i32 %11)
  %bssid = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, ptr %msg_body, i32 0, i32 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %bssid, ptr %addr, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp26 = icmp sgt i32 %spec.store.select, 0
  br i1 %cmp26, label %do.body29, label %if.end21.if.end67_crit_edge

if.end21.if.end67_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.body29:                                        ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %16 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body29.do.end38_crit_edge, label %do.end33

do.body29.do.end38_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

do.end33:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %spec.store.select, i32 noundef %sub) #13
  br label %do.end38

do.end38:                                         ; preds = %do.end33, %do.body29.do.end38_crit_edge
  %add41 = add nuw nsw i32 %conv, 5
  %add42 = add nsw i32 %add41, %sub
  %add43 = add nuw nsw i32 %add42, %spec.store.select
  %arrayidx44 = getelementptr %struct.wcn36xx_hal_send_beacon_req_msg, ptr %msg_body, i32 0, i32 3, i32 %add43
  %arrayidx49 = getelementptr %struct.wcn36xx_hal_send_beacon_req_msg, ptr %msg_body, i32 0, i32 3, i32 %add42
  %17 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len9, align 4
  %sub54 = sub i32 %18, %add42
  %19 = call ptr @memmove(ptr %arrayidx44, ptr %arrayidx49, i32 %sub54)
  %20 = call ptr @memset(ptr %arrayidx49, i32 0, i32 %spec.store.select)
  %arrayidx63 = getelementptr %struct.wcn36xx_hal_send_beacon_req_msg, ptr %msg_body, i32 0, i32 3, i32 %add
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63, align 1
  %23 = trunc i32 %spec.store.select to i8
  %conv66 = add i8 %22, %23
  store i8 %conv66, ptr %arrayidx63, align 1
  br label %if.end67

if.end67:                                         ; preds = %do.end38, %if.end21.if.end67_crit_edge
  %24 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp69 = icmp eq i32 %25, 7
  %add73 = add nuw nsw i32 %conv, 4
  %spec.select = select i1 %cmp69, i32 256, i32 %add73
  %26 = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, ptr %msg_body, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %spec.select, ptr %26, align 2
  %p2p_ie_offset = getelementptr inbounds %struct.wcn36xx_hal_send_beacon_req_msg, ptr %msg_body, i32 0, i32 6
  %28 = ptrtoint ptr %p2p_ie_offset to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %p2p_off, ptr %p2p_ie_offset, align 2
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %29 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hal_buf, align 4
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %33 = call ptr @memset(ptr %30, i32 0, i32 %32)
  %34 = load ptr, ptr %hal_buf, align 4
  %35 = call ptr @memcpy(ptr %34, ptr %msg_body, i32 408)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %36 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and83 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end67.do.end94_crit_edge, label %do.end88

if.end67.do.end94_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end94

do.end88:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %beacon_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %beacon_length, align 4
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %38) #13
  br label %do.end94

do.end94:                                         ; preds = %do.end88, %if.end67.do.end94_crit_edge
  %call97 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end105, label %do.end102

do.end102:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #12
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #13
  br label %out

if.end105:                                        ; preds = %do.end94
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %39 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %40)
  %cmp.i = icmp ult i32 %40, 12
  br i1 %cmp.i, label %if.end105.do.end112_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end105.do.end112_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end112

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end105
  %41 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 8
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool108.not = icmp eq i32 %44, 0
  br i1 %tobool108.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end112_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end112_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end112

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end112:                                        ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end112_crit_edge, %if.end105.do.end112_crit_edge
  %retval.0.i150 = phi i32 [ %44, %wcn36xx_smd_rsp_status_check.exit.do.end112_crit_edge ], [ -5, %if.end105.do.end112_crit_edge ]
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef %retval.0.i150) #13
  br label %out

out:                                              ; preds = %do.end112, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end102, %do.end19
  %ret.0 = phi i32 [ -12, %do.end19 ], [ %call97, %do.end102 ], [ %retval.0.i150, %do.end112 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 408, ptr nonnull %msg_body) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_update_proberesp_tmpl(ptr noundef %wcn, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.wcn36xx_hal_send_probe_resp_req_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg) #10
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 428)
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4456448, ptr %msg, align 4
  %len = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 436, ptr %len, align 4
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %5)
  %cmp = icmp ugt i32 %5, 384
  br i1 %cmp, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %5) #13
  br label %out

if.end:                                           ; preds = %entry
  %probe_resp_template_len = getelementptr inbounds %struct.wcn36xx_hal_send_probe_resp_req_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %probe_resp_template_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %probe_resp_template_len, align 4
  %probe_resp_template = getelementptr inbounds %struct.wcn36xx_hal_send_probe_resp_req_msg, ptr %msg, i32 0, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = call ptr @memcpy(ptr %probe_resp_template, ptr %8, i32 %5)
  %bssid = getelementptr inbounds %struct.wcn36xx_hal_send_probe_resp_req_msg, ptr %msg, i32 0, i32 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %bssid, ptr %addr, i32 6)
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %11 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hal_buf, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 436)
  %14 = load ptr, ptr %hal_buf, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %msg, i32 436)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %16 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end32_crit_edge, label %do.end24

if.end.do.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %probe_resp_template_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %probe_resp_template_len, align 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %18, ptr noundef %bssid) #13
  br label %do.end32

do.end32:                                         ; preds = %do.end24, %if.end.do.end32_crit_edge
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %call35 = call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #13
  br label %out

if.end43:                                         ; preds = %do.end32
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %21 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %22)
  %cmp.i = icmp ult i32 %22, 12
  br i1 %cmp.i, label %if.end43.do.end50_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end43.do.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end43
  %23 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 8
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool46.not = icmp eq i32 %26, 0
  br i1 %tobool46.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end50_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end50_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end50:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end50_crit_edge, %if.end43.do.end50_crit_edge
  %retval.0.i70 = phi i32 [ %26, %wcn36xx_smd_rsp_status_check.exit.do.end50_crit_edge ], [ -5, %if.end43.do.end50_crit_edge ]
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, i32 noundef %retval.0.i70) #13
  br label %out

out:                                              ; preds = %do.end50, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end40, %do.end9
  %ret.0 = phi i32 [ -7, %do.end9 ], [ %call35, %do.end40 ], [ %retval.0.i70, %do.end50 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_set_stakey(ptr noundef %wcn, i32 noundef %enc_type, i8 noundef zeroext %keyidx, i8 noundef zeroext %keylen, ptr nocapture noundef readonly %key, i8 noundef zeroext %sta_index) local_unnamed_addr #0 align 64 {
entry:
  %msg_body.sroa.21 = alloca [204 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %msg_body.sroa.21)
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %0 = call ptr @memset(ptr %msg_body.sroa.21, i32 0, i32 203)
  %conv = zext i8 %sta_index to i16
  %enc_type.off = add i32 %enc_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %enc_type.off)
  %switch = icmp ult i32 %enc_type.off, 2
  br i1 %switch, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv25 = zext i8 %keylen to i16
  %conv33 = zext i8 %keylen to i32
  %1 = call ptr @memcpy(ptr %msg_body.sroa.21, ptr %key, i32 %conv33)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %msg_body.sroa.15.0 = phi i8 [ 0, %if.else ], [ %keyidx, %entry.if.end_crit_edge ]
  %msg_body.sroa.16.0 = phi i8 [ %keyidx, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %msg_body.sroa.17.0 = phi i8 [ 1, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %msg_body.sroa.18.0 = phi i32 [ 2, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %msg_body.sroa.20.0 = phi i16 [ %conv25, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %msg_body.sroa.21.203.single_tid_rc.sroa_idx = getelementptr inbounds i8, ptr %msg_body.sroa.21, i32 203
  %2 = ptrtoint ptr %msg_body.sroa.21.203.single_tid_rc.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %msg_body.sroa.21.203.single_tid_rc.sroa_idx, align 1
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %3 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hal_buf, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 248)
  %6 = load ptr, ptr %hal_buf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1703936, ptr %6, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 4
  %8 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 248, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 8
  %9 = ptrtoint ptr %msg_body.sroa.12.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv, ptr %msg_body.sroa.12.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 10
  %10 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %enc_type, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 14
  %11 = ptrtoint ptr %msg_body.sroa.14.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %msg_body.sroa.14.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 18
  %12 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %msg_body.sroa.15.0, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 19
  %13 = ptrtoint ptr %msg_body.sroa.16.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %msg_body.sroa.16.0, ptr %msg_body.sroa.16.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 20
  %14 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %msg_body.sroa.17.0, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 21
  %15 = ptrtoint ptr %msg_body.sroa.18.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %msg_body.sroa.18.0, ptr %msg_body.sroa.18.0..sroa_idx, align 1
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 25
  %msg_body.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 42
  %16 = call ptr @memset(ptr %msg_body.sroa.19.0..sroa_idx, i32 0, i32 17)
  %17 = ptrtoint ptr %msg_body.sroa.20.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %msg_body.sroa.20.0, ptr %msg_body.sroa.20.0..sroa_idx, align 1
  %msg_body.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 44
  %18 = call ptr @memcpy(ptr %msg_body.sroa.21.0..sroa_idx, ptr %msg_body.sroa.21, i32 204)
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #13
  br label %out

if.end48:                                         ; preds = %if.end
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %19 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %20)
  %cmp.i = icmp ult i32 %20, 12
  br i1 %cmp.i, label %if.end48.do.end55_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end48.do.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end48
  %21 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 8
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool51.not = icmp eq i32 %24, 0
  br i1 %tobool51.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end55_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end55_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end55:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end55_crit_edge, %if.end48.do.end55_crit_edge
  %retval.0.i93 = phi i32 [ %24, %wcn36xx_smd_rsp_status_check.exit.do.end55_crit_edge ], [ -5, %if.end48.do.end55_crit_edge ]
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %retval.0.i93) #13
  br label %out

out:                                              ; preds = %do.end55, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end46
  %ret.0 = phi i32 [ %call, %do.end46 ], [ %retval.0.i93, %do.end55 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %msg_body.sroa.21)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_set_bsskey(ptr noundef %wcn, i32 noundef %enc_type, i8 noundef zeroext %bssidx, i8 noundef zeroext %keyidx, i8 noundef zeroext %keylen, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  %msg_body.sroa.20 = alloca [204 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %msg_body.sroa.20)
  %0 = call ptr @memset(ptr %msg_body.sroa.20, i32 255, i32 204)
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %conv = zext i8 %keylen to i16
  %conv18 = zext i8 %keylen to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -53, i8 %keylen)
  %1 = icmp ugt i8 %keylen, -53
  %2 = sub nsw i32 204, %conv18
  %3 = select i1 %1, i32 0, i32 %2
  %4 = getelementptr i8, ptr %msg_body.sroa.20, i32 %conv18
  %5 = call ptr @memset(ptr %4, i32 0, i32 %3)
  %6 = call ptr @memcpy(ptr %msg_body.sroa.20, ptr %key, i32 %conv18)
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %7 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hal_buf, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 243)
  %10 = load ptr, ptr %hal_buf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 1572864, ptr %10, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 4
  %12 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 243, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 8
  %13 = ptrtoint ptr %msg_body.sroa.12.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bssidx, ptr %msg_body.sroa.12.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 9
  %14 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %enc_type, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 13
  %15 = ptrtoint ptr %msg_body.sroa.14.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %msg_body.sroa.14.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 14
  %16 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %keyidx, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 15
  %17 = ptrtoint ptr %msg_body.sroa.16.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %msg_body.sroa.16.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 16
  %18 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 1, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 20
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 37
  %19 = call ptr @memset(ptr %msg_body.sroa.18.0..sroa_idx, i32 0, i32 17)
  %20 = ptrtoint ptr %msg_body.sroa.19.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %conv, ptr %msg_body.sroa.19.0..sroa_idx, align 1
  %msg_body.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 39
  %21 = call ptr @memcpy(ptr %msg_body.sroa.20.0..sroa_idx, ptr %msg_body.sroa.20, i32 204)
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 243)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end29

do.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %22 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %23)
  %cmp.i = icmp ult i32 %23, 12
  br i1 %cmp.i, label %if.end.do.end37_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %24 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 8
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool33.not = icmp eq i32 %27, 0
  br i1 %tobool33.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end37:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge, %if.end.do.end37_crit_edge
  %retval.0.i70 = phi i32 [ %27, %wcn36xx_smd_rsp_status_check.exit.do.end37_crit_edge ], [ -5, %if.end.do.end37_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %retval.0.i70) #13
  br label %out

out:                                              ; preds = %do.end37, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end29
  %ret.0 = phi i32 [ %call, %do.end29 ], [ %retval.0.i70, %do.end37 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %msg_body.sroa.20)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_remove_stakey(ptr noundef %wcn, i32 noundef %enc_type, i8 noundef zeroext %keyidx, i8 noundef zeroext %sta_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %conv = zext i8 %sta_index to i16
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1966080, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 16, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %conv, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 10
  %7 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %enc_type, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 14
  %8 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %keyidx, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 15
  %9 = ptrtoint ptr %msg_body.sroa.19.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %msg_body.sroa.19.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end17

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %10 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp.i = icmp ult i32 %11, 12
  br i1 %cmp.i, label %if.end.do.end25_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %12 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end25:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge, %if.end.do.end25_crit_edge
  %retval.0.i46 = phi i32 [ %15, %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge ], [ -5, %if.end.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %retval.0.i46) #13
  br label %out

out:                                              ; preds = %do.end25, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end17
  %ret.0 = phi i32 [ %call, %do.end17 ], [ %retval.0.i46, %do.end25 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_remove_bsskey(ptr noundef %wcn, i32 noundef %enc_type, i8 noundef zeroext %bssidx, i8 noundef zeroext %keyidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 18)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1835008, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 18, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bssidx, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 9
  %7 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %enc_type, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 13
  %8 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %keyidx, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 14
  %9 = ptrtoint ptr %msg_body.sroa.19.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %msg_body.sroa.19.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end17

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %10 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp.i = icmp ult i32 %11, 12
  br i1 %cmp.i, label %if.end.do.end25_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %12 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end25:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge, %if.end.do.end25_crit_edge
  %retval.0.i46 = phi i32 [ %15, %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge ], [ -5, %if.end.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %retval.0.i46) #13
  br label %out

out:                                              ; preds = %do.end25, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end17
  %ret.0 = phi i32 [ %call, %do.end17 ], [ %retval.0.i46, %do.end25 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_enter_bmps(ptr noundef %wcn, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %0 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_index, align 4
  %sync_tsf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 21
  %2 = ptrtoint ptr %sync_tsf to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sync_tsf, align 8
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %4 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dtim_period, align 8
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %6 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hal_buf, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 28)
  %9 = load ptr, ptr %hal_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 5111808, ptr %9, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 4
  %11 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 28, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 8
  %12 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %1, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 9
  %13 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %3, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 17
  %14 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 18
  %15 = ptrtoint ptr %msg_body.sroa.18.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %5, ptr %msg_body.sroa.18.0..sroa_idx, align 1
  %msg_body.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 19
  %16 = ptrtoint ptr %msg_body.sroa.20.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %msg_body.sroa.20.0..sroa_idx, align 1
  %msg_body.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 23
  %17 = ptrtoint ptr %msg_body.sroa.21.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %msg_body.sroa.21.0..sroa_idx, align 1
  %msg_body.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %9, i32 27
  %18 = ptrtoint ptr %msg_body.sroa.22.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %msg_body.sroa.22.0..sroa_idx, align 1
  %call16 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end, label %do.end19

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %19 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %20)
  %cmp.i = icmp ult i32 %20, 12
  br i1 %cmp.i, label %if.end.do.end27_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %21 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 8
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  br i1 %tobool23.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end27_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end27_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end27:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end27_crit_edge, %if.end.do.end27_crit_edge
  %retval.0.i50 = phi i32 [ %24, %wcn36xx_smd_rsp_status_check.exit.do.end27_crit_edge ], [ -5, %if.end.do.end27_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef %retval.0.i50) #13
  br label %out

out:                                              ; preds = %do.end27, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end19
  %ret.0 = phi i32 [ %call16, %do.end19 ], [ %retval.0.i50, %do.end27 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_exit_bmps(ptr noundef %wcn, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %0 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_index, align 4
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %2 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 10)
  %5 = load ptr, ptr %hal_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 5177344, ptr %5, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 4
  %7 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 10, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 8
  %8 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 9
  %9 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %1, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %call15 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end, label %do.end18

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %10 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp.i = icmp ult i32 %11, 12
  br i1 %cmp.i, label %if.end.do.end26_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %12 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end26_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end26_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end26:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end26_crit_edge, %if.end.do.end26_crit_edge
  %retval.0.i47 = phi i32 [ %15, %wcn36xx_smd_rsp_status_check.exit.do.end26_crit_edge ], [ -5, %if.end.do.end26_crit_edge ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, i32 noundef %retval.0.i47) #13
  br label %out

out:                                              ; preds = %do.end26, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end18
  %ret.0 = phi i32 [ %call15, %do.end18 ], [ %retval.0.i47, %do.end26 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_enter_imps(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 4980736, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 8, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end16

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %6 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp.i = icmp ult i32 %7, 12
  br i1 %cmp.i, label %if.end.do.end24_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %8 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  br i1 %tobool20.not, label %do.body28, label %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end24:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge, %if.end.do.end24_crit_edge
  %retval.0.i54 = phi i32 [ %11, %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge ], [ -5, %if.end.do.end24_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, i32 noundef %retval.0.i54) #13
  br label %out

do.body28:                                        ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %12 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %do.body28.out_crit_edge, label %do.end33

do.body28.out_crit_edge:                          ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end33:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211) #13
  br label %out

out:                                              ; preds = %do.end33, %do.body28.out_crit_edge, %do.end24, %do.end16
  %ret.0 = phi i32 [ %call, %do.end16 ], [ %retval.0.i54, %do.end24 ], [ 0, %do.end33 ], [ 0, %do.body28.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_exit_imps(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 5046272, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 8, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end16

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %6 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp.i = icmp ult i32 %7, 12
  br i1 %cmp.i, label %if.end.do.end24_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %8 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  br i1 %tobool20.not, label %do.body28, label %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end24:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge, %if.end.do.end24_crit_edge
  %retval.0.i54 = phi i32 [ %11, %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge ], [ -5, %if.end.do.end24_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %retval.0.i54) #13
  br label %out

do.body28:                                        ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %12 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %do.body28.out_crit_edge, label %do.end33

do.body28.out_crit_edge:                          ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end33:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219) #13
  br label %out

out:                                              ; preds = %do.end33, %do.body28.out_crit_edge, %do.end24, %do.end16
  %ret.0 = phi i32 [ %call, %do.end16 ], [ %retval.0.i54, %do.end24 ], [ 0, %do.end33 ], [ 0, %do.body28.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_set_power_params(ptr noundef %wcn, i1 noundef zeroext %ignore_dtim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %spec.select = zext i1 %ignore_dtim to i32
  %spec.select35 = select i1 %ignore_dtim, i32 2, i32 0
  %0 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wcn, align 4
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %listen_interval, align 4
  %conv = zext i16 %3 to i32
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %4 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hal_buf, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 32)
  %7 = load ptr, ptr %hal_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 10878976, ptr %7, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %7, i32 4
  %9 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 32, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %7, i32 8
  %10 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %spec.select, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %7, i32 12
  %11 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %spec.select35, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %7, i32 16
  %12 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %conv, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %7, i32 20
  %13 = ptrtoint ptr %msg_body.sroa.19.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %msg_body.sroa.19.0..sroa_idx, align 1
  %msg_body.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %7, i32 24
  %14 = ptrtoint ptr %msg_body.sroa.20.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %msg_body.sroa.20.0..sroa_idx, align 1
  %msg_body.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %7, i32 28
  %15 = ptrtoint ptr %msg_body.sroa.21.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %msg_body.sroa.21.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %entry.out_crit_edge, label %do.end20

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221) #13
  br label %out

out:                                              ; preds = %do.end20, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_keep_alive_req(ptr noundef %wcn, ptr nocapture noundef readonly %vif, i32 noundef %packet_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %0 = zext i32 %packet_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %packet_type, label %do.end13 [
    i32 1, label %if.then
    i32 2, label %entry.do.body16_crit_edge
  ]

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %1 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bss_index, align 4
  br label %do.body16

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, i32 noundef %packet_type) #13
  br label %out

do.body16:                                        ; preds = %if.then, %entry.do.body16_crit_edge
  %msg_body.sroa.15.0 = phi i32 [ 30, %if.then ], [ 0, %entry.do.body16_crit_edge ]
  %msg_body.sroa.31.0 = phi i8 [ %2, %if.then ], [ 0, %entry.do.body16_crit_edge ]
  %msg_body.sroa.13.0 = phi i8 [ 1, %if.then ], [ 0, %entry.do.body16_crit_edge ]
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %3 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hal_buf, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 28)
  %6 = load ptr, ptr %hal_buf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 9502720, ptr %6, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 4
  %8 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 28, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 8
  %9 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %msg_body.sroa.13.0, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 9
  %10 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %msg_body.sroa.15.0, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 13
  %msg_body.sroa.31.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 27
  %11 = call ptr @memset(ptr %msg_body.sroa.17.0..sroa_idx, i32 0, i32 14)
  %12 = ptrtoint ptr %msg_body.sroa.31.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %msg_body.sroa.31.0, ptr %msg_body.sroa.31.0..sroa_idx, align 1
  %call24 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226) #13
  br label %out

if.end31:                                         ; preds = %do.body16
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %13 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %cmp.i = icmp ult i32 %14, 12
  br i1 %cmp.i, label %if.end31.do.end38_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end31.do.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end31
  %15 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 8
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool34.not = icmp eq i32 %18, 0
  br i1 %tobool34.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end38_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end38_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end38:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end38_crit_edge, %if.end31.do.end38_crit_edge
  %retval.0.i61 = phi i32 [ %18, %wcn36xx_smd_rsp_status_check.exit.do.end38_crit_edge ], [ -5, %if.end31.do.end38_crit_edge ]
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, i32 noundef %retval.0.i61) #13
  br label %out

out:                                              ; preds = %do.end38, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end28, %do.end13
  %ret.0 = phi i32 [ %call24, %do.end28 ], [ %retval.0.i61, %do.end38 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ], [ -22, %do.end13 ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_dump_cmd_req(ptr noundef %wcn, i32 noundef %arg1, i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 28)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 7929856, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 28, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %arg1, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 12
  %7 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %arg2, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 16
  %8 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %arg3, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 20
  %9 = ptrtoint ptr %msg_body.sroa.19.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %arg4, ptr %msg_body.sroa.19.0..sroa_idx, align 1
  %msg_body.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 24
  %10 = ptrtoint ptr %msg_body.sroa.21.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %arg5, ptr %msg_body.sroa.21.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end21

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %11 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %cmp.i = icmp ult i32 %12, 12
  br i1 %cmp.i, label %if.end.do.end29_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %13 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end29_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end29_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end29:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end29_crit_edge, %if.end.do.end29_crit_edge
  %retval.0.i50 = phi i32 [ %16, %wcn36xx_smd_rsp_status_check.exit.do.end29_crit_edge ], [ -5, %if.end.do.end29_crit_edge ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, i32 noundef %retval.0.i50) #13
  br label %out

out:                                              ; preds = %do.end29, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end21
  %ret.0 = phi i32 [ %call, %do.end21 ], [ %retval.0.i50, %do.end29 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_feat_caps(ptr nocapture noundef %bitmap, i32 noundef %cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cap)
  %cmp1 = icmp ugt i32 %cap, 127
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, i32 noundef %cap) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div7 = lshr i32 %cap, 5
  %rem = and i32 %cap, 31
  %shl = shl nuw i32 1, %rem
  %arrayidx = getelementptr i32, ptr %bitmap, i32 %div7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %or = or i32 %1, %shl
  store i32 %or, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_feat_caps(ptr nocapture noundef readonly %bitmap, i32 noundef %cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cap)
  %cmp1 = icmp ugt i32 %cap, 127
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, i32 noundef %cap) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div7 = lshr i32 %cap, 5
  %rem = and i32 %cap, 31
  %arrayidx = getelementptr i32, ptr %bitmap, i32 %div7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = lshr i32 %1, %rem
  %3 = and i32 %2, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_feat_caps(ptr nocapture noundef %bitmap, i32 noundef %cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cap)
  %cmp1 = icmp ugt i32 %cap, 127
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, i32 noundef %cap) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div7 = lshr i32 %cap, 5
  %rem = and i32 %cap, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %arrayidx = getelementptr i32, ptr %bitmap, i32 %div7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_feature_caps_exchange(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %rf_id = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 51
  %0 = ptrtoint ptr %rf_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13952, i32 %1)
  %cmp = icmp eq i32 %1, 13952
  %spec.select = select i1 %cmp, i32 8196, i32 8192
  %spec.select64 = select i1 %cmp, i32 1073741856, i32 0
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %2 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 24)
  %5 = load ptr, ptr %hal_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 11468800, ptr %5, align 1
  %msg_body.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 4
  %7 = ptrtoint ptr %msg_body.sroa.6.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 24, ptr %msg_body.sroa.6.0..sroa_idx, align 1
  %msg_body.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 8
  %8 = ptrtoint ptr %msg_body.sroa.10.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %spec.select, ptr %msg_body.sroa.10.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 12
  %9 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %spec.select64, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 16
  %10 = ptrtoint ptr %msg_body.sroa.20.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %msg_body.sroa.20.0..sroa_idx, align 1
  %msg_body.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 20
  %11 = ptrtoint ptr %msg_body.sroa.21.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %msg_body.sroa.21.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240) #13
  br label %out

if.end25:                                         ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %12 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %13)
  %cmp26.not = icmp eq i32 %13, 24
  br i1 %cmp26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243) #13
  br label %out

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hal_buf, align 4
  %arrayidx = getelementptr %struct.wcn36xx_hal_feat_caps_msg, ptr %15, i32 0, i32 1, i32 0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx, align 1
  %arrayidx37 = getelementptr %struct.wcn36xx, ptr %wcn, i32 0, i32 9, i32 0
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx37, align 4
  %arrayidx.1 = getelementptr %struct.wcn36xx_hal_feat_caps_msg, ptr %15, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx.1, align 1
  %arrayidx37.1 = getelementptr %struct.wcn36xx, ptr %wcn, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx37.1, align 4
  %arrayidx.2 = getelementptr %struct.wcn36xx_hal_feat_caps_msg, ptr %15, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx.2, align 1
  %arrayidx37.2 = getelementptr %struct.wcn36xx, ptr %wcn, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx37.2, align 4
  %arrayidx.3 = getelementptr %struct.wcn36xx_hal_feat_caps_msg, ptr %15, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx.3, align 1
  %arrayidx37.3 = getelementptr %struct.wcn36xx, ptr %wcn, i32 0, i32 9, i32 3
  %27 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx37.3, align 4
  br label %out

out:                                              ; preds = %if.end33, %do.end30, %do.end23
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_add_ba_session(ptr noundef %wcn, ptr nocapture noundef readonly %sta, i16 noundef zeroext %tid, ptr noundef readonly %ssn, i8 noundef zeroext %direction, i8 noundef zeroext %sta_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %conv = zext i8 %sta_index to i16
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %msg_body.sroa.15.10.copyload = load i8, ptr %addr, align 4
  %msg_body.sroa.17.10.arraydecay.sroa_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %msg_body.sroa.17.10.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %msg_body.sroa.17.10.copyload = load i8, ptr %msg_body.sroa.17.10.arraydecay.sroa_idx, align 1
  %msg_body.sroa.18.10.arraydecay.sroa_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %msg_body.sroa.18.10.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %msg_body.sroa.18.10.copyload = load i8, ptr %msg_body.sroa.18.10.arraydecay.sroa_idx, align 2
  %msg_body.sroa.19.10.arraydecay.sroa_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %msg_body.sroa.19.10.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %msg_body.sroa.19.10.copyload = load i8, ptr %msg_body.sroa.19.10.arraydecay.sroa_idx, align 1
  %msg_body.sroa.20.10.arraydecay.sroa_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %msg_body.sroa.20.10.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %msg_body.sroa.20.10.copyload = load i8, ptr %msg_body.sroa.20.10.arraydecay.sroa_idx, align 4
  %msg_body.sroa.21.10.arraydecay.sroa_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %msg_body.sroa.21.10.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %msg_body.sroa.21.10.copyload = load i8, ptr %msg_body.sroa.21.10.arraydecay.sroa_idx, align 1
  %conv7 = trunc i16 %tid to i8
  %tobool.not = icmp eq ptr %ssn, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ssn, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msg_body.sroa.32.0 = phi i16 [ %7, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %8 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hal_buf, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 26)
  %11 = load ptr, ptr %hal_buf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 3735552, ptr %11, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 4
  %13 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 26, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 8
  %14 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %conv, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 10
  %15 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %msg_body.sroa.15.10.copyload, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 11
  %16 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %msg_body.sroa.17.10.copyload, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %msg_body.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 12
  %17 = ptrtoint ptr %msg_body.sroa.18.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %msg_body.sroa.18.10.copyload, ptr %msg_body.sroa.18.0..sroa_idx, align 1
  %msg_body.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 13
  %18 = ptrtoint ptr %msg_body.sroa.19.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %msg_body.sroa.19.10.copyload, ptr %msg_body.sroa.19.0..sroa_idx, align 1
  %msg_body.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 14
  %19 = ptrtoint ptr %msg_body.sroa.20.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %msg_body.sroa.20.10.copyload, ptr %msg_body.sroa.20.0..sroa_idx, align 1
  %msg_body.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 15
  %20 = ptrtoint ptr %msg_body.sroa.21.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %msg_body.sroa.21.10.copyload, ptr %msg_body.sroa.21.0..sroa_idx, align 1
  %msg_body.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 16
  %21 = ptrtoint ptr %msg_body.sroa.22.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %msg_body.sroa.22.0..sroa_idx, align 1
  %msg_body.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 17
  %22 = ptrtoint ptr %msg_body.sroa.24.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7, ptr %msg_body.sroa.24.0..sroa_idx, align 1
  %msg_body.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 18
  %23 = ptrtoint ptr %msg_body.sroa.26.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %msg_body.sroa.26.0..sroa_idx, align 1
  %msg_body.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 19
  %24 = ptrtoint ptr %msg_body.sroa.28.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 64, ptr %msg_body.sroa.28.0..sroa_idx, align 1
  %msg_body.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 21
  %25 = ptrtoint ptr %msg_body.sroa.30.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 0, ptr %msg_body.sroa.30.0..sroa_idx, align 1
  %msg_body.sroa.32.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 23
  %26 = ptrtoint ptr %msg_body.sroa.32.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %msg_body.sroa.32.0, ptr %msg_body.sroa.32.0..sroa_idx, align 1
  %msg_body.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 25
  %27 = ptrtoint ptr %msg_body.sroa.34.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %direction, ptr %msg_body.sroa.34.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245) #13
  br label %out

if.end25:                                         ; preds = %if.end
  %28 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %30 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %31)
  %cmp.i = icmp ult i32 %31, 20
  br i1 %cmp.i, label %if.end25.do.end32_crit_edge, label %if.end.i

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i:                                         ; preds = %if.end25
  %status.i = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_rsp_msg, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1.not.i = icmp eq i32 %33, 0
  br i1 %cmp1.not.i, label %if.end35, label %if.end.i.do.end32_crit_edge

if.end.i.do.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end32:                                         ; preds = %if.end.i.do.end32_crit_edge, %if.end25.do.end32_crit_edge
  %retval.0.i.ph = phi i32 [ %33, %if.end.i.do.end32_crit_edge ], [ -22, %if.end25.do.end32_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, i32 noundef %retval.0.i.ph) #13
  br label %out

if.end35:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ba_session_id.i = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_rsp_msg, ptr %29, i32 0, i32 5
  %34 = ptrtoint ptr %ba_session_id.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ba_session_id.i, align 1
  %conv36 = zext i8 %35 to i32
  br label %out

out:                                              ; preds = %if.end35, %do.end32, %do.end23
  %ret.0 = phi i32 [ %call, %do.end23 ], [ -22, %do.end32 ], [ %conv36, %if.end35 ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_add_ba(ptr noundef %wcn, i8 noundef zeroext %session_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 10)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 2490368, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %session_id, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 9
  %7 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end17

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %8 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.i = icmp ult i32 %9, 12
  br i1 %cmp.i, label %if.end.do.end25_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %10 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end25:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge, %if.end.do.end25_crit_edge
  %retval.0.i46 = phi i32 [ %13, %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge ], [ -5, %if.end.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, i32 noundef %retval.0.i46) #13
  br label %out

out:                                              ; preds = %do.end25, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end17
  %ret.0 = phi i32 [ %call, %do.end17 ], [ %retval.0.i46, %do.end25 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_del_ba(ptr noundef %wcn, i16 noundef zeroext %tid, i8 noundef zeroext %direction, i8 noundef zeroext %sta_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %conv = zext i8 %sta_index to i16
  %conv7 = trunc i16 %tid to i8
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 2621440, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 12, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %conv, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 10
  %7 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 11
  %8 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %direction, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end20

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %9 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %10)
  %cmp.i = icmp ult i32 %10, 12
  br i1 %cmp.i, label %if.end.do.end28_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %11 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool24.not = icmp eq i32 %14, 0
  br i1 %tobool24.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end28_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end28_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end28:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end28_crit_edge, %if.end.do.end28_crit_edge
  %retval.0.i49 = phi i32 [ %14, %wcn36xx_smd_rsp_status_check.exit.do.end28_crit_edge ], [ -5, %if.end.do.end28_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, i32 noundef %retval.0.i49) #13
  br label %out

out:                                              ; preds = %do.end28, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end20
  %ret.0 = phi i32 [ %call, %do.end20 ], [ %retval.0.i49, %do.end28 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_trigger_ba(ptr noundef %wcn, i8 noundef zeroext %sta_index, i16 noundef zeroext %tid, ptr noundef writeonly %ssn) local_unnamed_addr #0 align 64 {
entry:
  %ba_info = alloca [8 x %struct.add_ba_info], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ba_info) #10
  %0 = getelementptr inbounds [8 x %struct.add_ba_info], ptr %ba_info, i32 0, i32 1
  %1 = getelementptr inbounds [8 x %struct.add_ba_info], ptr %ba_info, i32 0, i32 2
  %2 = getelementptr inbounds [8 x %struct.add_ba_info], ptr %ba_info, i32 0, i32 3
  %3 = getelementptr inbounds [8 x %struct.add_ba_info], ptr %ba_info, i32 0, i32 4
  %4 = getelementptr inbounds [8 x %struct.add_ba_info], ptr %ba_info, i32 0, i32 5
  %5 = getelementptr inbounds [8 x %struct.add_ba_info], ptr %ba_info, i32 0, i32 6
  %6 = getelementptr inbounds [8 x %struct.add_ba_info], ptr %ba_info, i32 0, i32 7
  %conv = zext i16 %tid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %tid)
  %cmp = icmp ugt i16 %tid, 7
  %7 = call ptr @memset(ptr %ba_info, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %8 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hal_buf, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 13)
  %11 = load ptr, ptr %hal_buf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 3866624, ptr %11, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 4
  %13 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 13, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 8
  %14 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 9
  %15 = ptrtoint ptr %msg_body.sroa.17.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 1, ptr %msg_body.sroa.17.0..sroa_idx, align 1
  %16 = load ptr, ptr %hal_buf, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 11
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %sta_index, ptr %add.ptr, align 1
  %shl = shl nuw i32 1, %conv
  %conv18 = trunc i32 %shl to i8
  %tid_bitmap = getelementptr i8, ptr %16, i32 12
  %18 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv18, ptr %tid_bitmap, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260) #13
  br label %out

if.end26:                                         ; preds = %if.end
  %19 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %21 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %22)
  %cmp.i = icmp ult i32 %22, 20
  br i1 %cmp.i, label %if.end26.do.end33_crit_edge, label %if.end.i

if.end26.do.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

if.end.i:                                         ; preds = %if.end26
  %candidate_cnt.i = getelementptr inbounds %struct.wcn36xx_hal_trigger_ba_rsp_msg, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %candidate_cnt.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %candidate_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp1.i = icmp eq i16 %24, 0
  br i1 %cmp1.i, label %if.then3.i, label %wcn36xx_smd_trigger_ba_rsp.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %status.i = getelementptr inbounds %struct.wcn36xx_hal_trigger_ba_rsp_msg, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %spec.select = select i1 %tobool.not.i, i32 -22, i32 %26
  br label %do.end33

wcn36xx_smd_trigger_ba_rsp.exit:                  ; preds = %if.end.i
  %ba_info8.i = getelementptr i8, ptr %20, i32 26
  %27 = ptrtoint ptr %ba_info8.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %ba_info8.i, align 1
  %29 = ptrtoint ptr %ba_info to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %ba_info, align 2
  %arrayidx9.1.i = getelementptr i8, ptr %20, i32 28
  %30 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %arrayidx9.1.i, align 1
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %0, align 2
  %arrayidx9.2.i = getelementptr i8, ptr %20, i32 30
  %33 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %arrayidx9.2.i, align 1
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %1, align 2
  %arrayidx9.3.i = getelementptr i8, ptr %20, i32 32
  %36 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %arrayidx9.3.i, align 1
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %2, align 2
  %arrayidx9.4.i = getelementptr i8, ptr %20, i32 34
  %39 = ptrtoint ptr %arrayidx9.4.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %arrayidx9.4.i, align 1
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %3, align 2
  %arrayidx9.5.i = getelementptr i8, ptr %20, i32 36
  %42 = ptrtoint ptr %arrayidx9.5.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %arrayidx9.5.i, align 1
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %4, align 2
  %arrayidx9.6.i = getelementptr i8, ptr %20, i32 38
  %45 = ptrtoint ptr %arrayidx9.6.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %arrayidx9.6.i, align 1
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %5, align 2
  %arrayidx9.7.i = getelementptr i8, ptr %20, i32 40
  %48 = ptrtoint ptr %arrayidx9.7.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %arrayidx9.7.i, align 1
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %6, align 2
  %status10.i = getelementptr inbounds %struct.wcn36xx_hal_trigger_ba_rsp_msg, ptr %20, i32 0, i32 2
  %51 = ptrtoint ptr %status10.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %status10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool29.not = icmp eq i32 %52, 0
  br i1 %tobool29.not, label %wcn36xx_smd_trigger_ba_rsp.exit.out_crit_edge, label %wcn36xx_smd_trigger_ba_rsp.exit.do.end33_crit_edge

wcn36xx_smd_trigger_ba_rsp.exit.do.end33_crit_edge: ; preds = %wcn36xx_smd_trigger_ba_rsp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

wcn36xx_smd_trigger_ba_rsp.exit.out_crit_edge:    ; preds = %wcn36xx_smd_trigger_ba_rsp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end33:                                         ; preds = %wcn36xx_smd_trigger_ba_rsp.exit.do.end33_crit_edge, %if.then3.i, %if.end26.do.end33_crit_edge
  %retval.0.i69 = phi i32 [ %52, %wcn36xx_smd_trigger_ba_rsp.exit.do.end33_crit_edge ], [ -22, %if.end26.do.end33_crit_edge ], [ %spec.select, %if.then3.i ]
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263, i32 noundef %retval.0.i69) #13
  br label %out

out:                                              ; preds = %do.end33, %wcn36xx_smd_trigger_ba_rsp.exit.out_crit_edge, %do.end24
  %ret.0 = phi i32 [ %call, %do.end24 ], [ %retval.0.i69, %do.end33 ], [ 0, %wcn36xx_smd_trigger_ba_rsp.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  %tobool38.not = icmp eq ptr %ssn, null
  br i1 %tobool38.not, label %out.cleanup_crit_edge, label %if.then39

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [8 x %struct.add_ba_info], ptr %ba_info, i32 0, i32 %conv
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load40 = load i16, ptr %arrayidx, align 2
  %bf.lshr = lshr i16 %bf.load40, 3
  %bf.clear41 = and i16 %bf.lshr, 4095
  %54 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %bf.clear41, ptr %ssn, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.then39 ], [ %ret.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ba_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_update_cfg(ptr noundef %wcn, i32 noundef %cfg_id, i32 noundef %value) local_unnamed_addr #0 align 64 {
put_cfg_tlv_u32.exit:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 3145728, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 12, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %7 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  %conv.i = trunc i32 %cfg_id to i16
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %conv.i, ptr %add.ptr.i, align 1
  %len4.i = getelementptr i8, ptr %7, i32 14
  %9 = ptrtoint ptr %len4.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 4, ptr %len4.i, align 1
  %pad_bytes.i = getelementptr i8, ptr %7, i32 16
  %10 = ptrtoint ptr %pad_bytes.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %pad_bytes.i, align 1
  %reserve.i = getelementptr i8, ptr %7, i32 18
  %11 = ptrtoint ptr %reserve.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %reserve.i, align 1
  %add.ptr5.i = getelementptr i8, ptr %7, i32 20
  %12 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %value, ptr %add.ptr5.i, align 4
  %len17 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %len17 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 24, ptr %len17, align 1
  %len18 = getelementptr inbounds %struct.wcn36xx_hal_update_cfg_req_msg, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %len18 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 12, ptr %len18, align 1
  %call21 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end, label %do.end24

do.end24:                                         ; preds = %put_cfg_tlv_u32.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265) #13
  br label %out

if.end:                                           ; preds = %put_cfg_tlv_u32.exit
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %15 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %16)
  %cmp.i55 = icmp ult i32 %16, 12
  br i1 %cmp.i55, label %if.end.do.end32_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %17 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i56 = getelementptr i8, ptr %18, i32 8
  %19 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr.i56, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool28.not = icmp eq i32 %20, 0
  br i1 %tobool28.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end32_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end32_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end32:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end32_crit_edge, %if.end.do.end32_crit_edge
  %retval.0.i5863 = phi i32 [ %20, %wcn36xx_smd_rsp_status_check.exit.do.end32_crit_edge ], [ -5, %if.end.do.end32_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, i32 noundef %retval.0.i5863) #13
  br label %out

out:                                              ; preds = %do.end32, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end24
  %ret.0 = phi i32 [ %call21, %do.end24 ], [ %retval.0.i5863, %do.end32 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_set_mc_list(ptr noundef %wcn, ptr nocapture noundef readonly %vif, ptr noundef readonly %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 1446)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 10289152, ptr %1, align 1
  %len = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 1454, ptr %len, align 1
  %tobool.not = icmp eq ptr %fp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mc_addr_list = getelementptr inbounds %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg, ptr %1, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %mc_addr_list, ptr %fp, i32 1446)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %7 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bss_index, align 4
  %bss_index8 = getelementptr inbounds %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg, ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %bss_index8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %bss_index8, align 1
  %call11 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 1454)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270) #13
  br label %out

if.end18:                                         ; preds = %if.end
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %10 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp.i = icmp ult i32 %11, 12
  br i1 %cmp.i, label %if.end18.do.end25_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end18.do.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end18
  %12 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end25:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge, %if.end18.do.end25_crit_edge
  %retval.0.i48 = phi i32 [ %15, %wcn36xx_smd_rsp_status_check.exit.do.end25_crit_edge ], [ -5, %if.end18.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, i32 noundef %retval.0.i48) #13
  br label %out

out:                                              ; preds = %do.end25, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end16
  %ret.0 = phi i32 [ %call11, %do.end16 ], [ %retval.0.i48, %do.end25 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_arp_offload(ptr noundef %wcn, ptr nocapture noundef readonly %vif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  br i1 %enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arp_addr_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 34
  %0 = ptrtoint ptr %arp_addr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %msg_body.sroa.14.10.copyload = load i32, ptr %arp_addr_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msg_body.sroa.13.0 = phi i8 [ 3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %msg_body.sroa.14.0 = phi i32 [ %msg_body.sroa.14.10.copyload, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %1 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bss_index, align 4
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %3 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hal_buf, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 103)
  %6 = load ptr, ptr %hal_buf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 5898240, ptr %6, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 4
  %8 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 103, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 8
  %9 = ptrtoint ptr %msg_body.sroa.12.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %msg_body.sroa.12.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 9
  %10 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %msg_body.sroa.13.0, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 10
  %11 = ptrtoint ptr %msg_body.sroa.14.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %msg_body.sroa.14.0, ptr %msg_body.sroa.14.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 14
  %12 = call ptr @memset(ptr %msg_body.sroa.15.0..sroa_idx, i32 0, i32 88)
  %msg_body.sroa.1541.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 102
  %13 = ptrtoint ptr %msg_body.sroa.1541.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %2, ptr %msg_body.sroa.1541.0..sroa_idx, align 1
  %call18 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275) #13
  br label %out

if.end25:                                         ; preds = %if.end
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %14 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %15)
  %cmp.i = icmp ult i32 %15, 12
  br i1 %cmp.i, label %if.end25.do.end32_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end25
  %16 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  br i1 %tobool28.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end32_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end32_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end32:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end32_crit_edge, %if.end25.do.end32_crit_edge
  %retval.0.i61 = phi i32 [ %19, %wcn36xx_smd_rsp_status_check.exit.do.end32_crit_edge ], [ -5, %if.end25.do.end32_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, i32 noundef %retval.0.i61) #13
  br label %out

out:                                              ; preds = %do.end32, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end23
  %ret.0 = phi i32 [ %call18, %do.end23 ], [ %retval.0.i61, %do.end32 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_ipv6_ns_offload(ptr noundef %wcn, ptr nocapture noundef readonly %vif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %msg_body.sroa.14 = alloca [16 x i8], align 1
  %msg_body.sroa.15 = alloca <{ [16 x i8], [16 x i8], [16 x i8] }>, align 4
  %msg_body.sroa.16 = alloca [16 x i8], align 1
  %msg_body.sroa.17 = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg_body.sroa.14)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %msg_body.sroa.15)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg_body.sroa.16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg_body.sroa.17)
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %0 = call ptr @memset(ptr %msg_body.sroa.14, i32 0, i32 16)
  %1 = call ptr @memset(ptr %msg_body.sroa.15, i32 0, i32 48)
  %2 = call ptr @memset(ptr %msg_body.sroa.16, i32 0, i32 16)
  br i1 %enable, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then:                                          ; preds = %entry
  %num_target_ipv6_addrs = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 30
  %3 = ptrtoint ptr %num_target_ipv6_addrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_target_ipv6_addrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then.if.end24_crit_edge, label %if.end

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end:                                           ; preds = %if.then
  %target_ipv6_addrs = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26
  %5 = call ptr @memcpy(ptr %msg_body.sroa.14, ptr %target_ipv6_addrs, i32 16)
  %msg_body.sroa.15.58.target_ipv6_addr1.sroa_idx = getelementptr inbounds i8, ptr %msg_body.sroa.15, i32 32
  %6 = call ptr @memcpy(ptr %msg_body.sroa.15.58.target_ipv6_addr1.sroa_idx, ptr %target_ipv6_addrs, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then16, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 4
  %7 = call ptr @memcpy(ptr %msg_body.sroa.16, ptr %arrayidx18, i32 16)
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.end.if.end24_crit_edge, %if.then.if.end24_crit_edge, %entry.if.end24_crit_edge
  %msg_body.sroa.13.0 = phi i8 [ 5, %if.then16 ], [ 5, %if.end.if.end24_crit_edge ], [ 0, %entry.if.end24_crit_edge ], [ 5, %if.then.if.end24_crit_edge ]
  %msg_body.sroa.18.1 = phi i8 [ 96, %if.then16 ], [ 64, %if.end.if.end24_crit_edge ], [ 0, %entry.if.end24_crit_edge ], [ 0, %if.then.if.end24_crit_edge ]
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %msg_body.sroa.17, ptr %addr, i32 6)
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %9 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bss_index, align 4
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %11 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hal_buf, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 103)
  %14 = load ptr, ptr %hal_buf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 5898240, ptr %14, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 4
  %16 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 103, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 8
  %17 = ptrtoint ptr %msg_body.sroa.12.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %msg_body.sroa.12.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 9
  %18 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %msg_body.sroa.13.0, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 10
  %19 = call ptr @memcpy(ptr %msg_body.sroa.14.0..sroa_idx, ptr %msg_body.sroa.14, i32 16)
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 26
  %20 = call ptr @memcpy(ptr %msg_body.sroa.15.0..sroa_idx, ptr %msg_body.sroa.15, i32 48)
  %msg_body.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 74
  %21 = call ptr @memcpy(ptr %msg_body.sroa.16.0..sroa_idx, ptr %msg_body.sroa.16, i32 16)
  %msg_body.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 90
  %22 = call ptr @memcpy(ptr %msg_body.sroa.17.0..sroa_idx, ptr %msg_body.sroa.17, i32 6)
  %msg_body.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 96
  %23 = ptrtoint ptr %msg_body.sroa.18.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %msg_body.sroa.18.1, ptr %msg_body.sroa.18.0..sroa_idx, align 1
  %msg_body.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 97
  %24 = call ptr @memset(ptr %msg_body.sroa.22.0..sroa_idx, i32 0, i32 5)
  %msg_body.sroa.2276.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 102
  %25 = ptrtoint ptr %msg_body.sroa.2276.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %10, ptr %msg_body.sroa.2276.0..sroa_idx, align 1
  %call34 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275) #13
  br label %out

if.end41:                                         ; preds = %if.end24
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %26 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %27)
  %cmp.i = icmp ult i32 %27, 12
  br i1 %cmp.i, label %if.end41.do.end48_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end41.do.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end41
  %28 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 8
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool44.not = icmp eq i32 %31, 0
  br i1 %tobool44.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end48_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end48_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end48:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end48_crit_edge, %if.end41.do.end48_crit_edge
  %retval.0.i93 = phi i32 [ %31, %wcn36xx_smd_rsp_status_check.exit.do.end48_crit_edge ], [ -5, %if.end41.do.end48_crit_edge ]
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, i32 noundef %retval.0.i93) #13
  br label %out

out:                                              ; preds = %do.end48, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end39
  %ret.0 = phi i32 [ %call34, %do.end39 ], [ %retval.0.i93, %do.end48 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg_body.sroa.14)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %msg_body.sroa.15)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg_body.sroa.16)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg_body.sroa.17)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_gtk_offload(ptr noundef %wcn, ptr nocapture noundef readonly %vif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %msg_body.sroa.13 = alloca [16 x i8], align 1
  %msg_body.sroa.14 = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg_body.sroa.13)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg_body.sroa.14)
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %0 = call ptr @memset(ptr %msg_body.sroa.13, i32 0, i32 16)
  %1 = call ptr @memset(ptr %msg_body.sroa.14, i32 0, i32 16)
  br i1 %enable, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rekey_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %kek6 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 3
  %2 = call ptr @memcpy(ptr %msg_body.sroa.14, ptr %kek6, i32 16)
  %3 = call ptr @memcpy(ptr %msg_body.sroa.13, ptr %rekey_data, i32 16)
  %replay_ctr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33
  %4 = ptrtoint ptr %replay_ctr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %replay_ctr, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %7 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bss_index, align 4
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  %msg_body.sroa.12.0 = phi i32 [ 0, %if.then ], [ 1, %entry.do.body12_crit_edge ]
  %msg_body.sroa.15.0 = phi i64 [ %6, %if.then ], [ 0, %entry.do.body12_crit_edge ]
  %msg_body.sroa.16.0 = phi i8 [ %8, %if.then ], [ 0, %entry.do.body12_crit_edge ]
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %9 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hal_buf, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 53)
  %12 = load ptr, ptr %hal_buf, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 11206656, ptr %12, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %12, i32 4
  %14 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 53, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %12, i32 8
  %15 = ptrtoint ptr %msg_body.sroa.12.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %msg_body.sroa.12.0, ptr %msg_body.sroa.12.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %12, i32 12
  %16 = call ptr @memcpy(ptr %msg_body.sroa.13.0..sroa_idx, ptr %msg_body.sroa.13, i32 16)
  %msg_body.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %12, i32 28
  %17 = call ptr @memcpy(ptr %msg_body.sroa.14.0..sroa_idx, ptr %msg_body.sroa.14, i32 16)
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %12, i32 44
  %18 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %msg_body.sroa.15.0, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %msg_body.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %12, i32 52
  %19 = ptrtoint ptr %msg_body.sroa.16.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %msg_body.sroa.16.0, ptr %msg_body.sroa.16.0..sroa_idx, align 1
  %call20 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275) #13
  br label %out

if.end27:                                         ; preds = %do.body12
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %20 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cmp.i = icmp ult i32 %21, 12
  br i1 %cmp.i, label %if.end27.do.end34_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end27.do.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end27
  %22 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 8
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool30.not = icmp eq i32 %25, 0
  br i1 %tobool30.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end34_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end34_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end34:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end34_crit_edge, %if.end27.do.end34_crit_edge
  %retval.0.i63 = phi i32 [ %25, %wcn36xx_smd_rsp_status_check.exit.do.end34_crit_edge ], [ -5, %if.end27.do.end34_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, i32 noundef %retval.0.i63) #13
  br label %out

out:                                              ; preds = %do.end34, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end25
  %ret.0 = phi i32 [ %call20, %do.end25 ], [ %retval.0.i63, %do.end34 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg_body.sroa.13)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg_body.sroa.14)
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_gtk_offload_get_info(ptr noundef %wcn, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %replay_ctr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %0 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_index, align 4
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %2 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 9)
  %5 = load ptr, ptr %hal_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 11337728, ptr %5, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 4
  %7 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 9, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 8
  %8 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %call15 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end, label %do.end18

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286) #13
  br label %out

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hal_buf, align 4
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %11 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %cmp.i = icmp ult i32 %12, 12
  br i1 %cmp.i, label %if.end.do.end26_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %wcn36xx_smd_rsp_status_check.exit.i, label %wcn36xx_smd_rsp_status_check.exit.do.end26_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end26_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.end26:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end26_crit_edge, %if.end.do.end26_crit_edge
  %retval.0.i52 = phi i32 [ %14, %wcn36xx_smd_rsp_status_check.exit.do.end26_crit_edge ], [ -5, %if.end.do.end26_crit_edge ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289, i32 noundef %retval.0.i52) #13
  br label %out

wcn36xx_smd_rsp_status_check.exit.i:              ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %replay_ctr.i) #10
  %15 = ptrtoint ptr %replay_ctr.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %replay_ctr.i, align 8, !annotation !768
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end.i48, label %wcn36xx_smd_rsp_status_check.exit.i.wcn36xx_smd_gtk_offload_get_info_rsp.exit_crit_edge

wcn36xx_smd_rsp_status_check.exit.i.wcn36xx_smd_gtk_offload_get_info_rsp.exit_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_gtk_offload_get_info_rsp.exit

if.end.i48:                                       ; preds = %wcn36xx_smd_rsp_status_check.exit.i
  %bss_index.i = getelementptr inbounds %struct.wcn36xx_hal_gtk_offload_get_info_rsp_msg, ptr %10, i32 0, i32 7
  %18 = ptrtoint ptr %bss_index.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bss_index.i, align 1
  %20 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bss_index, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp.not.i = icmp eq i8 %19, %21
  br i1 %cmp.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %19 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, i32 noundef %conv.i) #13
  br label %wcn36xx_smd_gtk_offload_get_info_rsp.exit

if.end10.i:                                       ; preds = %if.end.i48
  %replay_ctr11.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33
  %22 = ptrtoint ptr %replay_ctr11.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %replay_ctr11.i, align 8
  %key_replay_counter.i = getelementptr inbounds %struct.wcn36xx_hal_gtk_offload_get_info_rsp_msg, ptr %10, i32 0, i32 3
  %24 = ptrtoint ptr %key_replay_counter.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %key_replay_counter.i, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %26)
  %cmp12.not.i = icmp eq i64 %23, %26
  br i1 %cmp12.not.i, label %if.end10.i.do.body32.i_crit_edge, label %if.then14.i

if.end10.i.do.body32.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32.i

if.then14.i:                                      ; preds = %if.end10.i
  %27 = ptrtoint ptr %replay_ctr.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %25, ptr %replay_ctr.i, align 8
  %28 = ptrtoint ptr %replay_ctr11.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %26, ptr %replay_ctr11.i, align 8
  %bss_conf.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %29 = ptrtoint ptr %bss_conf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bss_conf.i, align 8
  call void @ieee80211_gtk_rekey_notify(ptr noundef %vif, ptr noundef %30, ptr noundef nonnull %replay_ctr.i, i32 noundef 3264) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %31 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %if.then14.i.do.body32.i_crit_edge, label %do.end24.i

if.then14.i.do.body32.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32.i

do.end24.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %key_replay_counter.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %key_replay_counter.i, align 1
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, i64 noundef %33) #13
  br label %do.body32.i

do.body32.i:                                      ; preds = %do.end24.i, %if.then14.i.do.body32.i_crit_edge, %if.end10.i.do.body32.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %34 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and33.i = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.body32.i.wcn36xx_smd_gtk_offload_get_info_rsp.exit_crit_edge, label %do.end38.i

do.body32.i.wcn36xx_smd_gtk_offload_get_info_rsp.exit_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_gtk_offload_get_info_rsp.exit

do.end38.i:                                       ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr.i, align 1
  %last_rekey_status.i = getelementptr inbounds %struct.wcn36xx_hal_gtk_offload_get_info_rsp_msg, ptr %10, i32 0, i32 2
  %37 = ptrtoint ptr %last_rekey_status.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %last_rekey_status.i, align 1
  %39 = ptrtoint ptr %key_replay_counter.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %key_replay_counter.i, align 1
  %total_rekey_count.i = getelementptr inbounds %struct.wcn36xx_hal_gtk_offload_get_info_rsp_msg, ptr %10, i32 0, i32 4
  %41 = ptrtoint ptr %total_rekey_count.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %total_rekey_count.i, align 1
  %gtk_rekey_count.i = getelementptr inbounds %struct.wcn36xx_hal_gtk_offload_get_info_rsp_msg, ptr %10, i32 0, i32 5
  %43 = ptrtoint ptr %gtk_rekey_count.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %gtk_rekey_count.i, align 1
  %igtk_rekey_count.i = getelementptr inbounds %struct.wcn36xx_hal_gtk_offload_get_info_rsp_msg, ptr %10, i32 0, i32 6
  %45 = ptrtoint ptr %igtk_rekey_count.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %igtk_rekey_count.i, align 1
  %47 = ptrtoint ptr %bss_index.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bss_index.i, align 1
  %conv42.i = zext i8 %48 to i32
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.381, i32 noundef %36, i32 noundef %38, i64 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %conv42.i) #13
  br label %wcn36xx_smd_gtk_offload_get_info_rsp.exit

wcn36xx_smd_gtk_offload_get_info_rsp.exit:        ; preds = %do.end38.i, %do.body32.i.wcn36xx_smd_gtk_offload_get_info_rsp.exit_crit_edge, %do.end.i, %wcn36xx_smd_rsp_status_check.exit.i.wcn36xx_smd_gtk_offload_get_info_rsp.exit_crit_edge
  %retval.0.i49 = phi i32 [ -2, %do.end.i ], [ -5, %wcn36xx_smd_rsp_status_check.exit.i.wcn36xx_smd_gtk_offload_get_info_rsp.exit_crit_edge ], [ 0, %do.end38.i ], [ 0, %do.body32.i.wcn36xx_smd_gtk_offload_get_info_rsp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %replay_ctr.i) #10
  br label %out

out:                                              ; preds = %wcn36xx_smd_gtk_offload_get_info_rsp.exit, %do.end26, %do.end18
  %ret.0 = phi i32 [ %call15, %do.end18 ], [ %retval.0.i52, %do.end26 ], [ %retval.0.i49, %wcn36xx_smd_gtk_offload_get_info_rsp.exit ]
  call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_wlan_host_suspend_ind(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 8585216, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 16, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %msg_body.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 12
  %7 = ptrtoint ptr %msg_body.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1, ptr %msg_body.sroa.15.0..sroa_idx, align 1
  %smd_channel = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 18
  %8 = ptrtoint ptr %smd_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smd_channel, align 4
  %10 = load ptr, ptr %hal_buf, align 4
  %call = tail call i32 @rpmsg_send(ptr noundef %9, ptr noundef %10, i32 noundef 16) #10
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_host_resume(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %0 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 9)
  %3 = load ptr, ptr %hal_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 8650752, ptr %3, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 9, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %msg_body.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %msg_body.sroa.13.0..sroa_idx, align 1
  %call = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end16

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291) #13
  br label %out

if.end:                                           ; preds = %entry
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %7 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp.i = icmp ult i32 %8, 12
  br i1 %cmp.i, label %if.end.do.end24_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end
  %9 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %if.end27, label %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end24:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge, %if.end.do.end24_crit_edge
  %retval.0.i57 = phi i32 [ %12, %wcn36xx_smd_rsp_status_check.exit.do.end24_crit_edge ], [ -5, %if.end.do.end24_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, i32 noundef %retval.0.i57) #13
  br label %out

if.end27:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool29.not = icmp eq i32 %14, 0
  br i1 %tobool29.not, label %if.end27.out_crit_edge, label %do.end33

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, i32 noundef %14) #13
  br label %out

out:                                              ; preds = %do.end33, %if.end27.out_crit_edge, %do.end24, %do.end16
  %ret.0 = phi i32 [ %call, %do.end16 ], [ %retval.0.i57, %do.end24 ], [ 0, %do.end33 ], [ 0, %if.end27.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_add_beacon_filter(ptr noundef %wcn, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_feat_caps = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 9
  %0 = ptrtoint ptr %fw_feat_caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_feat_caps, align 4
  %2 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hal_mutex, i32 noundef 0) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 24
  %3 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hal_buf, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 18)
  %6 = load ptr, ptr %hal_buf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 5505024, ptr %6, align 1
  %msg_body.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 4
  %8 = ptrtoint ptr %msg_body.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 18, ptr %msg_body.sroa.9.0..sroa_idx, align 1
  %msg_body.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 8
  %9 = call ptr @memset(ptr %msg_body.sroa.12.0..sroa_idx, i32 0, i32 10)
  %10 = load ptr, ptr %hal_buf, align 4
  %assoc_capability = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 20
  %11 = ptrtoint ptr %assoc_capability to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %assoc_capability, align 4
  %capability_info = getelementptr inbounds %struct.wcn36xx_hal_add_bcn_filter_req_msg, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %capability_info to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %capability_info, align 1
  %capability_mask = getelementptr inbounds %struct.wcn36xx_hal_add_bcn_filter_req_msg, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %capability_mask to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 29647, ptr %capability_mask, align 1
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %15 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %beacon_int, align 2
  %beacon_interval = getelementptr inbounds %struct.wcn36xx_hal_add_bcn_filter_req_msg, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %beacon_interval, align 1
  %ie_num = getelementptr inbounds %struct.wcn36xx_hal_add_bcn_filter_req_msg, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %ie_num to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 13, ptr %ie_num, align 1
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %19 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bss_index, align 4
  %bss_index15 = getelementptr inbounds %struct.wcn36xx_hal_add_bcn_filter_req_msg, ptr %10, i32 0, i32 5
  %21 = ptrtoint ptr %bss_index15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %bss_index15, align 1
  %len17 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %len17 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %len17, align 1
  %add.ptr = getelementptr i8, ptr %10, i32 %23
  %24 = call ptr @memcpy(ptr %add.ptr, ptr @bcn_filter_ies, i32 78)
  %25 = load i32, ptr %len17, align 1
  %add = add i32 %25, 78
  store i32 %add, ptr %len17, align 1
  %call22 = tail call fastcc i32 @wcn36xx_smd_send_and_wait(ptr noundef %wcn, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299) #13
  br label %out

if.end29:                                         ; preds = %if.end
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 25
  %26 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hal_rsp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %27)
  %cmp.i = icmp ult i32 %27, 12
  br i1 %cmp.i, label %if.end29.do.end36_crit_edge, label %wcn36xx_smd_rsp_status_check.exit

if.end29.do.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

wcn36xx_smd_rsp_status_check.exit:                ; preds = %if.end29
  %28 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hal_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 8
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool32.not = icmp eq i32 %31, 0
  br i1 %tobool32.not, label %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, label %wcn36xx_smd_rsp_status_check.exit.do.end36_crit_edge

wcn36xx_smd_rsp_status_check.exit.do.end36_crit_edge: ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

wcn36xx_smd_rsp_status_check.exit.out_crit_edge:  ; preds = %wcn36xx_smd_rsp_status_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end36:                                         ; preds = %wcn36xx_smd_rsp_status_check.exit.do.end36_crit_edge, %if.end29.do.end36_crit_edge
  %retval.0.i73 = phi i32 [ %31, %wcn36xx_smd_rsp_status_check.exit.do.end36_crit_edge ], [ -5, %if.end29.do.end36_crit_edge ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, i32 noundef %retval.0.i73) #13
  br label %out

out:                                              ; preds = %do.end36, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge, %do.end27
  %ret.0 = phi i32 [ %call22, %do.end27 ], [ %retval.0.i73, %do.end36 ], [ 0, %wcn36xx_smd_rsp_status_check.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hal_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_rsp_process(ptr nocapture noundef readnone %rpdev, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %priv, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.305, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext false) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %bf.load = load i32, ptr %buf, align 1
  %bf.lshr = lshr i32 %bf.load, 16
  %trunc = trunc i32 %bf.lshr to i16
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.426)
  switch i16 %trunc, label %do.end28 [
    i16 1, label %do.end.sw.bb_crit_edge
    i16 13, label %do.end.sw.bb_crit_edge60
    i16 17, label %do.end.sw.bb_crit_edge61
    i16 126, label %do.end.sw.bb_crit_edge62
    i16 3, label %do.end.sw.bb_crit_edge63
    i16 128, label %do.end.sw.bb_crit_edge64
    i16 15, label %do.end.sw.bb_crit_edge65
    i16 5, label %do.end.sw.bb_crit_edge66
    i16 7, label %do.end.sw.bb_crit_edge67
    i16 9, label %do.end.sw.bb_crit_edge68
    i16 11, label %do.end.sw.bb_crit_edge69
    i16 56, label %do.end.sw.bb_crit_edge70
    i16 19, label %do.end.sw.bb_crit_edge71
    i16 64, label %do.end.sw.bb_crit_edge72
    i16 45, label %do.end.sw.bb_crit_edge73
    i16 69, label %do.end.sw.bb_crit_edge74
    i16 25, label %do.end.sw.bb_crit_edge75
    i16 27, label %do.end.sw.bb_crit_edge76
    i16 31, label %do.end.sw.bb_crit_edge77
    i16 29, label %do.end.sw.bb_crit_edge78
    i16 97, label %do.end.sw.bb_crit_edge79
    i16 167, label %do.end.sw.bb_crit_edge80
    i16 98, label %do.end.sw.bb_crit_edge81
    i16 146, label %do.end.sw.bb_crit_edge82
    i16 122, label %do.end.sw.bb_crit_edge83
    i16 58, label %do.end.sw.bb_crit_edge84
    i16 39, label %do.end.sw.bb_crit_edge85
    i16 41, label %do.end.sw.bb_crit_edge86
    i16 60, label %do.end.sw.bb_crit_edge87
    i16 49, label %do.end.sw.bb_crit_edge88
    i16 21, label %do.end.sw.bb_crit_edge89
    i16 152, label %do.end.sw.bb_crit_edge90
    i16 43, label %do.end.sw.bb_crit_edge91
    i16 71, label %do.end.sw.bb_crit_edge92
    i16 176, label %do.end.sw.bb_crit_edge93
    i16 158, label %do.end.sw.bb_crit_edge94
    i16 205, label %do.end.sw.bb_crit_edge95
    i16 207, label %do.end.sw.bb_crit_edge96
    i16 107, label %do.end.sw.bb_crit_edge97
    i16 172, label %do.end.sw.bb_crit_edge98
    i16 174, label %do.end.sw.bb_crit_edge99
    i16 133, label %do.end.sw.bb_crit_edge100
    i16 95, label %do.end.sw.bb_crit_edge101
    i16 96, label %do.end.sw.bb_crit_edge102
    i16 209, label %do.end.sw.bb_crit_edge103
    i16 104, label %do.end.sw.bb_crit_edge104
    i16 129, label %do.end.if.end8.i_crit_edge
    i16 233, label %do.end.if.end8.i_crit_edge105
    i16 188, label %do.end.if.end8.i_crit_edge106
    i16 130, label %do.end.if.end8.i_crit_edge107
    i16 50, label %do.end.if.end8.i_crit_edge108
    i16 67, label %do.end.if.end8.i_crit_edge109
    i16 259, label %do.end.if.end8.i_crit_edge110
    i16 210, label %do.end.if.end8.i_crit_edge111
  ]

do.end.if.end8.i_crit_edge111:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.if.end8.i_crit_edge110:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.if.end8.i_crit_edge109:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.if.end8.i_crit_edge108:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.if.end8.i_crit_edge107:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.if.end8.i_crit_edge106:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.if.end8.i_crit_edge105:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.if.end8.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.sw.bb_crit_edge104:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge103:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge102:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge101:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge100:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge99:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge98:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge97:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge96:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge95:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge94:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge93:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge92:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge91:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge90:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge89:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge88:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge87:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge86:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge85:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge84:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge83:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge82:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge81:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge80:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge79:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge78:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge77:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge76:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge75:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge74:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge73:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge72:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge71:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge70:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge69:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge68:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge67:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge66:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge65:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge64:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge63:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge62:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge61:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge60:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge60, %do.end.sw.bb_crit_edge61, %do.end.sw.bb_crit_edge62, %do.end.sw.bb_crit_edge63, %do.end.sw.bb_crit_edge64, %do.end.sw.bb_crit_edge65, %do.end.sw.bb_crit_edge66, %do.end.sw.bb_crit_edge67, %do.end.sw.bb_crit_edge68, %do.end.sw.bb_crit_edge69, %do.end.sw.bb_crit_edge70, %do.end.sw.bb_crit_edge71, %do.end.sw.bb_crit_edge72, %do.end.sw.bb_crit_edge73, %do.end.sw.bb_crit_edge74, %do.end.sw.bb_crit_edge75, %do.end.sw.bb_crit_edge76, %do.end.sw.bb_crit_edge77, %do.end.sw.bb_crit_edge78, %do.end.sw.bb_crit_edge79, %do.end.sw.bb_crit_edge80, %do.end.sw.bb_crit_edge81, %do.end.sw.bb_crit_edge82, %do.end.sw.bb_crit_edge83, %do.end.sw.bb_crit_edge84, %do.end.sw.bb_crit_edge85, %do.end.sw.bb_crit_edge86, %do.end.sw.bb_crit_edge87, %do.end.sw.bb_crit_edge88, %do.end.sw.bb_crit_edge89, %do.end.sw.bb_crit_edge90, %do.end.sw.bb_crit_edge91, %do.end.sw.bb_crit_edge92, %do.end.sw.bb_crit_edge93, %do.end.sw.bb_crit_edge94, %do.end.sw.bb_crit_edge95, %do.end.sw.bb_crit_edge96, %do.end.sw.bb_crit_edge97, %do.end.sw.bb_crit_edge98, %do.end.sw.bb_crit_edge99, %do.end.sw.bb_crit_edge100, %do.end.sw.bb_crit_edge101, %do.end.sw.bb_crit_edge102, %do.end.sw.bb_crit_edge103, %do.end.sw.bb_crit_edge104
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %hal_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hal_buf, align 4
  %7 = call ptr @memcpy(ptr %6, ptr %buf, i32 %len)
  %hal_rsp_len = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %hal_rsp_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %hal_rsp_len, align 4
  %hal_rsp_compl = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 27
  tail call void @complete(ptr noundef %hal_rsp_compl) #10
  br label %cleanup

if.end8.i:                                        ; preds = %do.end.if.end8.i_crit_edge, %do.end.if.end8.i_crit_edge105, %do.end.if.end8.i_crit_edge106, %do.end.if.end8.i_crit_edge107, %do.end.if.end8.i_crit_edge108, %do.end.if.end8.i_crit_edge109, %do.end.if.end8.i_crit_edge110, %do.end.if.end8.i_crit_edge111
  %add = add i32 %len, 12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #15
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load8 = load i32, ptr %buf, align 1
  %bf.lshr9 = lshr i32 %bf.load8, 16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, i32 noundef %bf.lshr9) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i
  %msg_len = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %call9.i, i32 0, i32 1
  %10 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %msg_len, align 8
  %msg = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %call9.i, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %msg, ptr %buf, i32 %len)
  %hal_ind_lock = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 30
  tail call void @_raw_spin_lock(ptr noundef %hal_ind_lock) #10
  %hal_ind_queue = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 31
  %prev.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 31, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %13, ptr noundef %hal_ind_queue) #10
  br i1 %call.i.i, label %if.end.i.i56, label %if.end11.list_add_tail.exit_crit_edge

if.end11.list_add_tail.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i56:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %prev.i, align 4
  %15 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hal_ind_queue, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call9.i, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i56, %if.end11.list_add_tail.exit_crit_edge
  %hal_ind_wq = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 28
  %18 = ptrtoint ptr %hal_ind_wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hal_ind_wq, align 4
  %hal_ind_work = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 29
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %hal_ind_work) #10
  tail call void @_raw_spin_unlock(ptr noundef %hal_ind_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %20 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and15 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %list_add_tail.exit.cleanup_crit_edge, label %do.end20

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end20:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309) #13
  br label %cleanup

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, i32 noundef %bf.lshr) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end20, %list_add_tail.exit.cleanup_crit_edge, %do.end7, %sw.bb
  %retval.0 = phi i32 [ -12, %do.end7 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ 0, %do.end20 ], [ 0, %do.end28 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_smd_open(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.314, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull @.str.315) #10
  %hal_ind_wq = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 28
  %0 = ptrtoint ptr %hal_ind_wq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %hal_ind_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hal_ind_work = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 29
  tail call void @__init_work(ptr noundef %hal_ind_work, i32 noundef 0) #10
  %1 = ptrtoint ptr %hal_ind_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %hal_ind_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 29, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.316, ptr noundef nonnull @wcn36xx_smd_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry5 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 29, i32 1
  %2 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 29, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 29, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wcn36xx_ind_smd_work, ptr %func, align 4
  %hal_ind_queue = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 31
  %5 = ptrtoint ptr %hal_ind_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %hal_ind_queue, ptr %hal_ind_queue, align 4
  %prev.i18 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 31, i32 1
  %6 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hal_ind_queue, ptr %prev.i18, align 4
  %hal_ind_lock = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %hal_ind_lock, ptr noundef nonnull @.str.318, ptr noundef nonnull @wcn36xx_smd_open.__key.317, i16 noundef signext 3) #10
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_ind_smd_work(ptr noundef %work) #0 align 64 {
entry:
  %scan_info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -464
  %hal_ind_lock = getelementptr i8, ptr %work, i32 44
  %hal_ind_queue = getelementptr i8, ptr %work, i32 88
  %aborted.i = getelementptr inbounds %struct.cfg80211_scan_info, ptr %scan_info.i, i32 0, i32 2
  %scan_lock.i = getelementptr i8, ptr %work, i32 108
  %scan_req.i = getelementptr i8, ptr %work, i32 96
  %scan_aborted.i = getelementptr i8, ptr %work, i32 200
  %vif_list.i79 = getelementptr i8, ptr %work, i32 -456
  %fw_major.i.i = getelementptr i8, ptr %work, i32 -437
  %fw_minor.i.i = getelementptr i8, ptr %work, i32 -438
  %fw_version.i.i = getelementptr i8, ptr %work, i32 -439
  %fw_revision.i.i = getelementptr i8, ptr %work, i32 -440
  %call3116 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hal_ind_lock) #10
  %0 = ptrtoint ptr %hal_ind_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hal_ind_queue, align 4
  %cmp.i.not117 = icmp eq ptr %1, %hal_ind_queue
  br i1 %cmp.i.not117, label %entry.cleanup46_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup46

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = phi ptr [ %98, %cleanup.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %call3118 = phi i32 [ %call3, %cleanup.if.end_crit_edge ], [ %call3116, %entry.if.end_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hal_ind_lock, i32 noundef %call3118) #10
  %msg = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load = load i32, ptr %msg, align 1
  %bf.lshr = lshr i32 %bf.load, 16
  %trunc = trunc i32 %bf.lshr to i16
  %12 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.427)
  switch i16 %trunc, label %do.end39 [
    i16 129, label %list_del.exit.cleanup_crit_edge
    i16 188, label %list_del.exit.cleanup_crit_edge125
    i16 233, label %list_del.exit.cleanup_crit_edge126
    i16 130, label %sw.bb13
    i16 50, label %sw.bb17
    i16 67, label %sw.bb22
    i16 259, label %sw.bb27
    i16 210, label %sw.bb32
  ]

list_del.exit.cleanup_crit_edge126:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

list_del.exit.cleanup_crit_edge125:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb13:                                          ; preds = %list_del.exit
  %msg_len = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 12
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.384) #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  %status.i = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 1, i32 1
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i, align 4
  call void @wcn36xx_dxe_tx_ack_ind(ptr noundef %add.ptr, i32 noundef %16) #10
  br label %cleanup

sw.bb17:                                          ; preds = %list_del.exit
  %msg_len20 = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %msg_len20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_len20, align 4
  %19 = ptrtoint ptr %fw_major.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fw_major.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sw.bb17.if.end15.i_crit_edge

sw.bb17.if.end15.i_crit_edge:                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true.i.i:                                ; preds = %sw.bb17
  %21 = ptrtoint ptr %fw_minor.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_minor.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp5.i.i = icmp eq i8 %22, 2
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.if.end15.i_crit_edge

land.lhs.true.i.i.if.end15.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %23 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp10.i.i = icmp eq i8 %24, 2
  br i1 %cmp10.i.i, label %wcn36xx_is_fw_version.exit.i, label %land.lhs.true7.i.i.if.end15.i_crit_edge

land.lhs.true7.i.i.if.end15.i_crit_edge:          ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

wcn36xx_is_fw_version.exit.i:                     ; preds = %land.lhs.true7.i.i
  %25 = ptrtoint ptr %fw_revision.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fw_revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %26)
  %cmp14.i.i = icmp eq i8 %26, 24
  br i1 %cmp14.i.i, label %if.then.i, label %wcn36xx_is_fw_version.exit.i.if.end15.i_crit_edge

wcn36xx_is_fw_version.exit.i.if.end15.i_crit_edge: ; preds = %wcn36xx_is_fw_version.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %wcn36xx_is_fw_version.exit.i
  %27 = ptrtoint ptr %vif_list.i79 to i32
  call void @__asan_load4_noabort(i32 %27)
  %tmp.03.i = load ptr, ptr %vif_list.i79, align 4
  %cmp.not4.i = icmp eq ptr %tmp.03.i, %vif_list.i79
  br i1 %cmp.not4.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.do.body.i_crit_edge

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  br label %do.body.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %do.end8.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %tmp.05.i = phi ptr [ %tmp.0.i, %do.end8.i.do.body.i_crit_edge ], [ %tmp.03.i, %if.then.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %28 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end8.i_crit_edge, label %do.end.i71

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

do.end.i71:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %bss_index.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %tmp.05.i, i32 0, i32 8
  %29 = ptrtoint ptr %bss_index.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bss_index.i, align 4
  %conv.i70 = zext i8 %30 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386, i32 noundef %conv.i70) #13
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i71, %do.body.i.do.end8.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %tmp.05.i, i32 -848
  call void @ieee80211_beacon_loss(ptr noundef %add.ptr.i.i) #10
  %31 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %tmp.0.i = load ptr, ptr %tmp.05.i, align 4
  %cmp.not.i72 = icmp eq ptr %tmp.0.i, %vif_list.i79
  br i1 %cmp.not.i72, label %do.end8.i.cleanup_crit_edge, label %do.end8.i.do.body.i_crit_edge

do.end8.i.do.body.i_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end8.i.cleanup_crit_edge:                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.i:                                       ; preds = %wcn36xx_is_fw_version.exit.i.if.end15.i_crit_edge, %land.lhs.true7.i.i.if.end15.i_crit_edge, %land.lhs.true.i.i.if.end15.i_crit_edge, %sw.bb17.if.end15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %18)
  %cmp16.not.i = icmp eq i32 %18, 9
  br i1 %cmp16.not.i, label %if.end24.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.389) #13
  br label %cleanup

if.end24.i:                                       ; preds = %if.end15.i
  %bss_index39.i = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 1, i32 1
  br label %for.cond30.i

for.cond30.i:                                     ; preds = %for.body36.i.for.cond30.i_crit_edge, %if.end24.i
  %tmp.1.in.i = phi ptr [ %vif_list.i79, %if.end24.i ], [ %tmp.1.i, %for.body36.i.for.cond30.i_crit_edge ]
  %32 = ptrtoint ptr %tmp.1.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp.1.i = load ptr, ptr %tmp.1.in.i, align 4
  %cmp33.not.i = icmp eq ptr %tmp.1.i, %vif_list.i79
  br i1 %cmp33.not.i, label %do.end69.i, label %for.body36.i

for.body36.i:                                     ; preds = %for.cond30.i
  %bss_index37.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %tmp.1.i, i32 0, i32 8
  %33 = ptrtoint ptr %bss_index37.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bss_index37.i, align 4
  %35 = ptrtoint ptr %bss_index39.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bss_index39.i, align 1
  %cmp41.i = icmp eq i8 %34, %36
  br i1 %cmp41.i, label %do.body44.i, label %for.body36.i.for.cond30.i_crit_edge

for.body36.i.for.cond30.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond30.i

do.body44.i:                                      ; preds = %for.body36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %37 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and45.i = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %do.body44.i.do.end57.i_crit_edge, label %do.end50.i

do.body44.i.do.end57.i_crit_edge:                 ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57.i

do.end50.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv40.le.i = zext i8 %34 to i32
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386, i32 noundef %conv40.le.i) #13
  br label %do.end57.i

do.end57.i:                                       ; preds = %do.end50.i, %do.body44.i.do.end57.i_crit_edge
  %add.ptr.i1.i = getelementptr i8, ptr %tmp.1.i, i32 -848
  call void @ieee80211_beacon_loss(ptr noundef %add.ptr.i1.i) #10
  br label %cleanup

do.end69.i:                                       ; preds = %for.cond30.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %bss_index39.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bss_index39.i, align 1
  %conv72.i = zext i8 %39 to i32
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.394, i32 noundef %conv72.i) #13
  br label %cleanup

sw.bb22:                                          ; preds = %list_del.exit
  %msg_len25 = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 0, i32 1
  %40 = ptrtoint ptr %msg_len25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %41)
  %cmp.not.i73 = icmp eq i32 %41, 26
  br i1 %cmp.not.i73, label %do.body1.i, label %do.end.i75

do.end.i75:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %call.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.396) #13
  br label %cleanup

do.body1.i:                                       ; preds = %sw.bb22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %42 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i76 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool.not.i77 = icmp eq i32 %and.i76, 0
  br i1 %tobool.not.i77, label %do.body1.i.do.end11.i_crit_edge, label %do.end5.i

do.body1.i.do.end11.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

do.end5.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr2.i = getelementptr inbounds %struct.wcn36xx_hal_delete_sta_context_ind_msg, ptr %msg, i32 0, i32 4
  %sta_id.i = getelementptr inbounds %struct.wcn36xx_hal_delete_sta_context_ind_msg, ptr %msg, i32 0, i32 2
  %43 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %sta_id.i, align 1
  %conv.i78 = zext i16 %44 to i32
  %reason_code.i = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 3
  %45 = ptrtoint ptr %reason_code.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %reason_code.i, align 1
  %conv7.i = zext i16 %46 to i32
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.399, ptr noundef %addr2.i, i32 noundef %conv.i78, i32 noundef %conv7.i) #13
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end5.i, %do.body1.i.do.end11.i_crit_edge
  %addr242.i = getelementptr inbounds %struct.wcn36xx_hal_delete_sta_context_ind_msg, ptr %msg, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %rcu_read_unlock.exit.i.for.cond.i_crit_edge, %do.end11.i
  %vif_priv.0.in.i = phi ptr [ %vif_list.i79, %do.end11.i ], [ %vif_priv.0.i, %rcu_read_unlock.exit.i.for.cond.i_crit_edge ]
  %47 = ptrtoint ptr %vif_priv.0.in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %vif_priv.0.i = load ptr, ptr %vif_priv.0.in.i, align 4
  %cmp14.not.i = icmp eq ptr %vif_priv.0.i, %vif_list.i79
  br i1 %cmp14.not.i, label %do.end59.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %48 = call i32 @llvm.read_register.i32(metadata !757) #10
  %and.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !769
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i80 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i80, label %for.body.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i81

for.body.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i81:                              ; preds = %for.body.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i81.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i81.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i81
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.407, i32 noundef 696, ptr noundef nonnull @.str.408) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i81.rcu_read_lock.exit.i_crit_edge, %for.body.i.rcu_read_lock.exit.i_crit_edge
  %add.ptr.i.i82 = getelementptr i8, ptr %vif_priv.0.i, i32 -848
  %52 = ptrtoint ptr %add.ptr.i.i82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp17.i = icmp eq i32 %53, 2
  br i1 %cmp17.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %rcu_read_lock.exit.i
  %sta_assoc.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %vif_priv.0.i, i32 0, i32 4
  %54 = ptrtoint ptr %sta_assoc.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sta_assoc.i, align 1, !range !767
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool21.not.i = icmp eq i8 %55, 0
  br i1 %tobool21.not.i, label %if.then19.i.if.end48.i_crit_edge, label %land.lhs.true.i

if.then19.i.if.end48.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

land.lhs.true.i:                                  ; preds = %if.then19.i
  %bss_conf20.i = getelementptr i8, ptr %vif_priv.0.i, i32 -840
  %56 = ptrtoint ptr %bss_conf20.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bss_conf20.i, align 8
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %57, ptr noundef dereferenceable(6) %addr242.i, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool26.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %land.lhs.true.i.if.end48.i_crit_edge

land.lhs.true.i.if.end48.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %58 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and29.i = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then27.i.do.end40.i_crit_edge, label %do.end34.i

if.then27.i.do.end40.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40.i

do.end34.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  %bss_index.i83 = getelementptr inbounds %struct.wcn36xx_vif, ptr %vif_priv.0.i, i32 0, i32 8
  %59 = ptrtoint ptr %bss_index.i83 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bss_index.i83, align 4
  %conv36.i = zext i8 %60 to i32
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.402, i32 noundef %conv36.i) #13
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end34.i, %if.then27.i.do.end40.i_crit_edge
  call void @ieee80211_connection_loss(ptr noundef %add.ptr.i.i82) #10
  br label %if.end48.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %call44.i = call ptr @ieee80211_find_sta(ptr noundef %add.ptr.i.i82, ptr noundef %addr242.i) #10
  %tobool45.not.i = icmp eq ptr %call44.i, null
  br i1 %tobool45.not.i, label %if.else.i.if.end48.i_crit_edge, label %if.then46.i

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ieee80211_report_low_ack(ptr noundef nonnull %call44.i, i32 noundef 0) #10
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.else.i.if.end48.i_crit_edge, %do.end40.i, %land.lhs.true.i.if.end48.i_crit_edge, %if.then19.i.if.end48.i_crit_edge
  %found.1.off0.i = phi i1 [ false, %land.lhs.true.i.if.end48.i_crit_edge ], [ true, %do.end40.i ], [ false, %if.then19.i.if.end48.i_crit_edge ], [ true, %if.then46.i ], [ false, %if.else.i.if.end48.i_crit_edge ]
  %call.i4.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i4.i, label %if.end48.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i7.i

if.end48.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i7.i:                               ; preds = %if.end48.i
  %call1.i5.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.407, i32 noundef 724, ptr noundef nonnull @.str.409) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i7.i.rcu_read_unlock.exit.i_crit_edge, %if.end48.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !770
  %61 = call i32 @llvm.read_register.i32(metadata !757) #10
  %and.i.i.i.i.i11.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %found.1.off0.i, label %rcu_read_unlock.exit.i.cleanup_crit_edge, label %rcu_read_unlock.exit.i.for.cond.i_crit_edge

rcu_read_unlock.exit.i.for.cond.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

rcu_read_unlock.exit.i.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end59.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.405, ptr noundef %addr242.i) #13
  br label %cleanup

sw.bb27:                                          ; preds = %list_del.exit
  %msg_len30 = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 0, i32 1
  %65 = ptrtoint ptr %msg_len30 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_len30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %66)
  %cmp.i84 = icmp ult i32 %66, 20
  br i1 %cmp.i84, label %do.end.i86, label %do.body1.i89

do.end.i86:                                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  %call.i85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.410) #13
  br label %cleanup

do.body1.i89:                                     ; preds = %sw.bb27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %67 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i87 = and i32 %67, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %do.body1.i89.do.end10.i_crit_edge, label %do.end5.i90

do.body1.i89.do.end10.i_crit_edge:                ; preds = %do.body1.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

do.end5.i90:                                      ; preds = %do.body1.i89
  call void @__sanitizer_cov_trace_pc() #12
  %scenario.i = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 2
  %68 = ptrtoint ptr %scenario.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %scenario.i, align 1
  %reason.i = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 2, i32 0, i32 1
  %70 = ptrtoint ptr %reason.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %reason.i, align 1
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.413, i32 noundef %69, i32 noundef %71) #13
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end5.i90, %do.body1.i89.do.end10.i_crit_edge
  %count.i = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 1, i32 1
  %72 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp111.not.i = icmp eq i32 %73, 0
  br i1 %cmp111.not.i, label %do.end10.i.cleanup_crit_edge, label %do.end10.i.do.body12.i_crit_edge

do.end10.i.do.body12.i_crit_edge:                 ; preds = %do.end10.i
  br label %do.body12.i

do.end10.i.cleanup_crit_edge:                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12.i:                                      ; preds = %for.inc.i.do.body12.i_crit_edge, %do.end10.i.do.body12.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.do.body12.i_crit_edge ], [ 0, %do.end10.i.do.body12.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %74 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and13.i = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.for.inc.i_crit_edge, label %do.end18.i

do.body12.i.for.inc.i_crit_edge:                  ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.wcn36xx_hal_print_reg_info_ind, ptr %msg, i32 0, i32 4, i32 %i.02.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %arrayidx.i, align 1
  %value.i = getelementptr %struct.wcn36xx_hal_print_reg_info_ind, ptr %msg, i32 0, i32 4, i32 %i.02.i, i32 1
  %77 = ptrtoint ptr %value.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %value.i, align 1
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.416, i32 noundef %76, i32 noundef %78) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end18.i, %do.body12.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.02.i, 1
  %79 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %count.i, align 1
  %cmp11.i = icmp ult i32 %inc.i, %80
  br i1 %cmp11.i, label %for.inc.i.do.body12.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.do.body12.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i

sw.bb32:                                          ; preds = %list_del.exit
  %msg_len35 = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 0, i32 1
  %81 = ptrtoint ptr %msg_len35 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_len35, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan_info.i) #10
  %83 = call ptr @memset(ptr %scan_info.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %82)
  %cmp.not.i91 = icmp eq i32 %82, 20
  br i1 %cmp.not.i91, label %do.body1.i96, label %do.end.i93

do.end.i93:                                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  %call.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.418) #13
  br label %wcn36xx_smd_hw_scan_ind.exit

do.body1.i96:                                     ; preds = %sw.bb32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %84 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i94 = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i95 = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i95, label %do.body1.i96.do.end10.i99_crit_edge, label %do.end5.i98

do.body1.i96.do.end10.i99_crit_edge:              ; preds = %do.body1.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i99

do.end5.i98:                                      ; preds = %do.body1.i96
  call void @__sanitizer_cov_trace_pc() #12
  %type.i = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 1, i32 1
  %85 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %type.i, align 1
  %call7.i97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.421, i32 noundef %86) #13
  br label %do.end10.i99

do.end10.i99:                                     ; preds = %do.end5.i98, %do.body1.i96.do.end10.i99_crit_edge
  %type11.i = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, ptr %2, i32 1, i32 1
  %87 = ptrtoint ptr %type11.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %type11.i, align 1
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.428)
  switch i32 %88, label %do.end21.i100 [
    i32 64, label %do.end10.i99.sw.bb.i_crit_edge
    i32 16, label %do.end10.i99.sw.bb.i_crit_edge127
    i32 2, label %do.end10.i99.sw.bb12.i_crit_edge
    i32 1, label %do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge
    i32 8, label %do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge128
    i32 32, label %do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge129
    i32 128, label %do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge130
  ]

do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge130: ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_hw_scan_ind.exit

do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge129: ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_hw_scan_ind.exit

do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge128: ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_hw_scan_ind.exit

do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge: ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_hw_scan_ind.exit

do.end10.i99.sw.bb12.i_crit_edge:                 ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

do.end10.i99.sw.bb.i_crit_edge127:                ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.end10.i99.sw.bb.i_crit_edge:                   ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end10.i99.sw.bb.i_crit_edge, %do.end10.i99.sw.bb.i_crit_edge127
  %90 = ptrtoint ptr %aborted.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %aborted.i, align 2
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %sw.bb.i, %do.end10.i99.sw.bb12.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %scan_lock.i, i32 noundef 0) #10
  %91 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %scan_req.i, align 4
  %92 = ptrtoint ptr %scan_aborted.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %scan_aborted.i, align 4, !range !767
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool13.not.i = icmp eq i8 %93, 0
  br i1 %tobool13.not.i, label %sw.bb12.i.if.end16.i_crit_edge, label %if.then14.i

sw.bb12.i.if.end16.i_crit_edge:                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then14.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %aborted.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %aborted.i, align 2
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %sw.bb12.i.if.end16.i_crit_edge
  call void @mutex_unlock(ptr noundef %scan_lock.i) #10
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr, align 4
  call void @ieee80211_scan_completed(ptr noundef %96, ptr noundef nonnull %scan_info.i) #10
  br label %wcn36xx_smd_hw_scan_ind.exit

do.end21.i100:                                    ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #12
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.424, i32 noundef %88) #13
  br label %wcn36xx_smd_hw_scan_ind.exit

wcn36xx_smd_hw_scan_ind.exit:                     ; preds = %do.end21.i100, %if.end16.i, %do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge, %do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge128, %do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge129, %do.end10.i99.wcn36xx_smd_hw_scan_ind.exit_crit_edge130, %do.end.i93
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan_info.i) #10
  br label %cleanup

do.end39:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, i32 noundef %bf.lshr) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %wcn36xx_smd_hw_scan_ind.exit, %for.inc.i.cleanup_crit_edge, %do.end10.i.cleanup_crit_edge, %do.end.i86, %do.end59.i, %rcu_read_unlock.exit.i.cleanup_crit_edge, %do.end.i75, %do.end69.i, %do.end57.i, %do.end21.i, %do.end8.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.i, %do.end.i, %list_del.exit.cleanup_crit_edge, %list_del.exit.cleanup_crit_edge125, %list_del.exit.cleanup_crit_edge126
  call void @kfree(ptr noundef %2) #10
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hal_ind_lock) #10
  %97 = ptrtoint ptr %hal_ind_queue to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %hal_ind_queue, align 4
  %cmp.i.not = icmp eq ptr %98, %hal_ind_queue
  br i1 %cmp.i.not, label %cleanup.cleanup46_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.cleanup46_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup46

cleanup46:                                        ; preds = %cleanup.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %call3.lcssa = phi i32 [ %call3116, %entry.cleanup46_crit_edge ], [ %call3, %cleanup.cleanup46_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hal_ind_lock, i32 noundef %call3.lcssa) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wcn36xx_smd_close(ptr noundef %wcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_ind_work = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 29
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %hal_ind_work) #10
  %hal_ind_wq = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 28
  %0 = ptrtoint ptr %hal_ind_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_ind_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #10
  %hal_ind_queue = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 31
  %2 = ptrtoint ptr %hal_ind_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hal_ind_queue, align 4
  %cmp.not19 = icmp eq ptr %3, %hal_ind_queue
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %msg.020 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %msg.020 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %msg.020, align 4
  tail call void @kfree(ptr noundef %msg.020) #10
  %cmp.not = icmp eq ptr %tmp.0, %hal_ind_queue
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcn36xx_smd_set_sta_params_v1(ptr nocapture noundef readonly %wcn, ptr nocapture noundef readonly %vif, ptr noundef %sta, ptr noundef %sta_par) unnamed_addr #0 align 64 {
entry:
  %sta_par_v0 = alloca %struct.wcn36xx_hal_config_sta_params, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 105, ptr nonnull %sta_par_v0) #10
  %0 = call ptr @memset(ptr %sta_par_v0, i32 255, i32 105)
  call fastcc void @wcn36xx_smd_set_sta_params(ptr noundef %wcn, ptr noundef %vif, ptr noundef %sta, ptr noundef nonnull %sta_par_v0)
  %1 = call ptr @memcpy(ptr %sta_par, ptr %sta_par_v0, i32 6)
  %mac.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 4
  %mac2.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 4
  %2 = call ptr @memcpy(ptr %mac.i, ptr %mac2.i, i32 6)
  %aid.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 1
  %3 = ptrtoint ptr %aid.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %aid.i, align 1
  %aid4.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 1
  %5 = ptrtoint ptr %aid4.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %aid4.i, align 1
  %type.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i, align 1
  %type5.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 2
  %8 = ptrtoint ptr %type5.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %type5.i, align 1
  %short_preamble_supported.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 3
  %9 = ptrtoint ptr %short_preamble_supported.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %short_preamble_supported.i, align 1
  %short_preamble_supported6.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 3
  %11 = ptrtoint ptr %short_preamble_supported6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %short_preamble_supported6.i, align 1
  %listen_interval.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 5
  %12 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %listen_interval.i, align 1
  %listen_interval7.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 5
  %14 = ptrtoint ptr %listen_interval7.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %listen_interval7.i, align 1
  %wmm_enabled.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 6
  %15 = ptrtoint ptr %wmm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wmm_enabled.i, align 1
  %wmm_enabled8.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 6
  %17 = ptrtoint ptr %wmm_enabled8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %wmm_enabled8.i, align 1
  %ht_capable.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 7
  %18 = ptrtoint ptr %ht_capable.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ht_capable.i, align 1
  %ht_capable9.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 7
  %20 = ptrtoint ptr %ht_capable9.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ht_capable9.i, align 1
  %tx_channel_width_set.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 8
  %21 = ptrtoint ptr %tx_channel_width_set.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_channel_width_set.i, align 1
  %tx_channel_width_set10.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 8
  %23 = ptrtoint ptr %tx_channel_width_set10.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tx_channel_width_set10.i, align 1
  %rifs_mode.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 9
  %24 = ptrtoint ptr %rifs_mode.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rifs_mode.i, align 1
  %rifs_mode11.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 9
  %26 = ptrtoint ptr %rifs_mode11.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rifs_mode11.i, align 1
  %lsig_txop_protection.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 10
  %27 = ptrtoint ptr %lsig_txop_protection.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lsig_txop_protection.i, align 1
  %lsig_txop_protection12.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 10
  %29 = ptrtoint ptr %lsig_txop_protection12.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %lsig_txop_protection12.i, align 1
  %max_ampdu_size.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 11
  %30 = ptrtoint ptr %max_ampdu_size.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_ampdu_size.i, align 1
  %max_ampdu_size13.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 11
  %32 = ptrtoint ptr %max_ampdu_size13.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %max_ampdu_size13.i, align 1
  %max_ampdu_density.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 12
  %33 = ptrtoint ptr %max_ampdu_density.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max_ampdu_density.i, align 1
  %max_ampdu_density14.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 12
  %35 = ptrtoint ptr %max_ampdu_density14.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %max_ampdu_density14.i, align 1
  %sgi_40mhz.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 14
  %36 = ptrtoint ptr %sgi_40mhz.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sgi_40mhz.i, align 1
  %sgi_40mhz15.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 14
  %38 = ptrtoint ptr %sgi_40mhz15.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %sgi_40mhz15.i, align 1
  %sgi_20Mhz.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 15
  %39 = ptrtoint ptr %sgi_20Mhz.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sgi_20Mhz.i, align 1
  %sgi_20Mhz16.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 15
  %41 = ptrtoint ptr %sgi_20Mhz16.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %sgi_20Mhz16.i, align 1
  %rmf.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 17
  %42 = ptrtoint ptr %rmf.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rmf.i, align 1
  %rmf17.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 16
  %44 = ptrtoint ptr %rmf17.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %rmf17.i, align 1
  %encrypt_type.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 18
  %45 = ptrtoint ptr %encrypt_type.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %encrypt_type.i, align 1
  %encrypt_type18.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 17
  %47 = ptrtoint ptr %encrypt_type18.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %encrypt_type18.i, align 1
  %action.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 19
  %48 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %action.i, align 1
  %action19.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 18
  %50 = ptrtoint ptr %action19.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %action19.i, align 1
  %uapsd.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 20
  %51 = ptrtoint ptr %uapsd.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %uapsd.i, align 1
  %uapsd20.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 19
  %53 = ptrtoint ptr %uapsd20.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %uapsd20.i, align 1
  %max_sp_len.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 21
  %54 = ptrtoint ptr %max_sp_len.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_sp_len.i, align 1
  %max_sp_len21.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 20
  %56 = ptrtoint ptr %max_sp_len21.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %max_sp_len21.i, align 1
  %green_field_capable.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 22
  %57 = ptrtoint ptr %green_field_capable.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %green_field_capable.i, align 1
  %green_field_capable22.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 21
  %59 = ptrtoint ptr %green_field_capable22.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %green_field_capable22.i, align 1
  %mimo_ps.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 23
  %60 = ptrtoint ptr %mimo_ps.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %mimo_ps.i, align 1
  %mimo_ps23.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 22
  %62 = ptrtoint ptr %mimo_ps23.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %mimo_ps23.i, align 1
  %delayed_ba_support.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 24
  %63 = ptrtoint ptr %delayed_ba_support.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %delayed_ba_support.i, align 1
  %delayed_ba_support24.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 23
  %65 = ptrtoint ptr %delayed_ba_support24.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %delayed_ba_support24.i, align 1
  %max_ampdu_duration.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 25
  %66 = ptrtoint ptr %max_ampdu_duration.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %max_ampdu_duration.i, align 1
  %max_ampdu_duration25.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 24
  %68 = ptrtoint ptr %max_ampdu_duration25.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %max_ampdu_duration25.i, align 1
  %dsss_cck_mode_40mhz.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 26
  %69 = ptrtoint ptr %dsss_cck_mode_40mhz.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dsss_cck_mode_40mhz.i, align 1
  %dsss_cck_mode_40mhz26.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 25
  %71 = ptrtoint ptr %dsss_cck_mode_40mhz26.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %dsss_cck_mode_40mhz26.i, align 1
  %supported_rates.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 30
  %supported_rates27.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 16
  %72 = call ptr @memcpy(ptr %supported_rates.i, ptr %supported_rates27.i, i32 58)
  %sta_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 27
  %73 = ptrtoint ptr %sta_index.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sta_index.i, align 1
  %sta_index28.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 26
  %75 = ptrtoint ptr %sta_index28.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %sta_index28.i, align 1
  %bssid_index.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 28
  %76 = ptrtoint ptr %bssid_index.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bssid_index.i, align 1
  %bssid_index29.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 27
  %78 = ptrtoint ptr %bssid_index29.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %bssid_index29.i, align 1
  %p2p.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_par_v0, i32 0, i32 29
  %79 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %p2p.i, align 1
  %p2p30.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 28
  %81 = ptrtoint ptr %p2p30.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %p2p30.i, align 1
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %vht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %82 = ptrtoint ptr %vht_cap.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %vht_cap.i, align 4, !range !767
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i, label %if.then.wcn36xx_smd_set_sta_vht_params.exit_crit_edge, label %if.then.i

if.then.wcn36xx_smd_set_sta_vht_params.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_set_sta_vht_params.exit

if.then.i:                                        ; preds = %if.then
  %cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %84 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cap.i, align 4
  %vht_capable.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 31
  %86 = ptrtoint ptr %vht_capable.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %vht_capable.i, align 1
  %87 = trunc i32 %85 to i8
  %vht_ldpc_enabled.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 29
  %88 = ptrtoint ptr %vht_ldpc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load.i = load i8, ptr %vht_ldpc_enabled.i, align 1
  %89 = shl i8 %87, 2
  %bf.value.i = and i8 %89, 64
  %bf.clear.i = and i8 %bf.load.i, -65
  %bf.set.i = or i8 %bf.clear.i, %bf.value.i
  store i8 %bf.set.i, ptr %vht_ldpc_enabled.i, align 1
  %arrayidx.i.i = getelementptr %struct.wcn36xx, ptr %wcn, i32 0, i32 9, i32 1
  %90 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i, align 4
  %92 = and i32 %91, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool6.not.i = icmp eq i32 %92, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then.i
  %and.i37.i = lshr i32 %85, 19
  %93 = trunc i32 %and.i37.i to i8
  %94 = and i8 %93, 1
  %bf.value10.i = shl nuw nsw i8 %94, 4
  %bf.clear12.i = and i8 %bf.set.i, -17
  %bf.set13.i = or i8 %bf.clear12.i, %bf.value10.i
  %95 = ptrtoint ptr %vht_ldpc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %bf.set13.i, ptr %vht_ldpc_enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool17.not.i = icmp eq i8 %94, 0
  br i1 %tobool17.not.i, label %if.then7.i.if.end26.i_crit_edge, label %if.then18.i

if.then7.i.if.end26.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then18.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set21.i = or i8 %bf.set13.i, 32
  br label %if.end26.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear24.i = and i8 %bf.set.i, -17
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %if.else.i, %if.then18.i
  %bf.set21.sink.i = phi i8 [ %bf.set21.i, %if.then18.i ], [ %bf.clear24.i, %if.else.i ]
  %96 = ptrtoint ptr %vht_ldpc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %bf.set21.sink.i, ptr %vht_ldpc_enabled.i, align 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.sink.split.i, %if.then7.i.if.end26.i_crit_edge
  %vht_tx_channel_width_set.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 32
  %97 = ptrtoint ptr %vht_tx_channel_width_set.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %vht_tx_channel_width_set.i, align 1
  br label %wcn36xx_smd_set_sta_vht_params.exit

wcn36xx_smd_set_sta_vht_params.exit:              ; preds = %if.end26.i, %if.then.wcn36xx_smd_set_sta_vht_params.exit_crit_edge
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ht_supported.i, align 2, !range !767
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i17 = icmp eq i8 %99, 0
  br i1 %tobool.not.i17, label %wcn36xx_smd_set_sta_vht_params.exit.wcn36xx_smd_set_sta_ht_ldpc_params.exit_crit_edge, label %if.then.i21

wcn36xx_smd_set_sta_vht_params.exit.wcn36xx_smd_set_sta_ht_ldpc_params.exit_crit_edge: ; preds = %wcn36xx_smd_set_sta_vht_params.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_set_sta_ht_ldpc_params.exit

if.then.i21:                                      ; preds = %wcn36xx_smd_set_sta_vht_params.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %100 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %ht_cap.i, align 4
  %102 = trunc i16 %101 to i8
  %ht_ldpc_enabled.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 29
  %103 = ptrtoint ptr %ht_ldpc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load.i18 = load i8, ptr %ht_ldpc_enabled.i, align 1
  %104 = shl i8 %102, 7
  %bf.clear.i19 = and i8 %bf.load.i18, 127
  %bf.set.i20 = or i8 %bf.clear.i19, %104
  store i8 %bf.set.i20, ptr %ht_ldpc_enabled.i, align 1
  br label %wcn36xx_smd_set_sta_ht_ldpc_params.exit

wcn36xx_smd_set_sta_ht_ldpc_params.exit:          ; preds = %if.then.i21, %wcn36xx_smd_set_sta_vht_params.exit.wcn36xx_smd_set_sta_ht_ldpc_params.exit_crit_edge
  %supported_rates1 = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 10
  %105 = call ptr @memcpy(ptr %supported_rates.i, ptr %supported_rates1, i32 66)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @wcn36xx_set_default_rates_v1(ptr noundef %supported_rates.i) #10
  %rf_id.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 51
  %106 = ptrtoint ptr %rf_id.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rf_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13952, i32 %107)
  %cmp.i = icmp eq i32 %107, 13952
  %vht_capable.i22 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 31
  br i1 %cmp.i, label %if.then.i25, label %if.else.i26

if.then.i25:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %vht_capable.i22 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %vht_capable.i22, align 1
  %vht_tx_mu_beamformee_capable.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 29
  %109 = ptrtoint ptr %vht_tx_mu_beamformee_capable.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load.i23 = load i8, ptr %vht_tx_mu_beamformee_capable.i, align 1
  %bf.set.i24 = or i8 %bf.load.i23, 16
  store i8 %bf.set.i24, ptr %vht_tx_mu_beamformee_capable.i, align 1
  br label %wcn36xx_smd_set_sta_default_vht_params.exit

if.else.i26:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %vht_capable.i22 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %vht_capable.i22, align 1
  %vht_tx_mu_beamformee_capable2.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 29
  %111 = ptrtoint ptr %vht_tx_mu_beamformee_capable2.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load3.i = load i8, ptr %vht_tx_mu_beamformee_capable2.i, align 1
  %bf.clear4.i = and i8 %bf.load3.i, -17
  store i8 %bf.clear4.i, ptr %vht_tx_mu_beamformee_capable2.i, align 1
  br label %wcn36xx_smd_set_sta_default_vht_params.exit

wcn36xx_smd_set_sta_default_vht_params.exit:      ; preds = %if.else.i26, %if.then.i25
  %vht_ldpc_enabled.i27 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 29
  %112 = ptrtoint ptr %vht_ldpc_enabled.i27 to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load6.i = load i8, ptr %vht_ldpc_enabled.i27, align 1
  %vht_tx_channel_width_set.i28 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, ptr %sta_par, i32 0, i32 32
  %113 = ptrtoint ptr %vht_tx_channel_width_set.i28 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %vht_tx_channel_width_set.i28, align 1
  %bf.clear10.i = and i8 %bf.load6.i, -97
  store i8 %bf.clear10.i, ptr %vht_ldpc_enabled.i27, align 1
  %114 = ptrtoint ptr %rf_id.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rf_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13952, i32 %115)
  %cmp.i30 = icmp eq i32 %115, 13952
  %bf.clear3.i = and i8 %bf.load6.i, 31
  %masksel.i = select i1 %cmp.i30, i8 -128, i8 0
  %bf.clear3.sink.i = or i8 %masksel.i, %bf.clear3.i
  %116 = ptrtoint ptr %vht_ldpc_enabled.i27 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %bf.clear3.sink.i, ptr %vht_ldpc_enabled.i27, align 1
  br label %if.end

if.end:                                           ; preds = %wcn36xx_smd_set_sta_default_vht_params.exit, %wcn36xx_smd_set_sta_ht_ldpc_params.exit
  call void @llvm.lifetime.end.p0(i64 105, ptr nonnull %sta_par_v0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcn36xx_smd_set_sta_params(ptr nocapture noundef readonly %wcn, ptr nocapture noundef readonly %vif, ptr noundef readonly %sta, ptr noundef %sta_params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.429)
  switch i32 %1, label %if.else [
    i32 1, label %entry.if.then_crit_edge
    i32 3, label %entry.if.then_crit_edge90
    i32 7, label %entry.if.then_crit_edge91
  ]

entry.if.then_crit_edge91:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge90:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge90, %entry.if.then_crit_edge91
  %type6 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 2
  %3 = ptrtoint ptr %type6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %type6, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %type7 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 2
  %4 = ptrtoint ptr %type7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %type7, align 1
  %self_sta_index = getelementptr inbounds %struct.wcn36xx_vif, ptr %drv_priv.i, i32 0, i32 9
  %5 = ptrtoint ptr %self_sta_index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %self_sta_index, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %6, %if.else ], [ -1, %if.then ]
  %sta_index8 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 27
  %7 = ptrtoint ptr %sta_index8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %sta_index8, align 1
  %8 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wcn, align 4
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %listen_interval, align 4
  %listen_interval9 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 5
  %12 = ptrtoint ptr %listen_interval9 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %listen_interval9, align 1
  %13 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp11 = icmp eq i32 %14, 2
  %mac = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 4
  %sta_params.sink = select i1 %cmp11, ptr %mac, ptr %sta_params
  %addr14 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %sta_params.sink, ptr %addr14, i32 6)
  %encrypt_type = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %encrypt_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %encrypt_type, align 4
  %encrypt_type17 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 18
  %18 = ptrtoint ptr %encrypt_type17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %encrypt_type17, align 1
  %short_preamble_supported = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 3
  %19 = ptrtoint ptr %short_preamble_supported to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %short_preamble_supported, align 1
  %rifs_mode = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 9
  %20 = ptrtoint ptr %rifs_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %rifs_mode, align 1
  %rmf = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 17
  %21 = ptrtoint ptr %rmf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %rmf, align 1
  %action = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 19
  %22 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %action, align 1
  %uapsd = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 20
  %23 = ptrtoint ptr %uapsd to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %uapsd, align 1
  %mimo_ps = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 23
  %24 = ptrtoint ptr %mimo_ps to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %mimo_ps, align 1
  %max_ampdu_duration = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 25
  %25 = ptrtoint ptr %max_ampdu_duration to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %max_ampdu_duration, align 1
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %26 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bss_index, align 4
  %bssid_index = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 28
  %28 = ptrtoint ptr %bssid_index to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %bssid_index, align 1
  %p2p = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 29
  %29 = ptrtoint ptr %p2p to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %p2p, align 1
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.else34, label %if.then18

if.then18:                                        ; preds = %if.end
  %drv_priv.i78 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %30 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp21 = icmp eq i32 %31, 2
  %mac27 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 4
  %mac27.sink = select i1 %cmp21, ptr %sta_params, ptr %mac27
  %addr28 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %32 = call ptr @memcpy(ptr %mac27.sink, ptr %addr28, i32 6)
  %wme = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 10
  %33 = ptrtoint ptr %wme to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wme, align 4, !range !767
  %wmm_enabled = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 6
  %35 = ptrtoint ptr %wmm_enabled to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %wmm_enabled, align 1
  %max_sp = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 12
  %36 = ptrtoint ptr %max_sp to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_sp, align 2
  %max_sp_len = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 21
  %38 = ptrtoint ptr %max_sp_len to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %max_sp_len, align 1
  %aid = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %aid, align 4
  %aid32 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 1
  %41 = ptrtoint ptr %aid32 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %aid32, align 1
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ht_supported.i, align 2, !range !767
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.then18.wcn36xx_smd_set_sta_ht_params.exit_crit_edge, label %if.then.i

if.then18.wcn36xx_smd_set_sta_ht_params.exit_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_set_sta_ht_params.exit

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %44 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ht_cap.i, align 4
  %ht_capable.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 7
  %46 = ptrtoint ptr %ht_capable.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %ht_capable.i, align 1
  %47 = trunc i16 %45 to i8
  %48 = lshr i8 %47, 1
  %49 = and i8 %48, 1
  %tx_channel_width_set.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 8
  %50 = ptrtoint ptr %tx_channel_width_set.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %tx_channel_width_set.i, align 1
  %and.i38.lobit.i = lshr i16 %45, 15
  %51 = trunc i16 %and.i38.lobit.i to i8
  %lsig_txop_protection.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 10
  %52 = ptrtoint ptr %lsig_txop_protection.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %lsig_txop_protection.i, align 1
  %ampdu_factor.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %53 = ptrtoint ptr %ampdu_factor.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ampdu_factor.i, align 1
  %max_ampdu_size.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 11
  %55 = ptrtoint ptr %max_ampdu_size.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %max_ampdu_size.i, align 1
  %ampdu_density.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %ampdu_density.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ampdu_density.i, align 4
  %max_ampdu_density.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 12
  %58 = ptrtoint ptr %max_ampdu_density.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %max_ampdu_density.i, align 1
  %59 = lshr i16 %45, 11
  %60 = trunc i16 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  %max_amsdu_size.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 13
  %63 = ptrtoint ptr %max_amsdu_size.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %max_amsdu_size.i, align 1
  %64 = lshr i8 %47, 5
  %65 = and i8 %64, 1
  %sgi_20Mhz.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 15
  %66 = ptrtoint ptr %sgi_20Mhz.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %sgi_20Mhz.i, align 1
  %67 = lshr i8 %47, 6
  %68 = and i8 %67, 1
  %sgi_40mhz.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 14
  %69 = ptrtoint ptr %sgi_40mhz.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %sgi_40mhz.i, align 1
  %70 = lshr i8 %47, 4
  %71 = and i8 %70, 1
  %green_field_capable.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 22
  %72 = ptrtoint ptr %green_field_capable.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %green_field_capable.i, align 1
  %and.i53.i = lshr i16 %45, 10
  %73 = trunc i16 %and.i53.i to i8
  %74 = and i8 %73, 1
  %delayed_ba_support.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 24
  %75 = ptrtoint ptr %delayed_ba_support.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %delayed_ba_support.i, align 1
  %76 = lshr i16 %45, 12
  %77 = trunc i16 %76 to i8
  %78 = and i8 %77, 1
  %dsss_cck_mode_40mhz.i = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 26
  %79 = ptrtoint ptr %dsss_cck_mode_40mhz.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %dsss_cck_mode_40mhz.i, align 1
  br label %wcn36xx_smd_set_sta_ht_params.exit

wcn36xx_smd_set_sta_ht_params.exit:               ; preds = %if.then.i, %if.then18.wcn36xx_smd_set_sta_ht_params.exit_crit_edge
  %supported_rates = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 16
  %supported_rates33 = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i78, i32 0, i32 10
  %80 = call ptr @memcpy(ptr %supported_rates, ptr %supported_rates33, i32 58)
  br label %if.end36

if.else34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %supported_rates35 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 16
  tail call void @wcn36xx_set_default_rates(ptr noundef %supported_rates35) #10
  %ht_capable.i79 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 7
  %81 = ptrtoint ptr %ht_capable.i79 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %ht_capable.i79, align 1
  %tx_channel_width_set.i80 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 8
  %82 = ptrtoint ptr %tx_channel_width_set.i80 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %tx_channel_width_set.i80, align 1
  %lsig_txop_protection.i81 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 10
  %83 = ptrtoint ptr %lsig_txop_protection.i81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %lsig_txop_protection.i81, align 1
  %max_ampdu_size.i82 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 11
  %84 = ptrtoint ptr %max_ampdu_size.i82 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 3, ptr %max_ampdu_size.i82, align 1
  %max_ampdu_density.i83 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 12
  %85 = ptrtoint ptr %max_ampdu_density.i83 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 5, ptr %max_ampdu_density.i83, align 1
  %max_amsdu_size.i84 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 13
  %86 = ptrtoint ptr %max_amsdu_size.i84 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %max_amsdu_size.i84, align 1
  %sgi_20Mhz.i85 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 15
  %87 = ptrtoint ptr %sgi_20Mhz.i85 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %sgi_20Mhz.i85, align 1
  %sgi_40mhz.i86 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 14
  %88 = ptrtoint ptr %sgi_40mhz.i86 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %sgi_40mhz.i86, align 1
  %green_field_capable.i87 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 22
  %89 = ptrtoint ptr %green_field_capable.i87 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %green_field_capable.i87, align 1
  %delayed_ba_support.i88 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 24
  %90 = ptrtoint ptr %delayed_ba_support.i88 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %delayed_ba_support.i88, align 1
  %dsss_cck_mode_40mhz.i89 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, ptr %sta_params, i32 0, i32 26
  %91 = ptrtoint ptr %dsss_cck_mode_40mhz.i89 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %dsss_cck_mode_40mhz.i89, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %wcn36xx_smd_set_sta_ht_params.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcn36xx_set_default_rates_v1(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcn36xx_set_default_rates(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcn36xx_smd_set_bss_params(ptr nocapture noundef readonly %wcn, ptr nocapture noundef %vif, ptr noundef readonly %sta, ptr nocapture noundef readonly %bssid, i1 noundef zeroext %update, ptr noundef %bss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bssid, align 4
  %add.ptr.i = getelementptr i8, ptr %bssid, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %3 to i32
  %or.i = or i32 %1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge, !prof !771

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1591, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = call ptr @memcpy(ptr %bss, ptr %bssid, i32 6)
  %self_mac_addr = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 1
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %self_mac_addr, ptr %addr, i32 6)
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.430)
  switch i32 %7, label %do.end40 [
    i32 2, label %if.then22
    i32 3, label %if.end.if.then27_crit_edge
    i32 7, label %if.end.if.then27_crit_edge170
    i32 1, label %if.then34
  ]

if.end.if.then27_crit_edge170:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bss_type = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 2
  %9 = ptrtoint ptr %bss_type to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %bss_type, align 1
  %oper_mode = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 3
  %10 = ptrtoint ptr %oper_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %oper_mode, align 1
  %wcn36xx_hal_persona = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 38
  %11 = ptrtoint ptr %wcn36xx_hal_persona to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %wcn36xx_hal_persona, align 1
  br label %if.end46

if.then27:                                        ; preds = %if.end.if.then27_crit_edge, %if.end.if.then27_crit_edge170
  %bss_type28 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 2
  %12 = ptrtoint ptr %bss_type28 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 1, ptr %bss_type28, align 1
  %oper_mode29 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 3
  %13 = ptrtoint ptr %oper_mode29 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %oper_mode29, align 1
  %wcn36xx_hal_persona30 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 38
  %14 = ptrtoint ptr %wcn36xx_hal_persona30 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %wcn36xx_hal_persona30, align 1
  br label %if.end46

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bss_type35 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 2
  %15 = ptrtoint ptr %bss_type35 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 2, ptr %bss_type35, align 1
  %oper_mode36 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 3
  %16 = ptrtoint ptr %oper_mode36 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %oper_mode36, align 1
  br label %if.end46

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.364, i32 noundef %7) #13
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.then34, %if.then27, %if.then22
  %17 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp48 = icmp eq i32 %18, 2
  br i1 %cmp48, label %if.then49, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  %19 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wcn, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chandef.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i155 = icmp eq i32 %24, 1
  br i1 %cmp.i155, label %if.then49.if.end51_crit_edge, label %if.else.i

if.then49.if.end51_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.else.i:                                        ; preds = %if.then49
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %if.else.i.if.else10.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else10.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ht_supported.i, align 2, !range !767
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i, label %land.lhs.true6.critedge.i, label %land.lhs.true.i.if.end51_crit_edge

land.lhs.true.i.if.end51_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true6.critedge.i:                        ; preds = %land.lhs.true.i
  %27 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sta, align 4
  %and.i = and i32 %28, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.critedge.i.if.else10.i_crit_edge, label %land.lhs.true6.critedge.i.if.end51_crit_edge

land.lhs.true6.critedge.i.if.end51_crit_edge:     ; preds = %land.lhs.true6.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true6.critedge.i.if.else10.i_crit_edge:  ; preds = %land.lhs.true6.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10.i

if.else10.i:                                      ; preds = %land.lhs.true6.critedge.i.if.else10.i_crit_edge, %if.else.i.if.else10.i_crit_edge
  br label %if.end51

if.end51:                                         ; preds = %if.else10.i, %land.lhs.true6.critedge.i.if.end51_crit_edge, %land.lhs.true.i.if.end51_crit_edge, %if.then49.if.end51_crit_edge, %if.end46.if.end51_crit_edge
  %.sink = phi i32 [ 1, %if.else10.i ], [ 0, %if.then49.if.end51_crit_edge ], [ 3, %land.lhs.true.i.if.end51_crit_edge ], [ 2, %land.lhs.true6.critedge.i.if.end51_crit_edge ], [ 3, %if.end46.if.end51_crit_edge ]
  %nw_type = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 4
  %29 = ptrtoint ptr %nw_type to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %.sink, ptr %nw_type, align 1
  %use_short_slot = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 16
  %30 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %use_short_slot, align 2, !range !767
  %short_slot_time_supported = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 5
  %32 = ptrtoint ptr %short_slot_time_supported to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %short_slot_time_supported, align 1
  %lla_coexist = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 6
  %33 = ptrtoint ptr %lla_coexist to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %lla_coexist, align 1
  %llb_coexist = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 7
  %34 = ptrtoint ptr %llb_coexist to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %llb_coexist, align 1
  %llg_coexist = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 8
  %35 = ptrtoint ptr %llg_coexist to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %llg_coexist, align 1
  %rifs_mode = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 12
  %36 = ptrtoint ptr %rifs_mode to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %rifs_mode, align 1
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %37 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %beacon_int, align 2
  %beacon_interval = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 13
  %39 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %beacon_interval, align 1
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %40 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dtim_period, align 8
  %dtim_period54 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 14
  %42 = ptrtoint ptr %dtim_period54 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %dtim_period54, align 1
  %tobool.not.i156 = icmp eq ptr %sta, null
  br i1 %tobool.not.i156, label %if.end51.wcn36xx_smd_set_bss_ht_params.exit_crit_edge, label %land.lhs.true.i159

if.end51.wcn36xx_smd_set_bss_ht_params.exit_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_set_bss_ht_params.exit

land.lhs.true.i159:                               ; preds = %if.end51
  %ht_supported.i157 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %ht_supported.i157 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ht_supported.i157, align 2, !range !767
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool1.not.i158 = icmp eq i8 %44, 0
  br i1 %tobool1.not.i158, label %land.lhs.true.i159.wcn36xx_smd_set_bss_ht_params.exit_crit_edge, label %if.then.i

land.lhs.true.i159.wcn36xx_smd_set_bss_ht_params.exit_crit_edge: ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_smd_set_bss_ht_params.exit

if.then.i:                                        ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #12
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %45 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ht_cap.i, align 4
  %ht.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 23
  %47 = ptrtoint ptr %ht.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %ht.i, align 1
  %48 = trunc i16 %46 to i8
  %49 = lshr i8 %48, 1
  %50 = and i8 %49, 1
  %tx_channel_width_set.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 15
  %51 = ptrtoint ptr %tx_channel_width_set.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %tx_channel_width_set.i, align 1
  %.lobit.i = lshr i16 %46, 15
  %52 = trunc i16 %.lobit.i to i8
  %lsig_tx_op_protection_full_support.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 11
  %53 = ptrtoint ptr %lsig_tx_op_protection_full_support.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %lsig_tx_op_protection_full_support.i, align 1
  %ht_operation_mode.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 27
  %54 = ptrtoint ptr %ht_operation_mode.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ht_operation_mode.i, align 8
  %conv8.i = zext i16 %55 to i32
  %ht_oper_mode.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 26
  %56 = ptrtoint ptr %ht_oper_mode.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %conv8.i, ptr %ht_oper_mode.i, align 1
  %57 = load i16, ptr %ht_operation_mode.i, align 8
  %58 = trunc i16 %57 to i8
  %59 = lshr i8 %58, 2
  %60 = and i8 %59, 1
  %lln_non_gf_coexist.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 10
  %61 = ptrtoint ptr %lln_non_gf_coexist.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %lln_non_gf_coexist.i, align 1
  %dual_cts_protection.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 27
  %62 = ptrtoint ptr %dual_cts_protection.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %dual_cts_protection.i, align 1
  %ht20_coexist.i = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 9
  %63 = ptrtoint ptr %ht20_coexist.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %ht20_coexist.i, align 1
  br label %wcn36xx_smd_set_bss_ht_params.exit

wcn36xx_smd_set_bss_ht_params.exit:               ; preds = %if.then.i, %land.lhs.true.i159.wcn36xx_smd_set_bss_ht_params.exit_crit_edge, %if.end51.wcn36xx_smd_set_bss_ht_params.exit_crit_edge
  %64 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wcn, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %hw_value, align 2
  %conv56 = trunc i16 %69 to i8
  %oper_channel = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 16
  %70 = ptrtoint ptr %oper_channel to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv56, ptr %oper_channel, align 1
  %71 = load ptr, ptr %wcn, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %71, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp.i160 = icmp eq i32 %73, 2
  br i1 %cmp.i160, label %conf_is_ht40_minus.exit, label %wcn36xx_smd_set_bss_ht_params.exit.if.else67_crit_edge

wcn36xx_smd_set_bss_ht_params.exit.if.else67_crit_edge: ; preds = %wcn36xx_smd_set_bss_ht_params.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else67

conf_is_ht40_minus.exit:                          ; preds = %wcn36xx_smd_set_bss_ht_params.exit
  %chandef.i161 = getelementptr inbounds %struct.ieee80211_conf, ptr %71, i32 0, i32 7
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %71, i32 0, i32 7, i32 2
  %74 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %center_freq1.i, align 4
  %76 = ptrtoint ptr %chandef.i161 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chandef.i161, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %79)
  %cmp3.i = icmp ult i32 %75, %79
  br i1 %cmp3.i, label %conf_is_ht40_minus.exit.if.end70_crit_edge, label %conf_is_ht40_plus.exit

conf_is_ht40_minus.exit.if.end70_crit_edge:       ; preds = %conf_is_ht40_minus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

conf_is_ht40_plus.exit:                           ; preds = %conf_is_ht40_minus.exit
  %80 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %center_freq1.i, align 4
  %82 = ptrtoint ptr %chandef.i161 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chandef.i161, align 4
  %center_freq.i166 = getelementptr inbounds %struct.ieee80211_channel, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %center_freq.i166 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %center_freq.i166, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %85)
  %cmp3.i167 = icmp ugt i32 %81, %85
  br i1 %cmp3.i167, label %conf_is_ht40_plus.exit.if.end70_crit_edge, label %conf_is_ht40_plus.exit.if.else67_crit_edge

conf_is_ht40_plus.exit.if.else67_crit_edge:       ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else67

conf_is_ht40_plus.exit.if.end70_crit_edge:        ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.else67:                                        ; preds = %conf_is_ht40_plus.exit.if.else67_crit_edge, %wcn36xx_smd_set_bss_ht_params.exit.if.else67_crit_edge
  br label %if.end70

if.end70:                                         ; preds = %if.else67, %conf_is_ht40_plus.exit.if.end70_crit_edge, %conf_is_ht40_minus.exit.if.end70_crit_edge
  %.sink169 = phi i8 [ 0, %if.else67 ], [ 3, %conf_is_ht40_minus.exit.if.end70_crit_edge ], [ 1, %conf_is_ht40_plus.exit.if.end70_crit_edge ]
  %ext_channel66 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 17
  %86 = ptrtoint ptr %ext_channel66 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink169, ptr %ext_channel66, align 1
  %frombool = zext i1 %update to i8
  %reserved = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 18
  %87 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %reserved, align 1
  %ssid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %88 = ptrtoint ptr %ssid to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ssid, align 2
  %ssid71 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 20
  %90 = ptrtoint ptr %ssid71 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %ssid71, align 1
  %ssid74 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 20, i32 1
  %ssid77 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 6
  %91 = load i8, ptr %ssid, align 2
  %conv81 = zext i8 %91 to i32
  %92 = call ptr @memcpy(ptr %ssid74, ptr %ssid77, i32 %conv81)
  %obss_prot_enabled = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 24
  %93 = ptrtoint ptr %obss_prot_enabled to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %obss_prot_enabled, align 1
  %rmf = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 25
  %94 = ptrtoint ptr %rmf to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %rmf, align 1
  %max_probe_resp_retry_limit = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 28
  %95 = ptrtoint ptr %max_probe_resp_retry_limit to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %max_probe_resp_retry_limit, align 1
  %hidden_ssid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 41
  %96 = ptrtoint ptr %hidden_ssid to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %hidden_ssid, align 4, !range !767
  %hidden_ssid85 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 29
  %98 = ptrtoint ptr %hidden_ssid85 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %hidden_ssid85, align 1
  %proxy_probe_resp = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 30
  %99 = ptrtoint ptr %proxy_probe_resp to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %proxy_probe_resp, align 1
  %edca_params_valid = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 31
  %100 = ptrtoint ptr %edca_params_valid to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %edca_params_valid, align 1
  %ext_set_sta_key_param_valid = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 36
  %101 = ptrtoint ptr %ext_set_sta_key_param_valid to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %ext_set_sta_key_param_valid, align 1
  %spectrum_mgt_enable = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 39
  %102 = ptrtoint ptr %spectrum_mgt_enable to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %spectrum_mgt_enable, align 1
  %tx_mgmt_power = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 40
  %103 = ptrtoint ptr %tx_mgmt_power to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %tx_mgmt_power, align 1
  %104 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wcn, align 4
  %chandef88 = getelementptr inbounds %struct.ieee80211_conf, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %chandef88 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %chandef88, align 4
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_power, align 4
  %conv90 = trunc i32 %109 to i8
  %max_tx_power = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 41
  %110 = ptrtoint ptr %max_tx_power to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv90, ptr %max_tx_power, align 1
  %action = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 21
  %111 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %frombool, ptr %action, align 1
  %bss_type93 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, ptr %bss, i32 0, i32 2
  %112 = ptrtoint ptr %bss_type93 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %bss_type93, align 1
  %bss_type94 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  %114 = ptrtoint ptr %bss_type94 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %bss_type94, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_gtk_rekey_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcn36xx_dxe_tx_ack_ind(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_beacon_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_connection_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_report_low_ack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 414)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 414)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !373, !375, !376, !377, !378, !380, !381, !382, !384, !385, !386, !388, !389, !390, !391, !393, !394, !395, !397, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !413, !415, !416, !417, !419, !420, !421, !422, !424, !425, !426, !428, !429, !430, !431, !433, !434, !435, !437, !438, !439, !440, !442, !443, !444, !446, !447, !448, !449, !451, !452, !453, !455, !456, !457, !458, !460, !461, !462, !464, !465, !466, !467, !469, !470, !471, !473, !474, !475, !476, !478, !479, !480, !482, !483, !484, !486, !487, !489, !490, !491, !493, !494, !496, !497, !498, !499, !501, !502, !503, !505, !506, !507, !508, !510, !511, !512, !514, !515, !516, !518, !519, !520, !521, !523, !524, !525, !527, !528, !530, !531, !532, !533, !535, !536, !537, !539, !540, !541, !543, !544, !546, !547, !549, !550, !552, !554, !555, !556, !557, !559, !560, !561, !563, !564, !565, !567, !568, !570, !572, !574, !575, !576, !577, !579, !580, !581, !582, !584, !585, !586, !588, !589, !590, !591, !593, !594, !595, !596, !598, !600, !601, !602, !603, !605, !606, !607, !608, !610, !611, !612, !614, !615, !616, !617, !619, !620, !621, !622, !624, !625, !626, !627, !629, !630, !631, !632, !634, !635, !636, !638, !639, !640, !641, !643, !644, !645, !647, !648, !649, !650, !652, !653, !654, !655, !657, !658, !660, !661, !662, !663, !665, !666, !667, !669, !670, !671, !672, !674, !675, !676, !678, !679, !680, !682, !684, !685, !686, !688, !689, !690, !691, !693, !694, !695, !696, !698, !699, !700, !702, !703, !705, !706, !707, !709, !710, !711, !712, !714, !715, !716, !718, !719, !720, !722, !723, !724, !726, !727, !728, !730, !731, !733, !734, !735, !736, !738, !739, !740, !742, !743, !744, !746, !747, !748, !749, !751, !752, !753, !755, !756}
!llvm.named.register.sp = !{!757}
!llvm.module.flags = !{!758, !759, !760, !761, !762, !763, !764, !765}
!llvm.ident = !{!766}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 511, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wcn36xx_smd_load_nv._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wcn36xx_smd_load_nv._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 554, i32 4}
!8 = !{ptr @wcn36xx_smd_load_nv._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wcn36xx_smd_load_nv._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @wcn36xx_smd_start.cfg_vals, !11, !"cfg_vals", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 615, i32 33}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 645, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wcn36xx_smd_start._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @wcn36xx_smd_start._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 650, i32 3}
!19 = !{ptr @wcn36xx_smd_start._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @wcn36xx_smd_start._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 656, i32 3}
!23 = !{ptr @wcn36xx_smd_start._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @wcn36xx_smd_start._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 679, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wcn36xx_smd_stop._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @wcn36xx_smd_stop._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 684, i32 3}
!32 = !{ptr @wcn36xx_smd_stop._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wcn36xx_smd_stop._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 713, i32 2}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @wcn36xx_smd_init_scan._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @wcn36xx_smd_init_scan._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 717, i32 3}
!41 = !{ptr @wcn36xx_smd_init_scan._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wcn36xx_smd_init_scan._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 722, i32 3}
!45 = !{ptr @wcn36xx_smd_init_scan._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @wcn36xx_smd_init_scan._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 743, i32 2}
!49 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wcn36xx_smd_start_scan._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @wcn36xx_smd_start_scan._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 748, i32 3}
!54 = !{ptr @wcn36xx_smd_start_scan._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wcn36xx_smd_start_scan._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 753, i32 3}
!58 = !{ptr @wcn36xx_smd_start_scan._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wcn36xx_smd_start_scan._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 774, i32 2}
!62 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @wcn36xx_smd_end_scan._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @wcn36xx_smd_end_scan._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 779, i32 3}
!67 = !{ptr @wcn36xx_smd_end_scan._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wcn36xx_smd_end_scan._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 784, i32 3}
!71 = !{ptr @wcn36xx_smd_end_scan._entry.40, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @wcn36xx_smd_end_scan._entry_ptr.42, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 816, i32 2}
!75 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @wcn36xx_smd_finish_scan._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @wcn36xx_smd_finish_scan._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 821, i32 3}
!80 = !{ptr @wcn36xx_smd_finish_scan._entry.45, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @wcn36xx_smd_finish_scan._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 826, i32 3}
!84 = !{ptr @wcn36xx_smd_finish_scan._entry.48, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @wcn36xx_smd_finish_scan._entry_ptr.50, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 887, i32 2}
!88 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @wcn36xx_smd_start_hw_scan._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @wcn36xx_smd_start_hw_scan._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 894, i32 3}
!95 = !{ptr @wcn36xx_smd_start_hw_scan._entry.55, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @wcn36xx_smd_start_hw_scan._entry_ptr.57, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.59, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 899, i32 3}
!99 = !{ptr @wcn36xx_smd_start_hw_scan._entry.58, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @wcn36xx_smd_start_hw_scan._entry_ptr.60, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.61, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 918, i32 2}
!103 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @wcn36xx_smd_stop_hw_scan._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @wcn36xx_smd_stop_hw_scan._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.64, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 922, i32 3}
!108 = !{ptr @wcn36xx_smd_stop_hw_scan._entry.63, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @wcn36xx_smd_stop_hw_scan._entry_ptr.65, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.67, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 927, i32 3}
!112 = !{ptr @wcn36xx_smd_stop_hw_scan._entry.66, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @wcn36xx_smd_stop_hw_scan._entry_ptr.68, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.69, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 988, i32 3}
!116 = !{ptr @.str.70, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @wcn36xx_smd_update_channel_list._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @wcn36xx_smd_update_channel_list._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.72, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1000, i32 3}
!121 = !{ptr @wcn36xx_smd_update_channel_list._entry.71, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @wcn36xx_smd_update_channel_list._entry_ptr.73, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.75, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1006, i32 3}
!125 = !{ptr @wcn36xx_smd_update_channel_list._entry.74, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @wcn36xx_smd_update_channel_list._entry_ptr.76, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.77, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1048, i32 3}
!129 = !{ptr @.str.78, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @wcn36xx_smd_switch_channel._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @wcn36xx_smd_switch_channel._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.80, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1053, i32 3}
!134 = !{ptr @wcn36xx_smd_switch_channel._entry.79, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @wcn36xx_smd_switch_channel._entry_ptr.81, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.82, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1110, i32 3}
!138 = !{ptr @.str.83, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @wcn36xx_smd_process_ptt_msg._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @wcn36xx_smd_process_ptt_msg._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.85, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1116, i32 3}
!143 = !{ptr @wcn36xx_smd_process_ptt_msg._entry.84, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @wcn36xx_smd_process_ptt_msg._entry_ptr.86, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.87, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1165, i32 2}
!147 = !{ptr @.str.88, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @wcn36xx_smd_update_scan_params._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @wcn36xx_smd_update_scan_params._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.90, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1171, i32 3}
!152 = !{ptr @wcn36xx_smd_update_scan_params._entry.89, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @wcn36xx_smd_update_scan_params._entry_ptr.91, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.93, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1177, i32 3}
!156 = !{ptr @wcn36xx_smd_update_scan_params._entry.92, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @wcn36xx_smd_update_scan_params._entry_ptr.94, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.95, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1227, i32 2}
!160 = !{ptr @.str.96, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @wcn36xx_smd_add_sta_self._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @wcn36xx_smd_add_sta_self._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.98, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1233, i32 3}
!165 = !{ptr @wcn36xx_smd_add_sta_self._entry.97, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @wcn36xx_smd_add_sta_self._entry_ptr.99, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.101, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1241, i32 3}
!169 = !{ptr @wcn36xx_smd_add_sta_self._entry.100, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @wcn36xx_smd_add_sta_self._entry_ptr.102, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.103, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1263, i32 3}
!173 = !{ptr @.str.104, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @wcn36xx_smd_delete_sta_self._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @wcn36xx_smd_delete_sta_self._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.106, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1268, i32 3}
!178 = !{ptr @wcn36xx_smd_delete_sta_self._entry.105, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @wcn36xx_smd_delete_sta_self._entry_ptr.107, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.108, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1289, i32 2}
!182 = !{ptr @.str.109, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @wcn36xx_smd_delete_sta._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @wcn36xx_smd_delete_sta._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.111, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1295, i32 3}
!187 = !{ptr @wcn36xx_smd_delete_sta._entry.110, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @wcn36xx_smd_delete_sta._entry_ptr.112, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.114, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1300, i32 3}
!191 = !{ptr @wcn36xx_smd_delete_sta._entry.113, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @wcn36xx_smd_delete_sta._entry_ptr.115, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.116, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1351, i32 2}
!195 = !{ptr @.str.117, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @wcn36xx_smd_join._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @wcn36xx_smd_join._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.119, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1358, i32 3}
!200 = !{ptr @wcn36xx_smd_join._entry.118, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @wcn36xx_smd_join._entry_ptr.120, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.122, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1363, i32 3}
!204 = !{ptr @wcn36xx_smd_join._entry.121, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @wcn36xx_smd_join._entry_ptr.123, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.124, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1387, i32 2}
!208 = !{ptr @.str.125, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @wcn36xx_smd_set_link_st._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @wcn36xx_smd_set_link_st._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.127, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1393, i32 3}
!213 = !{ptr @wcn36xx_smd_set_link_st._entry.126, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @wcn36xx_smd_set_link_st._entry_ptr.128, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.130, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1398, i32 3}
!217 = !{ptr @wcn36xx_smd_set_link_st._entry.129, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @wcn36xx_smd_set_link_st._entry_ptr.131, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.132, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1566, i32 3}
!221 = !{ptr @.str.133, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @wcn36xx_smd_config_sta._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @wcn36xx_smd_config_sta._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.135, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1574, i32 3}
!226 = !{ptr @wcn36xx_smd_config_sta._entry.134, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @wcn36xx_smd_config_sta._entry_ptr.136, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.137, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1893, i32 3}
!230 = !{ptr @.str.138, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @wcn36xx_smd_config_bss._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @wcn36xx_smd_config_bss._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.140, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1902, i32 3}
!235 = !{ptr @wcn36xx_smd_config_bss._entry.139, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @wcn36xx_smd_config_bss._entry_ptr.141, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.142, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1926, i32 2}
!239 = !{ptr @.str.143, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @wcn36xx_smd_delete_bss._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @wcn36xx_smd_delete_bss._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.145, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1930, i32 3}
!244 = !{ptr @wcn36xx_smd_delete_bss._entry.144, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @wcn36xx_smd_delete_bss._entry_ptr.146, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.148, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1935, i32 3}
!248 = !{ptr @wcn36xx_smd_delete_bss._entry.147, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @wcn36xx_smd_delete_bss._entry_ptr.149, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.150, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1967, i32 3}
!252 = !{ptr @.str.151, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @wcn36xx_smd_send_beacon._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @wcn36xx_smd_send_beacon._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.153, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1982, i32 3}
!257 = !{ptr @wcn36xx_smd_send_beacon._entry.152, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @wcn36xx_smd_send_beacon._entry_ptr.154, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.156, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2000, i32 2}
!261 = !{ptr @wcn36xx_smd_send_beacon._entry.155, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @wcn36xx_smd_send_beacon._entry_ptr.157, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.159, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2006, i32 3}
!265 = !{ptr @wcn36xx_smd_send_beacon._entry.158, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @wcn36xx_smd_send_beacon._entry_ptr.160, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.162, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2011, i32 3}
!269 = !{ptr @wcn36xx_smd_send_beacon._entry.161, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @wcn36xx_smd_send_beacon._entry_ptr.163, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.164, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2030, i32 3}
!273 = !{ptr @.str.165, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @wcn36xx_smd_update_proberesp_tmpl._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @wcn36xx_smd_update_proberesp_tmpl._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.167, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2043, i32 2}
!278 = !{ptr @wcn36xx_smd_update_proberesp_tmpl._entry.166, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @wcn36xx_smd_update_proberesp_tmpl._entry_ptr.168, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.170, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2049, i32 3}
!282 = !{ptr @wcn36xx_smd_update_proberesp_tmpl._entry.169, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @wcn36xx_smd_update_proberesp_tmpl._entry_ptr.171, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.173, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2054, i32 3}
!286 = !{ptr @wcn36xx_smd_update_proberesp_tmpl._entry.172, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @wcn36xx_smd_update_proberesp_tmpl._entry_ptr.174, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.175, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2099, i32 3}
!290 = !{ptr @.str.176, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @wcn36xx_smd_set_stakey._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @wcn36xx_smd_set_stakey._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.178, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2104, i32 3}
!295 = !{ptr @wcn36xx_smd_set_stakey._entry.177, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @wcn36xx_smd_set_stakey._entry_ptr.179, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.180, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2138, i32 3}
!299 = !{ptr @.str.181, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @wcn36xx_smd_set_bsskey._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @wcn36xx_smd_set_bsskey._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.183, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2143, i32 3}
!304 = !{ptr @wcn36xx_smd_set_bsskey._entry.182, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @wcn36xx_smd_set_bsskey._entry_ptr.184, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.185, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2170, i32 3}
!308 = !{ptr @.str.186, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @wcn36xx_smd_remove_stakey._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @wcn36xx_smd_remove_stakey._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.188, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2175, i32 3}
!313 = !{ptr @wcn36xx_smd_remove_stakey._entry.187, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @wcn36xx_smd_remove_stakey._entry_ptr.189, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.190, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2201, i32 3}
!317 = !{ptr @.str.191, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @wcn36xx_smd_remove_bsskey._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @wcn36xx_smd_remove_bsskey._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.193, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2206, i32 3}
!322 = !{ptr @wcn36xx_smd_remove_bsskey._entry.192, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @wcn36xx_smd_remove_bsskey._entry_ptr.194, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.195, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2231, i32 3}
!326 = !{ptr @.str.196, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @wcn36xx_smd_enter_bmps._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @wcn36xx_smd_enter_bmps._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.198, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2236, i32 3}
!331 = !{ptr @wcn36xx_smd_enter_bmps._entry.197, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @wcn36xx_smd_enter_bmps._entry_ptr.199, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.200, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2260, i32 3}
!335 = !{ptr @.str.201, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @wcn36xx_smd_exit_bmps._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @wcn36xx_smd_exit_bmps._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.203, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2265, i32 3}
!340 = !{ptr @wcn36xx_smd_exit_bmps._entry.202, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @wcn36xx_smd_exit_bmps._entry_ptr.204, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.205, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2285, i32 3}
!344 = !{ptr @.str.206, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @wcn36xx_smd_enter_imps._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @wcn36xx_smd_enter_imps._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.208, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2290, i32 3}
!349 = !{ptr @wcn36xx_smd_enter_imps._entry.207, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @wcn36xx_smd_enter_imps._entry_ptr.209, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.211, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2294, i32 2}
!353 = !{ptr @wcn36xx_smd_enter_imps._entry.210, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @wcn36xx_smd_enter_imps._entry_ptr.212, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.213, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2312, i32 3}
!357 = !{ptr @.str.214, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @wcn36xx_smd_exit_imps._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @wcn36xx_smd_exit_imps._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.216, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2317, i32 3}
!362 = !{ptr @wcn36xx_smd_exit_imps._entry.215, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @wcn36xx_smd_exit_imps._entry_ptr.217, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.219, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2320, i32 2}
!366 = !{ptr @wcn36xx_smd_exit_imps._entry.218, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @wcn36xx_smd_exit_imps._entry_ptr.220, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.221, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2347, i32 3}
!370 = !{ptr @.str.222, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @wcn36xx_smd_set_power_params._entry, !369, !"_entry", i1 false, i1 false}
!372 = !{ptr @wcn36xx_smd_set_power_params._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.223, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2377, i32 3}
!375 = !{ptr @.str.224, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @wcn36xx_smd_keep_alive_req._entry, !374, !"_entry", i1 false, i1 false}
!377 = !{ptr @wcn36xx_smd_keep_alive_req._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.226, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2386, i32 3}
!380 = !{ptr @wcn36xx_smd_keep_alive_req._entry.225, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @wcn36xx_smd_keep_alive_req._entry_ptr.227, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.229, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2391, i32 3}
!384 = !{ptr @wcn36xx_smd_keep_alive_req._entry.228, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @wcn36xx_smd_keep_alive_req._entry_ptr.230, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.231, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2418, i32 3}
!388 = !{ptr @.str.232, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @wcn36xx_smd_dump_cmd_req._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @wcn36xx_smd_dump_cmd_req._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.234, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2423, i32 3}
!393 = !{ptr @wcn36xx_smd_dump_cmd_req._entry.233, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @wcn36xx_smd_dump_cmd_req._entry_ptr.235, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.236, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2436, i32 3}
!397 = !{ptr @.str.237, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @set_feat_caps._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @set_feat_caps._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.238, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2450, i32 3}
!402 = !{ptr @get_feat_caps._entry, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @get_feat_caps._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.239, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2465, i32 3}
!406 = !{ptr @clear_feat_caps._entry, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @clear_feat_caps._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.240, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2493, i32 3}
!410 = !{ptr @.str.241, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @wcn36xx_smd_feature_caps_exchange._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @wcn36xx_smd_feature_caps_exchange._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.243, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2497, i32 3}
!415 = !{ptr @wcn36xx_smd_feature_caps_exchange._entry.242, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @wcn36xx_smd_feature_caps_exchange._entry_ptr.244, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.245, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2557, i32 3}
!419 = !{ptr @.str.246, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @wcn36xx_smd_add_ba_session._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @wcn36xx_smd_add_ba_session._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.248, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2563, i32 3}
!424 = !{ptr @wcn36xx_smd_add_ba_session._entry.247, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @wcn36xx_smd_add_ba_session._entry_ptr.249, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.250, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2589, i32 3}
!428 = !{ptr @.str.251, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @wcn36xx_smd_add_ba._entry, !427, !"_entry", i1 false, i1 false}
!430 = !{ptr @wcn36xx_smd_add_ba._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.253, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2594, i32 3}
!433 = !{ptr @wcn36xx_smd_add_ba._entry.252, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @wcn36xx_smd_add_ba._entry_ptr.254, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.255, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2617, i32 3}
!437 = !{ptr @.str.256, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @wcn36xx_smd_del_ba._entry, !436, !"_entry", i1 false, i1 false}
!439 = !{ptr @wcn36xx_smd_del_ba._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.258, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2622, i32 3}
!442 = !{ptr @wcn36xx_smd_del_ba._entry.257, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @wcn36xx_smd_del_ba._entry_ptr.259, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.260, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2678, i32 3}
!446 = !{ptr @.str.261, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @wcn36xx_smd_trigger_ba._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @wcn36xx_smd_trigger_ba._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.263, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2683, i32 3}
!451 = !{ptr @wcn36xx_smd_trigger_ba._entry.262, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @wcn36xx_smd_trigger_ba._entry_ptr.264, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.265, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2882, i32 3}
!455 = !{ptr @.str.266, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @wcn36xx_smd_update_cfg._entry, !454, !"_entry", i1 false, i1 false}
!457 = !{ptr @wcn36xx_smd_update_cfg._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.268, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2887, i32 3}
!460 = !{ptr @wcn36xx_smd_update_cfg._entry.267, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @wcn36xx_smd_update_cfg._entry_ptr.269, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.270, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2920, i32 3}
!464 = !{ptr @.str.271, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @wcn36xx_smd_set_mc_list._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @wcn36xx_smd_set_mc_list._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.273, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2925, i32 3}
!469 = !{ptr @wcn36xx_smd_set_mc_list._entry.272, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @wcn36xx_smd_set_mc_list._entry_ptr.274, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.275, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2957, i32 3}
!473 = !{ptr @.str.276, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @wcn36xx_smd_arp_offload._entry, !472, !"_entry", i1 false, i1 false}
!475 = !{ptr @wcn36xx_smd_arp_offload._entry_ptr, !472, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.278, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2962, i32 3}
!478 = !{ptr @wcn36xx_smd_arp_offload._entry.277, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @wcn36xx_smd_arp_offload._entry_ptr.279, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.280, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3013, i32 3}
!482 = !{ptr @wcn36xx_smd_ipv6_ns_offload._entry, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @wcn36xx_smd_ipv6_ns_offload._entry_ptr, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @wcn36xx_smd_ipv6_ns_offload._entry.281, !485, !"_entry", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3018, i32 3}
!486 = !{ptr @wcn36xx_smd_ipv6_ns_offload._entry_ptr.282, !485, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.283, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3058, i32 3}
!489 = !{ptr @wcn36xx_smd_gtk_offload._entry, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @wcn36xx_smd_gtk_offload._entry_ptr, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @wcn36xx_smd_gtk_offload._entry.284, !492, !"_entry", i1 false, i1 false}
!492 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3063, i32 3}
!493 = !{ptr @wcn36xx_smd_gtk_offload._entry_ptr.285, !492, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.286, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3129, i32 3}
!496 = !{ptr @.str.287, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @wcn36xx_smd_gtk_offload_get_info._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @wcn36xx_smd_gtk_offload_get_info._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.289, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3134, i32 3}
!501 = !{ptr @wcn36xx_smd_gtk_offload_get_info._entry.288, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @wcn36xx_smd_gtk_offload_get_info._entry_ptr.290, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.291, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3177, i32 3}
!505 = !{ptr @.str.292, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @wcn36xx_smd_host_resume._entry, !504, !"_entry", i1 false, i1 false}
!507 = !{ptr @wcn36xx_smd_host_resume._entry_ptr, !504, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.294, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3182, i32 3}
!510 = !{ptr @wcn36xx_smd_host_resume._entry.293, !509, !"_entry", i1 false, i1 false}
!511 = !{ptr @wcn36xx_smd_host_resume._entry_ptr.295, !509, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.297, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3188, i32 3}
!514 = !{ptr @wcn36xx_smd_host_resume._entry.296, !513, !"_entry", i1 false, i1 false}
!515 = !{ptr @wcn36xx_smd_host_resume._entry_ptr.298, !513, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.299, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3267, i32 3}
!518 = !{ptr @.str.300, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @wcn36xx_smd_add_beacon_filter._entry, !517, !"_entry", i1 false, i1 false}
!520 = !{ptr @wcn36xx_smd_add_beacon_filter._entry_ptr, !517, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.302, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3273, i32 3}
!523 = !{ptr @wcn36xx_smd_add_beacon_filter._entry.301, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @wcn36xx_smd_add_beacon_filter._entry_ptr.303, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.304, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3288, i32 2}
!527 = !{ptr @.str.305, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @.str.306, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3352, i32 4}
!530 = !{ptr @.str.307, !529, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @wcn36xx_smd_rsp_process._entry, !529, !"_entry", i1 false, i1 false}
!532 = !{ptr @wcn36xx_smd_rsp_process._entry_ptr, !529, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.309, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3364, i32 3}
!535 = !{ptr @wcn36xx_smd_rsp_process._entry.308, !534, !"_entry", i1 false, i1 false}
!536 = !{ptr @wcn36xx_smd_rsp_process._entry_ptr.310, !534, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @.str.312, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3367, i32 3}
!539 = !{ptr @wcn36xx_smd_rsp_process._entry.311, !538, !"_entry", i1 false, i1 false}
!540 = !{ptr @wcn36xx_smd_rsp_process._entry_ptr.313, !538, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @.str.314, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3439, i32 20}
!543 = !{ptr @.str.315, !542, !"<string literal>", i1 false, i1 false}
!544 = !{ptr @wcn36xx_smd_open.__key, !545, !"__key", i1 false, i1 false}
!545 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3443, i32 2}
!546 = !{ptr @.str.316, !545, !"<string literal>", i1 false, i1 false}
!547 = !{ptr @wcn36xx_smd_open.__key.317, !548, !"__key", i1 false, i1 false}
!548 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3445, i32 2}
!549 = !{ptr @.str.318, !548, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @.str.319, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 426, i32 2}
!552 = !{ptr @.str.320, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 432, i32 3}
!554 = !{ptr @.str.321, !553, !"<string literal>", i1 false, i1 false}
!555 = !{ptr @wcn36xx_smd_send_and_wait._entry, !553, !"_entry", i1 false, i1 false}
!556 = !{ptr @wcn36xx_smd_send_and_wait._entry_ptr, !553, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @.str.323, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 437, i32 3}
!559 = !{ptr @wcn36xx_smd_send_and_wait._entry.322, !558, !"_entry", i1 false, i1 false}
!560 = !{ptr @wcn36xx_smd_send_and_wait._entry_ptr.324, !558, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @.str.326, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 442, i32 2}
!563 = !{ptr @wcn36xx_smd_send_and_wait._entry.325, !562, !"_entry", i1 false, i1 false}
!564 = !{ptr @wcn36xx_smd_send_and_wait._entry_ptr.327, !562, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @init_completion.__key, !566, !"__key", i1 false, i1 false}
!566 = !{!"../include/linux/completion.h", i32 87, i32 2}
!567 = !{ptr @.str.328, !566, !"<string literal>", i1 false, i1 false}
!568 = !{ptr @wcn3680_cfg_vals, !569, !"wcn3680_cfg_vals", i1 false, i1 false}
!569 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 85, i32 31}
!570 = !{ptr @wcn36xx_cfg_vals, !571, !"wcn36xx_cfg_vals", i1 false, i1 false}
!571 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 37, i32 31}
!572 = !{ptr @.str.329, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 187, i32 3}
!574 = !{ptr @.str.330, !573, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @put_cfg_tlv_u32._entry, !573, !"_entry", i1 false, i1 false}
!576 = !{ptr @put_cfg_tlv_u32._entry_ptr, !573, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.331, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 596, i32 3}
!579 = !{ptr @.str.332, !578, !"<string literal>", i1 false, i1 false}
!580 = !{ptr @wcn36xx_smd_start_rsp._entry, !578, !"_entry", i1 false, i1 false}
!581 = !{ptr @wcn36xx_smd_start_rsp._entry_ptr, !578, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.334, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 599, i32 3}
!584 = !{ptr @wcn36xx_smd_start_rsp._entry.333, !583, !"_entry", i1 false, i1 false}
!585 = !{ptr @wcn36xx_smd_start_rsp._entry_ptr.335, !583, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.336, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1025, i32 2}
!588 = !{ptr @.str.337, !587, !"<string literal>", i1 false, i1 false}
!589 = !{ptr @wcn36xx_smd_switch_channel_rsp._entry, !587, !"_entry", i1 false, i1 false}
!590 = !{ptr @wcn36xx_smd_switch_channel_rsp._entry_ptr, !587, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @.str.338, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1073, i32 2}
!593 = !{ptr @.str.339, !592, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @wcn36xx_smd_process_ptt_msg_rsp._entry, !592, !"_entry", i1 false, i1 false}
!595 = !{ptr @wcn36xx_smd_process_ptt_msg_rsp._entry_ptr, !592, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.340, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1075, i32 2}
!598 = !{ptr @.str.341, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1136, i32 3}
!600 = !{ptr @.str.342, !599, !"<string literal>", i1 false, i1 false}
!601 = !{ptr @wcn36xx_smd_update_scan_params_rsp._entry, !599, !"_entry", i1 false, i1 false}
!602 = !{ptr @wcn36xx_smd_update_scan_params_rsp._entry_ptr, !599, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.343, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1200, i32 3}
!605 = !{ptr @.str.344, !604, !"<string literal>", i1 false, i1 false}
!606 = !{ptr @wcn36xx_smd_add_sta_self_rsp._entry, !604, !"_entry", i1 false, i1 false}
!607 = !{ptr @wcn36xx_smd_add_sta_self_rsp._entry_ptr, !604, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.346, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1205, i32 2}
!610 = !{ptr @wcn36xx_smd_add_sta_self_rsp._entry.345, !609, !"_entry", i1 false, i1 false}
!611 = !{ptr @wcn36xx_smd_add_sta_self_rsp._entry_ptr.347, !609, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.348, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1317, i32 2}
!614 = !{ptr @.str.349, !613, !"<string literal>", i1 false, i1 false}
!615 = !{ptr @wcn36xx_smd_join_rsp._entry, !613, !"_entry", i1 false, i1 false}
!616 = !{ptr @wcn36xx_smd_join_rsp._entry_ptr, !613, !"_entry_ptr", i1 false, i1 false}
!617 = !{ptr @.str.350, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1521, i32 2}
!619 = !{ptr @.str.351, !618, !"<string literal>", i1 false, i1 false}
!620 = !{ptr @wcn36xx_smd_config_sta_v1._entry, !618, !"_entry", i1 false, i1 false}
!621 = !{ptr @wcn36xx_smd_config_sta_v1._entry_ptr, !618, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.352, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1544, i32 2}
!624 = !{ptr @.str.353, !623, !"<string literal>", i1 false, i1 false}
!625 = !{ptr @wcn36xx_smd_config_sta_v0._entry, !623, !"_entry", i1 false, i1 false}
!626 = !{ptr @wcn36xx_smd_config_sta_v0._entry_ptr, !623, !"_entry_ptr", i1 false, i1 false}
!627 = !{ptr @.str.354, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1484, i32 3}
!629 = !{ptr @.str.355, !628, !"<string literal>", i1 false, i1 false}
!630 = !{ptr @wcn36xx_smd_config_sta_rsp._entry, !628, !"_entry", i1 false, i1 false}
!631 = !{ptr @wcn36xx_smd_config_sta_rsp._entry_ptr, !628, !"_entry_ptr", i1 false, i1 false}
!632 = !{ptr @.str.357, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1493, i32 2}
!634 = !{ptr @wcn36xx_smd_config_sta_rsp._entry.356, !633, !"_entry", i1 false, i1 false}
!635 = !{ptr @wcn36xx_smd_config_sta_rsp._entry_ptr.358, !633, !"_entry_ptr", i1 false, i1 false}
!636 = !{ptr @.str.359, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1776, i32 2}
!638 = !{ptr @.str.360, !637, !"<string literal>", i1 false, i1 false}
!639 = !{ptr @wcn36xx_smd_config_bss_v1._entry, !637, !"_entry", i1 false, i1 false}
!640 = !{ptr @wcn36xx_smd_config_bss_v1._entry_ptr, !637, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.362, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1781, i32 2}
!643 = !{ptr @wcn36xx_smd_config_bss_v1._entry.361, !642, !"_entry", i1 false, i1 false}
!644 = !{ptr @wcn36xx_smd_config_bss_v1._entry_ptr.363, !642, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.364, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1616, i32 3}
!647 = !{ptr @.str.365, !646, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @wcn36xx_smd_set_bss_params._entry, !646, !"_entry", i1 false, i1 false}
!649 = !{ptr @wcn36xx_smd_set_bss_params._entry_ptr, !646, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.366, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1817, i32 2}
!652 = !{ptr @.str.367, !651, !"<string literal>", i1 false, i1 false}
!653 = !{ptr @wcn36xx_smd_config_bss_v0._entry, !651, !"_entry", i1 false, i1 false}
!654 = !{ptr @wcn36xx_smd_config_bss_v0._entry_ptr, !651, !"_entry_ptr", i1 false, i1 false}
!655 = !{ptr @wcn36xx_smd_config_bss_v0._entry.368, !656, !"_entry", i1 false, i1 false}
!656 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1822, i32 2}
!657 = !{ptr @wcn36xx_smd_config_bss_v0._entry_ptr.369, !656, !"_entry_ptr", i1 false, i1 false}
!658 = !{ptr @.str.370, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1852, i32 3}
!660 = !{ptr @.str.371, !659, !"<string literal>", i1 false, i1 false}
!661 = !{ptr @wcn36xx_smd_config_bss_rsp._entry, !659, !"_entry", i1 false, i1 false}
!662 = !{ptr @wcn36xx_smd_config_bss_rsp._entry_ptr, !659, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @.str.373, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 1857, i32 2}
!665 = !{ptr @wcn36xx_smd_config_bss_rsp._entry.372, !664, !"_entry", i1 false, i1 false}
!666 = !{ptr @wcn36xx_smd_config_bss_rsp._entry_ptr.374, !664, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @.str.375, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3084, i32 3}
!669 = !{ptr @.str.376, !668, !"<string literal>", i1 false, i1 false}
!670 = !{ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry, !668, !"_entry", i1 false, i1 false}
!671 = !{ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry_ptr, !668, !"_entry_ptr", i1 false, i1 false}
!672 = !{ptr @.str.378, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3095, i32 4}
!674 = !{ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry.377, !673, !"_entry", i1 false, i1 false}
!675 = !{ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry_ptr.379, !673, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @.str.381, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3100, i32 2}
!678 = !{ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry.380, !677, !"_entry", i1 false, i1 false}
!679 = !{ptr @wcn36xx_smd_gtk_offload_get_info_rsp._entry_ptr.382, !677, !"_entry_ptr", i1 false, i1 false}
!680 = !{ptr @bcn_filter_ies, !681, !"bcn_filter_ies", i1 false, i1 false}
!681 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3206, i32 38}
!682 = !{ptr @.str.383, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 3429, i32 4}
!684 = !{ptr @wcn36xx_ind_smd_work._entry, !683, !"_entry", i1 false, i1 false}
!685 = !{ptr @wcn36xx_ind_smd_work._entry_ptr, !683, !"_entry_ptr", i1 false, i1 false}
!686 = !{ptr @.str.384, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2700, i32 3}
!688 = !{ptr @.str.385, !687, !"<string literal>", i1 false, i1 false}
!689 = !{ptr @wcn36xx_smd_tx_compl_ind._entry, !687, !"_entry", i1 false, i1 false}
!690 = !{ptr @wcn36xx_smd_tx_compl_ind._entry_ptr, !687, !"_entry_ptr", i1 false, i1 false}
!691 = !{ptr @.str.386, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2757, i32 4}
!693 = !{ptr @.str.387, !692, !"<string literal>", i1 false, i1 false}
!694 = !{ptr @wcn36xx_smd_missed_beacon_ind._entry, !692, !"_entry", i1 false, i1 false}
!695 = !{ptr @wcn36xx_smd_missed_beacon_ind._entry_ptr, !692, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @.str.389, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2766, i32 3}
!698 = !{ptr @wcn36xx_smd_missed_beacon_ind._entry.388, !697, !"_entry", i1 false, i1 false}
!699 = !{ptr @wcn36xx_smd_missed_beacon_ind._entry_ptr.390, !697, !"_entry_ptr", i1 false, i1 false}
!700 = !{ptr @wcn36xx_smd_missed_beacon_ind._entry.391, !701, !"_entry", i1 false, i1 false}
!701 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2772, i32 4}
!702 = !{ptr @wcn36xx_smd_missed_beacon_ind._entry_ptr.392, !701, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @.str.394, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2780, i32 2}
!705 = !{ptr @wcn36xx_smd_missed_beacon_ind._entry.393, !704, !"_entry", i1 false, i1 false}
!706 = !{ptr @wcn36xx_smd_missed_beacon_ind._entry_ptr.395, !704, !"_entry_ptr", i1 false, i1 false}
!707 = !{ptr @.str.396, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2796, i32 3}
!709 = !{ptr @.str.397, !708, !"<string literal>", i1 false, i1 false}
!710 = !{ptr @wcn36xx_smd_delete_sta_context_ind._entry, !708, !"_entry", i1 false, i1 false}
!711 = !{ptr @wcn36xx_smd_delete_sta_context_ind._entry_ptr, !708, !"_entry_ptr", i1 false, i1 false}
!712 = !{ptr @.str.399, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2800, i32 2}
!714 = !{ptr @wcn36xx_smd_delete_sta_context_ind._entry.398, !713, !"_entry", i1 false, i1 false}
!715 = !{ptr @wcn36xx_smd_delete_sta_context_ind._entry_ptr.400, !713, !"_entry_ptr", i1 false, i1 false}
!716 = !{ptr @.str.402, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2816, i32 5}
!718 = !{ptr @wcn36xx_smd_delete_sta_context_ind._entry.401, !717, !"_entry", i1 false, i1 false}
!719 = !{ptr @wcn36xx_smd_delete_sta_context_ind._entry_ptr.403, !717, !"_entry_ptr", i1 false, i1 false}
!720 = !{ptr @.str.405, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2834, i32 2}
!722 = !{ptr @wcn36xx_smd_delete_sta_context_ind._entry.404, !721, !"_entry", i1 false, i1 false}
!723 = !{ptr @wcn36xx_smd_delete_sta_context_ind._entry_ptr.406, !721, !"_entry_ptr", i1 false, i1 false}
!724 = distinct !{null, !725, !"__warned", i1 false, i1 false}
!725 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!726 = !{ptr @.str.407, !725, !"<string literal>", i1 false, i1 false}
!727 = !{ptr @.str.408, !725, !"<string literal>", i1 false, i1 false}
!728 = distinct !{null, !729, !"__warned", i1 false, i1 false}
!729 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!730 = !{ptr @.str.409, !729, !"<string literal>", i1 false, i1 false}
!731 = !{ptr @.str.410, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2846, i32 3}
!733 = !{ptr @.str.411, !732, !"<string literal>", i1 false, i1 false}
!734 = !{ptr @wcn36xx_smd_print_reg_info_ind._entry, !732, !"_entry", i1 false, i1 false}
!735 = !{ptr @wcn36xx_smd_print_reg_info_ind._entry_ptr, !732, !"_entry_ptr", i1 false, i1 false}
!736 = !{ptr @.str.413, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2850, i32 2}
!738 = !{ptr @wcn36xx_smd_print_reg_info_ind._entry.412, !737, !"_entry", i1 false, i1 false}
!739 = !{ptr @wcn36xx_smd_print_reg_info_ind._entry_ptr.414, !737, !"_entry_ptr", i1 false, i1 false}
!740 = !{ptr @.str.416, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2855, i32 3}
!742 = !{ptr @wcn36xx_smd_print_reg_info_ind._entry.415, !741, !"_entry", i1 false, i1 false}
!743 = !{ptr @wcn36xx_smd_print_reg_info_ind._entry_ptr.417, !741, !"_entry_ptr", i1 false, i1 false}
!744 = !{ptr @.str.418, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2715, i32 3}
!746 = !{ptr @.str.419, !745, !"<string literal>", i1 false, i1 false}
!747 = !{ptr @wcn36xx_smd_hw_scan_ind._entry, !745, !"_entry", i1 false, i1 false}
!748 = !{ptr @wcn36xx_smd_hw_scan_ind._entry_ptr, !745, !"_entry_ptr", i1 false, i1 false}
!749 = !{ptr @.str.421, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2719, i32 2}
!751 = !{ptr @wcn36xx_smd_hw_scan_ind._entry.420, !750, !"_entry", i1 false, i1 false}
!752 = !{ptr @wcn36xx_smd_hw_scan_ind._entry_ptr.422, !750, !"_entry_ptr", i1 false, i1 false}
!753 = !{ptr @.str.424, !754, !"<string literal>", i1 false, i1 false}
!754 = !{!"../drivers/net/wireless/ath/wcn36xx/smd.c", i32 2740, i32 3}
!755 = !{ptr @wcn36xx_smd_hw_scan_ind._entry.423, !754, !"_entry", i1 false, i1 false}
!756 = !{ptr @wcn36xx_smd_hw_scan_ind._entry_ptr.425, !754, !"_entry_ptr", i1 false, i1 false}
!757 = !{!"sp"}
!758 = !{i32 1, !"wchar_size", i32 2}
!759 = !{i32 1, !"min_enum_size", i32 4}
!760 = !{i32 8, !"branch-target-enforcement", i32 0}
!761 = !{i32 8, !"sign-return-address", i32 0}
!762 = !{i32 8, !"sign-return-address-all", i32 0}
!763 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!764 = !{i32 7, !"uwtable", i32 1}
!765 = !{i32 7, !"frame-pointer", i32 2}
!766 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!767 = !{i8 0, i8 2}
!768 = !{!"auto-init"}
!769 = !{i64 2149787874}
!770 = !{i64 2149788140}
!771 = !{!"branch_weights", i32 1, i32 2000}
