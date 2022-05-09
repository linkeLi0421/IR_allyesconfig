; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/odm.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/odm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.HT_caps_element = type { %union.anon.100 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
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
%struct.P2P_PS_Offload_t = type { i8 }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8, i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@OFDMSwingTable = dso_local global { [43 x i32], [52 x i8] } { [43 x i32] [i32 2139095550, i32 2021655010, i32 1908408775, i32 1803551150, i32 1698693525, i32 1606418815, i32 1514144105, i32 1430258005, i32 1350566210, i32 1275068720, i32 1203765535, i32 1136656655, i32 1073742080, i32 1015021810, i32 956301540, i32 901775575, i32 851443915, i32 805306560, i32 759169205, i32 717226155, i32 679477410, i32 637534360, i32 603979920, i32 570425480, i32 536871040, i32 507510905, i32 478150770, i32 452984940, i32 427819110, i32 402653280, i32 381681755, i32 360710230, i32 339738705, i32 318767180, i32 301989960, i32 285212740, i32 268435520, i32 251658300, i32 239075385, i32 226492470, i32 213909555, i32 201326640, i32 188743725], [52 x i8] zeroinitializer }, align 32
@CCKSwingTable_Ch1_Ch13 = dso_local global { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"65.%\1C\12\09\04", [8 x i8] c"32+#\1A\11\08\04", [8 x i8] c"0/)!\19\10\08\03", [8 x i8] c"--'\1F\18\0F\08\03", [8 x i8] c"+*%\1E\16\0E\07\03", [8 x i8] c"((\22\1C\15\0D\07\03", [8 x i8] c"&%!\1B\14\0D\06\03", [8 x i8] c"$#\1F\19\13\0C\06\03", [8 x i8] c"\22!\1D\18\11\0B\06\02", [8 x i8] c"  \1B\16\11\08\05\02", [8 x i8] c"\1F\1E\1A\15\10\0A\05\02", [8 x i8] c"\1D\1C\18\14\0F\0A\05\02", [8 x i8] c"\1B\1A\17\13\0E\09\04\02", [8 x i8] c"\1A\19\16\12\0D\09\04\02", [8 x i8] c"\18\17\15\11\0C\08\04\02", [8 x i8] c"\17\16\13\10\0C\08\04\02", [8 x i8] c"\16\15\12\0F\0B\07\04\01", [8 x i8] c"\14\14\11\0E\0B\07\03\02", [8 x i8] c"\13\13\10\0D\0A\06\03\01", [8 x i8] c"\12\12\0F\0C\09\06\03\01", [8 x i8] c"\11\11\0F\0C\09\06\03\01", [8 x i8] c"\10\10\0E\0B\08\05\03\01", [8 x i8] c"\0F\0F\0D\0B\08\05\03\01", [8 x i8] c"\0E\0E\0C\0A\08\05\02\01", [8 x i8] c"\0D\0D\0C\0A\07\05\02\01", [8 x i8] c"\0D\0C\0B\09\07\04\02\01", [8 x i8] c"\0C\0C\0A\09\06\04\02\01", [8 x i8] c"\0B\0B\0A\08\06\04\02\01", [8 x i8] c"\0B\0A\09\08\06\04\02\01", [8 x i8] c"\0A\0A\09\07\05\03\02\01", [8 x i8] c"\0A\09\08\07\05\03\02\01", [8 x i8] c"\09\09\08\06\05\03\01\01", [8 x i8] c"\09\08\07\06\04\03\01\01"], [88 x i8] zeroinitializer }, align 32
@CCKSwingTable_Ch14 = dso_local global { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"65.\1B\00\00\00\00", [8 x i8] c"32+\19\00\00\00\00", [8 x i8] c"0/)\18\00\00\00\00", [8 x i8] c"--\17\17\00\00\00\00", [8 x i8] c"+*%\15\00\00\00\00", [8 x i8] c"(($\14\00\00\00\00", [8 x i8] c"&%!\13\00\00\00\00", [8 x i8] c"$#\1F\12\00\00\00\00", [8 x i8] c"\22!\1D\11\00\00\00\00", [8 x i8] c"  \1B\10\00\00\00\00", [8 x i8] c"\1F\1E\1A\0F\00\00\00\00", [8 x i8] c"\1D\1C\18\0E\00\00\00\00", [8 x i8] c"\1B\1A\17\0E\00\00\00\00", [8 x i8] c"\1A\19\16\0D\00\00\00\00", [8 x i8] c"\18\17\15\0C\00\00\00\00", [8 x i8] c"\17\16\13\0B\00\00\00\00", [8 x i8] c"\16\15\12\0B\00\00\00\00", [8 x i8] c"\14\14\11\0A\00\00\00\00", [8 x i8] c"\13\13\10\0A\00\00\00\00", [8 x i8] c"\12\12\0F\09\00\00\00\00", [8 x i8] c"\11\11\0F\09\00\00\00\00", [8 x i8] c"\10\10\0E\08\00\00\00\00", [8 x i8] c"\0F\0F\0D\08\00\00\00\00", [8 x i8] c"\0E\0E\0C\07\00\00\00\00", [8 x i8] c"\0D\0D\0C\07\00\00\00\00", [8 x i8] c"\0D\0C\0B\06\00\00\00\00", [8 x i8] c"\0C\0C\0A\06\00\00\00\00", [8 x i8] c"\0B\0B\0A\06\00\00\00\00", [8 x i8] c"\0B\0A\09\05\00\00\00\00", [8 x i8] c"\0A\0A\09\05\00\00\00\00", [8 x i8] c"\0A\09\08\05\00\00\00\00", [8 x i8] c"\09\09\08\05\00\00\00\00", [8 x i8] c"\09\08\07\04\00\00\00\00"], [88 x i8] zeroinitializer }, align 32
@EDCAParam = internal constant { [17 x [3 x i32]], [52 x i8] } { [17 x [3 x i32]] [[3 x i32] [i32 6202411, i32 6202411, i32 6202411], [3 x i32] [i32 42063, i32 6202447, i32 6177564], [3 x i32] [i32 6202411, i32 6202411, i32 6202411], [3 x i32] [i32 6202155, i32 6202411, i32 6177570], [3 x i32] [i32 6202402, i32 42063, i32 42063], [3 x i32] [i32 6202146, i32 42544, i32 42063], [3 x i32] [i32 6177570, i32 6177570, i32 6177570], [3 x i32] [i32 6202447, i32 42063, i32 6202411], [3 x i32] [i32 6202411, i32 6202411, i32 6202411], [3 x i32] [i32 6202411, i32 42544, i32 6177564], [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [3 x i32] zeroinitializer], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.5 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 9]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 11]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"OFDMSwingTable\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 22, i32 5 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"CCKSwingTable_Ch1_Ch13\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 68, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"CCKSwingTable_Ch14\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 104, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"EDCAParam\00", align 1
@___asan_gen_.20 = private constant [37 x i8] c"../drivers/staging/r8188eu/hal/odm.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 7, i32 12 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @OFDMSwingTable, ptr @CCKSwingTable_Ch1_Ch13, ptr @CCKSwingTable_Ch14, ptr @EDCAParam], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OFDMSwingTable to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch1_Ch13 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch14 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @EDCAParam to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_DMInit(ptr noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %call.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %1, i32 noundef 2084, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  %bCckHighPower.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 1
  %frombool.i = zext i1 %tobool.i to i8
  %2 = ptrtoint ptr %bCckHighPower.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool.i, ptr %bCckHighPower.i, align 4
  %call1.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %1, i32 noundef 3076, i32 noundef 15) #8
  %conv.i = trunc i32 %call1.i to i8
  %RFPathRxEnable.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 2
  %3 = ptrtoint ptr %RFPathRxEnable.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %RFPathRxEnable.i, align 1
  %4 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pDM_Odm, align 8
  %call.i21 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %5, i32 noundef 3152, i32 noundef 127) #8
  %conv.i22 = trunc i32 %call.i21 to i8
  %CurIGValue.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %CurIGValue.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i22, ptr %CurIGValue.i, align 1
  %rx_gain_range_max.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 3
  %7 = ptrtoint ptr %rx_gain_range_max.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 78, ptr %rx_gain_range_max.i, align 1
  %rx_gain_range_min.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 4
  %8 = ptrtoint ptr %rx_gain_range_min.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 30, ptr %rx_gain_range_min.i, align 4
  %CurCCK_CCAThres.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 5
  %9 = ptrtoint ptr %CurCCK_CCAThres.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -125, ptr %CurCCK_CCAThres.i, align 1
  %ForbiddenIGI.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 7
  %10 = ptrtoint ptr %ForbiddenIGI.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 30, ptr %ForbiddenIGI.i, align 1
  %LargeFAHit.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 6
  %11 = ptrtoint ptr %LargeFAHit.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %LargeFAHit.i, align 2
  %Recover_cnt.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 8
  %12 = ptrtoint ptr %Recover_cnt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %Recover_cnt.i, align 4
  %DIG_Dynamic_MIN_0.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 9
  %13 = ptrtoint ptr %DIG_Dynamic_MIN_0.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 30, ptr %DIG_Dynamic_MIN_0.i, align 4
  %bMediaConnect_0.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 10
  %14 = ptrtoint ptr %bMediaConnect_0.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bMediaConnect_0.i, align 1
  %bDMInitialGainEnable.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 27
  %15 = ptrtoint ptr %bDMInitialGainEnable.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bDMInitialGainEnable.i, align 8
  %RateAdaptive.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 28
  %RATRState.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 28, i32 2
  %16 = ptrtoint ptr %RATRState.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %RATRState.i, align 2
  %17 = ptrtoint ptr %RateAdaptive.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 50, ptr %RateAdaptive.i, align 4
  %LowRSSIThresh.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 28, i32 1
  %18 = ptrtoint ptr %LowRSSIThresh.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 20, ptr %LowRSSIThresh.i, align 1
  %DM_PSTable.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23
  %19 = ptrtoint ptr %DM_PSTable.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %DM_PSTable.i, align 4
  %cur_rf_state.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 1
  %20 = ptrtoint ptr %cur_rf_state.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %cur_rf_state.i, align 1
  %initialize.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 2
  %21 = ptrtoint ptr %initialize.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %initialize.i, align 2
  %bTXPowerTracking.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 29, i32 7
  %22 = ptrtoint ptr %bTXPowerTracking.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bTXPowerTracking.i, align 2
  %TXPowercount.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 29, i32 5
  %23 = ptrtoint ptr %TXPowercount.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %TXPowercount.i, align 4
  %bTXPowerTrackingInit.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 29, i32 6
  %24 = ptrtoint ptr %bTXPowerTrackingInit.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %bTXPowerTrackingInit.i, align 1
  %TxPowerTrackControl.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 29, i32 8
  %25 = ptrtoint ptr %TxPowerTrackControl.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %TxPowerTrackControl.i, align 1
  %26 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pDM_Odm, align 8
  %DM_EDCA_Table.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 26
  %28 = ptrtoint ptr %DM_EDCA_Table.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %DM_EDCA_Table.i, align 8
  %bIsCurRDLState.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 26, i32 1
  %29 = ptrtoint ptr %bIsCurRDLState.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bIsCurRDLState.i, align 1
  %bIsAnyNonBEPkts.i = getelementptr inbounds %struct.adapter, ptr %27, i32 0, i32 10, i32 8
  %30 = ptrtoint ptr %bIsAnyNonBEPkts.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bIsAnyNonBEPkts.i, align 8
  %call = tail call i32 @ODM_RAInfo_Init_all(ptr noundef %pDM_Odm) #8
  %AntDivType = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 6
  %31 = ptrtoint ptr %AntDivType to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %AntDivType, align 8
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %32, label %entry.if.end_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 2, label %entry.if.then_crit_edge23
    i8 4, label %entry.if.then_crit_edge24
  ]

