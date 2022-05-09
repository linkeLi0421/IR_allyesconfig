; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_iol.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_iol.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ioreg_cfg = type { i8, i8, i16, i32, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, i32, [8 x ptr], i32, [8 x i8], [8 x i32] }
%struct.dvobj_priv = type { ptr, i8, i8, i32, [3 x i32], [8 x i8], i8, %struct.rt_firmware, i8, i8, i32, %struct.semaphore, %struct.mutex, ptr, ptr, %struct.atomic_t, i8 }
%struct.rt_firmware = type { ptr, i32 }

@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_IOL_accquire_xmit_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 15, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: %s rtw_alloc_xmitframe return null\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw_IOL_accquire_xmit_frame\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/r8188eu/core/rtw_iol.c\00", [57 x i8] zeroinitializer }, align 32
@rtw_IOL_accquire_xmit_frame._entry_ptr = internal global ptr @rtw_IOL_accquire_xmit_frame._entry, section ".printk_index", align 4
@rtw_IOL_accquire_xmit_frame._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: %s rtw_alloc_xmitbuf return null\0A\00", [51 x i8] zeroinitializer }, align 32
@rtw_IOL_accquire_xmit_frame._entry_ptr.5 = internal global ptr @rtw_IOL_accquire_xmit_frame._entry.3, section ".printk_index", align 4
@rtw_IOL_append_cmds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016R8188EU: %s %u is large than MAX_XMITBUF_SZ:%u, can't accommodate new cmds\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_IOL_append_cmds\00", [44 x i8] zeroinitializer }, align 32
@rtw_IOL_append_cmds._entry_ptr = internal global ptr @rtw_IOL_append_cmds._entry, section ".printk_index", align 4
@__const._rtw_IOL_append_WB_cmd.cmd = private unnamed_addr constant %struct.ioreg_cfg { i8 8, i8 4, i16 0, i32 0, i32 0 }, align 4
@__const._rtw_IOL_append_WW_cmd.cmd = private unnamed_addr constant %struct.ioreg_cfg { i8 8, i8 5, i16 0, i32 0, i32 0 }, align 4
@__const._rtw_IOL_append_WD_cmd.cmd = private unnamed_addr constant %struct.ioreg_cfg { i8 8, i8 6, i16 0, i32 0, i32 0 }, align 4
@__const._rtw_IOL_append_WRF_cmd.cmd = private unnamed_addr constant %struct.ioreg_cfg { i8 8, i8 7, i16 0, i32 0, i32 0 }, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 15, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 21, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [42 x i8] c"../drivers/staging/r8188eu/core/rtw_iol.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 52, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @rtw_IOL_accquire_xmit_frame._entry, ptr @rtw_IOL_accquire_xmit_frame._entry.3, ptr @rtw_IOL_accquire_xmit_frame._entry_ptr, ptr @rtw_IOL_accquire_xmit_frame._entry_ptr.5, ptr @rtw_IOL_append_cmds._entry, ptr @rtw_IOL_append_cmds._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_IOL_accquire_xmit_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_IOL_accquire_xmit_frame._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_IOL_append_cmds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_IOL_accquire_xmit_frame(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %call = tail call ptr @rtw_alloc_xmitframe(ptr noundef %xmitpriv) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call ptr @rtw_alloc_xmitbuf(ptr noundef %xmitpriv) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.body10, label %if.end22

do.body10:                                        ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp11 = icmp ugt i32 %1, 4
  br i1 %cmp11, label %do.end15, label %do.body10.do.end20_crit_edge

do.body10.do.end20_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %do.body10.do.end20_crit_edge
  %call21 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call) #6
  br label %cleanup

