; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/rtl8188e_phycfg.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/rtl8188e_phycfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@_PHY_SwChnl8192C._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016R8188EU: [%s] ch = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_PHY_SwChnl8192C\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/staging/r8188eu/hal/rtl8188e_phycfg.c\00", [50 x i8] zeroinitializer }, align 32
@_PHY_SwChnl8192C._entry_ptr = internal global ptr @_PHY_SwChnl8192C._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3584, i64 3588, i64 3592]
@__sancov_gen_cov_switch_values.3 = internal global [9 x i64] [i64 7, i64 32, i64 2096, i64 2100, i64 2104, i64 3600, i64 3604, i64 3608, i64 3612]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 2108, i64 2120, i64 2124, i64 2152]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [49 x i8] c"../drivers/staging/r8188eu/hal/rtl8188e_phycfg.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 765, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @_PHY_SwChnl8192C._entry, ptr @_PHY_SwChnl8192C._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_PHY_SwChnl8192C._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %Adapter, i32 noundef %RegAddr, i32 noundef %BitMask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef %RegAddr) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = shl nuw i32 1, %i.05.i
  %1 = and i32 %0, %BitMask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.phy_CalculateBitShift.exit_crit_edge

for.body.i.phy_CalculateBitShift.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_CalculateBitShift.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.phy_CalculateBitShift.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.phy_CalculateBitShift.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_CalculateBitShift.exit

phy_CalculateBitShift.exit:                       ; preds = %for.inc.i.phy_CalculateBitShift.exit_crit_edge, %for.body.i.phy_CalculateBitShift.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.05.i, %for.body.i.phy_CalculateBitShift.exit_crit_edge ], [ 32, %for.inc.i.phy_CalculateBitShift.exit_crit_edge ]
  %and = and i32 %call, %BitMask
  %shr = lshr i32 %and, %i.0.lcssa.i
  ret i32 %shr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %BitMask)
  %cmp.not = icmp eq i32 %BitMask, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef %RegAddr) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.05.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = shl nuw i32 1, %i.05.i
  %1 = and i32 %0, %BitMask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.phy_CalculateBitShift.exit_crit_edge

for.body.i.phy_CalculateBitShift.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_CalculateBitShift.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.phy_CalculateBitShift.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.phy_CalculateBitShift.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_CalculateBitShift.exit

phy_CalculateBitShift.exit:                       ; preds = %for.inc.i.phy_CalculateBitShift.exit_crit_edge, %for.body.i.phy_CalculateBitShift.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.05.i, %for.body.i.phy_CalculateBitShift.exit_crit_edge ], [ 32, %for.inc.i.phy_CalculateBitShift.exit_crit_edge ]
  %neg = xor i32 %BitMask, -1
  %and = and i32 %call, %neg
  %shl = shl i32 %Data, %i.0.lcssa.i
  %or = or i32 %shl, %and
  br label %if.end

if.end:                                           ; preds = %phy_CalculateBitShift.exit, %entry.if.end_crit_edge
  %Data.addr.0 = phi i32 [ %or, %phy_CalculateBitShift.exit ], [ %Data, %entry.if.end_crit_edge ]
  %call2 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef %RegAddr, i32 noundef %Data.addr.0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188e_PHY_QueryRFReg(ptr noundef %Adapter, i32 noundef %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @phy_RFSerialRead(ptr noundef %Adapter, i32 noundef %eRFPath, i32 noundef %RegAddr)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = shl nuw i32 1, %i.05.i
  %1 = and i32 %0, %BitMask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.phy_CalculateBitShift.exit_crit_edge

for.body.i.phy_CalculateBitShift.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_CalculateBitShift.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.phy_CalculateBitShift.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.phy_CalculateBitShift.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_CalculateBitShift.exit

phy_CalculateBitShift.exit:                       ; preds = %for.inc.i.phy_CalculateBitShift.exit_crit_edge, %for.body.i.phy_CalculateBitShift.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.05.i, %for.body.i.phy_CalculateBitShift.exit_crit_edge ], [ 32, %for.inc.i.phy_CalculateBitShift.exit_crit_edge ]
  %and = and i32 %call, %BitMask
  %shr = lshr i32 %and, %i.0.lcssa.i
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_RFSerialRead(ptr noundef %Adapter, i32 noundef %eRFPath, i32 noundef %Offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 2084) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eRFPath)
  %cmp = icmp eq i32 %eRFPath, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rfHSSIPara2 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 %eRFPath, i32 8
  %0 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rfHSSIPara2, align 4
  %call.i39 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %tmplong2.0 = phi i32 [ %call.i39, %if.else ], [ %call.i, %entry.if.end_crit_edge ]
  %and2 = and i32 %tmplong2.0, 8388607
  %and = shl i32 %Offset, 23
  %or = or i32 %and2, %and
  %or3 = or i32 %or, -2147483648
  %and4 = and i32 %call.i, 2147483647
  %call2.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 2084, i32 noundef %and4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #5
  %rfHSSIPara25 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 %eRFPath, i32 8
  %3 = ptrtoint ptr %rfHSSIPara25 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfHSSIPara25, align 4
  %call2.i40 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef %4, i32 noundef %or3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #5
  br i1 %cmp, label %if.end.if.end16_crit_edge, label %if.else9

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %eRFPath)
  %cmp10 = icmp eq i32 %eRFPath, 1
  br i1 %cmp10, label %if.else9.if.end16_crit_edge, label %if.else9.rtl8188e_PHY_QueryBBReg.exit74_crit_edge

