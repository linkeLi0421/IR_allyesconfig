; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/hal_com.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/hal_com.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.led_priv, ptr, %struct.wifidirect_info, %struct.hal_data_8188e, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, i32, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.spinlock, [16 x ptr], i32, [6 x i8], [6 x i8], [4 x i8], ptr, [6 x i8], [4 x i8], %struct.br_ext_info, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i8, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect, %struct.timer_list, i8, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_config, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_config = type { i32, i32, i32, i32, %struct.ndis_802_11_config_fh }
%struct.ndis_802_11_config_fh = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect = type { i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, i16, i8, i8, i32, i64, i8, i8, i8, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.rt_channel_info = type { i8, i32, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type { i8, i8, i16, i16, i16 }
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.semaphore, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, i64, ptr, i8, [4 x i8], %struct.semaphore, i8, %struct.tasklet_struct, i32, i32, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i16, i32, %struct.mutex, %struct.submit_ctx }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.semaphore, i8, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i8], i32, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [4 x %union.Keytype], [4 x %union.Keytype], [4 x %union.Keytype], %union.pn48, %union.pn48, %struct.arc4_ctx, %struct.arc4_ctx, i32, i32, i32, i32, i32, i32, [512 x i8], i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [16 x i8], i8, [2 x i8] }>
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i32, %struct.work_struct, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, %struct.timer_list, i32, i8, i32, i32, i32, i8, i8 }
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i8, [3 x i8], [512 x i8] }
%struct.led_priv = type { %struct.LED_871x, i8 }
%struct.LED_871x = type { ptr, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wifidirect_info = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tx_provdisc_req_info, %struct.rx_provdisc_req_info, %struct.tx_invite_req_info, [10 x %struct.profile_info], %struct.tx_invite_resp_info, %struct.tx_nego_req_info, %struct.group_id_info, %struct.scan_limit_info, %struct.scan_limit_info, i32, i32, i32, [6 x i8], [6 x i8], [4 x i8], i8, i8, i8, [8 x i8], [7 x i8], i8, [6 x i8], [6 x i8], i8, [32 x i8], i8, i8, i8, i8, i16, i8, [32 x i8], i8, [32 x i8], i8, i8, i8, i32, i16, i32, [100 x i8], i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.tx_provdisc_req_info = type { i16, [2 x i16], %struct.ndis_802_11_ssid, [6 x i8], [6 x i8], i8 }
%struct.rx_provdisc_req_info = type { [6 x i8], [4 x i8] }
%struct.tx_invite_req_info = type { i8, i8, [32 x i8], i8, [6 x i8], [6 x i8], i8, i8 }
%struct.profile_info = type { i8, [32 x i8], [6 x i8] }
%struct.tx_invite_resp_info = type { i8 }
%struct.tx_nego_req_info = type { [2 x i16], [6 x i8], i8 }
%struct.group_id_info = type { [6 x i8], [32 x i8] }
%struct.scan_limit_info = type { i8, [2 x i8] }
%struct.hal_data_8188e = type { %struct.HAL_VERSION, i16, i16, i16, i16, i8, i32, i32, i8, i8, i16, i8, i8, [14 x i8], [14 x i8], [4 x i8], [4 x i8], [3 x [14 x i8]], [3 x [14 x i8]], [3 x [14 x i8]], [3 x [14 x i8]], i8, i8, i8, i8, i8, [13 x [16 x i32]], i8, i8, i32, [2 x %struct.bb_reg_def], [2 x i32], i8, i8, i8, i8, i8, %struct.dm_priv, %struct.odm_dm_struct, i8, i8, i8, i8, i8, i8, i8, i16, %struct.P2P_PS_Offload_t, i8, i32, i8, i8, i32, i8, i8, i8, i8 }
%struct.HAL_VERSION = type { i32, i32, i32, i8 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i32, i32, i32, i32 }
%struct.odm_dm_struct = type { ptr, i8, i8, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x ptr], i16, [32 x %struct.odm_ra_info], %struct.odm_phy_dbg_info, %struct.fast_ant_train, %struct.rtw_dig, %struct.rtl_ps, %struct.false_alarm_stats, %struct.sw_ant_switch, %struct.edca_turbo, i8, %struct.odm_rate_adapt, %struct.odm_rf_cal, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_ra_info = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [5 x i16], i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_phy_dbg_info = type { [3 x i8], i64, i64, i64, [3 x i32] }
%struct.fast_ant_train = type { i8, i8, i8, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8 }
%struct.rtw_dig = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32 }
%struct.rtl_ps = type { i8, i8, i8, i32, i32, i32, i32 }
%struct.false_alarm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sw_ant_switch = type { i8, i8, i8 }
%struct.edca_turbo = type { i8, i8, i32 }
%struct.odm_rate_adapt = type { i8, i8, i8, i32 }
%struct.odm_rf_cal = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [2 x i8], i8, [8 x i8], i8, %struct.ijk_matrix_regs_set, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [2 x i32]], i8, i8, i8, i8, i8 }
%struct.ijk_matrix_regs_set = type { i8, [1 x [8 x i32]] }
%struct.P2P_PS_Offload_t = type { i8 }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8, i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.dvobj_priv = type { ptr, i8, i8, i32, [3 x i32], [8 x i8], i8, %struct.rt_firmware, i8, i8, i32, %struct.semaphore, %struct.mutex, ptr, ptr, %struct.atomic_t, i8 }
%struct.rt_firmware = type { ptr, i32 }
%struct.c2h_evt_hdr = type { i8, i8, [0 x i8] }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Chip Version Info: CHIP_8188E_\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s_\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Normal_Chip\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Test_Chip\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TSMC\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UMC\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"B_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"E_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UNKNOWN_CUT(%d)_\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1T1R_\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RomVer(%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@dump_chip_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dump_chip_info\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/r8188eu/hal/hal_com.c\00", [58 x i8] zeroinitializer }, align 32
@dump_chip_info._entry_ptr = internal global ptr @dump_chip_info._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [13 x i64] [i64 11, i64 8, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.18 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 18, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 19, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 20, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 20, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 22, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 22, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 24, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 26, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 28, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 30, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 32, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 34, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 37, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 39, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [41 x i8] c"../drivers/staging/r8188eu/hal/hal_com.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 41, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @dump_chip_info._entry, ptr @dump_chip_info._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_chip_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_chip_info([4 x i32] %chip_vers.coerce) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_vers.coerce.fca.0.extract = extractvalue [4 x i32] %chip_vers.coerce, 0
  %chip_vers.coerce.fca.1.extract = extractvalue [4 x i32] %chip_vers.coerce, 1
  %chip_vers.coerce.fca.2.extract = extractvalue [4 x i32] %chip_vers.coerce, 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #8
  %0 = getelementptr inbounds i8, ptr %buf, i32 31
  %1 = call ptr @memset(ptr %0, i32 255, i32 97)
  %2 = call ptr @memcpy(ptr %buf, ptr @.str, i32 31)
  %add.ptr2 = getelementptr inbounds i8, ptr %buf, i32 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chip_vers.coerce.fca.0.extract)
  %cmp = icmp eq i32 %chip_vers.coerce.fca.0.extract, 1
  %cond3 = select i1 %cmp, ptr @.str.2, ptr @.str.3
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond3)
  %add5 = add i32 %call4, 30
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip_vers.coerce.fca.2.extract)
  %cmp8 = icmp eq i32 %chip_vers.coerce.fca.2.extract, 0
  %cond11 = select i1 %cmp8, ptr @.str.4, ptr @.str.5
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr7, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond11)
  %add13 = add i32 %add5, %call12
  %3 = zext i32 %chip_vers.coerce.fca.1.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %chip_vers.coerce.fca.1.extract, label %if.else58 [
    i32 0, label %if.then
    i32 1, label %if.then23
    i32 2, label %if.then33
    i32 3, label %if.then43
    i32 4, label %if.then53
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %add13
  %4 = call ptr @memcpy(ptr %add.ptr16, ptr @.str.6, i32 7)
  br label %if.end67

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %add13
  %5 = call ptr @memcpy(ptr %add.ptr25, ptr @.str.7, i32 7)
  br label %if.end67

if.then33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr35 = getelementptr i8, ptr %buf, i32 %add13
  %6 = call ptr @memcpy(ptr %add.ptr35, ptr @.str.8, i32 7)
  br label %if.end67

if.then43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr45 = getelementptr i8, ptr %buf, i32 %add13
  %7 = call ptr @memcpy(ptr %add.ptr45, ptr @.str.9, i32 7)
  br label %if.end67

if.then53:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr55 = getelementptr i8, ptr %buf, i32 %add13
  %8 = call ptr @memcpy(ptr %add.ptr55, ptr @.str.10, i32 7)
  br label %if.end67

if.else58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr60 = getelementptr i8, ptr %buf, i32 %add13
  %call62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr60, ptr noundef nonnull @.str.11, i32 noundef %chip_vers.coerce.fca.1.extract)
  br label %if.end67

