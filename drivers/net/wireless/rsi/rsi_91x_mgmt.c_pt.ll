; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_mgmt.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_mgmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bootup_params_9116 = type <{ i16, i16, i32, i32, i16, i16, i16, i16, [1 x %struct.device_clk_info_9116], i32, i16, i8, i8, i32, i32, i32, i32, i32, i32, i8 }>
%struct.device_clk_info_9116 = type { %struct.pll_config_9116, %struct.switch_clk_9116 }
%struct.pll_config_9116 = type { i16, i16, i16, i16, i16, i16 }
%struct.switch_clk_9116 = type { i32, i32, i32, i32, i32 }
%struct.bootup_params = type <{ i16, i16, i32, i32, i16, i16, i16, i16, [3 x %struct.device_clk_info], i32, i16, i8, i8, i32, i32, i32, i32, i32, i32, i8 }>
%struct.device_clk_info = type { %struct.pll_config, %struct.switch_clk }
%struct.pll_config = type { %struct.tapll_info, %struct.pll960_info, %struct.afepll_info }
%struct.tapll_info = type { i16, i16 }
%struct.pll960_info = type { i16, i16, i16 }
%struct.afepll_info = type { i16 }
%struct.switch_clk = type { i16, i16, i16, i16 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon.132 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { [8 x i8] }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }
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
%struct.rsi_peer_notify = type { %struct.rsi_cmd_desc, [6 x i8], i16, i16, i16, i32 }
%struct.rsi_cmd_desc = type { %struct.rsi_cmd_desc_dword0, %struct.rsi_cmd_desc_dword1, %struct.rsi_cmd_desc_dword2, %struct.rsi_cmd_desc_dword3 }
%struct.rsi_cmd_desc_dword0 = type { i16, i8, i8 }
%struct.rsi_cmd_desc_dword1 = type { i8, i8, i16 }
%struct.rsi_cmd_desc_dword2 = type { i32 }
%struct.rsi_cmd_desc_dword3 = type { i16, i8, i8 }
%struct.rsi_radio_caps = type { %struct.rsi_cmd_desc_dword0, %struct.rsi_cmd_desc_dword0, i8, i8, i16, i16, i8, i8, [12 x %struct.qos_params], i8, i8, [20 x i16], i16, i16, i16, i16, i16, i16 }
%struct.qos_params = type { i16, i16, i16, i16 }
%struct.rsi_hw = type { ptr, i32, ptr, [3 x ptr], [4 x %struct.ieee80211_tx_queue_params], [6 x %struct.ieee80211_supported_band], ptr, i8, i32, i16, i32, %struct.rsi_ps_info, %struct.spinlock, i32, ptr, i8, ptr, %struct.timer_list, i8, i32, %struct.eepromrw_info, i32, i8, [2 x i8], ptr, ptr, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rsi_ps_info = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16, i32, i16, i32 }>
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.rsi_aggr_params = type { %struct.rsi_cmd_desc_dword0, %struct.rsi_cmd_desc_dword0, i16, i16, i16, i8, i8 }
%struct.rsi_vap_caps = type <{ %struct.rsi_cmd_desc_dword0, i8, i8, i16, i8, i8, i16, i16, i8, i8, [6 x i8], i16, [6 x i8], i16, i32, i16, i16, i32, i16, i16, i32, i16, i16, i16 }>
%struct.rsi_set_key = type <{ %struct.rsi_cmd_desc_dword0, %struct.rsi_cmd_desc_dword1, i16, i32, i8, i8, [4 x [32 x i8]], [8 x i8], [8 x i8] }>
%struct.rsi_bb_rf_prog = type { %struct.rsi_cmd_desc_dword0, i16, i8, i8, i8, i8, i16, i16, i16 }
%struct.rsi_boot_params_9116 = type <{ %struct.rsi_cmd_desc_dword0, %struct.rsi_cmd_desc_dword1, %struct.rsi_cmd_desc_dword2, i16, i16, %struct.bootup_params_9116 }>
%struct.rsi_boot_params = type <{ [8 x i16], %struct.bootup_params }>
%struct.rsi_chan_config = type { %struct.rsi_cmd_desc_dword0, %struct.rsi_cmd_desc_dword1, i8, i8, i8, i8, i16, i8, i8 }
%struct.rsi_dynamic_s = type <{ %struct.rsi_cmd_desc_dword0, %struct.rsi_cmd_desc_dword1, %struct.rsi_cmd_desc_dword2, %struct.rsi_cmd_desc_dword3, %struct.framebody }>
%struct.framebody = type { i16, i16, i16 }
%struct.rsi_auto_rate = type <{ %struct.rsi_cmd_desc, i16, i16, i16, i16, i16, i16, i16, [40 x i16] }>
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rsi_block_unblock_data = type { %struct.rsi_cmd_desc_dword0, i8, i8, i16, i16, i16, i16, i16 }
%struct.rsi_request_ps = type <{ %struct.rsi_cmd_desc, %struct.ps_sleep_params, i8, i8, i8, i8, i32, i32, i16 }>
%struct.ps_sleep_params = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.rsi_ant_sel_frame = type { %struct.rsi_cmd_desc_dword0, i8, i8, i16, i32, i32 }
%struct.rsi_wowlan_req = type <{ %struct.rsi_cmd_desc, [6 x i8], i16, i16 }>
%struct.rsi_bgscan_config = type <{ %struct.rsi_cmd_desc_dword0, i64, i32, i16, i16, i16, i8, i8, i16, i16, [38 x i16] }>
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.rsi_bgscan_probe = type <{ %struct.rsi_cmd_desc_dword0, i64, i32, i16, i16, i16, i16, i16 }>
%struct.rsi_config_vals = type { i16, i8, i8, [6 x i16], i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8] }
%struct.rsi_wlan_9116_features = type { %struct.rsi_cmd_desc, i8, i8, i8, i8, i8, i8, i16, i32 }
%struct.rsi_eeprom_read_frame = type { i16, i8, i8, i32, i32, i16, i16 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Sending sta notify frame\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.rsi_hal_send_sta_notify_frame = private unnamed_addr constant [30 x i8] c"rsi_hal_send_sta_notify_frame\00", align 1
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed in allocation of skb\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rsi_send_aggregation_params_frame = private unnamed_addr constant [34 x i8] c"rsi_send_aggregation_params_frame\00", align 1
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Sending AMPDU indication frame\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Sending VAP capabilities frame\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.rsi_set_vap_capabilities = private unnamed_addr constant [25 x i8] c"rsi_set_vap_capabilities\00", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Sending load key frame\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.rsi_hal_load_key = private unnamed_addr constant [17 x i8] c"rsi_hal_load_key\00", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Sending scan req frame\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.rsi_set_channel = private unnamed_addr constant [16 x i8] c"rsi_set_channel\00", align 1
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Sending Radio Params update frame\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.rsi_send_radio_params_update = private unnamed_addr constant [29 x i8] c"rsi_send_radio_params_update\00", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Sending vap update indication frame\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.rsi_send_vap_dynamic_update = private unnamed_addr constant [28 x i8] c"rsi_send_vap_dynamic_update\00", align 1
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Sending block/unblock frame\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rsi_send_block_unblock_frame = private unnamed_addr constant [29 x i8] c"rsi_send_block_unblock_frame\00", align 1
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"blocking the data qs\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unblocking the data qs\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sending RX filter frame\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.rsi_send_rx_filter_frame = private unnamed_addr constant [25 x i8] c"rsi_send_rx_filter_frame\00", align 1
@__func__.rsi_set_antenna = private unnamed_addr constant [16 x i8] c"rsi_set_antenna\00", align 1
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Sending wowlan request frame\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.rsi_send_wowlan_request = private unnamed_addr constant [24 x i8] c"rsi_send_wowlan_request\00", align 1
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Host_Sleep_Status : %d Flags : %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Sending bgscan params frame\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rsi_send_bgscan_params = private unnamed_addr constant [23 x i8] c"rsi_send_bgscan_params\00", align 1
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Sending bgscan probe req frame\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.rsi_send_bgscan_probe_req = private unnamed_addr constant [26 x i8] c"rsi_send_bgscan_probe_req\00", align 1
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Card ready indication from Common HAL\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Card ready indication from WLAN HAL\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: [EEPROM_READ] Invalid token\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rsi_handle_card_ready = private unnamed_addr constant [22 x i8] c"rsi_handle_card_ready\00", align 1
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MAC Addr %pM\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"USB buffer status register = %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: card ready indication in invalid state %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Msg Len: %d, Msg Type: %4x\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_mgmt_pkt_recv = private unnamed_addr constant [18 x i8] c"rsi_mgmt_pkt_recv\00", align 1
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Card ready indication received\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Probe confirm received\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Beacon event\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0A\0AWakeup Type: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*** Wakeup for Unicast magic packet ***\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*** Wakeup for Broadcast magic packet ***\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*** Wakeup for GTK renewal ***\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*** Wakeup for Disconnect ***\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*** Wakeup for HW Beacon miss ***\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"##### Un-intentional Wakeup #####\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Received packet type: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unable to allocate skb\0A\00", [36 x i8] zeroinitializer }, align 32
@__const.rsi_load_radio_caps.gc = private unnamed_addr constant [20 x i16] [i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240, i16 240], align 2
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Sending rate symbol req frame\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.rsi_load_radio_caps = private unnamed_addr constant [20 x i8] c"rsi_load_radio_caps\00", align 1
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Sending program BB/RF frame\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rsi_program_bb_rf = private unnamed_addr constant [18 x i8] c"rsi_program_bb_rf\00", align 1
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: ===> RF RESET REQUEST SENT <===\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Sending boot params frame\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.rsi_load_9116_bootup_params = private unnamed_addr constant [28 x i8] c"rsi_load_9116_bootup_params\00", align 1
@boot_params_9116_40 = internal constant { %struct.bootup_params_9116, [43 x i8] } { %struct.bootup_params_9116 <{ i16 -23206, i16 0, i32 -486473728, i32 0, i16 0, i16 0, i16 0, i16 0, [1 x %struct.device_clk_info_9116] [%struct.device_clk_info_9116 { %struct.pll_config_9116 { i16 6357, i16 -6358, i16 48, i16 6156, i16 0, i16 102 }, %struct.switch_clk_9116 { i32 1761607680, i32 50674696, i32 35652609, i32 33554692, i32 989855744 } }], i32 0, i16 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0 }>, [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Packet 40MHZ <=== %d\0A\00", [38 x i8] zeroinitializer }, align 32
@boot_params_9116_20 = internal constant { %struct.bootup_params_9116, [43 x i8] } { %struct.bootup_params_9116 <{ i16 -23206, i16 0, i32 -486473728, i32 0, i16 0, i16 0, i16 0, i16 0, [1 x %struct.device_clk_info_9116] [%struct.device_clk_info_9116 { %struct.pll_config_9116 { i16 6357, i16 -6358, i16 32, i16 6156, i16 17, i16 102 }, %struct.switch_clk_9116 { i32 687865856, i32 50674696, i32 18875393, i32 16777474, i32 989855744 } }], i32 0, i16 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0 }>, [43 x i8] zeroinitializer }, align 32
@boot_params_20 = internal constant { %struct.bootup_params, [47 x i8] } { %struct.bootup_params <{ i16 -23206, i16 0, i32 -486473728, i32 0, i16 0, i16 0, i16 0, i16 0, [3 x %struct.device_clk_info] [%struct.device_clk_info { %struct.pll_config { %struct.tapll_info { i16 2304, i16 1024 }, %struct.pll960_info { i16 5, i16 5120, i16 0 }, %struct.afepll_info { i16 -4087 } }, %struct.switch_clk { i16 2816, i16 4353, i16 18432, i16 4370 } }, %struct.device_clk_info { %struct.pll_config { %struct.tapll_info { i16 2304, i16 1024 }, %struct.pll960_info { i16 5, i16 5120, i16 0 }, %struct.afepll_info { i16 -4087 } }, %struct.switch_clk zeroinitializer }, %struct.device_clk_info { %struct.pll_config { %struct.tapll_info { i16 2304, i16 1024 }, %struct.pll960_info { i16 5, i16 5120, i16 0 }, %struct.afepll_info { i16 -4087 } }, %struct.switch_clk zeroinitializer }], i32 0, i16 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0 }>, [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Packet 20MHZ <=== %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rsi_load_bootup_params = private unnamed_addr constant [23 x i8] c"rsi_load_bootup_params\00", align 1
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@boot_params_40 = internal constant { %struct.bootup_params, [47 x i8] } { %struct.bootup_params <{ i16 -23206, i16 0, i32 -486473728, i32 0, i16 0, i16 0, i16 0, i16 0, [3 x %struct.device_clk_info] [%struct.device_clk_info { %struct.pll_config { %struct.tapll_info { i16 2304, i16 1024 }, %struct.pll960_info { i16 5, i16 5120, i16 0 }, %struct.afepll_info { i16 -4087 } }, %struct.switch_clk { i16 2304, i16 8465, i16 18432, i16 4370 } }, %struct.device_clk_info { %struct.pll_config { %struct.tapll_info { i16 2304, i16 1024 }, %struct.pll960_info { i16 5, i16 5120, i16 0 }, %struct.afepll_info { i16 -4087 } }, %struct.switch_clk zeroinitializer }, %struct.device_clk_info { %struct.pll_config { %struct.tapll_info { i16 2304, i16 1024 }, %struct.pll960_info { i16 5, i16 5120, i16 0 }, %struct.afepll_info { i16 -4087 } }, %struct.switch_clk zeroinitializer }], i32 0, i16 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0 }>, [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Sending auto rate request frame\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.rsi_send_auto_rate_request = private unnamed_addr constant [27 x i8] c"rsi_send_auto_rate_request\00", align 1
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed in allocation of mem\0A\00", [63 x i8] zeroinitializer }, align 32
@rsi_rates = external dso_local local_unnamed_addr global [12 x %struct.ieee80211_rate], align 4
@rsi_mcsrates = external dso_local local_unnamed_addr constant [8 x i16], align 2
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Sending common device config params\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.rsi_send_common_dev_params = private unnamed_addr constant [27 x i8] c"rsi_send_common_dev_params\00", align 1
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Boot up params confirm received\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.rsi_handle_ta_confirm_type = private unnamed_addr constant [27 x i8] c"rsi_handle_ta_confirm_type\00", align 1
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Received bootup params cfm in %d state\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EEPROM READ confirm received\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: [EEPROM_READ] Invalid len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed reading RF band\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dual band supported\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Only 2.4Ghz band supported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Invalid EEPROM read type\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Reset MAC cfm received\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Received reset mac cfm in %d state\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to send 9116 features\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Radio cap cfm received\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Received radio caps cfm in %d state\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: BB/RF cfm received\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Received bbb_rf cfm in %d state\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Set channel confirm\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wakeup/Sleep confirmation.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BG scan complete event\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Background scan completed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Invalid TA confirm pkt received\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Unable to send pkt/Invalid frame received\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Sending reset MAC frame\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.rsi_send_reset_mac = private unnamed_addr constant [19 x i8] c"rsi_send_reset_mac\00", align 1
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Sending EEPROM read req frame\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.rsi_eeprom_read = private unnamed_addr constant [16 x i8] c"rsi_eeprom_read\00", align 1
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Sending wlan 9116 features\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_send_w9116_features = private unnamed_addr constant [24 x i8] c"rsi_send_w9116_features\00", align 1
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to prepare beacon\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Added to beacon queue\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.rsi_send_beacon = private unnamed_addr constant [16 x i8] c"rsi_send_beacon\00", align 1
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Invalid rx msg of len = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_mgmt_pkt_to_core = private unnamed_addr constant [21 x i8] c"rsi_mgmt_pkt_to_core\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.75 = internal global [10 x i64] [i64 8, i64 16, i64 13, i64 26, i64 39, i64 52, i64 78, i64 104, i64 117, i64 130]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 4, i64 8, i64 197]
@__sancov_gen_cov_switch_values.78 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 12, i64 14, i64 21, i64 23]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 546, i32 24 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 551, i32 21 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 633, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 724, i32 24 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 807, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1128, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1185, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1215, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1569, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1586, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1590, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1613, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1799, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1817, i32 21 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1835, i32 24 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1882, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2134, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2141, i32 22 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2146, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2152, i32 23 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2156, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2171, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2192, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2200, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2207, i32 22 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2220, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2230, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2234, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2238, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2242, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2246, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2250, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2254, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2261, i32 22 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 350, i32 21 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 385, i32 21 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 670, i32 24 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 689, i32 25 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 975, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c"boot_params_9116_40\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 238, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 987, i32 25 }
@___asan_gen_.206 = private unnamed_addr constant [20 x i8] c"boot_params_9116_20\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 212, i32 34 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"boot_params_20\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 24, i32 29 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 997, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 931, i32 24 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"boot_params_40\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 118, i32 29 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1323, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1335, i32 21 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 875, i32 24 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1948, i32 21 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1973, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1980, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1983, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2002, i32 6 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2010, i32 24 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2015, i32 6 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2023, i32 22 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2031, i32 22 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2040, i32 5 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2052, i32 6 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2059, i32 23 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2064, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2073, i32 21 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2089, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2096, i32 22 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2100, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2104, i32 22 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2113, i32 22 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2117, i32 22 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2123, i32 20 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1026, i32 24 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1525, i32 24 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1697, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1780, i32 21 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1786, i32 24 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [43 x i8] c"../drivers/net/wireless/rsi/rsi_91x_mgmt.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 499, i32 4 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @boot_params_9116_40, ptr @.str.39, ptr @boot_params_9116_20, ptr @boot_params_20, ptr @.str.40, ptr @.str.41, ptr @boot_params_40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_params_9116_40 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_params_9116_20 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_params_20 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_params_40 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_bgscan_params(ptr nocapture noundef writeonly %common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bgscan = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80
  %roam_threshold = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 1
  %0 = ptrtoint ptr %bgscan to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bgscan, align 4
  %1 = ptrtoint ptr %roam_threshold to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 10, ptr %roam_threshold, align 2
  %bgscan_periodicity = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 2
  %2 = ptrtoint ptr %bgscan_periodicity to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 30, ptr %bgscan_periodicity, align 4
  %num_bgscan_channels = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 3
  %3 = ptrtoint ptr %num_bgscan_channels to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %num_bgscan_channels, align 2
  %two_probe = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 4
  %4 = ptrtoint ptr %two_probe to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %two_probe, align 1
  %active_scan_duration = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 5
  %5 = ptrtoint ptr %active_scan_duration to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 20, ptr %active_scan_duration, align 4
  %passive_scan_duration = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 6
  %6 = ptrtoint ptr %passive_scan_duration to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 70, ptr %passive_scan_duration, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_hal_send_sta_notify_frame(ptr noundef %common, i32 noundef %opmode, i8 noundef zeroext %notify_event, ptr nocapture noundef readonly %bssid, i8 noundef zeroext %qos_enable, i16 noundef zeroext %aid, i16 noundef zeroext %sta_id, ptr nocapture noundef readonly %vif) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %vap_id1 = getelementptr inbounds %struct.vif_priv, ptr %drv_priv, i32 0, i32 3
  %0 = ptrtoint ptr %vap_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vap_id1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rsi_hal_send_sta_notify_frame) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 32, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_hal_send_sta_notify_frame) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 32)
  %5 = load ptr, ptr %data, align 4
  %6 = zext i32 %opmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %opmode, label %if.end.if.end12_crit_edge [
    i32 1, label %if.end.if.end12.sink.split_crit_edge
    i32 0, label %if.then9
  ]

if.end.if.end12.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.sink.split

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then9, %if.end.if.end12.sink.split_crit_edge
  %.sink = phi i16 [ 512, %if.then9 ], [ 0, %if.end.if.end12.sink.split_crit_edge ]
  %command10 = getelementptr inbounds %struct.rsi_peer_notify, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %command10 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %.sink, ptr %command10, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %notify_event)
  %cond = icmp eq i8 %notify_event, 0
  br i1 %cond, label %sw.bb, label %if.end12.rsi_send_internal_mgmt_frame.exit_crit_edge

if.end12.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %command14 = getelementptr inbounds %struct.rsi_peer_notify, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %command14 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %command14, align 1
  %10 = or i16 %9, 256
  store i16 %10, ptr %command14, align 1
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %sw.bb, %if.end12.rsi_send_internal_mgmt_frame.exit_crit_edge
  %11 = shl i16 %aid, 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %command25 = getelementptr inbounds %struct.rsi_peer_notify, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %command25 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %command25, align 1
  %or2782 = or i16 %14, %12
  store i16 %or2782, ptr %command25, align 1
  %mac_addr = getelementptr inbounds %struct.rsi_peer_notify, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bssid, align 4
  %17 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %bssid, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.rsi_peer_notify, ptr %5, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %add.ptr1.i, align 2
  %mpdu_density = getelementptr inbounds %struct.rsi_peer_notify, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %mpdu_density to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 2048, ptr %mpdu_density, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qos_enable)
  %tobool31.not = icmp eq i8 %qos_enable, 0
  %22 = select i1 %tobool31.not, i32 0, i32 16777216
  %sta_flags = getelementptr inbounds %struct.rsi_peer_notify, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %sta_flags to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %sta_flags, align 1
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4160, ptr %5, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %frame_type, align 1
  %conv36 = trunc i16 %sta_id to i8
  %qid_tid = getelementptr inbounds %struct.rsi_cmd_desc, ptr %5, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %qid_tid to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv36, ptr %qid_tid, align 1
  %conv38 = trunc i32 %1 to i8
  %sta_id41 = getelementptr inbounds %struct.rsi_cmd_desc, ptr %5, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %sta_id41 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv38, ptr %sta_id41, align 1
  %call43 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 32) #7
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 4
  %32 = or i16 %31, 128
  store i16 %32, ptr %29, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %33 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %35, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %36 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %37 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp45 = icmp ne i32 %38, 2
  %brmerge = or i1 %tobool31.not, %cmp45
  br i1 %brmerge, label %rsi_send_internal_mgmt_frame.exit.cleanup_crit_edge, label %if.then51