if.else9.rtl8188e_PHY_QueryBBReg.exit74_crit_edge: ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8188e_PHY_QueryBBReg.exit74

if.else9.if.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %if.else9.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %.sink = phi i32 [ 2080, %if.end.if.end16_crit_edge ], [ 2088, %if.else9.if.end16_crit_edge ]
  %call.i42 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef %.sink) #5
  %7 = and i32 %call.i42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end16.rtl8188e_PHY_QueryBBReg.exit74_crit_edge, label %rtl8188e_PHY_QueryBBReg.exit63

if.end16.rtl8188e_PHY_QueryBBReg.exit74_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8188e_PHY_QueryBBReg.exit74

rtl8188e_PHY_QueryBBReg.exit63:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %rfLSSIReadBackPi = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 %eRFPath, i32 17
  br label %if.end21

rtl8188e_PHY_QueryBBReg.exit74:                   ; preds = %if.end16.rtl8188e_PHY_QueryBBReg.exit74_crit_edge, %if.else9.rtl8188e_PHY_QueryBBReg.exit74_crit_edge
  %rfLSSIReadBack = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 %eRFPath, i32 16
  br label %if.end21

if.end21:                                         ; preds = %rtl8188e_PHY_QueryBBReg.exit74, %rtl8188e_PHY_QueryBBReg.exit63
  %rfLSSIReadBack.sink = phi ptr [ %rfLSSIReadBack, %rtl8188e_PHY_QueryBBReg.exit74 ], [ %rfLSSIReadBackPi, %rtl8188e_PHY_QueryBBReg.exit63 ]
  %8 = ptrtoint ptr %rfLSSIReadBack.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfLSSIReadBack.sink, align 4
  %call.i64 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef %9) #5
  %retValue.0 = and i32 %call.i64, 1048575
  ret i32 %retValue.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_PHY_SetRFReg(ptr noundef %Adapter, i32 noundef %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %BitMask)
  %cmp.not = icmp eq i32 %BitMask, 1048575
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @phy_RFSerialRead(ptr noundef %Adapter, i32 noundef %eRFPath, i32 noundef %RegAddr)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.05.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = shl nuw i32 1, %i.05.i
  %1 = and i32 %0, %BitMask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.phy_CalculateBitShift.exit_crit_edge

for.body.i.phy_CalculateBitShift.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_CalculateBitShift.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.phy_CalculateBitShift.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.phy_CalculateBitShift.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_CalculateBitShift.exit

phy_CalculateBitShift.exit:                       ; preds = %for.inc.i.phy_CalculateBitShift.exit_crit_edge, %for.body.i.phy_CalculateBitShift.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.05.i, %for.body.i.phy_CalculateBitShift.exit_crit_edge ], [ 32, %for.inc.i.phy_CalculateBitShift.exit_crit_edge ]
  %neg = xor i32 %BitMask, -1
  %and = and i32 %call, %neg
  %shl = shl i32 %Data, %i.0.lcssa.i
  %or = or i32 %shl, %and
  br label %if.end