if.end22:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %frame_tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %frame_tag, align 4
  %pxmitbuf = getelementptr inbounds %struct.xmit_frame, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %pxmitbuf, align 4
  %pbuf = getelementptr inbounds %struct.xmit_buf, ptr %call7, i32 0, i32 3
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pbuf, align 4
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %buf_addr, align 4
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %call7, i32 0, i32 4
  %7 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %priv_data, align 4
  %attrib = getelementptr inbounds %struct.xmit_frame, ptr %call, i32 0, i32 1
  tail call void @update_mgntframe_attrib(ptr noundef %adapter, ptr noundef %attrib) #6
  %qsel = getelementptr inbounds %struct.xmit_frame, ptr %call, i32 0, i32 1, i32 35
  %8 = ptrtoint ptr %qsel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %qsel, align 1
  %subtype = getelementptr inbounds %struct.xmit_frame, ptr %call, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %subtype, align 1
  %pktlen = getelementptr inbounds %struct.xmit_frame, ptr %call, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pktlen, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %last_txcmdsz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end20, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end22 ], [ null, %do.end20 ], [ null, %do.end ], [ null, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_xmitframe(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_xmitbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_xmitframe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_mgntframe_attrib(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_IOL_append_cmds(ptr nocapture noundef %xmit_frame, ptr nocapture noundef readonly %IOL_cmds, i32 noundef %cmd_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pktlen = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pktlen, align 4
  %add1 = add i32 %cmd_len, 48
  %add2 = add i32 %add1, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %add2)
  %cmp = icmp ugt i32 %add2, 20480
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp4 = icmp ugt i32 %2, 4
  br i1 %cmp4, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add2, i32 noundef 20480) #9
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 5
  %3 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_addr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 40
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %1
  %5 = call ptr @memcpy(ptr %add.ptr15, ptr %IOL_cmds, i32 %cmd_len)
  %6 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pktlen, align 4
  %add17 = add i32 %7, %cmd_len
  store i32 %add17, ptr %pktlen, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 9
  %8 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_txcmdsz, align 4
  %add18 = add i32 %9, %cmd_len
  store i32 %add18, ptr %last_txcmdsz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtw_IOL_applied(ptr nocapture noundef readonly %adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_iol = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 54
  %0 = ptrtoint ptr %fw_iol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_iol, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end8_crit_edge [
    i8 1, label %entry.return_crit_edge
    i8 2, label %land.lhs.true
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %3 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvobj, align 4
  %ishighspeed = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %ishighspeed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ishighspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %return

return:                                           ; preds = %if.end8, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end8 ], [ true, %entry.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_IOL_append_WB_cmd(ptr nocapture noundef %xmit_frame, i16 noundef zeroext %addr, i8 noundef zeroext %value, i8 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.ioreg_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd)
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const._rtw_IOL_append_WB_cmd.cmd, i32 12)
  %1 = tail call i16 @llvm.bswap.i16(i16 %addr)
  %cmd.2.cmd.2.address.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 2
  %2 = ptrtoint ptr %cmd.2.cmd.2.address.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %cmd.2.cmd.2.address.sroa_idx, align 2
  %conv = zext i8 %value to i32
  %3 = shl nuw i32 %conv, 24
  %cmd.4.cmd.4.data.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 4
  %4 = ptrtoint ptr %cmd.4.cmd.4.data.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cmd.4.cmd.4.data.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %mask)
  %cmp.not = icmp eq i8 %mask, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1 = zext i8 %mask to i32
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %cmd, align 4
  %6 = shl nuw i32 %conv1, 24
  %cmd.8.cmd.8.mask4.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 8
  %7 = ptrtoint ptr %cmd.8.cmd.8.mask4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cmd.8.cmd.8.mask4.sroa_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %8)
  %cmd.0.cmd.0. = load i8, ptr %cmd, align 4
  %conv6 = zext i8 %cmd.0.cmd.0. to i32
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pktlen.i, align 4
  %add1.i = add nuw nsw i32 %conv6, 48
  %add2.i = add i32 %add1.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %add2.i)
  %cmp.i = icmp ugt i32 %add2.i, 20480
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp4.i = icmp ugt i32 %11, 4
  br i1 %cmp4.i, label %do.end.i, label %do.body.i.rtw_IOL_append_cmds.exit_crit_edge

do.body.i.rtw_IOL_append_cmds.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_IOL_append_cmds.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add2.i, i32 noundef 20480) #9
  br label %rtw_IOL_append_cmds.exit

if.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 5
  %12 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 40
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %10
  %14 = call ptr @memcpy(ptr %add.ptr15.i, ptr %cmd, i32 %conv6)
  %15 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pktlen.i, align 4
  %add17.i = add i32 %16, %conv6
  store i32 %add17.i, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_txcmdsz.i, align 4
  %add18.i = add i32 %18, %conv6
  store i32 %add18.i, ptr %last_txcmdsz.i, align 4
  br label %rtw_IOL_append_cmds.exit