rsi_send_internal_mgmt_frame.exit.cleanup_crit_edge: ; preds = %rsi_send_internal_mgmt_frame.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %rsi_send_internal_mgmt_frame.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cw_min.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 0, i32 1
  %39 = ptrtoint ptr %cw_min.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cw_min.i, align 2
  %41 = lshr i16 %40, 1
  %div.i = zext i16 %41 to i32
  %aifs.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 0, i32 3
  %42 = ptrtoint ptr %aifs.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %aifs.i, align 2
  %conv6.i = zext i8 %43 to i32
  %add.i = add nuw nsw i32 %div.i, %conv6.i
  %mul.i = mul nuw nsw i32 %add.i, 9
  %add7.i = add nuw nsw i32 %mul.i, 16
  %arrayidx9.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 0
  %wme_params.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 0, i32 1
  %44 = ptrtoint ptr %wme_params.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add7.i, ptr %wme_params.i, align 4
  %45 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add7.i, ptr %arrayidx9.i, align 4
  %pkt_contended.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 0, i32 2
  %46 = ptrtoint ptr %pkt_contended.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %pkt_contended.i, align 4
  %cw_min.1.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 1, i32 1
  %47 = ptrtoint ptr %cw_min.1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cw_min.1.i, align 2
  %49 = lshr i16 %48, 1
  %div.1.i = zext i16 %49 to i32
  %aifs.1.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 1, i32 3
  %50 = ptrtoint ptr %aifs.1.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %aifs.1.i, align 2
  %conv6.1.i = zext i8 %51 to i32
  %add.1.i = add nuw nsw i32 %div.1.i, %conv6.1.i
  %mul.1.i = mul nuw nsw i32 %add.1.i, 9
  %add7.1.i = add nuw nsw i32 %mul.1.i, 16
  %arrayidx9.1.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 1
  %wme_params.1.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 1, i32 1
  %52 = ptrtoint ptr %wme_params.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add7.1.i, ptr %wme_params.1.i, align 4
  %53 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add7.1.i, ptr %arrayidx9.1.i, align 4
  %pkt_contended.1.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 1, i32 2
  %54 = ptrtoint ptr %pkt_contended.1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %pkt_contended.1.i, align 4
  %cw_min.2.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 2, i32 1
  %55 = ptrtoint ptr %cw_min.2.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cw_min.2.i, align 2
  %57 = lshr i16 %56, 1
  %div.2.i = zext i16 %57 to i32
  %aifs.2.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 2, i32 3
  %58 = ptrtoint ptr %aifs.2.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %aifs.2.i, align 2
  %conv6.2.i = zext i8 %59 to i32
  %add.2.i = add nuw nsw i32 %div.2.i, %conv6.2.i
  %mul.2.i = mul nuw nsw i32 %add.2.i, 9
  %add7.2.i = add nuw nsw i32 %mul.2.i, 16
  %arrayidx9.2.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 2
  %wme_params.2.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 2, i32 1
  %60 = ptrtoint ptr %wme_params.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add7.2.i, ptr %wme_params.2.i, align 4
  %61 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add7.2.i, ptr %arrayidx9.2.i, align 4
  %pkt_contended.2.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 2, i32 2
  %62 = ptrtoint ptr %pkt_contended.2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %pkt_contended.2.i, align 4
  %cw_min.3.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 3, i32 1
  %63 = ptrtoint ptr %cw_min.3.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %cw_min.3.i, align 2
  %65 = lshr i16 %64, 1
  %div.3.i = zext i16 %65 to i32
  %aifs.3.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 3, i32 3
  %66 = ptrtoint ptr %aifs.3.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %aifs.3.i, align 2
  %conv6.3.i = zext i8 %67 to i32
  %add.3.i = add nuw nsw i32 %div.3.i, %conv6.3.i
  %mul.3.i = mul nuw nsw i32 %add.3.i, 9
  %add7.3.i = add nuw nsw i32 %mul.3.i, 16
  %arrayidx9.3.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 3
  %wme_params.3.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 3, i32 1
  %68 = ptrtoint ptr %wme_params.3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add7.3.i, ptr %wme_params.3.i, align 4
  %69 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add7.3.i, ptr %arrayidx9.3.i, align 4
  %pkt_contended.3.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 3, i32 2
  %70 = ptrtoint ptr %pkt_contended.3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %pkt_contended.3.i, align 4
  %call52 = tail call fastcc i32 @rsi_load_radio_caps(ptr noundef %common)
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %rsi_send_internal_mgmt_frame.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call52, %if.then51 ], [ 0, %rsi_send_internal_mgmt_frame.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_load_radio_caps(ptr noundef %common) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.rsi_load_radio_caps) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 166, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_load_radio_caps) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 166)
  %5 = load ptr, ptr %data, align 4
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %frame_type, align 1
  %channel = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 32
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %channel, align 1
  %channel_num = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %channel_num to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %channel_num, align 1
  %rf_model = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %rf_model to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %rf_model, align 1
  %radio_cfg_info = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %radio_cfg_info to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %radio_cfg_info, align 1
  %channel_width = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 15
  %12 = ptrtoint ptr %channel_width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %channel_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  br i1 %cmp, label %if.then5, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then5:                                         ; preds = %if.end
  %14 = ptrtoint ptr %radio_cfg_info to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 9, ptr %radio_cfg_info, align 1
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %15 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fsm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %16)
  %cmp9 = icmp eq i32 %16, 9
  br i1 %cmp9, label %if.then11, label %if.then5.if.end24_crit_edge

if.then5.if.end24_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then11:                                        ; preds = %if.then5
  %hw12 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %hw12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw12, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %18, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i = icmp eq i32 %20, 2
  br i1 %cmp.i, label %conf_is_ht40_plus.exit, label %if.then11.if.else19_crit_edge

if.then11.if.else19_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else19

conf_is_ht40_plus.exit:                           ; preds = %if.then11
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %18, i32 0, i32 7
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %18, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %center_freq1.i, align 4
  %23 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp3.i = icmp ugt i32 %22, %26
  br i1 %cmp3.i, label %conf_is_ht40_plus.exit.if.end24.sink.split_crit_edge, label %conf_is_ht40_minus.exit

conf_is_ht40_plus.exit.if.end24.sink.split_crit_edge: ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.sink.split

conf_is_ht40_minus.exit:                          ; preds = %conf_is_ht40_plus.exit
  %27 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %center_freq1.i, align 4
  %29 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chandef.i, align 4
  %center_freq.i211 = getelementptr inbounds %struct.ieee80211_channel, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %center_freq.i211 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %center_freq.i211, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %32)
  %cmp3.i212 = icmp ult i32 %28, %32
  br i1 %cmp3.i212, label %conf_is_ht40_minus.exit.if.end24.sink.split_crit_edge, label %conf_is_ht40_minus.exit.if.else19_crit_edge

conf_is_ht40_minus.exit.if.else19_crit_edge:      ; preds = %conf_is_ht40_minus.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else19

conf_is_ht40_minus.exit.if.end24.sink.split_crit_edge: ; preds = %conf_is_ht40_minus.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.sink.split

if.else19:                                        ; preds = %conf_is_ht40_minus.exit.if.else19_crit_edge, %if.then11.if.else19_crit_edge
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.else19, %conf_is_ht40_minus.exit.if.end24.sink.split_crit_edge, %conf_is_ht40_plus.exit.if.end24.sink.split_crit_edge
  %.sink = phi i16 [ 1552, %if.else19 ], [ 1088, %conf_is_ht40_plus.exit.if.end24.sink.split_crit_edge ], [ 544, %conf_is_ht40_minus.exit.if.end24.sink.split_crit_edge ]
  %ppe_ack_rate = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %ppe_ack_rate to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %.sink, ptr %ppe_ack_rate, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.then5.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %device_model = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %device_model to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %device_model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp29 = icmp eq i32 %35, 1
  br i1 %cmp29, label %land.lhs.true, label %if.end24.if.end39_crit_edge

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end24
  %36 = ptrtoint ptr %channel_width to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %channel_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp33 = icmp eq i8 %37, 0
  br i1 %cmp33, label %if.then35, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %radio_cfg_info to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %radio_cfg_info, align 1
  %40 = and i8 %39, -4
  store i8 %40, ptr %radio_cfg_info, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %land.lhs.true.if.end39_crit_edge, %if.end24.if.end39_crit_edge
  %sifs_tx_11n = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 12
  %41 = ptrtoint ptr %sifs_tx_11n to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 17410, ptr %sifs_tx_11n, align 1
  %sifs_tx_11b = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 13
  %42 = ptrtoint ptr %sifs_tx_11b to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 23041, ptr %sifs_tx_11b, align 1
  %slot_rx_11n = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 14
  %43 = ptrtoint ptr %slot_rx_11n to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 26625, ptr %slot_rx_11n, align 1
  %ofdm_ack_tout = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 15
  %44 = ptrtoint ptr %ofdm_ack_tout to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 -24566, ptr %ofdm_ack_tout, align 1
  %cck_ack_tout = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 16
  %45 = ptrtoint ptr %cck_ack_tout to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 -8156, ptr %cck_ack_tout, align 1
  %preamble_type = getelementptr inbounds %struct.rsi_radio_caps, ptr %5, i32 0, i32 17
  %46 = ptrtoint ptr %preamble_type to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 0, ptr %preamble_type, align 1
  %arrayidx = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 0
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 768, ptr %arrayidx, align 1
  %cont_win_max_q = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 0, i32 1
  %48 = ptrtoint ptr %cont_win_max_q to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 16128, ptr %cont_win_max_q, align 1
  %aifsn_val_q = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 0, i32 2
  %49 = ptrtoint ptr %aifsn_val_q to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 512, ptr %aifsn_val_q, align 1
  %txop_q = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 0, i32 3
  %50 = ptrtoint ptr %txop_q to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 0, ptr %txop_q, align 1
  %arrayidx.1 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 768, ptr %arrayidx.1, align 1
  %cont_win_max_q.1 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 1, i32 1
  %52 = ptrtoint ptr %cont_win_max_q.1 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 16128, ptr %cont_win_max_q.1, align 1
  %aifsn_val_q.1 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 1, i32 2
  %53 = ptrtoint ptr %aifsn_val_q.1 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 512, ptr %aifsn_val_q.1, align 1
  %txop_q.1 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 1, i32 3
  %54 = ptrtoint ptr %txop_q.1 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 0, ptr %txop_q.1, align 1
  %arrayidx.2 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 2
  %55 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 768, ptr %arrayidx.2, align 1
  %cont_win_max_q.2 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 2, i32 1
  %56 = ptrtoint ptr %cont_win_max_q.2 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 16128, ptr %cont_win_max_q.2, align 1
  %aifsn_val_q.2 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 2, i32 2
  %57 = ptrtoint ptr %aifsn_val_q.2 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 512, ptr %aifsn_val_q.2, align 1
  %txop_q.2 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 2, i32 3
  %58 = ptrtoint ptr %txop_q.2 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 0, ptr %txop_q.2, align 1
  %arrayidx.3 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 3
  %59 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 768, ptr %arrayidx.3, align 1
  %cont_win_max_q.3 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 3, i32 1
  %60 = ptrtoint ptr %cont_win_max_q.3 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 16128, ptr %cont_win_max_q.3, align 1
  %aifsn_val_q.3 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 3, i32 2
  %61 = ptrtoint ptr %aifsn_val_q.3 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 512, ptr %aifsn_val_q.3, align 1
  %txop_q.3 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 3, i32 3
  %62 = ptrtoint ptr %txop_q.3 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 0, ptr %txop_q.3, align 1
  %arrayidx.4 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 4
  %63 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 768, ptr %arrayidx.4, align 1
  %cont_win_max_q.4 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 4, i32 1
  %64 = ptrtoint ptr %cont_win_max_q.4 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 16128, ptr %cont_win_max_q.4, align 1
  %aifsn_val_q.4 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 4, i32 2
  %65 = ptrtoint ptr %aifsn_val_q.4 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 512, ptr %aifsn_val_q.4, align 1
  %txop_q.4 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 4, i32 3
  %66 = ptrtoint ptr %txop_q.4 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 0, ptr %txop_q.4, align 1
  %arrayidx.5 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 5
  %67 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 768, ptr %arrayidx.5, align 1
  %cont_win_max_q.5 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 5, i32 1
  %68 = ptrtoint ptr %cont_win_max_q.5 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 16128, ptr %cont_win_max_q.5, align 1
  %aifsn_val_q.5 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 5, i32 2
  %69 = ptrtoint ptr %aifsn_val_q.5 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 512, ptr %aifsn_val_q.5, align 1
  %txop_q.5 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 5, i32 3
  %70 = ptrtoint ptr %txop_q.5 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 0, ptr %txop_q.5, align 1
  %arrayidx.6 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 6
  %71 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 768, ptr %arrayidx.6, align 1
  %cont_win_max_q.6 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 6, i32 1
  %72 = ptrtoint ptr %cont_win_max_q.6 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 16128, ptr %cont_win_max_q.6, align 1
  %aifsn_val_q.6 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 6, i32 2
  %73 = ptrtoint ptr %aifsn_val_q.6 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 512, ptr %aifsn_val_q.6, align 1
  %txop_q.6 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 6, i32 3
  %74 = ptrtoint ptr %txop_q.6 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 0, ptr %txop_q.6, align 1
  %arrayidx.7 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 7
  %75 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 768, ptr %arrayidx.7, align 1
  %cont_win_max_q.7 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 7, i32 1
  %76 = ptrtoint ptr %cont_win_max_q.7 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 16128, ptr %cont_win_max_q.7, align 1
  %aifsn_val_q.7 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 7, i32 2
  %77 = ptrtoint ptr %aifsn_val_q.7 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 512, ptr %aifsn_val_q.7, align 1
  %txop_q.7 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 7, i32 3
  %78 = ptrtoint ptr %txop_q.7 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 0, ptr %txop_q.7, align 1
  %arrayidx.8 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 8
  %79 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 768, ptr %arrayidx.8, align 1
  %cont_win_max_q.8 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 8, i32 1
  %80 = ptrtoint ptr %cont_win_max_q.8 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 16128, ptr %cont_win_max_q.8, align 1
  %aifsn_val_q.8 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 8, i32 2
  %81 = ptrtoint ptr %aifsn_val_q.8 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 512, ptr %aifsn_val_q.8, align 1
  %txop_q.8 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 8, i32 3
  %82 = ptrtoint ptr %txop_q.8 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 0, ptr %txop_q.8, align 1
  %arrayidx.9 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 9
  %83 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 768, ptr %arrayidx.9, align 1
  %cont_win_max_q.9 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 9, i32 1
  %84 = ptrtoint ptr %cont_win_max_q.9 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 16128, ptr %cont_win_max_q.9, align 1
  %aifsn_val_q.9 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 9, i32 2
  %85 = ptrtoint ptr %aifsn_val_q.9 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 512, ptr %aifsn_val_q.9, align 1
  %txop_q.9 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 9, i32 3
  %86 = ptrtoint ptr %txop_q.9 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 0, ptr %txop_q.9, align 1
  %arrayidx.10 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 10
  %87 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 768, ptr %arrayidx.10, align 1
  %cont_win_max_q.10 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 10, i32 1
  %88 = ptrtoint ptr %cont_win_max_q.10 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 16128, ptr %cont_win_max_q.10, align 1
  %aifsn_val_q.10 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 10, i32 2
  %89 = ptrtoint ptr %aifsn_val_q.10 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 512, ptr %aifsn_val_q.10, align 1
  %txop_q.10 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 10, i32 3
  %90 = ptrtoint ptr %txop_q.10 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 0, ptr %txop_q.10, align 1
  %arrayidx.11 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 11
  %91 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 768, ptr %arrayidx.11, align 1
  %cont_win_max_q.11 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 11, i32 1
  %92 = ptrtoint ptr %cont_win_max_q.11 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 16128, ptr %cont_win_max_q.11, align 1
  %aifsn_val_q.11 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 11, i32 2
  %93 = ptrtoint ptr %aifsn_val_q.11 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 512, ptr %aifsn_val_q.11, align 1
  %txop_q.11 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 8, i32 11, i32 3
  %94 = ptrtoint ptr %txop_q.11 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 0, ptr %txop_q.11, align 1
  %cw_max = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 0, i32 2
  %95 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %cw_max, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp60.not = icmp eq i16 %96, 0
  br i1 %cmp60.not, label %if.end39.for.inc95_crit_edge, label %if.then62

if.end39.for.inc95_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc95

if.then62:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx58 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 0
  %cw_min = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 0, i32 1
  %97 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %cw_min, align 2
  %99 = tail call i16 @llvm.bswap.i16(i16 %98)
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %99, ptr %arrayidx, align 1
  %101 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %cw_max, align 2
  %103 = tail call i16 @llvm.bswap.i16(i16 %102)
  %104 = ptrtoint ptr %cont_win_max_q to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 %103, ptr %cont_win_max_q, align 1
  %aifs = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 0, i32 3
  %105 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %aifs, align 2
  %conv81 = zext i8 %106 to i16
  %107 = ptrtoint ptr %aifsn_val_q to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %conv81, ptr %aifsn_val_q, align 1
  %108 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx58, align 2
  %110 = tail call i16 @llvm.bswap.i16(i16 %109)
  %111 = ptrtoint ptr %txop_q to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 %110, ptr %txop_q, align 1
  br label %for.inc95

for.inc95:                                        ; preds = %if.then62, %if.end39.for.inc95_crit_edge
  %cw_max.1 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 1, i32 2
  %112 = ptrtoint ptr %cw_max.1 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %cw_max.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp60.not.1 = icmp eq i16 %113, 0
  br i1 %cmp60.not.1, label %for.inc95.for.inc95.1_crit_edge, label %if.then62.1

for.inc95.for.inc95.1_crit_edge:                  ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc95.1

if.then62.1:                                      ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx58.1 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 1
  %cw_min.1 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 1, i32 1
  %114 = ptrtoint ptr %cw_min.1 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %cw_min.1, align 2
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %117 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %116, ptr %arrayidx.1, align 1
  %118 = ptrtoint ptr %cw_max.1 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cw_max.1, align 2
  %120 = tail call i16 @llvm.bswap.i16(i16 %119)
  %121 = ptrtoint ptr %cont_win_max_q.1 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 2)
  store i16 %120, ptr %cont_win_max_q.1, align 1
  %aifs.1 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 1, i32 3
  %122 = ptrtoint ptr %aifs.1 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %aifs.1, align 2
  %conv81.1 = zext i8 %123 to i16
  %124 = ptrtoint ptr %aifsn_val_q.1 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 2)
  store i16 %conv81.1, ptr %aifsn_val_q.1, align 1
  %125 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx58.1, align 2
  %127 = tail call i16 @llvm.bswap.i16(i16 %126)
  %128 = ptrtoint ptr %txop_q.1 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 2)
  store i16 %127, ptr %txop_q.1, align 1
  br label %for.inc95.1

for.inc95.1:                                      ; preds = %if.then62.1, %for.inc95.for.inc95.1_crit_edge
  %cw_max.2 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 2, i32 2
  %129 = ptrtoint ptr %cw_max.2 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %cw_max.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %cmp60.not.2 = icmp eq i16 %130, 0
  br i1 %cmp60.not.2, label %for.inc95.1.for.inc95.2_crit_edge, label %if.then62.2

for.inc95.1.for.inc95.2_crit_edge:                ; preds = %for.inc95.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc95.2

if.then62.2:                                      ; preds = %for.inc95.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx58.2 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 2
  %cw_min.2 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 2, i32 1
  %131 = ptrtoint ptr %cw_min.2 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %cw_min.2, align 2
  %133 = tail call i16 @llvm.bswap.i16(i16 %132)
  %134 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %133, ptr %arrayidx.2, align 1
  %135 = ptrtoint ptr %cw_max.2 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %cw_max.2, align 2
  %137 = tail call i16 @llvm.bswap.i16(i16 %136)
  %138 = ptrtoint ptr %cont_win_max_q.2 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %137, ptr %cont_win_max_q.2, align 1
  %aifs.2 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 2, i32 3
  %139 = ptrtoint ptr %aifs.2 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %aifs.2, align 2
  %conv81.2 = zext i8 %140 to i16
  %141 = ptrtoint ptr %aifsn_val_q.2 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 %conv81.2, ptr %aifsn_val_q.2, align 1
  %142 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx58.2, align 2
  %144 = tail call i16 @llvm.bswap.i16(i16 %143)
  %145 = ptrtoint ptr %txop_q.2 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 %144, ptr %txop_q.2, align 1
  br label %for.inc95.2

for.inc95.2:                                      ; preds = %if.then62.2, %for.inc95.1.for.inc95.2_crit_edge
  %cw_max.3 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 3, i32 2
  %146 = ptrtoint ptr %cw_max.3 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %cw_max.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %cmp60.not.3 = icmp eq i16 %147, 0
  br i1 %cmp60.not.3, label %for.inc95.2.for.inc95.3_crit_edge, label %if.then62.3

for.inc95.2.for.inc95.3_crit_edge:                ; preds = %for.inc95.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc95.3

if.then62.3:                                      ; preds = %for.inc95.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx58.3 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 3
  %cw_min.3 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 3, i32 1
  %148 = ptrtoint ptr %cw_min.3 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %cw_min.3, align 2
  %150 = tail call i16 @llvm.bswap.i16(i16 %149)
  %151 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 %150, ptr %arrayidx.3, align 1
  %152 = ptrtoint ptr %cw_max.3 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %cw_max.3, align 2
  %154 = tail call i16 @llvm.bswap.i16(i16 %153)
  %155 = ptrtoint ptr %cont_win_max_q.3 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 %154, ptr %cont_win_max_q.3, align 1
  %aifs.3 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 25, i32 3, i32 3
  %156 = ptrtoint ptr %aifs.3 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %aifs.3, align 2
  %conv81.3 = zext i8 %157 to i16
  %158 = ptrtoint ptr %aifsn_val_q.3 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 %conv81.3, ptr %aifsn_val_q.3, align 1
  %159 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %arrayidx58.3, align 2
  %161 = tail call i16 @llvm.bswap.i16(i16 %160)
  %162 = ptrtoint ptr %txop_q.3 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 2)
  store i16 %161, ptr %txop_q.3, align 1
  br label %for.inc95.3

