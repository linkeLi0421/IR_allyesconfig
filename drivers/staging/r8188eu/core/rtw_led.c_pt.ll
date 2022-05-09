; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_led.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_led.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@rtl8188eu_InitSwLeds.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&pLed->blink_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@rtl8188eu_InitSwLeds.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&pLed->blink_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 6, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.3 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 10, i64 11]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 10, i64 11]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 10, i64 11]
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [42 x i8] c"../drivers/staging/r8188eu/core/rtw_led.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 179, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @rtl8188eu_InitSwLeds.__key, ptr @.str, ptr @rtl8188eu_InitSwLeds.__key.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_InitSwLeds.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_InitSwLeds.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188eu_InitSwLeds(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ledpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16
  %0 = ptrtoint ptr %ledpriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %padapter, ptr %ledpriv, align 4
  %CurrLedState.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %1 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %CurrLedState.i, align 4
  %BlinkTimes.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 6
  %BlinkingLedState.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  %2 = call ptr @memset(ptr %BlinkingLedState.i, i32 0, i32 7)
  %3 = call ptr @memset(ptr %BlinkTimes.i, i32 0, i32 7)
  %blink_work = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  tail call void @__init_work(ptr noundef %blink_work, i32 noundef 0) #2
  %4 = ptrtoint ptr %blink_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %blink_work, align 4
  %lockdep_map = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @rtl8188eu_InitSwLeds.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #2
  %entry9 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10, i32 0, i32 1
  %5 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @blink_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtl8188eu_InitSwLeds.__key.1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blink_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rf_pwrstate = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 31
  %6 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rf_pwrstate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end4, label %SwLedOff.exit

SwLedOff.exit:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %1, i32 noundef 78) #2
  %8 = and i8 %call.i, -112
  %9 = or i8 %8, 8
  %call5.i = tail call i32 @rtw_write8(ptr noundef %1, i32 noundef 78, i8 noundef zeroext %9) #2
  %call6.i = tail call zeroext i8 @rtw_read8(ptr noundef %1, i32 noundef 67) #2
  %10 = and i8 %call6.i, -2
  %call10.i = tail call i32 @rtw_write8(ptr noundef %1, i32 noundef 67, i8 noundef zeroext %10) #2
  %CurrLedState.i = getelementptr i8, ptr %work, i32 -20
  %11 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %CurrLedState.i, align 4
  %BlinkTimes.i = getelementptr i8, ptr %work, i32 -8
  %BlinkingLedState.i = getelementptr i8, ptr %work, i32 -16
  %12 = call ptr @memset(ptr %BlinkingLedState.i, i32 0, i32 7)
  %13 = call ptr @memset(ptr %BlinkTimes.i, i32 0, i32 7)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %BlinkingLedState = getelementptr i8, ptr %work, i32 -16
  %14 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %BlinkingLedState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp5 = icmp eq i32 %15, 1
  %call.i211 = tail call zeroext i8 @rtw_read8(ptr noundef %1, i32 noundef 78) #2
  %16 = and i8 %call.i211, -112
  br i1 %cmp5, label %SwLedOn.exit, label %SwLedOff.exit225

SwLedOn.exit:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  %17 = or i8 %16, 96
  %call4.i = tail call i32 @rtw_write8(ptr noundef %1, i32 noundef 78, i8 noundef zeroext %17) #2
  br label %if.end7

SwLedOff.exit225:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  %18 = or i8 %16, 8
  %call5.i220 = tail call i32 @rtw_write8(ptr noundef %1, i32 noundef 78, i8 noundef zeroext %18) #2
  %call6.i221 = tail call zeroext i8 @rtw_read8(ptr noundef %1, i32 noundef 67) #2
  %19 = and i8 %call6.i221, -2
  %call10.i222 = tail call i32 @rtw_write8(ptr noundef %1, i32 noundef 67, i8 noundef zeroext %19) #2
  br label %if.end7

if.end7:                                          ; preds = %SwLedOff.exit225, %SwLedOn.exit
  %.sink = phi i8 [ 1, %SwLedOn.exit ], [ 0, %SwLedOff.exit225 ]
  %20 = getelementptr i8, ptr %work, i32 -12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %20, align 4
  %CurrLedState = getelementptr i8, ptr %work, i32 -20
  %22 = ptrtoint ptr %CurrLedState to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %CurrLedState, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.end7.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 3, label %sw.bb16
    i32 6, label %sw.bb27
    i32 9, label %sw.bb60
    i32 10, label %sw.bb97
    i32 11, label %sw.bb108
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %20, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool8.not = icmp eq i8 %26, 0
  %. = select i1 %tobool8.not, i32 1, i32 2
  %27 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %., ptr %BlinkingLedState, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work, i32 noundef 100) #2
  br label %cleanup

sw.bb16:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %20, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool18.not = icmp eq i8 %30, 0
  %.201 = select i1 %tobool18.not, i32 1, i32 2
  %31 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.201, ptr %BlinkingLedState, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i226 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %work, i32 noundef 50) #2
  br label %cleanup

