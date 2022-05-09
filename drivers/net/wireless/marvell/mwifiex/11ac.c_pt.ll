; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/11ac.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11ac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.mwifiex_bssdescriptor = type <{ [6 x i8], %struct.cfg80211_ssid, i8, i32, i32, i32, i32, i16, i8, i8, i32, [14 x i8], [14 x i8], i16, [2 x i8], i64, i64, %union.ieee_types_phy_param_set, %union.ieee_types_ss_param_set, i8, i16, %struct.ieee_types_wmm_parameter, i8, [3 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, i8, i8, ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i32, i8, i8, i8, [5 x i8] }>
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%union.ieee_types_phy_param_set = type { %struct.ieee_types_fh_param_set }
%struct.ieee_types_fh_param_set = type <{ i8, i8, i16, i8, i8, i8 }>
%union.ieee_types_ss_param_set = type { %struct.ieee_types_cf_param_set }
%struct.ieee_types_cf_param_set = type { i8, i8, i8, i8, i16, i16 }
%struct.ieee_types_wmm_parameter = type { %struct.ieee_types_vendor_header, i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.152 }
%struct.anon.152 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_current_bss_params = type { %struct.mwifiex_bssdescriptor, i8, i8, i8, i32, [14 x i8] }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.153 }
%union.anon.153 = type { %struct.mwifiex_wapi_param }
%struct.mwifiex_wapi_param = type { [16 x i8], i16, [32 x i8] }
%struct.mwifiex_wmm_desc = type { [8 x %struct.mwifiex_tid_tbl], [8 x i32], [8 x i32], %struct.spinlock, [4 x %struct.mwifiex_wmm_ac_status], [4 x i8], i32, [4 x i8], [8 x i32], %struct.atomic_t, %struct.atomic_t }
%struct.mwifiex_tid_tbl = type { %struct.list_head }
%struct.mwifiex_wmm_ac_status = type { i8, i8, i8 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.143, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.143 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.144 }
%union.anon.144 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mwifiex_chan_freq_power = type { i16, i32, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wps = type { i8 }
%struct.mwifiex_ds_misc_subsc_evt = type { i16, i16, %struct.subsc_evt_cfg, %struct.subsc_evt_cfg }
%struct.subsc_evt_cfg = type { i8, i8 }
%struct.mwifiex_ie = type { i16, i16, i16, [256 x i8] }
%struct.mwifiex_roc_cfg = type { i64, %struct.ieee80211_channel }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_uap_bss_param = type <{ i8, i8, i16, i16, i8, i8, %struct.mwifiex_802_11_ssid, i8, i8, i8, i8, i16, i16, i16, i16, i16, [2 x i8], %struct.wpa_param, [4 x %struct.wep_key], %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [14 x i8], i32, i32, i8, i8, %struct.mwifiex_types_wmm_info, [2 x i8] }>
%struct.mwifiex_802_11_ssid = type { i32, [32 x i8] }
%struct.wpa_param = type { i8, i8, i8, i32, [64 x i8] }
%struct.wep_key = type { i8, i8, i16, [13 x i8] }
%struct.mwifiex_types_wmm_info = type { [4 x i8], i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.ieee_types_oper_mode_ntf = type { i8, i8, i8 }
%struct.mwifiex_ie_types_oper_mode_ntf = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.159 }
%union.anon.159 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_11ac_vht_cfg = type { i8, i8, i32, i32, i32 }
%struct.host_cmd_11ac_vht_cfg = type { i16, i8, i8, i32, i32, i32 }

@max_rate_lgi_160MHZ = internal constant { [8 x [3 x i16]], [48 x i8] } { [8 x [3 x i16]] [[3 x i16] [i16 585, i16 702, i16 780], [3 x i16] [i16 1170, i16 1404, i16 1560], [3 x i16] [i16 1755, i16 2106, i16 0], [3 x i16] [i16 2340, i16 2808, i16 3120], [3 x i16] [i16 2925, i16 3510, i16 3900], [3 x i16] [i16 3510, i16 4212, i16 4680], [3 x i16] [i16 4095, i16 4914, i16 5460], [3 x i16] [i16 4680, i16 5616, i16 6240]], [48 x i8] zeroinitializer }, align 32
@max_rate_lgi_80MHZ = internal constant { [8 x [3 x i16]], [48 x i8] } { [8 x [3 x i16]] [[3 x i16] [i16 292, i16 351, i16 390], [3 x i16] [i16 585, i16 702, i16 780], [3 x i16] [i16 877, i16 1053, i16 1170], [3 x i16] [i16 1170, i16 1404, i16 1560], [3 x i16] [i16 1462, i16 1755, i16 1950], [3 x i16] [i16 1755, i16 2106, i16 0], [3 x i16] [i16 2047, i16 2457, i16 2730], [3 x i16] [i16 2340, i16 2808, i16 3120]], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [26 x i64] [i64 24, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60, i64 64, i64 100, i64 104, i64 108, i64 112, i64 116, i64 120, i64 124, i64 128, i64 132, i64 136, i64 140, i64 144, i64 149, i64 153, i64 157, i64 161]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"max_rate_lgi_160MHZ\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 40, i32 18 }
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"max_rate_lgi_80MHZ\00", align 1
@___asan_gen_.6 = private constant [47 x i8] c"../drivers/net/wireless/marvell/mwifiex/11ac.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 29, i32 18 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @max_rate_lgi_160MHZ, ptr @max_rate_lgi_80MHZ], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rate_lgi_160MHZ to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rate_lgi_80MHZ to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_fill_vht_cap_tlv(ptr nocapture noundef readonly %priv, ptr nocapture noundef %vht_cap, i8 noundef zeroext %bands) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = and i8 %bands, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %usr_dot_11ac_dev_cap_bg.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 131
  %usr_dot_11ac_dev_cap_a.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 132
  %usr_dot_11ac_dev_cap_bg.sink.i = select i1 %tobool.not.i, ptr %usr_dot_11ac_dev_cap_bg.i, ptr %usr_dot_11ac_dev_cap_a.i
  %3 = ptrtoint ptr %usr_dot_11ac_dev_cap_bg.sink.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usr_dot_11ac_dev_cap_bg.sink.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %6 = ptrtoint ptr %vht_cap to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %vht_cap, align 1
  %usr_dot_11ac_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 133
  %7 = ptrtoint ptr %usr_dot_11ac_mcs_support to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usr_dot_11ac_mcs_support, align 4
  %supp_mcs = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %vht_cap, i32 0, i32 1
  %9 = ptrtoint ptr %supp_mcs to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %supp_mcs, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv8 = zext i16 %11 to i32
  %conv7 = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv7)
  %cmp16 = icmp eq i32 %conv7, 3
  br i1 %cmp16, label %entry.for.inc_crit_edge, label %lor.lhs.false

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = and i32 %conv8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv14)
  %cmp19 = icmp eq i32 %conv14, 3
  %12 = tail call i32 @llvm.umin.i32(i32 %conv7, i32 %conv14)
  %spec.select = select i1 %cmp19, i32 3, i32 %12
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %entry.for.inc_crit_edge
  %.pn155 = phi i32 [ 3, %entry.for.inc_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %.pn154 = trunc i32 %.pn155 to i16
  %shr.1 = lshr i32 %8, 2
  %conv7.1 = and i32 %shr.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv7.1)
  %cmp16.1 = icmp eq i32 %conv7.1, 3
  br i1 %cmp16.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %shr12.1 = lshr i32 %conv8, 2
  %conv14.1 = and i32 %shr12.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv14.1)
  %cmp19.1 = icmp eq i32 %conv14.1, 3
  %13 = tail call i32 @llvm.umin.i32(i32 %conv7.1, i32 %conv14.1)
  %spec.select.1 = select i1 %cmp19.1, i32 3, i32 %13
  br label %for.inc.1