entry.if.then_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge23, %entry.if.then_crit_edge24
  %SupportAbility.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 4
  %34 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %SupportAbility.i, align 8
  %and.i = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ODM_AntennaDiversityInit_88E(ptr noundef %pDM_Odm) #8
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_RAInfo_Init_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_DMWatchdog(ptr noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  %PWDB_rssi.i = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pBandWidth.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 9
  %0 = ptrtoint ptr %pBandWidth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pBandWidth.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.else18.i

if.then.i:                                        ; preds = %entry
  %pSecChOffset.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 8
  %4 = ptrtoint ptr %pSecChOffset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pSecChOffset.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %7, label %if.then.i.for.body.i.preheader_crit_edge [
    i8 1, label %if.then5.i
    i8 2, label %if.then12.i
  ]

if.then.i.for.body.i.preheader_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %pChannel.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 10
  %9 = ptrtoint ptr %pChannel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pChannel.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %sub.i = add i8 %12, -2
  br label %if.end21.sink.split.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %pChannel13.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 10
  %13 = ptrtoint ptr %pChannel13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pChannel13.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %add.i = add i8 %16, 2
  br label %if.end21.sink.split.i

if.else18.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pChannel19.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 10
  %17 = ptrtoint ptr %pChannel19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pChannel19.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.else18.i, %if.then12.i, %if.then5.i
  %sub.sink.i = phi i8 [ %sub.i, %if.then5.i ], [ %add.i, %if.then12.i ], [ %20, %if.else18.i ]
  %ControlChannel.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 3
  %21 = ptrtoint ptr %ControlChannel.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %sub.sink.i, ptr %ControlChannel.i, align 2
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end21.sink.split.i, %if.then.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %EntryCnt.049.i = phi i8 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 17, i32 %indvars.iv.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %23, null
  %inc.i = zext i1 %tobool.not.i to i8
  %spec.select.i = add i8 %EntryCnt.049.i, %inc.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %odm_CommonInfoSelfUpdate.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

odm_CommonInfoSelfUpdate.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %spec.select.i)
  %cmp29.i = icmp eq i8 %spec.select.i, 1
  %spec.select51.i = zext i1 %cmp29.i to i8
  %24 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select51.i, ptr %24, align 1
  %SupportAbility.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 4
  %26 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %SupportAbility.i, align 8
  %and.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i25 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i25, label %odm_CommonInfoSelfUpdate.exit.odm_FalseAlarmCounterStatistics.exit_crit_edge, label %if.end.i

odm_CommonInfoSelfUpdate.exit.odm_FalseAlarmCounterStatistics.exit_crit_edge: ; preds = %odm_CommonInfoSelfUpdate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_FalseAlarmCounterStatistics.exit

if.end.i:                                         ; preds = %odm_CommonInfoSelfUpdate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pDM_Odm, align 8
  %FalseAlmCnt1.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %29, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 1) #8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %29, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 1) #8
  %call.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %29, i32 noundef 3312, i32 noundef -1) #8
  %and2.i = and i32 %call.i, 65535
  %Cnt_Fast_Fsync.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 7
  %30 = ptrtoint ptr %Cnt_Fast_Fsync.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and2.i, ptr %Cnt_Fast_Fsync.i, align 4
  %shr.i = lshr i32 %call.i, 16
  %Cnt_SB_Search_fail.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 8
  %31 = ptrtoint ptr %Cnt_SB_Search_fail.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr.i, ptr %Cnt_SB_Search_fail.i, align 4
  %call4.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %29, i32 noundef 3488, i32 noundef -1) #8
  %and5.i = and i32 %call4.i, 65535
  %Cnt_OFDM_CCA.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 9
  %32 = ptrtoint ptr %Cnt_OFDM_CCA.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and5.i, ptr %Cnt_OFDM_CCA.i, align 4
  %shr7.i = lshr i32 %call4.i, 16
  %33 = ptrtoint ptr %FalseAlmCnt1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr7.i, ptr %FalseAlmCnt1.i, align 4
  %call8.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %29, i32 noundef 3492, i32 noundef -1) #8
  %and9.i = and i32 %call8.i, 65535
  %Cnt_Rate_Illegal.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 1
  %34 = ptrtoint ptr %Cnt_Rate_Illegal.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and9.i, ptr %Cnt_Rate_Illegal.i, align 4
  %shr11.i = lshr i32 %call8.i, 16
  %Cnt_Crc8_fail.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 2
  %35 = ptrtoint ptr %Cnt_Crc8_fail.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr11.i, ptr %Cnt_Crc8_fail.i, align 4
  %call12.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %29, i32 noundef 3496, i32 noundef -1) #8
  %and13.i = and i32 %call12.i, 65535
  %Cnt_Mcs_fail.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 3
  %36 = ptrtoint ptr %Cnt_Mcs_fail.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and13.i, ptr %Cnt_Mcs_fail.i, align 4
  %37 = ptrtoint ptr %FalseAlmCnt1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %FalseAlmCnt1.i, align 4
  %39 = ptrtoint ptr %Cnt_Rate_Illegal.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %Cnt_Rate_Illegal.i, align 4
  %41 = ptrtoint ptr %Cnt_Crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %Cnt_Crc8_fail.i, align 4
  %43 = ptrtoint ptr %Cnt_Fast_Fsync.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %Cnt_Fast_Fsync.i, align 4
  %45 = ptrtoint ptr %Cnt_SB_Search_fail.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %Cnt_SB_Search_fail.i, align 4
  %add.i26 = add i32 %38, %and13.i
  %add17.i = add i32 %add.i26, %40
  %add19.i = add i32 %add17.i, %42
  %add21.i = add i32 %add19.i, %44
  %add23.i = add i32 %add21.i, %46
  %Cnt_Ofdm_fail.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 4
  %47 = ptrtoint ptr %Cnt_Ofdm_fail.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add23.i, ptr %Cnt_Ofdm_fail.i, align 4
  %call24.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %29, i32 noundef 2244, i32 noundef -1) #8
  %and25.i = and i32 %call24.i, 65535
  %Cnt_BW_LSC.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 13
  %48 = ptrtoint ptr %Cnt_BW_LSC.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and25.i, ptr %Cnt_BW_LSC.i, align 4
  %shr27.i = lshr i32 %call24.i, 16
  %Cnt_BW_USC.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 12
  %49 = ptrtoint ptr %Cnt_BW_USC.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr27.i, ptr %Cnt_BW_USC.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %29, i32 noundef 2604, i32 noundef 4096, i32 noundef 1) #8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %29, i32 noundef 2604, i32 noundef 16384, i32 noundef 1) #8
  %call28.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %29, i32 noundef 2652, i32 noundef 255) #8
  %Cnt_Cck_fail.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 5
  %50 = ptrtoint ptr %Cnt_Cck_fail.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call28.i, ptr %Cnt_Cck_fail.i, align 4
  %call29.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %29, i32 noundef 2648, i32 noundef -16777216) #8
  %and30.i = shl i32 %call29.i, 8
  %shl.i = and i32 %and30.i, 65280
  %51 = ptrtoint ptr %Cnt_Cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %Cnt_Cck_fail.i, align 4
  %add32.i = add i32 %shl.i, %52
  store i32 %add32.i, ptr %Cnt_Cck_fail.i, align 4
  %call33.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %29, i32 noundef 2656, i32 noundef -1) #8
  %trunc.i = trunc i32 %call33.i to i16
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %trunc.i) #8
  %or.i = zext i16 %rev.i to i32
  %Cnt_CCK_CCA.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 10
  %53 = ptrtoint ptr %Cnt_CCK_CCA.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i, ptr %Cnt_CCK_CCA.i, align 4
  %54 = ptrtoint ptr %Cnt_Fast_Fsync.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %Cnt_Fast_Fsync.i, align 4
  %56 = ptrtoint ptr %Cnt_SB_Search_fail.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %Cnt_SB_Search_fail.i, align 4
  %add40.i = add i32 %57, %55
  %58 = ptrtoint ptr %FalseAlmCnt1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %FalseAlmCnt1.i, align 4
  %add42.i = add i32 %add40.i, %59
  %60 = ptrtoint ptr %Cnt_Rate_Illegal.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %Cnt_Rate_Illegal.i, align 4
  %add44.i = add i32 %add42.i, %61
  %62 = ptrtoint ptr %Cnt_Crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %Cnt_Crc8_fail.i, align 4
  %add46.i = add i32 %add44.i, %63
  %64 = ptrtoint ptr %Cnt_Mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %Cnt_Mcs_fail.i, align 4
  %add48.i = add i32 %add46.i, %65
  %66 = ptrtoint ptr %Cnt_Cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %Cnt_Cck_fail.i, align 4
  %add50.i = add i32 %add48.i, %67
  %Cnt_all.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 6
  %68 = ptrtoint ptr %Cnt_all.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add50.i, ptr %Cnt_all.i, align 4
  %69 = ptrtoint ptr %Cnt_OFDM_CCA.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %Cnt_OFDM_CCA.i, align 4
  %add53.i = add i32 %70, %or.i
  %Cnt_CCA_all.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 11
  %71 = ptrtoint ptr %Cnt_CCA_all.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add53.i, ptr %Cnt_CCA_all.i, align 4
  br label %odm_FalseAlarmCounterStatistics.exit