sw.bb27:                                          ; preds = %if.end7
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %20, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool29.not = icmp eq i8 %34, 0
  %.202 = select i1 %tobool29.not, i32 1, i32 2
  %35 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.202, ptr %BlinkingLedState, align 4
  %BlinkTimes = getelementptr i8, ptr %work, i32 -8
  %36 = ptrtoint ptr %BlinkTimes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %BlinkTimes, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %BlinkTimes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp36 = icmp eq i32 %dec, 0
  br i1 %cmp36, label %if.then37, label %if.else55

if.then37:                                        ; preds = %sw.bb27
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not = icmp eq i32 %and.i, 0
  br i1 %tobool39.not, label %if.then48, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #4
  %bLedLinkBlinkInProgress = getelementptr i8, ptr %work, i32 -3
  %40 = ptrtoint ptr %bLedLinkBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %bLedLinkBlinkInProgress, align 1
  br label %if.end54

if.then48:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #4
  %bLedNoLinkBlinkInProgress = getelementptr i8, ptr %work, i32 -4
  %41 = ptrtoint ptr %bLedNoLinkBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %bLedNoLinkBlinkInProgress, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.then40
  %.sink244 = phi i32 [ 4, %if.then48 ], [ 3, %if.then40 ]
  %.sink243 = phi i32 [ 100, %if.then48 ], [ 50, %if.then40 ]
  %42 = ptrtoint ptr %CurrLedState to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink244, ptr %CurrLedState, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i230 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %work, i32 noundef %.sink243) #2
  %bLedScanBlinkInProgress = getelementptr i8, ptr %work, i32 -2
  %44 = ptrtoint ptr %bLedScanBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bLedScanBlinkInProgress, align 2
  br label %cleanup

if.else55:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %45 = load ptr, ptr @system_wq, align 4
  %call.i.i231 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %work, i32 noundef 18) #2
  br label %cleanup

sw.bb60:                                          ; preds = %if.end7
  %46 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %20, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool62.not = icmp eq i8 %47, 0
  %.203 = select i1 %tobool62.not, i32 1, i32 2
  %48 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.203, ptr %BlinkingLedState, align 4
  %BlinkTimes68 = getelementptr i8, ptr %work, i32 -8
  %49 = ptrtoint ptr %BlinkTimes68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %BlinkTimes68, align 4
  %dec69 = add i32 %50, -1
  store i32 %dec69, ptr %BlinkTimes68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec69)
  %cmp71 = icmp eq i32 %dec69, 0
  br i1 %cmp71, label %if.then72, label %if.else92

if.then72:                                        ; preds = %sw.bb60
  %fw_state.i232 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %fw_state.i232 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fw_state.i232, align 4
  %and.i233 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i233)
  %tobool74.not = icmp eq i32 %and.i233, 0
  br i1 %tobool74.not, label %if.then84, label %if.then75

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #4
  %bLedLinkBlinkInProgress76 = getelementptr i8, ptr %work, i32 -3
  %53 = ptrtoint ptr %bLedLinkBlinkInProgress76 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %bLedLinkBlinkInProgress76, align 1
  br label %if.end91

if.then84:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #4
  %bLedNoLinkBlinkInProgress85 = getelementptr i8, ptr %work, i32 -4
  %54 = ptrtoint ptr %bLedNoLinkBlinkInProgress85 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %bLedNoLinkBlinkInProgress85, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then84, %if.then75
  %.sink247 = phi i32 [ 4, %if.then84 ], [ 3, %if.then75 ]
  %.sink246 = phi i32 [ 100, %if.then84 ], [ 50, %if.then75 ]
  %55 = ptrtoint ptr %CurrLedState to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink247, ptr %CurrLedState, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i237 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %work, i32 noundef %.sink246) #2
  %bLedBlinkInProgress = getelementptr i8, ptr %work, i32 -11
  %57 = ptrtoint ptr %bLedBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %bLedBlinkInProgress, align 1
  br label %cleanup

if.else92:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %58 = load ptr, ptr @system_wq, align 4
  %call.i.i238 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %work, i32 noundef 5) #2
  br label %cleanup

sw.bb97:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  %59 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %20, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool99.not = icmp eq i8 %60, 0
  %.204 = select i1 %tobool99.not, i32 1, i32 2
  %61 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.204, ptr %BlinkingLedState, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %62 = load ptr, ptr @system_wq, align 4
  %call.i.i239 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %work, i32 noundef 18) #2
  br label %cleanup

sw.bb108:                                         ; preds = %if.end7
  %63 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %BlinkingLedState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp110.not = icmp eq i32 %64, 1
  br i1 %cmp110.not, label %if.else124, label %if.then111

if.then111:                                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #4
  %bLedLinkBlinkInProgress112 = getelementptr i8, ptr %work, i32 -3
  %65 = ptrtoint ptr %bLedLinkBlinkInProgress112 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %bLedLinkBlinkInProgress112, align 1
  %66 = ptrtoint ptr %CurrLedState to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %CurrLedState, align 4
  %67 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %20, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool115.not = icmp eq i8 %68, 0
  %.205 = select i1 %tobool115.not, i32 1, i32 2
  %69 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.205, ptr %BlinkingLedState, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %70 = load ptr, ptr @system_wq, align 4
  %call.i.i240 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %70, ptr noundef %work, i32 noundef 50) #2
  %bLedWPSBlinkInProgress = getelementptr i8, ptr %work, i32 -10
  %71 = ptrtoint ptr %bLedWPSBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %bLedWPSBlinkInProgress, align 2
  br label %cleanup

