; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/ie.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/ie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_ie = type { i16, i16, i16, [256 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee80211_vendor_ie = type { i8, i8, [3 x i8], i8 }
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
%struct.atomic_t = type { i32 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mwifiex_chan_freq_power = type { i16, i32, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wps = type { i8 }
%struct.mwifiex_ds_misc_subsc_evt = type { i16, i16, %struct.subsc_evt_cfg, %struct.subsc_evt_cfg }
%struct.subsc_evt_cfg = type { i8, i8 }
%struct.mwifiex_roc_cfg = type { i64, %struct.ieee80211_channel }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_uap_bss_param = type <{ i8, i8, i16, i16, i8, i8, %struct.mwifiex_802_11_ssid, i8, i8, i8, i8, i16, i16, i16, i16, i16, [2 x i8], %struct.wpa_param, [4 x %struct.wep_key], %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [14 x i8], i32, i32, i8, i8, %struct.mwifiex_types_wmm_info, [2 x i8] }>
%struct.mwifiex_802_11_ssid = type { i32, [32 x i8] }
%struct.wpa_param = type { i8, i8, i8, i32, [64 x i8] }
%struct.wep_key = type { i8, i8, i16, [13 x i8] }
%struct.mwifiex_types_wmm_info = type { [4 x i8], i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.mwifiex_ie_list = type { i16, i16, [16 x %struct.mwifiex_ie] }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
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
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 7, i64 32, i64 42, i64 45, i64 50, i64 61, i64 191, i64 192, i64 221]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_mgmt_ies(ptr noundef %priv, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %beacon_idx.i = alloca i16, align 2
  %pr_idx.i = alloca i16, align 2
  %ar_idx.i = alloca i16, align 2
  %gen_idx.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gen_idx.i) #5
  %0 = ptrtoint ptr %gen_idx.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %gen_idx.i, align 2
  %tail.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.mwifiex_uap_parse_tail_ies.exit.thread_crit_edge, label %lor.lhs.false.i

entry.mwifiex_uap_parse_tail_ies.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_uap_parse_tail_ies.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %tail_len.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 11
  %3 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tail_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.mwifiex_uap_parse_tail_ies.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.mwifiex_uap_parse_tail_ies.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_uap_parse_tail_ies.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 262) #8
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %mwifiex_uap_parse_tail_ies.exit.thread12, label %if.end4.i

mwifiex_uap_parse_tail_ies.exit.thread12:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gen_idx.i) #5
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp109.i = icmp ugt i32 %7, 2
  br i1 %cmp109.i, label %while.body.lr.ph.i, label %if.end4.i.while.end.i_crit_edge

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end4.i
  %ie_buffer.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %parsed_len.0113.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add28.i, %sw.epilog.i.while.body.i_crit_edge ]
  %left_len.0112.i = phi i32 [ %7, %while.body.lr.ph.i ], [ %sub.i, %sw.epilog.i.while.body.i_crit_edge ]
  %ie_len.0110.i = phi i16 [ 0, %while.body.lr.ph.i ], [ %ie_len.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %parsed_len.0113.i
  %len.i = getelementptr inbounds %struct.ieee_types_header, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len.i, align 1
  %conv.i = zext i8 %11 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %left_len.0112.i, i32 %add.i)
  %cmp7.i = icmp ult i32 %left_len.0112.i, %add.i
  br i1 %cmp7.i, label %while.body.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge, label %if.end10.i

while.body.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_uap_parse_tail_ies.exit.thread16

if.end10.i:                                       ; preds = %while.body.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end10.i.sw.default.i_crit_edge [
    i8 0, label %if.end10.i.sw.epilog.i_crit_edge
    i8 1, label %if.end10.i.sw.epilog.i_crit_edge19
    i8 7, label %if.end10.i.sw.epilog.i_crit_edge20
    i8 32, label %if.end10.i.sw.epilog.i_crit_edge21
    i8 42, label %if.end10.i.sw.epilog.i_crit_edge22
    i8 50, label %if.end10.i.sw.epilog.i_crit_edge23
    i8 45, label %if.end10.i.sw.epilog.i_crit_edge24
    i8 61, label %if.end10.i.sw.epilog.i_crit_edge25
    i8 -65, label %if.end10.i.sw.epilog.i_crit_edge26
    i8 -64, label %if.end10.i.sw.epilog.i_crit_edge27
    i8 -35, label %sw.bb12.i
  ]

if.end10.i.sw.epilog.i_crit_edge27:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.epilog.i_crit_edge26:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.epilog.i_crit_edge25:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.epilog.i_crit_edge24:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.epilog.i_crit_edge23:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.epilog.i_crit_edge22:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.epilog.i_crit_edge21:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.epilog.i_crit_edge20:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.epilog.i_crit_edge19:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.epilog.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.i.sw.default.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

sw.bb12.i:                                        ; preds = %if.end10.i
  %call.i.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 2, ptr noundef %add.ptr.i, i32 noundef %add.i) #5
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %sw.bb12.i.sw.default.i_crit_edge, label %sw.bb12.i.sw.epilog.i_crit_edge

sw.bb12.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb12.i.sw.default.i_crit_edge:                 ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb12.i.sw.default.i_crit_edge, %if.end10.i.sw.default.i_crit_edge
  %conv17.i = zext i16 %ie_len.0110.i to i32
  %add18.i = add nuw nsw i32 %add.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add18.i)
  %cmp19.i = icmp ugt i32 %add18.i, 256
  br i1 %cmp19.i, label %sw.default.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge, label %if.end22.i

sw.default.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_uap_parse_tail_ies.exit.thread16

if.end22.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr24.i = getelementptr i8, ptr %ie_buffer.i, i32 %conv17.i
  %15 = call ptr @memcpy(ptr %add.ptr24.i, ptr %add.ptr.i, i32 %add.i)
  %conv27.i = trunc i32 %add18.i to i16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end22.i, %sw.bb12.i.sw.epilog.i_crit_edge, %if.end10.i.sw.epilog.i_crit_edge, %if.end10.i.sw.epilog.i_crit_edge19, %if.end10.i.sw.epilog.i_crit_edge20, %if.end10.i.sw.epilog.i_crit_edge21, %if.end10.i.sw.epilog.i_crit_edge22, %if.end10.i.sw.epilog.i_crit_edge23, %if.end10.i.sw.epilog.i_crit_edge24, %if.end10.i.sw.epilog.i_crit_edge25, %if.end10.i.sw.epilog.i_crit_edge26, %if.end10.i.sw.epilog.i_crit_edge27
  %ie_len.1.i = phi i16 [ %conv27.i, %if.end22.i ], [ %ie_len.0110.i, %sw.bb12.i.sw.epilog.i_crit_edge ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge19 ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge20 ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge21 ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge22 ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge23 ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge24 ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge25 ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge26 ], [ %ie_len.0110.i, %if.end10.i.sw.epilog.i_crit_edge27 ]
  %sub.i = sub i32 %left_len.0112.i, %add.i
  %add28.i = add i32 %add.i, %parsed_len.0113.i
  %cmp.i = icmp ugt i32 %sub.i, 2
  br i1 %cmp.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.while.end.i_crit_edge

sw.epilog.i.while.end.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %sw.epilog.i.while.end.i_crit_edge, %if.end4.i.while.end.i_crit_edge
  %ie_len.0.lcssa.i = phi i16 [ 0, %if.end4.i.while.end.i_crit_edge ], [ %ie_len.1.i, %sw.epilog.i.while.end.i_crit_edge ]
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 4
  %18 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail_len.i, align 4
  %call.i104.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 1, ptr noundef %17, i32 noundef %19) #5
  %tobool32.not.i = icmp eq ptr %call.i104.i, null
  br i1 %tobool32.not.i, label %if.end50.i, label %if.then33.i

if.then33.i:                                      ; preds = %while.end.i
  %len34.i = getelementptr inbounds %struct.ieee80211_vendor_ie, ptr %call.i104.i, i32 0, i32 1
  %20 = ptrtoint ptr %len34.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %len34.i, align 1
  %conv35.i = zext i8 %21 to i32
  %add36.i = add nuw nsw i32 %conv35.i, 2
  %conv37.i = zext i16 %ie_len.0.lcssa.i to i32
  %add38.i = add nuw nsw i32 %add36.i, %conv37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add38.i)
  %cmp39.i = icmp ugt i32 %add38.i, 256
  br i1 %cmp39.i, label %if.then33.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge, label %if.end50.thread.i

if.then33.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_uap_parse_tail_ies.exit.thread16

if.end50.thread.i:                                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %ie_buffer43.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i, i32 0, i32 3
  %add.ptr46.i = getelementptr i8, ptr %ie_buffer43.i, i32 %conv37.i
  %22 = call ptr @memcpy(ptr %add.ptr46.i, ptr %call.i104.i, i32 %add36.i)
  %conv49.i = trunc i32 %add38.i to i16
  br label %if.end53.i

if.end50.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ie_len.0.lcssa.i)
  %tobool51.not.i = icmp eq i16 %ie_len.0.lcssa.i, 0
  br i1 %tobool51.not.i, label %if.end50.i.mwifiex_uap_parse_tail_ies.exit_crit_edge, label %if.end50.i.if.end53.i_crit_edge

if.end50.i.if.end53.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i