odm_FalseAlarmCounterStatistics.exit:             ; preds = %if.end.i, %odm_CommonInfoSelfUpdate.exit.odm_FalseAlarmCounterStatistics.exit_crit_edge
  %72 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pDM_Odm, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %PWDB_rssi.i) #8
  %74 = call ptr @memset(ptr %PWDB_rssi.i, i32 0, i32 128)
  %75 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %SupportAbility.i, align 8
  %and.i28 = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %odm_FalseAlarmCounterStatistics.exit.odm_RSSIMonitorCheck.exit_crit_edge, label %if.end.i30

odm_FalseAlarmCounterStatistics.exit.odm_RSSIMonitorCheck.exit_crit_edge: ; preds = %odm_FalseAlarmCounterStatistics.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_RSSIMonitorCheck.exit

if.end.i30:                                       ; preds = %odm_FalseAlarmCounterStatistics.exit
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 4, i32 1
  %77 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i30.odm_RSSIMonitorCheck.exit_crit_edge, label %for.cond.preheader.i

if.end.i30.odm_RSSIMonitorCheck.exit_crit_edge:   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_RSSIMonitorCheck.exit

for.cond.preheader.i:                             ; preds = %if.end.i30
  %mac_addr.i.i = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 15, i32 4
  br label %for.body.i32

for.cond39.preheader.i:                           ; preds = %for.inc.i
  %conv.i = zext i8 %sta_cnt.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sta_cnt.1.i)
  %cmp40124.not.i = icmp eq i8 %sta_cnt.1.i, 0
  br i1 %cmp40124.not.i, label %for.cond39.preheader.i.if.end65.i_crit_edge, label %for.body42.lr.ph.i

for.cond39.preheader.i.if.end65.i_crit_edge:      ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

for.body42.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  %fw_ractrl.i = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 19, i32 33
  %odmpriv.i = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 19, i32 38
  br label %for.body42.i

for.body.i32:                                     ; preds = %for.inc.i.for.body.i32_crit_edge, %for.cond.preheader.i
  %sta_cnt.0123.i = phi i8 [ 0, %for.cond.preheader.i ], [ %sta_cnt.1.i, %for.inc.i.for.body.i32_crit_edge ]
  %tmpEntryMinPWDB.0122.i = phi i32 [ 255, %for.cond.preheader.i ], [ %tmpEntryMinPWDB.2.i, %for.inc.i.for.body.i32_crit_edge ]
  %tmpEntryMaxPWDB.0121.i = phi i32 [ 0, %for.cond.preheader.i ], [ %tmpEntryMaxPWDB.2.i, %for.inc.i.for.body.i32_crit_edge ]
  %i.0120.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc38.i, %for.inc.i.for.body.i32_crit_edge ]
  %arrayidx.i31 = getelementptr %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 17, i32 %i.0120.i
  %79 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i31, align 4
  %tobool5.not.i = icmp eq ptr %80, null
  br i1 %tobool5.not.i, label %for.body.i32.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i32.for.inc.i_crit_edge:                 ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i32
  %state.i = getelementptr inbounds %struct.sta_info, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state.i, align 4
  %and6.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %hwaddr.i = getelementptr inbounds %struct.sta_info, ptr %80, i32 0, i32 11
  %83 = ptrtoint ptr %hwaddr.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %hwaddr.i, align 2
  %add.ptr1.i.i = getelementptr %struct.sta_info, ptr %80, i32 0, i32 11, i32 2
  %85 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %86, %84
  %add.ptr3.i.i = getelementptr %struct.sta_info, ptr %80, i32 0, i32 11, i32 4
  %87 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %88
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i, label %land.lhs.true8.i.for.inc.i_crit_edge, label %land.lhs.true10.i

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true8.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr.i, ptr noundef dereferenceable(6) %mac_addr.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool15.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true10.i.for.inc.i_crit_edge, label %if.then16.i

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then16.i:                                      ; preds = %land.lhs.true10.i
  %rssi_stat.i = getelementptr inbounds %struct.sta_info, ptr %80, i32 0, i32 77
  %89 = ptrtoint ptr %rssi_stat.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rssi_stat.i, align 8
  %91 = tail call i32 @llvm.smin.i32(i32 %90, i32 %tmpEntryMinPWDB.0122.i) #8
  %92 = tail call i32 @llvm.smax.i32(i32 %90, i32 %tmpEntryMaxPWDB.0121.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp31.not.i = icmp eq i32 %90, -1
  br i1 %cmp31.not.i, label %if.then16.i.for.inc.i_crit_edge, label %if.then32.i

if.then16.i.for.inc.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then32.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  %mac_id.i = getelementptr inbounds %struct.sta_info, ptr %80, i32 0, i32 9
  %93 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mac_id.i, align 4
  %shl.i33 = shl i32 %90, 16
  %or.i34 = or i32 %94, %shl.i33
  %inc.i35 = add i8 %sta_cnt.0123.i, 1
  %idxprom.i = zext i8 %sta_cnt.0123.i to i32
  %arrayidx35.i = getelementptr [32 x i32], ptr %PWDB_rssi.i, i32 0, i32 %idxprom.i
  %95 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or.i34, ptr %arrayidx35.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then32.i, %if.then16.i.for.inc.i_crit_edge, %land.lhs.true10.i.for.inc.i_crit_edge, %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i32.for.inc.i_crit_edge
  %tmpEntryMaxPWDB.2.i = phi i32 [ %tmpEntryMaxPWDB.0121.i, %land.lhs.true8.i.for.inc.i_crit_edge ], [ %92, %if.then32.i ], [ %92, %if.then16.i.for.inc.i_crit_edge ], [ %tmpEntryMaxPWDB.0121.i, %land.lhs.true10.i.for.inc.i_crit_edge ], [ %tmpEntryMaxPWDB.0121.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %tmpEntryMaxPWDB.0121.i, %for.body.i32.for.inc.i_crit_edge ]
  %tmpEntryMinPWDB.2.i = phi i32 [ %tmpEntryMinPWDB.0122.i, %land.lhs.true8.i.for.inc.i_crit_edge ], [ %91, %if.then32.i ], [ %91, %if.then16.i.for.inc.i_crit_edge ], [ %tmpEntryMinPWDB.0122.i, %land.lhs.true10.i.for.inc.i_crit_edge ], [ %tmpEntryMinPWDB.0122.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %tmpEntryMinPWDB.0122.i, %for.body.i32.for.inc.i_crit_edge ]
  %sta_cnt.1.i = phi i8 [ %sta_cnt.0123.i, %land.lhs.true8.i.for.inc.i_crit_edge ], [ %inc.i35, %if.then32.i ], [ %sta_cnt.0123.i, %if.then16.i.for.inc.i_crit_edge ], [ %sta_cnt.0123.i, %land.lhs.true10.i.for.inc.i_crit_edge ], [ %sta_cnt.0123.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %sta_cnt.0123.i, %for.body.i32.for.inc.i_crit_edge ]
  %inc38.i = add nuw nsw i32 %i.0120.i, 1
  %exitcond.not.i36 = icmp eq i32 %inc38.i, 32
  br i1 %exitcond.not.i36, label %for.cond39.preheader.i, label %for.inc.i.for.body.i32_crit_edge

for.inc.i.for.body.i32_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i32

for.body42.i:                                     ; preds = %for.inc57.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %i.1125.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc58.i, %for.inc57.i.for.body42.i_crit_edge ]
  %arrayidx43.i = getelementptr [32 x i32], ptr %PWDB_rssi.i, i32 0, i32 %i.1125.i
  %96 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp44.not.i = icmp eq i32 %97, 0
  br i1 %cmp44.not.i, label %for.body42.i.for.inc57.i_crit_edge, label %if.then46.i

for.body42.i.for.inc57.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc57.i

if.then46.i:                                      ; preds = %for.body42.i
  %98 = ptrtoint ptr %fw_ractrl.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %fw_ractrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool47.not.i = icmp eq i8 %99, 0
  br i1 %tobool47.not.i, label %if.else.i, label %if.then46.i.for.inc57.i_crit_edge

if.then46.i.for.inc57.i_crit_edge:                ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc57.i

if.else.i:                                        ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv51.i = trunc i32 %97 to i8
  %shr.i37 = lshr i32 %97, 16
  %conv54.i = trunc i32 %shr.i37 to i8
  tail call void @ODM_RA_SetRSSI_8188E(ptr noundef %odmpriv.i, i8 noundef zeroext %conv51.i, i8 noundef zeroext %conv54.i) #8
  br label %for.inc57.i

for.inc57.i:                                      ; preds = %if.else.i, %if.then46.i.for.inc57.i_crit_edge, %for.body42.i.for.inc57.i_crit_edge
  %inc58.i = add nuw nsw i32 %i.1125.i, 1
  %exitcond126.not.i = icmp eq i32 %inc58.i, %conv.i
  br i1 %exitcond126.not.i, label %for.inc57.i.if.end65.i_crit_edge, label %for.inc57.i.for.body42.i_crit_edge

for.inc57.i.for.body42.i_crit_edge:               ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42.i

for.inc57.i.if.end65.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.end65.i:                                       ; preds = %for.inc57.i.if.end65.i_crit_edge, %for.cond39.preheader.i.if.end65.i_crit_edge
  %100 = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 19, i32 37, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %tmpEntryMaxPWDB.2.i, ptr %100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %tmpEntryMinPWDB.2.i)
  %cmp66.not.i = icmp eq i32 %tmpEntryMinPWDB.2.i, 255
  %spec.select.i38 = select i1 %cmp66.not.i, i32 0, i32 %tmpEntryMinPWDB.2.i
  %102 = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 19, i32 37, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %spec.select.i38, ptr %102, align 4
  %MinUndecoratedPWDBForDM2.i.i = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 19, i32 37, i32 3
  %104 = ptrtoint ptr %MinUndecoratedPWDBForDM2.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %spec.select.i38, ptr %MinUndecoratedPWDBForDM2.i.i, align 4
  %conv3.i.i = trunc i32 %spec.select.i38 to i8
  %RSSI_Min.i.i = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 19, i32 38, i32 14
  %105 = ptrtoint ptr %RSSI_Min.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv3.i.i, ptr %RSSI_Min.i.i, align 1
  br label %odm_RSSIMonitorCheck.exit