for.inc95.3:                                      ; preds = %if.then62.3, %for.inc95.2.for.inc95.3_crit_edge
  %163 = ptrtoint ptr %txop_q.9 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 -1, ptr %txop_q.9, align 1
  %164 = ptrtoint ptr %txop_q.10 to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 0, ptr %txop_q.10, align 1
  %165 = ptrtoint ptr %txop_q.11 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 2)
  store i16 -1, ptr %txop_q.11, align 1
  %rate_pwr = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36
  %166 = call ptr @memcpy(ptr %rate_pwr, ptr @__const.rsi_load_radio_caps.gc, i32 40)
  %arrayidx122 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 0
  %167 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_storeN_noabort(i32 %167, i32 2)
  store i16 -4096, ptr %arrayidx122, align 1
  %arrayidx116.1 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 1
  %168 = ptrtoint ptr %arrayidx116.1 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx116.1, align 2
  %170 = shl i16 %169, 8
  %arrayidx122.1 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 1
  %171 = ptrtoint ptr %arrayidx122.1 to i32
  call void @__asan_storeN_noabort(i32 %171, i32 2)
  store i16 %170, ptr %arrayidx122.1, align 1
  %arrayidx116.2 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 2
  %172 = ptrtoint ptr %arrayidx116.2 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %arrayidx116.2, align 2
  %174 = shl i16 %173, 8
  %arrayidx122.2 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 2
  %175 = ptrtoint ptr %arrayidx122.2 to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 %174, ptr %arrayidx122.2, align 1
  %arrayidx116.3 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 3
  %176 = ptrtoint ptr %arrayidx116.3 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx116.3, align 2
  %178 = shl i16 %177, 8
  %arrayidx122.3 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 3
  %179 = ptrtoint ptr %arrayidx122.3 to i32
  call void @__asan_storeN_noabort(i32 %179, i32 2)
  store i16 %178, ptr %arrayidx122.3, align 1
  %arrayidx116.4 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 4
  %180 = ptrtoint ptr %arrayidx116.4 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx116.4, align 2
  %182 = shl i16 %181, 8
  %arrayidx122.4 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 4
  %183 = ptrtoint ptr %arrayidx122.4 to i32
  call void @__asan_storeN_noabort(i32 %183, i32 2)
  store i16 %182, ptr %arrayidx122.4, align 1
  %arrayidx116.5 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 5
  %184 = ptrtoint ptr %arrayidx116.5 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %arrayidx116.5, align 2
  %186 = shl i16 %185, 8
  %arrayidx122.5 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 5
  %187 = ptrtoint ptr %arrayidx122.5 to i32
  call void @__asan_storeN_noabort(i32 %187, i32 2)
  store i16 %186, ptr %arrayidx122.5, align 1
  %arrayidx116.6 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 6
  %188 = ptrtoint ptr %arrayidx116.6 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %arrayidx116.6, align 2
  %190 = shl i16 %189, 8
  %arrayidx122.6 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 6
  %191 = ptrtoint ptr %arrayidx122.6 to i32
  call void @__asan_storeN_noabort(i32 %191, i32 2)
  store i16 %190, ptr %arrayidx122.6, align 1
  %arrayidx116.7 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 7
  %192 = ptrtoint ptr %arrayidx116.7 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx116.7, align 2
  %194 = shl i16 %193, 8
  %arrayidx122.7 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 7
  %195 = ptrtoint ptr %arrayidx122.7 to i32
  call void @__asan_storeN_noabort(i32 %195, i32 2)
  store i16 %194, ptr %arrayidx122.7, align 1
  %arrayidx116.8 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 8
  %196 = ptrtoint ptr %arrayidx116.8 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %arrayidx116.8, align 2
  %198 = shl i16 %197, 8
  %arrayidx122.8 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 8
  %199 = ptrtoint ptr %arrayidx122.8 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 2)
  store i16 %198, ptr %arrayidx122.8, align 1
  %arrayidx116.9 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 9
  %200 = ptrtoint ptr %arrayidx116.9 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %arrayidx116.9, align 2
  %202 = shl i16 %201, 8
  %arrayidx122.9 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 9
  %203 = ptrtoint ptr %arrayidx122.9 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 2)
  store i16 %202, ptr %arrayidx122.9, align 1
  %arrayidx116.10 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 10
  %204 = ptrtoint ptr %arrayidx116.10 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %arrayidx116.10, align 2
  %206 = shl i16 %205, 8
  %arrayidx122.10 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 10
  %207 = ptrtoint ptr %arrayidx122.10 to i32
  call void @__asan_storeN_noabort(i32 %207, i32 2)
  store i16 %206, ptr %arrayidx122.10, align 1
  %arrayidx116.11 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 11
  %208 = ptrtoint ptr %arrayidx116.11 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %arrayidx116.11, align 2
  %210 = shl i16 %209, 8
  %arrayidx122.11 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 11
  %211 = ptrtoint ptr %arrayidx122.11 to i32
  call void @__asan_storeN_noabort(i32 %211, i32 2)
  store i16 %210, ptr %arrayidx122.11, align 1
  %arrayidx116.12 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 12
  %212 = ptrtoint ptr %arrayidx116.12 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %arrayidx116.12, align 2
  %214 = shl i16 %213, 8
  %arrayidx122.12 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 12
  %215 = ptrtoint ptr %arrayidx122.12 to i32
  call void @__asan_storeN_noabort(i32 %215, i32 2)
  store i16 %214, ptr %arrayidx122.12, align 1
  %arrayidx116.13 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 13
  %216 = ptrtoint ptr %arrayidx116.13 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %arrayidx116.13, align 2
  %218 = shl i16 %217, 8
  %arrayidx122.13 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 13
  %219 = ptrtoint ptr %arrayidx122.13 to i32
  call void @__asan_storeN_noabort(i32 %219, i32 2)
  store i16 %218, ptr %arrayidx122.13, align 1
  %arrayidx116.14 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 14
  %220 = ptrtoint ptr %arrayidx116.14 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx116.14, align 2
  %222 = shl i16 %221, 8
  %arrayidx122.14 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 14
  %223 = ptrtoint ptr %arrayidx122.14 to i32
  call void @__asan_storeN_noabort(i32 %223, i32 2)
  store i16 %222, ptr %arrayidx122.14, align 1
  %arrayidx116.15 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 15
  %224 = ptrtoint ptr %arrayidx116.15 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %arrayidx116.15, align 2
  %226 = shl i16 %225, 8
  %arrayidx122.15 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 15
  %227 = ptrtoint ptr %arrayidx122.15 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 2)
  store i16 %226, ptr %arrayidx122.15, align 1
  %arrayidx116.16 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 16
  %228 = ptrtoint ptr %arrayidx116.16 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %arrayidx116.16, align 2
  %230 = shl i16 %229, 8
  %arrayidx122.16 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 16
  %231 = ptrtoint ptr %arrayidx122.16 to i32
  call void @__asan_storeN_noabort(i32 %231, i32 2)
  store i16 %230, ptr %arrayidx122.16, align 1
  %arrayidx116.17 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 17
  %232 = ptrtoint ptr %arrayidx116.17 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %arrayidx116.17, align 2
  %234 = shl i16 %233, 8
  %arrayidx122.17 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 17
  %235 = ptrtoint ptr %arrayidx122.17 to i32
  call void @__asan_storeN_noabort(i32 %235, i32 2)
  store i16 %234, ptr %arrayidx122.17, align 1
  %arrayidx116.18 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 18
  %236 = ptrtoint ptr %arrayidx116.18 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %arrayidx116.18, align 2
  %238 = shl i16 %237, 8
  %arrayidx122.18 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 18
  %239 = ptrtoint ptr %arrayidx122.18 to i32
  call void @__asan_storeN_noabort(i32 %239, i32 2)
  store i16 %238, ptr %arrayidx122.18, align 1
  %arrayidx116.19 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 36, i32 19
  %240 = ptrtoint ptr %arrayidx116.19 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %arrayidx116.19, align 2
  %242 = shl i16 %241, 8
  %arrayidx122.19 = getelementptr %struct.rsi_radio_caps, ptr %5, i32 0, i32 11, i32 19
  %243 = ptrtoint ptr %arrayidx122.19 to i32
  call void @__asan_storeN_noabort(i32 %243, i32 2)
  store i16 %242, ptr %arrayidx122.19, align 1
  %244 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 -27072, ptr %5, align 2
  %call130 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 166) #7
  %245 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %data, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %246, align 4
  %249 = or i16 %248, 128
  store i16 %249, ptr %246, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %250 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %251 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %252, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %253 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc95.3, %if.then
  %retval.0 = phi i32 [ 0, %for.inc95.3 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_aggregation_params_frame(ptr noundef %common, i16 noundef zeroext %tid, i16 noundef zeroext %ssn, i8 noundef zeroext %buf_size, i8 noundef zeroext %event, i8 noundef zeroext %sta_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_send_aggregation_params_frame) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %data, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rsi_send_aggregation_params_frame) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 64, ptr %3, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 18, ptr %frame_type, align 1
  %6 = trunc i16 %tid to i8
  %conv5 = and i8 %6, 15
  %aggr_params6 = getelementptr inbounds %struct.rsi_aggr_params, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %aggr_params6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %aggr_params6, align 1
  %peer_id = getelementptr inbounds %struct.rsi_aggr_params, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %peer_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %sta_id, ptr %peer_id, align 1
  %9 = zext i8 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %event, label %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge [
    i8 2, label %if.then9
    i8 4, label %if.then17
    i8 5, label %if.end.rsi_send_internal_mgmt_frame.exit.sink.split_crit_edge
  ]

if.end.rsi_send_internal_mgmt_frame.exit.sink.split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit.sink.split

if.end.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i16 @llvm.bswap.i16(i16 %ssn)
  %seq_start = getelementptr inbounds %struct.rsi_aggr_params, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %seq_start to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %seq_start, align 1
  %conv10 = zext i8 %buf_size to i16
  %12 = shl nuw i16 %conv10, 8
  %baw_size = getelementptr inbounds %struct.rsi_aggr_params, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %baw_size to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %baw_size, align 1
  br label %rsi_send_internal_mgmt_frame.exit.sink.split

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call i16 @llvm.bswap.i16(i16 %ssn)
  %seq_start18 = getelementptr inbounds %struct.rsi_aggr_params, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %seq_start18 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %seq_start18, align 1
  br label %rsi_send_internal_mgmt_frame.exit.sink.split

rsi_send_internal_mgmt_frame.exit.sink.split:     ; preds = %if.then17, %if.then9, %if.end.rsi_send_internal_mgmt_frame.exit.sink.split_crit_edge
  %.sink58 = phi i8 [ 48, %if.then17 ], [ 16, %if.then9 ], [ 32, %if.end.rsi_send_internal_mgmt_frame.exit.sink.split_crit_edge ]
  %16 = or i8 %conv5, %.sink58
  %17 = ptrtoint ptr %aggr_params6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %aggr_params6, align 1
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %rsi_send_internal_mgmt_frame.exit.sink.split, %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge
  %call36 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #7
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %22 = or i16 %21, 128
  store i16 %22, ptr %19, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %23 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %25, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %26 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_set_vap_capabilities(ptr noundef %common, i32 noundef %mode, ptr nocapture noundef readonly %mac_addr, i8 noundef zeroext %vap_id, i8 noundef zeroext %vap_status) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %hw1 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rsi_set_vap_capabilities) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 58, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_set_vap_capabilities) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 58)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 10816, ptr %7, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 13, ptr %frame_type, align 1
  %status = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %vap_status, ptr %status, align 1
  %conv8 = trunc i32 %mode to i8
  %vif_type = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %vif_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv8, ptr %vif_type, align 1
  %channel_width = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 15
  %12 = ptrtoint ptr %channel_width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %channel_width, align 1
  %channel_bw = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %channel_bw to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %channel_bw, align 1
  %vap_id9 = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 9
  %15 = ptrtoint ptr %vap_id9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %vap_id, ptr %vap_id9, align 1
  %mac_id = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 34
  %16 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mac_id, align 4
  %18 = shl i8 %17, 4
  %radio_id = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 35
  %19 = ptrtoint ptr %radio_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %radio_id, align 1
  %21 = and i8 %20, 15
  %or82 = or i8 %21, %18
  %radioid_macid = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 8
  %22 = ptrtoint ptr %radioid_macid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or82, ptr %radioid_macid, align 1
  %mac_addr14 = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 10
  %23 = call ptr @memcpy(ptr %mac_addr14, ptr %mac_addr, i32 6)
  %keep_alive_period = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 11
  %24 = ptrtoint ptr %keep_alive_period to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 23040, ptr %keep_alive_period, align 1
  %frag_threshold = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 15
  %25 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 12297, ptr %frag_threshold, align 1
  %rts_threshold = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 16
  %26 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rts_threshold, align 4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %rts_threshold15 = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 16
  %29 = ptrtoint ptr %rts_threshold15 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %rts_threshold15, align 1
  %band = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %30 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %band, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp = icmp eq i8 %31, 1
  %spec.select = select i1 %cmp, i16 -29952, i16 0
  %spec.select94 = select i1 %cmp, i32 -1962934272, i32 0
  %32 = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 18
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %spec.select, ptr %32, align 1
  %34 = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 17
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %spec.select94, ptr %34, align 1
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i = icmp eq i32 %37, 2
  br i1 %cmp.i, label %conf_is_ht40_minus.exit, label %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge

if.end.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

conf_is_ht40_minus.exit:                          ; preds = %if.end
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %center_freq1.i, align 4
  %40 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp3.i = icmp ult i32 %39, %43
  br i1 %cmp3.i, label %if.then25, label %conf_is_ht40_plus.exit

if.then25:                                        ; preds = %conf_is_ht40_minus.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_rate_flags = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 19
  %44 = ptrtoint ptr %ctrl_rate_flags to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 32, ptr %ctrl_rate_flags, align 1
  br label %rsi_send_internal_mgmt_frame.exit

conf_is_ht40_plus.exit:                           ; preds = %conf_is_ht40_minus.exit
  %45 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %center_freq1.i, align 4
  %47 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chandef.i, align 4
  %center_freq.i89 = getelementptr inbounds %struct.ieee80211_channel, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %center_freq.i89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %center_freq.i89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %50)
  %cmp3.i90 = icmp ugt i32 %46, %50
  %ctrl_rate_flags29 = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 19
  br i1 %cmp3.i90, label %if.then28, label %if.else30

if.then28:                                        ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %ctrl_rate_flags29 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 64, ptr %ctrl_rate_flags29, align 1
  br label %rsi_send_internal_mgmt_frame.exit

if.else30:                                        ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %ctrl_rate_flags29 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 1536, ptr %ctrl_rate_flags29, align 1
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.else30, %if.then28, %if.then25, %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge
  %default_data_rate = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 20
  %53 = ptrtoint ptr %default_data_rate to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 0, ptr %default_data_rate, align 1
  %beacon_interval = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 62
  %54 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %beacon_interval, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %beacon_interval35 = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 21
  %57 = ptrtoint ptr %beacon_interval35 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %beacon_interval35, align 1
  %dtim_cnt = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 63
  %58 = ptrtoint ptr %dtim_cnt to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %dtim_cnt, align 2
  %conv36 = zext i8 %59 to i16
  %60 = shl nuw i16 %conv36, 8
  %dtim_period = getelementptr inbounds %struct.rsi_vap_caps, ptr %7, i32 0, i32 22
  %61 = ptrtoint ptr %dtim_period to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %dtim_period, align 1
  %call38 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 58) #7
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %63, align 4
  %66 = or i16 %65, 128
  store i16 %66, ptr %63, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %67 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %69, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %70 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_hal_load_key(ptr noundef %common, ptr noundef readonly %data, i16 noundef zeroext %key_len, i8 noundef zeroext %key_type, i8 noundef zeroext %key_id, i32 noundef %cipher, i16 noundef signext %sta_id, ptr nocapture noundef readonly %vif) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rsi_hal_load_key) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 160, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_hal_load_key) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 160)
  %3 = load ptr, ptr %data1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %key_type)
  %cmp = icmp eq i8 %key_type, 2
  br i1 %cmp, label %if.then6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp7 = icmp eq i32 %5, 3
  %spec.select = select i1 %cmp7, i16 130, i16 2
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end.if.end13_crit_edge
  %key_descriptor.0 = phi i16 [ 0, %if.end.if.end13_crit_edge ], [ %spec.select, %if.then6 ]
  %6 = zext i32 %cipher to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %cipher, label %if.then32 [
    i32 1027077, label %if.end13.if.then18_crit_edge
    i32 1027073, label %if.end13.if.then18_crit_edge125
    i32 0, label %if.end13.if.end44_crit_edge
  ]

if.end13.if.end44_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end13.if.then18_crit_edge125:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end13.if.then18_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %if.end13.if.then18_crit_edge, %if.end13.if.then18_crit_edge125
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %key_len)
  %cmp23 = icmp ugt i16 %key_len, 12
  %spec.select122.v = select i1 %cmp23, i16 12, i16 4
  %spec.select122 = or i16 %key_descriptor.0, %spec.select122.v
  br label %if.end44

if.then32:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %cipher)
  %cmp36 = icmp eq i32 %cipher, 1027074
  %spec.select123.v = select i1 %cmp36, i16 48, i16 16
  %spec.select123 = or i16 %key_descriptor.0, %spec.select123.v
  br label %if.end44

if.end44:                                         ; preds = %if.then32, %if.then18, %if.end13.if.end44_crit_edge
  %key_id.addr.0 = phi i8 [ 0, %if.then18 ], [ %key_id, %if.then32 ], [ %key_id, %if.end13.if.end44_crit_edge ]
  %key_descriptor.1 = phi i16 [ %spec.select122, %if.then18 ], [ %spec.select123, %if.then32 ], [ %key_descriptor.0, %if.end13.if.end44_crit_edge ]
  %conv48 = zext i8 %key_id.addr.0 to i32
  %conv48.tr = zext i8 %key_id.addr.0 to i16
  %7 = shl i16 %conv48.tr, 14
  %8 = or i16 %key_descriptor.1, %7
  %conv51 = or i16 %8, 8192
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -28608, ptr %3, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %frame_type, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv51)
  %key_desc = getelementptr inbounds %struct.rsi_set_key, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %key_desc to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %key_desc, align 1
  %conv55 = trunc i16 %sta_id to i8
  %sta_id56 = getelementptr inbounds %struct.rsi_set_key, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %sta_id56 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv55, ptr %sta_id56, align 1
  %tobool57.not = icmp eq ptr %data, null
  br i1 %tobool57.not, label %if.else76, label %if.then58

if.then58:                                        ; preds = %if.end44
  %14 = zext i32 %cipher to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %cipher, label %if.else67 [
    i32 1027077, label %if.then58.if.then64_crit_edge
    i32 1027073, label %if.then58.if.then64_crit_edge126
  ]

if.then58.if.then64_crit_edge126:                 ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64

if.then58.if.then64_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64

if.then64:                                        ; preds = %if.then58.if.then64_crit_edge, %if.then58.if.then64_crit_edge126
  %arrayidx65 = getelementptr %struct.rsi_set_key, ptr %3, i32 0, i32 6, i32 %conv48, i32 1
  %conv66 = zext i16 %key_len to i32
  %mul = shl nuw nsw i32 %conv66, 1
  %15 = call ptr @memcpy(ptr %arrayidx65, ptr %data, i32 %mul)
  br label %if.end72

if.else67:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %key68 = getelementptr inbounds %struct.rsi_set_key, ptr %3, i32 0, i32 6
  %conv71 = zext i16 %key_len to i32
  %16 = call ptr @memcpy(ptr %key68, ptr %data, i32 %conv71)
  br label %if.end72

if.end72:                                         ; preds = %if.else67, %if.then64
  %tx_mic_key = getelementptr inbounds %struct.rsi_set_key, ptr %3, i32 0, i32 7
  %arrayidx73 = getelementptr i8, ptr %data, i32 16
  %17 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %arrayidx73, align 1
  %19 = ptrtoint ptr %tx_mic_key to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %tx_mic_key, align 1
  %rx_mic_key = getelementptr inbounds %struct.rsi_set_key, ptr %3, i32 0, i32 8
  %arrayidx75 = getelementptr i8, ptr %data, i32 24
  %20 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %arrayidx75, align 1
  %22 = ptrtoint ptr %rx_mic_key to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %rx_mic_key, align 1
  br label %rsi_send_internal_mgmt_frame.exit

if.else76:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx77 = getelementptr %struct.rsi_set_key, ptr %3, i32 16
  %23 = call ptr @memset(ptr %arrayidx77, i32 0, i32 144)
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.else76, %if.end72
  %call82 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 160) #7
  %24 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  %28 = or i16 %27, 128
  store i16 %28, ptr %25, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %29 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %31, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %32 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_band_check(ptr noundef %common, ptr nocapture noundef readonly %curchan) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %hw1 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %channel_width = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 15
  %4 = ptrtoint ptr %channel_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel_width, align 1
  %endpoint = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 12
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %endpoint, align 4
  %band = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %8 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %band, align 1
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curchan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp.not = icmp eq i32 %11, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rf_reset = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 20
  %12 = ptrtoint ptr %rf_reset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %rf_reset, align 4
  %13 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curchan, align 4
  %conv5 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv5, ptr %band, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = phi i8 [ %conv5, %if.then ], [ %9, %entry.if.end_crit_edge ]
  %width = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %switch = icmp ult i32 %18, 2
  %not.switch = xor i1 %switch, true
  %spec.select = zext i1 %not.switch to i8
  %19 = ptrtoint ptr %channel_width to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select, ptr %channel_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp20 = icmp eq i8 %16, 0
  %not.switch103 = xor i1 %switch, true
  %. = zext i1 %not.switch103 to i8
  %.102 = select i1 %switch, i8 2, i8 3
  %.sink = select i1 %cmp20, i8 %., i8 %.102
  %20 = ptrtoint ptr %endpoint to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %endpoint, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %.sink, i8 %7)
  %cmp41.not = icmp eq i8 %.sink, %7
  br i1 %cmp41.not, label %if.end.if.end47_crit_edge, label %if.then43

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then43:                                        ; preds = %if.end
  %call = tail call fastcc i32 @rsi_program_bb_rf(ptr noundef %common)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool44.not = icmp eq i32 %call, 0
  br i1 %tobool44.not, label %if.then43.if.end47_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43.if.end47_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end47:                                         ; preds = %if.then43.if.end47_crit_edge, %if.end.if.end47_crit_edge
  %21 = ptrtoint ptr %channel_width to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %channel_width, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %5)
  %cmp51.not = icmp eq i8 %22, %5
  br i1 %cmp51.not, label %if.end47.if.end68_crit_edge, label %if.then53

