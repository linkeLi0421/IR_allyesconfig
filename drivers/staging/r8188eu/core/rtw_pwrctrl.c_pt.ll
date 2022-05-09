; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_pwrctrl.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_pwrctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, i16, i8, i8, i32, i64, i8, i8, i8, i16, i8 }
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

@ips_enter.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8188eu\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ips_enter\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/r8188eu/core/rtw_pwrctrl.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"There are some pkts to transmit\0A\00", [63 x i8] zeroinitializer }, align 32
@ips_enter.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"free_xmitbuf_cnt: %d, free_xmit_extbuf_cnt: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@ips_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016R8188EU: ==>ips_enter cnts:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ips_enter._entry_ptr = internal global ptr @ips_enter._entry, section ".printk_index", align 4
@ips_enter.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nolinked power save enter\0A\00", [37 x i8] zeroinitializer }, align 32
@ips_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016R8188EU: ==>ips_leave cnts:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ips_leave\00", [22 x i8] zeroinitializer }, align 32
@ips_leave._entry_ptr = internal global ptr @ips_leave._entry, section ".printk_index", align 4
@ips_leave.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nolinked power save leave\0A\00", [37 x i8] zeroinitializer }, align 32
@ips_leave._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: ==>%s, channel(%d), processing(%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@ips_leave._entry_ptr.12 = internal global ptr @ips_leave._entry.10, section ".printk_index", align 4
@ips_leave._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: ==> ips_leave.....LED(0x%08x)...\0A\00", [51 x i8] zeroinitializer }, align 32
@ips_leave._entry_ptr.15 = internal global ptr @ips_leave._entry.13, section ".printk_index", align 4
@rtw_ps_processor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: ==>%s .fw_state(%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_ps_processor\00", [47 x i8] zeroinitializer }, align 32
@rtw_ps_processor._entry_ptr = internal global ptr @rtw_ps_processor._entry, section ".printk_index", align 4
@rtw_set_ps_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016R8188EU: rtw_set_ps_mode: Leave 802.11 power save\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_set_ps_mode\00", [16 x i8] zeroinitializer }, align 32
@rtw_set_ps_mode._entry_ptr = internal global ptr @rtw_set_ps_mode._entry, section ".printk_index", align 4
@rtw_set_ps_mode._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016R8188EU: %s: Enter 802.11 power save\0A\00", [56 x i8] zeroinitializer }, align 32
@rtw_set_ps_mode._entry_ptr.22 = internal global ptr @rtw_set_ps_mode._entry.20, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@LPS_RF_ON_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: %s: device surprise removed!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LPS_RF_ON_check\00", [16 x i8] zeroinitializer }, align 32
@LPS_RF_ON_check._entry_ptr = internal global ptr @LPS_RF_ON_check._entry, section ".printk_index", align 4
@LPS_RF_ON_check._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016R8188EU: %s: Wait for FW LPS leave more than %u ms!!!\0A\00", [39 x i8] zeroinitializer }, align 32
@LPS_RF_ON_check._entry_ptr.27 = internal global ptr @LPS_RF_ON_check._entry.25, section ".printk_index", align 4
@LPS_Enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016R8188EU: %s smart_ps:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LPS_Enter\00", [22 x i8] zeroinitializer }, align 32
@LPS_Enter._entry_ptr = internal global ptr @LPS_Enter._entry, section ".printk_index", align 4
@rtw_init_pwrctrl_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pwrctrlpriv->lock\00", [45 x i8] zeroinitializer }, align 32
@rtw_init_pwrctrl_priv.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(&pwrctrlpriv->pwr_state_check_timer)\00", [58 x i8] zeroinitializer }, align 32
@_rtw_pwr_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: %s wait ps_processing...\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_rtw_pwr_wakeup\00", [16 x i8] zeroinitializer }, align 32
@_rtw_pwr_wakeup._entry_ptr = internal global ptr @_rtw_pwr_wakeup._entry, section ".printk_index", align 4
@_rtw_pwr_wakeup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: %s wait ps_processing timeout\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtw_pwr_wakeup._entry_ptr.37 = internal global ptr @_rtw_pwr_wakeup._entry.35, section ".printk_index", align 4
@_rtw_pwr_wakeup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016R8188EU: %s wait ps_processing done\0A\00", [57 x i8] zeroinitializer }, align 32
@_rtw_pwr_wakeup._entry_ptr.40 = internal global ptr @_rtw_pwr_wakeup._entry.38, section ".printk_index", align 4
@_rtw_pwr_wakeup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016R8188EU: %s wait bInSuspend timeout\0A\00", [57 x i8] zeroinitializer }, align 32
@_rtw_pwr_wakeup._entry_ptr.43 = internal global ptr @_rtw_pwr_wakeup._entry.41, section ".printk_index", align 4
@_rtw_pwr_wakeup._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016R8188EU: %s wait bInSuspend done\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtw_pwr_wakeup._entry_ptr.46 = internal global ptr @_rtw_pwr_wakeup._entry.44, section ".printk_index", align 4
@_rtw_pwr_wakeup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.34, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016R8188EU: %s call ips_leave....\0A\00", [62 x i8] zeroinitializer }, align 32
@_rtw_pwr_wakeup._entry_ptr.49 = internal global ptr @_rtw_pwr_wakeup._entry.47, section ".printk_index", align 4
@_rtw_pwr_wakeup._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.34, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016R8188EU: ======> ips_leave fail.............\0A\00", [48 x i8] zeroinitializer }, align 32
@_rtw_pwr_wakeup._entry_ptr.52 = internal global ptr @_rtw_pwr_wakeup._entry.50, section ".printk_index", align 4
@_rtw_pwr_wakeup._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.34, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016R8188EU: %s: bDriverStopped=%d, bup=%d, hw_init_completed =%u\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtw_pwr_wakeup._entry_ptr.55 = internal global ptr @_rtw_pwr_wakeup._entry.53, section ".printk_index", align 4
@rtw_pm_set_ips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016R8188EU: %s %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_pm_set_ips\00", [17 x i8] zeroinitializer }, align 32
@rtw_pm_set_ips._entry_ptr = internal global ptr @rtw_pm_set_ips._entry, section ".printk_index", align 4
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IPS_NORMAL\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IPS_LEVEL_2\00", [20 x i8] zeroinitializer }, align 32
@rtw_pm_set_ips._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtw_pm_set_ips._entry_ptr.61 = internal global ptr @rtw_pm_set_ips._entry.60, section ".printk_index", align 4
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IPS_NONE\00", [23 x i8] zeroinitializer }, align 32
@PS_RDY_CHECK._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016R8188EU: Group handshake still in progress !!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PS_RDY_CHECK\00", [19 x i8] zeroinitializer }, align 32
@PS_RDY_CHECK._entry_ptr = internal global ptr @PS_RDY_CHECK._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 18, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 20, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 35, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 38, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 65, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 71, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 74, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 86, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 151, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 216, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 223, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 258, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 264, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 289, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 343, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 367, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 388, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 392, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 394, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 404, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 406, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 415, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 417, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 426, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 468, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 472, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [46 x i8] c"../drivers/staging/r8188eu/core/rtw_pwrctrl.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 190, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @LPS_Enter._entry, ptr @LPS_Enter._entry_ptr, ptr @LPS_RF_ON_check._entry, ptr @LPS_RF_ON_check._entry.25, ptr @LPS_RF_ON_check._entry_ptr, ptr @LPS_RF_ON_check._entry_ptr.27, ptr @PS_RDY_CHECK._entry, ptr @PS_RDY_CHECK._entry_ptr, ptr @_rtw_pwr_wakeup._entry, ptr @_rtw_pwr_wakeup._entry.35, ptr @_rtw_pwr_wakeup._entry.38, ptr @_rtw_pwr_wakeup._entry.41, ptr @_rtw_pwr_wakeup._entry.44, ptr @_rtw_pwr_wakeup._entry.47, ptr @_rtw_pwr_wakeup._entry.50, ptr @_rtw_pwr_wakeup._entry.53, ptr @_rtw_pwr_wakeup._entry_ptr, ptr @_rtw_pwr_wakeup._entry_ptr.37, ptr @_rtw_pwr_wakeup._entry_ptr.40, ptr @_rtw_pwr_wakeup._entry_ptr.43, ptr @_rtw_pwr_wakeup._entry_ptr.46, ptr @_rtw_pwr_wakeup._entry_ptr.49, ptr @_rtw_pwr_wakeup._entry_ptr.52, ptr @_rtw_pwr_wakeup._entry_ptr.55, ptr @ips_enter._entry, ptr @ips_enter._entry_ptr, ptr @ips_leave._entry, ptr @ips_leave._entry.10, ptr @ips_leave._entry.13, ptr @ips_leave._entry_ptr, ptr @ips_leave._entry_ptr.12, ptr @ips_leave._entry_ptr.15, ptr @rtw_pm_set_ips._entry, ptr @rtw_pm_set_ips._entry.60, ptr @rtw_pm_set_ips._entry_ptr, ptr @rtw_pm_set_ips._entry_ptr.61, ptr @rtw_ps_processor._entry, ptr @rtw_ps_processor._entry_ptr, ptr @rtw_set_ps_mode._entry, ptr @rtw_set_ps_mode._entry.20, ptr @rtw_set_ps_mode._entry_ptr, ptr @rtw_set_ps_mode._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @rtw_init_pwrctrl_priv.__key, ptr @.str.30, ptr @rtw_init_pwrctrl_priv.__key.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ips_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ips_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ips_leave._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ips_leave._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ps_processor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_set_ps_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_set_ps_mode._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LPS_RF_ON_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LPS_RF_ON_check._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LPS_Enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_pwrctrl_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_pwrctrl_priv.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_pwr_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_pwr_wakeup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_pwr_wakeup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_pwr_wakeup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_pwr_wakeup._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_pwr_wakeup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_pwr_wakeup._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_pwr_wakeup._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pm_set_ips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pm_set_ips._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PS_RDY_CHECK._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ips_enter(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrctrlpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14
  %free_xmitbuf_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 35
  %0 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_xmitbuf_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2

lor.lhs.false:                                    ; preds = %entry
  %free_xmit_extbuf_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 39
  %2 = ptrtoint ptr %free_xmit_extbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_xmit_extbuf_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp1.not = icmp eq i32 %3, 32
  br i1 %cmp1.not, label %if.end30, label %lor.lhs.false.do.body2_crit_edge

lor.lhs.false.do.body2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2

do.body2:                                         ; preds = %lor.lhs.false.do.body2_crit_edge, %entry.do.body2_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ips_enter.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ips_enter, %if.then5)) #4
          to label %do.body9 [label %if.then5], !srcloc !124

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %4 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ips_enter.__UNIQUE_ID_ddebug346, ptr noundef %5, ptr noundef nonnull @.str.3) #4
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %do.body2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ips_enter.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ips_enter, %if.then21)) #4
          to label %cleanup [label %if.then21], !srcloc !124

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %pnetdev22 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %6 = ptrtoint ptr %pnetdev22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pnetdev22, align 4
  %8 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %free_xmitbuf_cnt, align 8
  %free_xmit_extbuf_cnt24 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 39
  %10 = ptrtoint ptr %free_xmit_extbuf_cnt24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmit_extbuf_cnt24, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ips_enter.__UNIQUE_ID_ddebug347, ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %9, i32 noundef %11) #4
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef %pwrctrlpriv, i32 noundef 0) #4
  %bips_processing = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 15
  %12 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %bips_processing, align 4
  %ips_mode_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 14
  %13 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ips_mode_req, align 1
  %ips_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 13
  %15 = ptrtoint ptr %ips_mode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ips_mode, align 4
  %ips_enter_cnts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 11
  %16 = ptrtoint ptr %ips_enter_cnts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ips_enter_cnts, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %ips_enter_cnts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %18 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp32 = icmp ugt i32 %18, 4
  br i1 %cmp32, label %do.end36, label %if.end30.do.end42_crit_edge