odm_RSSIMonitorCheck.exit:                        ; preds = %if.end65.i, %if.end.i30.odm_RSSIMonitorCheck.exit_crit_edge, %odm_FalseAlarmCounterStatistics.exit.odm_RSSIMonitorCheck.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %PWDB_rssi.i) #8
  %CurIGValue.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 1
  %106 = ptrtoint ptr %CurIGValue.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %CurIGValue.i, align 1
  %108 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %SupportAbility.i, align 8
  %and.i40 = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not.i41 = icmp eq i32 %and.i40, 0
  br i1 %tobool.not.i41, label %odm_RSSIMonitorCheck.exit.odm_DIG.exit_crit_edge, label %if.end.i42

odm_RSSIMonitorCheck.exit.odm_DIG.exit_crit_edge: ; preds = %odm_RSSIMonitorCheck.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_DIG.exit

if.end.i42:                                       ; preds = %odm_RSSIMonitorCheck.exit
  %pbScanInProcess.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 11
  %110 = ptrtoint ptr %pbScanInProcess.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pbScanInProcess.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool1.not.i = icmp eq i8 %113, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i42.odm_DIG.exit_crit_edge

if.end.i42.odm_DIG.exit_crit_edge:                ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_DIG.exit

if.end3.i:                                        ; preds = %if.end.i42
  %bDMInitialGainEnable.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 27
  %114 = ptrtoint ptr %bDMInitialGainEnable.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bDMInitialGainEnable.i, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool4.not.i = icmp eq i8 %115, 0
  br i1 %tobool4.not.i, label %if.end3.i.odm_DIG.exit_crit_edge, label %if.end6.i

if.end3.i.odm_DIG.exit_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_DIG.exit

if.end6.i:                                        ; preds = %if.end3.i
  %DIG_Dynamic_MIN_0.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 9
  %116 = ptrtoint ptr %DIG_Dynamic_MIN_0.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %DIG_Dynamic_MIN_0.i, align 4
  %bLinked.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 13
  %118 = ptrtoint ptr %bLinked.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bLinked.i, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool7.not.i43 = icmp eq i8 %119, 0
  %bMediaConnect_012.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 10
  %120 = ptrtoint ptr %bMediaConnect_012.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bMediaConnect_012.i, align 1, !range !17
  br i1 %tobool7.not.i43, label %if.else71.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool8.not.i = icmp eq i8 %121, 0
  %RSSI_Min.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 14
  %122 = ptrtoint ptr %RSSI_Min.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %RSSI_Min.i, align 1
  %add.i44 = add i8 %123, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %123)
  %cmp.i45 = icmp ugt i8 %123, 58
  br i1 %cmp.i45, label %if.then21.i, label %if.else.i46

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_gain_range_max.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 3
  %124 = ptrtoint ptr %rx_gain_range_max.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 78, ptr %rx_gain_range_max.i, align 1
  br label %if.end37.i

if.else.i46:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %123)
  %cmp26.i = icmp ult i8 %123, 10
  %rx_gain_range_max29.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 3
  br i1 %cmp26.i, label %if.then28.i, label %if.else30.i

if.then28.i:                                      ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %rx_gain_range_max29.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 30, ptr %rx_gain_range_max29.i, align 1
  br label %if.end37.i

if.else30.i:                                      ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %rx_gain_range_max29.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %add.i44, ptr %rx_gain_range_max29.i, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else30.i, %if.then28.i, %if.then21.i
  %127 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %24, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool38.not.i = icmp eq i8 %128, 0
  br i1 %tobool38.not.i, label %if.else57.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = tail call i8 @llvm.umin.i8(i8 %123, i8 50) #8
  %130 = tail call i8 @llvm.umax.i8(i8 %129, i8 30) #8
  br label %if.end73.i

if.else57.i:                                      ; preds = %if.end37.i
  %and59.i = and i32 %109, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.else57.i.if.end73.i_crit_edge, label %if.then61.i

if.else57.i.if.end73.i_crit_edge:                 ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.then61.i:                                      ; preds = %if.else57.i
  %AntDivType.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 6
  %131 = ptrtoint ptr %AntDivType.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %AntDivType.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %cmp63.i = icmp eq i8 %132, 1
  br i1 %cmp63.i, label %if.then65.i, label %if.then61.i.if.end73.i_crit_edge

if.then61.i.if.end73.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.then65.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  %AntDiv_RSSI_max.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 11
  %133 = ptrtoint ptr %AntDiv_RSSI_max.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %AntDiv_RSSI_max.i, align 4
  %conv66.i = trunc i32 %134 to i8
  br label %if.end73.i

if.else71.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool13.i = icmp ne i8 %121, 0
  %rx_gain_range_max72.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 3
  %135 = ptrtoint ptr %rx_gain_range_max72.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 78, ptr %rx_gain_range_max72.i, align 1
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else71.i, %if.then65.i, %if.then61.i.if.end73.i_crit_edge, %if.else57.i.if.end73.i_crit_edge, %if.then39.i
  %136 = phi i1 [ false, %if.then65.i ], [ false, %if.then61.i.if.end73.i_crit_edge ], [ %tobool13.i, %if.else71.i ], [ false, %if.else57.i.if.end73.i_crit_edge ], [ false, %if.then39.i ]
  %137 = phi i1 [ %tobool8.not.i, %if.then65.i ], [ %tobool8.not.i, %if.then61.i.if.end73.i_crit_edge ], [ false, %if.else71.i ], [ %tobool8.not.i, %if.else57.i.if.end73.i_crit_edge ], [ %tobool8.not.i, %if.then39.i ]
  %DIG_Dynamic_MIN.0.i = phi i8 [ %conv66.i, %if.then65.i ], [ %117, %if.then61.i.if.end73.i_crit_edge ], [ 30, %if.else71.i ], [ 30, %if.else57.i.if.end73.i_crit_edge ], [ %130, %if.then39.i ]
  %Cnt_all.i47 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 6
  %138 = ptrtoint ptr %Cnt_all.i47 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %Cnt_all.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %139)
  %cmp74.i = icmp ugt i32 %139, 10000
  br i1 %cmp74.i, label %if.then76.i, label %if.else113.i

if.then76.i:                                      ; preds = %if.end73.i
  %LargeFAHit.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 6
  %140 = ptrtoint ptr %LargeFAHit.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %LargeFAHit.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %141)
  %cmp78.not.i = icmp eq i8 %141, 3
  br i1 %cmp78.not.i, label %if.then76.i.if.end82.i_crit_edge, label %if.then80.i

if.then76.i.if.end82.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then80.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i48 = add i8 %141, 1
  %142 = ptrtoint ptr %LargeFAHit.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %inc.i48, ptr %LargeFAHit.i, align 2
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then80.i, %if.then76.i.if.end82.i_crit_edge
  %ForbiddenIGI.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 7
  %143 = ptrtoint ptr %ForbiddenIGI.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ForbiddenIGI.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %144, i8 %107)
  %cmp85.i = icmp ult i8 %144, %107
  br i1 %cmp85.i, label %if.end90.thread.i, label %if.end90.i

if.end90.thread.i:                                ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %ForbiddenIGI.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %107, ptr %ForbiddenIGI.i, align 1
  %146 = ptrtoint ptr %LargeFAHit.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %LargeFAHit.i, align 2
  br label %if.end146.i

if.end90.i:                                       ; preds = %if.end82.i
  %147 = ptrtoint ptr %LargeFAHit.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %.pr.i = load i8, ptr %LargeFAHit.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i)
  %cmp93.i = icmp ugt i8 %.pr.i, 2
  br i1 %cmp93.i, label %if.then95.i, label %if.end90.i.if.end146.i_crit_edge

if.end90.i.if.end146.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146.i

if.then95.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_gain_range_max99.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 3
  %148 = ptrtoint ptr %rx_gain_range_max99.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %rx_gain_range_max99.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %144, i8 %149)
  %cmp101.not.i = icmp ult i8 %144, %149
  %add98.i = add nuw i8 %144, 1
  %spec.select334.i = select i1 %cmp101.not.i, i8 %add98.i, i8 %149
  %150 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %spec.select334.i, ptr %150, align 4
  %Recover_cnt.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 8
  %152 = ptrtoint ptr %Recover_cnt.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 3600, ptr %Recover_cnt.i, align 4
  br label %if.end146.i

if.else113.i:                                     ; preds = %if.end73.i
  %Recover_cnt114.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 8
  %153 = ptrtoint ptr %Recover_cnt114.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %Recover_cnt114.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp115.not.i = icmp eq i32 %154, 0
  br i1 %cmp115.not.i, label %if.else119.i, label %if.then117.i

if.then117.i:                                     ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %154, -1
  %155 = ptrtoint ptr %Recover_cnt114.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %dec.i, ptr %Recover_cnt114.i, align 4
  br label %if.end146.i

if.else119.i:                                     ; preds = %if.else113.i
  %LargeFAHit120.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 6
  %156 = ptrtoint ptr %LargeFAHit120.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %LargeFAHit120.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %157)
  %cmp122.i = icmp ult i8 %157, 3
  br i1 %cmp122.i, label %if.then124.i, label %if.else142.i

if.then124.i:                                     ; preds = %if.else119.i
  %ForbiddenIGI125.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 7
  %158 = ptrtoint ptr %ForbiddenIGI125.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ForbiddenIGI125.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %DIG_Dynamic_MIN.0.i)
  %cmp128.not.i = icmp ugt i8 %159, %DIG_Dynamic_MIN.0.i
  br i1 %cmp128.not.i, label %if.else133.i, label %if.then130.i

if.then130.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %ForbiddenIGI125.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %DIG_Dynamic_MIN.0.i, ptr %ForbiddenIGI125.i, align 1
  %rx_gain_range_min132.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 4
  %161 = ptrtoint ptr %rx_gain_range_min132.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %DIG_Dynamic_MIN.0.i, ptr %rx_gain_range_min132.i, align 4
  br label %if.end146.i

