; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/sta_tx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_tx.c"
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
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.mwifiex_current_bss_params = type { %struct.mwifiex_bssdescriptor, i8, i8, i8, i32, [14 x i8] }
%struct.mwifiex_bssdescriptor = type <{ [6 x i8], %struct.cfg80211_ssid, i8, i32, i32, i32, i32, i16, i8, i8, i32, [14 x i8], [14 x i8], i16, [2 x i8], i64, i64, %union.ieee_types_phy_param_set, %union.ieee_types_ss_param_set, i8, i16, %struct.ieee_types_wmm_parameter, i8, [3 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, i8, i8, ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i32, i8, i8, i8, [5 x i8] }>
%union.ieee_types_phy_param_set = type { %struct.ieee_types_fh_param_set }
%struct.ieee_types_fh_param_set = type <{ i8, i8, i16, i8, i8, i8 }>
%union.ieee_types_ss_param_set = type { %struct.ieee_types_cf_param_set }
%struct.ieee_types_cf_param_set = type { i8, i8, i8, i8, i16, i16 }
%struct.ieee_types_wmm_parameter = type { %struct.ieee_types_vendor_header, i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.152 }
%struct.anon.152 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
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
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
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
%struct.txpd = type { i8, i8, i16, i16, i16, i32, i8, i8, i8, [2 x i8], i8, [2 x i8] }
%struct.mwifiex_tx_param = type { i32 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Tx: bad packet length: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: host_to_card failed: ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.mwifiex_send_null_packet = private unnamed_addr constant [25 x i8] c"mwifiex_send_null_packet\00", align 1
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"data: %s: host_to_card succeeded\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967181, i64 4294967280, i64 4294967295]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 55, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 192, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [49 x i8] c"../drivers/net/wireless/marvell/mwifiex/sta_tx.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 206, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mwifiex_process_sta_txpd(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %intf_hdr_len, align 4
  %conv = zext i8 %3 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 0) #4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %cleanup

do.body:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 100
  br i1 %cmp, label %do.body8, label %do.end14, !prof !16

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/mwifiex/sta_tx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 61, 0\0A.popsection", ""() #4, !srcloc !17
  unreachable

do.end14:                                         ; preds = %do.body
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -452984832, i32 %13)
  %cmp.i = icmp eq i32 %13, -452984832
  %conv17 = select i1 %cmp.i, i16 -6912, i16 0
  %add.neg = sub nsw i32 44, %conv
  %sub = add i32 %add.neg, %sub.ptr.lhs.cast.i
  %and = and i32 %sub, 63
  %add19 = add nuw nsw i32 %and, 20
  %call20 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add19) #4
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 20)
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 4
  %17 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bss_num, align 1
  %bss_num22 = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %bss_num22 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %bss_num22, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bss_type, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %15, align 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %sub26 = sub i32 %24, %add19
  %conv27 = trunc i32 %sub26 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %tx_pkt_length = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 2
  %26 = ptrtoint ptr %tx_pkt_length to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %tx_pkt_length, align 1
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %27 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %priority, align 4
  %conv28 = trunc i32 %28 to i8
  %priority29 = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 6
  %29 = ptrtoint ptr %priority29 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv28, ptr %priority29, align 1
  %call30 = tail call zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef %priv, ptr noundef %skb) #4
  %pkt_delay_2ms = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 8
  %30 = ptrtoint ptr %pkt_delay_2ms to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call30, ptr %pkt_delay_2ms, align 1
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags, align 4
  %33 = and i8 %32, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %do.end14.if.end42_crit_edge, label %if.then38

do.end14.if.end42_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then38:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #6
  %ack_frame_id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %35 = ptrtoint ptr %ack_frame_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ack_frame_id, align 4
  %tx_token_id = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 10
  %37 = ptrtoint ptr %tx_token_id to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %tx_token_id, align 1
  %flags39 = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 7
  %38 = ptrtoint ptr %flags39 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags39, align 1
  %40 = or i8 %39, 32
  store i8 %40, ptr %flags39, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %do.end14.if.end42_crit_edge
  %41 = ptrtoint ptr %priority29 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %priority29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp45 = icmp ult i8 %42, 8
  br i1 %cmp45, label %if.then47, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %conv44 = zext i8 %42 to i32
  %arrayidx = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 8, i32 %conv44
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %tx_control = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 5
  %46 = ptrtoint ptr %tx_control to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %tx_control, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end42.if.end49_crit_edge
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 104
  %47 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %pps_uapsd_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool50.not = icmp eq i16 %48, 0
  br i1 %tobool50.not, label %if.end49.if.end57_crit_edge, label %if.then51

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then51:                                        ; preds = %if.end49
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  %sleep_period.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %50, i32 0, i32 88
  %51 = ptrtoint ptr %sleep_period.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sleep_period.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i = icmp eq i16 %52, 0
  br i1 %tobool.not.i, label %if.then51.if.end57_crit_edge, label %if.end.i

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end.i:                                         ; preds = %if.then51
  %call.i = tail call i32 @mwifiex_wmm_lists_empty(ptr noundef %50) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge, label %land.lhs.true.i