for.inc.1:                                        ; preds = %lor.lhs.false.1, %for.inc.for.inc.1_crit_edge
  %.pn155.1 = phi i32 [ 3, %for.inc.for.inc.1_crit_edge ], [ %spec.select.1, %lor.lhs.false.1 ]
  %.pn155.1.tr = trunc i32 %.pn155.1 to i16
  %.pn154.1 = shl nuw nsw i16 %.pn155.1.tr, 2
  %mcs_map_result.1.1 = or i16 %.pn154.1, %.pn154
  %shr.2 = lshr i32 %8, 4
  %conv7.2 = and i32 %shr.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv7.2)
  %cmp16.2 = icmp eq i32 %conv7.2, 3
  br i1 %cmp16.2, label %for.inc.1.for.inc.2_crit_edge, label %lor.lhs.false.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %shr12.2 = lshr i32 %conv8, 4
  %conv14.2 = and i32 %shr12.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv14.2)
  %cmp19.2 = icmp eq i32 %conv14.2, 3
  %14 = tail call i32 @llvm.umin.i32(i32 %conv7.2, i32 %conv14.2)
  %spec.select.2 = select i1 %cmp19.2, i32 3, i32 %14
  br label %for.inc.2

for.inc.2:                                        ; preds = %lor.lhs.false.2, %for.inc.1.for.inc.2_crit_edge
  %.pn155.2 = phi i32 [ 3, %for.inc.1.for.inc.2_crit_edge ], [ %spec.select.2, %lor.lhs.false.2 ]
  %.pn155.2.tr = trunc i32 %.pn155.2 to i16
  %.pn154.2 = shl nuw nsw i16 %.pn155.2.tr, 4
  %mcs_map_result.1.2 = or i16 %mcs_map_result.1.1, %.pn154.2
  %shr.3 = lshr i32 %8, 6
  %conv7.3 = and i32 %shr.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv7.3)
  %cmp16.3 = icmp eq i32 %conv7.3, 3
  br i1 %cmp16.3, label %for.inc.2.for.inc.3_crit_edge, label %lor.lhs.false.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

lor.lhs.false.3:                                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %shr12.3 = lshr i32 %conv8, 6
  %conv14.3 = and i32 %shr12.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv14.3)
  %cmp19.3 = icmp eq i32 %conv14.3, 3
  %15 = tail call i32 @llvm.umin.i32(i32 %conv7.3, i32 %conv14.3)
  %spec.select.3 = select i1 %cmp19.3, i32 3, i32 %15
  br label %for.inc.3

for.inc.3:                                        ; preds = %lor.lhs.false.3, %for.inc.2.for.inc.3_crit_edge
  %.pn155.3 = phi i32 [ 3, %for.inc.2.for.inc.3_crit_edge ], [ %spec.select.3, %lor.lhs.false.3 ]
  %.pn155.3.tr = trunc i32 %.pn155.3 to i16
  %.pn154.3 = shl nuw nsw i16 %.pn155.3.tr, 6
  %mcs_map_result.1.3 = or i16 %mcs_map_result.1.2, %.pn154.3
  %shr.4 = lshr i32 %8, 8
  %conv7.4 = and i32 %shr.4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv7.4)
  %cmp16.4 = icmp eq i32 %conv7.4, 3
  br i1 %cmp16.4, label %for.inc.3.for.inc.4_crit_edge, label %lor.lhs.false.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

lor.lhs.false.4:                                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %shr12.4 = lshr i32 %conv8, 8
  %conv14.4 = and i32 %shr12.4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv14.4)
  %cmp19.4 = icmp eq i32 %conv14.4, 3
  %16 = tail call i32 @llvm.umin.i32(i32 %conv7.4, i32 %conv14.4)
  %.tr = trunc i32 %16 to i16
  %17 = shl nuw nsw i16 %.tr, 8
  %phi.cast = select i1 %cmp19.4, i16 768, i16 %17
  br label %for.inc.4

for.inc.4:                                        ; preds = %lor.lhs.false.4, %for.inc.3.for.inc.4_crit_edge
  %.pn155.4 = phi i16 [ 768, %for.inc.3.for.inc.4_crit_edge ], [ %phi.cast, %lor.lhs.false.4 ]
  %mcs_map_result.1.4 = or i16 %mcs_map_result.1.3, %.pn155.4
  %shr.5 = lshr i32 %8, 10
  %conv7.5 = and i32 %shr.5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv7.5)
  %cmp16.5 = icmp eq i32 %conv7.5, 3
  br i1 %cmp16.5, label %for.inc.4.for.inc.5_crit_edge, label %lor.lhs.false.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

lor.lhs.false.5:                                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %shr12.5 = lshr i32 %conv8, 10
  %conv14.5 = and i32 %shr12.5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv14.5)
  %cmp19.5 = icmp eq i32 %conv14.5, 3
  %18 = tail call i32 @llvm.umin.i32(i32 %conv7.5, i32 %conv14.5)
  %.tr205 = trunc i32 %18 to i16
  %19 = shl nuw nsw i16 %.tr205, 10
  %phi.cast204 = select i1 %cmp19.5, i16 3072, i16 %19
  br label %for.inc.5

for.inc.5:                                        ; preds = %lor.lhs.false.5, %for.inc.4.for.inc.5_crit_edge
  %.pn155.5 = phi i16 [ 3072, %for.inc.4.for.inc.5_crit_edge ], [ %phi.cast204, %lor.lhs.false.5 ]
  %mcs_map_result.1.5 = or i16 %mcs_map_result.1.4, %.pn155.5
  %shr.6 = lshr i32 %8, 12
  %conv7.6 = and i32 %shr.6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv7.6)
  %cmp16.6 = icmp eq i32 %conv7.6, 3
  br i1 %cmp16.6, label %for.inc.5.for.inc.6_crit_edge, label %lor.lhs.false.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

