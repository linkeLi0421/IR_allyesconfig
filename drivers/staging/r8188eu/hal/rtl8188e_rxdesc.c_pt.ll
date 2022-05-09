; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/rtl8188e_rxdesc.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/rtl8188e_rxdesc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.recv_frame = type { %struct.list_head, ptr, ptr, ptr, i8, i32, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, [2 x i32], %struct.phy_info }
%struct.phy_info = type { i8, i8, [3 x i8], [3 x i8], i8, i8, i8, [3 x i8], [3 x i8] }
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.odm_per_pkt_info = type { i8, i8, i8, i8, i8 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@switch.table.update_recvframe_phyinfo_88e = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 10, i32 4, i32 4], [16 x i8] zeroinitializer }, align 32
@switch.table.update_recvframe_phyinfo_88e.1 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 4, i32 16], [20 x i8] zeroinitializer }, align 32
@switch.table.update_recvframe_phyinfo_88e.2 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 10, i32 16, i32 10], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@___asan_gen_ = private constant [49 x i8] c"../drivers/staging/r8188eu/hal/rtl8188e_rxdesc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [42 x i8] c"switch.table.update_recvframe_phyinfo_88e\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [44 x i8] c"switch.table.update_recvframe_phyinfo_88e.1\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [44 x i8] c"switch.table.update_recvframe_phyinfo_88e.2\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @switch.table.update_recvframe_phyinfo_88e, ptr @switch.table.update_recvframe_phyinfo_88e.1, ptr @switch.table.update_recvframe_phyinfo_88e.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.update_recvframe_phyinfo_88e to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.update_recvframe_phyinfo_88e.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.update_recvframe_phyinfo_88e.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8188e_process_phy_info(ptr noundef %padapter, ptr noundef readonly %prframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %signal_strength_data.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 40
  %0 = ptrtoint ptr %signal_strength_data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal_strength_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.process_rssi.exit_crit_edge, label %if.then.i

entry.process_rssi.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_rssi.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %total_num.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 40, i32 2
  %2 = ptrtoint ptr %total_num.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %total_num.i, align 4
  %total_val.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 40, i32 3
  %3 = ptrtoint ptr %total_val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %total_val.i, align 4
  %4 = ptrtoint ptr %signal_strength_data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %signal_strength_data.i, align 4
  br label %process_rssi.exit

process_rssi.exit:                                ; preds = %if.then.i, %entry.process_rssi.exit_crit_edge
  %total_num2.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 40, i32 2
  %5 = ptrtoint ptr %total_num2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total_num2.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %total_num2.i, align 4
  %SignalStrength.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 35, i32 6
  %7 = ptrtoint ptr %SignalStrength.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %SignalStrength.i, align 2
  %conv.i = zext i8 %8 to i32
  %total_val3.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 40, i32 3
  %9 = ptrtoint ptr %total_val3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_val3.i, align 4
  %add.i = add i32 %10, %conv.i
  store i32 %add.i, ptr %total_val3.i, align 4
  %div.i = udiv i32 %add.i, %inc.i
  %conv6.i = trunc i32 %div.i to i8
  %avg_val.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 40, i32 1
  %11 = ptrtoint ptr %avg_val.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6.i, ptr %avg_val.i, align 1
  %tobool.not.i3 = icmp eq ptr %prframe, null
  %tobool1.not.i = icmp eq ptr %padapter, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i3
  br i1 %or.cond.i, label %process_rssi.exit.process_link_qual.exit_crit_edge, label %if.end.i

process_rssi.exit.process_link_qual.exit_crit_edge: ; preds = %process_rssi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_link_qual.exit

if.end.i:                                         ; preds = %process_rssi.exit
  %signal_qual_data.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 39
  %12 = ptrtoint ptr %signal_qual_data.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %signal_qual_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %total_num.i4 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 39, i32 2
  %14 = ptrtoint ptr %total_num.i4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %total_num.i4, align 4
  %total_val.i5 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 39, i32 3
  %15 = ptrtoint ptr %total_val.i5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %total_val.i5, align 4
  %16 = ptrtoint ptr %signal_qual_data.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %signal_qual_data.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %total_num6.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 39, i32 2
  %17 = ptrtoint ptr %total_num6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %total_num6.i, align 4
  %inc.i6 = add i32 %18, 1
  store i32 %inc.i6, ptr %total_num6.i, align 4
  %SignalQuality.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 35, i32 1
  %19 = ptrtoint ptr %SignalQuality.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %SignalQuality.i, align 1
  %conv.i7 = zext i8 %20 to i32
  %total_val7.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 39, i32 3
  %21 = ptrtoint ptr %total_val7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_val7.i, align 4
  %add.i8 = add i32 %22, %conv.i7
  store i32 %add.i8, ptr %total_val7.i, align 4
  %div.i9 = udiv i32 %add.i8, %inc.i6
  %conv10.i = trunc i32 %div.i9 to i8
  %avg_val.i10 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 39, i32 1
  %23 = ptrtoint ptr %avg_val.i10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv10.i, ptr %avg_val.i10, align 1
  br label %process_link_qual.exit

process_link_qual.exit:                           ; preds = %if.end5.i, %process_rssi.exit.process_link_qual.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_recvframe_attrib_88e(ptr noundef writeonly %precvframe, ptr nocapture noundef readonly %prxstat) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prxstat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prxstat, align 4
  %rxdw1 = getelementptr inbounds %struct.recv_stat, ptr %prxstat, i32 0, i32 1
  %2 = ptrtoint ptr %rxdw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxdw1, align 4
  %rxdw2 = getelementptr inbounds %struct.recv_stat, ptr %prxstat, i32 0, i32 2
  %4 = ptrtoint ptr %rxdw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxdw2, align 4
  %rxdw3 = getelementptr inbounds %struct.recv_stat, ptr %prxstat, i32 0, i32 3
  %6 = ptrtoint ptr %rxdw3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxdw3, align 4
  %rxdw4 = getelementptr inbounds %struct.recv_stat, ptr %prxstat, i32 0, i32 4
  %8 = ptrtoint ptr %rxdw4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxdw4, align 4
  %rxdw5 = getelementptr inbounds %struct.recv_stat, ptr %prxstat, i32 0, i32 5
  %10 = ptrtoint ptr %rxdw5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxdw5, align 4
  %attrib = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6
  %12 = call ptr @memset(ptr %attrib, i32 0, i32 92)
  %13 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr i32 %13, 14
  %14 = trunc i32 %shr to i8
  %conv = and i8 %14, 1
  %crc_err = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 20
  %15 = ptrtoint ptr %crc_err to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %crc_err, align 2
  %16 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shr9 = lshr i32 %16, 14
  %17 = trunc i32 %shr9 to i8
  %conv11 = and i8 %17, 3
  %pkt_rpt_type = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 33
  %18 = ptrtoint ptr %pkt_rpt_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11, ptr %pkt_rpt_type, align 1
  %trunc = trunc i32 %shr9 to i2
  %19 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.then104 [
    i2 0, label %if.then
    i2 1, label %if.then81
    i2 -2, label %if.then89
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = trunc i32 %13 to i16
  %conv17 = and i16 %20, 16383
  %21 = ptrtoint ptr %attrib to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv17, ptr %attrib, align 4
  %22 = lshr i32 %13, 13
  %23 = trunc i32 %22 to i8
  %conv23 = and i8 %23, 120
  %drvinfo_sz = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %drvinfo_sz to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv23, ptr %drvinfo_sz, align 1
  %shr25 = lshr i32 %13, 26
  %25 = trunc i32 %shr25 to i8
  %conv27 = and i8 %25, 1
  %physt = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %physt to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv27, ptr %physt, align 2
  %and29 = lshr i32 %13, 27
  %27 = trunc i32 %and29 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %bdecrypted = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 16
  %30 = ptrtoint ptr %bdecrypted to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %bdecrypted, align 2
  %shr32 = lshr i32 %13, 20
  %31 = trunc i32 %shr32 to i8
  %conv34 = and i8 %31, 7
  %encrypt = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 17
  %32 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv34, ptr %encrypt, align 1
  %shr36 = lshr i32 %13, 23
  %33 = trunc i32 %shr36 to i8
  %conv38 = and i8 %33, 1
  %qos = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 7
  %34 = ptrtoint ptr %qos to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv38, ptr %qos, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr40 = lshr i32 %35, 8
  %36 = trunc i32 %shr40 to i8
  %conv42 = and i8 %36, 15
  %priority = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 8
  %37 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv42, ptr %priority, align 1
  %shr44 = lshr i32 %35, 13
  %38 = trunc i32 %shr44 to i8
  %conv46 = and i8 %38, 1
  %amsdu = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 6
  %39 = ptrtoint ptr %amsdu to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv46, ptr %amsdu, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %5)
  %41 = trunc i32 %40 to i16
  %conv49 = and i16 %41, 4095
  %seq_num = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 11
  %42 = ptrtoint ptr %seq_num to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv49, ptr %seq_num, align 4
  %shr51 = lshr i32 %40, 12
  %43 = trunc i32 %shr51 to i8
  %conv53 = and i8 %43, 15
  %frag_num = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 12
  %44 = ptrtoint ptr %frag_num to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv53, ptr %frag_num, align 2
  %shr55 = lshr i32 %35, 27
  %45 = trunc i32 %shr55 to i8
  %conv57 = and i8 %45, 1
  %mfrag = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 13
  %46 = ptrtoint ptr %mfrag to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv57, ptr %mfrag, align 1
  %shr59 = lshr i32 %35, 26
  %47 = trunc i32 %shr59 to i8
  %conv61 = and i8 %47, 1
  %mdata = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 10
  %48 = ptrtoint ptr %mdata to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv61, ptr %mdata, align 1
  %49 = trunc i32 %16 to i8
  %conv64 = and i8 %49, 63
  %mcs_rate = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 30
  %50 = ptrtoint ptr %mcs_rate to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv64, ptr %mcs_rate, align 2
  %51 = lshr i8 %49, 6
  %conv68 = and i8 %51, 1
  %rxht = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 31
  %52 = ptrtoint ptr %rxht to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv68, ptr %rxht, align 1
  %shr70 = lshr i32 %13, 15
  %53 = trunc i32 %shr70 to i8
  %conv72 = and i8 %53, 1
  %icv_err = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 21
  %54 = ptrtoint ptr %icv_err to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv72, ptr %icv_err, align 1
  %shr74 = lshr i32 %13, 24
  %55 = trunc i32 %shr74 to i8
  %conv76 = and i8 %55, 3
  %shift_sz = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 3
  %56 = ptrtoint ptr %shift_sz to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv76, ptr %shift_sz, align 4
  br label %if.end111

if.then81:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %attrib to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 8, ptr %attrib, align 4
  br label %if.end111

if.then89:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %58 = trunc i32 %13 to i16
  %conv92 = and i16 %58, 1023
  %59 = ptrtoint ptr %attrib to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv92, ptr %attrib, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %9)
  %MacIDValidEntry = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 34
  %61 = ptrtoint ptr %MacIDValidEntry to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %MacIDValidEntry, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %11)
  %arrayidx98 = getelementptr %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 34, i32 1
  %63 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx98, align 4
  br label %if.end111