if.else124:                                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #4
  %72 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %BlinkingLedState, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %73 = load ptr, ptr @system_wq, align 4
  %call.i.i241 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %work, i32 noundef 500) #2
  br label %cleanup

cleanup:                                          ; preds = %if.else124, %if.then111, %sw.bb97, %if.else92, %if.end91, %if.else55, %if.end54, %sw.bb16, %sw.bb, %if.end7.cleanup_crit_edge, %SwLedOff.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188eu_DeInitSwLeds(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %blink_work = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %blink_work) #2
  %CurrLedState.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %0 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %CurrLedState.i, align 4
  %BlinkTimes.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 6
  %BlinkingLedState.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  %1 = call ptr @memset(ptr %BlinkingLedState.i, i32 0, i32 7)
  %2 = call ptr @memset(ptr %BlinkTimes.i, i32 0, i32 7)
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %3 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.SwLedOff.exit_crit_edge

entry.SwLedOff.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %SwLedOff.exit

lor.lhs.false.i:                                  ; preds = %entry
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %5 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bDriverStopped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.SwLedOff.exit_crit_edge

lor.lhs.false.i.SwLedOff.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %SwLedOff.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 78) #2
  %7 = and i8 %call.i, -112
  %8 = or i8 %7, 8
  %call5.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 78, i8 noundef zeroext %8) #2
  %call6.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 67) #2
  %9 = and i8 %call6.i, -2
  %call10.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 67, i8 noundef zeroext %9) #2
  br label %SwLedOff.exit

SwLedOff.exit:                                    ; preds = %if.end.i, %lor.lhs.false.i.SwLedOff.exit_crit_edge, %entry.SwLedOff.exit_crit_edge
  %bLedOn.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 3
  %10 = ptrtoint ptr %bLedOn.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bLedOn.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SwLedOff(ptr noundef %padapter, ptr nocapture noundef writeonly %pLed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %0 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.exit_crit_edge

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 78) #2
  %4 = and i8 %call, -112
  %5 = or i8 %4, 8
  %call5 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 78, i8 noundef zeroext %5) #2
  %call6 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 67) #2
  %6 = and i8 %call6, -2
  %call10 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 67, i8 noundef zeroext %6) #2
  br label %exit

exit:                                             ; preds = %if.end, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %bLedOn = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 3
  %7 = ptrtoint ptr %bLedOn to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bLedOn, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_led_control(ptr noundef %padapter, i32 noundef %LedAction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ledpriv1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %0 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 26
  %4 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %bRegUseLed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %bRegUseLed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bRegUseLed, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %led_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 35
  %8 = ptrtoint ptr %led_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %led_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %10 = zext i32 %LedAction to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %LedAction, label %if.end10.cleanup_crit_edge [
    i32 8, label %if.end10.sw.bb_crit_edge
    i32 3, label %if.end10.sw.bb_crit_edge507
    i32 2, label %sw.bb43
    i32 6, label %sw.bb87
    i32 4, label %if.end10.sw.bb140_crit_edge
    i32 5, label %if.end10.sw.bb140_crit_edge508
    i32 9, label %sw.bb185
    i32 10, label %sw.bb230
    i32 12, label %sw.bb280
    i32 7, label %sw.bb300
  ]

if.end10.sw.bb140_crit_edge508:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb140

if.end10.sw.bb140_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb140

if.end10.sw.bb_crit_edge507:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge507
  %bLedNoLinkBlinkInProgress = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 7
  %11 = ptrtoint ptr %bLedNoLinkBlinkInProgress to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bLedNoLinkBlinkInProgress, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.then12, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then12:                                        ; preds = %sw.bb
  %CurrLedState = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %13 = ptrtoint ptr %CurrLedState to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %CurrLedState, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %14, label %lor.lhs.false19 [
    i32 6, label %if.then12.cleanup_crit_edge
    i32 10, label %if.then12.cleanup_crit_edge509
    i32 11, label %if.then12.cleanup_crit_edge510
  ]

if.then12.cleanup_crit_edge510:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then12.cleanup_crit_edge509:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false19:                                  ; preds = %if.then12
  %bLedWPSBlinkInProgress = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 5
  %16 = ptrtoint ptr %bLedWPSBlinkInProgress to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bLedWPSBlinkInProgress, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not = icmp eq i8 %17, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false19
  %bLedLinkBlinkInProgress = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 8
  %18 = ptrtoint ptr %bLedLinkBlinkInProgress to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bLedLinkBlinkInProgress, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not = icmp eq i8 %19, 0
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %if.then24

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work) #2
  %20 = ptrtoint ptr %bLedLinkBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bLedLinkBlinkInProgress, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %bLedBlinkInProgress = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 4
  %21 = ptrtoint ptr %bLedBlinkInProgress to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bLedBlinkInProgress, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not = icmp eq i8 %22, 0
  br i1 %tobool27.not, label %if.end26.if.end32_crit_edge, label %if.then28

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end32

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work29 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call30 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work29) #2
  %23 = ptrtoint ptr %bLedBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bLedBlinkInProgress, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end26.if.end32_crit_edge
  %24 = ptrtoint ptr %bLedNoLinkBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %bLedNoLinkBlinkInProgress, align 4
  %25 = ptrtoint ptr %CurrLedState to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %CurrLedState, align 4
  %bLedOn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 3
  %26 = ptrtoint ptr %bLedOn to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bLedOn, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool35.not = icmp eq i8 %27, 0
  %spec.select = select i1 %tobool35.not, i32 1, i32 2
  %28 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %28, align 4
  %blink_work39 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %blink_work39, i32 noundef 100) #2
  br label %cleanup

