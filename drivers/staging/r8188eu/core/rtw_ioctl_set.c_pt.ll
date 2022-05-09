; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_ioctl_set.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_ioctl_set.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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

@rtw_set_802_11_bssid.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8188eu\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw_set_802_11_bssid\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/r8188eu/core/rtw_ioctl_set.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set bssid:%pM\0A\00", [17 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_set_802_11_bssid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016R8188EU: Set BSSID under fw_state = 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@rtw_set_802_11_bssid._entry_ptr = internal global ptr @rtw_set_802_11_bssid._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_set_802_11_ssid.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_set_802_11_ssid\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set ssid [%s] fw_state=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw_set_802_11_ssid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: Set SSID under fw_state = 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@rtw_set_802_11_ssid._entry_ptr = internal global ptr @rtw_set_802_11_ssid._entry, section ".printk_index", align 4
@__func__.rtw_set_802_11_disassociate = private unnamed_addr constant [28 x i8] c"rtw_set_802_11_disassociate\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 113, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 125, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 188, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [48 x i8] c"../drivers/staging/r8188eu/core/rtw_ioctl_set.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 198, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @rtw_set_802_11_bssid._entry, ptr @rtw_set_802_11_bssid._entry_ptr, ptr @rtw_set_802_11_ssid._entry, ptr @rtw_set_802_11_ssid._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_set_802_11_bssid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_set_802_11_ssid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_do_join(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %0 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scanned_queue, align 4
  %join_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 5
  %2 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2, ptr %join_res, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %or.i = or i32 %4, 128
  store i32 %or.i, ptr %fw_state.i, align 4
  %pscanned = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 7
  %5 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %pscanned, align 4
  %to_join = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %to_join, align 1
  %7 = load volatile ptr, ptr %scanned_queue, align 4
  %cmp.i.not = icmp eq ptr %7, %scanned_queue
  br i1 %cmp.i.not, label %if.then, label %if.else17

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %9, -129
  store i32 %and.i, ptr %fw_state.i, align 4
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27, i32 3
  %10 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bBusyTraffic, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.then.if.then8_crit_edge, label %lor.lhs.false

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  %to_roaming = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %to_roaming to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %to_roaming, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not = icmp eq i8 %13, 0
  br i1 %cmp.not, label %if.else, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.then.if.then8_crit_edge
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13
  %call9 = tail call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %padapter, ptr noundef %assoc_ssid, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call9)
  %cmp11.not = icmp eq i8 %call9, 1
  br i1 %cmp11.not, label %if.then8.cleanup67_crit_edge, label %if.then13

if.then8.cleanup67_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %to_join, align 1
  br label %cleanup67

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %to_join, align 1
  br label %cleanup67

if.else17:                                        ; preds = %entry
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %call20 = tail call i32 @rtw_select_and_join_from_scanned_queue(ptr noundef %mlmepriv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %to_join, align 1
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %17, 650
  %call.i = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %add.i) #6
  br label %cleanup67

if.else25:                                        ; preds = %if.else17
  %18 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_state.i, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool27.not = icmp eq i32 %20, 0
  br i1 %tobool27.not, label %if.else40, label %if.then28

if.then28:                                        ; preds = %if.else25
  %21 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64, ptr %fw_state.i, align 4
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 36, i32 1
  %Ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 36, i32 3
  %assoc_ssid32 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13
  %22 = call ptr @memcpy(ptr %Ssid, ptr %assoc_ssid32, i32 36)
  tail call void @rtw_update_registrypriv_dev_network(ptr noundef %padapter) #6
  tail call void @rtw_generate_random_ibss(ptr noundef %MacAddress) #6
  %call33 = tail call zeroext i8 @rtw_createbss_cmd(ptr noundef %padapter) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call33)
  %cmp35.not = icmp eq i8 %call33, 1
  br i1 %cmp35.not, label %if.end38, label %if.then28.cleanup67_crit_edge

if.then28.cleanup67_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.end38:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %to_join, align 1
  br label %cleanup67