if.end47.if.end68_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then53:                                        ; preds = %if.end47
  %device_model = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %device_model to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device_model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp54 = icmp eq i32 %24, 1
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call fastcc i32 @rsi_load_9116_bootup_params(ptr noundef %common)
  br label %if.end60

if.else58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call fastcc i32 @rsi_load_bootup_params(ptr noundef %common)
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then56
  %status.1 = phi i32 [ %call57, %if.then56 ], [ %call59, %if.else58 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %tobool61.not = icmp eq i32 %status.1, 0
  br i1 %tobool61.not, label %if.end63, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end60
  %call64 = tail call fastcc i32 @rsi_load_radio_caps(ptr noundef %common)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.if.end68_crit_edge, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end68:                                         ; preds = %if.end63.if.end68_crit_edge, %if.end47.if.end68_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end63.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end68 ], [ %call, %if.then43.cleanup_crit_edge ], [ %status.1, %if.end60.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_program_bb_rf(ptr noundef %common) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.rsi_program_bb_rf) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_program_bb_rf) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 64, ptr %3, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 21, ptr %frame_type, align 1
  %endpoint = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 12
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %endpoint, align 4
  %endpoint4 = getelementptr inbounds %struct.rsi_bb_rf_prog, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %endpoint4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %endpoint4, align 1
  %wlan_rf_power_mode = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 52
  %9 = ptrtoint ptr %wlan_rf_power_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wlan_rf_power_mode, align 2
  %rf_power_mode = getelementptr inbounds %struct.rsi_bb_rf_prog, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %rf_power_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rf_power_mode, align 1
  %rf_reset = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 20
  %12 = ptrtoint ptr %rf_reset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rf_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge, label %if.then6

if.end.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.rsi_bb_rf_prog, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 2048, ptr %flags, align 1
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.rsi_program_bb_rf) #7
  %15 = ptrtoint ptr %rf_reset to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rf_reset, align 4
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.then6, %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge
  %bb_rf_prog_count = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 30
  %16 = ptrtoint ptr %bb_rf_prog_count to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %bb_rf_prog_count, align 1
  %flags9 = getelementptr inbounds %struct.rsi_bb_rf_prog, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %flags9 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %flags9, align 1
  %19 = or i16 %18, 4096
  store i16 %19, ptr %flags9, align 1
  %call13 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #7
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 4
  %24 = or i16 %23, 128
  store i16 %24, ptr %21, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %25 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %27, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %28 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_load_9116_bootup_params(ptr noundef %common) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.rsi_load_9116_bootup_params) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 101, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 129)
  %3 = load ptr, ptr %data, align 4
  %channel_width = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 15
  %4 = ptrtoint ptr %channel_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %bootup_params = getelementptr inbounds %struct.rsi_boot_params_9116, ptr %3, i32 0, i32 5
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memcpy(ptr %bootup_params, ptr @boot_params_9116_40, i32 85)
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.rsi_load_9116_bootup_params, i32 noundef 80) #7
  %umac_clk = getelementptr inbounds %struct.rsi_boot_params_9116, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %umac_clk to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 20480, ptr %umac_clk, align 1
  br label %rsi_send_internal_mgmt_frame.exit

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %bootup_params, ptr @boot_params_9116_20, i32 85)
  %umac_clk10 = getelementptr inbounds %struct.rsi_boot_params_9116, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %umac_clk10 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 20480, ptr %umac_clk10, align 1
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.rsi_load_9116_bootup_params, i32 noundef 80) #7
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.else, %if.then3
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 21824, ptr %3, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 12, ptr %frame_type, align 1
  %call14 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 101) #7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 4
  %16 = or i16 %15, 128
  store i16 %16, ptr %13, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %17 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %19, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %20 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_load_bootup_params(ptr noundef %common) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.rsi_load_bootup_params) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 129, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_load_bootup_params) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 129)
  %3 = load ptr, ptr %data, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.rsi_load_bootup_params) #7
  %channel_width = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 15
  %4 = ptrtoint ptr %channel_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %bootup_params = getelementptr inbounds %struct.rsi_boot_params, ptr %3, i32 0, i32 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memcpy(ptr %bootup_params, ptr @boot_params_40, i32 113)
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.rsi_load_bootup_params, i32 noundef 80) #7
  %arrayidx = getelementptr [8 x i16], ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 20480, ptr %arrayidx, align 1
  br label %rsi_send_internal_mgmt_frame.exit

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %bootup_params, ptr @boot_params_20, i32 113)
  %arrayidx12 = getelementptr [8 x i16], ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 20480, ptr %arrayidx12, align 1
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.rsi_load_bootup_params, i32 noundef 80) #7
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.else, %if.then3
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 28992, ptr %3, align 1
  %arrayidx18 = getelementptr [8 x i16], ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 3072, ptr %arrayidx18, align 1
  %call19 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 129) #7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 4
  %16 = or i16 %15, 128
  store i16 %16, ptr %13, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %17 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %19, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %20 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_set_channel(ptr noundef %common, ptr noundef readonly %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rsi_set_channel) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_set_channel) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %channel, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 64, ptr %3, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %frame_type, align 1
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %6 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_value, align 2
  %conv7 = trunc i16 %7 to i8
  %channel_number = getelementptr inbounds %struct.rsi_chan_config, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %channel_number to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %channel_number, align 1
  %max_antenna_gain = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 5
  %9 = ptrtoint ptr %max_antenna_gain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_antenna_gain, align 4
  %conv8 = trunc i32 %10 to i8
  %antenna_gain_offset_2g = getelementptr inbounds %struct.rsi_chan_config, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %antenna_gain_offset_2g to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv8, ptr %antenna_gain_offset_2g, align 1
  %12 = load i32, ptr %max_antenna_gain, align 4
  %conv10 = trunc i32 %12 to i8
  %antenna_gain_offset_5g = getelementptr inbounds %struct.rsi_chan_config, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %antenna_gain_offset_5g to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %antenna_gain_offset_5g, align 1
  %region_rftype = getelementptr inbounds %struct.rsi_chan_config, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %region_rftype to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %region_rftype, align 1
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %17 = and i32 %16, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %19 = or i8 %conv8, -128
  %20 = ptrtoint ptr %antenna_gain_offset_2g to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %antenna_gain_offset_2g, align 1
  br label %if.end29

if.else:                                          ; preds = %if.end3
  %tx_power = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 54
  %21 = ptrtoint ptr %tx_power to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_power, align 4
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 6
  %23 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_power, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv22 = trunc i32 %22 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %tx_power23 = getelementptr inbounds %struct.rsi_chan_config, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %tx_power23 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %tx_power23, align 1
  br label %if.end29

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv26 = trunc i32 %24 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv26)
  %tx_power27 = getelementptr inbounds %struct.rsi_chan_config, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %tx_power27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %tx_power27, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.else24, %if.then20, %if.then15
  %29 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %common, align 4
  %dfs_region = getelementptr inbounds %struct.rsi_hw, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dfs_region, align 4
  %33 = and i8 %32, 15
  %34 = ptrtoint ptr %region_rftype to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %region_rftype, align 1
  %or3481 = or i8 %35, %33
  store i8 %or3481, ptr %region_rftype, align 1
  %channel_width = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 15
  %36 = ptrtoint ptr %channel_width to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %channel_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp37 = icmp eq i8 %37, 1
  br i1 %cmp37, label %if.then39, label %if.end29.rsi_send_internal_mgmt_frame.exit_crit_edge

if.end29.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %channel_width40 = getelementptr inbounds %struct.rsi_chan_config, ptr %3, i32 0, i32 5
  %38 = ptrtoint ptr %channel_width40 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %channel_width40, align 1
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.then39, %if.end29.rsi_send_internal_mgmt_frame.exit_crit_edge
  %39 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hw_value, align 2
  %conv43 = trunc i16 %40 to i8
  %channel44 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 32
  %41 = ptrtoint ptr %channel44 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv43, ptr %channel44, align 1
  %call46 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #7
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 4
  %46 = or i16 %45, 128
  store i16 %46, ptr %43, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %47 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %49, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %50 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ 0, %if.then2 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_radio_params_update(ptr noundef %common) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rsi_send_radio_params_update) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %rsi_send_internal_mgmt_frame.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_send_radio_params_update) #7
  br label %cleanup

rsi_send_internal_mgmt_frame.exit:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 64, ptr %3, align 1
  %arrayidx3 = getelementptr [8 x i16], ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 10496, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr [8 x i16], ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 256, ptr %arrayidx5, align 1
  %tx_power = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 54
  %7 = ptrtoint ptr %tx_power to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_power, align 4
  %9 = trunc i32 %8 to i16
  %10 = and i16 %9, 255
  %conv10 = or i16 %10, 256
  store i16 %conv10, ptr %arrayidx5, align 1
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #7
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  %15 = or i16 %14, 128
  store i16 %15, ptr %12, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %16 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %18, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %19 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_vap_dynamic_update(ptr noundef %common) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rsi_send_vap_dynamic_update) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 22, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 22)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1600, ptr %3, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 39, ptr %frame_type, align 1
  %rts_threshold = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 16
  %6 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rts_threshold, align 4
  %conv = zext i16 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %desc_dword2 = getelementptr inbounds %struct.rsi_dynamic_s, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %desc_dword2 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %desc_dword2, align 1
  %wow_flags = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 60
  %10 = ptrtoint ptr %wow_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wow_flags, align 2
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge, label %if.then5

if.end.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %desc_dword3 = getelementptr inbounds %struct.rsi_dynamic_s, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %desc_dword3 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 6144, ptr %desc_dword3, align 1
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.then5, %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge
  %.sink = phi i16 [ 1280, %if.then5 ], [ 23040, %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge ]
  %14 = getelementptr inbounds %struct.rsi_dynamic_s, ptr %3, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %.sink, ptr %14, align 1
  %sta_id = getelementptr inbounds %struct.rsi_dynamic_s, ptr %3, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %sta_id, align 1
  %call10 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 22) #7
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  %21 = or i16 %20, 128
  store i16 %21, ptr %18, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %22 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %24, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %25 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_inform_bss_status(ptr noundef %common, i32 noundef %opmode, i8 noundef zeroext %status, ptr nocapture noundef readonly %addr, i8 noundef zeroext %qos_enable, i16 noundef zeroext %aid, ptr nocapture noundef readonly %sta, i16 noundef zeroext %sta_id, i16 noundef zeroext %assoc_cap, ptr nocapture noundef readonly %vif) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool.not = icmp eq i8 %status, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %opmode)
  %cmp14 = icmp eq i32 %opmode, 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp14, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %hw_data_qs_blocked = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 43
  %0 = ptrtoint ptr %hw_data_qs_blocked to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hw_data_qs_blocked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %call = tail call i32 @rsi_hal_send_sta_notify_frame(ptr noundef %common, i32 noundef %opmode, i8 noundef zeroext 0, ptr noundef %addr, i8 noundef zeroext %qos_enable, i16 noundef zeroext %aid, i16 noundef zeroext %sta_id, ptr noundef %vif)
  %band = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %1 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %band, align 1
  %idxprom = zext i8 %2 to i32
  %fixed_enabled = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 19, i32 %idxprom, i32 2
  %3 = ptrtoint ptr %fixed_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fixed_enabled, align 2, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common, align 4
  %hw1.i = getelementptr inbounds %struct.rsi_hw, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chandef.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.rsi_send_auto_rate_request) #7
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 110, i32 noundef 2592) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_send_auto_rate_request) #7
  br label %if.end5

if.end.i:                                         ; preds = %if.then3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 110)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 80) #10
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rsi_send_auto_rate_request) #7
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #7
  br label %if.end5

if.end8.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %aarf_rssi.i = getelementptr inbounds %struct.rsi_auto_rate, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %aarf_rssi.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 -11776, ptr %aarf_rssi.i, align 1
  %collision_tolerance.i = getelementptr inbounds %struct.rsi_auto_rate, ptr %18, i32 0, i32 7
  %20 = ptrtoint ptr %collision_tolerance.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 768, ptr %collision_tolerance.i, align 1
  %failure_limit.i = getelementptr inbounds %struct.rsi_auto_rate, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %failure_limit.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 768, ptr %failure_limit.i, align 1
  %initial_boundary.i = getelementptr inbounds %struct.rsi_auto_rate, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %initial_boundary.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 768, ptr %initial_boundary.i, align 1
  %max_threshold_limt.i = getelementptr inbounds %struct.rsi_auto_rate, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %max_threshold_limt.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 6912, ptr %max_threshold_limt.i, align 1
  %frame_type.i = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 11, ptr %frame_type.i, align 1
  %channel_width.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 15
  %25 = ptrtoint ptr %channel_width.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %channel_width.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i = icmp eq i8 %26, 1
  br i1 %cmp.i, label %if.then12.i, label %if.end8.i.if.end14.i_crit_edge

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %qid_tid.i = getelementptr inbounds %struct.rsi_cmd_desc, ptr %18, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %qid_tid.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %qid_tid.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end14.i_crit_edge
  %conv15.i = trunc i16 %sta_id to i8
  %sta_id18.i = getelementptr inbounds %struct.rsi_cmd_desc, ptr %18, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %sta_id18.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv15.i, ptr %sta_id18.i, align 1
  %29 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp19.i = icmp eq i32 %30, 2
  %idxprom.i = and i32 %12, 255
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 18, i32 %idxprom.i
  %vif_info.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 1
  %sgi.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %sgi.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sgi.i, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool27.i = icmp ne i8 %32, 0
  br label %if.end43.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx30.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %idxprom.i
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ht_cap.i, align 4
  %35 = and i16 %34, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %36 = icmp ne i16 %35, 0
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else.i, %if.then21.i
  %rate_bitmap.0.in.i = phi ptr [ %arrayidx30.i, %if.else.i ], [ %arrayidx.i, %if.then21.i ]
  %is_ht.0.off0.in.in.i = phi ptr [ %ht_supported.i, %if.else.i ], [ %vif_info.i, %if.then21.i ]
  %is_sgi.0.off0.i = phi i1 [ %36, %if.else.i ], [ %tobool27.i, %if.then21.i ]
  %37 = ptrtoint ptr %is_ht.0.off0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %is_ht.0.off0.in.i = load i8, ptr %is_ht.0.off0.in.in.i, align 2, !range !219
  %38 = ptrtoint ptr %rate_bitmap.0.in.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %rate_bitmap.0.i = load i32, ptr %rate_bitmap.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_ht.0.off0.in.i)
  %is_ht.0.off0.not.i = icmp eq i8 %is_ht.0.off0.in.i, 0
  %arrayidx45.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 19, i32 %idxprom.i
  %39 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool46.not.i = icmp eq i32 %40, 0
  %..i = select i1 %tobool46.not.i, i32 -1, i32 %40
  %and47.i = and i32 %..i, %rate_bitmap.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idxprom.i)
  %cmp49.i = icmp eq i32 %idxprom.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %cmp52.i = icmp ne i32 %and47.i, 0
  %brmerge.i = select i1 %cmp52.i, i1 true, i1 %is_ht.0.off0.not.i
  %.51.i = select i1 %cmp49.i, i32 0, i32 4
  %sub.i = sub nuw nsw i32 12, %.51.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end43.i
  %rate_offset.019.i = phi i8 [ 0, %if.end43.i ], [ %rate_offset.1.i, %for.inc.i.for.body.i_crit_edge ]
  %jj.018.i = phi i32 [ 0, %if.end43.i ], [ %jj.1.i, %for.inc.i.for.body.i_crit_edge ]
  %ii.016.i = phi i32 [ 0, %if.end43.i ], [ %inc82.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %ii.016.i
  %and72.i = and i32 %shl.i, %and47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then74.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then74.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw i32 %ii.016.i, %.51.i
  %bitrate.i = getelementptr [12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 %add.i, i32 1
  %41 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bitrate.i, align 4
  %43 = udiv i16 %42, 5
  %inc.i = add i32 %jj.018.i, 1
  %arrayidx79.i = getelementptr i16, ptr %call7.i.i.i, i32 %jj.018.i
  %44 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx79.i, align 2
  %inc80.i = add i8 %rate_offset.019.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then74.i, %for.body.i.for.inc.i_crit_edge
  %jj.1.i = phi i32 [ %inc.i, %if.then74.i ], [ %jj.018.i, %for.body.i.for.inc.i_crit_edge ]
  %rate_offset.1.i = phi i8 [ %inc80.i, %if.then74.i ], [ %rate_offset.019.i, %for.body.i.for.inc.i_crit_edge ]
  %inc82.i = add nuw i32 %ii.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc82.i, %sub.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %.50.i = select i1 %cmp49.i, i16 0, i16 139
  %min_rate.1.i = select i1 %brmerge.i, i16 %.50.i, i16 256
  %conv83.i = trunc i32 %jj.1.i to i8
  br i1 %is_ht.0.off0.not.i, label %for.end.i.if.end104.i_crit_edge, label %for.body89.preheader.i

for.end.i.if.end104.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104.i

for.body89.preheader.i:                           ; preds = %for.end.i
  %and92.i = and i32 %..i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %for.body89.preheader.i.for.inc101.i_crit_edge, label %if.then94.i

for.body89.preheader.i.for.inc101.i_crit_edge:    ; preds = %for.body89.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101.i

if.then94.i:                                      ; preds = %for.body89.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc96.i = add i32 %jj.1.i, 1
  %arrayidx97.i = getelementptr i16, ptr %call7.i.i.i, i32 %jj.1.i
  %45 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 13, ptr %arrayidx97.i, align 2
  %inc98.i = add i8 %conv83.i, 1
  %inc99.i = add i8 %rate_offset.1.i, 1
  br label %for.inc101.i

for.inc101.i:                                     ; preds = %if.then94.i, %for.body89.preheader.i.for.inc101.i_crit_edge
  %jj.3.i = phi i32 [ %inc96.i, %if.then94.i ], [ %jj.1.i, %for.body89.preheader.i.for.inc101.i_crit_edge ]
  %num_supported_rates.1.i = phi i8 [ %inc98.i, %if.then94.i ], [ %conv83.i, %for.body89.preheader.i.for.inc101.i_crit_edge ]
  %rate_offset.3.i = phi i8 [ %inc99.i, %if.then94.i ], [ %rate_offset.1.i, %for.body89.preheader.i.for.inc101.i_crit_edge ]
  %and92.1.i = and i32 %..i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.1.i)
  %tobool93.not.1.i = icmp eq i32 %and92.1.i, 0
  br i1 %tobool93.not.1.i, label %for.inc101.i.for.inc101.1.i_crit_edge, label %if.then94.1.i

for.inc101.i.for.inc101.1.i_crit_edge:            ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101.1.i

if.then94.1.i:                                    ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc96.1.i = add i32 %jj.3.i, 1
  %arrayidx97.1.i = getelementptr i16, ptr %call7.i.i.i, i32 %jj.3.i
  %46 = ptrtoint ptr %arrayidx97.1.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 26, ptr %arrayidx97.1.i, align 2
  %inc98.1.i = add i8 %num_supported_rates.1.i, 1
  %inc99.1.i = add i8 %rate_offset.3.i, 1
  br label %for.inc101.1.i

for.inc101.1.i:                                   ; preds = %if.then94.1.i, %for.inc101.i.for.inc101.1.i_crit_edge
  %jj.3.1.i = phi i32 [ %inc96.1.i, %if.then94.1.i ], [ %jj.3.i, %for.inc101.i.for.inc101.1.i_crit_edge ]
  %num_supported_rates.1.1.i = phi i8 [ %inc98.1.i, %if.then94.1.i ], [ %num_supported_rates.1.i, %for.inc101.i.for.inc101.1.i_crit_edge ]
  %rate_offset.3.1.i = phi i8 [ %inc99.1.i, %if.then94.1.i ], [ %rate_offset.3.i, %for.inc101.i.for.inc101.1.i_crit_edge ]
  %and92.2.i = and i32 %..i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.2.i)
  %tobool93.not.2.i = icmp eq i32 %and92.2.i, 0
  br i1 %tobool93.not.2.i, label %for.inc101.1.i.for.inc101.2.i_crit_edge, label %if.then94.2.i

for.inc101.1.i.for.inc101.2.i_crit_edge:          ; preds = %for.inc101.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101.2.i

if.then94.2.i:                                    ; preds = %for.inc101.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc96.2.i = add i32 %jj.3.1.i, 1
  %arrayidx97.2.i = getelementptr i16, ptr %call7.i.i.i, i32 %jj.3.1.i
  %47 = ptrtoint ptr %arrayidx97.2.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 39, ptr %arrayidx97.2.i, align 2
  %inc98.2.i = add i8 %num_supported_rates.1.1.i, 1
  %inc99.2.i = add i8 %rate_offset.3.1.i, 1
  br label %for.inc101.2.i