sw.bb43:                                          ; preds = %if.end10
  %bLedLinkBlinkInProgress44 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 8
  %31 = ptrtoint ptr %bLedLinkBlinkInProgress44 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bLedLinkBlinkInProgress44, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool45.not = icmp eq i8 %32, 0
  br i1 %tobool45.not, label %if.then46, label %sw.bb43.cleanup_crit_edge

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then46:                                        ; preds = %sw.bb43
  %CurrLedState47 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %33 = ptrtoint ptr %CurrLedState47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %CurrLedState47, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %34, label %lor.lhs.false55 [
    i32 6, label %if.then46.cleanup_crit_edge
    i32 10, label %if.then46.cleanup_crit_edge511
    i32 11, label %if.then46.cleanup_crit_edge512
  ]

if.then46.cleanup_crit_edge512:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then46.cleanup_crit_edge511:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false55:                                  ; preds = %if.then46
  %bLedWPSBlinkInProgress56 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 5
  %36 = ptrtoint ptr %bLedWPSBlinkInProgress56 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bLedWPSBlinkInProgress56, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool57.not = icmp eq i8 %37, 0
  br i1 %tobool57.not, label %if.end59, label %lor.lhs.false55.cleanup_crit_edge

lor.lhs.false55.cleanup_crit_edge:                ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false55
  %bLedNoLinkBlinkInProgress60 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 7
  %38 = ptrtoint ptr %bLedNoLinkBlinkInProgress60 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bLedNoLinkBlinkInProgress60, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool61.not = icmp eq i8 %39, 0
  br i1 %tobool61.not, label %if.end59.if.end66_crit_edge, label %if.then62

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end66

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work63 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call64 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work63) #2
  %40 = ptrtoint ptr %bLedNoLinkBlinkInProgress60 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %bLedNoLinkBlinkInProgress60, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end59.if.end66_crit_edge
  %bLedBlinkInProgress67 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 4
  %41 = ptrtoint ptr %bLedBlinkInProgress67 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bLedBlinkInProgress67, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool68.not = icmp eq i8 %42, 0
  br i1 %tobool68.not, label %if.end66.if.end73_crit_edge, label %if.then69

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end73

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work70 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call71 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work70) #2
  %43 = ptrtoint ptr %bLedBlinkInProgress67 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %bLedBlinkInProgress67, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.end66.if.end73_crit_edge
  %44 = ptrtoint ptr %bLedLinkBlinkInProgress44 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %bLedLinkBlinkInProgress44, align 1
  %45 = ptrtoint ptr %CurrLedState47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %CurrLedState47, align 4
  %bLedOn76 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 3
  %46 = ptrtoint ptr %bLedOn76 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bLedOn76, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool77.not = icmp eq i8 %47, 0
  %spec.select502 = select i1 %tobool77.not, i32 1, i32 2
  %48 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.select502, ptr %48, align 4
  %blink_work83 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i490 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %blink_work83, i32 noundef 50) #2
  br label %cleanup

sw.bb87:                                          ; preds = %if.end10
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27, i32 3
  %51 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bBusyTraffic, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool88.not = icmp eq i8 %52, 0
  br i1 %tobool88.not, label %sw.bb87.if.else92_crit_edge, label %land.lhs.true

sw.bb87.if.else92_crit_edge:                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else92

land.lhs.true:                                    ; preds = %sw.bb87
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool90.not = icmp eq i32 %and.i, 0
  br i1 %tobool90.not, label %land.lhs.true.if.else92_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.if.else92_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else92

if.else92:                                        ; preds = %land.lhs.true.if.else92_crit_edge, %sw.bb87.if.else92_crit_edge
  %bLedScanBlinkInProgress = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 9
  %55 = ptrtoint ptr %bLedScanBlinkInProgress to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bLedScanBlinkInProgress, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool93.not = icmp eq i8 %56, 0
  br i1 %tobool93.not, label %if.then94, label %if.else92.cleanup_crit_edge

if.else92.cleanup_crit_edge:                      ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then94:                                        ; preds = %if.else92
  %CurrLedState95 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %57 = ptrtoint ptr %CurrLedState95 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %CurrLedState95, align 4
  %59 = and i32 %58, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %59)
  %switch = icmp eq i32 %59, 10
  br i1 %switch, label %if.then94.cleanup_crit_edge, label %lor.lhs.false100

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false100:                                 ; preds = %if.then94
  %bLedWPSBlinkInProgress101 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 5
  %60 = ptrtoint ptr %bLedWPSBlinkInProgress101 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bLedWPSBlinkInProgress101, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool102.not = icmp eq i8 %61, 0
  br i1 %tobool102.not, label %if.end104, label %lor.lhs.false100.cleanup_crit_edge