if.else133.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec135.i = add i8 %159, -1
  %162 = ptrtoint ptr %ForbiddenIGI125.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %dec135.i, ptr %ForbiddenIGI125.i, align 1
  %rx_gain_range_min140.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 4
  %163 = ptrtoint ptr %rx_gain_range_min140.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %159, ptr %rx_gain_range_min140.i, align 4
  br label %if.end146.i

if.else142.i:                                     ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %LargeFAHit120.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %LargeFAHit120.i, align 2
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.else142.i, %if.else133.i, %if.then130.i, %if.then117.i, %if.then95.i, %if.end90.i.if.end146.i_crit_edge, %if.end90.thread.i
  br i1 %tobool7.not.i43, label %if.else181.i, label %if.then149.i

if.then149.i:                                     ; preds = %if.end146.i
  br i1 %137, label %if.then151.i, label %if.else153.i

if.then151.i:                                     ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #10
  %RSSI_Min152.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 14
  %165 = ptrtoint ptr %RSSI_Min152.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %RSSI_Min152.i, align 1
  br label %if.end213.i

if.else153.i:                                     ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %139)
  %cmp155.i = icmp ugt i32 %139, 1024
  br i1 %cmp155.i, label %if.then157.i, label %if.else161.i

if.then157.i:                                     ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_pc() #10
  %add159.i = add i8 %107, 4
  br label %if.end213.i

if.else161.i:                                     ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %139)
  %cmp163.i = icmp ugt i32 %139, 768
  br i1 %cmp163.i, label %if.then165.i, label %if.else169.i

if.then165.i:                                     ; preds = %if.else161.i
  call void @__sanitizer_cov_trace_pc() #10
  %add167.i = add i8 %107, 2
  br label %if.end213.i

if.else169.i:                                     ; preds = %if.else161.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %139)
  %cmp171.i = icmp ult i32 %139, 512
  %sub175.i = add i8 %107, -2
  %spec.select.i49 = select i1 %cmp171.i, i8 %sub175.i, i8 %107
  br label %if.end213.i

if.else181.i:                                     ; preds = %if.end146.i
  br i1 %136, label %if.then183.i, label %if.else185.i

if.then183.i:                                     ; preds = %if.else181.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_gain_range_min184.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 4
  %167 = ptrtoint ptr %rx_gain_range_min184.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %rx_gain_range_min184.i, align 4
  br label %if.end213.i

if.else185.i:                                     ; preds = %if.else181.i
  br i1 %cmp74.i, label %if.then189.i, label %if.else193.i

if.then189.i:                                     ; preds = %if.else185.i
  call void @__sanitizer_cov_trace_pc() #10
  %add191.i = add i8 %107, 2
  br label %if.end213.i

if.else193.i:                                     ; preds = %if.else185.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %139)
  %cmp195.i = icmp ugt i32 %139, 8000
  br i1 %cmp195.i, label %if.then197.i, label %if.else201.i

if.then197.i:                                     ; preds = %if.else193.i
  call void @__sanitizer_cov_trace_pc() #10
  %add199.i = add i8 %107, 1
  br label %if.end213.i

if.else201.i:                                     ; preds = %if.else193.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %139)
  %cmp203.i = icmp ult i32 %139, 500
  %sub207.i = sext i1 %cmp203.i to i8
  %spec.select330.i = add i8 %107, %sub207.i
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.else201.i, %if.then197.i, %if.then189.i, %if.then183.i, %if.else169.i, %if.then165.i, %if.then157.i, %if.then151.i
  %CurrentIGI.0.i = phi i8 [ %166, %if.then151.i ], [ %add159.i, %if.then157.i ], [ %add167.i, %if.then165.i ], [ %168, %if.then183.i ], [ %add191.i, %if.then189.i ], [ %add199.i, %if.then197.i ], [ %spec.select.i49, %if.else169.i ], [ %spec.select330.i, %if.else201.i ]
  %rx_gain_range_max215.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 3
  %169 = ptrtoint ptr %rx_gain_range_max215.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %rx_gain_range_max215.i, align 1
  %171 = tail call i8 @llvm.umin.i8(i8 %CurrentIGI.0.i, i8 %170) #8
  %rx_gain_range_min223.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 4
  %172 = ptrtoint ptr %rx_gain_range_min223.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %rx_gain_range_min223.i, align 4
  %174 = tail call i8 @llvm.umax.i8(i8 %171, i8 %173) #8
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %174)
  %cmp.not.i.i = icmp eq i8 %107, %174
  br i1 %cmp.not.i.i, label %if.end213.i.ODM_Write_DIG.exit.i_crit_edge, label %if.then.i.i

if.end213.i.ODM_Write_DIG.exit.i_crit_edge:       ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ODM_Write_DIG.exit.i

if.then.i.i:                                      ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i = zext i8 %174 to i32
  %175 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %176, i32 noundef 3152, i32 noundef 127, i32 noundef %conv1.i.i) #8
  %177 = ptrtoint ptr %CurIGValue.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %174, ptr %CurIGValue.i, align 1
  br label %ODM_Write_DIG.exit.i

ODM_Write_DIG.exit.i:                             ; preds = %if.then.i.i, %if.end213.i.ODM_Write_DIG.exit.i_crit_edge
  %178 = ptrtoint ptr %bLinked.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %bLinked.i, align 4, !range !17
  %180 = ptrtoint ptr %bMediaConnect_012.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %bMediaConnect_012.i, align 1
  %181 = ptrtoint ptr %DIG_Dynamic_MIN_0.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %DIG_Dynamic_MIN.0.i, ptr %DIG_Dynamic_MIN_0.i, align 4
  br label %odm_DIG.exit

odm_DIG.exit:                                     ; preds = %ODM_Write_DIG.exit.i, %if.end3.i.odm_DIG.exit_crit_edge, %if.end.i42.odm_DIG.exit_crit_edge, %odm_RSSIMonitorCheck.exit.odm_DIG.exit_crit_edge
  %182 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %SupportAbility.i, align 8
  %and.i51 = and i32 %183, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %odm_DIG.exit.odm_CCKPacketDetectionThresh.exit_crit_edge, label %if.end.i55

odm_DIG.exit.odm_CCKPacketDetectionThresh.exit_crit_edge: ; preds = %odm_DIG.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_CCKPacketDetectionThresh.exit

if.end.i55:                                       ; preds = %odm_DIG.exit
  %bLinked.i53 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 13
  %184 = ptrtoint ptr %bLinked.i53 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %bLinked.i53, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool2.not.i54 = icmp eq i8 %185, 0
  br i1 %tobool2.not.i54, label %if.end.i55.if.end30.sink.split.i_crit_edge, label %if.then3.i

if.end.i55.if.end30.sink.split.i_crit_edge:       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split.i

if.then3.i:                                       ; preds = %if.end.i55
  %RSSI_Min.i56 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 14
  %186 = ptrtoint ptr %RSSI_Min.i56 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %RSSI_Min.i56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %187)
  %cmp.i57 = icmp ugt i8 %187, 25
  br i1 %cmp.i57, label %if.then3.i.if.end30.i_crit_edge, label %land.lhs.true.i58

if.then3.i.if.end30.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

land.lhs.true.i58:                                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %187)
  %cmp12.i = icmp ugt i8 %187, 10
  br i1 %cmp12.i, label %land.lhs.true.i58.if.end30.i_crit_edge, label %land.lhs.true.i58.if.end30.sink.split.i_crit_edge

land.lhs.true.i58.if.end30.sink.split.i_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split.i

land.lhs.true.i58.if.end30.i_crit_edge:           ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end30.sink.split.i:                            ; preds = %land.lhs.true.i58.if.end30.sink.split.i_crit_edge, %if.end.i55.if.end30.sink.split.i_crit_edge
  %Cnt_Cck_fail24.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 24, i32 5
  %188 = ptrtoint ptr %Cnt_Cck_fail24.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %Cnt_Cck_fail24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %189)
  %cmp25.i = icmp ugt i32 %189, 1000
  %.39.i = select i1 %cmp25.i, i8 -125, i8 64
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30.sink.split.i, %land.lhs.true.i58.if.end30.i_crit_edge, %if.then3.i.if.end30.i_crit_edge
  %CurCCK_CCAThres.0.i = phi i8 [ -51, %if.then3.i.if.end30.i_crit_edge ], [ -125, %land.lhs.true.i58.if.end30.i_crit_edge ], [ %.39.i, %if.end30.sink.split.i ]
  %CurCCK_CCAThres1.i.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 5
  %190 = ptrtoint ptr %CurCCK_CCAThres1.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %CurCCK_CCAThres1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %191, i8 %CurCCK_CCAThres.0.i)
  %cmp.not.i.i59 = icmp eq i8 %191, %CurCCK_CCAThres.0.i
  br i1 %cmp.not.i.i59, label %if.end30.i.ODM_Write_CCK_CCA_Thres.exit.i_crit_edge, label %if.then.i.i60

if.end30.i.ODM_Write_CCK_CCA_Thres.exit.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ODM_Write_CCK_CCA_Thres.exit.i

if.then.i.i60:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %192 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pDM_Odm, align 8
  %call.i.i = tail call i32 @rtw_write8(ptr noundef %193, i32 noundef 2570, i8 noundef zeroext %CurCCK_CCAThres.0.i) #8
  br label %ODM_Write_CCK_CCA_Thres.exit.i

ODM_Write_CCK_CCA_Thres.exit.i:                   ; preds = %if.then.i.i60, %if.end30.i.ODM_Write_CCK_CCA_Thres.exit.i_crit_edge
  %194 = ptrtoint ptr %CurCCK_CCAThres1.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %CurCCK_CCAThres.0.i, ptr %CurCCK_CCAThres1.i.i, align 1
  br label %odm_CCKPacketDetectionThresh.exit

odm_CCKPacketDetectionThresh.exit:                ; preds = %ODM_Write_CCK_CCA_Thres.exit.i, %odm_DIG.exit.odm_CCKPacketDetectionThresh.exit_crit_edge
  %pbPowerSaving = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 12
  %195 = ptrtoint ptr %pbPowerSaving to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pbPowerSaving, align 8
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %196, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool.not = icmp eq i8 %198, 0
  br i1 %tobool.not, label %if.end, label %odm_CCKPacketDetectionThresh.exit.return_crit_edge