lor.lhs.false.6:                                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  %shr12.6 = lshr i32 %conv8, 12
  %conv14.6 = and i32 %shr12.6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv14.6)
  %cmp19.6 = icmp eq i32 %conv14.6, 3
  %20 = tail call i32 @llvm.umin.i32(i32 %conv7.6, i32 %conv14.6)
  %.tr207 = trunc i32 %20 to i16
  %21 = shl nuw nsw i16 %.tr207, 12
  %phi.cast206 = select i1 %cmp19.6, i16 12288, i16 %21
  br label %for.inc.6

for.inc.6:                                        ; preds = %lor.lhs.false.6, %for.inc.5.for.inc.6_crit_edge
  %.pn155.6 = phi i16 [ 12288, %for.inc.5.for.inc.6_crit_edge ], [ %phi.cast206, %lor.lhs.false.6 ]
  %mcs_map_result.1.6 = or i16 %mcs_map_result.1.5, %.pn155.6
  %conv4 = lshr i32 %8, 14
  %shr.7 = and i32 %conv4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.7)
  %cmp16.7 = icmp eq i32 %shr.7, 3
  br i1 %cmp16.7, label %for.inc.6.for.inc.7_crit_edge, label %lor.lhs.false.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

lor.lhs.false.7:                                  ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %shr12.7 = lshr i32 %conv8, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr12.7)
  %cmp19.7 = icmp eq i32 %shr12.7, 3
  %22 = tail call i32 @llvm.umin.i32(i32 %shr.7, i32 %shr12.7)
  %.tr209 = trunc i32 %22 to i16
  %23 = shl nuw i16 %.tr209, 14
  %phi.cast208 = select i1 %cmp19.7, i16 -16384, i16 %23
  br label %for.inc.7

for.inc.7:                                        ; preds = %lor.lhs.false.7, %for.inc.6.for.inc.7_crit_edge
  %.pn155.7 = phi i16 [ -16384, %for.inc.6.for.inc.7_crit_edge ], [ %phi.cast208, %lor.lhs.false.7 ]
  %mcs_map_result.1.7 = or i16 %mcs_map_result.1.6, %.pn155.7
  %24 = tail call i16 @llvm.bswap.i16(i16 %mcs_map_result.1.7)
  %25 = ptrtoint ptr %supp_mcs to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %supp_mcs, align 1
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %28 = and i8 %bands, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i156 = icmp eq i8 %28, 0
  %usr_dot_11ac_dev_cap_a.i157 = getelementptr inbounds %struct.mwifiex_adapter, ptr %27, i32 0, i32 132
  %usr_dot_11ac_dev_cap_bg.i158 = getelementptr inbounds %struct.mwifiex_adapter, ptr %27, i32 0, i32 131
  %usr_vht_cap_info.0.in.i = select i1 %tobool.not.i156, ptr %usr_dot_11ac_dev_cap_bg.i158, ptr %usr_dot_11ac_dev_cap_a.i157
  %29 = ptrtoint ptr %usr_vht_cap_info.0.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %usr_vht_cap_info.0.i = load i32, ptr %usr_vht_cap_info.0.in.i, align 4
  %conv4.i = zext i16 %mcs_map_result.1.7 to i32
  %30 = and i32 %conv4.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %30)
  %cmp9.not.1.i = icmp ne i32 %30, 12
  %31 = and i32 %conv4.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %31)
  %cmp9.not.2.i = icmp eq i32 %31, 48
  %32 = and i32 %conv4.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %32)
  %cmp9.not.3.i = icmp eq i32 %32, 192
  %33 = and i32 %conv4.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %33)
  %cmp9.not.4.i = icmp eq i32 %33, 768
  %34 = and i32 %conv4.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %34)
  %cmp9.not.5.i = icmp eq i32 %34, 3072
  %35 = and i32 %conv4.i, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %35)
  %cmp9.not.6.i = icmp eq i32 %35, 12288
  %shr.7.mask.i = and i32 %conv4.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.7.mask.i)
  %cmp9.not.7.i = icmp eq i32 %shr.7.mask.i, 49152
  %.op80.i = zext i1 %cmp9.not.1.i to i32
  %.op79.i = select i1 %cmp9.not.2.i, i32 %.op80.i, i32 2
  %.op78.i = select i1 %cmp9.not.3.i, i32 %.op79.i, i32 3
  %.op77.i = select i1 %cmp9.not.4.i, i32 %.op78.i, i32 4
  %.op76.i = select i1 %cmp9.not.5.i, i32 %.op77.i, i32 5
  %.op.i = select i1 %cmp9.not.6.i, i32 %.op76.i, i32 6
  %sub15.i = select i1 %cmp9.not.7.i, i32 %.op.i, i32 7
  %mul16.i = shl nuw nsw i32 %sub15.i, 1
  %shr17.i = lshr i32 %conv4.i, %mul16.i
  %36 = trunc i32 %shr17.i to i8
  %conv19.i = and i8 %36, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv19.i)
  %cmp21.i = icmp eq i8 %conv19.i, 3
  %spec.store.select.i = select i1 %cmp21.i, i8 2, i8 %conv19.i
  %37 = and i32 %usr_vht_cap_info.0.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool27.not.i = icmp eq i32 %37, 0
  %idxprom45.i = zext i8 %spec.store.select.i to i32
  br i1 %tobool27.not.i, label %if.else41.i, label %if.then28.i

if.then28.i:                                      ; preds = %for.inc.7
  %arrayidx31.i = getelementptr [8 x [3 x i16]], ptr @max_rate_lgi_160MHZ, i32 0, i32 %sub15.i, i32 %idxprom45.i
  %38 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx31.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool32.not.i = icmp eq i16 %39, 0
  br i1 %tobool32.not.i, label %if.then28.i.if.end56.sink.split.i_crit_edge, label %if.then28.i.mwifiex_convert_mcsmap_to_maxrate.exit_crit_edge

if.then28.i.mwifiex_convert_mcsmap_to_maxrate.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_convert_mcsmap_to_maxrate.exit

if.then28.i.if.end56.sink.split.i_crit_edge:      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.sink.split.i

if.else41.i:                                      ; preds = %for.inc.7
  %arrayidx46.i = getelementptr [8 x [3 x i16]], ptr @max_rate_lgi_80MHZ, i32 0, i32 %sub15.i, i32 %idxprom45.i
  %40 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx46.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool47.not.i = icmp eq i16 %41, 0
  br i1 %tobool47.not.i, label %if.else41.i.if.end56.sink.split.i_crit_edge, label %if.else41.i.mwifiex_convert_mcsmap_to_maxrate.exit_crit_edge

if.else41.i.mwifiex_convert_mcsmap_to_maxrate.exit_crit_edge: ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_convert_mcsmap_to_maxrate.exit

if.else41.i.if.end56.sink.split.i_crit_edge:      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.sink.split.i