if.end50.i.mwifiex_uap_parse_tail_ies.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_uap_parse_tail_ies.exit

if.end53.i:                                       ; preds = %if.end50.i.if.end53.i_crit_edge, %if.end50.thread.i
  %ie_len.2107.i = phi i16 [ %conv49.i, %if.end50.thread.i ], [ %ie_len.0.lcssa.i, %if.end50.i.if.end53.i_crit_edge ]
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %call7.i.i.i, align 8
  %mgmt_subtype_mask.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %mgmt_subtype_mask.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8705, ptr %mgmt_subtype_mask.i, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %ie_len.2107.i) #5
  %ie_length.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %ie_length.i, align 4
  %call54.i = call fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %gen_idx.i, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end53.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge

if.end53.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_uap_parse_tail_ies.exit.thread16

if.end57.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %gen_idx.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %gen_idx.i, align 2
  %gen_idx58.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 124
  %29 = ptrtoint ptr %gen_idx58.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %gen_idx58.i, align 4
  br label %mwifiex_uap_parse_tail_ies.exit

mwifiex_uap_parse_tail_ies.exit.thread:           ; preds = %lor.lhs.false.i.mwifiex_uap_parse_tail_ies.exit.thread_crit_edge, %entry.mwifiex_uap_parse_tail_ies.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gen_idx.i) #5
  br label %if.end

mwifiex_uap_parse_tail_ies.exit.thread16:         ; preds = %if.end53.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge, %if.then33.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge, %sw.default.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge, %while.body.i.mwifiex_uap_parse_tail_ies.exit.thread16_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gen_idx.i) #5
  br label %cleanup

mwifiex_uap_parse_tail_ies.exit:                  ; preds = %if.end57.i, %if.end50.i.mwifiex_uap_parse_tail_ies.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gen_idx.i) #5
  br label %if.end

if.end:                                           ; preds = %mwifiex_uap_parse_tail_ies.exit, %mwifiex_uap_parse_tail_ies.exit.thread
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %beacon_idx.i) #5
  %30 = ptrtoint ptr %beacon_idx.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %beacon_idx.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pr_idx.i) #5
  %31 = ptrtoint ptr %pr_idx.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %pr_idx.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ar_idx.i) #5
  %32 = ptrtoint ptr %ar_idx.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %ar_idx.i, align 2
  %beacon_ies.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 2
  %33 = ptrtoint ptr %beacon_ies.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %beacon_ies.i, align 4
  %tobool.not.i5 = icmp eq ptr %34, null
  br i1 %tobool.not.i5, label %if.end.if.end.i7_crit_edge, label %land.lhs.true.i

if.end.if.end.i7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i7

land.lhs.true.i:                                  ; preds = %if.end
  %beacon_ies_len.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 12
  %35 = ptrtoint ptr %beacon_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %beacon_ies_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool1.not.i6 = icmp eq i32 %36, 0
  br i1 %tobool1.not.i6, label %land.lhs.true.i.if.end.i7_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i7_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i7

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i.i.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 4, ptr noundef nonnull %34, i32 noundef %36) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.mwifiex_update_vs_ie.exit.i_crit_edge, label %if.then2.i.i

if.then.i.mwifiex_update_vs_ie.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_vs_ie.exit.i

if.then2.i.i:                                     ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 262) #8
  %tobool4.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.then2.i.i.mwifiex_update_vs_ie.exit.i_crit_edge, label %if.end6.i.i

if.then2.i.i.mwifiex_update_vs_ie.exit.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_vs_ie.exit.i

if.end6.i.i:                                      ; preds = %if.then2.i.i
  %ie_length.i.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %ie_length.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ie_length.i.i, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #5
  %conv7.i.i = zext i16 %40 to i32
  %len.i.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %len.i.i, align 1
  %conv8.i.i = zext i8 %42 to i32
  %add.i.i = add nuw nsw i32 %conv7.i.i, %conv8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 254
  br i1 %cmp.i.i, label %if.end6.i.i.mwifiex_update_vs_ie.exit.i_crit_edge, label %if.end12.i.i

if.end6.i.i.mwifiex_update_vs_ie.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_vs_ie.exit.i

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ie_buffer.i.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i.i, i32 0, i32 3
  %add.ptr.i.i = getelementptr i8, ptr %ie_buffer.i.i, i32 %conv7.i.i
  %add17.i.i = add nuw nsw i32 %conv8.i.i, 2
  %43 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %call.i.i.i, i32 %add17.i.i)
  %44 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %len.i.i, align 1
  %conv20.i.i = zext i8 %45 to i16
  %add21.i.i = add nuw nsw i16 %conv20.i.i, 2
  %46 = ptrtoint ptr %ie_length.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ie_length.i.i, align 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #5
  %add.i.i.i = add i16 %add21.i.i, %48
  %49 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i) #5
  %50 = ptrtoint ptr %ie_length.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %ie_length.i.i, align 4
  %mgmt_subtype_mask.i.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %mgmt_subtype_mask.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %mgmt_subtype_mask.i.i, align 2
  %52 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1, ptr %call7.i.i.i.i, align 8
  br label %mwifiex_update_vs_ie.exit.i

mwifiex_update_vs_ie.exit.i:                      ; preds = %if.end12.i.i, %if.end6.i.i.mwifiex_update_vs_ie.exit.i_crit_edge, %if.then2.i.i.mwifiex_update_vs_ie.exit.i_crit_edge, %if.then.i.mwifiex_update_vs_ie.exit.i_crit_edge
  %beacon_ie.1.i = phi ptr [ null, %if.then2.i.i.mwifiex_update_vs_ie.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.end6.i.i.mwifiex_update_vs_ie.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.end12.i.i ], [ null, %if.then.i.mwifiex_update_vs_ie.exit.i_crit_edge ]
  %53 = ptrtoint ptr %beacon_ies.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %beacon_ies.i, align 4
  %55 = ptrtoint ptr %beacon_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %beacon_ies_len.i, align 4
  %call.i.i66.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 5271450, i32 noundef 9, ptr noundef %54, i32 noundef %56) #5
  %tobool.not.i67.i = icmp eq ptr %call.i.i66.i, null
  br i1 %tobool.not.i67.i, label %mwifiex_update_vs_ie.exit.i.if.end.i7_crit_edge, label %if.then.i69.i

mwifiex_update_vs_ie.exit.i.if.end.i7_crit_edge:  ; preds = %mwifiex_update_vs_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i7

if.then.i69.i:                                    ; preds = %mwifiex_update_vs_ie.exit.i
  %tobool1.not.i68.i = icmp eq ptr %beacon_ie.1.i, null
  br i1 %tobool1.not.i68.i, label %if.then2.i72.i, label %if.then.i69.i.if.end6.i80.i_crit_edge

if.then.i69.i.if.end6.i80.i_crit_edge:            ; preds = %if.then.i69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i80.i

if.then2.i72.i:                                   ; preds = %if.then.i69.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i70.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 262) #8
  %tobool4.not.i71.i = icmp eq ptr %call7.i.i.i70.i, null
  br i1 %tobool4.not.i71.i, label %if.then2.i72.i.if.end.i7_crit_edge, label %if.then2.i72.i.if.end6.i80.i_crit_edge

if.then2.i72.i.if.end6.i80.i_crit_edge:           ; preds = %if.then2.i72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i80.i

if.then2.i72.i.if.end.i7_crit_edge:               ; preds = %if.then2.i72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i7

if.end6.i80.i:                                    ; preds = %if.then2.i72.i.if.end6.i80.i_crit_edge, %if.then.i69.i.if.end6.i80.i_crit_edge
  %beacon_ie.2.i = phi ptr [ %call7.i.i.i70.i, %if.then2.i72.i.if.end6.i80.i_crit_edge ], [ %beacon_ie.1.i, %if.then.i69.i.if.end6.i80.i_crit_edge ]
  %ie_length.i74.i = getelementptr inbounds %struct.mwifiex_ie, ptr %beacon_ie.2.i, i32 0, i32 2
  %58 = ptrtoint ptr %ie_length.i74.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %ie_length.i74.i, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #5
  %conv7.i75.i = zext i16 %60 to i32
  %len.i76.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i.i66.i, i32 0, i32 1
  %61 = ptrtoint ptr %len.i76.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %len.i76.i, align 1
  %conv8.i77.i = zext i8 %62 to i32
  %add.i78.i = add nuw nsw i32 %conv7.i75.i, %conv8.i77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %add.i78.i)
  %cmp.i79.i = icmp ugt i32 %add.i78.i, 254
  br i1 %cmp.i79.i, label %if.end6.i80.i.if.end.i7_crit_edge, label %if.end12.i88.i

if.end6.i80.i.if.end.i7_crit_edge:                ; preds = %if.end6.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i7