if.then104:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %64 = trunc i32 %13 to i16
  %conv107 = and i16 %64, 16383
  %65 = ptrtoint ptr %attrib to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv107, ptr %attrib, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then104, %if.then89, %if.then81, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_recvframe_phyinfo_88e(ptr noundef %precvframe, ptr noundef %pphy_status) local_unnamed_addr #4 align 64 {
entry:
  %pkt_info = alloca %struct.odm_per_pkt_info, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %phy_info = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 35
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pkt_info) #7
  %2 = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pkt_info, i32 0, i32 1
  %3 = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pkt_info, i32 0, i32 2
  %4 = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pkt_info, i32 0, i32 3
  %5 = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pkt_info, i32 0, i32 4
  %6 = call ptr @memset(ptr %pkt_info, i32 255, i32 5)
  %cmp.i = icmp eq ptr %precvframe, null
  br i1 %cmp.i, label %entry.get_recvframe_data.exit_crit_edge, label %if.end.i

entry.get_recvframe_data.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_recvframe_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_data.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 9
  %7 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_data.i, align 4
  br label %get_recvframe_data.exit

get_recvframe_data.exit:                          ; preds = %if.end.i, %entry.get_recvframe_data.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ null, %entry.get_recvframe_data.exit_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %retval.0.i, align 2
  %11 = and i16 %10, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %11)
  %cmp.i107.not = icmp eq i16 %11, 1024
  br i1 %cmp.i107.not, label %get_recvframe_data.exit.land.end18.thread.sink.split_crit_edge, label %land.lhs.true