if.end67:                                         ; preds = %if.else58, %if.then53, %if.then43, %if.then33, %if.then23, %if.then
  %call17.pn = phi i32 [ 6, %if.then ], [ 6, %if.then23 ], [ 6, %if.then33 ], [ 6, %if.then43 ], [ 6, %if.then53 ], [ %call62, %if.else58 ]
  %cnt.0 = add i32 %call17.pn, %add13
  %chip_vers.coerce.fca.3.extract = extractvalue [4 x i32] %chip_vers.coerce, 3
  %chip_vers.sroa.11.12.extract.shift = lshr i32 %chip_vers.coerce.fca.3.extract, 24
  %add.ptr69 = getelementptr i8, ptr %buf, i32 %cnt.0
  %9 = call ptr @memcpy(ptr %add.ptr69, ptr @.str.12, i32 6)
  %add71 = add i32 %cnt.0, 5
  %add.ptr73 = getelementptr i8, ptr %buf, i32 %add71
  %call74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr73, ptr noundef nonnull @.str.13, i32 noundef %chip_vers.sroa.11.12.extract.shift)
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @hal_com_get_channel_plan(ptr nocapture noundef readnone %padapter, i8 noundef zeroext %hw_channel_plan, i8 noundef zeroext %sw_channel_plan, i8 noundef zeroext %def_channel_plan, i1 noundef zeroext %load_fail) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %load_fail, label %entry.if.end10.thread34_crit_edge, label %if.then