if.end12.i88.i:                                   ; preds = %if.end6.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  %ie_buffer.i81.i = getelementptr inbounds %struct.mwifiex_ie, ptr %beacon_ie.2.i, i32 0, i32 3
  %add.ptr.i82.i = getelementptr i8, ptr %ie_buffer.i81.i, i32 %conv7.i75.i
  %add17.i83.i = add nuw nsw i32 %conv8.i77.i, 2
  %63 = call ptr @memcpy(ptr %add.ptr.i82.i, ptr %call.i.i66.i, i32 %add17.i83.i)
  %64 = ptrtoint ptr %len.i76.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %len.i76.i, align 1
  %conv20.i84.i = zext i8 %65 to i16
  %add21.i85.i = add nuw nsw i16 %conv20.i84.i, 2
  %66 = ptrtoint ptr %ie_length.i74.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %ie_length.i74.i, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #5
  %add.i.i86.i = add i16 %add21.i85.i, %68
  %69 = tail call i16 @llvm.bswap.i16(i16 %add.i.i86.i) #5
  %70 = ptrtoint ptr %ie_length.i74.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %ie_length.i74.i, align 1
  %mgmt_subtype_mask.i87.i = getelementptr inbounds %struct.mwifiex_ie, ptr %beacon_ie.2.i, i32 0, i32 1
  %71 = ptrtoint ptr %mgmt_subtype_mask.i87.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 1, ptr %mgmt_subtype_mask.i87.i, align 1
  %72 = ptrtoint ptr %beacon_ie.2.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 -1, ptr %beacon_ie.2.i, align 1
  br label %if.end.i7

if.end.i7:                                        ; preds = %if.end12.i88.i, %if.end6.i80.i.if.end.i7_crit_edge, %if.then2.i72.i.if.end.i7_crit_edge, %mwifiex_update_vs_ie.exit.i.if.end.i7_crit_edge, %land.lhs.true.i.if.end.i7_crit_edge, %if.end.if.end.i7_crit_edge
  %beacon_ie.4.i = phi ptr [ null, %if.end.if.end.i7_crit_edge ], [ null, %land.lhs.true.i.if.end.i7_crit_edge ], [ null, %if.then2.i72.i.if.end.i7_crit_edge ], [ %beacon_ie.2.i, %if.end6.i80.i.if.end.i7_crit_edge ], [ %beacon_ie.2.i, %if.end12.i88.i ], [ %beacon_ie.1.i, %mwifiex_update_vs_ie.exit.i.if.end.i7_crit_edge ]
  %proberesp_ies.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 3
  %73 = ptrtoint ptr %proberesp_ies.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %proberesp_ies.i, align 4
  %tobool7.not.i = icmp eq ptr %74, null
  br i1 %tobool7.not.i, label %if.end.i7.if.end17.i_crit_edge, label %land.lhs.true8.i

if.end.i7.if.end17.i_crit_edge:                   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

land.lhs.true8.i:                                 ; preds = %if.end.i7
  %proberesp_ies_len.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 13
  %75 = ptrtoint ptr %proberesp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %proberesp_ies_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool9.not.i = icmp eq i32 %76, 0
  br i1 %tobool9.not.i, label %land.lhs.true8.i.if.end17.i_crit_edge, label %if.then10.i

land.lhs.true8.i.if.end17.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  %call.i.i92.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 4, ptr noundef nonnull %74, i32 noundef %76) #5
  %tobool.not.i93.i = icmp eq ptr %call.i.i92.i, null
  br i1 %tobool.not.i93.i, label %if.then10.i.mwifiex_update_vs_ie.exit117.i_crit_edge, label %if.then2.i98.i

if.then10.i.mwifiex_update_vs_ie.exit117.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_vs_ie.exit117.i

if.then2.i98.i:                                   ; preds = %if.then10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i96.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3520, i32 noundef 262) #8
  %tobool4.not.i97.i = icmp eq ptr %call7.i.i.i96.i, null
  br i1 %tobool4.not.i97.i, label %if.then2.i98.i.mwifiex_update_vs_ie.exit117.i_crit_edge, label %if.end6.i106.i

if.then2.i98.i.mwifiex_update_vs_ie.exit117.i_crit_edge: ; preds = %if.then2.i98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_vs_ie.exit117.i

if.end6.i106.i:                                   ; preds = %if.then2.i98.i
  %ie_length.i100.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i96.i, i32 0, i32 2
  %78 = ptrtoint ptr %ie_length.i100.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ie_length.i100.i, align 4
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #5
  %conv7.i101.i = zext i16 %80 to i32
  %len.i102.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i.i92.i, i32 0, i32 1
  %81 = ptrtoint ptr %len.i102.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %len.i102.i, align 1
  %conv8.i103.i = zext i8 %82 to i32
  %add.i104.i = add nuw nsw i32 %conv7.i101.i, %conv8.i103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %add.i104.i)
  %cmp.i105.i = icmp ugt i32 %add.i104.i, 254
  br i1 %cmp.i105.i, label %if.end6.i106.i.mwifiex_update_vs_ie.exit117.i_crit_edge, label %if.end12.i114.i

if.end6.i106.i.mwifiex_update_vs_ie.exit117.i_crit_edge: ; preds = %if.end6.i106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_vs_ie.exit117.i

if.end12.i114.i:                                  ; preds = %if.end6.i106.i
  call void @__sanitizer_cov_trace_pc() #7
  %ie_buffer.i107.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i96.i, i32 0, i32 3
  %add.ptr.i108.i = getelementptr i8, ptr %ie_buffer.i107.i, i32 %conv7.i101.i
  %add17.i109.i = add nuw nsw i32 %conv8.i103.i, 2
  %83 = call ptr @memcpy(ptr %add.ptr.i108.i, ptr %call.i.i92.i, i32 %add17.i109.i)
  %84 = ptrtoint ptr %len.i102.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %len.i102.i, align 1
  %conv20.i110.i = zext i8 %85 to i16
  %add21.i111.i = add nuw nsw i16 %conv20.i110.i, 2
  %86 = ptrtoint ptr %ie_length.i100.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %ie_length.i100.i, align 4
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #5
  %add.i.i112.i = add i16 %add21.i111.i, %88
  %89 = tail call i16 @llvm.bswap.i16(i16 %add.i.i112.i) #5
  %90 = ptrtoint ptr %ie_length.i100.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %ie_length.i100.i, align 4
  %mgmt_subtype_mask.i113.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i96.i, i32 0, i32 1
  %91 = ptrtoint ptr %mgmt_subtype_mask.i113.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 8192, ptr %mgmt_subtype_mask.i113.i, align 2
  %92 = ptrtoint ptr %call7.i.i.i96.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %call7.i.i.i96.i, align 8
  br label %mwifiex_update_vs_ie.exit117.i

mwifiex_update_vs_ie.exit117.i:                   ; preds = %if.end12.i114.i, %if.end6.i106.i.mwifiex_update_vs_ie.exit117.i_crit_edge, %if.then2.i98.i.mwifiex_update_vs_ie.exit117.i_crit_edge, %if.then10.i.mwifiex_update_vs_ie.exit117.i_crit_edge
  %pr_ie.1.i = phi ptr [ null, %if.then2.i98.i.mwifiex_update_vs_ie.exit117.i_crit_edge ], [ %call7.i.i.i96.i, %if.end6.i106.i.mwifiex_update_vs_ie.exit117.i_crit_edge ], [ %call7.i.i.i96.i, %if.end12.i114.i ], [ null, %if.then10.i.mwifiex_update_vs_ie.exit117.i_crit_edge ]
  %93 = ptrtoint ptr %proberesp_ies.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %proberesp_ies.i, align 4
  %95 = ptrtoint ptr %proberesp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %proberesp_ies_len.i, align 4
  %call.i.i118.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 5271450, i32 noundef 9, ptr noundef %94, i32 noundef %96) #5
  %tobool.not.i119.i = icmp eq ptr %call.i.i118.i, null
  br i1 %tobool.not.i119.i, label %mwifiex_update_vs_ie.exit117.i.if.end17.i_crit_edge, label %if.then.i121.i

mwifiex_update_vs_ie.exit117.i.if.end17.i_crit_edge: ; preds = %mwifiex_update_vs_ie.exit117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then.i121.i:                                   ; preds = %mwifiex_update_vs_ie.exit117.i
  %tobool1.not.i120.i = icmp eq ptr %pr_ie.1.i, null
  br i1 %tobool1.not.i120.i, label %if.then2.i124.i, label %if.then.i121.i.if.end6.i132.i_crit_edge

if.then.i121.i.if.end6.i132.i_crit_edge:          ; preds = %if.then.i121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i132.i

if.then2.i124.i:                                  ; preds = %if.then.i121.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i122.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3520, i32 noundef 262) #8
  %tobool4.not.i123.i = icmp eq ptr %call7.i.i.i122.i, null
  br i1 %tobool4.not.i123.i, label %if.then2.i124.i.if.end17.i_crit_edge, label %if.then2.i124.i.if.end6.i132.i_crit_edge

if.then2.i124.i.if.end6.i132.i_crit_edge:         ; preds = %if.then2.i124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i132.i

if.then2.i124.i.if.end17.i_crit_edge:             ; preds = %if.then2.i124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.end6.i132.i:                                   ; preds = %if.then2.i124.i.if.end6.i132.i_crit_edge, %if.then.i121.i.if.end6.i132.i_crit_edge
  %pr_ie.2.i = phi ptr [ %call7.i.i.i122.i, %if.then2.i124.i.if.end6.i132.i_crit_edge ], [ %pr_ie.1.i, %if.then.i121.i.if.end6.i132.i_crit_edge ]
  %ie_length.i126.i = getelementptr inbounds %struct.mwifiex_ie, ptr %pr_ie.2.i, i32 0, i32 2
  %98 = ptrtoint ptr %ie_length.i126.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %ie_length.i126.i, align 1
  %100 = tail call i16 @llvm.bswap.i16(i16 %99) #5
  %conv7.i127.i = zext i16 %100 to i32
  %len.i128.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i.i118.i, i32 0, i32 1
  %101 = ptrtoint ptr %len.i128.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %len.i128.i, align 1
  %conv8.i129.i = zext i8 %102 to i32
  %add.i130.i = add nuw nsw i32 %conv7.i127.i, %conv8.i129.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %add.i130.i)
  %cmp.i131.i = icmp ugt i32 %add.i130.i, 254
  br i1 %cmp.i131.i, label %if.end6.i132.i.if.end17.i_crit_edge, label %if.end12.i140.i