odm_CCKPacketDetectionThresh.exit.return_crit_edge: ; preds = %odm_CCKPacketDetectionThresh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %odm_CCKPacketDetectionThresh.exit
  %199 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pDM_Odm, align 8
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %200, i32 0, i32 20
  %201 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %bDriverStopped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool.not.i61 = icmp eq i32 %202, 0
  br i1 %tobool.not.i61, label %for.cond.preheader.i62, label %if.end.odm_RefreshRateAdaptiveMask.exit_crit_edge

if.end.odm_RefreshRateAdaptiveMask.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_RefreshRateAdaptiveMask.exit

for.cond.preheader.i62:                           ; preds = %if.end
  %RateAdaptive.i.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 28
  %LowRSSIThresh.i.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 28, i32 1
  br label %for.body.i66

for.body.i66:                                     ; preds = %if.end8.i.for.body.i66_crit_edge, %for.cond.preheader.i62
  %indvars.iv.i63 = phi i32 [ 0, %for.cond.preheader.i62 ], [ %indvars.iv.next.i70, %if.end8.i.for.body.i66_crit_edge ]
  %arrayidx.i64 = getelementptr %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 17, i32 %indvars.iv.i63
  %203 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx.i64, align 4
  %tobool2.not.i65 = icmp eq ptr %204, null
  br i1 %tobool2.not.i65, label %for.body.i66.if.end8.i_crit_edge, label %if.then3.i68

for.body.i66.if.end8.i_crit_edge:                 ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then3.i68:                                     ; preds = %for.body.i66
  %rssi_stat.i67 = getelementptr inbounds %struct.sta_info, ptr %204, i32 0, i32 77
  %205 = ptrtoint ptr %rssi_stat.i67 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %rssi_stat.i67, align 8
  %rssi_level.i = getelementptr inbounds %struct.sta_info, ptr %204, i32 0, i32 80
  %207 = ptrtoint ptr %RateAdaptive.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %RateAdaptive.i.i, align 4
  %209 = ptrtoint ptr %LowRSSIThresh.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %LowRSSIThresh.i.i, align 1
  %211 = ptrtoint ptr %rssi_level.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %rssi_level.i, align 1
  %213 = zext i8 %212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %212, label %if.then3.i68.sw.epilog.i.i_crit_edge [
    i8 3, label %sw.bb4.i.i
    i8 2, label %sw.bb1.i.i
  ]

if.then3.i68.sw.epilog.i.i_crit_edge:             ; preds = %if.then3.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then3.i68
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i8 %208, 5
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.then3.i68
  call void @__sanitizer_cov_trace_pc() #10
  %add6.i.i = add i8 %208, 5
  %add9.i.i = add i8 %210, 5
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb4.i.i, %sw.bb1.i.i, %if.then3.i68.sw.epilog.i.i_crit_edge
  %HighRSSIThreshForRA.0.i.i = phi i8 [ %208, %if.then3.i68.sw.epilog.i.i_crit_edge ], [ %add.i.i, %sw.bb1.i.i ], [ %add6.i.i, %sw.bb4.i.i ]
  %LowRSSIThreshForRA.0.i.i = phi i8 [ %210, %if.then3.i68.sw.epilog.i.i_crit_edge ], [ %210, %sw.bb1.i.i ], [ %add9.i.i, %sw.bb4.i.i ]
  %conv11.i.i = zext i8 %HighRSSIThreshForRA.0.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %conv11.i.i)
  %cmp.i.i69 = icmp sgt i32 %206, %conv11.i.i
  %conv13.i.i = zext i8 %LowRSSIThreshForRA.0.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %conv13.i.i)
  %cmp14.i.i = icmp sgt i32 %206, %conv13.i.i
  %..i.i = select i1 %cmp14.i.i, i8 2, i8 3
  %RATRState.0.i.i = select i1 %cmp.i.i69, i8 1, i8 %..i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %212, i8 %RATRState.0.i.i)
  %cmp21.not.i.not.i = icmp eq i8 %212, %RATRState.0.i.i
  br i1 %cmp21.not.i.not.i, label %sw.epilog.i.i.if.end8.i_crit_edge, label %if.then4.i

sw.epilog.i.i.if.end8.i_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then4.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %214 = ptrtoint ptr %rssi_level.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %RATRState.0.i.i, ptr %rssi_level.i, align 1
  tail call void @rtw_hal_update_ra_mask(ptr noundef %200, i32 noundef %indvars.iv.i63, i8 noundef zeroext %RATRState.0.i.i) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %sw.epilog.i.i.if.end8.i_crit_edge, %for.body.i66.if.end8.i_crit_edge
  %indvars.iv.next.i70 = add nuw nsw i32 %indvars.iv.i63, 1
  %exitcond.not.i71 = icmp eq i32 %indvars.iv.next.i70, 32
  br i1 %exitcond.not.i71, label %if.end8.i.odm_RefreshRateAdaptiveMask.exit_crit_edge, label %if.end8.i.for.body.i66_crit_edge

if.end8.i.for.body.i66_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i66

if.end8.i.odm_RefreshRateAdaptiveMask.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %odm_RefreshRateAdaptiveMask.exit

odm_RefreshRateAdaptiveMask.exit:                 ; preds = %if.end8.i.odm_RefreshRateAdaptiveMask.exit_crit_edge, %if.end.odm_RefreshRateAdaptiveMask.exit_crit_edge
  %AntDivType = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 6
  %215 = ptrtoint ptr %AntDivType to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %AntDivType, align 8
  %217 = zext i8 %216 to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %216, label %odm_RefreshRateAdaptiveMask.exit.if.end12_crit_edge [
    i8 1, label %odm_RefreshRateAdaptiveMask.exit.if.then11_crit_edge
    i8 2, label %odm_RefreshRateAdaptiveMask.exit.if.then11_crit_edge94
    i8 4, label %odm_RefreshRateAdaptiveMask.exit.if.then11_crit_edge95
  ]

odm_RefreshRateAdaptiveMask.exit.if.then11_crit_edge95: ; preds = %odm_RefreshRateAdaptiveMask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

odm_RefreshRateAdaptiveMask.exit.if.then11_crit_edge94: ; preds = %odm_RefreshRateAdaptiveMask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

odm_RefreshRateAdaptiveMask.exit.if.then11_crit_edge: ; preds = %odm_RefreshRateAdaptiveMask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

odm_RefreshRateAdaptiveMask.exit.if.end12_crit_edge: ; preds = %odm_RefreshRateAdaptiveMask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %odm_RefreshRateAdaptiveMask.exit.if.then11_crit_edge, %odm_RefreshRateAdaptiveMask.exit.if.then11_crit_edge94, %odm_RefreshRateAdaptiveMask.exit.if.then11_crit_edge95
  %218 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %SupportAbility.i, align 8
  %and.i73 = and i32 %219, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74 = icmp eq i32 %and.i73, 0
  br i1 %tobool.not.i74, label %if.then11.if.end12_crit_edge, label %if.end.i75

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i75:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ODM_AntennaDiversity_88E(ptr noundef %pDM_Odm) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end.i75, %if.then11.if.end12_crit_edge, %odm_RefreshRateAdaptiveMask.exit.if.end12_crit_edge
  %220 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %pDM_Odm, align 8
  %222 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %SupportAbility.i, align 8
  %and.i77 = and i32 %223, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %if.end12.ODM_TXPowerTrackingCheck.exit_crit_edge, label %if.end.i80

if.end12.ODM_TXPowerTrackingCheck.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %ODM_TXPowerTrackingCheck.exit

if.end.i80:                                       ; preds = %if.end12
  %TM_Trigger.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 29, i32 9
  %224 = ptrtoint ptr %TM_Trigger.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %TM_Trigger.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool2.not.i79 = icmp eq i8 %225, 0
  br i1 %tobool2.not.i79, label %if.then3.i81, label %if.else.i82

if.then3.i81:                                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %221, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #8
  br label %cleanup.sink.split.i

if.else.i82:                                      ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @odm_TXPowerTrackingCallback_ThermalMeter_8188E(ptr noundef %221) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i82, %if.then3.i81
  %.sink.i = phi i8 [ 0, %if.else.i82 ], [ 1, %if.then3.i81 ]
  %226 = ptrtoint ptr %TM_Trigger.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %.sink.i, ptr %TM_Trigger.i, align 4
  br label %ODM_TXPowerTrackingCheck.exit

ODM_TXPowerTrackingCheck.exit:                    ; preds = %cleanup.sink.split.i, %if.end12.ODM_TXPowerTrackingCheck.exit_crit_edge
  %227 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pDM_Odm, align 8
  %229 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %SupportAbility.i, align 8
  %and.i84 = and i32 %230, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i85, label %ODM_TXPowerTrackingCheck.exit.return_crit_edge, label %if.end.i87

ODM_TXPowerTrackingCheck.exit.return_crit_edge:   ; preds = %ODM_TXPowerTrackingCheck.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i87:                                       ; preds = %ODM_TXPowerTrackingCheck.exit
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 13, i32 44
  %231 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %232)
  %cmp.i86 = icmp eq i8 %232, 1
  br i1 %cmp.i86, label %if.end.i87.dm_CheckEdcaTurbo_EXIT.i_crit_edge, label %if.end4.i

if.end.i87.dm_CheckEdcaTurbo_EXIT.i_crit_edge:    ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %dm_CheckEdcaTurbo_EXIT.i

if.end4.i:                                        ; preds = %if.end.i87
  %assoc_AP_vendor.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 5, i32 17, i32 14
  %233 = ptrtoint ptr %assoc_AP_vendor.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %assoc_AP_vendor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %234)
  %cmp6.i = icmp ugt i8 %234, 16
  br i1 %cmp6.i, label %if.end4.i.dm_CheckEdcaTurbo_EXIT.i_crit_edge, label %lor.lhs.false.i

if.end4.i.dm_CheckEdcaTurbo_EXIT.i_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dm_CheckEdcaTurbo_EXIT.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %bIsAnyNonBEPkts.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 10, i32 8
  %235 = ptrtoint ptr %bIsAnyNonBEPkts.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %bIsAnyNonBEPkts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool12.not.i = icmp eq i32 %236, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else61.i