if.else40:                                        ; preds = %if.else25
  %and.i116 = and i32 %19, -129
  %24 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i116, ptr %fw_state.i, align 4
  %bBusyTraffic42 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27, i32 3
  %25 = ptrtoint ptr %bBusyTraffic42 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bBusyTraffic42, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool43.not = icmp eq i8 %26, 0
  br i1 %tobool43.not, label %if.else40.if.then49_crit_edge, label %lor.lhs.false44

if.else40.if.then49_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

lor.lhs.false44:                                  ; preds = %if.else40
  %to_roaming45 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %to_roaming45 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %to_roaming45, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp47.not = icmp eq i8 %28, 0
  br i1 %cmp47.not, label %if.else58, label %lor.lhs.false44.if.then49_crit_edge

lor.lhs.false44.if.then49_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false44.if.then49_crit_edge, %if.else40.if.then49_crit_edge
  %assoc_ssid50 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13
  %call51 = tail call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %padapter, ptr noundef %assoc_ssid50, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call51)
  %cmp53.not = icmp eq i8 %call51, 1
  br i1 %cmp53.not, label %if.then49.cleanup67_crit_edge, label %if.then55

if.then49.cleanup67_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.then55:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %to_join, align 1
  br label %cleanup67

if.else58:                                        ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %to_join, align 1
  br label %cleanup67

cleanup67:                                        ; preds = %if.else58, %if.then55, %if.then49.cleanup67_crit_edge, %if.end38, %if.then28.cleanup67_crit_edge, %if.then23, %if.else, %if.then13, %if.then8.cleanup67_crit_edge
  %retval.3 = phi i8 [ %call9, %if.then13 ], [ 1, %if.then8.cleanup67_crit_edge ], [ 0, %if.else ], [ 0, %if.then28.cleanup67_crit_edge ], [ 1, %if.end38 ], [ 0, %if.else58 ], [ 1, %if.then49.cleanup67_crit_edge ], [ %call51, %if.then55 ], [ 1, %if.then23 ]
  ret i8 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_sitesurvey_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_select_and_join_from_scanned_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_update_registrypriv_dev_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_generate_random_ibss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_createbss_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_bssid(ptr noundef %padapter, ptr noundef %bssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_set_802_11_bssid.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_set_802_11_bssid, %if.then)) #6
          to label %do.end5 [label %if.then], !srcloc !30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_set_802_11_bssid.__UNIQUE_ID_ddebug346, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %bssid) #6
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %2 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bssid, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.end5.if.end61_crit_edge [
    i8 0, label %land.lhs.true
    i8 -1, label %land.lhs.true35
  ]

do.end5.if.end61_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true:                                    ; preds = %do.end5
  %arrayidx7 = getelementptr i8, ptr %bssid, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp9 = icmp eq i8 %6, 0
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true11:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr i8, ptr %bssid, i32 2
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp14 = icmp eq i8 %8, 0
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true11.if.end61_crit_edge

land.lhs.true11.if.end61_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %arrayidx17 = getelementptr i8, ptr %bssid, i32 3
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp19 = icmp eq i8 %10, 0
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true16.if.end61_crit_edge

land.lhs.true16.if.end61_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %arrayidx22 = getelementptr i8, ptr %bssid, i32 4
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp24 = icmp eq i8 %12, 0
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true21.if.end61_crit_edge

land.lhs.true21.if.end61_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %arrayidx27 = getelementptr i8, ptr %bssid, i32 5
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp29 = icmp eq i8 %14, 0
  br i1 %cmp29, label %land.lhs.true26.exit_crit_edge, label %land.lhs.true26.if.end61_crit_edge

land.lhs.true26.if.end61_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true26.exit_crit_edge:                   ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

land.lhs.true35:                                  ; preds = %do.end5
  %arrayidx36 = getelementptr i8, ptr %bssid, i32 1
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp38 = icmp eq i8 %16, -1
  br i1 %cmp38, label %land.lhs.true40, label %land.lhs.true35.if.end61_crit_edge

land.lhs.true35.if.end61_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %arrayidx41 = getelementptr i8, ptr %bssid, i32 2
  %17 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp43 = icmp eq i8 %18, -1
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true40.if.end61_crit_edge