for.inc101.2.i:                                   ; preds = %if.then94.2.i, %for.inc101.1.i.for.inc101.2.i_crit_edge
  %jj.3.2.i = phi i32 [ %inc96.2.i, %if.then94.2.i ], [ %jj.3.1.i, %for.inc101.1.i.for.inc101.2.i_crit_edge ]
  %num_supported_rates.1.2.i = phi i8 [ %inc98.2.i, %if.then94.2.i ], [ %num_supported_rates.1.1.i, %for.inc101.1.i.for.inc101.2.i_crit_edge ]
  %rate_offset.3.2.i = phi i8 [ %inc99.2.i, %if.then94.2.i ], [ %rate_offset.3.1.i, %for.inc101.1.i.for.inc101.2.i_crit_edge ]
  %and92.3.i = and i32 %..i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.3.i)
  %tobool93.not.3.i = icmp eq i32 %and92.3.i, 0
  br i1 %tobool93.not.3.i, label %for.inc101.2.i.for.inc101.3.i_crit_edge, label %if.then94.3.i

for.inc101.2.i.for.inc101.3.i_crit_edge:          ; preds = %for.inc101.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101.3.i

if.then94.3.i:                                    ; preds = %for.inc101.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc96.3.i = add i32 %jj.3.2.i, 1
  %arrayidx97.3.i = getelementptr i16, ptr %call7.i.i.i, i32 %jj.3.2.i
  %48 = ptrtoint ptr %arrayidx97.3.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 52, ptr %arrayidx97.3.i, align 2
  %inc98.3.i = add i8 %num_supported_rates.1.2.i, 1
  %inc99.3.i = add i8 %rate_offset.3.2.i, 1
  br label %for.inc101.3.i

for.inc101.3.i:                                   ; preds = %if.then94.3.i, %for.inc101.2.i.for.inc101.3.i_crit_edge
  %jj.3.3.i = phi i32 [ %inc96.3.i, %if.then94.3.i ], [ %jj.3.2.i, %for.inc101.2.i.for.inc101.3.i_crit_edge ]
  %num_supported_rates.1.3.i = phi i8 [ %inc98.3.i, %if.then94.3.i ], [ %num_supported_rates.1.2.i, %for.inc101.2.i.for.inc101.3.i_crit_edge ]
  %rate_offset.3.3.i = phi i8 [ %inc99.3.i, %if.then94.3.i ], [ %rate_offset.3.2.i, %for.inc101.2.i.for.inc101.3.i_crit_edge ]
  %and92.4.i = and i32 %..i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.4.i)
  %tobool93.not.4.i = icmp eq i32 %and92.4.i, 0
  br i1 %tobool93.not.4.i, label %for.inc101.3.i.for.inc101.4.i_crit_edge, label %if.then94.4.i

for.inc101.3.i.for.inc101.4.i_crit_edge:          ; preds = %for.inc101.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101.4.i

if.then94.4.i:                                    ; preds = %for.inc101.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc96.4.i = add i32 %jj.3.3.i, 1
  %arrayidx97.4.i = getelementptr i16, ptr %call7.i.i.i, i32 %jj.3.3.i
  %49 = ptrtoint ptr %arrayidx97.4.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 78, ptr %arrayidx97.4.i, align 2
  %inc98.4.i = add i8 %num_supported_rates.1.3.i, 1
  %inc99.4.i = add i8 %rate_offset.3.3.i, 1
  br label %for.inc101.4.i

for.inc101.4.i:                                   ; preds = %if.then94.4.i, %for.inc101.3.i.for.inc101.4.i_crit_edge
  %jj.3.4.i = phi i32 [ %inc96.4.i, %if.then94.4.i ], [ %jj.3.3.i, %for.inc101.3.i.for.inc101.4.i_crit_edge ]
  %num_supported_rates.1.4.i = phi i8 [ %inc98.4.i, %if.then94.4.i ], [ %num_supported_rates.1.3.i, %for.inc101.3.i.for.inc101.4.i_crit_edge ]
  %rate_offset.3.4.i = phi i8 [ %inc99.4.i, %if.then94.4.i ], [ %rate_offset.3.3.i, %for.inc101.3.i.for.inc101.4.i_crit_edge ]
  %and92.5.i = and i32 %..i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.5.i)
  %tobool93.not.5.i = icmp eq i32 %and92.5.i, 0
  br i1 %tobool93.not.5.i, label %for.inc101.4.i.for.inc101.5.i_crit_edge, label %if.then94.5.i

for.inc101.4.i.for.inc101.5.i_crit_edge:          ; preds = %for.inc101.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101.5.i

if.then94.5.i:                                    ; preds = %for.inc101.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc96.5.i = add i32 %jj.3.4.i, 1
  %arrayidx97.5.i = getelementptr i16, ptr %call7.i.i.i, i32 %jj.3.4.i
  %50 = ptrtoint ptr %arrayidx97.5.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 104, ptr %arrayidx97.5.i, align 2
  %inc98.5.i = add i8 %num_supported_rates.1.4.i, 1
  %inc99.5.i = add i8 %rate_offset.3.4.i, 1
  br label %for.inc101.5.i

for.inc101.5.i:                                   ; preds = %if.then94.5.i, %for.inc101.4.i.for.inc101.5.i_crit_edge
  %jj.3.5.i = phi i32 [ %inc96.5.i, %if.then94.5.i ], [ %jj.3.4.i, %for.inc101.4.i.for.inc101.5.i_crit_edge ]
  %num_supported_rates.1.5.i = phi i8 [ %inc98.5.i, %if.then94.5.i ], [ %num_supported_rates.1.4.i, %for.inc101.4.i.for.inc101.5.i_crit_edge ]
  %rate_offset.3.5.i = phi i8 [ %inc99.5.i, %if.then94.5.i ], [ %rate_offset.3.4.i, %for.inc101.4.i.for.inc101.5.i_crit_edge ]
  %and92.6.i = and i32 %..i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.6.i)
  %tobool93.not.6.i = icmp eq i32 %and92.6.i, 0
  br i1 %tobool93.not.6.i, label %for.inc101.5.i.for.inc101.6.i_crit_edge, label %if.then94.6.i

for.inc101.5.i.for.inc101.6.i_crit_edge:          ; preds = %for.inc101.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101.6.i

if.then94.6.i:                                    ; preds = %for.inc101.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc96.6.i = add i32 %jj.3.5.i, 1
  %arrayidx97.6.i = getelementptr i16, ptr %call7.i.i.i, i32 %jj.3.5.i
  %51 = ptrtoint ptr %arrayidx97.6.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 117, ptr %arrayidx97.6.i, align 2
  %inc98.6.i = add i8 %num_supported_rates.1.5.i, 1
  %inc99.6.i = add i8 %rate_offset.3.5.i, 1
  br label %for.inc101.6.i

for.inc101.6.i:                                   ; preds = %if.then94.6.i, %for.inc101.5.i.for.inc101.6.i_crit_edge
  %jj.3.6.i = phi i32 [ %inc96.6.i, %if.then94.6.i ], [ %jj.3.5.i, %for.inc101.5.i.for.inc101.6.i_crit_edge ]
  %num_supported_rates.1.6.i = phi i8 [ %inc98.6.i, %if.then94.6.i ], [ %num_supported_rates.1.5.i, %for.inc101.5.i.for.inc101.6.i_crit_edge ]
  %rate_offset.3.6.i = phi i8 [ %inc99.6.i, %if.then94.6.i ], [ %rate_offset.3.5.i, %for.inc101.5.i.for.inc101.6.i_crit_edge ]
  %and92.7.i = and i32 %..i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.7.i)
  %tobool93.not.7.i = icmp eq i32 %and92.7.i, 0
  br i1 %tobool93.not.7.i, label %for.inc101.6.i.if.end104.i_crit_edge, label %if.then94.7.i

for.inc101.6.i.if.end104.i_crit_edge:             ; preds = %for.inc101.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104.i

if.then94.7.i:                                    ; preds = %for.inc101.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc96.7.i = add i32 %jj.3.6.i, 1
  %arrayidx97.7.i = getelementptr i16, ptr %call7.i.i.i, i32 %jj.3.6.i
  %52 = ptrtoint ptr %arrayidx97.7.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 130, ptr %arrayidx97.7.i, align 2
  %inc98.7.i = add i8 %num_supported_rates.1.6.i, 1
  %inc99.7.i = add i8 %rate_offset.3.6.i, 1
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then94.7.i, %for.inc101.6.i.if.end104.i_crit_edge, %for.end.i.if.end104.i_crit_edge
  %jj.4.i = phi i32 [ %jj.1.i, %for.end.i.if.end104.i_crit_edge ], [ %inc96.7.i, %if.then94.7.i ], [ %jj.3.6.i, %for.inc101.6.i.if.end104.i_crit_edge ]
  %num_supported_rates.2.i = phi i8 [ %conv83.i, %for.end.i.if.end104.i_crit_edge ], [ %inc98.7.i, %if.then94.7.i ], [ %num_supported_rates.1.6.i, %for.inc101.6.i.if.end104.i_crit_edge ]
  %rate_offset.4.i = phi i8 [ %rate_offset.1.i, %for.end.i.if.end104.i_crit_edge ], [ %inc99.7.i, %if.then94.7.i ], [ %rate_offset.3.6.i, %for.inc101.6.i.if.end104.i_crit_edge ]
  tail call void @sort(ptr noundef nonnull %call7.i.i.i, i32 noundef %jj.4.i, i32 noundef 2, ptr noundef nonnull @rsi_compare, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jj.4.i)
  %cmp10625.i = icmp sgt i32 %jj.4.i, 0
  br i1 %cmp10625.i, label %if.end104.i.for.body108.i_crit_edge, label %if.end104.i.for.end121.i_crit_edge

if.end104.i.for.end121.i_crit_edge:               ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end121.i

if.end104.i.for.body108.i_crit_edge:              ; preds = %if.end104.i
  br label %for.body108.i

for.body108.i:                                    ; preds = %for.inc119.i.for.body108.i_crit_edge, %if.end104.i.for.body108.i_crit_edge
  %ii.227.i = phi i32 [ %inc120.i, %for.inc119.i.for.body108.i_crit_edge ], [ 0, %if.end104.i.for.body108.i_crit_edge ]
  %kk.026.i = phi i32 [ %kk.112.i, %for.inc119.i.for.body108.i_crit_edge ], [ 0, %if.end104.i.for.body108.i_crit_edge ]
  %arrayidx109.i = getelementptr i16, ptr %call7.i.i.i, i32 %ii.227.i
  %53 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx109.i, align 2
  %55 = zext i16 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %54, label %for.inc.7.i.i [
    i16 13, label %for.body108.i.if.else114.i_crit_edge
    i16 26, label %if.then.fold.split.i.i
    i16 39, label %if.then.fold.split37.i.i
    i16 52, label %if.then.fold.split38.i.i
    i16 78, label %if.then.fold.split39.i.i
    i16 104, label %if.then.fold.split40.i.i
    i16 117, label %if.then.fold.split41.i.i
    i16 130, label %if.then.fold.split42.i.i
  ]

for.body108.i.if.else114.i_crit_edge:             ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114.i

if.then.fold.split.i.i:                           ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114.i

if.then.fold.split37.i.i:                         ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114.i

if.then.fold.split38.i.i:                         ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114.i

if.then.fold.split39.i.i:                         ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114.i

if.then.fold.split40.i.i:                         ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114.i

if.then.fold.split41.i.i:                         ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114.i

if.then.fold.split42.i.i:                         ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114.i

for.inc.7.i.i:                                    ; preds = %for.body108.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 0, i32 1) to i32))
  %56 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 0, i32 1), align 4
  %57 = udiv i16 %56, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %54)
  %cmp11.i.i = icmp eq i16 %57, %54
  br i1 %cmp11.i.i, label %for.inc.7.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.i.i

for.inc.7.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.i.i:                                    ; preds = %for.inc.7.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 1, i32 1) to i32))
  %58 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 1, i32 1), align 4
  %59 = udiv i16 %58, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %54)
  %cmp11.1.i.i = icmp eq i16 %59, %54
  br i1 %cmp11.1.i.i, label %for.inc15.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.1.i.i

for.inc15.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.1.i.i:                                  ; preds = %for.inc15.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 2, i32 1) to i32))
  %60 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 2, i32 1), align 4
  %61 = udiv i16 %60, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %54)
  %cmp11.2.i.i = icmp eq i16 %61, %54
  br i1 %cmp11.2.i.i, label %for.inc15.1.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.2.i.i

for.inc15.1.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.2.i.i:                                  ; preds = %for.inc15.1.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 3, i32 1) to i32))
  %62 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 3, i32 1), align 4
  %63 = udiv i16 %62, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %54)
  %cmp11.3.i.i = icmp eq i16 %63, %54
  br i1 %cmp11.3.i.i, label %for.inc15.2.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.3.i.i

for.inc15.2.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.3.i.i:                                  ; preds = %for.inc15.2.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 4, i32 1) to i32))
  %64 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 4, i32 1), align 4
  %65 = udiv i16 %64, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %54)
  %cmp11.4.i.i = icmp eq i16 %65, %54
  br i1 %cmp11.4.i.i, label %for.inc15.3.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.4.i.i

for.inc15.3.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.4.i.i:                                  ; preds = %for.inc15.3.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 5, i32 1) to i32))
  %66 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 5, i32 1), align 4
  %67 = udiv i16 %66, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %54)
  %cmp11.5.i.i = icmp eq i16 %67, %54
  br i1 %cmp11.5.i.i, label %for.inc15.4.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.5.i.i

for.inc15.4.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.5.i.i:                                  ; preds = %for.inc15.4.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 6, i32 1) to i32))
  %68 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 6, i32 1), align 4
  %69 = udiv i16 %68, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %54)
  %cmp11.6.i.i = icmp eq i16 %69, %54
  br i1 %cmp11.6.i.i, label %for.inc15.5.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.6.i.i

for.inc15.5.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.6.i.i:                                  ; preds = %for.inc15.5.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 7, i32 1) to i32))
  %70 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 7, i32 1), align 4
  %71 = udiv i16 %70, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %54)
  %cmp11.7.i.i = icmp eq i16 %71, %54
  br i1 %cmp11.7.i.i, label %for.inc15.6.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.7.i.i

for.inc15.6.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.7.i.i:                                  ; preds = %for.inc15.6.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 8, i32 1) to i32))
  %72 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 8, i32 1), align 4
  %73 = udiv i16 %72, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %54)
  %cmp11.8.i.i = icmp eq i16 %73, %54
  br i1 %cmp11.8.i.i, label %for.inc15.7.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.8.i.i

for.inc15.7.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.8.i.i:                                  ; preds = %for.inc15.7.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 9, i32 1) to i32))
  %74 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 9, i32 1), align 4
  %75 = udiv i16 %74, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %54)
  %cmp11.9.i.i = icmp eq i16 %75, %54
  br i1 %cmp11.9.i.i, label %for.inc15.8.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.9.i.i

for.inc15.8.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.9.i.i:                                  ; preds = %for.inc15.8.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 10, i32 1) to i32))
  %76 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 10, i32 1), align 4
  %77 = udiv i16 %76, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %77, i16 %54)
  %cmp11.10.i.i = icmp eq i16 %77, %54
  br i1 %cmp11.10.i.i, label %for.inc15.9.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.10.i.i

for.inc15.9.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

for.inc15.10.i.i:                                 ; preds = %for.inc15.9.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 11, i32 1) to i32))
  %78 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 11, i32 1), align 4
  %79 = udiv i16 %78, 5
  call void @__sanitizer_cov_trace_cmp2(i16 %79, i16 %54)
  %cmp11.11.i.i = icmp eq i16 %79, %54
  br i1 %cmp11.11.i.i, label %for.inc15.10.i.i.rsi_map_rates.exit.thread13.i_crit_edge, label %for.inc15.10.i.i.if.then111.i_crit_edge

for.inc15.10.i.i.if.then111.i_crit_edge:          ; preds = %for.inc15.10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then111.i

for.inc15.10.i.i.rsi_map_rates.exit.thread13.i_crit_edge: ; preds = %for.inc15.10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_map_rates.exit.thread13.i

rsi_map_rates.exit.thread13.i:                    ; preds = %for.inc15.10.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.9.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.8.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.7.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.6.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.5.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.4.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.3.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.2.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.1.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc15.i.i.rsi_map_rates.exit.thread13.i_crit_edge, %for.inc.7.i.i.rsi_map_rates.exit.thread13.i_crit_edge
  %kk.133.lcssa.sink.i.ph.i = phi i32 [ 11, %for.inc15.10.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 10, %for.inc15.9.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 9, %for.inc15.8.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 8, %for.inc15.7.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 7, %for.inc15.6.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 6, %for.inc15.5.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 5, %for.inc15.4.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 4, %for.inc15.3.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 3, %for.inc15.2.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 2, %for.inc15.1.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 1, %for.inc15.i.i.rsi_map_rates.exit.thread13.i_crit_edge ], [ 0, %for.inc.7.i.i.rsi_map_rates.exit.thread13.i_crit_edge ]
  br label %if.then111.i

if.then111.i:                                     ; preds = %rsi_map_rates.exit.thread13.i, %for.inc15.10.i.i.if.then111.i_crit_edge
  %kk.111.i = phi i32 [ %kk.133.lcssa.sink.i.ph.i, %rsi_map_rates.exit.thread13.i ], [ %kk.026.i, %for.inc15.10.i.i.if.then111.i_crit_edge ]
  %hw_value.i = getelementptr [12 x %struct.ieee80211_rate], ptr @rsi_rates, i32 0, i32 %kk.111.i, i32 2
  br label %for.inc119.i

if.else114.i:                                     ; preds = %if.then.fold.split42.i.i, %if.then.fold.split41.i.i, %if.then.fold.split40.i.i, %if.then.fold.split39.i.i, %if.then.fold.split38.i.i, %if.then.fold.split37.i.i, %if.then.fold.split.i.i, %for.body108.i.if.else114.i_crit_edge
  %kk.133.lcssa.sink.i.i = phi i32 [ 0, %for.body108.i.if.else114.i_crit_edge ], [ 1, %if.then.fold.split.i.i ], [ 2, %if.then.fold.split37.i.i ], [ 3, %if.then.fold.split38.i.i ], [ 4, %if.then.fold.split39.i.i ], [ 5, %if.then.fold.split40.i.i ], [ 6, %if.then.fold.split41.i.i ], [ 7, %if.then.fold.split42.i.i ]
  %arrayidx115.i = getelementptr [8 x i16], ptr @rsi_mcsrates, i32 0, i32 %kk.133.lcssa.sink.i.i
  br label %for.inc119.i

for.inc119.i:                                     ; preds = %if.else114.i, %if.then111.i
  %hw_value.sink.i = phi ptr [ %hw_value.i, %if.then111.i ], [ %arrayidx115.i, %if.else114.i ]
  %kk.112.i = phi i32 [ %kk.111.i, %if.then111.i ], [ %kk.133.lcssa.sink.i.i, %if.else114.i ]
  %80 = ptrtoint ptr %hw_value.sink.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %hw_value.sink.i, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #7
  %arrayidx113.i = getelementptr %struct.rsi_auto_rate, ptr %18, i32 0, i32 8, i32 %ii.227.i
  %83 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %82, ptr %arrayidx113.i, align 1
  %inc120.i = add nuw nsw i32 %ii.227.i, 1
  %exitcond40.not.i = icmp eq i32 %inc120.i, %jj.4.i
  br i1 %exitcond40.not.i, label %for.inc119.i.for.end121.i_crit_edge, label %for.inc119.i.for.body108.i_crit_edge

for.inc119.i.for.body108.i_crit_edge:             ; preds = %for.inc119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body108.i

for.inc119.i.for.end121.i_crit_edge:              ; preds = %for.inc119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end121.i

for.end121.i:                                     ; preds = %for.inc119.i.for.end121.i_crit_edge, %if.end104.i.for.end121.i_crit_edge
  %ii.2.lcssa.i = phi i32 [ 0, %if.end104.i.for.end121.i_crit_edge ], [ %jj.4.i, %for.inc119.i.for.end121.i_crit_edge ]
  br i1 %is_ht.0.off0.not.i, label %for.end121.i.if.end167.i_crit_edge, label %if.then123.i

for.end121.i.if.end167.i_crit_edge:               ; preds = %for.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167.i

if.then123.i:                                     ; preds = %for.end121.i
  %conv124.i = zext i8 %rate_offset.4.i to i32
  %add127.i = add nuw nsw i32 %conv124.i, 16
  br label %for.body130.i

for.cond158.preheader.i:                          ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %ii.332.i)
  %cmp15934.i = icmp ult i32 %ii.332.i, 37
  br i1 %cmp15934.i, label %for.body161.lr.ph.i, label %for.cond158.preheader.i.if.end167.i_crit_edge

for.cond158.preheader.i.if.end167.i_crit_edge:    ; preds = %for.cond158.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167.i

for.body161.lr.ph.i:                              ; preds = %for.cond158.preheader.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @rsi_mcsrates to i32))
  %84 = load i16, ptr @rsi_mcsrates, align 2
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #7
  br label %for.body161.i

for.body130.i:                                    ; preds = %if.end151.i.for.body130.i_crit_edge, %if.then123.i
  %ii.332.i = phi i32 [ %conv124.i, %if.then123.i ], [ %inc156.i, %if.end151.i.for.body130.i_crit_edge ]
  %kk.229.i = phi i32 [ 7, %if.then123.i ], [ %dec.i, %if.end151.i.for.body130.i_crit_edge ]
  br i1 %is_sgi.0.off0.i, label %for.body130.i.if.then139.i_crit_edge, label %lor.lhs.false133.i

for.body130.i.if.then139.i_crit_edge:             ; preds = %for.body130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then139.i

lor.lhs.false133.i:                               ; preds = %for.body130.i
  %86 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %common, align 4
  %hw135.i = getelementptr inbounds %struct.rsi_hw, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %hw135.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw135.i, align 4
  %width.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %89, i32 0, i32 7, i32 1
  %90 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp.i.i = icmp eq i32 %91, 2
  br i1 %cmp.i.i, label %lor.lhs.false133.i.if.then139.i_crit_edge, label %if.else146.i