if.then13.i:                                      ; preds = %lor.lhs.false.i
  %tx_bytes.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 9, i32 16
  %237 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %tx_bytes.i, align 8
  %last_tx_bytes.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 9, i32 19
  %239 = ptrtoint ptr %last_tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %last_tx_bytes.i, align 8
  %sub.i88 = sub i64 %238, %240
  %rx_bytes.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 10, i32 9
  %241 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %rx_bytes.i, align 8
  %last_rx_bytes.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 10, i32 12
  %243 = ptrtoint ptr %last_rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %last_rx_bytes.i, align 8
  %sub14.i = sub i64 %242, %244
  %245 = and i8 %234, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %245)
  %switch.i = icmp eq i8 %245, 4
  %shl.i89 = shl i64 %sub14.i, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i88, i64 %shl.i89)
  %cmp25.i90 = icmp ule i64 %sub.i88, %shl.i89
  %shl30.i = shl i64 %sub.i88, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub14.i, i64 %shl30.i)
  %cmp31.i = icmp ugt i64 %sub14.i, %shl30.i
  %trafficIndex.0.v.i = select i1 %switch.i, i1 %cmp25.i90, i1 %cmp31.i
  %trafficIndex.0.i = zext i1 %trafficIndex.0.v.i to i32
  %DM_EDCA_Table.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 26
  %prv_traffic_idx.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 26, i32 2
  %246 = ptrtoint ptr %prv_traffic_idx.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %prv_traffic_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %trafficIndex.0.i)
  %cmp37.not.i = icmp eq i32 %247, %trafficIndex.0.i
  br i1 %cmp37.not.i, label %lor.lhs.false39.i, label %if.then13.i.if.then42.i_crit_edge

if.then13.i.if.then42.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42.i

lor.lhs.false39.i:                                ; preds = %if.then13.i
  %248 = ptrtoint ptr %DM_EDCA_Table.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %DM_EDCA_Table.i, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool41.not.i = icmp eq i8 %249, 0
  br i1 %tobool41.not.i, label %lor.lhs.false39.i.if.then42.i_crit_edge, label %lor.lhs.false39.i.if.end58.i_crit_edge

lor.lhs.false39.i.if.end58.i_crit_edge:           ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

lor.lhs.false39.i.if.then42.i_crit_edge:          ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42.i

if.then42.i:                                      ; preds = %lor.lhs.false39.i.if.then42.i_crit_edge, %if.then13.i.if.then42.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %234)
  %cmp45.i = icmp eq i8 %234, 6
  br i1 %cmp45.i, label %land.lhs.true.i91, label %if.then42.i.if.else53.i_crit_edge

if.then42.i.if.else53.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else53.i

land.lhs.true.i91:                                ; preds = %if.then42.i
  %cur_wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 5, i32 7
  %250 = ptrtoint ptr %cur_wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %cur_wireless_mode.i, align 1
  %252 = and i8 %251, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool49.not.i = icmp eq i8 %252, 0
  br i1 %tobool49.not.i, label %land.lhs.true.i91.if.else53.i_crit_edge, label %land.lhs.true.i91.if.end55.i_crit_edge

land.lhs.true.i91.if.end55.i_crit_edge:           ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

land.lhs.true.i91.if.else53.i_crit_edge:          ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else53.i

if.else53.i:                                      ; preds = %land.lhs.true.i91.if.else53.i_crit_edge, %if.then42.i.if.else53.i_crit_edge
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else53.i, %land.lhs.true.i91.if.end55.i_crit_edge
  %.pn.i = phi ptr [ @EDCAParam, %if.else53.i ], [ getelementptr inbounds ([17 x [3 x i32]], ptr @EDCAParam, i32 0, i32 6), %land.lhs.true.i91.if.end55.i_crit_edge ]
  %edca_param.0.in.i = getelementptr [3 x i32], ptr %.pn.i, i32 0, i32 %trafficIndex.0.i
  %253 = ptrtoint ptr %edca_param.0.in.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %edca_param.0.i = load i32, ptr %edca_param.0.in.i, align 4
  %call.i92 = tail call i32 @rtw_write32(ptr noundef %228, i32 noundef 1288, i32 noundef %edca_param.0.i) #8
  %254 = ptrtoint ptr %prv_traffic_idx.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %trafficIndex.0.i, ptr %prv_traffic_idx.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end55.i, %lor.lhs.false39.i.if.end58.i_crit_edge
  %255 = ptrtoint ptr %DM_EDCA_Table.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 1, ptr %DM_EDCA_Table.i, align 8
  br label %dm_CheckEdcaTurbo_EXIT.i

if.else61.i:                                      ; preds = %lor.lhs.false.i
  %DM_EDCA_Table62.i = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 26
  %256 = ptrtoint ptr %DM_EDCA_Table62.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %DM_EDCA_Table62.i, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool64.not.i = icmp eq i8 %257, 0
  br i1 %tobool64.not.i, label %if.else61.i.dm_CheckEdcaTurbo_EXIT.i_crit_edge, label %if.then65.i93

if.else61.i.dm_CheckEdcaTurbo_EXIT.i_crit_edge:   ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dm_CheckEdcaTurbo_EXIT.i

if.then65.i93:                                    ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #10
  %AcParam_BE.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 19, i32 29
  %258 = ptrtoint ptr %AcParam_BE.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %AcParam_BE.i, align 8
  %call66.i = tail call i32 @rtw_write32(ptr noundef %228, i32 noundef 1288, i32 noundef %259) #8
  %260 = ptrtoint ptr %DM_EDCA_Table62.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %DM_EDCA_Table62.i, align 8
  br label %dm_CheckEdcaTurbo_EXIT.i

dm_CheckEdcaTurbo_EXIT.i:                         ; preds = %if.then65.i93, %if.else61.i.dm_CheckEdcaTurbo_EXIT.i_crit_edge, %if.end58.i, %if.end4.i.dm_CheckEdcaTurbo_EXIT.i_crit_edge, %if.end.i87.dm_CheckEdcaTurbo_EXIT.i_crit_edge
  %bIsAnyNonBEPkts71.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 10, i32 8
  %261 = ptrtoint ptr %bIsAnyNonBEPkts71.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %bIsAnyNonBEPkts71.i, align 8
  %tx_bytes72.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 9, i32 16
  %262 = ptrtoint ptr %tx_bytes72.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %tx_bytes72.i, align 8
  %last_tx_bytes73.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 9, i32 19
  %264 = ptrtoint ptr %last_tx_bytes73.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %263, ptr %last_tx_bytes73.i, align 8
  %rx_bytes74.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 10, i32 9
  %265 = ptrtoint ptr %rx_bytes74.i to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %rx_bytes74.i, align 8
  %last_rx_bytes75.i = getelementptr inbounds %struct.adapter, ptr %228, i32 0, i32 10, i32 12
  %267 = ptrtoint ptr %last_rx_bytes75.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %266, ptr %last_rx_bytes75.i, align 8
  br label %return

return:                                           ; preds = %dm_CheckEdcaTurbo_EXIT.i, %ODM_TXPowerTrackingCheck.exit.return_crit_edge, %odm_CCKPacketDetectionThresh.exit.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_TXPowerTrackingCheck(ptr nocapture noundef %pDM_Odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %SupportAbility = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 4
  %2 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SupportAbility, align 8
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %TM_Trigger = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 29, i32 9
  %4 = ptrtoint ptr %TM_Trigger to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %TM_Trigger, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %1, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @odm_TXPowerTrackingCallback_ThermalMeter_8188E(ptr noundef %1) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then3
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then3 ]
  %6 = ptrtoint ptr %TM_Trigger to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %TM_Trigger, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ODM_CmnInfoInit(ptr nocapture noundef writeonly %pDM_Odm, i32 noundef %CmnInfo, i32 noundef %Value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %CmnInfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %CmnInfo, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %Value to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool = icmp ne i8 %conv, 0
  %bIsMPChip = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 15
  %frombool = zext i1 %tobool to i8
  %1 = ptrtoint ptr %bIsMPChip to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %bIsMPChip, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv2 = trunc i32 %Value to i8
  %AntDivType = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 6
  %2 = ptrtoint ptr %AntDivType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %AntDivType, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %BbSwingIdxOfdm = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 30
  %3 = ptrtoint ptr %BbSwingIdxOfdm to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 12, ptr %BbSwingIdxOfdm, align 8
  %BbSwingIdxOfdmCurrent = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 31
  %4 = ptrtoint ptr %BbSwingIdxOfdmCurrent to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %BbSwingIdxOfdmCurrent, align 1
  %BbSwingFlagOfdm = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 33
  %5 = ptrtoint ptr %BbSwingFlagOfdm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %BbSwingFlagOfdm, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ODM_CmnInfoHook(ptr nocapture noundef writeonly %pDM_Odm, i32 noundef %CmnInfo, ptr noundef %pValue) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %CmnInfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %CmnInfo, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pWirelessMode = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 7
  %1 = ptrtoint ptr %pWirelessMode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pValue, ptr %pWirelessMode, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pSecChOffset = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 8
  %2 = ptrtoint ptr %pSecChOffset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pValue, ptr %pSecChOffset, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pBandWidth = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 9
  %3 = ptrtoint ptr %pBandWidth to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pValue, ptr %pBandWidth, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pChannel = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 10
  %4 = ptrtoint ptr %pChannel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pValue, ptr %pChannel, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pbScanInProcess = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 11
  %5 = ptrtoint ptr %pbScanInProcess to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pValue, ptr %pbScanInProcess, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pbPowerSaving = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 12
  %6 = ptrtoint ptr %pbPowerSaving to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pValue, ptr %pbPowerSaving, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ODM_CmnInfoUpdate(ptr nocapture noundef writeonly %pDM_Odm, i32 noundef %CmnInfo, i64 noundef %Value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %CmnInfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %CmnInfo, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 8, label %sw.bb1
    i32 9, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %Value to i32
  %SupportAbility = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 4
  %1 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %SupportAbility, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool = icmp ne i64 %Value, 0
  %bLinked = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 13
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %bLinked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %bLinked, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv3 = trunc i64 %Value to i8
  %RSSI_Min = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 14
  %3 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %RSSI_Min, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_Write_DIG(ptr nocapture noundef %pDM_Odm, i8 noundef zeroext %CurrentIGI) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %CurIGValue = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 1
  %0 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %CurIGValue, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %CurrentIGI)
  %cmp.not = icmp eq i8 %1, %CurrentIGI
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv1 = zext i8 %CurrentIGI to i32
  %2 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %3, i32 noundef 3152, i32 noundef 127, i32 noundef %conv1) #8
  %4 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %CurrentIGI, ptr %CurIGValue, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_SetBBReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_Write_CCK_CCA_Thres(ptr nocapture noundef %pDM_Odm, i8 noundef zeroext %CurCCK_CCAThres) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %CurCCK_CCAThres1 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 22, i32 5
  %0 = ptrtoint ptr %CurCCK_CCAThres1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %CurCCK_CCAThres1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %CurCCK_CCAThres)
  %cmp.not = icmp eq i8 %1, %CurCCK_CCAThres
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pDM_Odm, align 8
  %call = tail call i32 @rtw_write8(ptr noundef %3, i32 noundef 2570, i8 noundef zeroext %CurCCK_CCAThres) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %CurCCK_CCAThres1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %CurCCK_CCAThres, ptr %CurCCK_CCAThres1, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_RF_Saving(ptr nocapture noundef %pDM_Odm, i8 noundef zeroext %bForceInNormal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %DM_PSTable = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %initialize = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 2
  %2 = ptrtoint ptr %initialize to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialize, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %1, i32 noundef 2164, i32 noundef -1) #8
  %and = lshr i32 %call, 14
  %shr = and i32 %and, 115
  %reg_874 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 3
  %4 = ptrtoint ptr %reg_874 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %reg_874, align 4
  %call2 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %1, i32 noundef 3184, i32 noundef -1) #8
  %and3 = lshr i32 %call2, 3
  %shr4 = and i32 %and3, 1
  %reg_c70 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 4
  %5 = ptrtoint ptr %reg_c70 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr4, ptr %reg_c70, align 4
  %call5 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %1, i32 noundef 2140, i32 noundef -1) #8
  %shr7 = lshr i32 %call5, 24
  %reg_85c = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 5
  %6 = ptrtoint ptr %reg_85c to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr7, ptr %reg_85c, align 4
  %call8 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %1, i32 noundef 2676, i32 noundef -1) #8
  %and9 = lshr i32 %call8, 12
  %shr10 = and i32 %and9, 15
  %reg_a74 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 6
  %7 = ptrtoint ptr %reg_a74 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr10, ptr %reg_a74, align 4
  %8 = ptrtoint ptr %initialize to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %initialize, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bForceInNormal)
  %tobool.not = icmp eq i8 %bForceInNormal, 0
  br i1 %tobool.not, label %if.then12, label %if.else44