if.end30.do.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end42

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %inc) #7
  br label %do.end42

do.end42:                                         ; preds = %do.end36, %if.end30.do.end42_crit_edge
  %change_rfpwrstate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 32
  %19 = ptrtoint ptr %change_rfpwrstate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %change_rfpwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp43 = icmp eq i32 %20, 2
  br i1 %cmp43, label %if.then44, label %do.end42.if.end70_crit_edge

do.end42.if.end70_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then44:                                        ; preds = %do.end42
  %bpower_saving = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 6
  %21 = ptrtoint ptr %bpower_saving to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %bpower_saving, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ips_enter.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ips_enter, %if.then58)) #4
          to label %do.end64 [label %if.then58], !srcloc !124

if.then58:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  %pnetdev59 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %22 = ptrtoint ptr %pnetdev59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pnetdev59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ips_enter.__UNIQUE_ID_ddebug348, ptr noundef %23, ptr noundef nonnull @.str.6) #4
  br label %do.end64

do.end64:                                         ; preds = %if.then58, %if.then44
  %24 = ptrtoint ptr %ips_mode to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ips_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp66 = icmp eq i8 %25, 2
  br i1 %cmp66, label %if.then68, label %do.end64.if.end69_crit_edge

do.end64.if.end69_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then68:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #6
  %bkeepfwalive = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 34
  %26 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %bkeepfwalive, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %do.end64.if.end69_crit_edge
  tail call void @rtw_ips_pwr_down(ptr noundef %padapter) #4
  %rf_pwrstate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 31
  %27 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %rf_pwrstate, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %do.end42.if.end70_crit_edge
  %28 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bips_processing, align 4
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then21, %do.body9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ips_pwr_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ips_leave(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrctrlpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %pwrctrlpriv, i32 noundef 0) #4
  %rf_pwrstate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 31
  %0 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end72_crit_edge

