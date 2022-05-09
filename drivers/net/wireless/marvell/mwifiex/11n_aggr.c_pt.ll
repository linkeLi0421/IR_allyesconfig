; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/11n_aggr.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11n_aggr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rfc_1042_hdr = type { i8, i8, i8, [3 x i8], i16 }
%struct.mwifiex_tx_param = type { i32 }
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
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tx_packet_hdr = type { %struct.ethhdr, %struct.rfc_1042_hdr }
%struct.txpd = type { i8, i8, i16, i16, i16, i32, i8, i8, i8, [2 x i8], i8, [2 x i8] }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data: -EBUSY is returned\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: host_to_card failed: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.mwifiex_11n_aggregate_pkt = private unnamed_addr constant [26 x i8] c"mwifiex_11n_aggregate_pkt\00", align 1
@__const.mwifiex_11n_form_amsdu_pkt.snap = private unnamed_addr constant %struct.rfc_1042_hdr { i8 -86, i8 -86, i8 3, [3 x i8] zeroinitializer, i16 0 }, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967280, i64 4294967295]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 285, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [51 x i8] c"../drivers/net/wireless/marvell/mwifiex/11n_aggr.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 288, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11n_aggregate_pkt(ptr noundef %priv, ptr noundef %pra_list, i32 noundef %ptrindex) local_unnamed_addr #0 align 64 {
entry:
  %tx_param = alloca %struct.mwifiex_tx_param, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_param) #5
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %intf_hdr_len, align 4
  %conv = zext i8 %3 to i32
  %skb_head = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %pra_list, i32 0, i32 1
  %4 = ptrtoint ptr %skb_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb_head, align 4
  %cmp.i = icmp eq ptr %5, %skb_head
  %tobool.not258 = icmp eq ptr %5, null
  %tobool.not = or i1 %cmp.i, %tobool.not258
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ra_list_spinlock = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_buf_size = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_buf_size, align 2
  %conv3 = zext i16 %7 to i32
  %call4 = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %conv3, i32 noundef 2592) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ra_list_spinlock8 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock8) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %add = add nuw nsw i32 %conv, 20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %add
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 3, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 24)
  %bss_type = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 14
  %14 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bss_type, align 2
  %bss_type11 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 3, i32 14
  %16 = ptrtoint ptr %bss_type11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %bss_type11, align 2
  %bss_num = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 13
  %17 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bss_num, align 1
  %bss_num12 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 3, i32 13
  %19 = ptrtoint ptr %bss_num12 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %bss_num12, align 1
  %flags = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags, align 4
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not = icmp eq i8 %22, 0
  br i1 %tobool14.not, label %if.end9.if.end19_crit_edge, label %if.then15

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %flags16 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %flags16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags16, align 4
  %25 = or i8 %24, 4
  store i8 %25, ptr %flags16, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end9.if.end19_crit_edge
  %flags20 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 3, i32 12
  %26 = ptrtoint ptr %flags20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags20, align 4
  %28 = or i8 %27, 32
  store i8 %28, ptr %flags20, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 6
  %29 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %priority, align 4
  %priority24 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 15, i32 0, i32 6
  %31 = ptrtoint ptr %priority24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %priority24, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %34, ptr %35, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %len25261 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %39 = ptrtoint ptr %len25261 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len25261, align 4
  %add26262 = add i32 %38, 8
  %add27263 = add i32 %add26262, %40
  %41 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tx_buf_size, align 2
  %conv29264 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add27263, i32 %conv29264)
  %cmp265 = icmp ugt i32 %add27263, %conv29264
  br i1 %cmp265, label %if.end19.do.end_crit_edge, label %if.end32.lr.ph

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end32.lr.ph:                                   ; preds = %if.end19
  %total_pkt_count = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %pra_list, i32 0, i32 9
  %tx_pkts_queued = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  %ra_list_spinlock37 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 7
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 17
  br label %if.end32