if.end6.i132.i.if.end17.i_crit_edge:              ; preds = %if.end6.i132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.end12.i140.i:                                  ; preds = %if.end6.i132.i
  call void @__sanitizer_cov_trace_pc() #7
  %ie_buffer.i133.i = getelementptr inbounds %struct.mwifiex_ie, ptr %pr_ie.2.i, i32 0, i32 3
  %add.ptr.i134.i = getelementptr i8, ptr %ie_buffer.i133.i, i32 %conv7.i127.i
  %add17.i135.i = add nuw nsw i32 %conv8.i129.i, 2
  %103 = call ptr @memcpy(ptr %add.ptr.i134.i, ptr %call.i.i118.i, i32 %add17.i135.i)
  %104 = ptrtoint ptr %len.i128.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %len.i128.i, align 1
  %conv20.i136.i = zext i8 %105 to i16
  %add21.i137.i = add nuw nsw i16 %conv20.i136.i, 2
  %106 = ptrtoint ptr %ie_length.i126.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %ie_length.i126.i, align 1
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #5
  %add.i.i138.i = add i16 %add21.i137.i, %108
  %109 = tail call i16 @llvm.bswap.i16(i16 %add.i.i138.i) #5
  %110 = ptrtoint ptr %ie_length.i126.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %ie_length.i126.i, align 1
  %mgmt_subtype_mask.i139.i = getelementptr inbounds %struct.mwifiex_ie, ptr %pr_ie.2.i, i32 0, i32 1
  %111 = ptrtoint ptr %mgmt_subtype_mask.i139.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 8192, ptr %mgmt_subtype_mask.i139.i, align 1
  %112 = ptrtoint ptr %pr_ie.2.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 -1, ptr %pr_ie.2.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end12.i140.i, %if.end6.i132.i.if.end17.i_crit_edge, %if.then2.i124.i.if.end17.i_crit_edge, %mwifiex_update_vs_ie.exit117.i.if.end17.i_crit_edge, %land.lhs.true8.i.if.end17.i_crit_edge, %if.end.i7.if.end17.i_crit_edge
  %pr_ie.4.i = phi ptr [ null, %if.end.i7.if.end17.i_crit_edge ], [ null, %land.lhs.true8.i.if.end17.i_crit_edge ], [ null, %if.then2.i124.i.if.end17.i_crit_edge ], [ %pr_ie.2.i, %if.end6.i132.i.if.end17.i_crit_edge ], [ %pr_ie.2.i, %if.end12.i140.i ], [ %pr_ie.1.i, %mwifiex_update_vs_ie.exit117.i.if.end17.i_crit_edge ]
  %assocresp_ies.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 4
  %113 = ptrtoint ptr %assocresp_ies.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %assocresp_ies.i, align 4
  %tobool18.not.i = icmp eq ptr %114, null
  br i1 %tobool18.not.i, label %if.end17.i.if.end28.i_crit_edge, label %land.lhs.true19.i

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

land.lhs.true19.i:                                ; preds = %if.end17.i
  %assocresp_ies_len.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 14
  %115 = ptrtoint ptr %assocresp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %assocresp_ies_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool20.not.i = icmp eq i32 %116, 0
  br i1 %tobool20.not.i, label %land.lhs.true19.i.if.end28.i_crit_edge, label %if.then21.i

land.lhs.true19.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then21.i:                                      ; preds = %land.lhs.true19.i
  %call.i.i144.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 4, ptr noundef nonnull %114, i32 noundef %116) #5
  %tobool.not.i145.i = icmp eq ptr %call.i.i144.i, null
  br i1 %tobool.not.i145.i, label %if.then21.i.mwifiex_update_vs_ie.exit169.i_crit_edge, label %if.then2.i150.i

if.then21.i.mwifiex_update_vs_ie.exit169.i_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_vs_ie.exit169.i

if.then2.i150.i:                                  ; preds = %if.then21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %117 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i148.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3520, i32 noundef 262) #8
  %tobool4.not.i149.i = icmp eq ptr %call7.i.i.i148.i, null
  br i1 %tobool4.not.i149.i, label %if.then2.i150.i.mwifiex_update_vs_ie.exit169.i_crit_edge, label %if.end6.i158.i

if.then2.i150.i.mwifiex_update_vs_ie.exit169.i_crit_edge: ; preds = %if.then2.i150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_vs_ie.exit169.i

if.end6.i158.i:                                   ; preds = %if.then2.i150.i
  %ie_length.i152.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i148.i, i32 0, i32 2
  %118 = ptrtoint ptr %ie_length.i152.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %ie_length.i152.i, align 4
  %120 = tail call i16 @llvm.bswap.i16(i16 %119) #5
  %conv7.i153.i = zext i16 %120 to i32
  %len.i154.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i.i144.i, i32 0, i32 1
  %121 = ptrtoint ptr %len.i154.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %len.i154.i, align 1
  %conv8.i155.i = zext i8 %122 to i32
  %add.i156.i = add nuw nsw i32 %conv7.i153.i, %conv8.i155.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %add.i156.i)
  %cmp.i157.i = icmp ugt i32 %add.i156.i, 254
  br i1 %cmp.i157.i, label %if.end6.i158.i.mwifiex_update_vs_ie.exit169.i_crit_edge, label %if.end12.i166.i

if.end6.i158.i.mwifiex_update_vs_ie.exit169.i_crit_edge: ; preds = %if.end6.i158.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_vs_ie.exit169.i

if.end12.i166.i:                                  ; preds = %if.end6.i158.i
  call void @__sanitizer_cov_trace_pc() #7
  %ie_buffer.i159.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i148.i, i32 0, i32 3
  %add.ptr.i160.i = getelementptr i8, ptr %ie_buffer.i159.i, i32 %conv7.i153.i
  %add17.i161.i = add nuw nsw i32 %conv8.i155.i, 2
  %123 = call ptr @memcpy(ptr %add.ptr.i160.i, ptr %call.i.i144.i, i32 %add17.i161.i)
  %124 = ptrtoint ptr %len.i154.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %len.i154.i, align 1
  %conv20.i162.i = zext i8 %125 to i16
  %add21.i163.i = add nuw nsw i16 %conv20.i162.i, 2
  %126 = ptrtoint ptr %ie_length.i152.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %ie_length.i152.i, align 4
  %128 = tail call i16 @llvm.bswap.i16(i16 %127) #5
  %add.i.i164.i = add i16 %add21.i163.i, %128
  %129 = tail call i16 @llvm.bswap.i16(i16 %add.i.i164.i) #5
  %130 = ptrtoint ptr %ie_length.i152.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %ie_length.i152.i, align 4
  %mgmt_subtype_mask.i165.i = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i.i.i148.i, i32 0, i32 1
  %131 = ptrtoint ptr %mgmt_subtype_mask.i165.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 2560, ptr %mgmt_subtype_mask.i165.i, align 2
  %132 = ptrtoint ptr %call7.i.i.i148.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 -1, ptr %call7.i.i.i148.i, align 8
  br label %mwifiex_update_vs_ie.exit169.i

mwifiex_update_vs_ie.exit169.i:                   ; preds = %if.end12.i166.i, %if.end6.i158.i.mwifiex_update_vs_ie.exit169.i_crit_edge, %if.then2.i150.i.mwifiex_update_vs_ie.exit169.i_crit_edge, %if.then21.i.mwifiex_update_vs_ie.exit169.i_crit_edge
  %ar_ie.1.i = phi ptr [ null, %if.then2.i150.i.mwifiex_update_vs_ie.exit169.i_crit_edge ], [ %call7.i.i.i148.i, %if.end6.i158.i.mwifiex_update_vs_ie.exit169.i_crit_edge ], [ %call7.i.i.i148.i, %if.end12.i166.i ], [ null, %if.then21.i.mwifiex_update_vs_ie.exit169.i_crit_edge ]
  %133 = ptrtoint ptr %assocresp_ies.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %assocresp_ies.i, align 4
  %135 = ptrtoint ptr %assocresp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %assocresp_ies_len.i, align 4
  %call.i.i170.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 5271450, i32 noundef 9, ptr noundef %134, i32 noundef %136) #5
  %tobool.not.i171.i = icmp eq ptr %call.i.i170.i, null
  br i1 %tobool.not.i171.i, label %mwifiex_update_vs_ie.exit169.i.if.end28.i_crit_edge, label %if.then.i173.i

mwifiex_update_vs_ie.exit169.i.if.end28.i_crit_edge: ; preds = %mwifiex_update_vs_ie.exit169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then.i173.i:                                   ; preds = %mwifiex_update_vs_ie.exit169.i
  %tobool1.not.i172.i = icmp eq ptr %ar_ie.1.i, null
  br i1 %tobool1.not.i172.i, label %if.then2.i176.i, label %if.then.i173.i.if.end6.i184.i_crit_edge