if.end:                                           ; preds = %phy_CalculateBitShift.exit, %entry.if.end_crit_edge
  %Data.addr.0 = phi i32 [ %or, %phy_CalculateBitShift.exit ], [ %Data, %entry.if.end_crit_edge ]
  %and.i = shl i32 %RegAddr, 20
  %shl.i = and i32 %and.i, 267386880
  %and1.i = and i32 %Data.addr.0, 1048575
  %or.i = or i32 %and1.i, %shl.i
  %rf3wireOffset.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 %eRFPath, i32 4
  %2 = ptrtoint ptr %rf3wireOffset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rf3wireOffset.i, align 4
  %call2.i.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef %3, i32 noundef %or.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PHY_MACConfig8188E(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %call = tail call i32 @ODM_ConfigMACWithHeaderFile(ptr noundef %odmpriv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp ne i32 %call, 1
  %spec.select = zext i1 %cmp to i32
  %call1 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1226, i16 noundef zeroext 7) #5
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_ConfigMACWithHeaderFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @storePwrIndexDiffRateOffset(ptr noundef %Adapter, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %RegAddr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %RegAddr, label %if.end17 [
    i32 3584, label %if.then
    i32 3588, label %if.then3
    i32 3592, label %if.then11
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %1 = ptrtoint ptr %pwrGroupCnt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pwrGroupCnt, align 2
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom
  br label %if.end125.sink.split

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt5 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %3 = ptrtoint ptr %pwrGroupCnt5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwrGroupCnt5, align 2
  %idxprom6 = zext i8 %4 to i32
  %arrayidx8 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom6, i32 1
  br label %if.end125.sink.split

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt13 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %5 = ptrtoint ptr %pwrGroupCnt13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwrGroupCnt13, align 2
  %idxprom14 = zext i8 %6 to i32
  %arrayidx16 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom14, i32 6
  br label %if.end125.sink.split

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2156, i32 %RegAddr)
  %cmp18 = icmp eq i32 %RegAddr, 2156
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %BitMask)
  %cmp19 = icmp eq i32 %BitMask, -256
  %or.cond = and i1 %cmp18, %cmp19
  br i1 %or.cond, label %if.end93.thread, label %if.end26

if.end93.thread:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt22 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %7 = ptrtoint ptr %pwrGroupCnt22 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pwrGroupCnt22, align 2
  %idxprom23 = zext i8 %8 to i32
  %arrayidx25 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom23, i32 7
  br label %if.end125.sink.split

if.end26:                                         ; preds = %if.end17
  %9 = zext i32 %RegAddr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %RegAddr, label %if.end26.if.end83_crit_edge [
    i32 3600, label %if.then28
    i32 3604, label %if.then36
    i32 3608, label %if.then44
    i32 3612, label %if.then52
    i32 2096, label %if.then61
    i32 2100, label %if.then69
    i32 2104, label %if.then77
  ]

if.end26.if.end83_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt30 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %10 = ptrtoint ptr %pwrGroupCnt30 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pwrGroupCnt30, align 2
  %idxprom31 = zext i8 %11 to i32
  %arrayidx33 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom31, i32 2
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %Data, ptr %arrayidx33, align 4
  br label %if.end83

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt38 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %13 = ptrtoint ptr %pwrGroupCnt38 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pwrGroupCnt38, align 2
  %idxprom39 = zext i8 %14 to i32
  %arrayidx41 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom39, i32 3
  %15 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %Data, ptr %arrayidx41, align 4
  br label %if.end83

if.then44:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt46 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %16 = ptrtoint ptr %pwrGroupCnt46 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pwrGroupCnt46, align 2
  %idxprom47 = zext i8 %17 to i32
  %arrayidx49 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom47, i32 4
  %18 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %Data, ptr %arrayidx49, align 4
  br label %if.end83

if.then52:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt54 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %19 = ptrtoint ptr %pwrGroupCnt54 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pwrGroupCnt54, align 2
  %idxprom55 = zext i8 %20 to i32
  %arrayidx57 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom55, i32 5
  %21 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %Data, ptr %arrayidx57, align 4
  %inc = add i8 %20, 1
  store i8 %inc, ptr %pwrGroupCnt54, align 2
  br label %if.end83

if.then61:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt63 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %22 = ptrtoint ptr %pwrGroupCnt63 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pwrGroupCnt63, align 2
  %idxprom64 = zext i8 %23 to i32
  %arrayidx66 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom64, i32 8
  %24 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %Data, ptr %arrayidx66, align 4
  br label %if.end83

if.then69:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt71 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %25 = ptrtoint ptr %pwrGroupCnt71 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pwrGroupCnt71, align 2
  %idxprom72 = zext i8 %26 to i32
  %arrayidx74 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom72, i32 9
  %27 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %Data, ptr %arrayidx74, align 4
  br label %if.end83

if.then77:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt79 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %28 = ptrtoint ptr %pwrGroupCnt79 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pwrGroupCnt79, align 2
  %idxprom80 = zext i8 %29 to i32
  %arrayidx82 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom80, i32 14
  %30 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %Data, ptr %arrayidx82, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %if.then69, %if.then61, %if.then52, %if.then44, %if.then36, %if.then28, %if.end26.if.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %BitMask)
  %cmp86 = icmp eq i32 %BitMask, 255
  %or.cond189 = and i1 %cmp86, %cmp18
  br i1 %or.cond189, label %if.then87, label %if.end83.if.end93_crit_edge

if.end83.if.end93_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt89 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %31 = ptrtoint ptr %pwrGroupCnt89 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pwrGroupCnt89, align 2
  %idxprom90 = zext i8 %32 to i32
  %arrayidx92 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom90, i32 15
  %33 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %Data, ptr %arrayidx92, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %if.end83.if.end93_crit_edge
  %34 = zext i32 %RegAddr to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %RegAddr, label %if.end93.if.end125_crit_edge [
    i32 2108, label %if.then95
    i32 2120, label %if.then103
    i32 2124, label %if.then111
    i32 2152, label %if.then119
  ]