do.body:                                          ; preds = %if.end52
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %len25 = getelementptr inbounds %struct.sk_buff, ptr %78, i32 0, i32 6
  %45 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len25, align 4
  %add26 = add i32 %44, 8
  %add27 = add i32 %add26, %46
  %47 = ptrtoint ptr %tx_buf_size to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %tx_buf_size, align 2
  %conv29 = zext i16 %48 to i32
  %cmp = icmp ugt i32 %add27, %conv29
  br i1 %cmp, label %do.body.do.end.loopexit_crit_edge, label %do.body.if.end32_crit_edge

do.body.if.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.body.do.end.loopexit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.loopexit

if.end32:                                         ; preds = %do.body.if.end32_crit_edge, %if.end32.lr.ph
  %aggr_num.0266 = phi i32 [ 0, %if.end32.lr.ph ], [ %inc, %do.body.if.end32_crit_edge ]
  %call34 = tail call ptr @skb_dequeue(ptr noundef %skb_head) #5
  %49 = ptrtoint ptr %total_pkt_count to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %total_pkt_count, align 2
  %dec = add i16 %50, -1
  store i16 %dec, ptr %total_pkt_count, align 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %tx_pkts_queued, i32 1, i32 3, i32 1) #5
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued, ptr %tx_pkts_queued, i32 1, ptr elementtype(i32) %tx_pkts_queued) #5, !srcloc !14
  %inc = add i32 %aggr_num.0266, 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock37) #5
  %call.i = tail call ptr @skb_put(ptr noundef %call4, i32 noundef 22) #5
  %data.i246 = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 19
  %52 = ptrtoint ptr %data.i246 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i246, align 4
  %54 = call ptr @memcpy(ptr %call.i, ptr %53, i32 12)
  %55 = load ptr, ptr %data.i246, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %h_proto.i, align 1
  %rfc1042_hdr.i = getelementptr inbounds %struct.tx_packet_hdr, ptr %call.i, i32 0, i32 1
  %58 = call ptr @memcpy(ptr %rfc1042_hdr.i, ptr @__const.mwifiex_11n_form_amsdu_pkt.snap, i32 6)
  %snap.sroa.4.0.rfc1042_hdr.sroa_idx.i = getelementptr inbounds %struct.tx_packet_hdr, ptr %call.i, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %snap.sroa.4.0.rfc1042_hdr.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %57, ptr %snap.sroa.4.0.rfc1042_hdr.sroa_idx.i, align 1
  %call2.i = tail call ptr @skb_pull(ptr noundef %call34, i32 noundef 14) #5
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 6
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i, align 4
  %62 = trunc i32 %61 to i16
  %conv.i = add i16 %62, 8
  %h_proto5.i = getelementptr inbounds %struct.ethhdr, ptr %call.i, i32 0, i32 2
  %63 = ptrtoint ptr %h_proto5.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %conv.i, ptr %h_proto5.i, align 1
  %64 = ptrtoint ptr %data.i246 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i246, align 4
  %66 = load i32, ptr %len.i, align 4
  %call.i.i247 = tail call ptr @skb_put(ptr noundef %call4, i32 noundef %66) #5
  %67 = call ptr @memcpy(ptr %call.i.i247, ptr %65, i32 %66)
  %68 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i, align 8
  %70 = ptrtoint ptr %69 to i32
  %sub.i = sub i32 0, %70
  %rem.i = and i32 %sub.i, 3
  %call39 = tail call i32 @mwifiex_write_data_complete(ptr noundef %1, ptr noundef %call34, i32 noundef 0, i32 noundef 0) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock37) #5
  %call42 = tail call i32 @mwifiex_is_ralist_valid(ptr noundef %priv, ptr noundef %pra_list, i32 noundef %ptrindex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock37) #5
  br label %cleanup

if.end47:                                         ; preds = %if.end32
  %71 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i.not.i = icmp eq i32 %72, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end47.skb_tailroom.exit_crit_edge

if.end47.skb_tailroom.exit_crit_edge:             ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i, align 4
  %75 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end47.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end47.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %rem.i)
  %cmp49 = icmp slt i32 %cond.i, %rem.i
  br i1 %cmp49, label %skb_tailroom.exit.do.end.loopexit_crit_edge, label %if.end52

skb_tailroom.exit.do.end.loopexit_crit_edge:      ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.loopexit