land.lhs.true40.if.end61_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true45:                                  ; preds = %land.lhs.true40
  %arrayidx46 = getelementptr i8, ptr %bssid, i32 3
  %19 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp48 = icmp eq i8 %20, -1
  br i1 %cmp48, label %land.lhs.true50, label %land.lhs.true45.if.end61_crit_edge

land.lhs.true45.if.end61_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %arrayidx51 = getelementptr i8, ptr %bssid, i32 4
  %21 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp53 = icmp eq i8 %22, -1
  br i1 %cmp53, label %land.lhs.true55, label %land.lhs.true50.if.end61_crit_edge

land.lhs.true50.if.end61_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %arrayidx56 = getelementptr i8, ptr %bssid, i32 5
  %23 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp58 = icmp eq i8 %24, -1
  br i1 %cmp58, label %land.lhs.true55.exit_crit_edge, label %land.lhs.true55.if.end61_crit_edge

land.lhs.true55.if.end61_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true55.exit_crit_edge:                   ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end61:                                         ; preds = %land.lhs.true55.if.end61_crit_edge, %land.lhs.true50.if.end61_crit_edge, %land.lhs.true45.if.end61_crit_edge, %land.lhs.true40.if.end61_crit_edge, %land.lhs.true35.if.end61_crit_edge, %land.lhs.true26.if.end61_crit_edge, %land.lhs.true21.if.end61_crit_edge, %land.lhs.true16.if.end61_crit_edge, %land.lhs.true11.if.end61_crit_edge, %land.lhs.true.if.end61_crit_edge, %do.end5.if.end61_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %25 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp63 = icmp ugt i32 %25, 4
  br i1 %cmp63, label %do.end68, label %if.end61.do.end74_crit_edge

if.end61.do.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end74

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_state.i, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %27) #9
  br label %do.end74

do.end74:                                         ; preds = %do.end68, %if.end61.do.end74_crit_edge
  %fw_state.i163 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %fw_state.i163 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_state.i163, align 4
  %30 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool76.not = icmp eq i32 %30, 0
  br i1 %tobool76.not, label %if.else, label %do.end74.handle_tkip_countermeasure_crit_edge

do.end74.handle_tkip_countermeasure_crit_edge:    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_tkip_countermeasure

if.else:                                          ; preds = %do.end74
  %31 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool79.not = icmp eq i32 %31, 0
  br i1 %tobool79.not, label %if.end82, label %if.else.release_mlme_lock_crit_edge

if.else.release_mlme_lock_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_mlme_lock

if.end82:                                         ; preds = %if.else
  %and.i169 = and i32 %29, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %tobool.not.i170.not = icmp eq i32 %and.i169, 0
  br i1 %tobool.not.i170.not, label %if.end82.handle_tkip_countermeasure_crit_edge, label %if.then85

if.end82.handle_tkip_countermeasure_crit_edge:    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_tkip_countermeasure

if.then85:                                        ; preds = %if.end82
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %bssid, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool87.not = icmp eq i32 %bcmp, 0
  br i1 %tobool87.not, label %if.then88, label %if.else93

if.then88:                                        ; preds = %if.then85
  %32 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool90.not = icmp eq i32 %32, 0
  br i1 %tobool90.not, label %if.then88.release_mlme_lock_crit_edge, label %if.then88.handle_tkip_countermeasure_crit_edge

if.then88.handle_tkip_countermeasure_crit_edge:   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_tkip_countermeasure

if.then88.release_mlme_lock_crit_edge:            ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_mlme_lock

if.else93:                                        ; preds = %if.then85
  %call94 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext true) #6
  %33 = ptrtoint ptr %fw_state.i163 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_state.i163, align 4
  %and.i177 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i177)
  %tobool96.not = icmp eq i32 %and.i177, 0
  br i1 %tobool96.not, label %if.else93.if.end98_crit_edge, label %if.then97

if.else93.if.end98_crit_edge:                     ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then97:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.else93.if.end98_crit_edge
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #6
  %35 = ptrtoint ptr %fw_state.i163 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_state.i163, align 4
  %37 = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool100.not = icmp eq i32 %37, 0
  br i1 %tobool100.not, label %if.end98.handle_tkip_countermeasure_crit_edge, label %if.then101