lor.lhs.false133.i.if.then139.i_crit_edge:        ; preds = %lor.lhs.false133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then139.i

if.then139.i:                                     ; preds = %lor.lhs.false133.i.if.then139.i_crit_edge, %for.body130.i.if.then139.i_crit_edge
  %arrayidx140.i = getelementptr [8 x i16], ptr @rsi_mcsrates, i32 0, i32 %kk.229.i
  %92 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx140.i, align 2
  %94 = or i16 %93, 512
  br label %if.end151.i

if.else146.i:                                     ; preds = %lor.lhs.false133.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx147.i = getelementptr [8 x i16], ptr @rsi_mcsrates, i32 0, i32 %kk.229.i
  %95 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx147.i, align 2
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else146.i, %if.then139.i
  %.sink49.i = phi i16 [ %96, %if.else146.i ], [ %94, %if.then139.i ]
  %97 = tail call i16 @llvm.bswap.i16(i16 %.sink49.i) #7
  %arrayidx150.i = getelementptr %struct.rsi_auto_rate, ptr %18, i32 0, i32 8, i32 %ii.332.i
  %98 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 %97, ptr %arrayidx150.i, align 1
  %ii.4.i = add nuw nsw i32 %ii.332.i, 1
  %dec.i = add nsw i32 %kk.229.i, -1
  %arrayidx152.i = getelementptr [8 x i16], ptr @rsi_mcsrates, i32 0, i32 %kk.229.i
  %99 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx152.i, align 2
  %101 = tail call i16 @llvm.bswap.i16(i16 %100) #7
  %arrayidx154.i = getelementptr %struct.rsi_auto_rate, ptr %18, i32 0, i32 8, i32 %ii.4.i
  %102 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 %101, ptr %arrayidx154.i, align 1
  %inc156.i = add nuw nsw i32 %ii.332.i, 2
  %cmp128.i = icmp ult i32 %inc156.i, %add127.i
  br i1 %cmp128.i, label %if.end151.i.for.body130.i_crit_edge, label %for.cond158.preheader.i

if.end151.i.for.body130.i_crit_edge:              ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body130.i

for.body161.i:                                    ; preds = %for.body161.i.for.body161.i_crit_edge, %for.body161.lr.ph.i
  %ii.535.i = phi i32 [ %inc156.i, %for.body161.lr.ph.i ], [ %inc165.i, %for.body161.i.for.body161.i_crit_edge ]
  %arrayidx163.i = getelementptr %struct.rsi_auto_rate, ptr %18, i32 0, i32 8, i32 %ii.535.i
  %103 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 %85, ptr %arrayidx163.i, align 1
  %inc165.i = add nuw nsw i32 %ii.535.i, 1
  %exitcond41.not.i = icmp eq i32 %inc165.i, 39
  br i1 %exitcond41.not.i, label %for.body161.i.for.body171.lr.ph.i_crit_edge, label %for.body161.i.for.body161.i_crit_edge

for.body161.i.for.body161.i_crit_edge:            ; preds = %for.body161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body161.i

for.body161.i.for.body171.lr.ph.i_crit_edge:      ; preds = %for.body161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body171.lr.ph.i

if.end167.i:                                      ; preds = %for.cond158.preheader.i.if.end167.i_crit_edge, %for.end121.i.if.end167.i_crit_edge
  %ii.6.i = phi i32 [ %ii.2.lcssa.i, %for.end121.i.if.end167.i_crit_edge ], [ %inc156.i, %for.cond158.preheader.i.if.end167.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %ii.6.i)
  %cmp16937.i = icmp slt i32 %ii.6.i, 40
  br i1 %cmp16937.i, label %if.end167.i.for.body171.lr.ph.i_crit_edge, label %if.end167.i.rsi_send_internal_mgmt_frame.exit.i_crit_edge

if.end167.i.rsi_send_internal_mgmt_frame.exit.i_crit_edge: ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit.i

if.end167.i.for.body171.lr.ph.i_crit_edge:        ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body171.lr.ph.i

for.body171.lr.ph.i:                              ; preds = %if.end167.i.for.body171.lr.ph.i_crit_edge, %for.body161.i.for.body171.lr.ph.i_crit_edge
  %ii.645.i = phi i32 [ %ii.6.i, %if.end167.i.for.body171.lr.ph.i_crit_edge ], [ 39, %for.body161.i.for.body171.lr.ph.i_crit_edge ]
  %104 = tail call i16 @llvm.bswap.i16(i16 %min_rate.1.i) #7
  br label %for.body171.i

for.body171.i:                                    ; preds = %for.body171.i.for.body171.i_crit_edge, %for.body171.lr.ph.i
  %ii.738.i = phi i32 [ %ii.645.i, %for.body171.lr.ph.i ], [ %inc175.i, %for.body171.i.for.body171.i_crit_edge ]
  %arrayidx173.i = getelementptr %struct.rsi_auto_rate, ptr %18, i32 0, i32 8, i32 %ii.738.i
  %105 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 %104, ptr %arrayidx173.i, align 1
  %inc175.i = add nuw i32 %ii.738.i, 1
  %exitcond42.not.i = icmp eq i32 %inc175.i, 40
  br i1 %exitcond42.not.i, label %for.body171.i.rsi_send_internal_mgmt_frame.exit.i_crit_edge, label %for.body171.i.for.body171.i_crit_edge

for.body171.i.for.body171.i_crit_edge:            ; preds = %for.body171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body171.i

for.body171.i.rsi_send_internal_mgmt_frame.exit.i_crit_edge: ; preds = %for.body171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit.i

rsi_send_internal_mgmt_frame.exit.i:              ; preds = %for.body171.i.rsi_send_internal_mgmt_frame.exit.i_crit_edge, %if.end167.i.rsi_send_internal_mgmt_frame.exit.i_crit_edge
  %conv177.tr.i = zext i8 %num_supported_rates.2.i to i16
  %conv178.i = shl nuw nsw i16 %conv177.tr.i, 1
  %106 = tail call i16 @llvm.bswap.i16(i16 %conv178.i) #7
  %num_supported_rates179.i = getelementptr inbounds %struct.rsi_auto_rate, ptr %18, i32 0, i32 4
  %107 = ptrtoint ptr %num_supported_rates179.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %106, ptr %num_supported_rates179.i, align 1
  %108 = lshr i8 %num_supported_rates.2.i, 1
  %conv182.i = zext i8 %108 to i16
  %109 = shl nuw nsw i16 %conv182.i, 8
  %moderate_rate_inx.i = getelementptr inbounds %struct.rsi_auto_rate, ptr %18, i32 0, i32 6
  %110 = ptrtoint ptr %moderate_rate_inx.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %moderate_rate_inx.i, align 1
  %111 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 24128, ptr %18, align 2
  %call192.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 110) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %112 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %113, align 4
  %116 = or i16 %115, 128
  store i16 %116, ptr %113, align 4
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 6
  %117 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 4, ptr %priority.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %118 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags.i.i, align 4
  %or2.i.i = or i32 %119, 153
  store i32 %or2.i.i, ptr %flags.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i.i, ptr noundef nonnull %call.i.i.i) #7
  %event.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i.i, i32 noundef 4) #7
  %120 = ptrtoint ptr %event.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 0, ptr %event.i.i, align 4
  %event_queue.i.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end5

if.end5:                                          ; preds = %rsi_send_internal_mgmt_frame.exit.i, %if.then7.i, %if.then.i, %if.end.if.end5_crit_edge
  %121 = and i16 %assoc_cap, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool7.not = icmp eq i16 %121, 0
  %or.cond = and i1 %cmp14, %tobool7.not
  br i1 %or.cond, label %land.lhs.true8, label %if.end5.if.end30_crit_edge

if.end5.if.end30_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true8:                                   ; preds = %if.end5
  %call9 = tail call i32 @rsi_send_block_unblock_frame(ptr noundef %common, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true8.if.end30_crit_edge

land.lhs.true8.if.end30_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  %hw_data_qs_blocked12 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 43
  %122 = ptrtoint ptr %hw_data_qs_blocked12 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %hw_data_qs_blocked12, align 4
  br label %if.end30

if.else:                                          ; preds = %entry
  br i1 %cmp14, label %if.then16, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %hw_data_qs_blocked17 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 43
  %123 = ptrtoint ptr %hw_data_qs_blocked17 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %hw_data_qs_blocked17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else.if.end18_crit_edge
  %wow_flags = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 60
  %124 = ptrtoint ptr %wow_flags to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %wow_flags, align 2
  %126 = and i8 %125, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool21.not = icmp eq i8 %126, 0
  br i1 %tobool21.not, label %if.then22, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @rsi_hal_send_sta_notify_frame(ptr noundef %common, i32 noundef %opmode, i8 noundef zeroext 1, ptr noundef %addr, i8 noundef zeroext %qos_enable, i16 noundef zeroext %aid, i16 noundef zeroext %sta_id, ptr noundef %vif)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  br i1 %cmp14, label %if.then27, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 @rsi_send_block_unblock_frame(ptr noundef %common, i1 noundef zeroext true)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge, %if.then11, %land.lhs.true8.if.end30_crit_edge, %if.end5.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_block_unblock_frame(ptr noundef %common, i1 noundef zeroext %block_event) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rsi_send_block_unblock_frame) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_send_block_unblock_frame) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 64, ptr %3, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %frame_type, align 1
  %host_quiet_info = getelementptr inbounds %struct.rsi_block_unblock_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %host_quiet_info to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %host_quiet_info, align 1
  br i1 %block_event, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #7
  %block_q_bitmap = getelementptr inbounds %struct.rsi_block_unblock_data, ptr %3, i32 0, i32 4
  br label %rsi_send_internal_mgmt_frame.exit

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #7
  %unblock_q_bitmap = getelementptr inbounds %struct.rsi_block_unblock_data, ptr %3, i32 0, i32 5
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.else, %if.then4
  %unblock_q_bitmap.sink = phi ptr [ %unblock_q_bitmap, %if.else ], [ %block_q_bitmap, %if.then4 ]
  %7 = ptrtoint ptr %unblock_q_bitmap.sink to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 -256, ptr %unblock_q_bitmap.sink, align 1
  %call12 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #7
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  %12 = or i16 %11, 128
  store i16 %12, ptr %9, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %13 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %15, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %16 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_rx_filter_frame(ptr noundef %common, i16 noundef zeroext %rx_filter_word) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.11) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %rsi_send_internal_mgmt_frame.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_send_rx_filter_frame) #7
  br label %cleanup

rsi_send_internal_mgmt_frame.exit:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 64, ptr %3, align 1
  %arrayidx3 = getelementptr [8 x i16], ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 4352, ptr %arrayidx3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %rx_filter_word)
  %arrayidx5 = getelementptr [8 x i16], ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %arrayidx5, align 1
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #7
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  %12 = or i16 %11, 128
  store i16 %12, ptr %9, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %13 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %15, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %16 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_ps_request(ptr nocapture noundef readonly %adapter, i1 noundef zeroext %enable, ptr nocapture noundef readonly %vif) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 42, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 42)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 6720, ptr %5, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %frame_type, align 1
  br i1 %enable, label %if.end.if.end19_crit_edge, label %if.else

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 6848, ptr %5, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end.if.end19_crit_edge
  %.sink77 = phi i8 [ 0, %if.else ], [ 1, %if.end.if.end19_crit_edge ]
  %.sink = phi i16 [ 512, %if.else ], [ 256, %if.end.if.end19_crit_edge ]
  %9 = getelementptr inbounds %struct.rsi_request_ps, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink77, ptr %9, align 1
  %11 = getelementptr inbounds %struct.rsi_cmd_desc, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %.sink, ptr %11, align 1
  %uapsd_bitmap = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 50
  %13 = ptrtoint ptr %uapsd_bitmap to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %uapsd_bitmap, align 4
  %ps_uapsd_acs = getelementptr inbounds %struct.rsi_request_ps, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %ps_uapsd_acs to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ps_uapsd_acs, align 1
  %sleep_type = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %sleep_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sleep_type, align 1
  %sleep_type21 = getelementptr inbounds %struct.rsi_request_ps, ptr %5, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %sleep_type21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %sleep_type21, align 1
  %num_bcns_per_lis_int = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 8
  %19 = ptrtoint ptr %num_bcns_per_lis_int to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %num_bcns_per_lis_int, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %num_bcns_per_lis_int23 = getelementptr inbounds %struct.rsi_request_ps, ptr %5, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %num_bcns_per_lis_int23 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %num_bcns_per_lis_int23, align 1
  %deep_sleep_wakeup_period = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 11
  %23 = ptrtoint ptr %deep_sleep_wakeup_period to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %deep_sleep_wakeup_period, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %sleep_duration = getelementptr inbounds %struct.rsi_request_ps, ptr %5, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %sleep_duration to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %sleep_duration, align 1
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %27 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %assoc, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool25.not = icmp eq i8 %28, 0
  %spec.select = select i1 %tobool25.not, i8 1, i8 2
  %29 = getelementptr inbounds %struct.rsi_request_ps, ptr %5, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %spec.select, ptr %29, align 1
  %listen_interval = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 7
  %31 = ptrtoint ptr %listen_interval to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %listen_interval, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %ps_listen_interval = getelementptr inbounds %struct.rsi_request_ps, ptr %5, i32 0, i32 6
  %34 = ptrtoint ptr %ps_listen_interval to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %ps_listen_interval, align 1
  %dtim_interval_duration = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 9
  %35 = ptrtoint ptr %dtim_interval_duration to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %dtim_interval_duration, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %ps_dtim_interval_duration = getelementptr inbounds %struct.rsi_request_ps, ptr %5, i32 0, i32 7
  %38 = ptrtoint ptr %ps_dtim_interval_duration to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %ps_dtim_interval_duration, align 1
  %39 = ptrtoint ptr %listen_interval to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %listen_interval, align 1
  %41 = ptrtoint ptr %dtim_interval_duration to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %dtim_interval_duration, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp = icmp ugt i32 %40, %42
  br i1 %cmp, label %if.then35, label %if.end19.rsi_send_internal_mgmt_frame.exit_crit_edge

if.end19.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

if.then35:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %ps_listen_interval to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 0, ptr %ps_listen_interval, align 1
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.then35, %if.end19.rsi_send_internal_mgmt_frame.exit_crit_edge
  %num_dtims_per_sleep = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 11, i32 10
  %44 = ptrtoint ptr %num_dtims_per_sleep to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %num_dtims_per_sleep, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %ps_num_dtim_intervals = getelementptr inbounds %struct.rsi_request_ps, ptr %5, i32 0, i32 8
  %47 = ptrtoint ptr %ps_num_dtim_intervals to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %ps_num_dtim_intervals, align 1
  %call38 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 42) #7
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 4
  %52 = or i16 %51, 128
  store i16 %52, ptr %49, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %53 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %55, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %1, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %56 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_set_antenna(ptr noundef %common, i8 noundef zeroext %antenna) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %rsi_send_internal_mgmt_frame.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_set_antenna) #7
  br label %cleanup

rsi_send_internal_mgmt_frame.exit:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %data, align 4
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %frame_type, align 1
  %sub_frame_type = getelementptr inbounds %struct.rsi_ant_sel_frame, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %sub_frame_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %sub_frame_type, align 1
  %conv2 = zext i8 %antenna to i16
  %6 = shl nuw i16 %conv2, 8
  %ant_value = getelementptr inbounds %struct.rsi_ant_sel_frame, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %ant_value to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %ant_value, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 64, ptr %3, align 2
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  %13 = or i16 %12, 128
  store i16 %13, ptr %10, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %14 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %16, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %17 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_wowlan_request(ptr noundef %common, i16 noundef zeroext %flags, i16 noundef zeroext %sleep_status) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rsi_send_wowlan_request) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 26, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 26)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2624, ptr %3, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 43, ptr %frame_type, align 1
  %host_sleep_status = getelementptr inbounds %struct.rsi_wowlan_req, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %host_sleep_status to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %sleep_status, ptr %host_sleep_status, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sleep_status)
  %tobool12.not = icmp eq i16 %sleep_status, 0
  br i1 %tobool12.not, label %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge, label %if.then13

if.end.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gtk_cipher = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 23, i32 1
  %7 = ptrtoint ptr %gtk_cipher to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gtk_cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %9 = or i16 %flags, 8
  %spec.select = select i1 %tobool7.not, i16 %flags, i16 %9
  %wow_flags = getelementptr inbounds %struct.rsi_wowlan_req, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %wow_flags to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %spec.select, ptr %wow_flags, align 1
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.then13, %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge
  %11 = ptrtoint ptr %host_sleep_status to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %host_sleep_status, align 1
  %conv16 = zext i16 %12 to i32
  %wow_flags17 = getelementptr inbounds %struct.rsi_wowlan_req, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %wow_flags17 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wow_flags17, align 1
  %conv18 = zext i16 %14 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %conv16, i32 noundef %conv18) #7
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 26) #7
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 4
  %19 = or i16 %18, 128
  store i16 %19, ptr %16, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %20 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %22, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %23 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_bgscan_params(ptr noundef %common, i32 noundef %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwscan = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 79
  %0 = ptrtoint ptr %hwscan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwscan, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rsi_send_bgscan_params) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 104, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bgscan = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 104)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 22592, ptr %5, align 2
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 22, ptr %frame_type, align 1
  %8 = ptrtoint ptr %bgscan to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bgscan, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %bgscan_threshold7 = getelementptr inbounds %struct.rsi_bgscan_config, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %bgscan_threshold7 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %bgscan_threshold7, align 1
  %roam_threshold = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 1
  %12 = ptrtoint ptr %roam_threshold to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %roam_threshold, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %roam_threshold8 = getelementptr inbounds %struct.rsi_bgscan_config, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %roam_threshold8 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %roam_threshold8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool9.not = icmp eq i32 %enable, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bgscan_periodicity = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 2
  %16 = ptrtoint ptr %bgscan_periodicity to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bgscan_periodicity, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %bgscan_periodicity11 = getelementptr inbounds %struct.rsi_bgscan_config, ptr %5, i32 0, i32 5
  %19 = ptrtoint ptr %bgscan_periodicity11 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %bgscan_periodicity11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %active_scan_duration = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 5
  %20 = ptrtoint ptr %active_scan_duration to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %active_scan_duration, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %active_scan_duration13 = getelementptr inbounds %struct.rsi_bgscan_config, ptr %5, i32 0, i32 8
  %23 = ptrtoint ptr %active_scan_duration13 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %active_scan_duration13, align 1
  %passive_scan_duration = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 6
  %24 = ptrtoint ptr %passive_scan_duration to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %passive_scan_duration, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %passive_scan_duration14 = getelementptr inbounds %struct.rsi_bgscan_config, ptr %5, i32 0, i32 9
  %27 = ptrtoint ptr %passive_scan_duration14 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %passive_scan_duration14, align 1
  %two_probe = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 80, i32 4
  %28 = ptrtoint ptr %two_probe to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %two_probe, align 1
  %two_probe15 = getelementptr inbounds %struct.rsi_bgscan_config, ptr %5, i32 0, i32 7
  %30 = ptrtoint ptr %two_probe15 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %two_probe15, align 1
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_channels, align 8
  %conv16 = trunc i32 %32 to i8
  %num_bgscan_channels = getelementptr inbounds %struct.rsi_bgscan_config, ptr %5, i32 0, i32 6
  %33 = ptrtoint ptr %num_bgscan_channels to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv16, ptr %num_bgscan_channels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv16)
  %cmp59.not = icmp eq i8 %conv16, 0
  br i1 %cmp59.not, label %if.end12.rsi_send_internal_mgmt_frame.exit_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end12.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 22, i32 %indvars.iv
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hw_value, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %arrayidx22 = getelementptr %struct.rsi_bgscan_config, ptr %5, i32 0, i32 10, i32 %indvars.iv
  %39 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %arrayidx22, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %40 = ptrtoint ptr %num_bgscan_channels to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_bgscan_channels, align 1
  %42 = zext i8 %41 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %42
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.rsi_send_internal_mgmt_frame.exit_crit_edge

for.body.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