get_recvframe_data.exit.land.end18.thread.sink.split_crit_edge: ; preds = %get_recvframe_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end18.thread.sink.split

land.lhs.true:                                    ; preds = %get_recvframe_data.exit
  %icv_err = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 21
  %12 = ptrtoint ptr %icv_err to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %icv_err, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.land.end18.thread.sink.split_crit_edge

land.lhs.true.land.end18.thread.sink.split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end18.thread.sink.split

land.lhs.true3:                                   ; preds = %land.lhs.true
  %crc_err = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 20
  %14 = ptrtoint ptr %crc_err to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %crc_err, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %land.rhs, label %land.lhs.true3.land.end18.thread.sink.split_crit_edge

land.lhs.true3.land.end18.thread.sink.split_crit_edge: ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end18.thread.sink.split

land.rhs:                                         ; preds = %land.lhs.true3
  %trunc.i = trunc i16 %10 to i2
  %rev.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i) #7
  %or.i = zext i2 %rev.i to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.update_recvframe_phyinfo_88e, i32 0, i32 %or.i
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %17 = ptrtoint ptr %retval.0.i to i32
  %add11.i = add i32 %switch.load, %17
  %sa.0.i = inttoptr i32 %add11.i to ptr
  %MacAddress.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 15, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %sa.0.i, ptr noundef dereferenceable(6) %MacAddress.i, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  %frombool = zext i1 %tobool8.not to i8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %3, align 1
  br i1 %tobool8.not, label %land.rhs12, label %land.rhs.land.end18.thread_crit_edge