if.end52:                                         ; preds = %skb_tailroom.exit
  %call53 = tail call ptr @skb_put(ptr noundef nonnull %call4, i32 noundef %rem.i) #5
  %77 = ptrtoint ptr %skb_head to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %skb_head, align 4
  %cmp.i250 = icmp eq ptr %78, %skb_head
  %tobool56.not259 = icmp eq ptr %78, null
  %tobool56.not = or i1 %cmp.i250, %tobool56.not259
  br i1 %tobool56.not, label %if.end52.do.end.loopexit_crit_edge, label %do.body

if.end52.do.end.loopexit_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.loopexit

do.end.loopexit:                                  ; preds = %if.end52.do.end.loopexit_crit_edge, %skb_tailroom.exit.do.end.loopexit_crit_edge, %do.body.do.end.loopexit_crit_edge
  %pad.1.ph = phi i32 [ %rem.i, %if.end52.do.end.loopexit_crit_edge ], [ %rem.i, %do.body.do.end.loopexit_crit_edge ], [ 0, %skb_tailroom.exit.do.end.loopexit_crit_edge ]
  %skb_src.1.ph = phi ptr [ null, %if.end52.do.end.loopexit_crit_edge ], [ %78, %do.body.do.end.loopexit_crit_edge ], [ %call34, %skb_tailroom.exit.do.end.loopexit_crit_edge ]
  %phi.bo = shl i32 %inc, 1
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit, %if.end19.do.end_crit_edge
  %pad.1 = phi i32 [ 0, %if.end19.do.end_crit_edge ], [ %pad.1.ph, %do.end.loopexit ]
  %skb_src.1 = phi ptr [ %5, %if.end19.do.end_crit_edge ], [ %skb_src.1.ph, %do.end.loopexit ]
  %aggr_num.1 = phi i32 [ 0, %if.end19.do.end_crit_edge ], [ %phi.bo, %do.end.loopexit ]
  %ra_list_spinlock58 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock58) #5
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  %sub = sub i32 %80, %pad.1
  tail call void @skb_trim(ptr noundef nonnull %call4, i32 noundef %sub) #5
  %call1.i = tail call ptr @skb_push(ptr noundef %call4, i32 noundef 20) #5
  %81 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i, align 4
  %83 = call ptr @memset(ptr %82, i32 0, i32 20)
  %84 = ptrtoint ptr %priority24 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %priority24, align 4
  %conv.i253 = trunc i32 %85 to i8
  %priority2.i = getelementptr inbounds %struct.txpd, ptr %82, i32 0, i32 6
  %86 = ptrtoint ptr %priority2.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv.i253, ptr %priority2.i, align 1
  %call3.i = tail call zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef %priv, ptr noundef %call4) #5
  %pkt_delay_2ms.i = getelementptr inbounds %struct.txpd, ptr %82, i32 0, i32 8
  %87 = ptrtoint ptr %pkt_delay_2ms.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %call3.i, ptr %pkt_delay_2ms.i, align 1
  %bss_num.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 4
  %88 = ptrtoint ptr %bss_num.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bss_num.i, align 1
  %bss_num4.i = getelementptr inbounds %struct.txpd, ptr %82, i32 0, i32 1
  %90 = ptrtoint ptr %bss_num4.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %bss_num4.i, align 1
  %bss_type.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 1
  %91 = ptrtoint ptr %bss_type.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bss_type.i, align 4
  %93 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %82, align 1
  %tx_pkt_offset.i = getelementptr inbounds %struct.txpd, ptr %82, i32 0, i32 3
  %94 = ptrtoint ptr %tx_pkt_offset.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 5120, ptr %tx_pkt_offset.i, align 1
  %tx_pkt_type.i = getelementptr inbounds %struct.txpd, ptr %82, i32 0, i32 4
  %95 = ptrtoint ptr %tx_pkt_type.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 -6656, ptr %tx_pkt_type.i, align 1
  %96 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len, align 4
  %98 = trunc i32 %97 to i16
  %conv6.i = add i16 %98, -20
  %99 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #5
  %tx_pkt_length.i = getelementptr inbounds %struct.txpd, ptr %82, i32 0, i32 2
  %100 = ptrtoint ptr %tx_pkt_length.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %99, ptr %tx_pkt_length.i, align 1
  %101 = ptrtoint ptr %flags20 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %flags20, align 4
  %103 = and i8 %102, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i, label %do.end.if.end.i_crit_edge, label %if.then.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %flags8.i = getelementptr inbounds %struct.txpd, ptr %82, i32 0, i32 7
  %104 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %flags8.i, align 1
  %106 = or i8 %105, 16
  store i8 %106, ptr %flags8.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end.if.end.i_crit_edge
  %tx_control.i = getelementptr inbounds %struct.txpd, ptr %82, i32 0, i32 5
  %107 = ptrtoint ptr %tx_control.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %tx_control.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i255 = icmp eq i32 %108, 0
  br i1 %cmp.i255, label %if.then12.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pkt_tx_ctrl.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 19
  %109 = ptrtoint ptr %pkt_tx_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pkt_tx_ctrl.i, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #5
  %112 = ptrtoint ptr %tx_control.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %111, ptr %tx_control.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i.if.end14.i_crit_edge
  %bss_role.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %113 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bss_role.i, align 1
  %115 = and i8 %114, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp17.i = icmp eq i8 %115, 0
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end14.i.mwifiex_11n_form_amsdu_txpd.exit_crit_edge