lor.lhs.false100.cleanup_crit_edge:               ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end104:                                        ; preds = %lor.lhs.false100
  %bLedNoLinkBlinkInProgress105 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 7
  %62 = ptrtoint ptr %bLedNoLinkBlinkInProgress105 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bLedNoLinkBlinkInProgress105, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool106.not = icmp eq i8 %63, 0
  br i1 %tobool106.not, label %if.end104.if.end111_crit_edge, label %if.then107

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end111

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work108 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call109 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work108) #2
  %64 = ptrtoint ptr %bLedNoLinkBlinkInProgress105 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %bLedNoLinkBlinkInProgress105, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end104.if.end111_crit_edge
  %bLedLinkBlinkInProgress112 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 8
  %65 = ptrtoint ptr %bLedLinkBlinkInProgress112 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bLedLinkBlinkInProgress112, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool113.not = icmp eq i8 %66, 0
  br i1 %tobool113.not, label %if.end111.if.end118_crit_edge, label %if.then114

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end118

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work115 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call116 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work115) #2
  %67 = ptrtoint ptr %bLedLinkBlinkInProgress112 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %bLedLinkBlinkInProgress112, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %if.end111.if.end118_crit_edge
  %bLedBlinkInProgress119 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 4
  %68 = ptrtoint ptr %bLedBlinkInProgress119 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bLedBlinkInProgress119, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool120.not = icmp eq i8 %69, 0
  br i1 %tobool120.not, label %if.end118.if.end125_crit_edge, label %if.then121

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end125

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work122 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call123 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work122) #2
  %70 = ptrtoint ptr %bLedBlinkInProgress119 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %bLedBlinkInProgress119, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %if.end118.if.end125_crit_edge
  %71 = ptrtoint ptr %bLedScanBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %bLedScanBlinkInProgress, align 2
  %72 = ptrtoint ptr %CurrLedState95 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 6, ptr %CurrLedState95, align 4
  %BlinkTimes = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 6
  %73 = ptrtoint ptr %BlinkTimes to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 24, ptr %BlinkTimes, align 4
  %bLedOn128 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 3
  %74 = ptrtoint ptr %bLedOn128 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bLedOn128, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool129.not = icmp eq i8 %75, 0
  %spec.select503 = select i1 %tobool129.not, i32 1, i32 2
  %76 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %spec.select503, ptr %76, align 4
  %blink_work135 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %78 = load ptr, ptr @system_wq, align 4
  %call.i.i491 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %blink_work135, i32 noundef 18) #2
  br label %cleanup

sw.bb140:                                         ; preds = %if.end10.sw.bb140_crit_edge, %if.end10.sw.bb140_crit_edge508
  %bLedBlinkInProgress141 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 4
  %79 = ptrtoint ptr %bLedBlinkInProgress141 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bLedBlinkInProgress141, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool142.not = icmp eq i8 %80, 0
  br i1 %tobool142.not, label %if.then143, label %sw.bb140.cleanup_crit_edge

sw.bb140.cleanup_crit_edge:                       ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then143:                                       ; preds = %sw.bb140
  %CurrLedState144 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %81 = ptrtoint ptr %CurrLedState144 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %CurrLedState144, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %82, label %lor.lhs.false152 [
    i32 6, label %if.then143.cleanup_crit_edge
    i32 10, label %if.then143.cleanup_crit_edge513
    i32 11, label %if.then143.cleanup_crit_edge514
  ]

if.then143.cleanup_crit_edge514:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then143.cleanup_crit_edge513:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then143.cleanup_crit_edge:                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false152:                                 ; preds = %if.then143
  %bLedWPSBlinkInProgress153 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 5
  %84 = ptrtoint ptr %bLedWPSBlinkInProgress153 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bLedWPSBlinkInProgress153, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool154.not = icmp eq i8 %85, 0
  br i1 %tobool154.not, label %if.end156, label %lor.lhs.false152.cleanup_crit_edge

lor.lhs.false152.cleanup_crit_edge:               ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end156:                                        ; preds = %lor.lhs.false152
  %bLedNoLinkBlinkInProgress157 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 7
  %86 = ptrtoint ptr %bLedNoLinkBlinkInProgress157 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bLedNoLinkBlinkInProgress157, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool158.not = icmp eq i8 %87, 0
  br i1 %tobool158.not, label %if.end156.if.end163_crit_edge, label %if.then159

if.end156.if.end163_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end163

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work160 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call161 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work160) #2
  %88 = ptrtoint ptr %bLedNoLinkBlinkInProgress157 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %bLedNoLinkBlinkInProgress157, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then159, %if.end156.if.end163_crit_edge
  %bLedLinkBlinkInProgress164 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 8
  %89 = ptrtoint ptr %bLedLinkBlinkInProgress164 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bLedLinkBlinkInProgress164, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool165.not = icmp eq i8 %90, 0
  br i1 %tobool165.not, label %if.end163.if.end170_crit_edge, label %if.then166

if.end163.if.end170_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end170