if.end.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mwifiex_check_last_packet_indication.exit.thread141

land.lhs.true.i:                                  ; preds = %if.end.i
  %cmd_sent.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %50, i32 0, i32 54
  %53 = ptrtoint ptr %cmd_sent.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cmd_sent.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool6.not.i = icmp eq i8 %54, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %land.lhs.true.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge

land.lhs.true.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mwifiex_check_last_packet_indication.exit.thread141

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %curr_cmd.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %50, i32 0, i32 60
  %55 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %curr_cmd.i, align 4
  %tobool8.not.i = icmp eq ptr %56, null
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %land.lhs.true7.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge

land.lhs.true7.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mwifiex_check_last_packet_indication.exit.thread141

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %call10.i = tail call i32 @is_command_pending(ptr noundef %50) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then54, label %land.lhs.true9.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge

land.lhs.true9.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mwifiex_check_last_packet_indication.exit.thread141

mwifiex_check_last_packet_indication.exit.thread141: ; preds = %land.lhs.true9.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge, %land.lhs.true7.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge, %land.lhs.true.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge, %if.end.i.mwifiex_check_last_packet_indication.exit.thread141_crit_edge
  %delay_null_pkt.i144 = getelementptr inbounds %struct.mwifiex_adapter, ptr %50, i32 0, i32 99
  %57 = ptrtoint ptr %delay_null_pkt.i144 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %delay_null_pkt.i144, align 1
  br label %if.end57