land.rhs.land.end18.thread_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end18.thread

land.rhs12:                                       ; preds = %land.rhs
  %19 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %retval.0.i, align 2
  %trunc.i108 = trunc i16 %20 to i2
  %rev.i109 = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i108) #7
  %21 = sext i2 %rev.i109 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %.not171 = icmp eq i2 %rev.i109, -1
  br i1 %.not171, label %land.rhs12.land.end18_crit_edge, label %switch.lookup

land.rhs12.land.end18_crit_edge:                  ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end18

land.end18.thread.sink.split:                     ; preds = %land.lhs.true3.land.end18.thread.sink.split_crit_edge, %land.lhs.true.land.end18.thread.sink.split_crit_edge, %get_recvframe_data.exit.land.end18.thread.sink.split_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %3, align 1
  br label %land.end18.thread

land.end18.thread:                                ; preds = %land.end18.thread.sink.split, %land.rhs.land.end18.thread_crit_edge
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %4, align 1
  br label %if.else.critedge

switch.lookup:                                    ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #9
  %or.i110 = zext i2 %rev.i109 to i32
  %switch.gep166 = getelementptr inbounds [3 x i32], ptr @switch.table.update_recvframe_phyinfo_88e.1, i32 0, i32 %or.i110
  %24 = ptrtoint ptr %switch.gep166 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load167 = load i32, ptr %switch.gep166, align 4
  br label %land.end18

land.end18:                                       ; preds = %switch.lookup, %land.rhs12.land.end18_crit_edge
  %.sink16.i = phi i32 [ %switch.load167, %switch.lookup ], [ 16, %land.rhs12.land.end18_crit_edge ]
  %add10.i = add i32 %.sink16.i, %17
  %da.0.i = inttoptr i32 %add10.i to ptr
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %bcmp104 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %da.0.i, ptr noundef dereferenceable(6) %mac_addr.i, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp104)
  %tobool16.not = icmp eq i32 %bcmp104, 0
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr = load i8, ptr %3, align 1
  %frombool20 = zext i1 %tobool16.not to i8
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool20, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool22.not = icmp eq i8 %.pr, 0
  br i1 %tobool22.not, label %land.end18.if.else.critedge_crit_edge, label %land.rhs23

land.end18.if.else.critedge_crit_edge:            ; preds = %land.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.critedge

land.rhs23:                                       ; preds = %land.end18
  %27 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %retval.0.i, align 2
  %29 = and i16 %28, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %29)
  %cmp = icmp eq i16 %29, -32768
  %frombool27 = zext i1 %cmp to i8
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool27, ptr %5, align 1
  br i1 %cmp, label %if.then, label %land.rhs23.if.else_crit_edge

land.rhs23.if.else_crit_edge:                     ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #9
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw_state.i, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool32.not = icmp eq i32 %33, 0
  %spec.select = select i1 %tobool32.not, ptr null, ptr %MacAddress.i
  br label %if.end36

if.else.critedge:                                 ; preds = %land.end18.if.else.critedge_crit_edge, %land.end18.thread
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %5, align 1
  br label %if.else