if.then166:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work167 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call168 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work167) #2
  %91 = ptrtoint ptr %bLedLinkBlinkInProgress164 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %bLedLinkBlinkInProgress164, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.then166, %if.end163.if.end170_crit_edge
  %92 = ptrtoint ptr %bLedBlinkInProgress141 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %bLedBlinkInProgress141, align 1
  %93 = ptrtoint ptr %CurrLedState144 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 9, ptr %CurrLedState144, align 4
  %BlinkTimes173 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 6
  %94 = ptrtoint ptr %BlinkTimes173 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %BlinkTimes173, align 4
  %bLedOn174 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 3
  %95 = ptrtoint ptr %bLedOn174 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bLedOn174, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool175.not = icmp eq i8 %96, 0
  %spec.select504 = select i1 %tobool175.not, i32 1, i32 2
  %97 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %spec.select504, ptr %97, align 4
  %blink_work181 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %99 = load ptr, ptr @system_wq, align 4
  %call.i.i492 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %99, ptr noundef %blink_work181, i32 noundef 5) #2
  br label %cleanup

sw.bb185:                                         ; preds = %if.end10
  %bLedWPSBlinkInProgress186 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 5
  %100 = ptrtoint ptr %bLedWPSBlinkInProgress186 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bLedWPSBlinkInProgress186, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool187.not = icmp eq i8 %101, 0
  br i1 %tobool187.not, label %if.then188, label %sw.bb185.cleanup_crit_edge

sw.bb185.cleanup_crit_edge:                       ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then188:                                       ; preds = %sw.bb185
  %bLedNoLinkBlinkInProgress189 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 7
  %102 = ptrtoint ptr %bLedNoLinkBlinkInProgress189 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bLedNoLinkBlinkInProgress189, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool190.not = icmp eq i8 %103, 0
  br i1 %tobool190.not, label %if.then188.if.end195_crit_edge, label %if.then191

if.then188.if.end195_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end195

if.then191:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work192 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call193 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work192) #2
  %104 = ptrtoint ptr %bLedNoLinkBlinkInProgress189 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %bLedNoLinkBlinkInProgress189, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then191, %if.then188.if.end195_crit_edge
  %bLedLinkBlinkInProgress196 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 8
  %105 = ptrtoint ptr %bLedLinkBlinkInProgress196 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bLedLinkBlinkInProgress196, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool197.not = icmp eq i8 %106, 0
  br i1 %tobool197.not, label %if.end195.if.end202_crit_edge, label %if.then198

if.end195.if.end202_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end202

if.then198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work199 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call200 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work199) #2
  %107 = ptrtoint ptr %bLedLinkBlinkInProgress196 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %bLedLinkBlinkInProgress196, align 1
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %if.end195.if.end202_crit_edge
  %bLedBlinkInProgress203 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 4
  %108 = ptrtoint ptr %bLedBlinkInProgress203 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bLedBlinkInProgress203, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool204.not = icmp eq i8 %109, 0
  br i1 %tobool204.not, label %if.end202.if.end209_crit_edge, label %if.then205

if.end202.if.end209_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.then205:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work206 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call207 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work206) #2
  %110 = ptrtoint ptr %bLedBlinkInProgress203 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %bLedBlinkInProgress203, align 1
  br label %if.end209

if.end209:                                        ; preds = %if.then205, %if.end202.if.end209_crit_edge
  %bLedScanBlinkInProgress210 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 9
  %111 = ptrtoint ptr %bLedScanBlinkInProgress210 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bLedScanBlinkInProgress210, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool211.not = icmp eq i8 %112, 0
  br i1 %tobool211.not, label %if.end209.if.end216_crit_edge, label %if.then212

if.end209.if.end216_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end216

if.then212:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work213 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call214 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work213) #2
  %113 = ptrtoint ptr %bLedScanBlinkInProgress210 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %bLedScanBlinkInProgress210, align 2
  br label %if.end216

if.end216:                                        ; preds = %if.then212, %if.end209.if.end216_crit_edge
  %114 = ptrtoint ptr %bLedWPSBlinkInProgress186 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %bLedWPSBlinkInProgress186, align 2
  %CurrLedState218 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %115 = ptrtoint ptr %CurrLedState218 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 10, ptr %CurrLedState218, align 4
  %bLedOn219 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 3
  %116 = ptrtoint ptr %bLedOn219 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %bLedOn219, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool220.not = icmp eq i8 %117, 0
  %spec.select505 = select i1 %tobool220.not, i32 1, i32 2
  %118 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %spec.select505, ptr %118, align 4
  %blink_work226 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %120 = load ptr, ptr @system_wq, align 4
  %call.i.i493 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %120, ptr noundef %blink_work226, i32 noundef 18) #2
  br label %cleanup

sw.bb230:                                         ; preds = %if.end10
  %bLedNoLinkBlinkInProgress231 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 7
  %121 = ptrtoint ptr %bLedNoLinkBlinkInProgress231 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bLedNoLinkBlinkInProgress231, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool232.not = icmp eq i8 %122, 0
  br i1 %tobool232.not, label %sw.bb230.if.end237_crit_edge, label %if.then233

sw.bb230.if.end237_crit_edge:                     ; preds = %sw.bb230
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end237