if.end93.if.end125_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt97 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %35 = ptrtoint ptr %pwrGroupCnt97 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pwrGroupCnt97, align 2
  %idxprom98 = zext i8 %36 to i32
  %arrayidx100 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom98, i32 10
  br label %if.end125.sink.split

if.then103:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt105 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %37 = ptrtoint ptr %pwrGroupCnt105 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pwrGroupCnt105, align 2
  %idxprom106 = zext i8 %38 to i32
  %arrayidx108 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom106, i32 11
  br label %if.end125.sink.split

if.then111:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt113 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %39 = ptrtoint ptr %pwrGroupCnt113 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pwrGroupCnt113, align 2
  %idxprom114 = zext i8 %40 to i32
  %arrayidx116 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom114, i32 12
  br label %if.end125.sink.split

if.then119:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %pwrGroupCnt121 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %41 = ptrtoint ptr %pwrGroupCnt121 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pwrGroupCnt121, align 2
  %idxprom122 = zext i8 %42 to i32
  %arrayidx124 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom122, i32 13
  br label %if.end125.sink.split

if.end125.sink.split:                             ; preds = %if.then119, %if.then111, %if.then103, %if.then95, %if.end93.thread, %if.then11, %if.then3, %if.then
  %arrayidx8.sink = phi ptr [ %arrayidx8, %if.then3 ], [ %arrayidx, %if.then ], [ %arrayidx16, %if.then11 ], [ %arrayidx25, %if.end93.thread ], [ %arrayidx116, %if.then111 ], [ %arrayidx108, %if.then103 ], [ %arrayidx100, %if.then95 ], [ %arrayidx124, %if.then119 ]
  %43 = ptrtoint ptr %arrayidx8.sink to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %Data, ptr %arrayidx8.sink, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.end125.sink.split, %if.end93.if.end125_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PHY_BBConfig8188E(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PHYRegDef.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30
  %0 = ptrtoint ptr %PHYRegDef.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2160, ptr %PHYRegDef.i, align 4
  %arrayidx2.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2160, ptr %arrayidx2.i, align 4
  %rfintfi.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 1
  %2 = ptrtoint ptr %rfintfi.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2272, ptr %rfintfi.i, align 4
  %rfintfi8.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 1
  %3 = ptrtoint ptr %rfintfi8.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2272, ptr %rfintfi8.i, align 4
  %rfintfo.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 2
  %4 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2144, ptr %rfintfo.i, align 4
  %rfintfo13.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 2
  %5 = ptrtoint ptr %rfintfo13.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2148, ptr %rfintfo13.i, align 4
  %rfintfe.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 3
  %6 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2144, ptr %rfintfe.i, align 4
  %rfintfe18.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 3
  %7 = ptrtoint ptr %rfintfe18.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2148, ptr %rfintfe18.i, align 4
  %rf3wireOffset.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 4
  %8 = ptrtoint ptr %rf3wireOffset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2112, ptr %rf3wireOffset.i, align 4
  %rf3wireOffset23.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 4
  %9 = ptrtoint ptr %rf3wireOffset23.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2116, ptr %rf3wireOffset23.i, align 4
  %rfLSSI_Select.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 5
  %10 = ptrtoint ptr %rfLSSI_Select.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2168, ptr %rfLSSI_Select.i, align 4
  %rfLSSI_Select28.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 5
  %11 = ptrtoint ptr %rfLSSI_Select28.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2168, ptr %rfLSSI_Select28.i, align 4
  %rfTxGainStage.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 6
  %12 = ptrtoint ptr %rfTxGainStage.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2060, ptr %rfTxGainStage.i, align 4
  %rfTxGainStage33.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 6
  %13 = ptrtoint ptr %rfTxGainStage33.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2060, ptr %rfTxGainStage33.i, align 4
  %rfHSSIPara1.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 7
  %14 = ptrtoint ptr %rfHSSIPara1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2080, ptr %rfHSSIPara1.i, align 4
  %rfHSSIPara138.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 7
  %15 = ptrtoint ptr %rfHSSIPara138.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2088, ptr %rfHSSIPara138.i, align 4
  %rfHSSIPara2.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 8
  %16 = ptrtoint ptr %rfHSSIPara2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2084, ptr %rfHSSIPara2.i, align 4
  %rfHSSIPara243.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 8
  %17 = ptrtoint ptr %rfHSSIPara243.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2092, ptr %rfHSSIPara243.i, align 4
  %rfSwitchControl.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 9
  %18 = ptrtoint ptr %rfSwitchControl.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2136, ptr %rfSwitchControl.i, align 4
  %rfSwitchControl48.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 9
  %19 = ptrtoint ptr %rfSwitchControl48.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2136, ptr %rfSwitchControl48.i, align 4
  %rfAGCControl1.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 10
  %20 = ptrtoint ptr %rfAGCControl1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3152, ptr %rfAGCControl1.i, align 4
  %rfAGCControl153.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 10
  %21 = ptrtoint ptr %rfAGCControl153.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3160, ptr %rfAGCControl153.i, align 4
  %rfAGCControl2.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 11
  %22 = ptrtoint ptr %rfAGCControl2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3156, ptr %rfAGCControl2.i, align 4
  %rfAGCControl258.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 11
  %23 = ptrtoint ptr %rfAGCControl258.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3164, ptr %rfAGCControl258.i, align 4
  %rfRxIQImbalance.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 12
  %24 = ptrtoint ptr %rfRxIQImbalance.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3092, ptr %rfRxIQImbalance.i, align 4
  %rfRxIQImbalance63.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 12
  %25 = ptrtoint ptr %rfRxIQImbalance63.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3100, ptr %rfRxIQImbalance63.i, align 4
  %rfRxAFE.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 13
  %26 = ptrtoint ptr %rfRxAFE.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3088, ptr %rfRxAFE.i, align 4
  %rfRxAFE68.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 13
  %27 = ptrtoint ptr %rfRxAFE68.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3096, ptr %rfRxAFE68.i, align 4
  %rfTxIQImbalance.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 14
  %28 = ptrtoint ptr %rfTxIQImbalance.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3200, ptr %rfTxIQImbalance.i, align 4
  %rfTxIQImbalance73.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 14
  %29 = ptrtoint ptr %rfTxIQImbalance73.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3208, ptr %rfTxIQImbalance73.i, align 4
  %rfTxAFE.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 15
  %30 = ptrtoint ptr %rfTxAFE.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3204, ptr %rfTxAFE.i, align 4
  %rfTxAFE78.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 15
  %31 = ptrtoint ptr %rfTxAFE78.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3212, ptr %rfTxAFE78.i, align 4
  %rfLSSIReadBack.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 16
  %32 = ptrtoint ptr %rfLSSIReadBack.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2208, ptr %rfLSSIReadBack.i, align 4
  %rfLSSIReadBack83.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 16
  %33 = ptrtoint ptr %rfLSSIReadBack83.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2212, ptr %rfLSSIReadBack83.i, align 4
  %rfLSSIReadBackPi.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 17
  %34 = ptrtoint ptr %rfLSSIReadBackPi.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2232, ptr %rfLSSIReadBackPi.i, align 4
  %rfLSSIReadBackPi88.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 1, i32 17
  %35 = ptrtoint ptr %rfLSSIReadBackPi88.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2236, ptr %rfLSSIReadBackPi88.i, align 4
  %call = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 2) #5
  %36 = or i16 %call, 8195
  %call4 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 2, i16 noundef zeroext %36) #5
  %call5 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 31, i8 noundef zeroext 7) #5
  %call6 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 2, i8 noundef zeroext 23) #5
  %odmpriv.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %call.i = tail call i32 @ODM_ConfigBBWithHeaderFile(ptr noundef %odmpriv.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %entry.rtl8188e_PHY_SetBBReg.exit_crit_edge, label %if.end3.i

entry.rtl8188e_PHY_SetBBReg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8188e_PHY_SetBBReg.exit

if.end3.i:                                        ; preds = %entry
  %eeprompriv.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 15
  %37 = ptrtoint ptr %eeprompriv.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %eeprompriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end3.i.if.end13.i_crit_edge

if.end3.i.if.end13.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then4.i:                                       ; preds = %if.end3.i
  %pwrGroupCnt.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %39 = ptrtoint ptr %pwrGroupCnt.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %pwrGroupCnt.i, align 2
  %call6.i = tail call i32 @ODM_ConfigBBWithHeaderFile(ptr noundef %odmpriv.i, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp7.not.i = icmp eq i32 %call6.i, 1
  br i1 %cmp7.not.i, label %if.then4.i.rtl8188e_PHY_SetBBReg.exit_crit_edge, label %if.then4.i.if.end13.i_crit_edge

if.then4.i.if.end13.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then4.i.rtl8188e_PHY_SetBBReg.exit_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8188e_PHY_SetBBReg.exit

if.end13.i:                                       ; preds = %if.then4.i.if.end13.i_crit_edge, %if.end3.i.if.end13.i_crit_edge
  %call15.i = tail call i32 @ODM_ConfigBBWithHeaderFile(ptr noundef %odmpriv.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i)
  %cmp16.i = icmp ne i32 %call15.i, 1
  %spec.select28.i = zext i1 %cmp16.i to i32
  br label %rtl8188e_PHY_SetBBReg.exit

rtl8188e_PHY_SetBBReg.exit:                       ; preds = %if.end13.i, %if.then4.i.rtl8188e_PHY_SetBBReg.exit_crit_edge, %entry.rtl8188e_PHY_SetBBReg.exit_crit_edge
  %rtStatus.2.i = phi i32 [ 0, %entry.rtl8188e_PHY_SetBBReg.exit_crit_edge ], [ 0, %if.then4.i.rtl8188e_PHY_SetBBReg.exit_crit_edge ], [ %spec.select28.i, %if.end13.i ]
  %CrystalCap8 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 27
  %40 = ptrtoint ptr %CrystalCap8 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %CrystalCap8, align 4
  %call.i22 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 36) #5
  %42 = and i8 %41, 63
  %conv11 = zext i8 %42 to i32
  %and.i = and i32 %call.i22, -8386561
  %shl.i = mul nuw nsw i32 %conv11, 133120
  %or.i = or i32 %shl.i, %and.i
  %call2.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 36, i32 noundef %or.i) #5
  ret i32 %rtStatus.2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_read16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PHY_RFConfig8188E(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @PHY_RF6052_Config8188E(ptr noundef %Adapter) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_RF6052_Config8188E(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetTxPowerLevel8188E(ptr noundef %Adapter, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %cckPowerLevel = alloca [4 x i8], align 4
  %ofdmPowerLevel = alloca [4 x i8], align 4
  %BW20PowerLevel = alloca [4 x i8], align 4
  %BW40PowerLevel = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cckPowerLevel) #5
  %0 = ptrtoint ptr %cckPowerLevel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cckPowerLevel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ofdmPowerLevel) #5
  %1 = ptrtoint ptr %ofdmPowerLevel to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ofdmPowerLevel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BW20PowerLevel) #5
  %2 = ptrtoint ptr %BW20PowerLevel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %BW20PowerLevel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BW40PowerLevel) #5
  %3 = ptrtoint ptr %BW40PowerLevel to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %BW40PowerLevel, align 4
  %sub.i = add i8 %channel, -1
  %idxprom.i = zext i8 %sub.i to i32
  %arrayidx.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 13, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = ptrtoint ptr %cckPowerLevel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %cckPowerLevel, align 4
  %arrayidx4.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 14, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4.i, align 1
  %OFDM_24G_Diff.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 15
  %9 = ptrtoint ptr %OFDM_24G_Diff.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %OFDM_24G_Diff.i, align 2
  %add.i = add i8 %10, %8
  %11 = ptrtoint ptr %ofdmPowerLevel to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %add.i, ptr %ofdmPowerLevel, align 4
  %BW20_24G_Diff.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 16
  %12 = ptrtoint ptr %BW20_24G_Diff.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %BW20_24G_Diff.i, align 2
  %add16.i = add i8 %13, %8
  %14 = ptrtoint ptr %BW20PowerLevel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %add16.i, ptr %BW20PowerLevel, align 4
  store i8 %8, ptr %BW40PowerLevel, align 4
  %CurrentCckTxPwrIdx.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 21
  %15 = ptrtoint ptr %CurrentCckTxPwrIdx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %5, ptr %CurrentCckTxPwrIdx.i, align 2
  %CurrentOfdm24GTxPwrIdx.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 22
  %16 = ptrtoint ptr %CurrentOfdm24GTxPwrIdx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add.i, ptr %CurrentOfdm24GTxPwrIdx.i, align 1
  %CurrentBW2024GTxPwrIdx.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 23
  %17 = ptrtoint ptr %CurrentBW2024GTxPwrIdx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %add16.i, ptr %CurrentBW2024GTxPwrIdx.i, align 8
  %CurrentBW4024GTxPwrIdx.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 24
  %18 = ptrtoint ptr %CurrentBW4024GTxPwrIdx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %8, ptr %CurrentBW4024GTxPwrIdx.i, align 1
  call void @rtl8188e_PHY_RF6052SetCckTxPower(ptr noundef %Adapter, ptr noundef nonnull %cckPowerLevel) #5
  call void @rtl8188e_PHY_RF6052SetOFDMTxPower(ptr noundef %Adapter, ptr noundef nonnull %ofdmPowerLevel, ptr noundef nonnull %BW20PowerLevel, ptr noundef nonnull %BW40PowerLevel, i8 noundef zeroext %channel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BW40PowerLevel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BW20PowerLevel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ofdmPowerLevel) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cckPowerLevel) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_RF6052SetCckTxPower(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_RF6052SetOFDMTxPower(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetBWMode8188E(ptr noundef %Adapter, i32 noundef %Bandwidth, i8 noundef zeroext %Offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %CurrentChannelBW = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 7
  %0 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %CurrentChannelBW, align 8
  store i32 %Bandwidth, ptr %CurrentChannelBW, align 8
  %nCur40MhzPrimeSC = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 9
  %2 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %Offset, ptr %nCur40MhzPrimeSC, align 1
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 20
  %3 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 21
  %5 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.i, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.i:                                         ; preds = %land.lhs.true
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1539) #5
  %call1.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1090) #5
  %7 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %CurrentChannelBW, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %8, label %if.end.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = or i8 %call.i, 4
  %call3.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1539, i8 noundef zeroext %10) #5
  br label %sw.epilogthread-pre-split.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = and i8 %call.i, -5
  %call7.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1539, i8 noundef zeroext %11) #5
  %12 = and i8 %call1.i, -112
  %13 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nCur40MhzPrimeSC, align 1
  %shl.i = shl i8 %14, 5
  %or11.i = or i8 %shl.i, %12
  %call13.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1090, i8 noundef zeroext %or11.i) #5
  br label %sw.epilogthread-pre-split.i