rtw_IOL_append_cmds.exit:                         ; preds = %if.end12.i, %do.end.i, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end12.i ], [ 0, %do.end.i ], [ 0, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd)
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_IOL_append_WW_cmd(ptr nocapture noundef %xmit_frame, i16 noundef zeroext %addr, i16 noundef zeroext %value, i16 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.ioreg_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd)
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const._rtw_IOL_append_WW_cmd.cmd, i32 12)
  %1 = tail call i16 @llvm.bswap.i16(i16 %addr)
  %cmd.2.cmd.2.address.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 2
  %2 = ptrtoint ptr %cmd.2.cmd.2.address.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %cmd.2.cmd.2.address.sroa_idx, align 2
  %conv = zext i16 %value to i32
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %cmd.4.cmd.4.data.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 4
  %4 = ptrtoint ptr %cmd.4.cmd.4.data.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cmd.4.cmd.4.data.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %mask)
  %cmp.not = icmp eq i16 %mask, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1 = zext i16 %mask to i32
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %cmd, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv1)
  %cmd.8.cmd.8.mask4.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 8
  %7 = ptrtoint ptr %cmd.8.cmd.8.mask4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cmd.8.cmd.8.mask4.sroa_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %8)
  %cmd.0.cmd.0. = load i8, ptr %cmd, align 4
  %conv6 = zext i8 %cmd.0.cmd.0. to i32
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pktlen.i, align 4
  %add1.i = add nuw nsw i32 %conv6, 48
  %add2.i = add i32 %add1.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %add2.i)
  %cmp.i = icmp ugt i32 %add2.i, 20480
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp4.i = icmp ugt i32 %11, 4
  br i1 %cmp4.i, label %do.end.i, label %do.body.i.rtw_IOL_append_cmds.exit_crit_edge

do.body.i.rtw_IOL_append_cmds.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_IOL_append_cmds.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add2.i, i32 noundef 20480) #9
  br label %rtw_IOL_append_cmds.exit

if.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 5
  %12 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 40
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %10
  %14 = call ptr @memcpy(ptr %add.ptr15.i, ptr %cmd, i32 %conv6)
  %15 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pktlen.i, align 4
  %add17.i = add i32 %16, %conv6
  store i32 %add17.i, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_txcmdsz.i, align 4
  %add18.i = add i32 %18, %conv6
  store i32 %add18.i, ptr %last_txcmdsz.i, align 4
  br label %rtw_IOL_append_cmds.exit

rtw_IOL_append_cmds.exit:                         ; preds = %if.end12.i, %do.end.i, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end12.i ], [ 0, %do.end.i ], [ 0, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_IOL_append_WD_cmd(ptr nocapture noundef %xmit_frame, i16 noundef zeroext %addr, i32 noundef %value, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.ioreg_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd)
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const._rtw_IOL_append_WD_cmd.cmd, i32 12)
  %1 = tail call i16 @llvm.bswap.i16(i16 %addr)
  %cmd.2.cmd.2.address.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 2
  %2 = ptrtoint ptr %cmd.2.cmd.2.address.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %cmd.2.cmd.2.address.sroa_idx, align 2
  %3 = tail call i32 @llvm.bswap.i32(i32 %value)
  %cmd.4.cmd.4.data.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 4
  %4 = ptrtoint ptr %cmd.4.cmd.4.data.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cmd.4.cmd.4.data.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask)
  %cmp.not = icmp eq i32 %mask, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %cmd, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %cmd.8.cmd.8.mask1.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 8
  %7 = ptrtoint ptr %cmd.8.cmd.8.mask1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cmd.8.cmd.8.mask1.sroa_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %8)
  %cmd.0.cmd.0. = load i8, ptr %cmd, align 4
  %conv = zext i8 %cmd.0.cmd.0. to i32
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pktlen.i, align 4
  %add1.i = add nuw nsw i32 %conv, 48
  %add2.i = add i32 %add1.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %add2.i)
  %cmp.i = icmp ugt i32 %add2.i, 20480
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp4.i = icmp ugt i32 %11, 4
  br i1 %cmp4.i, label %do.end.i, label %do.body.i.rtw_IOL_append_cmds.exit_crit_edge

do.body.i.rtw_IOL_append_cmds.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_IOL_append_cmds.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add2.i, i32 noundef 20480) #9
  br label %rtw_IOL_append_cmds.exit

if.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 5
  %12 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 40
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %10
  %14 = call ptr @memcpy(ptr %add.ptr15.i, ptr %cmd, i32 %conv)
  %15 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pktlen.i, align 4
  %add17.i = add i32 %16, %conv
  store i32 %add17.i, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_txcmdsz.i, align 4
  %add18.i = add i32 %18, %conv
  store i32 %add18.i, ptr %last_txcmdsz.i, align 4
  br label %rtw_IOL_append_cmds.exit