if.then233:                                       ; preds = %sw.bb230
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work234 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call235 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work234) #2
  %123 = ptrtoint ptr %bLedNoLinkBlinkInProgress231 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %bLedNoLinkBlinkInProgress231, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.then233, %sw.bb230.if.end237_crit_edge
  %bLedLinkBlinkInProgress238 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 8
  %124 = ptrtoint ptr %bLedLinkBlinkInProgress238 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bLedLinkBlinkInProgress238, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool239.not = icmp eq i8 %125, 0
  br i1 %tobool239.not, label %if.end237.if.end244_crit_edge, label %if.then240

if.end237.if.end244_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end244

if.then240:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work241 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call242 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work241) #2
  %126 = ptrtoint ptr %bLedLinkBlinkInProgress238 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %bLedLinkBlinkInProgress238, align 1
  br label %if.end244

if.end244:                                        ; preds = %if.then240, %if.end237.if.end244_crit_edge
  %bLedBlinkInProgress245 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 4
  %127 = ptrtoint ptr %bLedBlinkInProgress245 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bLedBlinkInProgress245, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool246.not = icmp eq i8 %128, 0
  br i1 %tobool246.not, label %if.end244.if.end251_crit_edge, label %if.then247

if.end244.if.end251_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end251

if.then247:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work248 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call249 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work248) #2
  %129 = ptrtoint ptr %bLedBlinkInProgress245 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %bLedBlinkInProgress245, align 1
  br label %if.end251

if.end251:                                        ; preds = %if.then247, %if.end244.if.end251_crit_edge
  %bLedScanBlinkInProgress252 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 9
  %130 = ptrtoint ptr %bLedScanBlinkInProgress252 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bLedScanBlinkInProgress252, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool253.not = icmp eq i8 %131, 0
  br i1 %tobool253.not, label %if.end251.if.end258_crit_edge, label %if.then254

if.end251.if.end258_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end258

if.then254:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work255 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call256 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work255) #2
  %132 = ptrtoint ptr %bLedScanBlinkInProgress252 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %bLedScanBlinkInProgress252, align 2
  br label %if.end258

if.end258:                                        ; preds = %if.then254, %if.end251.if.end258_crit_edge
  %bLedWPSBlinkInProgress259 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 5
  %133 = ptrtoint ptr %bLedWPSBlinkInProgress259 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bLedWPSBlinkInProgress259, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool260.not = icmp eq i8 %134, 0
  br i1 %tobool260.not, label %if.else264, label %if.then261

if.then261:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work262 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call263 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work262) #2
  br label %if.end266

if.else264:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #4
  %135 = ptrtoint ptr %bLedWPSBlinkInProgress259 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %bLedWPSBlinkInProgress259, align 2
  br label %if.end266

if.end266:                                        ; preds = %if.else264, %if.then261
  %CurrLedState267 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %136 = ptrtoint ptr %CurrLedState267 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 11, ptr %CurrLedState267, align 4
  %bLedOn268 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 3
  %137 = ptrtoint ptr %bLedOn268 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %bLedOn268, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool269.not = icmp eq i8 %138, 0
  %BlinkingLedState276 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  br i1 %tobool269.not, label %if.else275, label %if.then270

if.then270:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #4
  %139 = ptrtoint ptr %BlinkingLedState276 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 2, ptr %BlinkingLedState276, align 4
  %blink_work272 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %140 = load ptr, ptr @system_wq, align 4
  %call.i.i494 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %140, ptr noundef %blink_work272, i32 noundef 500) #2
  br label %cleanup

if.else275:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #4
  %141 = ptrtoint ptr %BlinkingLedState276 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %BlinkingLedState276, align 4
  %blink_work277 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %142 = load ptr, ptr @system_wq, align 4
  %call.i.i495 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %142, ptr noundef %blink_work277, i32 noundef 0) #2
  br label %cleanup

sw.bb280:                                         ; preds = %if.end10
  %bLedWPSBlinkInProgress281 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 5
  %143 = ptrtoint ptr %bLedWPSBlinkInProgress281 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %bLedWPSBlinkInProgress281, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool282.not = icmp eq i8 %144, 0
  br i1 %tobool282.not, label %sw.bb280.if.end287_crit_edge, label %if.then283

sw.bb280.if.end287_crit_edge:                     ; preds = %sw.bb280
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end287

if.then283:                                       ; preds = %sw.bb280
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work284 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call285 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work284) #2
  %145 = ptrtoint ptr %bLedWPSBlinkInProgress281 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %bLedWPSBlinkInProgress281, align 2
  br label %if.end287

if.end287:                                        ; preds = %if.then283, %sw.bb280.if.end287_crit_edge
  %bLedNoLinkBlinkInProgress288 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 7
  %146 = ptrtoint ptr %bLedNoLinkBlinkInProgress288 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %bLedNoLinkBlinkInProgress288, align 4
  %CurrLedState289 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %147 = ptrtoint ptr %CurrLedState289 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 4, ptr %CurrLedState289, align 4
  %bLedOn290 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 3
  %148 = ptrtoint ptr %bLedOn290 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %bLedOn290, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool291.not = icmp eq i8 %149, 0
  %spec.select506 = select i1 %tobool291.not, i32 1, i32 2
  %150 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %spec.select506, ptr %150, align 4
  %blink_work297 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %152 = load ptr, ptr @system_wq, align 4
  %call.i.i496 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %152, ptr noundef %blink_work297, i32 noundef 100) #2
  br label %cleanup