if.end56.sink.split.i:                            ; preds = %if.else41.i.if.end56.sink.split.i_crit_edge, %if.then28.i.if.end56.sink.split.i_crit_edge
  %max_rate_lgi_80MHZ.sink.i = phi ptr [ @max_rate_lgi_160MHZ, %if.then28.i.if.end56.sink.split.i_crit_edge ], [ @max_rate_lgi_80MHZ, %if.else41.i.if.end56.sink.split.i_crit_edge ]
  %sub53.i = add nsw i32 %idxprom45.i, -1
  %arrayidx54.i = getelementptr [8 x [3 x i16]], ptr %max_rate_lgi_80MHZ.sink.i, i32 0, i32 %sub15.i, i32 %sub53.i
  %42 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx54.i, align 2
  br label %mwifiex_convert_mcsmap_to_maxrate.exit

mwifiex_convert_mcsmap_to_maxrate.exit:           ; preds = %if.end56.sink.split.i, %if.else41.i.mwifiex_convert_mcsmap_to_maxrate.exit_crit_edge, %if.then28.i.mwifiex_convert_mcsmap_to_maxrate.exit_crit_edge
  %max_rate.0.i = phi i16 [ %39, %if.then28.i.mwifiex_convert_mcsmap_to_maxrate.exit_crit_edge ], [ %41, %if.else41.i.mwifiex_convert_mcsmap_to_maxrate.exit_crit_edge ], [ %43, %if.end56.sink.split.i ]
  %44 = tail call i16 @llvm.bswap.i16(i16 %max_rate.0.i)
  %rx_highest = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %vht_cap, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %rx_highest to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %rx_highest, align 1
  %46 = ptrtoint ptr %usr_dot_11ac_mcs_support to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %usr_dot_11ac_mcs_support, align 4
  %shr45 = lshr i32 %47, 16
  %tx_mcs_map = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %vht_cap, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %tx_mcs_map to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %tx_mcs_map, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %conv60 = zext i16 %50 to i32
  %conv59 = and i32 %shr45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv59)
  %cmp68 = icmp eq i32 %conv59, 3
  br i1 %cmp68, label %mwifiex_convert_mcsmap_to_maxrate.exit.for.inc103_crit_edge, label %lor.lhs.false70

mwifiex_convert_mcsmap_to_maxrate.exit.for.inc103_crit_edge: ; preds = %mwifiex_convert_mcsmap_to_maxrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103

lor.lhs.false70:                                  ; preds = %mwifiex_convert_mcsmap_to_maxrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv66 = and i32 %conv60, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv66)
  %cmp72 = icmp eq i32 %conv66, 3
  %51 = tail call i32 @llvm.umin.i32(i32 %conv59, i32 %conv66)
  %52 = trunc i32 %51 to i16
  %phi.cast210 = select i1 %cmp72, i16 3, i16 %52
  br label %for.inc103

for.inc103:                                       ; preds = %lor.lhs.false70, %mwifiex_convert_mcsmap_to_maxrate.exit.for.inc103_crit_edge
  %.pn153 = phi i16 [ 3, %mwifiex_convert_mcsmap_to_maxrate.exit.for.inc103_crit_edge ], [ %phi.cast210, %lor.lhs.false70 ]
  %shr57.1 = lshr i32 %47, 18
  %conv59.1 = and i32 %shr57.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv59.1)
  %cmp68.1 = icmp eq i32 %conv59.1, 3
  br i1 %cmp68.1, label %for.inc103.for.inc103.1_crit_edge, label %lor.lhs.false70.1

for.inc103.for.inc103.1_crit_edge:                ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103.1

lor.lhs.false70.1:                                ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #8
  %shr64.1 = lshr i32 %conv60, 2
  %conv66.1 = and i32 %shr64.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv66.1)
  %cmp72.1 = icmp eq i32 %conv66.1, 3
  %53 = tail call i32 @llvm.umin.i32(i32 %conv59.1, i32 %conv66.1)
  %.tr212 = trunc i32 %53 to i16
  %54 = shl nuw nsw i16 %.tr212, 2
  %phi.cast211 = select i1 %cmp72.1, i16 12, i16 %54
  br label %for.inc103.1

for.inc103.1:                                     ; preds = %lor.lhs.false70.1, %for.inc103.for.inc103.1_crit_edge
  %.pn153.1 = phi i16 [ 12, %for.inc103.for.inc103.1_crit_edge ], [ %phi.cast211, %lor.lhs.false70.1 ]
  %mcs_map_result.3.1 = or i16 %.pn153, %.pn153.1
  %shr57.2 = lshr i32 %47, 20
  %conv59.2 = and i32 %shr57.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv59.2)
  %cmp68.2 = icmp eq i32 %conv59.2, 3
  br i1 %cmp68.2, label %for.inc103.1.for.inc103.2_crit_edge, label %lor.lhs.false70.2

for.inc103.1.for.inc103.2_crit_edge:              ; preds = %for.inc103.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103.2

lor.lhs.false70.2:                                ; preds = %for.inc103.1
  call void @__sanitizer_cov_trace_pc() #8
  %shr64.2 = lshr i32 %conv60, 4
  %conv66.2 = and i32 %shr64.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv66.2)
  %cmp72.2 = icmp eq i32 %conv66.2, 3
  %55 = tail call i32 @llvm.umin.i32(i32 %conv59.2, i32 %conv66.2)
  %.tr214 = trunc i32 %55 to i16
  %56 = shl nuw nsw i16 %.tr214, 4
  %phi.cast213 = select i1 %cmp72.2, i16 48, i16 %56
  br label %for.inc103.2

for.inc103.2:                                     ; preds = %lor.lhs.false70.2, %for.inc103.1.for.inc103.2_crit_edge
  %.pn153.2 = phi i16 [ 48, %for.inc103.1.for.inc103.2_crit_edge ], [ %phi.cast213, %lor.lhs.false70.2 ]
  %mcs_map_result.3.2 = or i16 %mcs_map_result.3.1, %.pn153.2
  %shr57.3 = lshr i32 %47, 22
  %conv59.3 = and i32 %shr57.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv59.3)
  %cmp68.3 = icmp eq i32 %conv59.3, 3
  br i1 %cmp68.3, label %for.inc103.2.for.inc103.3_crit_edge, label %lor.lhs.false70.3

for.inc103.2.for.inc103.3_crit_edge:              ; preds = %for.inc103.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103.3

lor.lhs.false70.3:                                ; preds = %for.inc103.2
  call void @__sanitizer_cov_trace_pc() #8
  %shr64.3 = lshr i32 %conv60, 6
  %conv66.3 = and i32 %shr64.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv66.3)
  %cmp72.3 = icmp eq i32 %conv66.3, 3
  %57 = tail call i32 @llvm.umin.i32(i32 %conv59.3, i32 %conv66.3)
  %.tr216 = trunc i32 %57 to i16
  %58 = shl nuw nsw i16 %.tr216, 6
  %phi.cast215 = select i1 %cmp72.3, i16 192, i16 %58
  br label %for.inc103.3