entry.if.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

land.lhs.true:                                    ; preds = %entry
  %bips_processing = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 15
  %2 = ptrtoint ptr %bips_processing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bips_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %bips_processing, align 4
  %change_rfpwrstate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 32
  %5 = ptrtoint ptr %change_rfpwrstate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %change_rfpwrstate, align 4
  %ips_leave_cnts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 12
  %6 = ptrtoint ptr %ips_leave_cnts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ips_leave_cnts, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %ips_leave_cnts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %8 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp2 = icmp ugt i32 %8, 4
  br i1 %cmp2, label %do.end, label %if.then.do.end7_crit_edge

if.then.do.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %inc) #7
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.then.do.end7_crit_edge
  %call8 = tail call i32 @rtw_ips_pwr_up(ptr noundef %padapter) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.then10, label %do.end7.do.body14_crit_edge

do.end7.do.body14_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rf_pwrstate, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.then10, %do.end7.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ips_leave.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ips_leave, %if.then20)) #4
          to label %do.end25 [label %if.then20], !srcloc !124

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %10 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pnetdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ips_leave.__UNIQUE_ID_ddebug349, ptr noundef %11, ptr noundef nonnull @.str.9) #4
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %do.body14
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end25.do.body58_crit_edge [
    i32 1, label %do.end25.do.body30_crit_edge
    i32 5, label %do.end25.do.body30_crit_edge116
  ]

do.end25.do.body30_crit_edge116:                  ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body30

do.end25.do.body30_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body30

do.end25.do.body58_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body58

do.body30:                                        ; preds = %do.end25.do.body30_crit_edge, %do.end25.do.body30_crit_edge116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %15 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp31 = icmp ugt i32 %15, 4
  br i1 %cmp31, label %do.end35, label %do.body30.do.end41_crit_edge

do.body30.do.end41_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cur_channel, align 2
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %bips_processing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bips_processing, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %19) #7
  br label %do.end41

do.end41:                                         ; preds = %do.end35, %do.body30.do.end41_crit_edge
  %cur_channel43 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %cur_channel43 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cur_channel43, align 2
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %21, i8 noundef zeroext 0, i16 noundef zeroext 0) #4
  %key_mask = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 11
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %key_mask, align 4
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool47.not = icmp eq i8 %24, 0
  br i1 %tobool47.not, label %do.end41.for.inc_crit_edge, label %if.then48

do.end41.for.inc_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then48:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp49 = icmp eq i32 %26, 0
  %. = zext i1 %cmp49 to i8
  %call53 = tail call i32 @rtw_set_key(ptr noundef %padapter, ptr noundef %securitypriv, i32 noundef 0, i8 noundef zeroext %.) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %do.end41.for.inc_crit_edge
  %result.1 = phi i32 [ %call8, %do.end41.for.inc_crit_edge ], [ %call53, %if.then48 ]
  %27 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %key_mask, align 4
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool47.not.1 = icmp eq i8 %29, 0
  br i1 %tobool47.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then48.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then48.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp49.1 = icmp eq i32 %31, 1
  %.113 = zext i1 %cmp49.1 to i8
  %call52.1 = tail call i32 @rtw_set_key(ptr noundef %padapter, ptr noundef %securitypriv, i32 noundef 1, i8 noundef zeroext %.113) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then48.1, %for.inc.for.inc.1_crit_edge
  %result.1.1 = phi i32 [ %result.1, %for.inc.for.inc.1_crit_edge ], [ %call52.1, %if.then48.1 ]
  %32 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %key_mask, align 4
  %34 = and i8 %33, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool47.not.2 = icmp eq i8 %34, 0
  br i1 %tobool47.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then48.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then48.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp49.2 = icmp eq i32 %36, 2
  %.114 = zext i1 %cmp49.2 to i8
  %call52.2 = tail call i32 @rtw_set_key(ptr noundef %padapter, ptr noundef %securitypriv, i32 noundef 2, i8 noundef zeroext %.114) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then48.2, %for.inc.1.for.inc.2_crit_edge
  %result.1.2 = phi i32 [ %result.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %call52.2, %if.then48.2 ]
  %37 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %key_mask, align 4
  %39 = and i8 %38, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool47.not.3 = icmp eq i8 %39, 0
  br i1 %tobool47.not.3, label %for.inc.2.do.body58_crit_edge, label %if.then48.3

for.inc.2.do.body58_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body58

if.then48.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp49.3 = icmp eq i32 %41, 3
  %.115 = zext i1 %cmp49.3 to i8
  %call53.3 = tail call i32 @rtw_set_key(ptr noundef %padapter, ptr noundef %securitypriv, i32 noundef 3, i8 noundef zeroext %.115) #4
  br label %do.body58

do.body58:                                        ; preds = %if.then48.3, %for.inc.2.do.body58_crit_edge, %do.end25.do.body58_crit_edge
  %result.2 = phi i32 [ %call8, %do.end25.do.body58_crit_edge ], [ %result.1.2, %for.inc.2.do.body58_crit_edge ], [ %call53.3, %if.then48.3 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %42 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp59 = icmp ugt i32 %42, 4
  br i1 %cmp59, label %do.end64, label %do.body58.do.end70_crit_edge

do.body58.do.end70_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end70

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  %call66 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 76) #4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call66) #7
  br label %do.end70