sw.epilogthread-pre-split.i:                      ; preds = %sw.bb4.i, %sw.bb.i
  %15 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %CurrentChannelBW, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilogthread-pre-split.i, %if.end.i.sw.epilog.i_crit_edge
  %16 = phi i32 [ %.pr.i, %sw.epilogthread-pre-split.i ], [ %8, %if.end.i.sw.epilog.i_crit_edge ]
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %16, label %sw.epilog.i._PHY_SetBWMode92C.exit_crit_edge [
    i32 0, label %sw.bb15.i
    i32 1, label %rtl8188e_PHY_SetBBReg.exit126.i
  ]

sw.epilog.i._PHY_SetBWMode92C.exit_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_PHY_SetBWMode92C.exit

sw.bb15.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 2048) #5
  %and.i.i = and i32 %call.i.i, -2
  %call2.i.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 2048, i32 noundef %and.i.i) #5
  %call.i53.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 2304) #5
  %and.i61.i = and i32 %call.i53.i, -2
  %call2.i62.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 2304, i32 noundef %and.i61.i) #5
  br label %_PHY_SetBWMode92C.exit

rtl8188e_PHY_SetBBReg.exit126.i:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i64.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 2048) #5
  %or.i.i = or i32 %call.i64.i, 1
  %call2.i73.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 2048, i32 noundef %or.i.i) #5
  %call.i75.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 2304) #5
  %or.i85.i = or i32 %call.i75.i, 1
  %call2.i86.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 2304, i32 noundef %or.i85.i) #5
  %18 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nCur40MhzPrimeSC, align 1
  %20 = lshr i8 %19, 1
  %21 = zext i8 %20 to i32
  %call.i88.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 2560) #5
  %and.i96.i = and i32 %call.i88.i, -17
  %shl.i97.i = shl nuw nsw i32 %21, 4
  %or.i98.i = or i32 %shl.i97.i, %and.i96.i
  %call2.i99.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 2560, i32 noundef %or.i98.i) #5
  %22 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nCur40MhzPrimeSC, align 1
  %conv20.i = zext i8 %23 to i32
  %call.i101.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 3328) #5
  %and.i109.i = and i32 %call.i101.i, -3073
  %shl.i110.i = shl nuw nsw i32 %conv20.i, 10
  %or.i111.i = or i32 %shl.i110.i, %and.i109.i
  %call2.i112.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 3328, i32 noundef %or.i111.i) #5
  %24 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nCur40MhzPrimeSC, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp.i = icmp eq i8 %25, 1
  %cond.i = select i1 %cmp.i, i32 134217728, i32 67108864
  %call.i114.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 2072) #5
  %and.i122.i = and i32 %call.i114.i, -201326593
  %or.i124.i = or i32 %cond.i, %and.i122.i
  %call2.i125.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 2072, i32 noundef %or.i124.i) #5
  br label %_PHY_SetBWMode92C.exit