if.else:                                          ; preds = %if.else.critedge, %land.rhs23.if.else_crit_edge
  %35 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %retval.0.i, align 2
  %trunc.i113 = trunc i16 %36 to i2
  %rev.i114 = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i113) #7
  %37 = sext i2 %rev.i114 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %.not = icmp eq i2 %rev.i114, -1
  br i1 %.not, label %if.else.get_sa.exit_crit_edge, label %switch.lookup168

if.else.get_sa.exit_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_sa.exit

switch.lookup168:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or.i115 = zext i2 %rev.i114 to i32
  %switch.gep169 = getelementptr inbounds [3 x i32], ptr @switch.table.update_recvframe_phyinfo_88e.2, i32 0, i32 %or.i115
  %38 = ptrtoint ptr %switch.gep169 to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load170 = load i32, ptr %switch.gep169, align 4
  br label %get_sa.exit

get_sa.exit:                                      ; preds = %switch.lookup168, %if.else.get_sa.exit_crit_edge
  %.sink16.i118 = phi i32 [ %switch.load170, %switch.lookup168 ], [ 24, %if.else.get_sa.exit_crit_edge ]
  %39 = ptrtoint ptr %retval.0.i to i32
  %add10.i119 = add i32 %.sink16.i118, %39
  %sa.0.i120 = inttoptr i32 %add10.i119 to ptr
  br label %if.end36

if.end36:                                         ; preds = %get_sa.exit, %if.then
  %sa.0 = phi ptr [ %sa.0.i120, %get_sa.exit ], [ %spec.select, %if.then ]
  %stapriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %2, align 1
  %call37 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %sa.0) #7
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call37, i32 0, i32 9
  %41 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mac_id, align 4
  %conv40 = trunc i32 %42 to i8
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv40, ptr %2, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %mcs_rate = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 30
  %44 = ptrtoint ptr %mcs_rate to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mcs_rate, align 2
  %46 = ptrtoint ptr %pkt_info to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %pkt_info, align 1
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19, i32 38
  call void @ODM_PhyStatusQuery(ptr noundef %odmpriv, ptr noundef %phy_info, ptr noundef %pphy_status, ptr noundef nonnull %pkt_info, ptr noundef %1) #7
  %psta43 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 13
  %47 = ptrtoint ptr %psta43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %psta43, align 4
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %3, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool45.not = icmp eq i8 %49, 0
  br i1 %tobool45.not, label %if.end42.if.else56_crit_edge, label %land.lhs.true47

if.end42.if.else56_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else56

land.lhs.true47:                                  ; preds = %if.end42
  %fw_state.i121 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %fw_state.i121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fw_state.i121, align 4
  %52 = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool50.not = icmp eq i32 %52, 0
  br i1 %tobool50.not, label %land.lhs.true47.if.else56_crit_edge, label %if.then51

land.lhs.true47.if.else56_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else56

if.then51:                                        ; preds = %land.lhs.true47
  br i1 %tobool38.not, label %if.then51.if.end74_crit_edge, label %if.then53

if.then51.if.end74_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then53:                                        ; preds = %if.then51
  %53 = ptrtoint ptr %psta43 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call37, ptr %psta43, align 4
  %signal_strength_data.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40
  %54 = ptrtoint ptr %signal_strength_data.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %signal_strength_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %if.then53.process_rssi.exit.i_crit_edge, label %if.then.i.i

if.then53.process_rssi.exit.i_crit_edge:          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_rssi.exit.i

if.then.i.i:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %total_num.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 2
  %56 = ptrtoint ptr %total_num.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %total_num.i.i, align 4
  %total_val.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 3
  %57 = ptrtoint ptr %total_val.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %total_val.i.i, align 4
  %58 = ptrtoint ptr %signal_strength_data.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %signal_strength_data.i.i, align 4
  br label %process_rssi.exit.i