if.then.i173.i.if.end6.i184.i_crit_edge:          ; preds = %if.then.i173.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i184.i

if.then2.i176.i:                                  ; preds = %if.then.i173.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %137 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i174.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %137, i32 noundef 3520, i32 noundef 262) #8
  %tobool4.not.i175.i = icmp eq ptr %call7.i.i.i174.i, null
  br i1 %tobool4.not.i175.i, label %if.then2.i176.i.if.end28.i_crit_edge, label %if.then2.i176.i.if.end6.i184.i_crit_edge

if.then2.i176.i.if.end6.i184.i_crit_edge:         ; preds = %if.then2.i176.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i184.i

if.then2.i176.i.if.end28.i_crit_edge:             ; preds = %if.then2.i176.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.end6.i184.i:                                   ; preds = %if.then2.i176.i.if.end6.i184.i_crit_edge, %if.then.i173.i.if.end6.i184.i_crit_edge
  %ar_ie.2.i = phi ptr [ %call7.i.i.i174.i, %if.then2.i176.i.if.end6.i184.i_crit_edge ], [ %ar_ie.1.i, %if.then.i173.i.if.end6.i184.i_crit_edge ]
  %ie_length.i178.i = getelementptr inbounds %struct.mwifiex_ie, ptr %ar_ie.2.i, i32 0, i32 2
  %138 = ptrtoint ptr %ie_length.i178.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %ie_length.i178.i, align 1
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #5
  %conv7.i179.i = zext i16 %140 to i32
  %len.i180.i = getelementptr inbounds %struct.ieee_types_header, ptr %call.i.i170.i, i32 0, i32 1
  %141 = ptrtoint ptr %len.i180.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %len.i180.i, align 1
  %conv8.i181.i = zext i8 %142 to i32
  %add.i182.i = add nuw nsw i32 %conv7.i179.i, %conv8.i181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %add.i182.i)
  %cmp.i183.i = icmp ugt i32 %add.i182.i, 254
  br i1 %cmp.i183.i, label %if.end6.i184.i.if.then33.i9_crit_edge, label %if.end12.i192.i

if.end6.i184.i.if.then33.i9_crit_edge:            ; preds = %if.end6.i184.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i9

if.end12.i192.i:                                  ; preds = %if.end6.i184.i
  call void @__sanitizer_cov_trace_pc() #7
  %ie_buffer.i185.i = getelementptr inbounds %struct.mwifiex_ie, ptr %ar_ie.2.i, i32 0, i32 3
  %add.ptr.i186.i = getelementptr i8, ptr %ie_buffer.i185.i, i32 %conv7.i179.i
  %add17.i187.i = add nuw nsw i32 %conv8.i181.i, 2
  %143 = call ptr @memcpy(ptr %add.ptr.i186.i, ptr %call.i.i170.i, i32 %add17.i187.i)
  %144 = ptrtoint ptr %len.i180.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %len.i180.i, align 1
  %conv20.i188.i = zext i8 %145 to i16
  %add21.i189.i = add nuw nsw i16 %conv20.i188.i, 2
  %146 = ptrtoint ptr %ie_length.i178.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %ie_length.i178.i, align 1
  %148 = tail call i16 @llvm.bswap.i16(i16 %147) #5
  %add.i.i190.i = add i16 %add21.i189.i, %148
  %149 = tail call i16 @llvm.bswap.i16(i16 %add.i.i190.i) #5
  %150 = ptrtoint ptr %ie_length.i178.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 2)
  store i16 %149, ptr %ie_length.i178.i, align 1
  %mgmt_subtype_mask.i191.i = getelementptr inbounds %struct.mwifiex_ie, ptr %ar_ie.2.i, i32 0, i32 1
  %151 = ptrtoint ptr %mgmt_subtype_mask.i191.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 2560, ptr %mgmt_subtype_mask.i191.i, align 1
  %152 = ptrtoint ptr %ar_ie.2.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 -1, ptr %ar_ie.2.i, align 1
  br label %if.then33.i9

if.end28.i:                                       ; preds = %if.then2.i176.i.if.end28.i_crit_edge, %mwifiex_update_vs_ie.exit169.i.if.end28.i_crit_edge, %land.lhs.true19.i.if.end28.i_crit_edge, %if.end17.i.if.end28.i_crit_edge
  %ar_ie.4.i = phi ptr [ null, %if.end17.i.if.end28.i_crit_edge ], [ null, %land.lhs.true19.i.if.end28.i_crit_edge ], [ null, %if.then2.i176.i.if.end28.i_crit_edge ], [ %ar_ie.1.i, %mwifiex_update_vs_ie.exit169.i.if.end28.i_crit_edge ]
  %tobool29.not.i = icmp eq ptr %beacon_ie.4.i, null
  %tobool30.not.i = icmp eq ptr %pr_ie.4.i, null
  %or.cond.i = select i1 %tobool29.not.i, i1 %tobool30.not.i, i1 false
  %tobool32.not.i8 = icmp eq ptr %ar_ie.4.i, null
  %or.cond214.i = select i1 %or.cond.i, i1 %tobool32.not.i8, i1 false
  br i1 %or.cond214.i, label %if.end28.i.if.end38.i_crit_edge, label %if.end28.i.if.then33.i9_crit_edge

if.end28.i.if.then33.i9_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i9

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then33.i9:                                     ; preds = %if.end28.i.if.then33.i9_crit_edge, %if.end12.i192.i, %if.end6.i184.i.if.then33.i9_crit_edge
  %ar_ie.4222.i = phi ptr [ %ar_ie.4.i, %if.end28.i.if.then33.i9_crit_edge ], [ %ar_ie.2.i, %if.end6.i184.i.if.then33.i9_crit_edge ], [ %ar_ie.2.i, %if.end12.i192.i ]
  %call34.i = call fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %priv, ptr noundef %beacon_ie.4.i, ptr noundef nonnull %beacon_idx.i, ptr noundef %pr_ie.4.i, ptr noundef nonnull %pr_idx.i, ptr noundef %ar_ie.4222.i, ptr noundef nonnull %ar_idx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i9.if.end38.i_crit_edge, label %if.then33.i9.mwifiex_set_mgmt_beacon_data_ies.exit_crit_edge

if.then33.i9.mwifiex_set_mgmt_beacon_data_ies.exit_crit_edge: ; preds = %if.then33.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_set_mgmt_beacon_data_ies.exit

if.then33.i9.if.end38.i_crit_edge:                ; preds = %if.then33.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then33.i9.if.end38.i_crit_edge, %if.end28.i.if.end38.i_crit_edge
  %ar_ie.4223.i = phi ptr [ null, %if.end28.i.if.end38.i_crit_edge ], [ %ar_ie.4222.i, %if.then33.i9.if.end38.i_crit_edge ]
  %153 = ptrtoint ptr %beacon_idx.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %beacon_idx.i, align 2
  %beacon_idx39.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 121
  %155 = ptrtoint ptr %beacon_idx39.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %beacon_idx39.i, align 2
  %156 = ptrtoint ptr %pr_idx.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %pr_idx.i, align 2
  %proberesp_idx.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 122
  %158 = ptrtoint ptr %proberesp_idx.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %proberesp_idx.i, align 8
  %159 = ptrtoint ptr %ar_idx.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %ar_idx.i, align 2
  %assocresp_idx.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 123
  %161 = ptrtoint ptr %assocresp_idx.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %assocresp_idx.i, align 2
  br label %mwifiex_set_mgmt_beacon_data_ies.exit

mwifiex_set_mgmt_beacon_data_ies.exit:            ; preds = %if.end38.i, %if.then33.i9.mwifiex_set_mgmt_beacon_data_ies.exit_crit_edge
  %ar_ie.4221.i = phi ptr [ %ar_ie.4222.i, %if.then33.i9.mwifiex_set_mgmt_beacon_data_ies.exit_crit_edge ], [ %ar_ie.4223.i, %if.end38.i ]
  %ret.1.i = phi i32 [ %call34.i, %if.then33.i9.mwifiex_set_mgmt_beacon_data_ies.exit_crit_edge ], [ 0, %if.end38.i ]
  tail call void @kfree(ptr noundef %beacon_ie.4.i) #5
  tail call void @kfree(ptr noundef %pr_ie.4.i) #5
  tail call void @kfree(ptr noundef %ar_ie.4221.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ar_idx.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pr_idx.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %beacon_idx.i) #5
  br label %cleanup