_PHY_SetBWMode92C.exit:                           ; preds = %rtl8188e_PHY_SetBBReg.exit126.i, %sw.bb15.i, %sw.epilog.i._PHY_SetBWMode92C.exit_crit_edge
  %26 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %CurrentChannelBW, align 8
  tail call void @rtl8188e_PHY_RF6052SetBandwidth(ptr noundef %Adapter, i32 noundef %27) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %28 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %1, ptr %CurrentChannelBW, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %_PHY_SetBWMode92C.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SwChnl8188E(ptr noundef %Adapter, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %cckPowerLevel.i.i = alloca [4 x i8], align 4
  %ofdmPowerLevel.i.i = alloca [4 x i8], align 4
  %BW20PowerLevel.i.i = alloca [4 x i8], align 4
  %BW40PowerLevel.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %channel)
  %cmp = icmp eq i8 %channel, 0
  %spec.store.select = select i1 %cmp, i8 1, i8 %channel
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 20
  %0 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 21
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  %CurrentChannel = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 8
  %4 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.store.select, ptr %CurrentChannel, align 4
  %bNotifyChannelChange.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 49
  %5 = ptrtoint ptr %bNotifyChannelChange.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNotifyChannelChange.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then3._PHY_SwChnl8192C.exit_crit_edge, label %do.body.i