do.end70:                                         ; preds = %do.end64, %do.body58.do.end70_crit_edge
  %43 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bips_processing, align 4
  %bkeepfwalive = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 34
  %44 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bkeepfwalive, align 1
  %bpower_saving = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 6
  %45 = ptrtoint ptr %bpower_saving to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %bpower_saving, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %land.lhs.true.if.end72_crit_edge, %entry.if.end72_crit_edge
  %result.3 = phi i32 [ 1, %land.lhs.true.if.end72_crit_edge ], [ %result.2, %do.end70 ], [ 1, %entry.if.end72_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #4
  ret i32 %result.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ips_pwr_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_channel_bwmode(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_key(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ps_processor(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_processing = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 17
  %0 = ptrtoint ptr %ps_processing to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ps_processing, align 4
  %bips_processing = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 15
  %1 = ptrtoint ptr %bips_processing to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bips_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body22_crit_edge

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

if.end:                                           ; preds = %entry
  %ips_mode_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 14
  %3 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ips_mode_req, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.end.do.body22_crit_edge, label %if.end3

if.end.do.body22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

if.end3:                                          ; preds = %if.end
  %pbuddy_adapter.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 51
  %5 = ptrtoint ptr %pbuddy_adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pbuddy_adapter.i, align 8
  %ips_deny_time.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 16
  %7 = ptrtoint ptr %ips_deny_time.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ips_deny_time.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp.not.i = icmp ult i32 %8, %9
  br i1 %cmp.not.i, label %if.end.i, label %if.end3.do.body22_crit_edge

if.end3.do.body22_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

if.end.i:                                         ; preds = %if.end3
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_state.i.i, align 4
  %12 = and i32 %11, 2545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %lor.lhs.false12.i, label %if.end.i.do.body22_crit_edge

if.end.i.do.body22_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

lor.lhs.false12.i:                                ; preds = %if.end.i
  %p2p_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %14 = ptrtoint ptr %p2p_state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p2p_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i, label %if.end15.i, label %lor.lhs.false12.i.do.body22_crit_edge

lor.lhs.false12.i.do.body22_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

if.end15.i:                                       ; preds = %lor.lhs.false12.i
  %tobool16.not.i = icmp eq ptr %6, null
  br i1 %tobool16.not.i, label %if.end15.i.if.end5_crit_edge, label %if.then17.i

if.end15.i.if.end5_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then17.i:                                      ; preds = %if.end15.i
  %fw_state.i71.i = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %fw_state.i71.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_state.i71.i, align 4
  %18 = and i32 %17, 2545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %lor.lhs.false31.i, label %if.then17.i.do.body22_crit_edge

if.then17.i.do.body22_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

lor.lhs.false31.i:                                ; preds = %if.then17.i
  %p2p_state.i87.i = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 18, i32 17
  %20 = ptrtoint ptr %p2p_state.i87.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p2p_state.i87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i88.i = icmp eq i32 %21, 0
  br i1 %cmp.i88.i, label %lor.lhs.false31.i.if.end5_crit_edge, label %lor.lhs.false31.i.do.body22_crit_edge

lor.lhs.false31.i.do.body22_crit_edge:            ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

lor.lhs.false31.i.if.end5_crit_edge:              ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5:                                          ; preds = %lor.lhs.false31.i.if.end5_crit_edge, %if.end15.i.if.end5_crit_edge
  %rf_pwrstate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 31
  %22 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp6 = icmp eq i32 %23, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end5.do.body22_crit_edge

if.end5.do.body22_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

land.lhs.true:                                    ; preds = %if.end5
  %pwr_state_check_cnts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 29
  %24 = ptrtoint ptr %pwr_state_check_cnts to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pwr_state_check_cnts, align 4
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp9 = icmp eq i8 %26, 0
  br i1 %cmp9, label %do.body, label %land.lhs.true.do.body22_crit_edge

land.lhs.true.do.body22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body22

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %27 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp12 = icmp ugt i32 %27, 4
  br i1 %cmp12, label %do.end, label %do.body.do.end20_crit_edge

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_state.i.i, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %29) #7
  br label %do.end20

do.end20:                                         ; preds = %do.end, %do.body.do.end20_crit_edge
  %change_rfpwrstate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 32
  %30 = ptrtoint ptr %change_rfpwrstate to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %change_rfpwrstate, align 4
  tail call void @ips_enter(ptr noundef %padapter)
  br label %do.body22

do.body22:                                        ; preds = %do.end20, %land.lhs.true.do.body22_crit_edge, %if.end5.do.body22_crit_edge, %lor.lhs.false31.i.do.body22_crit_edge, %if.then17.i.do.body22_crit_edge, %lor.lhs.false12.i.do.body22_crit_edge, %if.end.i.do.body22_crit_edge, %if.end3.do.body22_crit_edge, %if.end.do.body22_crit_edge, %entry.do.body22_crit_edge
  %pwr_state_check_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 27
  %pwr_state_check_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 28
  %31 = ptrtoint ptr %pwr_state_check_interval to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pwr_state_check_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %32, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %33
  %call.i = tail call i32 @mod_timer(ptr noundef %pwr_state_check_timer, i32 noundef %add.i) #4
  %34 = ptrtoint ptr %ps_processing to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %ps_processing, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_set_ps_mode(ptr noundef %padapter, i8 noundef zeroext %ps_mode, i8 noundef zeroext %smart_ps, i8 noundef zeroext %bcn_ant_mode) local_unnamed_addr #0 align 64 {
entry:
  %ps_mode.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps_mode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %ps_mode, ptr %ps_mode.addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %ps_mode)
  %cmp = icmp ugt i8 %ps_mode, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwr_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 1
  %1 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %ps_mode)
  %cmp4 = icmp eq i8 %2, %ps_mode
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ps_mode)
  %cmp8 = icmp eq i8 %ps_mode, 0
  br i1 %cmp4, label %if.then6, label %if.end24

if.then6:                                         ; preds = %if.end
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.end11

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %smart_ps12 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %smart_ps12 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %smart_ps12, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %smart_ps)
  %cmp15 = icmp eq i8 %4, %smart_ps
  br i1 %cmp15, label %land.lhs.true, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end11
  %bcn_ant_mode17 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %bcn_ant_mode17 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bcn_ant_mode17, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %bcn_ant_mode)
  %cmp20 = icmp eq i8 %6, %bcn_ant_mode
  br i1 %cmp20, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end
  br i1 %cmp8, label %if.then28, label %if.end24.if.else_crit_edge

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then28:                                        ; preds = %if.end24
  %opp_ps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 51
  %7 = ptrtoint ptr %opp_ps to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %opp_ps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp30 = icmp eq i8 %8, 0
  br i1 %cmp30, label %do.body, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.then28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %9 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp33 = icmp ugt i32 %9, 4
  br i1 %cmp33, label %do.end, label %do.body.do.end39_crit_edge

do.body.do.end39_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end39

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #7
  br label %do.end39

do.end39:                                         ; preds = %do.end, %do.body.do.end39_crit_edge
  %10 = ptrtoint ptr %ps_mode.addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ps_mode.addr, align 1
  %12 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %pwr_mode, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 36, ptr noundef nonnull %ps_mode.addr) #4
  %bFwCurrentInPSMode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 21
  %13 = ptrtoint ptr %bFwCurrentInPSMode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bFwCurrentInPSMode, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end24.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end11.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %DelayLPSLastTimeStamp.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 22
  %15 = ptrtoint ptr %DelayLPSLastTimeStamp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %DelayLPSLastTimeStamp.i, align 4
  %sub.i = sub i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 100
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_state.i.i, align 4
  %19 = and i32 %18, 2161
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %if.end13.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %bInSuspend.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 25
  %21 = ptrtoint ptr %bInSuspend.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bInSuspend.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not.i = icmp eq i8 %22, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16.i:                                       ; preds = %if.end13.i
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %23 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %securitypriv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp17.i = icmp eq i32 %24, 2
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end16.i.do.body44_crit_edge