if.end98.handle_tkip_countermeasure_crit_edge:    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_tkip_countermeasure

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %and.i185 = and i32 %36, -97
  %or.i = or i32 %and.i185, 32
  %38 = ptrtoint ptr %fw_state.i163 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %fw_state.i163, align 4
  br label %handle_tkip_countermeasure

handle_tkip_countermeasure:                       ; preds = %if.then101, %if.end98.handle_tkip_countermeasure_crit_edge, %if.then88.handle_tkip_countermeasure_crit_edge, %if.end82.handle_tkip_countermeasure_crit_edge, %do.end74.handle_tkip_countermeasure_crit_edge
  %btkip_countermeasure = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 39
  %39 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %btkip_countermeasure, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool105.not = icmp eq i8 %40, 0
  br i1 %tobool105.not, label %handle_tkip_countermeasure.if.end117_crit_edge, label %if.then106

handle_tkip_countermeasure.if.end117_crit_edge:   ; preds = %handle_tkip_countermeasure
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then106:                                       ; preds = %handle_tkip_countermeasure
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %btkip_countermeasure_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 41
  %42 = ptrtoint ptr %btkip_countermeasure_time to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %btkip_countermeasure_time, align 8
  %sub = sub i32 %41, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %sub)
  %cmp108 = icmp ugt i32 %sub, 6000
  br i1 %cmp108, label %if.then110, label %if.then106.release_mlme_lock_crit_edge

if.then106.release_mlme_lock_crit_edge:           ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_mlme_lock

if.then110:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %btkip_countermeasure, align 4
  %45 = ptrtoint ptr %btkip_countermeasure_time to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %btkip_countermeasure_time, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then110, %handle_tkip_countermeasure.if.end117_crit_edge
  %assoc_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 14
  %46 = call ptr @memcpy(ptr %assoc_bssid, ptr %bssid, i32 6)
  %assoc_by_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 19
  %47 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %assoc_by_bssid, align 4
  %48 = ptrtoint ptr %fw_state.i163 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_state.i163, align 4
  %50 = and i32 %49, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool119.not = icmp eq i32 %50, 0
  br i1 %tobool119.not, label %if.else121, label %if.then120

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  %to_join = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 3
  %51 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %to_join, align 1
  br label %release_mlme_lock

if.else121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  %call122 = tail call zeroext i8 @rtw_do_join(ptr noundef %padapter)
  br label %release_mlme_lock

release_mlme_lock:                                ; preds = %if.else121, %if.then120, %if.then106.release_mlme_lock_crit_edge, %if.then88.release_mlme_lock_crit_edge, %if.else.release_mlme_lock_crit_edge
  %status.0 = phi i8 [ 1, %if.then120 ], [ %call122, %if.else121 ], [ 1, %if.else.release_mlme_lock_crit_edge ], [ 1, %if.then88.release_mlme_lock_crit_edge ], [ 0, %if.then106.release_mlme_lock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #6
  br label %exit

exit:                                             ; preds = %release_mlme_lock, %land.lhs.true55.exit_crit_edge, %land.lhs.true26.exit_crit_edge
  %status.1 = phi i8 [ %status.0, %release_mlme_lock ], [ 0, %land.lhs.true55.exit_crit_edge ], [ 0, %land.lhs.true26.exit_crit_edge ]
  ret i8 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_assoc_resources(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_ssid(ptr noundef %padapter, ptr noundef %ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %cur_network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_set_802_11_ssid.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_set_802_11_ssid, %if.then)) #6
          to label %do.end6 [label %if.then], !srcloc !30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 4
  %Ssid = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %ssid, i32 0, i32 1
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_set_802_11_ssid.__UNIQUE_ID_ddebug347, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %Ssid, i32 noundef %3) #6
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 26
  %4 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %do.end6.exit_crit_edge, label %if.end9

do.end6.exit_crit_edge:                           ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end9:                                          ; preds = %do.end6
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %6 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ugt i32 %6, 4
  br i1 %cmp, label %do.end14, label %if.end9.do.end20_crit_edge