if.then3._PHY_SwChnl8192C.exit_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %_PHY_SwChnl8192C.exit

do.body.i:                                        ; preds = %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp ugt i32 %7, 4
  br i1 %cmp.i, label %do.end.i, label %do.body.i._PHY_SwChnl8192C.exit_crit_edge

do.body.i._PHY_SwChnl8192C.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_PHY_SwChnl8192C.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %spec.store.select to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv.i) #8
  br label %_PHY_SwChnl8192C.exit

_PHY_SwChnl8192C.exit:                            ; preds = %do.end.i, %do.body.i._PHY_SwChnl8192C.exit_crit_edge, %if.then3._PHY_SwChnl8192C.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cckPowerLevel.i.i) #5
  %8 = ptrtoint ptr %cckPowerLevel.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cckPowerLevel.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ofdmPowerLevel.i.i) #5
  %9 = ptrtoint ptr %ofdmPowerLevel.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ofdmPowerLevel.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BW20PowerLevel.i.i) #5
  %10 = ptrtoint ptr %BW20PowerLevel.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %BW20PowerLevel.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BW40PowerLevel.i.i) #5
  %11 = ptrtoint ptr %BW40PowerLevel.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %BW40PowerLevel.i.i, align 4
  %sub.i.i.i = add i8 %spec.store.select, -1
  %idxprom.i.i.i = zext i8 %sub.i.i.i to i32
  %arrayidx.i.i.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 13, i32 %idxprom.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %14 = ptrtoint ptr %cckPowerLevel.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %cckPowerLevel.i.i, align 4
  %arrayidx4.i.i.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 14, i32 %idxprom.i.i.i
  %15 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4.i.i.i, align 1
  %OFDM_24G_Diff.i.i.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 15
  %17 = ptrtoint ptr %OFDM_24G_Diff.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %OFDM_24G_Diff.i.i.i, align 2
  %add.i.i.i = add i8 %18, %16
  %19 = ptrtoint ptr %ofdmPowerLevel.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %add.i.i.i, ptr %ofdmPowerLevel.i.i, align 4
  %BW20_24G_Diff.i.i.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 16
  %20 = ptrtoint ptr %BW20_24G_Diff.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %BW20_24G_Diff.i.i.i, align 2
  %add16.i.i.i = add i8 %21, %16
  %22 = ptrtoint ptr %BW20PowerLevel.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %add16.i.i.i, ptr %BW20PowerLevel.i.i, align 4
  store i8 %16, ptr %BW40PowerLevel.i.i, align 4
  %CurrentCckTxPwrIdx.i.i.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 21
  %23 = ptrtoint ptr %CurrentCckTxPwrIdx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %13, ptr %CurrentCckTxPwrIdx.i.i.i, align 2
  %CurrentOfdm24GTxPwrIdx.i.i.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 22
  %24 = ptrtoint ptr %CurrentOfdm24GTxPwrIdx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %add.i.i.i, ptr %CurrentOfdm24GTxPwrIdx.i.i.i, align 1
  %CurrentBW2024GTxPwrIdx.i.i.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 23
  %25 = ptrtoint ptr %CurrentBW2024GTxPwrIdx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %add16.i.i.i, ptr %CurrentBW2024GTxPwrIdx.i.i.i, align 8
  %CurrentBW4024GTxPwrIdx.i.i.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 24
  %26 = ptrtoint ptr %CurrentBW4024GTxPwrIdx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %16, ptr %CurrentBW4024GTxPwrIdx.i.i.i, align 1
  call void @rtl8188e_PHY_RF6052SetCckTxPower(ptr noundef %Adapter, ptr noundef nonnull %cckPowerLevel.i.i) #5
  call void @rtl8188e_PHY_RF6052SetOFDMTxPower(ptr noundef %Adapter, ptr noundef nonnull %ofdmPowerLevel.i.i, ptr noundef nonnull %BW20PowerLevel.i.i, ptr noundef nonnull %BW40PowerLevel.i.i, i8 noundef zeroext %spec.store.select) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BW40PowerLevel.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BW20PowerLevel.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ofdmPowerLevel.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cckPowerLevel.i.i) #5
  %conv6.i = zext i8 %spec.store.select to i32
  %RfRegChnlVal.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 31
  %27 = ptrtoint ptr %RfRegChnlVal.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %RfRegChnlVal.i, align 4
  %and.i = and i32 %28, -1024
  %or.i = or i32 %and.i, %conv6.i
  store i32 %or.i, ptr %RfRegChnlVal.i, align 4
  %and1.i.i.i = and i32 %or.i, 1047807
  %or.i.i.i = or i32 %and1.i.i.i, 25165824
  %rf3wireOffset.i.i.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 4
  %29 = ptrtoint ptr %rf3wireOffset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rf3wireOffset.i.i.i, align 4
  %call2.i.i.i.i = call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef %30, i32 noundef %or.i.i.i) #5
  br label %if.end4

if.end4:                                          ; preds = %_PHY_SwChnl8192C.exit, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_ConfigBBWithHeaderFile(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_RF6052SetBandwidth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_phycfg.c", i32 765, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @_PHY_SwChnl8192C._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @_PHY_SwChnl8192C._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