process_rssi.exit.i:                              ; preds = %if.then.i.i, %if.then53.process_rssi.exit.i_crit_edge
  %total_num2.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 2
  %59 = ptrtoint ptr %total_num2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %total_num2.i.i, align 4
  %inc.i.i = add i32 %60, 1
  store i32 %inc.i.i, ptr %total_num2.i.i, align 4
  %SignalStrength.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 35, i32 6
  %61 = ptrtoint ptr %SignalStrength.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %SignalStrength.i.i, align 2
  %conv.i.i = zext i8 %62 to i32
  %total_val3.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 3
  %63 = ptrtoint ptr %total_val3.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %total_val3.i.i, align 4
  %add.i.i = add i32 %64, %conv.i.i
  store i32 %add.i.i, ptr %total_val3.i.i, align 4
  %div.i.i = udiv i32 %add.i.i, %inc.i.i
  %conv6.i.i = trunc i32 %div.i.i to i8
  %avg_val.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 1
  %65 = ptrtoint ptr %avg_val.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv6.i.i, ptr %avg_val.i.i, align 1
  %tobool1.not.i.i = icmp eq ptr %1, null
  %or.cond.i.i = or i1 %cmp.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %process_rssi.exit.i.if.end74_crit_edge, label %if.end.i.i

process_rssi.exit.i.if.end74_crit_edge:           ; preds = %process_rssi.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.end.i.i:                                       ; preds = %process_rssi.exit.i
  %signal_qual_data.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39
  %66 = ptrtoint ptr %signal_qual_data.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %signal_qual_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool2.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %total_num.i4.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39, i32 2
  %68 = ptrtoint ptr %total_num.i4.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %total_num.i4.i, align 4
  %total_val.i5.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39, i32 3
  %69 = ptrtoint ptr %total_val.i5.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %total_val.i5.i, align 4
  %70 = ptrtoint ptr %signal_qual_data.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %signal_qual_data.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %total_num6.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39, i32 2
  %71 = ptrtoint ptr %total_num6.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %total_num6.i.i, align 4
  %inc.i6.i = add i32 %72, 1
  store i32 %inc.i6.i, ptr %total_num6.i.i, align 4
  %SignalQuality.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 35, i32 1
  %73 = ptrtoint ptr %SignalQuality.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %SignalQuality.i.i, align 1
  %conv.i7.i = zext i8 %74 to i32
  %total_val7.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39, i32 3
  %75 = ptrtoint ptr %total_val7.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %total_val7.i.i, align 4
  %add.i8.i = add i32 %76, %conv.i7.i
  store i32 %add.i8.i, ptr %total_val7.i.i, align 4
  %div.i9.i = udiv i32 %add.i8.i, %inc.i6.i
  br label %if.end74.sink.split

if.else56:                                        ; preds = %land.lhs.true47.if.else56_crit_edge, %if.end42.if.else56_crit_edge
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %4, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool58.not = icmp eq i8 %78, 0
  br i1 %tobool58.not, label %lor.lhs.false, label %if.else56.if.then63_crit_edge

if.else56.if.then63_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false:                                    ; preds = %if.else56
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %5, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool61.not = icmp eq i8 %80, 0
  br i1 %tobool61.not, label %lor.lhs.false.if.end74_crit_edge, label %lor.lhs.false.if.then63_crit_edge

lor.lhs.false.if.then63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false.if.end74_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then63:                                        ; preds = %lor.lhs.false.if.then63_crit_edge, %if.else56.if.then63_crit_edge
  %fw_state.i125 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %fw_state.i125 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fw_state.i125, align 4
  %and.i126 = and i32 %82, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i127.not = icmp eq i32 %and.i126, 0
  %brmerge = select i1 %tobool.not.i127.not, i1 true, i1 %tobool38.not
  br i1 %brmerge, label %if.then63.if.end72_crit_edge, label %if.then69

if.then63.if.end72_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then69:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %psta43 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call37, ptr %psta43, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then63.if.end72_crit_edge
  %signal_strength_data.i.i129 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40
  %84 = ptrtoint ptr %signal_strength_data.i.i129 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %signal_strength_data.i.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i130 = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i130, label %if.end72.process_rssi.exit.i146_crit_edge, label %if.then.i.i133

if.end72.process_rssi.exit.i146_crit_edge:        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_rssi.exit.i146

if.then.i.i133:                                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %total_num.i.i131 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 2
  %86 = ptrtoint ptr %total_num.i.i131 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %total_num.i.i131, align 4
  %total_val.i.i132 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 3
  %87 = ptrtoint ptr %total_val.i.i132 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %total_val.i.i132, align 4
  %88 = ptrtoint ptr %signal_strength_data.i.i129 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %signal_strength_data.i.i129, align 4
  br label %process_rssi.exit.i146