rsi_send_internal_mgmt_frame.exit:                ; preds = %for.body.rsi_send_internal_mgmt_frame.exit_crit_edge, %if.end12.rsi_send_internal_mgmt_frame.exit_crit_edge
  %call24 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 104) #7
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 4
  %47 = or i16 %46, 128
  store i16 %47, ptr %44, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %48 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %50, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %51 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_bgscan_probe_req(ptr noundef %common, ptr noundef %vif) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwscan = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 79
  %0 = ptrtoint ptr %hwscan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwscan, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rsi_send_bgscan_probe_req) #7
  %2 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common, align 4
  %sc_nvifs = getelementptr inbounds %struct.rsi_hw, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %sc_nvifs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sc_nvifs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %ssid_len6 = getelementptr inbounds %struct.cfg80211_ssid, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ssid_len6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssid_len6, align 1
  %conv7 = zext i8 %11 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end.if.end8_crit_edge
  %ssid_len.0 = phi i32 [ %conv7, %if.then2 ], [ 0, %if.end.if.end8_crit_edge ]
  %ssid.0 = phi ptr [ %9, %if.then2 ], [ null, %if.end.if.end8_crit_edge ]
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 126, i32 noundef 2592) #7
  %tobool10.not = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 126)
  %15 = load ptr, ptr %data, align 4
  %frame_type = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 23, ptr %frame_type, align 1
  %flags = getelementptr inbounds %struct.rsi_bgscan_probe, ptr %15, i32 0, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 4096, ptr %flags, align 1
  %band = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %18 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %band, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp17 = icmp eq i8 %19, 1
  %spec.select = select i1 %cmp17, i16 -29952, i16 0
  %spec.select82 = select i1 %cmp17, i16 10240, i16 2816
  %20 = getelementptr inbounds %struct.rsi_bgscan_probe, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %spec.select, ptr %20, align 1
  %22 = getelementptr inbounds %struct.rsi_bgscan_probe, ptr %15, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %spec.select82, ptr %22, align 1
  %channel_scan_time = getelementptr inbounds %struct.rsi_bgscan_probe, ptr %15, i32 0, i32 6
  %24 = ptrtoint ptr %channel_scan_time to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 5120, ptr %channel_scan_time, align 1
  %25 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %common, align 4
  %hw = getelementptr inbounds %struct.rsi_hw, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ie_len, align 4
  %call25 = tail call ptr @ieee80211_probereq_get(ptr noundef %28, ptr noundef %addr, ptr noundef %ssid.0, i32 noundef %ssid_len.0, i32 noundef %30) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then27, label %rsi_send_internal_mgmt_frame.exit

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %arrayidx30 = getelementptr i8, ptr %32, i32 26
  %data31 = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 19
  %33 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data31, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %37 = call ptr @memcpy(ptr %arrayidx30, ptr %34, i32 %36)
  %38 = load i32, ptr %len, align 4
  %conv33 = trunc i32 %38 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv33)
  %probe_req_length = getelementptr inbounds %struct.rsi_bgscan_probe, ptr %15, i32 0, i32 7
  %40 = ptrtoint ptr %probe_req_length to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %probe_req_length, align 1
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %43 = trunc i32 %42 to i16
  %conv38 = add i16 %43, 10
  %or.i = or i16 %conv38, 16384
  %44 = tail call i16 @llvm.bswap.i16(i16 %or.i) #7
  %45 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %15, align 2
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %add41 = add i32 %47, 26
  %call42 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add41) #7
  tail call void @consume_skb(ptr noundef nonnull %call25) #7
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 4
  %52 = or i16 %51, 128
  store i16 %52, ptr %49, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %53 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %55, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %56 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then27, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then27 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_probereq_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_handle_card_ready(ptr noundef %common, ptr nocapture noundef readonly %msg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %0 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsm_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.16) #7
  %band.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %3 = ptrtoint ptr %band.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %band.i, align 1
  %channel_width.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 15
  %4 = ptrtoint ptr %channel_width.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %channel_width.i, align 1
  %rts_threshold.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 16
  %5 = ptrtoint ptr %rts_threshold.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2353, ptr %rts_threshold.i, align 4
  %channel.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 32
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %channel.i, align 1
  %rate_config.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 19
  %7 = call ptr @memset(ptr %rate_config.i, i32 0, i32 16)
  %8 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %fsm_state, align 4
  %iface_down.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 31
  %9 = ptrtoint ptr %iface_down.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %iface_down.i, align 2
  %endpoint.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 12
  %10 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %endpoint.i, align 4
  %driver_mode.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 44
  %11 = ptrtoint ptr %driver_mode.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %driver_mode.i, align 1
  %lp_ps_handshake_mode.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 48
  %12 = ptrtoint ptr %lp_ps_handshake_mode.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %lp_ps_handshake_mode.i, align 2
  %ulp_ps_handshake_mode.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 49
  %13 = ptrtoint ptr %ulp_ps_handshake_mode.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %ulp_ps_handshake_mode.i, align 1
  %rf_power_val.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 51
  %14 = ptrtoint ptr %rf_power_val.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %rf_power_val.i, align 1
  %wlan_rf_power_mode.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 52
  %15 = ptrtoint ptr %wlan_rf_power_mode.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %wlan_rf_power_mode.i, align 2
  %obm_ant_sel_val.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 53
  %16 = ptrtoint ptr %obm_ant_sel_val.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %obm_ant_sel_val.i, align 1
  %beacon_interval.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 62
  %17 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 200, ptr %beacon_interval.i, align 4
  %dtim_cnt.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 63
  %18 = ptrtoint ptr %dtim_cnt.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %dtim_cnt.i, align 2
  %w9116_features.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81
  %19 = ptrtoint ptr %w9116_features.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %w9116_features.i, align 4
  %rf_type.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 1
  %20 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %rf_type.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 2
  %21 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %wireless_mode.i, align 2
  %enable_ppe.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 4
  %22 = ptrtoint ptr %enable_ppe.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %enable_ppe.i, align 4
  %afe_type.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 3
  %23 = ptrtoint ptr %afe_type.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %afe_type.i, align 1
  %dpd.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 5
  %24 = ptrtoint ptr %dpd.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %dpd.i, align 1
  %sifs_tx_enable.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 6
  %25 = ptrtoint ptr %sifs_tx_enable.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sifs_tx_enable.i, align 4
  %ps_options.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 7
  %26 = ptrtoint ptr %ps_options.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ps_options.i, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.44) #7
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 48, i32 noundef 2592) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %rsi_send_common_dev_params.exit.thread, label %rsi_send_common_dev_params.exit

rsi_send_common_dev_params.exit.thread:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.rsi_send_common_dev_params) #7
  br label %cleanup

rsi_send_common_dev_params.exit:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 48)
  %30 = load ptr, ptr %data.i, align 4
  %31 = getelementptr inbounds i8, ptr %30, i32 3
  %32 = call ptr @memset(ptr %31, i32 0, i32 45)
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 8192, ptr %30, align 2
  %pkt_type.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 40, ptr %pkt_type.i, align 1
  %35 = ptrtoint ptr %lp_ps_handshake_mode.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %lp_ps_handshake_mode.i, align 2
  %lp_ps_handshake.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 4
  %37 = ptrtoint ptr %lp_ps_handshake.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %lp_ps_handshake.i, align 1
  %38 = ptrtoint ptr %ulp_ps_handshake_mode.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ulp_ps_handshake_mode.i, align 1
  %ulp_ps_handshake.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 5
  %40 = ptrtoint ptr %ulp_ps_handshake.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %ulp_ps_handshake.i, align 1
  %unused_ulp_gpio.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 7
  %41 = ptrtoint ptr %unused_ulp_gpio.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 15, ptr %unused_ulp_gpio.i, align 1
  %unused_soc_gpio_bitmap.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 8
  %42 = ptrtoint ptr %unused_soc_gpio_bitmap.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 16657920, ptr %unused_soc_gpio_bitmap.i, align 1
  %oper_mode.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 47
  %43 = ptrtoint ptr %oper_mode.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %oper_mode.i, align 4
  %conv5.i = trunc i16 %44 to i8
  %opermode.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 10
  %45 = ptrtoint ptr %opermode.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv5.i, ptr %opermode.i, align 1
  %46 = ptrtoint ptr %wlan_rf_power_mode.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %wlan_rf_power_mode.i, align 2
  %wlan_rf_pwr_mode.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 11
  %48 = ptrtoint ptr %wlan_rf_pwr_mode.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %wlan_rf_pwr_mode.i, align 1
  %49 = ptrtoint ptr %driver_mode.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %driver_mode.i, align 1
  %driver_mode6.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 14
  %51 = ptrtoint ptr %driver_mode6.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %driver_mode6.i, align 1
  %region_code.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 15
  %52 = ptrtoint ptr %region_code.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %region_code.i, align 1
  %53 = ptrtoint ptr %obm_ant_sel_val.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %obm_ant_sel_val.i, align 1
  %antenna_sel_val.i = getelementptr inbounds %struct.rsi_config_vals, ptr %30, i32 0, i32 16
  %55 = ptrtoint ptr %antenna_sel_val.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %antenna_sel_val.i, align 1
  %call8.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 48) #7
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 4
  %60 = or i16 %59, 128
  store i16 %60, ptr %57, align 4
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 6
  %61 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %priority.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %62 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i, align 4
  %or2.i.i = or i32 %63, 153
  store i32 %or2.i.i, ptr %flags.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i.i, ptr noundef nonnull %call.i.i.i) #7
  %event.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i.i, i32 noundef 4) #7
  %64 = ptrtoint ptr %event.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %event.i.i, align 4
  %event_queue.i.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.17) #7
  %65 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %common, align 4
  %device_model = getelementptr inbounds %struct.rsi_hw, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %device_model to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %device_model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp3 = icmp eq i32 %68, 1
  br i1 %cmp3, label %if.then4, label %sw.bb2.if.end13_crit_edge

sw.bb2.if.end13_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then4:                                         ; preds = %sw.bb2
  %arrayidx = getelementptr i8, ptr %msg, i32 16
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %70)
  %cmp5.not = icmp eq i8 %70, 90
  br i1 %cmp5.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rsi_handle_card_ready) #7
  %71 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %fsm_state, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %mac_addr = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 26
  %arrayidx10 = getelementptr i8, ptr %msg, i32 20
  %72 = call ptr @memcpy(ptr %mac_addr, ptr %arrayidx10, i32 6)
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef %mac_addr) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %sw.bb2.if.end13_crit_edge
  %arrayidx14 = getelementptr i8, ptr %msg, i32 8
  %73 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx14, align 4
  %75 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %common, align 4
  %usb_buffer_status_reg = getelementptr inbounds %struct.rsi_hw, ptr %76, i32 0, i32 13
  %77 = ptrtoint ptr %usb_buffer_status_reg to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %usb_buffer_status_reg, align 4
  %78 = load ptr, ptr %common, align 4
  %usb_buffer_status_reg17 = getelementptr inbounds %struct.rsi_hw, ptr %78, i32 0, i32 13
  %79 = ptrtoint ptr %usb_buffer_status_reg17 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %usb_buffer_status_reg17, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %80) #7
  %81 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %common, align 4
  %device_model19 = getelementptr inbounds %struct.rsi_hw, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %device_model19 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %device_model19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp20 = icmp eq i32 %84, 1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call fastcc i32 @rsi_load_9116_bootup_params(ptr noundef %common)
  br label %if.end25

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call fastcc i32 @rsi_load_bootup_params(ptr noundef %common)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %status.0 = phi i32 [ %call23, %if.then22 ], [ %call24, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp26 = icmp slt i32 %status.0, 0
  br i1 %cmp26, label %if.then28, label %if.end25.sw.epilog_crit_edge

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %fsm_state, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.rsi_handle_card_ready, i32 noundef %1) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end25.sw.epilog_crit_edge, %rsi_send_common_dev_params.exit
  %storemerge = phi i32 [ 2, %rsi_send_common_dev_params.exit ], [ 3, %if.end25.sw.epilog_crit_edge ]
  %86 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %storemerge, ptr %fsm_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then28, %if.then7, %rsi_send_common_dev_params.exit.thread
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %if.then7 ], [ %status.0, %if.then28 ], [ 0, %sw.epilog ], [ -22, %rsi_send_common_dev_params.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_mgmt_pkt_recv(ptr noundef %common, ptr noundef %msg) local_unnamed_addr #1 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg, align 2
  %2 = and i16 %1, -241
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %and = zext i16 %3 to i32
  %arrayidx1 = getelementptr i8, ptr %msg, i32 2
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv3 = zext i8 %5 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.rsi_mgmt_pkt_recv, i32 noundef %and, i32 noundef %conv3) #7
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %5, label %sw.default41 [
    i8 1, label %sw.bb
    i8 0, label %sw.bb5
    i8 4, label %sw.bb7
    i8 8, label %sw.bb17
    i8 -59, label %sw.bb28
    i8 2, label %sw.bb39
  ]

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common, align 4
  %arrayidx.i = getelementptr i8, ptr %msg, i32 15
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %10, label %sw.default.i [
    i8 12, label %sw.bb.i
    i8 14, label %sw.bb26.i
    i8 1, label %sw.bb87.i
    i8 2, label %sw.bb101.i
    i8 3, label %sw.bb.sw.bb122.i_crit_edge
    i8 4, label %sw.bb.sw.bb122.i_crit_edge71
    i8 21, label %sw.bb.sw.bb122.i_crit_edge72
    i8 6, label %sw.bb143.i
    i8 5, label %sw.bb144.i
    i8 23, label %sw.bb146.i
  ]

sw.bb.sw.bb122.i_crit_edge72:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb122.i

sw.bb.sw.bb122.i_crit_edge71:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb122.i

sw.bb.sw.bb122.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb122.i

sw.bb.i:                                          ; preds = %sw.bb
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type) #7
  %fsm_state.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %12 = ptrtoint ptr %fsm_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fsm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  br i1 %cmp.i, label %if.then.i, label %if.else23.i

if.then.i:                                        ; preds = %sw.bb.i
  %device_model.i = getelementptr inbounds %struct.rsi_hw, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %device_model.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device_model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp8.i = icmp eq i32 %15, 1
  br i1 %cmp8.i, label %if.then10.i, label %if.else13.i

if.then10.i:                                      ; preds = %if.then.i
  %band.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %16 = ptrtoint ptr %band.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %band.i, align 1
  %num_supp_bands.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 14
  %17 = ptrtoint ptr %num_supp_bands.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %num_supp_bands.i, align 2
  %call.i = tail call fastcc i32 @rsi_send_reset_mac(ptr noundef %common) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then10.i.out.i_crit_edge

if.then10.i.out.i_crit_edge:                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %fsm_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %fsm_state.i, align 4
  br label %cleanup

if.else13.i:                                      ; preds = %if.then.i
  %eeprom.i = getelementptr inbounds %struct.rsi_hw, ptr %8, i32 0, i32 20
  %length.i = getelementptr inbounds %struct.rsi_hw, ptr %8, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 11, ptr %length.i, align 4
  %20 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 40, ptr %eeprom.i, align 4
  %call16.i = tail call fastcc i32 @rsi_eeprom_read(ptr noundef %common) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %fsm_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %fsm_state.i, align 4
  br label %out.i

if.end20.i:                                       ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %fsm_state.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %fsm_state.i, align 4
  br label %cleanup

if.else23.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type, i32 noundef %13) #7
  br label %cleanup

sw.bb26.i:                                        ; preds = %sw.bb
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %msg, align 2
  %25 = and i16 %24, 4095
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.47) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp28.i = icmp eq i16 %25, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.end32.i

if.then30.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type, i32 noundef 0) #7
  br label %out.i

if.end32.i:                                       ; preds = %sw.bb26.i
  %arrayidx33.i = getelementptr i8, ptr %msg, i32 16
  %26 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %27)
  %cmp35.not.i = icmp eq i8 %27, 90
  br i1 %cmp35.not.i, label %if.end39.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type) #7
  %fsm_state38.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %28 = ptrtoint ptr %fsm_state38.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %fsm_state38.i, align 4
  br label %out.i

if.end39.i:                                       ; preds = %if.end32.i
  %fsm_state40.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %29 = ptrtoint ptr %fsm_state40.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fsm_state40.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %30, label %if.else84.i [
    i32 4, label %if.then43.i
    i32 5, label %if.then59.i
  ]

if.then43.i:                                      ; preds = %if.end39.i
  %mac_addr.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 26
  %arrayidx44.i = getelementptr i8, ptr %msg, i32 21
  %32 = call ptr @memcpy(ptr %mac_addr.i, ptr %arrayidx44.i, i32 6)
  %eeprom45.i = getelementptr inbounds %struct.rsi_hw, ptr %8, i32 0, i32 20
  %length46.i = getelementptr inbounds %struct.rsi_hw, ptr %8, i32 0, i32 20, i32 1
  %33 = ptrtoint ptr %length46.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %length46.i, align 4
  %34 = ptrtoint ptr %eeprom45.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 424, ptr %eeprom45.i, align 4
  %call49.i = tail call fastcc i32 @rsi_eeprom_read(ptr noundef %common) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end53.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type) #7
  %35 = ptrtoint ptr %fsm_state40.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %fsm_state40.i, align 4
  br label %out.i

if.end53.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %fsm_state40.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %fsm_state40.i, align 4
  br label %cleanup

if.then59.i:                                      ; preds = %if.end39.i
  %arrayidx60.i = getelementptr i8, ptr %msg, i32 17
  %37 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx60.i, align 1
  %trunc.i = trunc i8 %38 to i2
  %39 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.80)
  switch i2 %trunc.i, label %if.then59.i.if.end78.i_crit_edge [
    i2 -1, label %if.then59.i.if.end78.sink.split.i_crit_edge
    i2 1, label %if.then74.i
  ]

if.then59.i.if.end78.sink.split.i_crit_edge:      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.sink.split.i

if.then59.i.if.end78.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

if.then74.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.sink.split.i

if.end78.sink.split.i:                            ; preds = %if.then74.i, %if.then59.i.if.end78.sink.split.i_crit_edge
  %.str.51.sink.i = phi ptr [ @.str.51, %if.then74.i ], [ @.str.50, %if.then59.i.if.end78.sink.split.i_crit_edge ]
  %.sink223.i = phi i8 [ 0, %if.then74.i ], [ 1, %if.then59.i.if.end78.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ 1, %if.then74.i ], [ 2, %if.then59.i.if.end78.sink.split.i_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull %.str.51.sink.i) #7
  %band75.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %40 = ptrtoint ptr %band75.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink223.i, ptr %band75.i, align 1
  %num_supp_bands76.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 14
  %41 = ptrtoint ptr %num_supp_bands76.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink.i, ptr %num_supp_bands76.i, align 2
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end78.sink.split.i, %if.then59.i.if.end78.i_crit_edge
  %call79.i = tail call fastcc i32 @rsi_send_reset_mac(ptr noundef %common) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end82.i, label %if.end78.i.out.i_crit_edge

if.end78.i.out.i_crit_edge:                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end82.i:                                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %fsm_state40.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 6, ptr %fsm_state40.i, align 4
  br label %cleanup

if.else84.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type) #7
  br label %cleanup

sw.bb87.i:                                        ; preds = %sw.bb
  %fsm_state88.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %43 = ptrtoint ptr %fsm_state88.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fsm_state88.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %cmp89.i = icmp eq i32 %44, 6
  br i1 %cmp89.i, label %if.then91.i, label %if.else98.i

if.then91.i:                                      ; preds = %sw.bb87.i
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type) #7
  %call92.i = tail call fastcc i32 @rsi_load_radio_caps(ptr noundef %common) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %tobool93.not.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.not.i, label %if.else95.i, label %if.then91.i.out.i_crit_edge

if.then91.i.out.i_crit_edge:                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.else95.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %fsm_state88.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 7, ptr %fsm_state88.i, align 4
  br label %cleanup

if.else98.i:                                      ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type, i32 noundef %44) #7
  br label %cleanup

sw.bb101.i:                                       ; preds = %sw.bb
  %fsm_state102.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %46 = ptrtoint ptr %fsm_state102.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fsm_state102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %47)
  %cmp103.i = icmp eq i32 %47, 7
  br i1 %cmp103.i, label %if.then105.i, label %if.else119.i

if.then105.i:                                     ; preds = %sw.bb101.i
  %rf_reset.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 20
  %48 = ptrtoint ptr %rf_reset.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %rf_reset.i, align 4
  %device_model106.i = getelementptr inbounds %struct.rsi_hw, ptr %8, i32 0, i32 1
  %49 = ptrtoint ptr %device_model106.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %device_model106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp107.i = icmp eq i32 %50, 1
  br i1 %cmp107.i, label %land.lhs.true.i, label %if.then105.i.if.end112.i_crit_edge

if.then105.i.if.end112.i_crit_edge:               ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.i

land.lhs.true.i:                                  ; preds = %if.then105.i
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.rsi_send_w9116_features) #7
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 28, i32 noundef 2592) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then111.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %53 = call ptr @memset(ptr %52, i32 0, i32 28)
  %54 = load ptr, ptr %data.i.i, align 4
  %w9116_features3.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81
  %55 = ptrtoint ptr %w9116_features3.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %w9116_features3.i.i, align 4
  %pll_mode4.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %pll_mode4.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %pll_mode4.i.i, align 4
  %rf_type.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 1
  %58 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rf_type.i.i, align 1
  %rf_type6.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 2
  %60 = ptrtoint ptr %rf_type6.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %rf_type6.i.i, align 1
  %wireless_mode.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 2
  %61 = ptrtoint ptr %wireless_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %wireless_mode.i.i, align 2
  %wireless_mode8.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 3
  %63 = ptrtoint ptr %wireless_mode8.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %wireless_mode8.i.i, align 2
  %enable_ppe.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 4
  %64 = ptrtoint ptr %enable_ppe.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %enable_ppe.i.i, align 4
  %enable_ppe10.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 4
  %66 = ptrtoint ptr %enable_ppe10.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %enable_ppe10.i.i, align 1
  %afe_type.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 3
  %67 = ptrtoint ptr %afe_type.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %afe_type.i.i, align 1
  %afe_type12.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 5
  %69 = ptrtoint ptr %afe_type12.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %afe_type12.i.i, align 4
  %dpd.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 5
  %70 = ptrtoint ptr %dpd.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dpd.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool14.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool14.not.i.i, label %if.end.i.i.if.end16.i.i_crit_edge, label %if.then15.i.i

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %feature_enable.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 8
  %72 = ptrtoint ptr %feature_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %feature_enable.i.i, align 4
  %or.i.i = or i32 %73, 134217728
  store i32 %or.i.i, ptr %feature_enable.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then15.i.i, %if.end.i.i.if.end16.i.i_crit_edge
  %sifs_tx_enable.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 6
  %74 = ptrtoint ptr %sifs_tx_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sifs_tx_enable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool18.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool18.not.i.i, label %if.end16.i.i.if.end22.i.i_crit_edge, label %if.then19.i.i

if.end16.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %feature_enable20.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 8
  %76 = ptrtoint ptr %feature_enable20.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %feature_enable20.i.i, align 4
  %or21.i.i = or i32 %77, 67108864
  store i32 %or21.i.i, ptr %feature_enable20.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %if.end16.i.i.if.end22.i.i_crit_edge
  %ps_options.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 81, i32 7
  %78 = ptrtoint ptr %ps_options.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ps_options.i.i, align 4
  %and.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end22.i.i.if.end28.i.i_crit_edge, label %if.then25.i.i