for.inc103.3:                                     ; preds = %lor.lhs.false70.3, %for.inc103.2.for.inc103.3_crit_edge
  %.pn153.3 = phi i16 [ 192, %for.inc103.2.for.inc103.3_crit_edge ], [ %phi.cast215, %lor.lhs.false70.3 ]
  %mcs_map_result.3.3 = or i16 %mcs_map_result.3.2, %.pn153.3
  %shr57.4 = lshr i32 %47, 24
  %conv59.4 = and i32 %shr57.4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv59.4)
  %cmp68.4 = icmp eq i32 %conv59.4, 3
  br i1 %cmp68.4, label %for.inc103.3.for.inc103.4_crit_edge, label %lor.lhs.false70.4

for.inc103.3.for.inc103.4_crit_edge:              ; preds = %for.inc103.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103.4

lor.lhs.false70.4:                                ; preds = %for.inc103.3
  call void @__sanitizer_cov_trace_pc() #8
  %shr64.4 = lshr i32 %conv60, 8
  %conv66.4 = and i32 %shr64.4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv66.4)
  %cmp72.4 = icmp eq i32 %conv66.4, 3
  %59 = tail call i32 @llvm.umin.i32(i32 %conv59.4, i32 %conv66.4)
  %.tr218 = trunc i32 %59 to i16
  %60 = shl nuw nsw i16 %.tr218, 8
  %phi.cast217 = select i1 %cmp72.4, i16 768, i16 %60
  br label %for.inc103.4

for.inc103.4:                                     ; preds = %lor.lhs.false70.4, %for.inc103.3.for.inc103.4_crit_edge
  %.pn153.4 = phi i16 [ 768, %for.inc103.3.for.inc103.4_crit_edge ], [ %phi.cast217, %lor.lhs.false70.4 ]
  %mcs_map_result.3.4 = or i16 %mcs_map_result.3.3, %.pn153.4
  %shr57.5 = lshr i32 %47, 26
  %conv59.5 = and i32 %shr57.5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv59.5)
  %cmp68.5 = icmp eq i32 %conv59.5, 3
  br i1 %cmp68.5, label %for.inc103.4.for.inc103.5_crit_edge, label %lor.lhs.false70.5

for.inc103.4.for.inc103.5_crit_edge:              ; preds = %for.inc103.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103.5

lor.lhs.false70.5:                                ; preds = %for.inc103.4
  call void @__sanitizer_cov_trace_pc() #8
  %shr64.5 = lshr i32 %conv60, 10
  %conv66.5 = and i32 %shr64.5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv66.5)
  %cmp72.5 = icmp eq i32 %conv66.5, 3
  %61 = tail call i32 @llvm.umin.i32(i32 %conv59.5, i32 %conv66.5)
  %.tr220 = trunc i32 %61 to i16
  %62 = shl nuw nsw i16 %.tr220, 10
  %phi.cast219 = select i1 %cmp72.5, i16 3072, i16 %62
  br label %for.inc103.5

for.inc103.5:                                     ; preds = %lor.lhs.false70.5, %for.inc103.4.for.inc103.5_crit_edge
  %.pn153.5 = phi i16 [ 3072, %for.inc103.4.for.inc103.5_crit_edge ], [ %phi.cast219, %lor.lhs.false70.5 ]
  %mcs_map_result.3.5 = or i16 %mcs_map_result.3.4, %.pn153.5
  %shr57.6 = lshr i32 %47, 28
  %conv59.6 = and i32 %shr57.6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv59.6)
  %cmp68.6 = icmp eq i32 %conv59.6, 3
  br i1 %cmp68.6, label %for.inc103.5.for.inc103.6_crit_edge, label %lor.lhs.false70.6

for.inc103.5.for.inc103.6_crit_edge:              ; preds = %for.inc103.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103.6

lor.lhs.false70.6:                                ; preds = %for.inc103.5
  call void @__sanitizer_cov_trace_pc() #8
  %shr64.6 = lshr i32 %conv60, 12
  %conv66.6 = and i32 %shr64.6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv66.6)
  %cmp72.6 = icmp eq i32 %conv66.6, 3
  %63 = tail call i32 @llvm.umin.i32(i32 %conv59.6, i32 %conv66.6)
  %.tr222 = trunc i32 %63 to i16
  %64 = shl nuw nsw i16 %.tr222, 12
  %phi.cast221 = select i1 %cmp72.6, i16 12288, i16 %64
  br label %for.inc103.6

for.inc103.6:                                     ; preds = %lor.lhs.false70.6, %for.inc103.5.for.inc103.6_crit_edge
  %.pn153.6 = phi i16 [ 12288, %for.inc103.5.for.inc103.6_crit_edge ], [ %phi.cast221, %lor.lhs.false70.6 ]
  %mcs_map_result.3.6 = or i16 %mcs_map_result.3.5, %.pn153.6
  %shr57.7 = lshr i32 %47, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr57.7)
  %cmp68.7 = icmp eq i32 %shr57.7, 3
  br i1 %cmp68.7, label %for.inc103.6.for.inc103.7_crit_edge, label %lor.lhs.false70.7

for.inc103.6.for.inc103.7_crit_edge:              ; preds = %for.inc103.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103.7

lor.lhs.false70.7:                                ; preds = %for.inc103.6
  call void @__sanitizer_cov_trace_pc() #8
  %shr64.7 = lshr i32 %conv60, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr64.7)
  %cmp72.7 = icmp eq i32 %shr64.7, 3
  %65 = tail call i32 @llvm.umin.i32(i32 %shr57.7, i32 %shr64.7)
  %.tr224 = trunc i32 %65 to i16
  %66 = shl nuw i16 %.tr224, 14
  %phi.cast223 = select i1 %cmp72.7, i16 -16384, i16 %66
  br label %for.inc103.7