if.end9.do.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %fw_state.i135 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %fw_state.i135 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i135, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %8) #9
  br label %do.end20

do.end20:                                         ; preds = %do.end14, %if.end9.do.end20_crit_edge
  %fw_state.i136 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %fw_state.i136 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i136, align 4
  %11 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %if.else, label %do.end20.handle_tkip_countermeasure_crit_edge

do.end20.handle_tkip_countermeasure_crit_edge:    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_tkip_countermeasure

if.else:                                          ; preds = %do.end20
  %12 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %if.end28, label %if.else.release_mlme_lock_crit_edge

if.else.release_mlme_lock_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_mlme_lock

if.end28:                                         ; preds = %if.else
  %and.i142 = and i32 %10, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.not.i143.not = icmp eq i32 %and.i142, 0
  br i1 %tobool.not.i143.not, label %if.end28.handle_tkip_countermeasure_crit_edge, label %if.then31

if.end28.handle_tkip_countermeasure_crit_edge:    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_tkip_countermeasure

if.then31:                                        ; preds = %if.end28
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13
  %13 = ptrtoint ptr %assoc_ssid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %assoc_ssid, align 4
  %15 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ssid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp33 = icmp eq i32 %14, %16
  br i1 %cmp33, label %land.lhs.true, label %if.then31.if.else62_crit_edge

if.then31.if.else62_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else62

land.lhs.true:                                    ; preds = %if.then31
  %Ssid35 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13, i32 1
  %Ssid36 = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %ssid, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr %Ssid35, ptr %Ssid36, i32 %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool40.not = icmp eq i32 %bcmp, 0
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true.if.else62_crit_edge

land.lhs.true.if.else62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else62

if.then41:                                        ; preds = %land.lhs.true
  %17 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool43.not = icmp eq i32 %17, 0
  br i1 %tobool43.not, label %if.then44, label %if.else59

if.then44:                                        ; preds = %if.then41
  %call45 = tail call i32 @rtw_is_same_ibss(ptr noundef %padapter, ptr noundef %cur_network) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.then44.release_mlme_lock_crit_edge

if.then44.release_mlme_lock_crit_edge:            ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_mlme_lock

if.then47:                                        ; preds = %if.then44
  %call48 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext true) #6
  %18 = ptrtoint ptr %fw_state.i136 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_state.i136, align 4
  %and.i150 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool50.not = icmp eq i32 %and.i150, 0
  br i1 %tobool50.not, label %if.then47.if.end52_crit_edge, label %if.then51

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then47.if.end52_crit_edge
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #6
  %20 = ptrtoint ptr %fw_state.i136 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_state.i136, align 4
  %22 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool54.not = icmp eq i32 %22, 0
  br i1 %tobool54.not, label %if.end52.handle_tkip_countermeasure_crit_edge, label %if.then55

if.end52.handle_tkip_countermeasure_crit_edge:    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_tkip_countermeasure

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %and.i158 = and i32 %21, -97
  %or.i = or i32 %and.i158, 32
  %23 = ptrtoint ptr %fw_state.i136 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %fw_state.i136, align 4
  br label %handle_tkip_countermeasure

if.else59:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %handle_tkip_countermeasure

if.else62:                                        ; preds = %land.lhs.true.if.else62_crit_edge, %if.then31.if.else62_crit_edge
  %call63 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext true) #6
  %24 = ptrtoint ptr %fw_state.i136 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_state.i136, align 4
  %and.i161 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i161)
  %tobool65.not = icmp eq i32 %and.i161, 0
  br i1 %tobool65.not, label %if.else62.if.end67_crit_edge, label %if.then66

if.else62.if.end67_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then66:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.else62.if.end67_crit_edge
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #6
  %26 = ptrtoint ptr %fw_state.i136 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_state.i136, align 4
  %28 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool69.not = icmp eq i32 %28, 0
  br i1 %tobool69.not, label %if.end67.handle_tkip_countermeasure_crit_edge, label %if.then70