if.end22.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.then25.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %feature_enable26.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 8
  %80 = ptrtoint ptr %feature_enable26.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %feature_enable26.i.i, align 4
  %or27.i.i = or i32 %81, 16777216
  store i32 %or27.i.i, ptr %feature_enable26.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then25.i.i, %if.end22.i.i.if.end28.i.i_crit_edge
  %82 = ptrtoint ptr %ps_options.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ps_options.i.i, align 4
  %and31.i.i = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end28.i.i.rsi_send_w9116_features.exit.thread.i_crit_edge, label %if.then33.i.i

if.end28.i.i.rsi_send_w9116_features.exit.thread.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_w9116_features.exit.thread.i

if.then33.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %feature_enable34.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 8
  %84 = ptrtoint ptr %feature_enable34.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %feature_enable34.i.i, align 4
  %or35.i.i = or i32 %85, 33554432
  store i32 %or35.i.i, ptr %feature_enable34.i.i, align 4
  br label %rsi_send_w9116_features.exit.thread.i

rsi_send_w9116_features.exit.thread.i:            ; preds = %if.then33.i.i, %if.end28.i.i.rsi_send_w9116_features.exit.thread.i_crit_edge
  %86 = ptrtoint ptr %ps_options.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ps_options.i.i, align 4
  %and39.i.i = shl i32 %87, 2
  %shl.i.i = and i32 %and39.i.i, -16
  %88 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #7
  %feature_enable40.i.i = getelementptr inbounds %struct.rsi_wlan_9116_features, ptr %54, i32 0, i32 8
  %89 = ptrtoint ptr %feature_enable40.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %feature_enable40.i.i, align 4
  %or41.i.i = or i32 %88, %90
  store i32 %or41.i.i, ptr %feature_enable40.i.i, align 4
  %91 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 3136, ptr %54, align 2
  %frame_type.i.i = getelementptr inbounds %struct.rsi_cmd_desc_dword0, ptr %54, i32 0, i32 1
  %92 = ptrtoint ptr %frame_type.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 51, ptr %frame_type.i.i, align 2
  %call47.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 28) #7
  %93 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %94, align 4
  %97 = or i16 %96, 128
  store i16 %97, ptr %94, align 4
  %priority.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 6
  %98 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4, ptr %priority.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 12
  %99 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i.i.i, align 4
  %or2.i.i.i = or i32 %100, 153
  store i32 %or2.i.i.i, ptr %flags.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i.i.i, ptr noundef nonnull %call.i.i.i.i) #7
  %event.i.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i.i.i, i32 noundef 4) #7
  %101 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 0, ptr %event.i.i.i, align 4
  %event_queue.i.i.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end112.i

if.then111.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.55) #7
  br label %out.i

if.end112.i:                                      ; preds = %rsi_send_w9116_features.exit.thread.i, %if.then105.i.if.end112.i_crit_edge
  %call113.i = tail call fastcc i32 @rsi_program_bb_rf(ptr noundef %common) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.i)
  %tobool114.not.i = icmp eq i32 %call113.i, 0
  br i1 %tobool114.not.i, label %if.else116.i, label %if.end112.i.out.i_crit_edge

if.end112.i.out.i_crit_edge:                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.else116.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %fsm_state102.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 8, ptr %fsm_state102.i, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type) #7
  br label %cleanup

if.else119.i:                                     ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type, i32 noundef %47) #7
  br label %cleanup

sw.bb122.i:                                       ; preds = %sw.bb.sw.bb122.i_crit_edge, %sw.bb.sw.bb122.i_crit_edge71, %sw.bb.sw.bb122.i_crit_edge72
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type) #7
  %fsm_state123.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %103 = ptrtoint ptr %fsm_state123.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fsm_state123.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %104)
  %cmp124.i = icmp eq i32 %104, 8
  br i1 %cmp124.i, label %if.then126.i, label %if.else140.i

if.then126.i:                                     ; preds = %sw.bb122.i
  %bb_rf_prog_count.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 30
  %105 = ptrtoint ptr %bb_rf_prog_count.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bb_rf_prog_count.i, align 1
  %dec.i = add i8 %106, -1
  store i8 %dec.i, ptr %bb_rf_prog_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool128.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool128.not.i, label %if.then129.i, label %if.then126.i.cleanup_crit_edge

if.then126.i.cleanup_crit_edge:                   ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then129.i:                                     ; preds = %if.then126.i
  %107 = ptrtoint ptr %fsm_state123.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 9, ptr %fsm_state123.i, align 4
  %reinit_hw.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 59
  %108 = ptrtoint ptr %reinit_hw.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %reinit_hw.i, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool131.not.i = icmp eq i8 %109, 0
  br i1 %tobool131.not.i, label %if.else133.i, label %if.then132.i

if.then132.i:                                     ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #9
  %wlan_init_completion.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 8
  tail call void @complete(ptr noundef %wlan_init_completion.i) #7
  br label %cleanup

if.else133.i:                                     ; preds = %if.then129.i
  %bt_defer_attach.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 76
  %110 = ptrtoint ptr %bt_defer_attach.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bt_defer_attach.i, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool134.not.i = icmp eq i8 %111, 0
  br i1 %tobool134.not.i, label %if.else133.i.if.end136.i_crit_edge, label %if.then135.i

if.else133.i.if.end136.i_crit_edge:               ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

if.then135.i:                                     ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rsi_attach_bt(ptr noundef %common) #7
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then135.i, %if.else133.i.if.end136.i_crit_edge
  %call137.i = tail call i32 @rsi_mac80211_attach(ptr noundef %common) #7
  br label %cleanup

if.else140.i:                                     ; preds = %sw.bb122.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type, i32 noundef %104) #7
  br label %cleanup

sw.bb143.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.60) #7
  br label %cleanup

sw.bb144.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.61) #7
  %call145.i = tail call i32 @rsi_handle_ps_confirm(ptr noundef %8, ptr noundef %msg) #7
  br label %cleanup

sw.bb146.i:                                       ; preds = %sw.bb
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.62) #7
  %bgscan_en.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 82
  %112 = ptrtoint ptr %bgscan_en.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bgscan_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool147.not.i = icmp eq i8 %113, 0
  br i1 %tobool147.not.i, label %sw.bb146.i.if.end154.i_crit_edge, label %if.then148.i

sw.bb146.i.if.end154.i_crit_edge:                 ; preds = %sw.bb146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154.i

if.then148.i:                                     ; preds = %sw.bb146.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #7
  %114 = call ptr @memset(ptr %info.i, i32 255, i32 16)
  %call149.i = tail call i32 @rsi_send_bgscan_params(ptr noundef %common, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool150.not.i = icmp eq i32 %call149.i, 0
  br i1 %tobool150.not.i, label %if.then151.i, label %if.then148.i.if.end153.i_crit_edge

if.then148.i.if.end153.i_crit_edge:               ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153.i

if.then151.i:                                     ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %bgscan_en.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %bgscan_en.i, align 4
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then151.i, %if.then148.i.if.end153.i_crit_edge
  %aborted.i = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info.i, i32 0, i32 2
  %116 = ptrtoint ptr %aborted.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %aborted.i, align 2
  %hw.i = getelementptr inbounds %struct.rsi_hw, ptr %8, i32 0, i32 2
  %117 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_scan_completed(ptr noundef %118, ptr noundef nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #7
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.end153.i, %sw.bb146.i.if.end154.i_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.63) #7
  br label %cleanup

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type) #7
  br label %cleanup

out.i:                                            ; preds = %if.end112.i.out.i_crit_edge, %if.then111.i, %if.then91.i.out.i_crit_edge, %if.end78.i.out.i_crit_edge, %if.then51.i, %if.then37.i, %if.then30.i, %if.then18.i, %if.then10.i.out.i_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.rsi_handle_ta_confirm_type) #7
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hibernate_resume = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 58
  %119 = ptrtoint ptr %hibernate_resume to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %hibernate_resume, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.rsi_mgmt_pkt_recv) #7
  %call6 = tail call i32 @rsi_handle_card_ready(ptr noundef %common, ptr noundef %msg)
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %arrayidx8 = getelementptr i8, ptr %msg, i32 15
  %120 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx8, align 1
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %121, label %sw.bb7.cleanup_crit_edge [
    i8 2, label %sw.bb10
    i8 1, label %sw.bb11
  ]

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %mgmt_q_block = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 3
  %123 = ptrtoint ptr %mgmt_q_block to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %mgmt_q_block, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 128, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rsi_mgmt_pkt_recv) #7
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb7
  %arrayidx12 = getelementptr i8, ptr %msg, i32 12
  %124 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not = icmp eq i8 %125, 0
  br i1 %tobool.not, label %sw.bb11.cleanup_crit_edge, label %if.then

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb11
  %eapol4_confirm = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 75
  %126 = ptrtoint ptr %eapol4_confirm to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %eapol4_confirm, align 4
  %call13 = tail call i32 @rsi_send_block_unblock_frame(ptr noundef %common, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %hw_data_qs_blocked = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 43
  %127 = ptrtoint ptr %hw_data_qs_blocked to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %hw_data_qs_blocked, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #7
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %128 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %fsm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %129)
  %cmp.not = icmp eq i32 %129, 9
  br i1 %cmp.not, label %if.end20, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %sw.bb17
  %iface_down = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 31
  %130 = ptrtoint ptr %iface_down to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %iface_down, align 2, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool21.not = icmp eq i8 %131, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %beacon_enabled = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 64
  %132 = ptrtoint ptr %beacon_enabled to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %beacon_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool24.not = icmp eq i8 %133, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rsi_send_beacon(ptr noundef %common)
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  %arrayidx29 = getelementptr i8, ptr %msg, i32 15
  %134 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %135 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %conv30) #7
  %136 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx29, align 1
  %138 = zext i8 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %137, label %sw.default [
    i8 1, label %sw.bb33
    i8 2, label %sw.bb34
    i8 4, label %sw.bb35
    i8 8, label %sw.bb36
    i8 16, label %sw.bb37
  ]

sw.bb33:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.27) #7
  br label %cleanup

sw.bb34:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #7
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.29) #7
  br label %cleanup

sw.bb36:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.30) #7
  br label %cleanup

sw.bb37:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.31) #7
  br label %cleanup

sw.default:                                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.32) #7
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  %139 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %common, align 4
  %sc_nvifs.i = getelementptr inbounds %struct.rsi_hw, ptr %140, i32 0, i32 7
  %141 = ptrtoint ptr %sc_nvifs.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %sc_nvifs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i67 = icmp eq i8 %142, 0
  br i1 %tobool.not.i67, label %sw.bb39.cleanup_crit_edge, label %if.end.i

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb39
  %arrayidx.i68 = getelementptr i8, ptr %msg, i32 4
  %143 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i68, align 1
  %conv.i = zext i8 %144 to i32
  %sub.i = sub nsw i32 %and, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i69 = icmp slt i32 %sub.i, 1
  br i1 %cmp.i69, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 16, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.rsi_mgmt_pkt_to_core, i32 noundef %sub.i) #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %sub.i, i32 noundef 2592) #7
  %tobool4.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end6.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %msg, i32 16
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.i) #7
  %145 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr8.i, i32 %sub.i)
  %146 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 8
  %147 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %add.ptr.i, align 1
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %146, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %msg, i32 15
  %150 = ptrtoint ptr %add.ptr.i31.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %add.ptr.i31.i, align 1
  %conv13.i = zext i8 %151 to i16
  %channel.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %152 = ptrtoint ptr %channel.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv13.i, ptr %channel.i, align 4
  tail call void @rsi_indicate_pkt_to_os(ptr noundef %common, ptr noundef nonnull %call.i.i.i) #7
  br label %cleanup

sw.default41:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %conv3) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default41, %if.end6.i, %if.end3.i.cleanup_crit_edge, %if.then2.i, %sw.bb39.cleanup_crit_edge, %sw.default, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %if.end26, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %if.then15, %if.then.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb10, %sw.bb7.cleanup_crit_edge, %sw.bb5, %out.i, %sw.default.i, %if.end154.i, %sw.bb144.i, %sw.bb143.i, %if.else140.i, %if.end136.i, %if.then132.i, %if.then126.i.cleanup_crit_edge, %if.else119.i, %if.else116.i, %if.else98.i, %if.else95.i, %if.else84.i, %if.end82.i, %if.end53.i, %if.else23.i, %if.end20.i, %if.else.i
  %retval.0 = phi i32 [ %call6, %sw.bb5 ], [ -1, %sw.bb17.cleanup_crit_edge ], [ -1, %if.end20.cleanup_crit_edge ], [ -1, %if.end23.cleanup_crit_edge ], [ 0, %sw.bb33 ], [ 0, %sw.bb34 ], [ 0, %sw.bb35 ], [ 0, %sw.bb36 ], [ 0, %sw.bb37 ], [ 0, %sw.default ], [ 0, %sw.bb10 ], [ 0, %sw.bb7.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %sw.bb11.cleanup_crit_edge ], [ 0, %sw.default41 ], [ 0, %if.end26 ], [ %call145.i, %sw.bb144.i ], [ %call137.i, %if.end136.i ], [ 0, %if.else140.i ], [ -22, %out.i ], [ 0, %if.else119.i ], [ 0, %if.else98.i ], [ 0, %if.else84.i ], [ 0, %if.else23.i ], [ 0, %if.then132.i ], [ 0, %if.then126.i.cleanup_crit_edge ], [ 0, %if.end53.i ], [ 0, %if.end82.i ], [ 0, %if.end20.i ], [ 0, %if.else.i ], [ 0, %sw.default.i ], [ 0, %if.end154.i ], [ 0, %sw.bb143.i ], [ 0, %if.else116.i ], [ 0, %if.else95.i ], [ -22, %if.then2.i ], [ 0, %if.end6.i ], [ -67, %sw.bb39.cleanup_crit_edge ], [ -12, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsi_send_beacon(ptr noundef %common) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 512, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 512)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = trunc i32 %4 to i8
  %conv = and i8 %5, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool2.not = icmp eq i8 %conv, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %narrow = sub nuw nsw i8 64, %conv
  %sub = zext i8 %narrow to i32
  %call5 = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i, i32 noundef %sub) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @rsi_prepare_beacon(ptr noundef %common, ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.69) #7
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 5
  tail call void @skb_queue_tail(ptr noundef %arrayidx, ptr noundef nonnull %call.i.i) #7
  %event = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #7
  %6 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %event, align 4
  %event_queue.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 32, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.rsi_send_beacon) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_compare(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %a, align 2
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %b, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp ugt i16 %1, %3
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp5 = icmp ult i16 %1, %3
  %. = zext i1 %cmp5 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_send_reset_mac(ptr noundef %common) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.rsi_send_reset_mac) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_send_reset_mac) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 64, ptr %3, align 1
  %arrayidx3 = getelementptr [8 x i16], ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 256, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr [8 x i16], ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 8, ptr %arrayidx5, align 1
  %7 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common, align 4
  %device_model = getelementptr inbounds %struct.rsi_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %device_model to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then6, label %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge

if.end.rsi_send_internal_mgmt_frame.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_send_internal_mgmt_frame.exit

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8 = getelementptr [8 x i16], ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx8, align 1
  %13 = or i16 %12, 3
  store i16 %13, ptr %arrayidx8, align 1
  br label %rsi_send_internal_mgmt_frame.exit

rsi_send_internal_mgmt_frame.exit:                ; preds = %if.then6, %if.end.rsi_send_internal_mgmt_frame.exit_crit_edge
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #7
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  %18 = or i16 %17, 128
  store i16 %18, ptr %15, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %19 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %21, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %22 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_eeprom_read(ptr noundef %common) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 8, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.rsi_eeprom_read) #7
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %rsi_send_internal_mgmt_frame.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_eeprom_read) #7
  br label %cleanup

rsi_send_internal_mgmt_frame.exit:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 64, ptr %5, align 2
  %pkt_type = getelementptr inbounds %struct.rsi_eeprom_read_frame, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 14, ptr %pkt_type, align 1
  %eeprom = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 20
  %length = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %shl = shl i32 %9, 20
  %pkt_info = getelementptr inbounds %struct.rsi_eeprom_read_frame, ptr %5, i32 0, i32 3
  %10 = or i32 %shl, 768
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %pkt_info to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %pkt_info, align 1
  %13 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eeprom, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %eeprom_offset = getelementptr inbounds %struct.rsi_eeprom_read_frame, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %eeprom_offset to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %eeprom_offset, align 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #7
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  %21 = or i16 %20, 128
  store i16 %21, ptr %18, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %22 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %priority.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %or2.i = or i32 %24, 153
  store i32 %or2.i, ptr %flags.i, align 4
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i.i) #7
  %event.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %25 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_send_internal_mgmt_frame.exit, %if.then
  %retval.0 = phi i32 [ 0, %rsi_send_internal_mgmt_frame.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_attach_bt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_mac80211_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_handle_ps_confirm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_prepare_beacon(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_indicate_pkt_to_os(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 546, i32 24}
!2 = !{ptr @__func__.rsi_hal_send_sta_notify_frame, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 546, i32 58}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 551, i32 21}
!6 = !{ptr @__func__.rsi_send_aggregation_params_frame, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 626, i32 4}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 633, i32 24}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 724, i32 24}
!12 = !{ptr @__func__.rsi_set_vap_capabilities, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 724, i32 64}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 807, i32 24}
!16 = !{ptr @__func__.rsi_hal_load_key, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 807, i32 56}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1128, i32 3}
!20 = !{ptr @__func__.rsi_set_channel, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1128, i32 35}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1185, i32 3}
!24 = !{ptr @__func__.rsi_send_radio_params_update, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1185, i32 46}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1215, i32 3}
!28 = !{ptr @__func__.rsi_send_vap_dynamic_update, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1215, i32 48}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1569, i32 24}
!32 = !{ptr @__func__.rsi_send_block_unblock_frame, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1569, i32 61}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1586, i32 22}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1590, i32 22}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1613, i32 24}
!40 = !{ptr @__func__.rsi_send_rx_filter_frame, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1618, i32 4}
!42 = !{ptr @__func__.rsi_set_antenna, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1748, i32 4}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1799, i32 20}
!46 = !{ptr @__func__.rsi_send_wowlan_request, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1799, i32 58}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1817, i32 21}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1835, i32 24}
!52 = !{ptr @__func__.rsi_send_bgscan_params, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1835, i32 61}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1882, i32 3}
!56 = !{ptr @__func__.rsi_send_bgscan_probe_req, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1882, i32 43}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2134, i32 22}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2141, i32 22}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2146, i32 6}
!64 = !{ptr @__func__.rsi_handle_card_ready, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2147, i32 6}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2152, i32 23}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2156, i32 22}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2171, i32 4}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2192, i32 20}
!74 = !{ptr @__func__.rsi_mgmt_pkt_recv, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2193, i32 3}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2200, i32 21}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2207, i32 22}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2220, i32 22}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2230, i32 21}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2234, i32 5}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2238, i32 5}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2242, i32 5}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2246, i32 5}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2250, i32 5}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2254, i32 5}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2261, i32 22}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 350, i32 21}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 350, i32 53}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 385, i32 21}
!104 = !{ptr @__func__.rsi_load_radio_caps, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 385, i32 60}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 670, i32 24}
!108 = !{ptr @__func__.rsi_program_bb_rf, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 670, i32 61}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 689, i32 25}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 975, i32 24}
!114 = !{ptr @__func__.rsi_load_9116_bootup_params, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 975, i32 59}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 987, i32 25}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 997, i32 5}
!120 = !{ptr @boot_params_9116_40, !121, !"boot_params_9116_40", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 238, i32 34}
!122 = !{ptr @boot_params_9116_20, !123, !"boot_params_9116_20", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 212, i32 34}
!124 = !{ptr @boot_params_20, !125, !"boot_params_20", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 24, i32 29}
!126 = !{ptr @__func__.rsi_load_bootup_params, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 920, i32 59}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 931, i32 24}
!130 = !{ptr @boot_params_40, !131, !"boot_params_40", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 118, i32 29}
!132 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1323, i32 3}
!134 = !{ptr @__func__.rsi_send_auto_rate_request, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1323, i32 44}
!136 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1335, i32 21}
!138 = distinct !{null, !139, !"mcs", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 265, i32 12}
!140 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 875, i32 24}
!142 = !{ptr @__func__.rsi_send_common_dev_params, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 878, i32 53}
!144 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1948, i32 21}
!146 = !{ptr @__func__.rsi_handle_ta_confirm_type, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1949, i32 4}
!148 = !{ptr @.str.46, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1973, i32 5}
!150 = !{ptr @.str.47, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1980, i32 21}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1983, i32 5}
!154 = !{ptr @.str.49, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2002, i32 6}
!156 = !{ptr @.str.50, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2010, i32 24}
!158 = !{ptr @.str.51, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2015, i32 6}
!160 = !{ptr @.str.52, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2023, i32 22}
!162 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2031, i32 22}
!164 = !{ptr @.str.54, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2040, i32 5}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2052, i32 6}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2059, i32 23}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2064, i32 5}
!172 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2073, i32 21}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2089, i32 5}
!176 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2096, i32 22}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2100, i32 22}
!180 = !{ptr @.str.62, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2104, i32 22}
!182 = !{ptr @.str.63, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2113, i32 22}
!184 = !{ptr @.str.64, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2117, i32 22}
!186 = !{ptr @.str.65, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 2123, i32 20}
!188 = !{ptr @.str.66, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1026, i32 24}
!190 = !{ptr @__func__.rsi_send_reset_mac, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1026, i32 57}
!192 = !{ptr @.str.67, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1525, i32 24}
!194 = !{ptr @__func__.rsi_eeprom_read, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1525, i32 63}
!196 = !{ptr @.str.68, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1697, i32 3}
!198 = !{ptr @__func__.rsi_send_w9116_features, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1697, i32 39}
!200 = !{ptr @.str.69, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1780, i32 21}
!202 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1786, i32 24}
!204 = !{ptr @__func__.rsi_send_beacon, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 1786, i32 55}
!206 = !{ptr @.str.71, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 499, i32 4}
!208 = !{ptr @__func__.rsi_mgmt_pkt_to_core, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/rsi/rsi_91x_mgmt.c", i32 500, i32 4}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i8 0, i8 2}