sw.bb300:                                         ; preds = %if.end10
  %CurrLedState301 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 1
  %153 = ptrtoint ptr %CurrLedState301 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 2, ptr %CurrLedState301, align 4
  %BlinkingLedState302 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 2
  %154 = ptrtoint ptr %BlinkingLedState302 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 2, ptr %BlinkingLedState302, align 4
  %bLedNoLinkBlinkInProgress303 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 7
  %155 = ptrtoint ptr %bLedNoLinkBlinkInProgress303 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %bLedNoLinkBlinkInProgress303, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool304.not = icmp eq i8 %156, 0
  br i1 %tobool304.not, label %sw.bb300.if.end309_crit_edge, label %if.then305

sw.bb300.if.end309_crit_edge:                     ; preds = %sw.bb300
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end309

if.then305:                                       ; preds = %sw.bb300
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work306 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call307 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work306) #2
  %157 = ptrtoint ptr %bLedNoLinkBlinkInProgress303 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %bLedNoLinkBlinkInProgress303, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then305, %sw.bb300.if.end309_crit_edge
  %bLedLinkBlinkInProgress310 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 8
  %158 = ptrtoint ptr %bLedLinkBlinkInProgress310 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %bLedLinkBlinkInProgress310, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool311.not = icmp eq i8 %159, 0
  br i1 %tobool311.not, label %if.end309.if.end316_crit_edge, label %if.then312

if.end309.if.end316_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end316

if.then312:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work313 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call314 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work313) #2
  %160 = ptrtoint ptr %bLedLinkBlinkInProgress310 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %bLedLinkBlinkInProgress310, align 1
  br label %if.end316

if.end316:                                        ; preds = %if.then312, %if.end309.if.end316_crit_edge
  %bLedBlinkInProgress317 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 4
  %161 = ptrtoint ptr %bLedBlinkInProgress317 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %bLedBlinkInProgress317, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool318.not = icmp eq i8 %162, 0
  br i1 %tobool318.not, label %if.end316.if.end323_crit_edge, label %if.then319

if.end316.if.end323_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end323

if.then319:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work320 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call321 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work320) #2
  %163 = ptrtoint ptr %bLedBlinkInProgress317 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %bLedBlinkInProgress317, align 1
  br label %if.end323

if.end323:                                        ; preds = %if.then319, %if.end316.if.end323_crit_edge
  %bLedWPSBlinkInProgress324 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 5
  %164 = ptrtoint ptr %bLedWPSBlinkInProgress324 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bLedWPSBlinkInProgress324, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool325.not = icmp eq i8 %165, 0
  br i1 %tobool325.not, label %if.end323.if.end330_crit_edge, label %if.then326

if.end323.if.end330_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end330

if.then326:                                       ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work327 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call328 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work327) #2
  %166 = ptrtoint ptr %bLedWPSBlinkInProgress324 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %bLedWPSBlinkInProgress324, align 2
  br label %if.end330

if.end330:                                        ; preds = %if.then326, %if.end323.if.end330_crit_edge
  %bLedScanBlinkInProgress331 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 9
  %167 = ptrtoint ptr %bLedScanBlinkInProgress331 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %bLedScanBlinkInProgress331, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool332.not = icmp eq i8 %168, 0
  br i1 %tobool332.not, label %if.end330.if.end337_crit_edge, label %if.then333

if.end330.if.end337_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end337

if.then333:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #4
  %blink_work334 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 16, i32 0, i32 10
  %call335 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %blink_work334) #2
  %169 = ptrtoint ptr %bLedScanBlinkInProgress331 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %bLedScanBlinkInProgress331, align 2
  br label %if.end337

if.end337:                                        ; preds = %if.then333, %if.end330.if.end337_crit_edge
  tail call fastcc void @SwLedOff(ptr noundef %padapter, ptr noundef %ledpriv1)
  br label %cleanup

cleanup:                                          ; preds = %if.end337, %if.end287, %if.else275, %if.then270, %if.end216, %sw.bb185.cleanup_crit_edge, %if.end170, %lor.lhs.false152.cleanup_crit_edge, %if.then143.cleanup_crit_edge, %if.then143.cleanup_crit_edge513, %if.then143.cleanup_crit_edge514, %sw.bb140.cleanup_crit_edge, %if.end125, %lor.lhs.false100.cleanup_crit_edge, %if.then94.cleanup_crit_edge, %if.else92.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end73, %lor.lhs.false55.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.then46.cleanup_crit_edge511, %if.then46.cleanup_crit_edge512, %sw.bb43.cleanup_crit_edge, %if.end32, %lor.lhs.false19.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then12.cleanup_crit_edge509, %if.then12.cleanup_crit_edge510, %sw.bb.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @rtl8188eu_InitSwLeds.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_led.c", i32 179, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rtl8188eu_InitSwLeds.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i8 0, i8 2}