if.end16.i.do.body44_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body44

land.lhs.true.i:                                  ; preds = %if.end16.i
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %binstallGrpkey.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool19.not.i = icmp eq i8 %26, 0
  br i1 %tobool19.not.i, label %do.body.i, label %land.lhs.true.i.do.body44_crit_edge

land.lhs.true.i.do.body44_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body44

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %27 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp21.i = icmp ugt i32 %27, 4
  br i1 %cmp21.i, label %do.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #7
  br label %cleanup

do.body44:                                        ; preds = %land.lhs.true.i.do.body44_crit_edge, %if.end16.i.do.body44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %28 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp45 = icmp ugt i32 %28, 4
  br i1 %cmp45, label %do.end50, label %do.body44.do.end55_crit_edge

do.body44.do.end55_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end55

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #7
  br label %do.end55

do.end55:                                         ; preds = %do.end50, %do.body44.do.end55_crit_edge
  %bFwCurrentInPSMode56 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 21
  %29 = ptrtoint ptr %bFwCurrentInPSMode56 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %bFwCurrentInPSMode56, align 4
  %30 = ptrtoint ptr %ps_mode.addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ps_mode.addr, align 1
  %32 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %pwr_mode, align 4
  %smart_ps58 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 2
  %33 = ptrtoint ptr %smart_ps58 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %smart_ps, ptr %smart_ps58, align 1
  %bcn_ant_mode59 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 3
  %34 = ptrtoint ptr %bcn_ant_mode59 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bcn_ant_mode, ptr %bcn_ant_mode59, align 2
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 36, ptr noundef nonnull %ps_mode.addr) #4
  %opp_ps60 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 51
  %35 = ptrtoint ptr %opp_ps60 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %opp_ps60, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp62 = icmp eq i8 %36, 1
  br i1 %cmp62, label %if.then64, label %do.end55.cleanup_crit_edge

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then64:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #6
  %call65 = call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %do.end55.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end39, %if.then28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @p2p_ps_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LPS_RF_ON_check(ptr noundef %padapter, i32 noundef %delay_ms) local_unnamed_addr #0 align 64 {
entry:
  %bAwake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bAwake) #4
  %0 = ptrtoint ptr %bAwake to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bAwake, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 38, ptr noundef nonnull %bAwake) #4
  %2 = ptrtoint ptr %bAwake to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bAwake, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not26 = icmp eq i8 %3, 0
  br i1 %tobool.not26, label %if.end.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  br label %if.end

if.end:                                           ; preds = %if.end23.if.end_crit_edge, %if.end.lr.ph
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %6 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ugt i32 %6, 4
  br i1 %cmp, label %do.end, label %if.then2.while.end_crit_edge

if.then2.while.end_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #7
  br label %while.end

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @rtw_get_passing_time_ms(i32 noundef %1) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %delay_ms)
  %cmp10 = icmp ugt i32 %call9, %delay_ms
  br i1 %cmp10, label %if.then11, label %if.end23

if.then11:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp13 = icmp ugt i32 %7, 4
  br i1 %cmp13, label %do.end17, label %if.then11.while.end_crit_edge

if.then11.while.end_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %delay_ms) #7
  br label %while.end

if.end23:                                         ; preds = %if.end8
  call void @rtw_usleep_os(i32 noundef 100) #4
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 38, ptr noundef nonnull %bAwake) #4
  %8 = ptrtoint ptr %bAwake to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bAwake, align 1
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end23.if.end_crit_edge, label %if.end23.while.end_crit_edge

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end23.if.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %do.end17, %if.then11.while.end_crit_edge, %do.end, %if.then2.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0 = phi i32 [ -2, %do.end ], [ -2, %if.then2.while.end_crit_edge ], [ -1, %do.end17 ], [ -1, %if.then11.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ], [ 0, %if.end23.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bAwake) #4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @GetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_passing_time_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_usleep_os(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @LPS_Enter(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %DelayLPSLastTimeStamp.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 22
  %1 = ptrtoint ptr %DelayLPSLastTimeStamp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %DelayLPSLastTimeStamp.i, align 4
  %sub.i = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 100
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i.i, align 4
  %5 = and i32 %4, 2161
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %if.end13.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %bInSuspend.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 25
  %7 = ptrtoint ptr %bInSuspend.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInSuspend.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool14.not.i = icmp eq i8 %8, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16.i:                                       ; preds = %if.end13.i
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %9 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %securitypriv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp17.i = icmp eq i32 %10, 2
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end16.i.if.end_crit_edge

if.end16.i.if.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end16.i
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %binstallGrpkey.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not.i = icmp eq i8 %12, 0
  br i1 %tobool19.not.i, label %do.body.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %13 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp21.i = icmp ugt i32 %13, 4
  br i1 %cmp21.i, label %do.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end16.i.if.end_crit_edge
  %bLeisurePs = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 18
  %14 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bLeisurePs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not = icmp eq i8 %15, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %LpsIdleCount = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 19
  %16 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %LpsIdleCount, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp = icmp ugt i8 %17, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %pwr_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp6 = icmp eq i8 %19, 0
  br i1 %cmp6, label %if.then8, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.then4
  %bpower_saving = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 6
  %20 = ptrtoint ptr %bpower_saving to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %bpower_saving, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %21 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp9 = icmp ugt i32 %21, 4
  br i1 %cmp9, label %do.end, label %if.then8.do.end17_crit_edge

if.then8.do.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end17

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %smart_ps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 2
  %22 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %smart_ps, align 1
  %conv13 = zext i8 %23 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %conv13) #7
  br label %do.end17

do.end17:                                         ; preds = %do.end, %if.then8.do.end17_crit_edge
  %power_mgnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 20
  %24 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %power_mgnt, align 1
  %smart_ps18 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 2
  %26 = ptrtoint ptr %smart_ps18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %smart_ps18, align 1
  tail call void @rtw_set_ps_mode(ptr noundef %padapter, i8 noundef zeroext %25, i8 noundef zeroext %27, i8 noundef zeroext 64)
  br label %cleanup

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %inc = add nuw nsw i8 %17, 1
  %28 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %inc, ptr %LpsIdleCount, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end17, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @LPS_Leave(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %ps_mode.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bLeisurePs = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 18
  %0 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bLeisurePs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %entry
  %pwr_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.then.if.end9_crit_edge, label %if.end24.i

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end24.i:                                       ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ps_mode.addr.i)
  %4 = ptrtoint ptr %ps_mode.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ps_mode.addr.i, align 1
  %opp_ps.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 51
  %5 = ptrtoint ptr %opp_ps.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %opp_ps.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp30.i = icmp eq i8 %6, 0
  br i1 %cmp30.i, label %do.body.i, label %if.end24.i.rtw_set_ps_mode.exit_crit_edge