if.then54:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #6
  %delay_null_pkt.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %50, i32 0, i32 99
  %58 = ptrtoint ptr %delay_null_pkt.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %delay_null_pkt.i, align 1
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %59 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %tx_lock_flag, align 4
  %flags55 = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 7
  %60 = ptrtoint ptr %flags55 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 8, ptr %flags55, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %mwifiex_check_last_packet_indication.exit.thread141, %if.then51.if.end57_crit_edge, %if.end49.if.end57_crit_edge
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flags, align 4
  %63 = and i8 %62, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool61.not = icmp eq i8 %63, 0
  br i1 %tobool61.not, label %if.end57.if.end67_crit_edge, label %if.then62

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  %flags63 = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 7
  %64 = ptrtoint ptr %flags63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags63, align 1
  %66 = or i8 %65, 16
  store i8 %66, ptr %flags63, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end57.if.end67_crit_edge
  %conv69 = trunc i32 %add19 to i16
  br i1 %cmp.i, label %if.then73, label %if.end67.if.end77_crit_edge

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  %tx_pkt_type = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 4
  %67 = ptrtoint ptr %tx_pkt_type to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %conv17, ptr %tx_pkt_type, align 1
  %68 = trunc i32 %and to i16
  %conv76 = add nuw nsw i16 %68, 28
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end67.if.end77_crit_edge
  %pkt_offset.0 = phi i16 [ %conv76, %if.then73 ], [ %conv69, %if.end67.if.end77_crit_edge ]
  %69 = tail call i16 @llvm.bswap.i16(i16 %pkt_offset.0)
  %tx_pkt_offset = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 3
  %70 = ptrtoint ptr %tx_pkt_offset to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %tx_pkt_offset, align 1
  %call78 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv) #4
  %tx_control79 = getelementptr inbounds %struct.txpd, ptr %15, i32 0, i32 5
  %71 = ptrtoint ptr %tx_control79 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %tx_control79, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool80.not = icmp eq i32 %72, 0
  br i1 %tobool80.not, label %if.then81, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %pkt_tx_ctrl = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 19
  %73 = ptrtoint ptr %pkt_tx_ctrl to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pkt_tx_ctrl, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %76 = ptrtoint ptr %tx_control79 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %tx_control79, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %if.end77.cleanup_crit_edge, %if.then
  %retval.0.in = phi ptr [ %data, %if.then ], [ %data.i, %if.then81 ], [ %data.i, %if.end77.cleanup_crit_edge ]
  %77 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %77)
  %retval.0 = load ptr, ptr %retval.0.in, align 4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_check_last_packet_indication(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sleep_period = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 88
  %2 = ptrtoint ptr %sleep_period to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sleep_period, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @mwifiex_wmm_lists_empty(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %cmd_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd_sent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 60
  %6 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curr_cmd, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %call10 = tail call i32 @is_command_pending(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.cleanup.sink.split_crit_edge, label %land.lhs.true9.if.else_crit_edge

land.lhs.true9.if.else_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true9.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true9.if.else_crit_edge, %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %land.lhs.true9.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.else ], [ 0, %land.lhs.true9.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true9.cleanup.sink.split_crit_edge ]
  %delay_null_pkt = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 99
  %8 = ptrtoint ptr %delay_null_pkt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %delay_null_pkt, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_null_packet(ptr noundef %priv, i8 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  %tx_param = alloca %struct.mwifiex_tx_param, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_param) #4
  %2 = ptrtoint ptr %tx_param to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tx_param, align 4, !annotation !18
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %work_flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %media_connected = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 8
  %5 = ptrtoint ptr %media_connected to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %media_connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 53
  %7 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %is_port_ready = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 27
  %9 = ptrtoint ptr %is_port_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %is_port_ready, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %call11 = tail call zeroext i1 %10(ptr noundef %priv) #4
  br i1 %call11, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 64, i32 noundef 2592) #4
  %tobool15.not = icmp eq ptr %call.i.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %11 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 24)
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 4
  %13 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bss_num, align 1
  %bss_num19 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 13
  %15 = ptrtoint ptr %bss_num19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bss_num19, align 1
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bss_type, align 4
  %bss_type20 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 14
  %18 = ptrtoint ptr %bss_type20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %bss_type20, align 2
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %intf_hdr_len, align 4
  %conv = zext i8 %20 to i32
  %sub = sub nsw i32 44, %conv
  %pkt_len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %21 = ptrtoint ptr %pkt_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %pkt_len, align 8
  %22 = load i8, ptr %intf_hdr_len, align 4
  %conv22 = zext i8 %22 to i32
  %add23 = add nuw nsw i32 %conv22, 20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %add23
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %26, i32 %add23
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call24 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 20) #4
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %pkt_tx_ctrl = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 19
  %29 = ptrtoint ptr %pkt_tx_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pkt_tx_ctrl, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %tx_control = getelementptr inbounds %struct.txpd, ptr %28, i32 0, i32 5
  %32 = ptrtoint ptr %tx_control to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %tx_control, align 1
  %flags25 = getelementptr inbounds %struct.txpd, ptr %28, i32 0, i32 7
  %33 = ptrtoint ptr %flags25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %flags, ptr %flags25, align 1
  %priority = getelementptr inbounds %struct.txpd, ptr %28, i32 0, i32 6
  %34 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 7, ptr %priority, align 1
  %tx_pkt_offset = getelementptr inbounds %struct.txpd, ptr %28, i32 0, i32 3
  %35 = ptrtoint ptr %tx_pkt_offset to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 5120, ptr %tx_pkt_offset, align 1
  %36 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bss_num, align 1
  %bss_num27 = getelementptr inbounds %struct.txpd, ptr %28, i32 0, i32 1
  %38 = ptrtoint ptr %bss_num27 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %bss_num27, align 1
  %39 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bss_type, align 4
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %28, align 1
  %42 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %intf_hdr_len, align 4
  %conv31 = zext i8 %43 to i32
  %call32 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef %conv31) #4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp = icmp eq i8 %45, 2
  br i1 %cmp, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %host_to_card = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 10
  %46 = ptrtoint ptr %host_to_card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host_to_card, align 4
  %usb_port = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 10
  %48 = ptrtoint ptr %usb_port to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %usb_port, align 2
  %call37 = tail call i32 %47(ptr noundef %1, i8 noundef zeroext %49, ptr noundef nonnull %call.i.i, ptr noundef null) #4
  br label %if.end41

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %tx_param to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %tx_param, align 4
  %host_to_card39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 10
  %51 = ptrtoint ptr %host_to_card39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host_to_card39, align 4
  %call40 = call i32 %52(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %call.i.i, ptr noundef nonnull %tx_param) #4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then35
  %ret.0 = phi i32 [ %call37, %if.then35 ], [ %call40, %if.else ]
  %53 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0, label %if.end41.cleanup_crit_edge [
    i32 -16, label %sw.bb
    i32 -1, label %sw.bb42
    i32 0, label %sw.bb46
    i32 -115, label %sw.bb47
  ]

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mwifiex_send_null_packet, i32 noundef -16) #4
  %num_tx_host_to_card_failure = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 2
  %54 = ptrtoint ptr %num_tx_host_to_card_failure to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_tx_host_to_card_failure, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %num_tx_host_to_card_failure, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mwifiex_send_null_packet, i32 noundef -1) #4
  %num_tx_host_to_card_failure44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 2
  %56 = ptrtoint ptr %num_tx_host_to_card_failure44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_tx_host_to_card_failure44, align 4
  %inc45 = add i32 %57, 1
  store i32 %inc45, ptr %num_tx_host_to_card_failure44, align 4
  br label %cleanup

sw.bb46:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.mwifiex_send_null_packet) #4
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %58 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %tx_lock_flag, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %tx_lock_flag48 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %59 = ptrtoint ptr %tx_lock_flag48 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %tx_lock_flag48, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb47, %sw.bb46, %sw.bb42, %sw.bb, %if.end41.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ], [ %ret.0, %if.end41.cleanup_crit_edge ], [ -115, %sw.bb47 ], [ 0, %sw.bb46 ], [ -1, %sw.bb42 ], [ -16, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_param) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wmm_lists_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_command_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_tx.c", i32 55, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_tx.c", i32 192, i32 3}
!4 = !{ptr @__func__.mwifiex_send_null_packet, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/mwifiex/sta_tx.c", i32 206, i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2159232741, i64 2159233250, i64 2159232778, i64 2159232834, i64 2159232868, i64 2159232892, i64 2159232933, i64 2159232954, i64 2159232982, i64 2159233016}
!18 = !{!"auto-init"}