cleanup:                                          ; preds = %mwifiex_set_mgmt_beacon_data_ies.exit, %mwifiex_uap_parse_tail_ies.exit.thread16, %mwifiex_uap_parse_tail_ies.exit.thread12
  %retval.0 = phi i32 [ %ret.1.i, %mwifiex_set_mgmt_beacon_data_ies.exit ], [ -12, %mwifiex_uap_parse_tail_ies.exit.thread12 ], [ -22, %mwifiex_uap_parse_tail_ies.exit.thread16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_del_mgmt_ies(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gen_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 124
  %0 = ptrtoint ptr %gen_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %gen_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.not = icmp eq i16 %1, -1
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 262) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %3 = ptrtoint ptr %gen_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %gen_idx, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %call7.i, align 8
  %mgmt_subtype_mask = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %mgmt_subtype_mask to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %mgmt_subtype_mask, align 2
  %ie_length = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %ie_length to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %ie_length, align 4
  %proberesp_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 122
  %assocresp_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 123
  %call5 = tail call fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %priv, ptr noundef nonnull %call7.i, ptr noundef %gen_idx, ptr noundef null, ptr noundef %proberesp_idx, ptr noundef null, ptr noundef %assocresp_idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %gen_idx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %gen_idx, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %entry.if.end10_crit_edge
  %gen_ie.0 = phi ptr [ %call7.i, %if.end8 ], [ null, %entry.if.end10_crit_edge ]
  %beacon_idx = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 121
  %10 = ptrtoint ptr %beacon_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %beacon_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp12.not = icmp eq i16 %11, -1
  br i1 %cmp12.not, label %if.end10.if.end23_crit_edge, label %if.then14

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then14:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i106 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 262) #8
  %tobool16.not = icmp eq ptr %call7.i106, null
  br i1 %tobool16.not, label %if.then14.done_crit_edge, label %if.end18

if.then14.done_crit_edge:                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %beacon_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %beacon_idx, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %call7.i106 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %call7.i106, align 8
  %mgmt_subtype_mask21 = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i106, i32 0, i32 1
  %17 = ptrtoint ptr %mgmt_subtype_mask21 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %mgmt_subtype_mask21, align 2
  %ie_length22 = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i106, i32 0, i32 2
  %18 = ptrtoint ptr %ie_length22 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %ie_length22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.end10.if.end23_crit_edge
  %beacon_ie.0 = phi ptr [ %call7.i106, %if.end18 ], [ null, %if.end10.if.end23_crit_edge ]
  %proberesp_idx24 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 122
  %19 = ptrtoint ptr %proberesp_idx24 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %proberesp_idx24, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp26.not = icmp eq i16 %20, -1
  br i1 %cmp26.not, label %if.end23.if.end37_crit_edge, label %if.then28

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then28:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i107 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 262) #8
  %tobool30.not = icmp eq ptr %call7.i107, null
  br i1 %tobool30.not, label %if.then28.done_crit_edge, label %if.end32

if.then28.done_crit_edge:                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end32:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %proberesp_idx24 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %proberesp_idx24, align 8
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = ptrtoint ptr %call7.i107 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %call7.i107, align 8
  %mgmt_subtype_mask35 = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i107, i32 0, i32 1
  %26 = ptrtoint ptr %mgmt_subtype_mask35 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %mgmt_subtype_mask35, align 2
  %ie_length36 = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i107, i32 0, i32 2
  %27 = ptrtoint ptr %ie_length36 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %ie_length36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end32, %if.end23.if.end37_crit_edge
  %pr_ie.0 = phi ptr [ %call7.i107, %if.end32 ], [ null, %if.end23.if.end37_crit_edge ]
  %assocresp_idx38 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 123
  %28 = ptrtoint ptr %assocresp_idx38 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %assocresp_idx38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %29)
  %cmp40.not = icmp eq i16 %29, -1
  br i1 %cmp40.not, label %if.end51, label %if.then42

if.then42:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i108 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 262) #8
  %tobool44.not = icmp eq ptr %call7.i108, null
  br i1 %tobool44.not, label %if.then42.done_crit_edge, label %if.end51.thread

if.then42.done_crit_edge:                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end51.thread:                                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %assocresp_idx38 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %assocresp_idx38, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %34 = ptrtoint ptr %call7.i108 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %call7.i108, align 8
  %mgmt_subtype_mask49 = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i108, i32 0, i32 1
  %35 = ptrtoint ptr %mgmt_subtype_mask49 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %mgmt_subtype_mask49, align 2
  %ie_length50 = getelementptr inbounds %struct.mwifiex_ie, ptr %call7.i108, i32 0, i32 2
  %36 = ptrtoint ptr %ie_length50 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %ie_length50, align 4
  br label %if.then56

if.end51:                                         ; preds = %if.end37
  %tobool52.not = icmp eq ptr %beacon_ie.0, null
  %tobool53.not = icmp eq ptr %pr_ie.0, null
  %or.cond = select i1 %tobool52.not, i1 %tobool53.not, i1 false
  br i1 %or.cond, label %if.end51.done_crit_edge, label %if.end51.if.then56_crit_edge

if.end51.if.then56_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then56

if.end51.done_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then56:                                        ; preds = %if.end51.if.then56_crit_edge, %if.end51.thread
  %ar_ie.0115 = phi ptr [ %call7.i108, %if.end51.thread ], [ null, %if.end51.if.then56_crit_edge ]
  %call60 = tail call fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %priv, ptr noundef %beacon_ie.0, ptr noundef %beacon_idx, ptr noundef %pr_ie.0, ptr noundef %proberesp_idx24, ptr noundef %ar_ie.0115, ptr noundef %assocresp_idx38)
  br label %done

done:                                             ; preds = %if.then56, %if.end51.done_crit_edge, %if.then42.done_crit_edge, %if.then28.done_crit_edge, %if.then14.done_crit_edge, %if.end.done_crit_edge
  %beacon_ie.1 = phi ptr [ %beacon_ie.0, %if.then56 ], [ null, %if.end.done_crit_edge ], [ null, %if.then14.done_crit_edge ], [ %beacon_ie.0, %if.then28.done_crit_edge ], [ %beacon_ie.0, %if.then42.done_crit_edge ], [ null, %if.end51.done_crit_edge ]
  %pr_ie.1 = phi ptr [ %pr_ie.0, %if.then56 ], [ null, %if.end.done_crit_edge ], [ null, %if.then14.done_crit_edge ], [ null, %if.then28.done_crit_edge ], [ %pr_ie.0, %if.then42.done_crit_edge ], [ null, %if.end51.done_crit_edge ]
  %ar_ie.1 = phi ptr [ %ar_ie.0115, %if.then56 ], [ null, %if.end.done_crit_edge ], [ null, %if.then14.done_crit_edge ], [ null, %if.then28.done_crit_edge ], [ null, %if.then42.done_crit_edge ], [ null, %if.end51.done_crit_edge ]
  %gen_ie.1 = phi ptr [ %gen_ie.0, %if.then56 ], [ %call7.i, %if.end.done_crit_edge ], [ %gen_ie.0, %if.then14.done_crit_edge ], [ %gen_ie.0, %if.then28.done_crit_edge ], [ %gen_ie.0, %if.then42.done_crit_edge ], [ %gen_ie.0, %if.end51.done_crit_edge ]
  %ret.0 = phi i32 [ %call60, %if.then56 ], [ -1, %if.end.done_crit_edge ], [ -12, %if.then14.done_crit_edge ], [ -12, %if.then28.done_crit_edge ], [ -12, %if.then42.done_crit_edge ], [ 0, %if.end51.done_crit_edge ]
  tail call void @kfree(ptr noundef %gen_ie.1) #5
  tail call void @kfree(ptr noundef %beacon_ie.1) #5
  tail call void @kfree(ptr noundef %pr_ie.1) #5
  tail call void @kfree(ptr noundef %ar_ie.1) #5
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %priv, ptr noundef readonly %beacon_ie, ptr nocapture noundef %beacon_idx, ptr noundef readonly %pr_ie, ptr nocapture noundef writeonly %probe_idx, ptr noundef readonly %ar_ie, ptr nocapture noundef writeonly %assoc_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4196) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 26881, ptr %call7.i.i, align 8
  %ie_list = getelementptr inbounds %struct.mwifiex_ie_list, ptr %call7.i.i, i32 0, i32 2
  %tobool1.not = icmp eq ptr %beacon_ie, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ie_length = getelementptr inbounds %struct.mwifiex_ie, ptr %beacon_ie, i32 0, i32 2
  %2 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %ie_length, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %add = add i16 %4, 6
  %conv4 = zext i16 %add to i32
  %5 = call ptr @memcpy(ptr %ie_list, ptr %beacon_ie, i32 %conv4)
  %add.ptr = getelementptr i8, ptr %ie_list, i32 %conv4
  %len6 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %len6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len6, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #5
  %add.i = add i16 %8, %add
  %9 = tail call i16 @llvm.bswap.i16(i16 %add.i) #5
  %10 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %len6, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %pos.0 = phi ptr [ %add.ptr, %if.then2 ], [ %ie_list, %if.end.if.end7_crit_edge ]
  %tobool8.not = icmp eq ptr %pr_ie, null
  br i1 %tobool8.not, label %if.end7.if.end18_crit_edge, label %if.then9

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %ie_length10 = getelementptr inbounds %struct.mwifiex_ie, ptr %pr_ie, i32 0, i32 2
  %11 = ptrtoint ptr %ie_length10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %ie_length10, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %add12 = add i16 %13, 6
  %conv14 = zext i16 %add12 to i32
  %14 = call ptr @memcpy(ptr %pos.0, ptr %pr_ie, i32 %conv14)
  %add.ptr16 = getelementptr i8, ptr %pos.0, i32 %conv14
  %len17 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len17, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #5
  %add.i113 = add i16 %17, %add12
  %18 = tail call i16 @llvm.bswap.i16(i16 %add.i113) #5
  %19 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %len17, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end7.if.end18_crit_edge
  %pos.1 = phi ptr [ %add.ptr16, %if.then9 ], [ %pos.0, %if.end7.if.end18_crit_edge ]
  %tobool19.not = icmp eq ptr %ar_ie, null
  br i1 %tobool19.not, label %if.end18.if.end29_crit_edge, label %if.then20

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %ie_length21 = getelementptr inbounds %struct.mwifiex_ie, ptr %ar_ie, i32 0, i32 2
  %20 = ptrtoint ptr %ie_length21 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %ie_length21, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %add23 = add i16 %22, 6
  %conv25 = zext i16 %add23 to i32
  %23 = call ptr @memcpy(ptr %pos.1, ptr %ar_ie, i32 %conv25)
  %len28 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %len28 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len28, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #5
  %add.i114 = add i16 %26, %add23
  %27 = tail call i16 @llvm.bswap.i16(i16 %add.i114) #5
  %28 = ptrtoint ptr %len28 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %len28, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %if.end18.if.end29_crit_edge
  %len.i = getelementptr inbounds %struct.mwifiex_ie_list, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #5
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %31)
  %cmp131.i = icmp ugt i16 %31, 3
  br i1 %cmp131.i, label %if.end29.while.body.i_crit_edge, label %if.end29.while.end.i_crit_edge