if.end24.i.rtw_set_ps_mode.exit_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtw_set_ps_mode.exit

do.body.i:                                        ; preds = %if.end24.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp33.i = icmp ugt i32 %7, 4
  br i1 %cmp33.i, label %do.end.i, label %do.body.i.do.end39.i_crit_edge

do.body.i.do.end39.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end39.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #7
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end.i, %do.body.i.do.end39.i_crit_edge
  %8 = ptrtoint ptr %ps_mode.addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ps_mode.addr.i, align 1
  %10 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %pwr_mode, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 36, ptr noundef nonnull %ps_mode.addr.i) #4
  %bFwCurrentInPSMode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 21
  %11 = ptrtoint ptr %bFwCurrentInPSMode.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bFwCurrentInPSMode.i, align 4
  br label %rtw_set_ps_mode.exit

rtw_set_ps_mode.exit:                             ; preds = %do.end39.i, %if.end24.i.rtw_set_ps_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ps_mode.addr.i)
  %12 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp5 = icmp eq i8 %13, 0
  br i1 %cmp5, label %if.then7, label %rtw_set_ps_mode.exit.if.end9_crit_edge

rtw_set_ps_mode.exit.if.end9_crit_edge:           ; preds = %rtw_set_ps_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then7:                                         ; preds = %rtw_set_ps_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call = call i32 @LPS_RF_ON_check(ptr noundef %padapter, i32 noundef 100)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %rtw_set_ps_mode.exit.if.end9_crit_edge, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %bpower_saving = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 6
  %14 = ptrtoint ptr %bpower_saving to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bpower_saving, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @LeaveAllPowerSaveMode(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %Adapter, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %call2 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %Adapter, i8 noundef zeroext 5, i8 noundef zeroext 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_init_pwrctrl_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrctrlpriv1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %pwrctrlpriv1, ptr noundef nonnull @.str.30, ptr noundef nonnull @rtw_init_pwrctrl_priv.__key) #4
  %rf_pwrstate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 31
  %0 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rf_pwrstate, align 4
  %ips_enter_cnts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 11
  %1 = ptrtoint ptr %ips_enter_cnts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ips_enter_cnts, align 4
  %ips_leave_cnts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 12
  %2 = ptrtoint ptr %ips_leave_cnts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ips_leave_cnts, align 4
  %bips_processing = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 15
  %3 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bips_processing, align 4
  %ips_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 18
  %4 = ptrtoint ptr %ips_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ips_mode, align 1
  %ips_mode2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 13
  %6 = ptrtoint ptr %ips_mode2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %ips_mode2, align 4
  %ips_mode_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 14
  %7 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %ips_mode_req, align 1
  %pwr_state_check_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 28
  %8 = ptrtoint ptr %pwr_state_check_interval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2000, ptr %pwr_state_check_interval, align 4
  %pwr_state_check_cnts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 29
  %9 = ptrtoint ptr %pwr_state_check_cnts to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pwr_state_check_cnts, align 4
  %bInSuspend = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 25
  %10 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bInSuspend, align 1
  %bkeepfwalive = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 34
  %11 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bkeepfwalive, align 1
  %LpsIdleCount = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 19
  %12 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %LpsIdleCount, align 2
  %power_mgnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 17
  %13 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %power_mgnt, align 2
  %power_mgnt6 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 20
  %15 = ptrtoint ptr %power_mgnt6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %power_mgnt6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not = icmp ne i8 %14, 0
  %conv9 = zext i1 %cmp.not to i8
  %bLeisurePs = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 18
  %16 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9, ptr %bLeisurePs, align 1
  %bFwCurrentInPSMode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 21
  %17 = ptrtoint ptr %bFwCurrentInPSMode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bFwCurrentInPSMode, align 4
  %pwr_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %pwr_mode, align 4
  %smart_ps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 19
  %19 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %smart_ps, align 8
  %smart_ps11 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 2
  %21 = ptrtoint ptr %smart_ps11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %smart_ps11, align 1
  %bcn_ant_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 3
  %22 = ptrtoint ptr %bcn_ant_mode to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bcn_ant_mode, align 2
  %pwr_state_check_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 27
  tail call void @init_timer_key(ptr noundef %pwr_state_check_timer, ptr noundef nonnull @pwr_state_check_handler, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @rtw_init_pwrctrl_priv.__key.31) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwr_state_check_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -16140
  %call = tail call zeroext i8 @rtw_ps_cmd(ptr noundef %add.ptr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_pwr_wakeup(ptr noundef %padapter, i32 noundef %ips_deffer_ms, ptr noundef %caller) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %ips_deny_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 16
  %1 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ips_deny_time, align 4
  %3 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @rtw_ms_to_systime(i32 noundef %ips_deffer_ms) #4
  %add = add i32 %call, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %add)
  %cmp = icmp ult i32 %2, %add
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call1 = tail call i32 @rtw_ms_to_systime(i32 noundef %ips_deffer_ms) #4
  %add2 = add i32 %call1, %4
  %5 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add2, ptr %ips_deny_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ps_processing = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 17
  %6 = ptrtoint ptr %ps_processing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ps_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end45_crit_edge, label %do.body

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %8 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp5 = icmp ugt i32 %8, 4
  br i1 %cmp5, label %do.end11, label %do.body.land.rhs.preheader_crit_edge

do.body.land.rhs.preheader_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.preheader

do.end11:                                         ; preds = %do.body
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #7
  %9 = ptrtoint ptr %ps_processing to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr188 = load i8, ptr %ps_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr188)
  %tobool13.not186 = icmp eq i8 %.pr188, 0
  br i1 %tobool13.not186, label %do.end11.do.body32_crit_edge, label %do.end11.land.rhs.preheader_crit_edge

do.end11.land.rhs.preheader_crit_edge:            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.preheader

do.end11.do.body32_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

land.rhs.preheader:                               ; preds = %do.end11.land.rhs.preheader_crit_edge, %do.body.land.rhs.preheader_crit_edge
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %call14 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3001, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 3001
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @msleep(i32 noundef 10) #4
  %10 = ptrtoint ptr %ps_processing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ps_processing, align 4
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %while.body.do.body32_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

while.body.do.body32_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

while.end:                                        ; preds = %land.rhs
  %12 = ptrtoint ptr %ps_processing to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %ps_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool18.not = icmp eq i8 %.pr, 0
  br i1 %tobool18.not, label %while.end.do.body32_crit_edge, label %do.body20

while.end.do.body32_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

do.body20:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %13 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp21 = icmp ugt i32 %13, 4
  br i1 %cmp21, label %do.body20.if.end45.sink.split_crit_edge, label %do.body20.if.end45_crit_edge

do.body20.if.end45_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

do.body20.if.end45.sink.split_crit_edge:          ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45.sink.split