for.inc103.7:                                     ; preds = %lor.lhs.false70.7, %for.inc103.6.for.inc103.7_crit_edge
  %.pn153.7 = phi i16 [ -16384, %for.inc103.6.for.inc103.7_crit_edge ], [ %phi.cast223, %lor.lhs.false70.7 ]
  %mcs_map_result.3.7 = or i16 %mcs_map_result.3.6, %.pn153.7
  %67 = tail call i16 @llvm.bswap.i16(i16 %mcs_map_result.3.7)
  %68 = ptrtoint ptr %tx_mcs_map to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %67, ptr %tx_mcs_map, align 1
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %usr_dot_11ac_dev_cap_a.i160 = getelementptr inbounds %struct.mwifiex_adapter, ptr %70, i32 0, i32 132
  %usr_dot_11ac_dev_cap_bg.i161 = getelementptr inbounds %struct.mwifiex_adapter, ptr %70, i32 0, i32 131
  %usr_vht_cap_info.0.in.i162 = select i1 %tobool.not.i156, ptr %usr_dot_11ac_dev_cap_bg.i161, ptr %usr_dot_11ac_dev_cap_a.i160
  %71 = ptrtoint ptr %usr_vht_cap_info.0.in.i162 to i32
  call void @__asan_load4_noabort(i32 %71)
  %usr_vht_cap_info.0.i163 = load i32, ptr %usr_vht_cap_info.0.in.i162, align 4
  %conv4.i164 = zext i16 %mcs_map_result.3.7 to i32
  %72 = and i32 %conv4.i164, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %72)
  %cmp9.not.1.i165 = icmp ne i32 %72, 12
  %73 = and i32 %conv4.i164, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %73)
  %cmp9.not.2.i166 = icmp eq i32 %73, 48
  %74 = and i32 %conv4.i164, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %74)
  %cmp9.not.3.i167 = icmp eq i32 %74, 192
  %75 = and i32 %conv4.i164, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %75)
  %cmp9.not.4.i168 = icmp eq i32 %75, 768
  %76 = and i32 %conv4.i164, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %76)
  %cmp9.not.5.i169 = icmp eq i32 %76, 3072
  %77 = and i32 %conv4.i164, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %77)
  %cmp9.not.6.i170 = icmp eq i32 %77, 12288
  %shr.7.mask.i171 = and i32 %conv4.i164, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.7.mask.i171)
  %cmp9.not.7.i172 = icmp eq i32 %shr.7.mask.i171, 49152
  %.op80.i173 = zext i1 %cmp9.not.1.i165 to i32
  %.op79.i174 = select i1 %cmp9.not.2.i166, i32 %.op80.i173, i32 2
  %.op78.i175 = select i1 %cmp9.not.3.i167, i32 %.op79.i174, i32 3
  %.op77.i176 = select i1 %cmp9.not.4.i168, i32 %.op78.i175, i32 4
  %.op76.i177 = select i1 %cmp9.not.5.i169, i32 %.op77.i176, i32 5
  %.op.i178 = select i1 %cmp9.not.6.i170, i32 %.op76.i177, i32 6
  %sub15.i179 = select i1 %cmp9.not.7.i172, i32 %.op.i178, i32 7
  %mul16.i180 = shl nuw nsw i32 %sub15.i179, 1
  %shr17.i181 = lshr i32 %conv4.i164, %mul16.i180
  %78 = trunc i32 %shr17.i181 to i8
  %conv19.i182 = and i8 %78, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv19.i182)
  %cmp21.i183 = icmp eq i8 %conv19.i182, 3
  %spec.store.select.i184 = select i1 %cmp21.i183, i8 2, i8 %conv19.i182
  %79 = and i32 %usr_vht_cap_info.0.i163, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool27.not.i185 = icmp eq i32 %79, 0
  %idxprom45.i186 = zext i8 %spec.store.select.i184 to i32
  br i1 %tobool27.not.i185, label %if.else41.i192, label %if.then28.i189

if.then28.i189:                                   ; preds = %for.inc103.7
  %arrayidx31.i187 = getelementptr [8 x [3 x i16]], ptr @max_rate_lgi_160MHZ, i32 0, i32 %sub15.i179, i32 %idxprom45.i186
  %80 = ptrtoint ptr %arrayidx31.i187 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx31.i187, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool32.not.i188 = icmp eq i16 %81, 0
  br i1 %tobool32.not.i188, label %if.then28.i189.if.end56.sink.split.i196_crit_edge, label %if.then28.i189.mwifiex_convert_mcsmap_to_maxrate.exit198_crit_edge

if.then28.i189.mwifiex_convert_mcsmap_to_maxrate.exit198_crit_edge: ; preds = %if.then28.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_convert_mcsmap_to_maxrate.exit198

if.then28.i189.if.end56.sink.split.i196_crit_edge: ; preds = %if.then28.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.sink.split.i196

if.else41.i192:                                   ; preds = %for.inc103.7
  %arrayidx46.i190 = getelementptr [8 x [3 x i16]], ptr @max_rate_lgi_80MHZ, i32 0, i32 %sub15.i179, i32 %idxprom45.i186
  %82 = ptrtoint ptr %arrayidx46.i190 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx46.i190, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool47.not.i191 = icmp eq i16 %83, 0
  br i1 %tobool47.not.i191, label %if.else41.i192.if.end56.sink.split.i196_crit_edge, label %if.else41.i192.mwifiex_convert_mcsmap_to_maxrate.exit198_crit_edge

if.else41.i192.mwifiex_convert_mcsmap_to_maxrate.exit198_crit_edge: ; preds = %if.else41.i192
  call void @__sanitizer_cov_trace_pc() #8
  br label %mwifiex_convert_mcsmap_to_maxrate.exit198

if.else41.i192.if.end56.sink.split.i196_crit_edge: ; preds = %if.else41.i192
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.sink.split.i196

if.end56.sink.split.i196:                         ; preds = %if.else41.i192.if.end56.sink.split.i196_crit_edge, %if.then28.i189.if.end56.sink.split.i196_crit_edge
  %max_rate_lgi_80MHZ.sink.i193 = phi ptr [ @max_rate_lgi_160MHZ, %if.then28.i189.if.end56.sink.split.i196_crit_edge ], [ @max_rate_lgi_80MHZ, %if.else41.i192.if.end56.sink.split.i196_crit_edge ]
  %sub53.i194 = add nsw i32 %idxprom45.i186, -1
  %arrayidx54.i195 = getelementptr [8 x [3 x i16]], ptr %max_rate_lgi_80MHZ.sink.i193, i32 0, i32 %sub15.i179, i32 %sub53.i194
  %84 = ptrtoint ptr %arrayidx54.i195 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx54.i195, align 2
  br label %mwifiex_convert_mcsmap_to_maxrate.exit198