entry.if.end10.thread34_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.thread34

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %hw_channel_plan)
  %tobool7.not = icmp sgt i8 %hw_channel_plan, -1
  br i1 %tobool7.not, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %0 = and i8 %hw_channel_plan, 127
  br label %1

if.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %sw_channel_plan)
  %cmp = icmp ugt i8 %sw_channel_plan, 65
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %sw_channel_plan)
  %cmp3 = icmp ne i8 %sw_channel_plan, 127
  %tobool11.not = and i1 %cmp, %cmp3
  br i1 %tobool11.not, label %if.end10._crit_edge, label %if.end10.if.end10.thread34_crit_edge

if.end10.if.end10.thread34_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.thread34

if.end10._crit_edge:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %1

1:                                                ; preds = %if.end10._crit_edge, %if.end10.thread
  %2 = phi i8 [ %0, %if.end10.thread ], [ %hw_channel_plan, %if.end10._crit_edge ]
  br label %if.end10.thread34

if.end10.thread34:                                ; preds = %1, %if.end10.if.end10.thread34_crit_edge, %entry.if.end10.thread34_crit_edge
  %3 = phi i8 [ %2, %1 ], [ %sw_channel_plan, %if.end10.if.end10.thread34_crit_edge ], [ %sw_channel_plan, %entry.if.end10.thread34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %3)
  %cmp18 = icmp ult i8 %3, 66
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %3)
  %cmp22 = icmp eq i8 %3, 127
  %or.cond31 = or i1 %cmp18, %cmp22
  %chnlplan.1 = select i1 %or.cond31, i8 %3, i8 %def_channel_plan
  ret i8 %chnlplan.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @MRateToHwRate(i8 noundef zeroext %rate) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %rate, label %entry.sw.epilog_crit_edge [
    i8 108, label %sw.bb11
    i8 4, label %sw.bb1
    i8 11, label %sw.bb2
    i8 22, label %sw.bb3
    i8 12, label %sw.bb4
    i8 18, label %sw.bb5
    i8 24, label %sw.bb6
    i8 36, label %sw.bb7
    i8 48, label %sw.bb8
    i8 72, label %sw.bb9
    i8 96, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %ret.0 = phi i8 [ 11, %sw.bb11 ], [ 10, %sw.bb10 ], [ 9, %sw.bb9 ], [ 8, %sw.bb8 ], [ 7, %sw.bb7 ], [ 6, %sw.bb6 ], [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i8 %ret.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HalSetBrateCfg(ptr nocapture noundef readnone %adapt, ptr nocapture noundef readonly %brates, ptr noundef %rate_cfg) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %brates, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %2 = and i8 %1, 127
  %conv9 = zext i8 %2 to i32
  %3 = zext i32 %conv9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %conv9, label %if.then.for.inc_crit_edge [
    i32 2, label %if.then.for.inc.sink.split_crit_edge
    i32 4, label %sw.bb12
    i32 11, label %sw.bb16
    i32 22, label %sw.bb20
    i32 12, label %sw.bb24
    i32 18, label %sw.bb28
    i32 24, label %sw.bb32
    i32 36, label %sw.bb36
    i32 48, label %sw.bb40
    i32 72, label %sw.bb44
    i32 96, label %sw.bb48
    i32 108, label %sw.bb52
  ]

if.then.for.inc.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb20:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb24:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb28:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb32:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb36:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb40:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb44:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb48:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb52:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.bb52, %sw.bb48, %sw.bb44, %sw.bb40, %sw.bb36, %sw.bb32, %sw.bb28, %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb12, %if.then.for.inc.sink.split_crit_edge
  %.sink73 = phi i16 [ 2048, %sw.bb52 ], [ 1024, %sw.bb48 ], [ 512, %sw.bb44 ], [ 256, %sw.bb40 ], [ 128, %sw.bb36 ], [ 64, %sw.bb32 ], [ 32, %sw.bb28 ], [ 16, %sw.bb24 ], [ 8, %sw.bb20 ], [ 4, %sw.bb16 ], [ 2, %sw.bb12 ], [ 1, %if.then.for.inc.sink.split_crit_edge ]
  %4 = ptrtoint ptr %rate_cfg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rate_cfg, align 2
  %6 = or i16 %5, %.sink73
  store i16 %6, ptr %rate_cfg, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @Hal_MappingOutPipe(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %numoutpipe) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 44
  %0 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = zext i8 %numoutpipe to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %numoutpipe, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.bb4
    i8 1, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %3 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvobj.i, align 4
  %RtOutPipe.i = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %6 to i8
  %7 = ptrtoint ptr %RtOutPipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %RtOutPipe.i, align 4
  %conv4.i = trunc i32 %8 to i8
  br label %two_out_pipe.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %RtOutPipe.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %RtOutPipe.i, align 4
  %conv39.i = trunc i32 %10 to i8
  %arrayidx48.i = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx48.i, align 4
  %conv49.i = trunc i32 %12 to i8
  br label %two_out_pipe.exit

two_out_pipe.exit:                                ; preds = %if.else.i, %if.then.i
  %conv39.sink113.i = phi i8 [ %conv.i, %if.then.i ], [ %conv39.i, %if.else.i ]
  %conv39.sink112.i = phi i8 [ %conv4.i, %if.then.i ], [ %conv39.i, %if.else.i ]
  %conv49.sink111.i = phi i8 [ %conv.i, %if.then.i ], [ %conv49.i, %if.else.i ]
  %conv49.sink.i = phi i8 [ %conv4.i, %if.then.i ], [ %conv49.i, %if.else.i ]
  %13 = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv39.sink113.i, ptr %13, align 4
  %15 = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv39.sink112.i, ptr %15, align 1
  %17 = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv49.sink111.i, ptr %17, align 2
  %19 = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv49.sink.i, ptr %19, align 1
  %21 = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 5, i32 4
  %22 = zext i8 %conv39.sink112.i to i32
  %23 = call ptr @memset(ptr %21, i32 %22, i32 4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dvobj.i12 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %24 = ptrtoint ptr %dvobj.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvobj.i12, align 4
  %arrayidx3.i = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3.i, align 4
  %conv4.i13 = trunc i32 %27 to i8
  %arrayidx8.i = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx8.i, align 4
  %conv9.i = trunc i32 %29 to i8
  %conv4.conv9.i = select i1 %tobool.not, i8 %conv9.i, i8 %conv4.i13
  %conv39.sink112.in.in.i = getelementptr inbounds %struct.dvobj_priv, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %conv39.sink112.in.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %conv39.sink112.in.i = load i32, ptr %conv39.sink112.in.in.i, align 4
  %conv39.sink112.i14 = trunc i32 %conv39.sink112.in.i to i8
  %31 = getelementptr inbounds %struct.dvobj_priv, ptr %25, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv39.sink112.i14, ptr %31, align 4
  %33 = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv4.i13, ptr %33, align 1
  %35 = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv9.i, ptr %35, align 2
  %37 = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 5, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv4.conv9.i, ptr %37, align 1
  %39 = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 5, i32 4
  %40 = zext i8 %conv39.sink112.i14 to i32
  %41 = call ptr @memset(ptr %39, i32 %40, i32 4)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dvobj.i15 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %42 = ptrtoint ptr %dvobj.i15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dvobj.i15, align 4
  %RtOutPipe.i16 = getelementptr inbounds %struct.dvobj_priv, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %RtOutPipe.i16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %RtOutPipe.i16, align 4
  %conv.i17 = trunc i32 %45 to i8
  %Queue2Pipe.i = getelementptr inbounds %struct.dvobj_priv, ptr %43, i32 0, i32 5
  %46 = zext i8 %conv.i17 to i32
  %47 = call ptr @memset(ptr %Queue2Pipe.i, i32 %46, i32 8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %two_out_pipe.exit, %entry.sw.epilog_crit_edge
  %result.0.off0 = phi i1 [ true, %sw.bb6 ], [ true, %sw.bb4 ], [ true, %two_out_pipe.exit ], [ false, %entry.sw.epilog_crit_edge ]
  ret i1 %result.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_init_macaddr(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 4
  tail call void @SetHwReg8188EU(ptr noundef %adapter, i8 noundef zeroext 3, ptr noundef %mac_addr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c2h_evt_clear(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 431, i8 noundef zeroext 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c2h_evt_read(ptr noundef %adapter, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 431) #8
  %0 = zext i8 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %call, label %if.end.clear_evt_crit_edge [
    i8 0, label %if.end.exit_crit_edge
    i8 -1, label %if.end8
  ]

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end.clear_evt_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_evt

if.end8:                                          ; preds = %if.end
  %1 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %call9 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 416) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call9, ptr %buf, align 1
  %call10 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 417) #8
  %add.ptr = getelementptr i8, ptr %buf, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call10, ptr %add.ptr, align 1
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load28 = load i8, ptr %buf, align 1
  %bf.clear29 = and i8 %bf.load28, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear29)
  %cmp1231.not = icmp eq i8 %bf.clear29, 0
  br i1 %cmp1231.not, label %if.end8.clear_evt_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.clear_evt_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_evt

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.032, 418
  %call14 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.c2h_evt_hdr, ptr %buf, i32 0, i32 2, i32 %i.032
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call14, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.032, 1
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %buf, align 1
  %bf.clear = and i8 %bf.load, 15
  %conv11 = zext i8 %bf.clear to i32
  %cmp12 = icmp ult i32 %inc, %conv11
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.clear_evt_crit_edge

for.body.clear_evt_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_evt

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

clear_evt:                                        ; preds = %for.body.clear_evt_crit_edge, %if.end8.clear_evt_crit_edge, %if.end.clear_evt_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.clear_evt_crit_edge ], [ 1, %if.end8.clear_evt_crit_edge ], [ 1, %for.body.clear_evt_crit_edge ]
  %call.i = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 431, i8 noundef zeroext 0) #8
  br label %exit

exit:                                             ; preds = %clear_evt, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.exit_crit_edge ], [ %ret.0, %clear_evt ], [ 0, %entry.exit_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 18, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 19, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 20, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 20, i32 26}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 22, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 22, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 24, i32 31}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 26, i32 31}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 28, i32 31}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 30, i32 31}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 32, i32 31}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 34, i32 31}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 37, i32 30}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 39, i32 30}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/r8188eu/hal/hal_com.c", i32 41, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dump_chip_info._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @dump_chip_info._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