if.end14.i.mwifiex_11n_form_amsdu_txpd.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_11n_form_amsdu_txpd.exit

land.lhs.true.i:                                  ; preds = %if.end14.i
  %116 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv, align 8
  %pps_uapsd_mode.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %117, i32 0, i32 104
  %118 = ptrtoint ptr %pps_uapsd_mode.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %pps_uapsd_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool20.not.i = icmp eq i16 %119, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i.mwifiex_11n_form_amsdu_txpd.exit_crit_edge, label %if.then21.i

land.lhs.true.i.mwifiex_11n_form_amsdu_txpd.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_11n_form_amsdu_txpd.exit

if.then21.i:                                      ; preds = %land.lhs.true.i
  %call22.i = tail call zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef %priv) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call22.i)
  %cmp24.i = icmp eq i8 %call22.i, 1
  br i1 %cmp24.i, label %if.then26.i, label %if.then21.i.mwifiex_11n_form_amsdu_txpd.exit_crit_edge

if.then21.i.mwifiex_11n_form_amsdu_txpd.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_11n_form_amsdu_txpd.exit

if.then26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %priv, align 8
  %tx_lock_flag.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %121, i32 0, i32 86
  %122 = ptrtoint ptr %tx_lock_flag.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %tx_lock_flag.i, align 4
  %flags28.i = getelementptr inbounds %struct.txpd, ptr %82, i32 0, i32 7
  %123 = ptrtoint ptr %flags28.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 8, ptr %flags28.i, align 1
  br label %mwifiex_11n_form_amsdu_txpd.exit

mwifiex_11n_form_amsdu_txpd.exit:                 ; preds = %if.then26.i, %if.then21.i.mwifiex_11n_form_amsdu_txpd.exit_crit_edge, %land.lhs.true.i.mwifiex_11n_form_amsdu_txpd.exit_crit_edge, %if.end14.i.mwifiex_11n_form_amsdu_txpd.exit_crit_edge
  %124 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bss_role.i, align 1
  %126 = and i8 %125, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp62 = icmp eq i8 %126, 0
  br i1 %cmp62, label %if.then64, label %mwifiex_11n_form_amsdu_txpd.exit.if.end65_crit_edge

mwifiex_11n_form_amsdu_txpd.exit.if.end65_crit_edge: ; preds = %mwifiex_11n_form_amsdu_txpd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then64:                                        ; preds = %mwifiex_11n_form_amsdu_txpd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %127 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %mwifiex_11n_form_amsdu_txpd.exit.if.end65_crit_edge
  %ptx_pd.0 = phi ptr [ %128, %if.then64 ], [ null, %mwifiex_11n_form_amsdu_txpd.exit.if.end65_crit_edge ]
  %call66 = tail call ptr @skb_push(ptr noundef nonnull %call4, i32 noundef %conv) #5
  %conv67 = trunc i32 %aggr_num.1 to i8
  %aggr_num68 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 3, i32 15
  %129 = ptrtoint ptr %aggr_num68 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv67, ptr %aggr_num68, align 1
  %data_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 53
  %130 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %data_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool70.not = icmp eq i8 %131, 0
  br i1 %tobool70.not, label %lor.lhs.false, label %if.end65.if.then73_crit_edge