mwifiex_convert_mcsmap_to_maxrate.exit198:        ; preds = %if.end56.sink.split.i196, %if.else41.i192.mwifiex_convert_mcsmap_to_maxrate.exit198_crit_edge, %if.then28.i189.mwifiex_convert_mcsmap_to_maxrate.exit198_crit_edge
  %max_rate.0.i197 = phi i16 [ %81, %if.then28.i189.mwifiex_convert_mcsmap_to_maxrate.exit198_crit_edge ], [ %83, %if.else41.i192.mwifiex_convert_mcsmap_to_maxrate.exit198_crit_edge ], [ %85, %if.end56.sink.split.i196 ]
  %86 = tail call i16 @llvm.bswap.i16(i16 %max_rate.0.i197)
  %tx_highest = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %vht_cap, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %tx_highest to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %86, ptr %tx_highest, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_append_11ac_tlv(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %bss_desc, ptr nocapture noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bss_band = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 13
  %2 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bss_band, align 4
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %usr_dot_11ac_dev_cap_a = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 132
  %usr_dot_11ac_dev_cap_bg = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 131
  %usr_vht_cap_info.0.in = select i1 %tobool.not, ptr %usr_dot_11ac_dev_cap_bg, ptr %usr_dot_11ac_dev_cap_a
  %5 = ptrtoint ptr %usr_vht_cap_info.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %usr_vht_cap_info.0 = load i32, ptr %usr_vht_cap_info.0.in, align 4
  %bcn_vht_cap = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 36
  %6 = ptrtoint ptr %bcn_vht_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcn_vht_cap, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %entry.if.end13_crit_edge, label %if.then3

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %10 = getelementptr inbounds i8, ptr %9, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 12)
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 -16640, ptr %9, align 1
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 3072, ptr %len, align 1
  %add.ptr = getelementptr i8, ptr %9, i32 4
  %14 = ptrtoint ptr %bcn_vht_cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bcn_vht_cap, align 8
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %15, i32 12)
  %17 = ptrtoint ptr %bss_band to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bss_band, align 4
  %conv11 = trunc i16 %18 to i8
  tail call void @mwifiex_fill_vht_cap_tlv(ptr noundef %priv, ptr noundef %add.ptr, i8 noundef zeroext %conv11)
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %add.ptr12 = getelementptr i8, ptr %20, i32 16
  store ptr %add.ptr12, ptr %buffer, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %entry.if.end13_crit_edge
  %ret_len.0 = phi i32 [ 16, %if.then3 ], [ 0, %entry.if.end13_crit_edge ]
  %bcn_vht_oper = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 39
  %21 = ptrtoint ptr %bcn_vht_oper to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bcn_vht_oper, align 8
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %if.end13.if.end75_crit_edge, label %if.then15

if.end13.if.end75_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then15:                                        ; preds = %if.end13
  %bss_mode = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 18
  %23 = ptrtoint ptr %bss_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bss_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp = icmp eq i32 %24, 2
  br i1 %cmp, label %if.then17, label %if.then15.if.end75_crit_edge

if.then15.if.end75_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then17:                                        ; preds = %if.then15
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  %27 = getelementptr inbounds i8, ptr %26, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 5)
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 -16384, ptr %26, align 1
  %len21 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %len21 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 1280, ptr %len21, align 1
  %add.ptr22 = getelementptr i8, ptr %26, i32 4
  %31 = ptrtoint ptr %bcn_vht_oper to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bcn_vht_oper, align 8
  %33 = call ptr @memcpy(ptr %add.ptr22, ptr %32, i32 5)
  %34 = lshr i32 %usr_vht_cap_info.0, 2
  %conv28 = and i32 %34, 3
  %35 = zext i32 %conv28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv28, label %if.then17.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb39
    i32 2, label %sw.bb55
  ]