rtw_IOL_append_cmds.exit:                         ; preds = %if.end12.i, %do.end.i, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end12.i ], [ 0, %do.end.i ], [ 0, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_IOL_append_WRF_cmd(ptr nocapture noundef %xmit_frame, i8 noundef zeroext %rf_path, i16 noundef zeroext %addr, i32 noundef %value, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.ioreg_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd)
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const._rtw_IOL_append_WRF_cmd.cmd, i32 12)
  %conv = zext i8 %rf_path to i16
  %shl = shl nuw i16 %conv, 8
  %1 = and i16 %addr, 255
  %or = or i16 %shl, %1
  %2 = tail call i16 @llvm.bswap.i16(i16 %or)
  %cmd.2.cmd.2.address.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 2
  %3 = ptrtoint ptr %cmd.2.cmd.2.address.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %cmd.2.cmd.2.address.sroa_idx, align 2
  %4 = tail call i32 @llvm.bswap.i32(i32 %value)
  %cmd.4.cmd.4.data.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 4
  %5 = ptrtoint ptr %cmd.4.cmd.4.data.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cmd.4.cmd.4.data.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %mask)
  %cmp.not = icmp eq i32 %mask, 1048575
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %cmd, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %cmd.8.cmd.8.mask4.sroa_idx = getelementptr inbounds i8, ptr %cmd, i32 8
  %8 = ptrtoint ptr %cmd.8.cmd.8.mask4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cmd.8.cmd.8.mask4.sroa_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %9)
  %cmd.0.cmd.0. = load i8, ptr %cmd, align 4
  %conv6 = zext i8 %cmd.0.cmd.0. to i32
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pktlen.i, align 4
  %add1.i = add nuw nsw i32 %conv6, 48
  %add2.i = add i32 %add1.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %add2.i)
  %cmp.i = icmp ugt i32 %add2.i, 20480
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %12 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp4.i = icmp ugt i32 %12, 4
  br i1 %cmp4.i, label %do.end.i, label %do.body.i.rtw_IOL_append_cmds.exit_crit_edge

do.body.i.rtw_IOL_append_cmds.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_IOL_append_cmds.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add2.i, i32 noundef 20480) #9
  br label %rtw_IOL_append_cmds.exit

if.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 5
  %13 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 40
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %11
  %15 = call ptr @memcpy(ptr %add.ptr15.i, ptr %cmd, i32 %conv6)
  %16 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pktlen.i, align 4
  %add17.i = add i32 %17, %conv6
  store i32 %add17.i, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_txcmdsz.i, align 4
  %add18.i = add i32 %19, %conv6
  store i32 %add18.i, ptr %last_txcmdsz.i, align 4
  br label %rtw_IOL_append_cmds.exit

rtw_IOL_append_cmds.exit:                         ; preds = %if.end12.i, %do.end.i, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end12.i ], [ 0, %do.end.i ], [ 0, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_IOL_append_DELAY_US_cmd(ptr nocapture noundef %xmit_frame, i16 noundef zeroext %us) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pktlen.i, align 4
  %add2.i = add i32 %1, 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %add2.i)
  %cmp.i = icmp ugt i32 %add2.i, 20480
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp4.i = icmp ugt i32 %2, 4
  br i1 %cmp4.i, label %do.end.i, label %do.body.i.rtw_IOL_append_cmds.exit_crit_edge

do.body.i.rtw_IOL_append_cmds.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_IOL_append_cmds.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add2.i, i32 noundef 20480) #9
  br label %rtw_IOL_append_cmds.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call i16 @llvm.bswap.i16(i16 %us)
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %1
  %6 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 1040, ptr %add.ptr15.i, align 1
  %cmd.sroa.4.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 2
  %7 = ptrtoint ptr %cmd.sroa.4.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %3, ptr %cmd.sroa.4.0.add.ptr15.i.sroa_idx, align 1
  %8 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pktlen.i, align 4
  %add17.i = add i32 %9, 4
  store i32 %add17.i, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_txcmdsz.i, align 4
  %add18.i = add i32 %11, 4
  store i32 %add18.i, ptr %last_txcmdsz.i, align 4
  br label %rtw_IOL_append_cmds.exit