if.end65.if.then73_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

lor.lhs.false:                                    ; preds = %if.end65
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %132 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %tx_lock_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool72.not = icmp eq i8 %133, 0
  br i1 %tobool72.not, label %if.end75, label %lor.lhs.false.if.then73_crit_edge

lor.lhs.false.if.then73_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

if.then73:                                        ; preds = %lor.lhs.false.if.then73_crit_edge, %if.end65.if.then73_crit_edge
  %tx_queued = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 72
  %call.i.i244 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_queued, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %tx_queued, i32 1, i32 3, i32 1) #5
  %134 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_queued, ptr %tx_queued, i32 %aggr_num.1, ptr elementtype(i32) %tx_queued) #5, !srcloc !15
  %tx_data_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 71
  tail call void @skb_queue_tail(ptr noundef %tx_data_q, ptr noundef nonnull %call4) #5
  br label %cleanup

if.end75:                                         ; preds = %lor.lhs.false
  %tobool76.not = icmp eq ptr %skb_src.1, null
  br i1 %tobool76.not, label %if.end75.if.end81_crit_edge, label %if.then77

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  %len78 = getelementptr inbounds %struct.sk_buff, ptr %skb_src.1, i32 0, i32 6
  %135 = ptrtoint ptr %len78 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len78, align 4
  %add79 = add i32 %136, 20
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end75.if.end81_crit_edge
  %storemerge = phi i32 [ %add79, %if.then77 ], [ 0, %if.end75.if.end81_crit_edge ]
  %137 = ptrtoint ptr %tx_param to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %storemerge, ptr %tx_param, align 4
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %139)
  %cmp83 = icmp eq i8 %139, 2
  %host_to_card = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 10
  %140 = ptrtoint ptr %host_to_card to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %host_to_card, align 4
  br i1 %cmp83, label %if.then85, label %if.end81.if.end91_crit_edge

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %usb_port = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 10
  %142 = ptrtoint ptr %usb_port to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %usb_port, align 2
  br label %if.end91

if.end91:                                         ; preds = %if.then85, %if.end81.if.end91_crit_edge
  %.sink = phi i8 [ %143, %if.then85 ], [ 0, %if.end81.if.end91_crit_edge ]
  %call90 = call i32 %141(ptr noundef %1, i8 noundef zeroext %.sink, ptr noundef nonnull %call4, ptr noundef nonnull %tx_param) #5
  %144 = zext i32 %call90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call90, label %if.end91.if.then138_crit_edge [
    i32 -16, label %sw.bb
    i32 -1, label %sw.bb131
    i32 0, label %sw.epilog
  ]

if.end91.if.then138_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then138

sw.bb:                                            ; preds = %if.end91
  call void @_raw_spin_lock_bh(ptr noundef %ra_list_spinlock58) #5
  %call94 = call i32 @mwifiex_is_ralist_valid(ptr noundef %priv, ptr noundef %pra_list, i32 noundef %ptrindex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then96, label %if.end100

if.then96:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock58) #5
  %call99 = call i32 @mwifiex_write_data_complete(ptr noundef %1, ptr noundef nonnull %call4, i32 noundef 1, i32 noundef -1) #5
  br label %cleanup

if.end100:                                        ; preds = %sw.bb
  %145 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %bss_role.i, align 1
  %147 = and i8 %146, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp104 = icmp eq i8 %147, 0
  br i1 %cmp104, label %land.lhs.true, label %if.end100.sw.epilog.thread_crit_edge

if.end100.sw.epilog.thread_crit_edge:             ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

land.lhs.true:                                    ; preds = %if.end100
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 104
  %148 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %pps_uapsd_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool107.not = icmp eq i16 %149, 0
  br i1 %tobool107.not, label %land.lhs.true.sw.epilog.thread_crit_edge, label %land.lhs.true108

land.lhs.true.sw.epilog.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