if.then17.sw.epilog_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %bcn_vht_oper to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bcn_vht_oper, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i8
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %bcn_vht_oper to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bcn_vht_oper, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %46 = tail call i8 @llvm.umin.i8(i8 %45, i8 2)
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %bcn_vht_oper to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bcn_vht_oper, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %51 = tail call i8 @llvm.umin.i8(i8 %50, i8 3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb55, %sw.bb39, %sw.bb, %if.then17.sw.epilog_crit_edge
  %.sink = phi i8 [ %51, %sw.bb55 ], [ %46, %sw.bb39 ], [ %41, %sw.bb ], [ 0, %if.then17.sw.epilog_crit_edge ]
  %52 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %.sink, ptr %add.ptr22, align 1
  %53 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer, align 4
  %add.ptr72 = getelementptr i8, ptr %54, i32 9
  store ptr %add.ptr72, ptr %buffer, align 4
  %add73 = or i32 %ret_len.0, 9
  br label %if.end75

if.end75:                                         ; preds = %sw.epilog, %if.then15.if.end75_crit_edge, %if.end13.if.end75_crit_edge
  %ret_len.1 = phi i32 [ %add73, %sw.epilog ], [ %ret_len.0, %if.then15.if.end75_crit_edge ], [ %ret_len.0, %if.end13.if.end75_crit_edge ]
  %oper_mode = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %bss_desc, i32 0, i32 42
  %55 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %oper_mode, align 8
  %tobool76.not = icmp eq ptr %56, null
  br i1 %tobool76.not, label %if.end75.if.end87_crit_edge, label %if.then77

if.end75.if.end87_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  %59 = getelementptr inbounds i8, ptr %58, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %59, align 1
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 -14592, ptr %58, align 1
  %len82 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %58, i32 0, i32 1
  %62 = ptrtoint ptr %len82 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 256, ptr %len82, align 1
  %oper_mode83 = getelementptr inbounds %struct.ieee_types_oper_mode_ntf, ptr %56, i32 0, i32 2
  %63 = ptrtoint ptr %oper_mode83 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %oper_mode83, align 1
  %oper_mode84 = getelementptr inbounds %struct.mwifiex_ie_types_oper_mode_ntf, ptr %58, i32 0, i32 1
  %65 = ptrtoint ptr %oper_mode84 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %oper_mode84, align 1
  %66 = load ptr, ptr %buffer, align 4
  %add.ptr85 = getelementptr i8, ptr %66, i32 5
  store ptr %add.ptr85, ptr %buffer, align 4
  %add86 = add nsw i32 %ret_len.1, 5
  br label %if.end87

if.end87:                                         ; preds = %if.then77, %if.end75.if.end87_crit_edge
  %ret_len.2 = phi i32 [ %add86, %if.then77 ], [ %ret_len.1, %if.end75.if.end87_crit_edge ]
  ret i32 %ret_len.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_11ac_cfg(ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %cmd, i16 noundef zeroext %cmd_action, ptr nocapture noundef readonly %cfg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 4609, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 6144, ptr %size, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %params, align 1
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg, align 4
  %band_config1 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %band_config1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %band_config1, align 1
  %misc_config = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %cfg, i32 0, i32 1
  %7 = ptrtoint ptr %misc_config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %misc_config, align 1
  %misc_config2 = getelementptr inbounds %struct.host_cmd_11ac_vht_cfg, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %misc_config2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %misc_config2, align 1
  %cap_info = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %cfg, i32 0, i32 2
  %10 = ptrtoint ptr %cap_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap_info, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %cap_info3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %cap_info3 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %cap_info3, align 1
  %mcs_tx_set = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %cfg, i32 0, i32 3
  %14 = ptrtoint ptr %mcs_tx_set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mcs_tx_set, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %mcs_tx_set4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %mcs_tx_set4 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %mcs_tx_set4, align 1
  %mcs_rx_set = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %cfg, i32 0, i32 4
  %18 = ptrtoint ptr %mcs_rx_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mcs_rx_set, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %mcs_rx_set5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %mcs_rx_set5 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %mcs_rx_set5, align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mwifiex_set_11ac_ba_params(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 2
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65535, ptr %timeout, align 4
  %add_ba_param = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86
  %1 = ptrtoint ptr %add_ba_param to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %add_ba_param, align 4
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 86, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mwifiex_is_bss_in_11ac_mode(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bcn_vht_oper = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 39
  %0 = ptrtoint ptr %bcn_vht_oper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bcn_vht_oper, align 8
  %bcn_vht_cap = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 50, i32 0, i32 36
  %2 = ptrtoint ptr %bcn_vht_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bcn_vht_cap, align 8
  %tobool.not = icmp eq ptr %3, null
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp ne i8 %5, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_get_center_freq_index(ptr nocapture noundef readnone %priv, i8 noundef zeroext %band, i32 noundef %pri_chan, i8 noundef zeroext %chan_bw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %band, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end45_crit_edge, label %if.then

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then:                                          ; preds = %entry
  %1 = zext i32 %pri_chan to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %pri_chan, label %if.then.if.end45_crit_edge [
    i32 36, label %if.then.sw.bb_crit_edge
    i32 40, label %if.then.sw.bb_crit_edge63
    i32 44, label %if.then.sw.bb_crit_edge64
    i32 48, label %if.then.sw.bb_crit_edge65
    i32 52, label %if.then.sw.bb4_crit_edge
    i32 56, label %if.then.sw.bb4_crit_edge66
    i32 60, label %if.then.sw.bb4_crit_edge67
    i32 64, label %if.then.sw.bb4_crit_edge68
    i32 100, label %if.then.sw.bb15_crit_edge
    i32 104, label %if.then.sw.bb15_crit_edge69
    i32 108, label %if.then.sw.bb15_crit_edge70
    i32 112, label %if.then.sw.bb15_crit_edge71
    i32 116, label %if.then.sw.bb21_crit_edge
    i32 120, label %if.then.sw.bb21_crit_edge72
    i32 124, label %if.then.sw.bb21_crit_edge73
    i32 128, label %if.then.sw.bb21_crit_edge74
    i32 132, label %if.then.sw.bb33_crit_edge
    i32 136, label %if.then.sw.bb33_crit_edge75
    i32 140, label %if.then.sw.bb33_crit_edge76
    i32 144, label %if.then.sw.bb33_crit_edge77
    i32 149, label %if.then.sw.bb39_crit_edge
    i32 153, label %if.then.sw.bb39_crit_edge78
    i32 157, label %if.then.sw.bb39_crit_edge79
    i32 161, label %if.then.sw.bb39_crit_edge80
  ]

if.then.sw.bb39_crit_edge80:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.then.sw.bb39_crit_edge79:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.then.sw.bb39_crit_edge78:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.then.sw.bb39_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.then.sw.bb33_crit_edge77:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33

if.then.sw.bb33_crit_edge76:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33

if.then.sw.bb33_crit_edge75:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33

if.then.sw.bb33_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33

if.then.sw.bb21_crit_edge74:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

if.then.sw.bb21_crit_edge73:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

if.then.sw.bb21_crit_edge72:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

if.then.sw.bb21_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

if.then.sw.bb15_crit_edge71:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.then.sw.bb15_crit_edge70:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.then.sw.bb15_crit_edge69:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.then.sw.bb15_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.then.sw.bb4_crit_edge68:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

if.then.sw.bb4_crit_edge67:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

if.then.sw.bb4_crit_edge66:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

if.then.sw.bb4_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

if.then.sw.bb_crit_edge65:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge64:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge63:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge63, %if.then.sw.bb_crit_edge64, %if.then.sw.bb_crit_edge65
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chan_bw)
  %cmp = icmp eq i8 %chan_bw, 1
  %spec.select = select i1 %cmp, i8 42, i8 0
  br label %if.end45

sw.bb4:                                           ; preds = %if.then.sw.bb4_crit_edge, %if.then.sw.bb4_crit_edge66, %if.then.sw.bb4_crit_edge67, %if.then.sw.bb4_crit_edge68
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %chan_bw)
  %switch.selectcmp = icmp eq i8 %chan_bw, 2
  %switch.select = select i1 %switch.selectcmp, i8 50, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chan_bw)
  %switch.selectcmp57 = icmp eq i8 %chan_bw, 1
  %switch.select58 = select i1 %switch.selectcmp57, i8 58, i8 %switch.select
  br label %if.end45

sw.bb15:                                          ; preds = %if.then.sw.bb15_crit_edge, %if.then.sw.bb15_crit_edge69, %if.then.sw.bb15_crit_edge70, %if.then.sw.bb15_crit_edge71
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chan_bw)
  %cmp17 = icmp eq i8 %chan_bw, 1
  %spec.select53 = select i1 %cmp17, i8 106, i8 0
  br label %if.end45

sw.bb21:                                          ; preds = %if.then.sw.bb21_crit_edge, %if.then.sw.bb21_crit_edge72, %if.then.sw.bb21_crit_edge73, %if.then.sw.bb21_crit_edge74
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %chan_bw)
  %switch.selectcmp59 = icmp eq i8 %chan_bw, 2
  %switch.select60 = select i1 %switch.selectcmp59, i8 114, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chan_bw)
  %switch.selectcmp61 = icmp eq i8 %chan_bw, 1
  %switch.select62 = select i1 %switch.selectcmp61, i8 122, i8 %switch.select60
  br label %if.end45

sw.bb33:                                          ; preds = %if.then.sw.bb33_crit_edge, %if.then.sw.bb33_crit_edge75, %if.then.sw.bb33_crit_edge76, %if.then.sw.bb33_crit_edge77
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chan_bw)
  %cmp35 = icmp eq i8 %chan_bw, 1
  %spec.select55 = select i1 %cmp35, i8 -118, i8 0
  br label %if.end45

sw.bb39:                                          ; preds = %if.then.sw.bb39_crit_edge, %if.then.sw.bb39_crit_edge78, %if.then.sw.bb39_crit_edge79, %if.then.sw.bb39_crit_edge80
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chan_bw)
  %cmp41 = icmp eq i8 %chan_bw, 1
  %spec.select56 = select i1 %cmp41, i8 -101, i8 0
  br label %if.end45

if.end45:                                         ; preds = %sw.bb39, %sw.bb33, %sw.bb21, %sw.bb15, %sw.bb4, %sw.bb, %if.then.if.end45_crit_edge, %entry.if.end45_crit_edge
  %center_freq_idx.0 = phi i8 [ 0, %entry.if.end45_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select53, %sw.bb15 ], [ %spec.select55, %sw.bb33 ], [ %spec.select56, %sw.bb39 ], [ 42, %if.then.if.end45_crit_edge ], [ %switch.select58, %sw.bb4 ], [ %switch.select62, %sw.bb21 ]
  ret i8 %center_freq_idx.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @max_rate_lgi_160MHZ, !1, !"max_rate_lgi_160MHZ", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/11ac.c", i32 40, i32 18}
!2 = !{ptr @max_rate_lgi_80MHZ, !3, !"max_rate_lgi_80MHZ", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/11ac.c", i32 29, i32 18}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