process_rssi.exit.i146:                           ; preds = %if.then.i.i133, %if.end72.process_rssi.exit.i146_crit_edge
  %total_num2.i.i134 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 2
  %89 = ptrtoint ptr %total_num2.i.i134 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %total_num2.i.i134, align 4
  %inc.i.i135 = add i32 %90, 1
  store i32 %inc.i.i135, ptr %total_num2.i.i134, align 4
  %SignalStrength.i.i136 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 35, i32 6
  %91 = ptrtoint ptr %SignalStrength.i.i136 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %SignalStrength.i.i136, align 2
  %conv.i.i137 = zext i8 %92 to i32
  %total_val3.i.i138 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 3
  %93 = ptrtoint ptr %total_val3.i.i138 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %total_val3.i.i138, align 4
  %add.i.i139 = add i32 %94, %conv.i.i137
  store i32 %add.i.i139, ptr %total_val3.i.i138, align 4
  %div.i.i140 = udiv i32 %add.i.i139, %inc.i.i135
  %conv6.i.i141 = trunc i32 %div.i.i140 to i8
  %avg_val.i.i142 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 40, i32 1
  %95 = ptrtoint ptr %avg_val.i.i142 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv6.i.i141, ptr %avg_val.i.i142, align 1
  %tobool1.not.i.i144 = icmp eq ptr %1, null
  %or.cond.i.i145 = or i1 %cmp.i, %tobool1.not.i.i144
  br i1 %or.cond.i.i145, label %process_rssi.exit.i146.if.end74_crit_edge, label %if.end.i.i149

process_rssi.exit.i146.if.end74_crit_edge:        ; preds = %process_rssi.exit.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.end.i.i149:                                    ; preds = %process_rssi.exit.i146
  %signal_qual_data.i.i147 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39
  %96 = ptrtoint ptr %signal_qual_data.i.i147 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %signal_qual_data.i.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool2.not.i.i148 = icmp eq i8 %97, 0
  br i1 %tobool2.not.i.i148, label %if.end.i.i149.if.end5.i.i162_crit_edge, label %if.then3.i.i152

if.end.i.i149.if.end5.i.i162_crit_edge:           ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i162

if.then3.i.i152:                                  ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #9
  %total_num.i4.i150 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39, i32 2
  %98 = ptrtoint ptr %total_num.i4.i150 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %total_num.i4.i150, align 4
  %total_val.i5.i151 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39, i32 3
  %99 = ptrtoint ptr %total_val.i5.i151 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %total_val.i5.i151, align 4
  %100 = ptrtoint ptr %signal_qual_data.i.i147 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %signal_qual_data.i.i147, align 4
  br label %if.end5.i.i162

if.end5.i.i162:                                   ; preds = %if.then3.i.i152, %if.end.i.i149.if.end5.i.i162_crit_edge
  %total_num6.i.i153 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39, i32 2
  %101 = ptrtoint ptr %total_num6.i.i153 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %total_num6.i.i153, align 4
  %inc.i6.i154 = add i32 %102, 1
  store i32 %inc.i6.i154, ptr %total_num6.i.i153, align 4
  %SignalQuality.i.i155 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 35, i32 1
  %103 = ptrtoint ptr %SignalQuality.i.i155 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %SignalQuality.i.i155, align 1
  %conv.i7.i156 = zext i8 %104 to i32
  %total_val7.i.i157 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39, i32 3
  %105 = ptrtoint ptr %total_val7.i.i157 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %total_val7.i.i157, align 4
  %add.i8.i158 = add i32 %106, %conv.i7.i156
  store i32 %add.i8.i158, ptr %total_val7.i.i157, align 4
  %div.i9.i159 = udiv i32 %add.i8.i158, %inc.i6.i154
  br label %if.end74.sink.split

if.end74.sink.split:                              ; preds = %if.end5.i.i162, %if.end5.i.i
  %div.i9.i159.sink = phi i32 [ %div.i9.i159, %if.end5.i.i162 ], [ %div.i9.i, %if.end5.i.i ]
  %conv10.i.i160 = trunc i32 %div.i9.i159.sink to i8
  %avg_val.i10.i161 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 39, i32 1
  %107 = ptrtoint ptr %avg_val.i10.i161 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv10.i.i160, ptr %avg_val.i10.i161, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.end74.sink.split, %process_rssi.exit.i146.if.end74_crit_edge, %lor.lhs.false.if.end74_crit_edge, %process_rssi.exit.i.if.end74_crit_edge, %if.then51.if.end74_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pkt_info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_PhyStatusQuery(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