do.body32:                                        ; preds = %while.end.do.body32_crit_edge, %while.body.do.body32_crit_edge, %do.end11.do.body32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %14 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp33 = icmp ugt i32 %14, 4
  br i1 %cmp33, label %do.body32.if.end45.sink.split_crit_edge, label %do.body32.if.end45_crit_edge

do.body32.if.end45_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

do.body32.if.end45.sink.split_crit_edge:          ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %do.body32.if.end45.sink.split_crit_edge, %do.body20.if.end45.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.36, %do.body20.if.end45.sink.split_crit_edge ], [ @.str.39, %do.body32.if.end45.sink.split_crit_edge ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.36.sink, ptr noundef nonnull @.str.34) #7
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %do.body32.if.end45_crit_edge, %do.body20.if.end45_crit_edge, %if.end.if.end45_crit_edge
  %bInSuspend = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 25
  %15 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInSuspend, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool46.not = icmp eq i8 %16, 0
  br i1 %tobool46.not, label %if.end45.if.end91_crit_edge, label %if.end45.land.rhs52_crit_edge

if.end45.land.rhs52_crit_edge:                    ; preds = %if.end45
  br label %land.rhs52

if.end45.if.end91_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

land.rhs52:                                       ; preds = %while.body60.land.rhs52_crit_edge, %if.end45.land.rhs52_crit_edge
  %call53 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3001, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 3001
  br i1 %cmp54, label %land.rhs52.while.body60_crit_edge, label %lor.rhs

land.rhs52.while.body60_crit_edge:                ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body60

lor.rhs:                                          ; preds = %land.rhs52
  %call56 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 501
  br i1 %cmp57, label %lor.rhs.while.body60_crit_edge, label %while.end61

lor.rhs.while.body60_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body60

while.body60:                                     ; preds = %lor.rhs.while.body60_crit_edge, %land.rhs52.while.body60_crit_edge
  tail call void @msleep(i32 noundef 10) #4
  %17 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr185 = load i8, ptr %bInSuspend, align 1
  %tobool51.not = icmp eq i8 %.pr185, 0
  br i1 %tobool51.not, label %while.body60.do.body78_crit_edge, label %while.body60.land.rhs52_crit_edge

while.body60.land.rhs52_crit_edge:                ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs52

while.body60.do.body78_crit_edge:                 ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body78

while.end61:                                      ; preds = %lor.rhs
  %18 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr190 = load i8, ptr %bInSuspend, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr190)
  %tobool63.not = icmp eq i8 %.pr190, 0
  br i1 %tobool63.not, label %while.end61.do.body78_crit_edge, label %do.body65

while.end61.do.body78_crit_edge:                  ; preds = %while.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body78

do.body65:                                        ; preds = %while.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %19 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp66 = icmp ugt i32 %19, 4
  br i1 %cmp66, label %do.body65.if.end91.sink.split_crit_edge, label %do.body65.if.end91_crit_edge

do.body65.if.end91_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

do.body65.if.end91.sink.split_crit_edge:          ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91.sink.split

do.body78:                                        ; preds = %while.end61.do.body78_crit_edge, %while.body60.do.body78_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %20 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp79 = icmp ugt i32 %20, 4
  br i1 %cmp79, label %do.body78.if.end91.sink.split_crit_edge, label %do.body78.if.end91_crit_edge

do.body78.if.end91_crit_edge:                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

do.body78.if.end91.sink.split_crit_edge:          ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91.sink.split

if.end91.sink.split:                              ; preds = %do.body78.if.end91.sink.split_crit_edge, %do.body65.if.end91.sink.split_crit_edge
  %.str.42.sink = phi ptr [ @.str.42, %do.body65.if.end91.sink.split_crit_edge ], [ @.str.45, %do.body78.if.end91.sink.split_crit_edge ]
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.42.sink, ptr noundef nonnull @.str.34) #7
  br label %if.end91

if.end91:                                         ; preds = %if.end91.sink.split, %do.body78.if.end91_crit_edge, %do.body65.if.end91_crit_edge, %if.end45.if.end91_crit_edge
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool93.not = icmp eq i32 %and.i, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.exit_crit_edge

if.end91.exit_crit_edge:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end95:                                         ; preds = %if.end91
  %rf_pwrstate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 31
  %23 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp96 = icmp eq i32 %24, 2
  br i1 %cmp96, label %do.body99, label %if.end95.if.end128_crit_edge

if.end95.if.end128_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128

do.body99:                                        ; preds = %if.end95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %25 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp100 = icmp ugt i32 %25, 4
  br i1 %cmp100, label %do.end105, label %do.body99.do.end110_crit_edge

do.body99.do.end110_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end110

do.end105:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #6
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.34) #7
  br label %do.end110

do.end110:                                        ; preds = %do.end105, %do.body99.do.end110_crit_edge
  %call111 = tail call i32 @ips_leave(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %do.body115, label %do.end110.if.end128_crit_edge

do.end110.if.end128_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128

do.body115:                                       ; preds = %do.end110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %26 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp116 = icmp ugt i32 %26, 4
  br i1 %cmp116, label %do.end121, label %do.body115.exit_crit_edge

do.body115.exit_crit_edge:                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

do.end121:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #6
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #7
  br label %exit

if.end128:                                        ; preds = %do.end110.if.end128_crit_edge, %if.end95.if.end128_crit_edge
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %27 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool129.not = icmp eq i32 %28, 0
  br i1 %tobool129.not, label %lor.lhs.false, label %if.end128.do.body134_crit_edge

if.end128.do.body134_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body134

lor.lhs.false:                                    ; preds = %if.end128
  %bup = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 39
  %29 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool130.not = icmp eq i32 %30, 0
  br i1 %tobool130.not, label %lor.lhs.false.do.body134_crit_edge, label %lor.lhs.false131

lor.lhs.false.do.body134_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body134

lor.lhs.false131:                                 ; preds = %lor.lhs.false
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 26
  %31 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool132.not = icmp eq i8 %32, 0
  br i1 %tobool132.not, label %lor.lhs.false131.do.body134_crit_edge, label %lor.lhs.false131.exit_crit_edge

lor.lhs.false131.exit_crit_edge:                  ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

lor.lhs.false131.do.body134_crit_edge:            ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body134

do.body134:                                       ; preds = %lor.lhs.false131.do.body134_crit_edge, %lor.lhs.false.do.body134_crit_edge, %if.end128.do.body134_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %33 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp135 = icmp ugt i32 %33, 4
  br i1 %cmp135, label %do.end140, label %do.body134.exit_crit_edge

do.body134.exit_crit_edge:                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

do.end140:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #6
  %bup143 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 39
  %34 = ptrtoint ptr %bup143 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bup143, align 8
  %hw_init_completed144 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 26
  %36 = ptrtoint ptr %hw_init_completed144 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hw_init_completed144, align 1
  %conv145 = zext i8 %37 to i32
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %caller, i32 noundef %28, i32 noundef %35, i32 noundef %conv145) #7
  br label %exit