land.lhs.true108:                                 ; preds = %land.lhs.true
  %150 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %tx_lock_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool111.not = icmp eq i8 %151, 0
  br i1 %tobool111.not, label %land.lhs.true108.sw.epilog.thread_crit_edge, label %if.then112

land.lhs.true108.sw.epilog.thread_crit_edge:      ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

if.then112:                                       ; preds = %land.lhs.true108
  %152 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %priv, align 8
  %tx_lock_flag114 = getelementptr inbounds %struct.mwifiex_adapter, ptr %153, i32 0, i32 86
  %154 = ptrtoint ptr %tx_lock_flag114 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %tx_lock_flag114, align 4
  %tobool115.not = icmp eq ptr %ptx_pd.0, null
  br i1 %tobool115.not, label %if.then112.sw.epilog.thread_crit_edge, label %if.then116

if.then112.sw.epilog.thread_crit_edge:            ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

if.then116:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  %flags117 = getelementptr inbounds %struct.txpd, ptr %ptx_pd.0, i32 0, i32 7
  %155 = ptrtoint ptr %flags117 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %flags117, align 1
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.then116, %if.then112.sw.epilog.thread_crit_edge, %land.lhs.true108.sw.epilog.thread_crit_edge, %land.lhs.true.sw.epilog.thread_crit_edge, %if.end100.sw.epilog.thread_crit_edge
  call void @skb_queue_tail(ptr noundef %skb_head, ptr noundef nonnull %call4) #5
  %total_pkt_count121 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %pra_list, i32 0, i32 9
  %156 = ptrtoint ptr %total_pkt_count121 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %total_pkt_count121, align 2
  %inc122 = add i16 %157, 1
  store i16 %inc122, ptr %total_pkt_count121, align 2
  %tx_pkts_queued124 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 77, i32 9
  %call.i.i245 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_pkts_queued124, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %tx_pkts_queued124, i32 1, i32 3, i32 1) #5
  %158 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_pkts_queued124, ptr %tx_pkts_queued124, i32 1, ptr elementtype(i32) %tx_pkts_queued124) #5, !srcloc !15
  %159 = ptrtoint ptr %flags20 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %flags20, align 4
  %161 = or i8 %160, 1
  store i8 %161, ptr %flags20, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %ra_list_spinlock58) #5
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str) #5
  br label %cleanup

sw.bb131:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mwifiex_11n_aggregate_pkt, i32 noundef -1) #5
  %num_tx_host_to_card_failure = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 118, i32 2
  %162 = ptrtoint ptr %num_tx_host_to_card_failure to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %num_tx_host_to_card_failure, align 4
  %inc132 = add i32 %163, 1
  store i32 %inc132, ptr %num_tx_host_to_card_failure, align 4
  %call133 = call i32 @mwifiex_write_data_complete(ptr noundef %1, ptr noundef nonnull %call4, i32 noundef 1, i32 noundef -1) #5
  br label %cleanup

sw.epilog:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %call135 = call i32 @mwifiex_write_data_complete(ptr noundef %1, ptr noundef nonnull %call4, i32 noundef 1, i32 noundef 0) #5
  br label %if.then138

if.then138:                                       ; preds = %sw.epilog, %if.end91.if.then138_crit_edge
  call void @mwifiex_rotate_priolists(ptr noundef %priv, ptr noundef %pra_list, i32 noundef %ptrindex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then138, %sw.bb131, %sw.epilog.thread, %if.then96, %if.then73, %if.then44, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then73 ], [ 0, %sw.bb131 ], [ -1, %if.then96 ], [ -1, %if.then44 ], [ -1, %if.then6 ], [ 0, %if.then ], [ 0, %if.then138 ], [ 0, %sw.epilog.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_param) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_alloc_dma_align_buf(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_is_ralist_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_rotate_priolists(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_aggr.c", i32 285, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/11n_aggr.c", i32 288, i32 3}
!4 = !{ptr @__func__.mwifiex_11n_aggregate_pkt, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2148537681, i64 2148537707, i64 2148537736, i64 2148537770, i64 2148537801, i64 2148537824}
!15 = !{i64 2148535216, i64 2148535242, i64 2148535271, i64 2148535305, i64 2148535336, i64 2148535359}