if.end67.handle_tkip_countermeasure_crit_edge:    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_tkip_countermeasure

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %and.i169 = and i32 %27, -97
  %or.i171 = or i32 %and.i169, 32
  %29 = ptrtoint ptr %fw_state.i136 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i171, ptr %fw_state.i136, align 4
  br label %handle_tkip_countermeasure

handle_tkip_countermeasure:                       ; preds = %if.then70, %if.end67.handle_tkip_countermeasure_crit_edge, %if.else59, %if.then55, %if.end52.handle_tkip_countermeasure_crit_edge, %if.end28.handle_tkip_countermeasure_crit_edge, %do.end20.handle_tkip_countermeasure_crit_edge
  %btkip_countermeasure = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 39
  %30 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %btkip_countermeasure, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool74.not = icmp eq i8 %31, 0
  br i1 %tobool74.not, label %handle_tkip_countermeasure.if.end85_crit_edge, label %if.then75

handle_tkip_countermeasure.if.end85_crit_edge:    ; preds = %handle_tkip_countermeasure
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then75:                                        ; preds = %handle_tkip_countermeasure
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %btkip_countermeasure_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 41
  %33 = ptrtoint ptr %btkip_countermeasure_time to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %btkip_countermeasure_time, align 8
  %sub = sub i32 %32, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %sub)
  %cmp77 = icmp ugt i32 %sub, 6000
  br i1 %cmp77, label %if.then78, label %if.then75.release_mlme_lock_crit_edge

if.then75.release_mlme_lock_crit_edge:            ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_mlme_lock

if.then78:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %btkip_countermeasure, align 4
  %36 = ptrtoint ptr %btkip_countermeasure_time to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %btkip_countermeasure_time, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then78, %handle_tkip_countermeasure.if.end85_crit_edge
  %assoc_ssid86 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13
  %37 = call ptr @memcpy(ptr %assoc_ssid86, ptr %ssid, i32 36)
  %assoc_by_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 19
  %38 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %assoc_by_bssid, align 4
  %39 = ptrtoint ptr %fw_state.i136 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fw_state.i136, align 4
  %41 = and i32 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool88.not = icmp eq i32 %41, 0
  br i1 %tobool88.not, label %if.else90, label %if.then89

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %to_join = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %to_join, align 1
  br label %release_mlme_lock

if.else90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %call91 = tail call zeroext i8 @rtw_do_join(ptr noundef %padapter)
  br label %release_mlme_lock

release_mlme_lock:                                ; preds = %if.else90, %if.then89, %if.then75.release_mlme_lock_crit_edge, %if.then44.release_mlme_lock_crit_edge, %if.else.release_mlme_lock_crit_edge
  %status.0 = phi i8 [ 1, %if.then89 ], [ %call91, %if.else90 ], [ 1, %if.else.release_mlme_lock_crit_edge ], [ 1, %if.then44.release_mlme_lock_crit_edge ], [ 0, %if.then75.release_mlme_lock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #6
  br label %exit

exit:                                             ; preds = %release_mlme_lock, %do.end6.exit_crit_edge
  %status.1 = phi i8 [ %status.0, %release_mlme_lock ], [ 0, %do.end6.exit_crit_edge ]
  ret i8 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_is_same_ibss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_infrastructure_mode(ptr noundef %padapter, i32 noundef %networktype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %InfrastructureMode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 8
  %0 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %networktype)
  %cmp.not = icmp eq i32 %1, %networktype
  br i1 %cmp.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #6
  %2 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %join_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 5
  %4 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %join_res, align 4
  tail call void @stop_ap_mode(ptr noundef %padapter) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.if.end7_crit_edge

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %call6 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext true) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %lor.lhs.false.if.end7_crit_edge
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 4
  %11 = and i32 %10, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end7.if.end14_crit_edge, label %if.then13

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end7.if.end14_crit_edge
  %13 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch = icmp ult i32 %14, 2
  br i1 %switch, label %if.then18, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then18:                                        ; preds = %if.end14
  %15 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_state.i, align 4
  %and.i60 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool20.not = icmp eq i32 %and.i60, 0
  br i1 %tobool20.not, label %if.then18.if.end23_crit_edge, label %if.then21

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %17 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %networktype, ptr %InfrastructureMode, align 4
  %18 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fw_state.i, align 4
  %19 = zext i32 %networktype to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %networktype, label %if.end23.sw.epilog_crit_edge [
    i32 0, label %if.end23.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb24
    i32 4, label %sw.bb25
  ]