if.end29.while.end.i_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end29.while.body.i_crit_edge:                  ; preds = %if.end29
  br label %while.body.i

while.body.i:                                     ; preds = %if.end54.i.while.body.i_crit_edge, %if.end29.while.body.i_crit_edge
  %input_len.0133.i = phi i16 [ %conv66.i, %if.end54.i.while.body.i_crit_edge ], [ %31, %if.end29.while.body.i_crit_edge ]
  %travel_len.0132.i = phi i32 [ %add6.i, %if.end54.i.while.body.i_crit_edge ], [ 4, %if.end29.while.body.i_crit_edge ]
  %conv.i = sext i16 %input_len.0133.i to i32
  %conv3.i = and i32 %travel_len.0132.i, 65535
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 %conv3.i
  %ie_length.i = getelementptr inbounds %struct.mwifiex_ie, ptr %add.ptr.i, i32 0, i32 2
  %33 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %ie_length.i, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #5
  %conv4.i = sext i16 %35 to i32
  %add.i115 = add nsw i32 %conv4.i, 6
  %add6.i = add nsw i32 %add.i115, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i115, i32 %conv.i)
  %cmp11.i = icmp ugt i32 %add.i115, %conv.i
  br i1 %cmp11.i, label %while.body.i.mwifiex_update_autoindex_ies.exit_crit_edge, label %if.end.i

while.body.i.mwifiex_update_autoindex_ies.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_autoindex_ies.exit

if.end.i:                                         ; preds = %while.body.i
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %add.ptr.i, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #5
  %mgmt_subtype_mask.i = getelementptr inbounds %struct.mwifiex_ie, ptr %add.ptr.i, i32 0, i32 1
  %39 = ptrtoint ptr %mgmt_subtype_mask.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %mgmt_subtype_mask.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp14.i = icmp eq i16 %37, -1
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end.i
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %max_mgmt_ie_index.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %42, i32 0, i32 125
  %43 = ptrtoint ptr %max_mgmt_ie_index.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %max_mgmt_ie_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp46.not.i.i = icmp eq i16 %44, 0
  br i1 %cmp46.not.i.i, label %if.then16.i.mwifiex_update_autoindex_ies.exit_crit_edge, label %for.body.lr.ph.i.i

if.then16.i.mwifiex_update_autoindex_ies.exit_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_autoindex_ies.exit

for.body.lr.ph.i.i:                               ; preds = %if.then16.i
  %priv_num.i.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %42, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %35)
  %cmp12.i.i = icmp ugt i16 %35, 256
  %wide.trip.count.i.i = zext i16 %44 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %mgmt_subtype_mask.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 120, i32 %indvars.iv.i.i, i32 1
  %45 = ptrtoint ptr %mgmt_subtype_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mgmt_subtype_mask.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %46)
  %cmp4.i.i = icmp eq i16 %46, -1
  br i1 %cmp4.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %40)
  %cmp8.i.i = icmp eq i16 %46, %40
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.end16.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  br i1 %cmp12.i.i, label %if.then10.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i.if.end18.i_crit_edge

if.then10.i.i.if.end18.i_crit_edge:               ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then10.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end16.i.i:                                     ; preds = %if.end.i.i
  %ie_length20.i.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 120, i32 %indvars.iv.i.i, i32 2
  %47 = ptrtoint ptr %ie_length20.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ie_length20.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i.i, label %if.then21.i.i, label %if.end16.i.i.for.inc.i.i_crit_edge

if.end16.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.then21.i.i:                                    ; preds = %if.end16.i.i
  %49 = ptrtoint ptr %priv_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %priv_num.i.i.i, align 4
  %conv.i.i.i = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp23.not.i.i.i = icmp eq i8 %50, 0
  br i1 %cmp23.not.i.i.i, label %if.then21.i.i.if.end18.i_crit_edge, label %if.then21.i.i.for.body.i.i.i_crit_edge

if.then21.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then21.i.i
  br label %for.body.i.i.i

if.then21.i.i.if.end18.i_crit_edge:               ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then21.i.i.for.body.i.i.i_crit_edge
  %i.024.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then21.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.mwifiex_adapter, ptr %42, i32 0, i32 4, i32 %i.024.i.i.i
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp4.not.i.i.i = icmp eq ptr %52, %priv
  br i1 %cmp4.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %mgmt_subtype_mask.i.i.i = getelementptr %struct.mwifiex_private, ptr %52, i32 0, i32 120, i32 %indvars.iv.i.i, i32 1
  %53 = ptrtoint ptr %mgmt_subtype_mask.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %mgmt_subtype_mask.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i.i.i = icmp eq i16 %54, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i
  %ie_length.i.i.i = getelementptr %struct.mwifiex_private, ptr %52, i32 0, i32 120, i32 %indvars.iv.i.i, i32 2
  %55 = ptrtoint ptr %ie_length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %ie_length.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool11.not.i.i.i = icmp eq i16 %56, 0
  br i1 %tobool11.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %if.then.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.024.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end18.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.inc.i.i.i.if.end18.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %if.end16.i.i.for.inc.i.i_crit_edge, %if.then10.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.mwifiex_update_autoindex_ies.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.mwifiex_update_autoindex_ies.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_autoindex_ies.exit

if.end18.i:                                       ; preds = %for.inc.i.i.i.if.end18.i_crit_edge, %if.then21.i.i.if.end18.i_crit_edge, %if.then10.i.i.if.end18.i_crit_edge
  %i.04753.i.i = trunc i32 %indvars.iv.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %i.04753.i.i)
  %cmp20.i = icmp eq i16 %i.04753.i.i, -1
  br i1 %cmp20.i, label %if.end18.i.mwifiex_update_autoindex_ies.exit_crit_edge, label %if.end23.i

if.end18.i.mwifiex_update_autoindex_ies.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_autoindex_ies.exit

if.end23.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i = and i32 %indvars.iv.i.i, 65535
  %ie_buffer.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 120, i32 %conv19.i, i32 3
  %ie_buffer24.i = getelementptr inbounds %struct.mwifiex_ie, ptr %add.ptr.i, i32 0, i32 3
  %conv26.i = zext i16 %35 to i32
  %57 = call ptr @memcpy(ptr %ie_buffer.i, ptr %ie_buffer24.i, i32 %conv26.i)
  %ie_length31.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 120, i32 %conv19.i, i32 2
  %58 = ptrtoint ptr %ie_length31.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %34, ptr %ie_length31.i, align 2
  %59 = tail call i16 @llvm.bswap.i16(i16 %i.04753.i.i) #5
  %arrayidx34.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 120, i32 %conv19.i
  %60 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %arrayidx34.i, align 2
  %mgmt_subtype_mask39.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 120, i32 %conv19.i, i32 1
  %61 = ptrtoint ptr %mgmt_subtype_mask39.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %40, ptr %mgmt_subtype_mask39.i, align 2
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %59, ptr %add.ptr.i, align 1
  br label %if.end54.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp42.not.i = icmp eq i16 %40, 0
  br i1 %cmp42.not.i, label %if.end45.i, label %if.else.i.mwifiex_update_autoindex_ies.exit_crit_edge

if.else.i.mwifiex_update_autoindex_ies.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_autoindex_ies.exit

if.end45.i:                                       ; preds = %if.else.i
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %priv_num.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %priv_num.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %priv_num.i.i, align 4
  %conv.i.i = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp23.not.i.i = icmp eq i8 %66, 0
  %.pre140.i = zext i16 %38 to i32
  br i1 %cmp23.not.i.i, label %if.end45.i.if.end49.i_crit_edge, label %if.end45.i.for.body.i109.i_crit_edge

if.end45.i.for.body.i109.i_crit_edge:             ; preds = %if.end45.i
  br label %for.body.i109.i

if.end45.i.if.end49.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