exit:                                             ; preds = %do.end140, %do.body134.exit_crit_edge, %lor.lhs.false131.exit_crit_edge, %do.end121, %do.body115.exit_crit_edge, %if.end91.exit_crit_edge
  %ret.0 = phi i32 [ 1, %lor.lhs.false131.exit_crit_edge ], [ 1, %if.end91.exit_crit_edge ], [ 0, %do.end121 ], [ 0, %do.body115.exit_crit_edge ], [ 0, %do.end140 ], [ 0, %do.body134.exit_crit_edge ]
  %38 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ips_deny_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %call152 = tail call i32 @rtw_ms_to_systime(i32 noundef %ips_deffer_ms) #4
  %add153 = add i32 %call152, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add153)
  %cmp154 = icmp ult i32 %39, %add153
  br i1 %cmp154, label %if.then156, label %exit.if.end160_crit_edge

exit.if.end160_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end160

if.then156:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %call157 = tail call i32 @rtw_ms_to_systime(i32 noundef %ips_deffer_ms) #4
  %add158 = add i32 %call157, %41
  %42 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add158, ptr %ips_deny_time, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %exit.if.end160_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ms_to_systime(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_pm_set_lps(ptr noundef %padapter, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %mode)
  %cmp = icmp ult i8 %mode, 7
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then:                                          ; preds = %entry
  %power_mgnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 20
  %0 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mgnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %mode)
  %cmp5.not = icmp eq i8 %1, %mode
  br i1 %cmp5.not, label %if.then.if.end20_crit_edge, label %if.then7

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp9 = icmp eq i8 %mode, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then11.if.end_crit_edge, label %if.then.i

if.then11.if.end_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %call2.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 5, i8 noundef zeroext 0) #4
  br label %if.end

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %LpsIdleCount = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 19
  %4 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %LpsIdleCount, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then11.if.end_crit_edge
  %5 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %mode, ptr %power_mgnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp15.not = icmp ne i8 %mode, 0
  %conv17 = zext i1 %cmp15.not to i8
  %bLeisurePs = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 18
  %6 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv17, ptr %bLeisurePs, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %if.then.if.end20_crit_edge ], [ -22, %entry.if.end20_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_pm_set_ips(ptr noundef %padapter, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp = icmp eq i8 %mode, 1
  %0 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %mode, label %entry.cleanup_crit_edge [
    i8 2, label %entry.if.then_crit_edge
    i8 1, label %entry.if.then_crit_edge50
    i8 0, label %if.then18
  ]

entry.if.then_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge50
  %ips_mode_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 14
  %1 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %mode, ptr %ips_mode_req, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp6 = icmp ugt i32 %2, 4
  br i1 %cmp6, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %cond = select i1 %cmp, ptr @.str.58, ptr @.str.59
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond) #7
  br label %cleanup

if.then18:                                        ; preds = %entry
  %ips_mode_req19 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 14
  %3 = ptrtoint ptr %ips_mode_req19 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ips_mode_req19, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp21 = icmp ugt i32 %4, 4
  br i1 %cmp21, label %do.end26, label %if.then18.do.end31_crit_edge

if.then18.do.end31_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

do.end26:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.62) #7
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %if.then18.do.end31_crit_edge
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %5 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp32 = icmp eq i32 %6, 0
  br i1 %cmp32, label %land.lhs.true, label %do.end31.if.end41_crit_edge

do.end31.if.end41_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

land.lhs.true:                                    ; preds = %do.end31
  %call34 = tail call i32 @_rtw_pwr_wakeup(ptr noundef %padapter, i32 noundef 2000, ptr noundef nonnull @.str.57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %do.end31.if.end41_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %land.lhs.true.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ -14, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_ps_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 18, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ips_enter.__UNIQUE_ID_ddebug346, !1, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 20, i32 3}
!8 = !{ptr @ips_enter.__UNIQUE_ID_ddebug347, !7, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 35, i32 2}
!11 = !{ptr @ips_enter._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @ips_enter._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 38, i32 3}
!15 = !{ptr @ips_enter.__UNIQUE_ID_ddebug348, !14, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 65, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ips_leave._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ips_leave._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 71, i32 3}
!23 = !{ptr @ips_leave.__UNIQUE_ID_ddebug349, !22, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 74, i32 4}
!26 = !{ptr @ips_leave._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ips_leave._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 86, i32 3}
!30 = !{ptr @ips_leave._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ips_leave._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 151, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rtw_ps_processor._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtw_ps_processor._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 216, i32 4}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rtw_set_ps_mode._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rtw_set_ps_mode._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 223, i32 4}
!44 = !{ptr @rtw_set_ps_mode._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rtw_set_ps_mode._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 258, i32 4}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @LPS_RF_ON_check._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @LPS_RF_ON_check._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 264, i32 4}
!53 = !{ptr @LPS_RF_ON_check._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @LPS_RF_ON_check._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 289, i32 5}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @LPS_Enter._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @LPS_Enter._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @rtw_init_pwrctrl_priv.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 343, i32 2}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rtw_init_pwrctrl_priv.__key.31, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 367, i32 2}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 388, i32 3}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @_rtw_pwr_wakeup._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @_rtw_pwr_wakeup._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 392, i32 4}
!73 = !{ptr @_rtw_pwr_wakeup._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @_rtw_pwr_wakeup._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 394, i32 4}
!77 = !{ptr @_rtw_pwr_wakeup._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @_rtw_pwr_wakeup._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 404, i32 4}
!81 = !{ptr @_rtw_pwr_wakeup._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @_rtw_pwr_wakeup._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 406, i32 4}
!85 = !{ptr @_rtw_pwr_wakeup._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @_rtw_pwr_wakeup._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 415, i32 3}
!89 = !{ptr @_rtw_pwr_wakeup._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @_rtw_pwr_wakeup._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 417, i32 4}
!93 = !{ptr @_rtw_pwr_wakeup._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @_rtw_pwr_wakeup._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 426, i32 3}
!97 = !{ptr @_rtw_pwr_wakeup._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @_rtw_pwr_wakeup._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 468, i32 3}
!101 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rtw_pm_set_ips._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @rtw_pm_set_ips._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @rtw_pm_set_ips._entry.60, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 472, i32 3}
!108 = !{ptr @rtw_pm_set_ips._entry_ptr.61, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/r8188eu/core/rtw_pwrctrl.c", i32 190, i32 3}
!112 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @PS_RDY_CHECK._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @PS_RDY_CHECK._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i64 2148799127, i64 2148799132, i64 2148799145, i64 2148799189, i64 2148799223, i64 2148799244}