if.then12:                                        ; preds = %if.end
  %RSSI_Min = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 14
  %9 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %RSSI_Min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp14.not = icmp eq i8 %10, -1
  br i1 %cmp14.not, label %if.else41, label %if.then16

if.then16:                                        ; preds = %if.then12
  %11 = ptrtoint ptr %DM_PSTable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %DM_PSTable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp18 = icmp eq i8 %12, 1
  br i1 %cmp18, label %if.then20, label %if.else29

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %10)
  %cmp24 = icmp ugt i8 %10, 29
  %cur_rf_state = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 1
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %cur_rf_state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %cur_rf_state, align 1
  br label %if.end46

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %cur_rf_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %cur_rf_state, align 1
  br label %if.end46

if.else29:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %10)
  %cmp33 = icmp ult i8 %10, 26
  %cur_rf_state36 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 1
  br i1 %cmp33, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %cur_rf_state36 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %cur_rf_state36, align 1
  br label %if.end46

if.else37:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %cur_rf_state36 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %cur_rf_state36, align 1
  br label %if.end46

if.else41:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %cur_rf_state42 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 1
  %17 = ptrtoint ptr %cur_rf_state42 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %cur_rf_state42, align 1
  br label %if.end46

if.else44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cur_rf_state45 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 1
  %18 = ptrtoint ptr %cur_rf_state45 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %cur_rf_state45, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.else41, %if.else37, %if.then35, %if.else, %if.then26
  %19 = ptrtoint ptr %DM_PSTable to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %DM_PSTable, align 4
  %cur_rf_state49 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 1
  %21 = ptrtoint ptr %cur_rf_state49 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cur_rf_state49, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp51.not = icmp eq i8 %20, %22
  br i1 %cmp51.not, label %if.end46.if.end67_crit_edge, label %if.then53

if.end46.if.end67_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp56 = icmp eq i8 %22, 0
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2164, i32 noundef 1835008, i32 noundef 2) #8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 3184, i32 noundef 8, i32 noundef 0) #8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2140, i32 noundef -16777216, i32 noundef 99) #8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2164, i32 noundef 49152, i32 noundef 2) #8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2676, i32 noundef 61440, i32 noundef 3) #8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2072, i32 noundef 268435456, i32 noundef 0) #8
  br label %if.end64

if.else59:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %reg_87460 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 3
  %23 = ptrtoint ptr %reg_87460 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_87460, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2164, i32 noundef 1884160, i32 noundef %24) #8
  %reg_c7061 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 4
  %25 = ptrtoint ptr %reg_c7061 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_c7061, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 3184, i32 noundef 8, i32 noundef %26) #8
  %reg_85c62 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 5
  %27 = ptrtoint ptr %reg_85c62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_85c62, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2140, i32 noundef -16777216, i32 noundef %28) #8
  %reg_a7463 = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 23, i32 6
  %29 = ptrtoint ptr %reg_a7463 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_a7463, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2676, i32 noundef 61440, i32 noundef %30) #8
  br label %if.end64

if.end64:                                         ; preds = %if.else59, %if.then58
  %.sink = phi i32 [ 0, %if.else59 ], [ 1, %if.then58 ]
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %1, i32 noundef 2072, i32 noundef 268435456, i32 noundef %.sink) #8
  %31 = ptrtoint ptr %cur_rf_state49 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cur_rf_state49, align 1
  %33 = ptrtoint ptr %DM_PSTable to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %DM_PSTable, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %if.end46.if.end67_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_PHY_QueryBBReg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ODM_Get_Rate_Bitmap(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %macid, i32 noundef %ra_mask, i8 noundef zeroext %rssi_level) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 17, i32 %macid
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %wireless_mode = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wireless_mode, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb4
    i8 11, label %sw.bb16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %ra_mask, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %. = select i1 %tobool1.not, i32 15, i32 13
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp = icmp eq i8 %rssi_level, 2
  %switch.select = select i1 %switch.selectcmp, i32 4080, i32 4085
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp44 = icmp eq i8 %rssi_level, 1
  %switch.select45 = select i1 %switch.selectcmp44, i32 3840, i32 %switch.select
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %5 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %rssi_level, label %if.else26 [
    i8 1, label %sw.bb16.cleanup_crit_edge
    i8 2, label %if.then25
  ]

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else26:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %pBandWidth = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 9
  %6 = ptrtoint ptr %pBandWidth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pBandWidth, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp28 = icmp eq i8 %9, 1
  %.43 = select i1 %cmp28, i32 1044501, i32 1044485
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %if.then25, %sw.bb16.cleanup_crit_edge, %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ra_mask, %entry.cleanup_crit_edge ], [ 1044480, %if.then25 ], [ %., %sw.bb ], [ 983040, %sw.bb16.cleanup_crit_edge ], [ %.43, %if.else26 ], [ 268435455, %if.end.cleanup_crit_edge ], [ %switch.select45, %sw.bb4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ODM_RAStateCheck(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %RSSI, i1 noundef zeroext %bForceUpdate, ptr nocapture noundef %pRATRState) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %RateAdaptive = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 28
  %0 = ptrtoint ptr %RateAdaptive to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %RateAdaptive, align 4
  %LowRSSIThresh = getelementptr inbounds %struct.odm_dm_struct, ptr %pDM_Odm, i32 0, i32 28, i32 1
  %2 = ptrtoint ptr %LowRSSIThresh to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %LowRSSIThresh, align 1
  %4 = ptrtoint ptr %pRATRState to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pRATRState, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 3, label %sw.bb4
    i8 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i8 %1, 5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add6 = add i8 %1, 5
  %add9 = add i8 %3, 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %entry.sw.epilog_crit_edge
  %HighRSSIThreshForRA.0 = phi i8 [ %1, %entry.sw.epilog_crit_edge ], [ %add, %sw.bb1 ], [ %add6, %sw.bb4 ]
  %LowRSSIThreshForRA.0 = phi i8 [ %3, %entry.sw.epilog_crit_edge ], [ %3, %sw.bb1 ], [ %add9, %sw.bb4 ]
  %conv11 = zext i8 %HighRSSIThreshForRA.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %RSSI)
  %cmp = icmp slt i32 %conv11, %RSSI
  %conv13 = zext i8 %LowRSSIThreshForRA.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %RSSI)
  %cmp14 = icmp slt i32 %conv13, %RSSI
  %. = select i1 %cmp14, i8 2, i8 3
  %RATRState.0 = select i1 %cmp, i8 1, i8 %.
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %RATRState.0)
  %cmp21.not = icmp ne i8 %5, %RATRState.0
  %brmerge = or i1 %cmp21.not, %bForceUpdate
  br i1 %brmerge, label %if.then24, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %pRATRState to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %RATRState.0, ptr %pRATRState, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %sw.epilog.cleanup_crit_edge
  ret i1 %brmerge
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_SetRFReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_TXPowerTrackingCallback_ThermalMeter_8188E(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_AntennaDiversityInit_88E(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_RA_SetRSSI_8188E(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_update_ra_mask(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_AntennaDiversity_88E(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @OFDMSwingTable, !1, !"OFDMSwingTable", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/odm.c", i32 22, i32 5}
!2 = !{ptr @CCKSwingTable_Ch1_Ch13, !3, !"CCKSwingTable_Ch1_Ch13", i1 false, i1 false}
!3 = !{!"../drivers/staging/r8188eu/hal/odm.c", i32 68, i32 4}
!4 = !{ptr @CCKSwingTable_Ch14, !5, !"CCKSwingTable_Ch14", i1 false, i1 false}
!5 = !{!"../drivers/staging/r8188eu/hal/odm.c", i32 104, i32 4}
!6 = !{ptr @EDCAParam, !7, !"EDCAParam", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/odm.c", i32 7, i32 12}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