if.end23.sw.epilog.sink.split_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb25, %sw.bb24, %if.end23.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 16, %sw.bb25 ], [ 8, %sw.bb24 ], [ 32, %if.end23.sw.epilog.sink.split_crit_edge ]
  %20 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %fw_state.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end23.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #6
  br label %if.end28

if.end28:                                         ; preds = %sw.epilog, %entry.if.end28_crit_edge
  ret i8 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_ap_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_disassociate(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #6
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext true) #6
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #6
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #6
  %call2 = tail call i32 @_rtw_pwr_wakeup(ptr noundef %padapter, i32 noundef 2000, ptr noundef nonnull @__func__.rtw_set_802_11_disassociate) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #6
  ret i8 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_pwr_wakeup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_bssid_list_scan(ptr noundef %padapter, ptr noundef %pssid, i32 noundef %ssid_max_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 26
  %0 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.exit_crit_edge, label %if.end3

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end3:                                          ; preds = %if.end
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %3, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false, label %if.end3.exit_crit_edge

if.end3.exit_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

lor.lhs.false:                                    ; preds = %if.end3
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27, i32 3
  %4 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bBusyTraffic, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.else, label %lor.lhs.false.exit_crit_edge

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #6
  %call7 = tail call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef nonnull %padapter, ptr noundef %pssid, i32 noundef %ssid_max_num, ptr noundef null, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #6
  br label %exit

exit:                                             ; preds = %if.else, %lor.lhs.false.exit_crit_edge, %if.end3.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %res.0 = phi i8 [ %call7, %if.else ], [ 0, %entry.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ 1, %lor.lhs.false.exit_crit_edge ], [ 1, %if.end3.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_authentication_mode(ptr noundef %padapter, i32 noundef %authmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %ndisauthtype = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 29
  %0 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %authmode, ptr %ndisauthtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %authmode)
  %cmp = icmp ugt i32 %authmode, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %securitypriv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @rtw_set_auth(ptr noundef %padapter, ptr noundef %securitypriv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2 = icmp eq i32 %call, 1
  %. = zext i1 %cmp2 to i8
  ret i8 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_auth(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_add_wep(ptr noundef %padapter, ptr nocapture noundef readonly %wep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %KeyIndex = getelementptr inbounds %struct.ndis_802_11_wep, ptr %wep, i32 0, i32 1
  %0 = ptrtoint ptr %KeyIndex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %KeyIndex, align 4
  %and = and i32 %1, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %KeyLength = getelementptr inbounds %struct.ndis_802_11_wep, ptr %wep, i32 0, i32 2
  %2 = ptrtoint ptr %KeyLength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %KeyLength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 13
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %switch.selectcmp26 = icmp eq i32 %3, 5
  %switch.select27 = select i1 %switch.selectcmp26, i32 1, i32 %switch.select
  %dot11PrivacyAlgrthm3 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %dot11PrivacyAlgrthm3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.select27, ptr %dot11PrivacyAlgrthm3, align 4
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 %and
  %KeyMaterial = getelementptr inbounds %struct.ndis_802_11_wep, ptr %wep, i32 0, i32 3
  %5 = ptrtoint ptr %KeyLength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %KeyLength, align 4
  %7 = call ptr @memcpy(ptr %arrayidx, ptr %KeyMaterial, i32 %6)
  %8 = load i32, ptr %KeyLength, align 4
  %arrayidx7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 4, i32 %and
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx7, align 4
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 2
  %10 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %dot11PrivacyKeyIndex, align 8
  %call = tail call i32 @rtw_set_key(ptr noundef %padapter, ptr noundef %securitypriv, i32 noundef %and, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp ne i32 %call, 0
  %spec.select = zext i1 %cmp8 to i8
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %ret.0 = phi i8 [ 0, %entry.exit_crit_edge ], [ %spec.select, %if.end ]
  ret i8 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_key(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rtw_get_cur_max_rate(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %ht_ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ht_ielen) #6
  %0 = ptrtoint ptr %ht_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ht_ielen, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_state.i, align 4
  %3 = and i32 %2, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 7
  %5 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_wireless_mode, align 1
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.while.cond_crit_edge, label %if.then4

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.then4:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 12, i32 12
  %IELength = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 11
  %8 = ptrtoint ptr %IELength to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %IELength, align 1
  %sub = add i32 %9, -12
  %call5 = call ptr @rtw_get_ie(ptr noundef %arrayidx, i32 noundef 45, ptr noundef nonnull %ht_ielen, i32 noundef %sub) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %land.lhs.true7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true7:                                   ; preds = %if.then4
  %10 = ptrtoint ptr %ht_ielen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ht_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %land.lhs.true7.cleanup_crit_edge, label %if.then9

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true7
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_bwmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.then9.land.end_crit_edge, label %land.rhs

if.then9.land.end_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %infos = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 17, i32 37, i32 1
  %14 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %infos, align 1
  %and14 = lshr i8 %15, 2
  %and14.lobit = and i8 %and14, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then9.land.end_crit_edge
  %16 = phi i8 [ 0, %if.then9.land.end_crit_edge ], [ %and14.lobit, %land.rhs ]
  %HT_caps = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 17, i32 36
  %17 = ptrtoint ptr %HT_caps to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %HT_caps, align 4
  %19 = lshr i16 %18, 8
  %20 = trunc i16 %19 to i8
  %21 = lshr i8 %20, 5
  %22 = and i8 %21, 1
  %23 = lshr i8 %20, 6
  %24 = and i8 %23, 1
  %cbw40_enable = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 38
  %25 = ptrtoint ptr %cbw40_enable to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cbw40_enable, align 1
  %and32 = and i8 %26, %16
  %MCS_rate = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2
  %call37 = call zeroext i16 @rtw_mcs_rate(i8 noundef zeroext %and32, i8 noundef zeroext %22, i8 noundef zeroext %24, ptr noundef %MCS_rate) #6
  br label %cleanup

while.cond:                                       ; preds = %while.body, %if.end.while.cond_crit_edge
  %i.0 = phi i32 [ %inc, %while.body ], [ 0, %if.end.while.cond_crit_edge ]
  %max_rate.0 = phi i16 [ %32, %while.body ], [ 0, %if.end.while.cond_crit_edge ]
  %arrayidx39 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 9, i32 %i.0
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx39, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %28, label %while.body [
    i8 0, label %while.cond.while.end_crit_edge
    i8 -1, label %while.cond.while.end_crit_edge102
  ]

while.cond.while.end_crit_edge102:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %30 = and i8 %28, 127
  %31 = zext i8 %30 to i16
  %32 = tail call i16 @llvm.umax.i16(i16 %max_rate.0, i16 %31)
  %inc = add i32 %i.0, 1
  br label %while.cond

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge102
  %mul = mul i16 %max_rate.0, 5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %land.end, %land.lhs.true7.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %call37, %land.end ], [ 0, %land.lhs.true7.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ %mul, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ht_ielen) #6
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_mcs_rate(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_ioctl_set.c", i32 113, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtw_set_802_11_bssid.__UNIQUE_ID_ddebug346, !1, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_ioctl_set.c", i32 125, i32 2}
!8 = !{ptr @rtw_set_802_11_bssid._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtw_set_802_11_bssid._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/core/rtw_ioctl_set.c", i32 188, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rtw_set_802_11_ssid.__UNIQUE_ID_ddebug347, !11, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/r8188eu/core/rtw_ioctl_set.c", i32 198, i32 2}
!16 = !{ptr @rtw_set_802_11_ssid._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtw_set_802_11_ssid._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__func__.rtw_set_802_11_disassociate, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/core/rtw_ioctl_set.c", i32 339, i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
!30 = !{i64 2148799594, i64 2148799599, i64 2148799612, i64 2148799656, i64 2148799690, i64 2148799711}