for.body.i109.i:                                  ; preds = %for.inc.i114.i.for.body.i109.i_crit_edge, %if.end45.i.for.body.i109.i_crit_edge
  %i.024.i.i = phi i32 [ %inc.i.i, %for.inc.i114.i.for.body.i109.i_crit_edge ], [ 0, %if.end45.i.for.body.i109.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mwifiex_adapter, ptr %64, i32 0, i32 4, i32 %i.024.i.i
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %68, %priv
  br i1 %cmp4.not.i.i, label %for.body.i109.i.for.inc.i114.i_crit_edge, label %if.then.i.i

for.body.i109.i.for.inc.i114.i_crit_edge:         ; preds = %for.body.i109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i114.i

if.then.i.i:                                      ; preds = %for.body.i109.i
  %mgmt_subtype_mask.i110.i = getelementptr %struct.mwifiex_private, ptr %68, i32 0, i32 120, i32 %.pre140.i, i32 1
  %69 = ptrtoint ptr %mgmt_subtype_mask.i110.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %mgmt_subtype_mask.i110.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool.not.i111.i = icmp eq i16 %70, 0
  br i1 %tobool.not.i111.i, label %if.then.i.i.for.inc.i114.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.for.inc.i114.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i114.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %ie_length.i112.i = getelementptr %struct.mwifiex_private, ptr %68, i32 0, i32 120, i32 %.pre140.i, i32 2
  %71 = ptrtoint ptr %ie_length.i112.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %ie_length.i112.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool11.not.i.i = icmp eq i16 %72, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i.i.for.inc.i114.i_crit_edge, label %land.lhs.true.i.i.mwifiex_update_autoindex_ies.exit_crit_edge

land.lhs.true.i.i.mwifiex_update_autoindex_ies.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_autoindex_ies.exit

land.lhs.true.i.i.for.inc.i114.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i114.i

for.inc.i114.i:                                   ; preds = %land.lhs.true.i.i.for.inc.i114.i_crit_edge, %if.then.i.i.for.inc.i114.i_crit_edge, %for.body.i109.i.for.inc.i114.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.024.i.i, 1
  %exitcond.not.i113.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i113.i, label %for.inc.i114.i.if.end49.i_crit_edge, label %for.inc.i114.i.for.body.i109.i_crit_edge

for.inc.i114.i.for.body.i109.i_crit_edge:         ; preds = %for.inc.i114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i109.i

for.inc.i114.i.if.end49.i_crit_edge:              ; preds = %for.inc.i114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.end49.i:                                       ; preds = %for.inc.i114.i.if.end49.i_crit_edge, %if.end45.i.if.end49.i_crit_edge
  %73 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 0, ptr %ie_length.i, align 1
  %arrayidx53.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 120, i32 %.pre140.i
  %74 = call ptr @memcpy(ptr %arrayidx53.i, ptr %add.ptr.i, i32 262)
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end49.i, %if.end23.i
  %idxprom57.pre-phi.i = phi i32 [ %.pre140.i, %if.end49.i ], [ %conv19.i, %if.end23.i ]
  %ie_length59.i = getelementptr %struct.mwifiex_private, ptr %priv, i32 0, i32 120, i32 %idxprom57.pre-phi.i, i32 2
  %75 = ptrtoint ptr %ie_length59.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ie_length59.i, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #5
  %add61.i = add i16 %77, 6
  %78 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %len.i, align 2
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #5
  %add.i.i = add i16 %add61.i, %80
  %81 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #5
  %82 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %len.i, align 2
  %83 = trunc i32 %add.i115 to i16
  %conv66.i = sub i16 %input_len.0133.i, %83
  %cmp.i = icmp ugt i16 %conv66.i, 3
  br i1 %cmp.i, label %if.end54.i.while.body.i_crit_edge, label %if.end54.i.while.end.i_crit_edge

if.end54.i.while.end.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end54.i.while.body.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %if.end54.i.while.end.i_crit_edge, %if.end29.while.end.i_crit_edge
  %bss_role.i = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 2
  %84 = ptrtoint ptr %bss_role.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bss_role.i, align 1
  %86 = and i8 %85, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp68.not.i = icmp eq i8 %86, 0
  br i1 %cmp68.not.i, label %while.end.i.mwifiex_update_autoindex_ies.exit_crit_edge, label %if.then70.i

while.end.i.mwifiex_update_autoindex_ies.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mwifiex_update_autoindex_ies.exit

if.then70.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call71.i = tail call i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext 176, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #5
  br label %mwifiex_update_autoindex_ies.exit

mwifiex_update_autoindex_ies.exit:                ; preds = %if.then70.i, %while.end.i.mwifiex_update_autoindex_ies.exit_crit_edge, %land.lhs.true.i.i.mwifiex_update_autoindex_ies.exit_crit_edge, %if.else.i.mwifiex_update_autoindex_ies.exit_crit_edge, %if.end18.i.mwifiex_update_autoindex_ies.exit_crit_edge, %for.inc.i.i.mwifiex_update_autoindex_ies.exit_crit_edge, %if.then16.i.mwifiex_update_autoindex_ies.exit_crit_edge, %while.body.i.mwifiex_update_autoindex_ies.exit_crit_edge
  %retval.0.i = phi i32 [ %call71.i, %if.then70.i ], [ 0, %while.end.i.mwifiex_update_autoindex_ies.exit_crit_edge ], [ -1, %for.inc.i.i.mwifiex_update_autoindex_ies.exit_crit_edge ], [ -1, %land.lhs.true.i.i.mwifiex_update_autoindex_ies.exit_crit_edge ], [ -1, %if.else.i.mwifiex_update_autoindex_ies.exit_crit_edge ], [ -1, %if.end18.i.mwifiex_update_autoindex_ies.exit_crit_edge ], [ -1, %if.then16.i.mwifiex_update_autoindex_ies.exit_crit_edge ], [ -1, %while.body.i.mwifiex_update_autoindex_ies.exit_crit_edge ]
  br i1 %tobool1.not, label %mwifiex_update_autoindex_ies.exit.if.end45_crit_edge, label %land.lhs.true

mwifiex_update_autoindex_ies.exit.if.end45_crit_edge: ; preds = %mwifiex_update_autoindex_ies.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

land.lhs.true:                                    ; preds = %mwifiex_update_autoindex_ies.exit
  %87 = ptrtoint ptr %beacon_idx to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %beacon_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %88)
  %cmp = icmp eq i16 %88, -1
  br i1 %cmp, label %if.then35, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %ie_list to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %ie_list, align 4
  %91 = tail call i16 @llvm.bswap.i16(i16 %90)
  %92 = ptrtoint ptr %beacon_idx to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %beacon_idx, align 2
  %ie_length39 = getelementptr inbounds %struct.mwifiex_ie, ptr %beacon_ie, i32 0, i32 2
  %93 = ptrtoint ptr %ie_length39 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %ie_length39, align 1
  %95 = tail call i16 @llvm.bswap.i16(i16 %94)
  %add41 = add i16 %95, 6
  %conv43 = zext i16 %add41 to i32
  %add.ptr44 = getelementptr i8, ptr %ie_list, i32 %conv43
  br label %if.end45

if.end45:                                         ; preds = %if.then35, %land.lhs.true.if.end45_crit_edge, %mwifiex_update_autoindex_ies.exit.if.end45_crit_edge
  %pos.2 = phi ptr [ %add.ptr44, %if.then35 ], [ %ie_list, %land.lhs.true.if.end45_crit_edge ], [ %ie_list, %mwifiex_update_autoindex_ies.exit.if.end45_crit_edge ]
  br i1 %tobool8.not, label %if.end45.if.end59_crit_edge, label %land.lhs.true47

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

land.lhs.true47:                                  ; preds = %if.end45
  %96 = ptrtoint ptr %pr_ie to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %pr_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %97)
  %cmp50 = icmp eq i16 %97, -1
  br i1 %cmp50, label %if.then52, label %land.lhs.true47.if.end59_crit_edge

land.lhs.true47.if.end59_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then52:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %pos.2 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %pos.2, align 2
  %100 = ptrtoint ptr %probe_idx to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %probe_idx, align 2
  %ie_length53 = getelementptr inbounds %struct.mwifiex_ie, ptr %pr_ie, i32 0, i32 2
  %101 = ptrtoint ptr %ie_length53 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %ie_length53, align 1
  %103 = tail call i16 @llvm.bswap.i16(i16 %102)
  %add55 = add i16 %103, 6
  %conv57 = zext i16 %add55 to i32
  %add.ptr58 = getelementptr i8, ptr %pos.2, i32 %conv57
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %land.lhs.true47.if.end59_crit_edge, %if.end45.if.end59_crit_edge
  %pos.3 = phi ptr [ %add.ptr58, %if.then52 ], [ %pos.2, %land.lhs.true47.if.end59_crit_edge ], [ %pos.2, %if.end45.if.end59_crit_edge ]
  br i1 %tobool19.not, label %if.end59.if.end67_crit_edge, label %land.lhs.true61

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true61:                                  ; preds = %if.end59
  %104 = ptrtoint ptr %ar_ie to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %ar_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %105)
  %cmp64 = icmp eq i16 %105, -1
  br i1 %cmp64, label %if.then66, label %land.lhs.true61.if.end67_crit_edge

land.lhs.true61.if.end67_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then66:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %pos.3 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %pos.3, align 2
  %108 = ptrtoint ptr %assoc_idx to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %assoc_idx, align 2
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %land.lhs.true61.if.end67_crit_edge, %if.end59.if.end67_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.end67 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_vendor_elem(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

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