rtw_IOL_append_cmds.exit:                         ; preds = %if.end12.i, %do.end.i, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end12.i ], [ 0, %do.end.i ], [ 0, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_IOL_append_DELAY_MS_cmd(ptr nocapture noundef %xmit_frame, i16 noundef zeroext %ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pktlen.i, align 4
  %add2.i = add i32 %1, 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %add2.i)
  %cmp.i = icmp ugt i32 %add2.i, 20480
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp4.i = icmp ugt i32 %2, 4
  br i1 %cmp4.i, label %do.end.i, label %do.body.i.rtw_IOL_append_cmds.exit_crit_edge

do.body.i.rtw_IOL_append_cmds.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_IOL_append_cmds.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add2.i, i32 noundef 20480) #9
  br label %rtw_IOL_append_cmds.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call i16 @llvm.bswap.i16(i16 %ms)
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %1
  %6 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 1040, ptr %add.ptr15.i, align 1
  %cmd.sroa.4.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 2
  %7 = ptrtoint ptr %cmd.sroa.4.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %3, ptr %cmd.sroa.4.0.add.ptr15.i.sroa_idx, align 1
  %8 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pktlen.i, align 4
  %add17.i = add i32 %9, 4
  store i32 %add17.i, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_txcmdsz.i, align 4
  %add18.i = add i32 %11, 4
  store i32 %add18.i, ptr %last_txcmdsz.i, align 4
  br label %rtw_IOL_append_cmds.exit

rtw_IOL_append_cmds.exit:                         ; preds = %if.end12.i, %do.end.i, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end12.i ], [ 0, %do.end.i ], [ 0, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_IOL_append_END_cmd(ptr nocapture noundef %xmit_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pktlen.i, align 4
  %add2.i = add i32 %1, 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %add2.i)
  %cmp.i = icmp ugt i32 %add2.i, 20480
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp4.i = icmp ugt i32 %2, 4
  br i1 %cmp4.i, label %do.end.i, label %do.body.i.rtw_IOL_append_cmds.exit_crit_edge

do.body.i.rtw_IOL_append_cmds.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_IOL_append_cmds.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add2.i, i32 noundef 20480) #9
  br label %rtw_IOL_append_cmds.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 5
  %3 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 40
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %1
  %5 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 83886079, ptr %add.ptr15.i, align 1
  %6 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pktlen.i, align 4
  %add17.i = add i32 %7, 4
  store i32 %add17.i, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 9
  %8 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_txcmdsz.i, align 4
  %add18.i = add i32 %9, 4
  store i32 %add18.i, ptr %last_txcmdsz.i, align 4
  br label %rtw_IOL_append_cmds.exit

rtw_IOL_append_cmds.exit:                         ; preds = %if.end12.i, %do.end.i, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end12.i ], [ 0, %do.end.i ], [ 0, %do.body.i.rtw_IOL_append_cmds.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_IOL_cmd_boundary_handle(ptr nocapture noundef %pxmit_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pktlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmit_frame, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pktlen, align 4
  %add = add i32 %1, 32
  %rem = and i32 %add, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %rem)
  %cmp = icmp eq i32 %rem, 248
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %add2.i.i = add i32 %1, 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %add2.i.i)
  %cmp.i.i = icmp ugt i32 %add2.i.i, 20480
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end12.i.i

do.body.i.i:                                      ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp4.i.i = icmp ugt i32 %2, 4
  br i1 %cmp4.i.i, label %do.end.i.i, label %do.body.i.i.rtw_IOL_append_END_cmd.exit_crit_edge

do.body.i.i.rtw_IOL_append_END_cmd.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_IOL_append_END_cmd.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add2.i.i, i32 noundef 20480) #9
  br label %rtw_IOL_append_END_cmd.exit

if.end12.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmit_frame, i32 0, i32 5
  %3 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 40
  %add.ptr15.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %1
  %5 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 83886079, ptr %add.ptr15.i.i, align 1
  %6 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pktlen, align 4
  %add17.i.i = add i32 %7, 4
  store i32 %add17.i.i, ptr %pktlen, align 4
  br label %rtw_IOL_append_END_cmd.exit

rtw_IOL_append_END_cmd.exit:                      ; preds = %if.end12.i.i, %do.end.i.i, %do.body.i.i.rtw_IOL_append_END_cmd.exit_crit_edge
  %8 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pktlen, align 4
  %10 = add i32 %9, 288
  %mul = and i32 %10, -256
  store i32 %mul, ptr %pktlen, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmit_frame, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %last_txcmdsz, align 4
  br label %if.end

if.end:                                           ; preds = %rtw_IOL_append_END_cmd.exit, %entry.if.end_crit_edge
  %is_cmd_bndy.0 = phi i8 [ 1, %rtw_IOL_append_END_cmd.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i8 %is_cmd_bndy.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_iol.c", i32 15, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtw_IOL_accquire_xmit_frame._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtw_IOL_accquire_xmit_frame._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_iol.c", i32 21, i32 3}
!8 = !{ptr @rtw_IOL_accquire_xmit_frame._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtw_IOL_accquire_xmit_frame._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/core/rtw_iol.c", i32 52, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rtw_IOL_append_cmds._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @rtw_IOL_append_cmds._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
