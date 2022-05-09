; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.atomic_t = type { i32 }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i16, i64, i64, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], [16 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, %struct.timer_list, i16, i32, i8, i8, i32, i64, i8, [9 x i32], [9 x i32], i32, i8, i8, i8, i8, i8, i16, i8 }
%struct.rt_channel_info = type { i8, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type <{ i8, i16, i16, i16 }>
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.5, i32 }
%union.anon.5 = type { ptr }
%struct.sk_buff_head = type { %union.anon.6, i32, %struct.spinlock }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i8, i32, i32, [5 x %union.Keytype], [5 x %union.Keytype], [5 x %union.Keytype], %union.pn48, %union.pn48, i32, [6 x %union.Keytype], %union.pn48, %union.pn48, i32, i32, i32, i32, i32, i32, [512 x i8], i32, %struct.arc4_ctx, %struct.arc4_ctx, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }>
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i16, [512 x i8], i8, i8, i8, i8, i32, [17 x i8], [50 x i8] }
%struct.hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.rtw_wdev_priv = type { ptr, ptr, ptr, %struct.spinlock, ptr, [17 x i8], i8, i8, %struct.rtw_wdev_invit_info, %struct.rtw_wdev_nego_info, i8, i8, i8 }
%struct.rtw_wdev_invit_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.rtw_wdev_nego_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967277]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967277]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_sdio_set_irq_thd(ptr nocapture noundef writeonly %dvobj, ptr noundef %thd_hdl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %sys_sdio_irq_thd = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 24, i32 5
  %0 = ptrtoint ptr %sys_sdio_irq_thd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %thd_hdl, ptr %sys_sdio_irq_thd, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_sd_cmd52_read(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr nocapture noundef writeonly %pdata) local_unnamed_addr #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #5
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %1 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %5 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %6, i32 0, i32 24, i32 4
  %7 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp15.not = icmp eq i32 %cnt, 0
  br i1 %cmp15.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %add = add i32 %i.016, %addr
  %call = call zeroext i8 @sdio_readb(ptr noundef %8, i32 noundef %add, ptr noundef nonnull %err) #5
  %arrayidx = getelementptr i8, ptr %pdata, i32 %i.016
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp ne i32 %11, 0
  %inc = add nuw i32 %i.016, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %cnt)
  %exitcond.not = icmp eq i32 %inc, %cnt
  %or.cond = select i1 %tobool3.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_cmd52_read(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr nocapture noundef writeonly %pdata) local_unnamed_addr #2 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %4 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 24, i32 4
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %sys_sdio_irq_thd.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %sys_sdio_irq_thd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_sdio_irq_thd.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %land.lhs.true.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i:                                  ; preds = %if.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @sdio_claim_host(ptr noundef %7) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.i.if.end5_crit_edge
  %retval.0.i25 = phi i1 [ true, %if.then4 ], [ false, %land.lhs.true.i.if.end5_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #5
  %16 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %err.i, align 4
  %17 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i21 = icmp eq i32 %20, 0
  br i1 %tobool.not.i21, label %if.end.i22, label %if.end5._sd_cmd52_read.exit_crit_edge

if.end5._sd_cmd52_read.exit_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sd_cmd52_read.exit

if.end.i22:                                       ; preds = %if.end5
  %21 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pintf_dev, align 4
  %func2.i = getelementptr inbounds %struct.dvobj_priv, ptr %22, i32 0, i32 24, i32 4
  %23 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp15.not.i = icmp eq i32 %cnt, 0
  br i1 %cmp15.not.i, label %if.end.i22.for.end.i_crit_edge, label %if.end.i22.for.body.i_crit_edge

if.end.i22.for.body.i_crit_edge:                  ; preds = %if.end.i22
  br label %for.body.i

if.end.i22.for.end.i_crit_edge:                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i22.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i22.for.body.i_crit_edge ]
  %add.i = add i32 %i.016.i, %addr
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %24, i32 noundef %add.i, ptr noundef nonnull %err.i) #5
  %arrayidx.i = getelementptr i8, ptr %pdata, i32 %i.016.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call.i, ptr %arrayidx.i, align 1
  %26 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i = icmp ne i32 %27, 0
  %inc.i = add nuw i32 %i.016.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %cnt)
  %exitcond.not.i = icmp eq i32 %inc.i, %cnt
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i22.for.end.i_crit_edge
  %28 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err.i, align 4
  br label %_sd_cmd52_read.exit

_sd_cmd52_read.exit:                              ; preds = %for.end.i, %if.end5._sd_cmd52_read.exit_crit_edge
  %retval.0.i23 = phi i32 [ %29, %for.end.i ], [ 0, %if.end5._sd_cmd52_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #5
  br i1 %retval.0.i25, label %if.then8, label %_sd_cmd52_read.exit.cleanup_crit_edge

_sd_cmd52_read.exit.cleanup_crit_edge:            ; preds = %_sd_cmd52_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %_sd_cmd52_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @sdio_release_host(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %_sd_cmd52_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i23, %if.then8 ], [ %retval.0.i23, %_sd_cmd52_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_sd_cmd52_write(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr nocapture noundef readonly %pdata) local_unnamed_addr #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #5
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %1 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %5 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %6, i32 0, i32 24, i32 4
  %7 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp15.not = icmp eq i32 %cnt, 0
  br i1 %cmp15.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %pdata, i32 %i.016
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %add = add i32 %i.016, %addr
  call void @sdio_writeb(ptr noundef %8, i8 noundef zeroext %10, i32 noundef %add, ptr noundef nonnull %err) #5
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp ne i32 %12, 0
  %inc = add nuw i32 %i.016, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %cnt)
  %exitcond.not = icmp eq i32 %inc, %cnt
  %or.cond = select i1 %tobool3.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %13 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_cmd52_write(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr nocapture noundef readonly %pdata) local_unnamed_addr #2 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %4 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 24, i32 4
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %sys_sdio_irq_thd.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %sys_sdio_irq_thd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_sdio_irq_thd.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %land.lhs.true.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i:                                  ; preds = %if.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @sdio_claim_host(ptr noundef %7) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.i.if.end5_crit_edge
  %retval.0.i25 = phi i1 [ true, %if.then4 ], [ false, %land.lhs.true.i.if.end5_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #5
  %16 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %err.i, align 4
  %17 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i21 = icmp eq i32 %20, 0
  br i1 %tobool.not.i21, label %if.end.i22, label %if.end5._sd_cmd52_write.exit_crit_edge

if.end5._sd_cmd52_write.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sd_cmd52_write.exit

if.end.i22:                                       ; preds = %if.end5
  %21 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pintf_dev, align 4
  %func2.i = getelementptr inbounds %struct.dvobj_priv, ptr %22, i32 0, i32 24, i32 4
  %23 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp15.not.i = icmp eq i32 %cnt, 0
  br i1 %cmp15.not.i, label %if.end.i22.for.end.i_crit_edge, label %if.end.i22.for.body.i_crit_edge

if.end.i22.for.body.i_crit_edge:                  ; preds = %if.end.i22
  br label %for.body.i

if.end.i22.for.end.i_crit_edge:                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i22.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i22.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %pdata, i32 %i.016.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i32 %i.016.i, %addr
  call void @sdio_writeb(ptr noundef %24, i8 noundef zeroext %26, i32 noundef %add.i, ptr noundef nonnull %err.i) #5
  %27 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i = icmp ne i32 %28, 0
  %inc.i = add nuw i32 %i.016.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %cnt)
  %exitcond.not.i = icmp eq i32 %inc.i, %cnt
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i22.for.end.i_crit_edge
  %29 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err.i, align 4
  br label %_sd_cmd52_write.exit

_sd_cmd52_write.exit:                             ; preds = %for.end.i, %if.end5._sd_cmd52_write.exit_crit_edge
  %retval.0.i23 = phi i32 [ %30, %for.end.i ], [ 0, %if.end5._sd_cmd52_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #5
  br i1 %retval.0.i25, label %if.then8, label %_sd_cmd52_write.exit.cleanup_crit_edge

_sd_cmd52_write.exit.cleanup_crit_edge:           ; preds = %_sd_cmd52_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %_sd_cmd52_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @sdio_release_host(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %_sd_cmd52_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i23, %if.then8 ], [ %retval.0.i23, %_sd_cmd52_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @sd_read8(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, ptr noundef %err) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %4 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 24, i32 4
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %sys_sdio_irq_thd.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %sys_sdio_irq_thd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_sdio_irq_thd.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.then8_crit_edge, label %land.lhs.true.i

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

land.lhs.true.i:                                  ; preds = %if.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %if.end5, label %land.lhs.true.i.if.then8_crit_edge

land.lhs.true.i.if.then8_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end5:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call zeroext i8 @sdio_readb(ptr noundef %7, i32 noundef %addr, ptr noundef %err) #5
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true.i.if.then8_crit_edge, %if.end.if.then8_crit_edge
  tail call void @sdio_claim_host(ptr noundef %7) #5
  %call625 = tail call zeroext i8 @sdio_readb(ptr noundef %7, i32 noundef %addr, ptr noundef %err) #5
  tail call void @sdio_release_host(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ %call625, %if.then8 ], [ %call6, %if.end5 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_read32(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, ptr noundef %err) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfhdl, align 4
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %2 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pintf_dev, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 24, i32 4
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %sys_sdio_irq_thd.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %sys_sdio_irq_thd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_sdio_irq_thd.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.then8_crit_edge, label %land.lhs.true.i

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

land.lhs.true.i:                                  ; preds = %if.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %if.end5, label %land.lhs.true.i.if.then8_crit_edge

land.lhs.true.i.if.then8_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end5:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @sdio_readl(ptr noundef %7, i32 noundef %addr, ptr noundef %err) #5
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true.i.if.then8_crit_edge, %if.end.if.then8_crit_edge
  tail call void @sdio_claim_host(ptr noundef %7) #5
  %call667 = tail call i32 @sdio_readl(ptr noundef %7, i32 noundef %addr, ptr noundef %err) #5
  tail call void @sdio_release_host(ptr noundef %7) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %call670 = phi i32 [ %call667, %if.then8 ], [ %call6, %if.end5 ]
  %retval.0.i6468 = phi i1 [ true, %if.then8 ], [ false, %if.end5 ]
  %tobool10.not = icmp eq ptr %err, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  %16 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %if.then12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %err, align 4
  br label %for.body

for.cond:                                         ; preds = %if.end26
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then12
  %i.078 = phi i32 [ 0, %if.then12 ], [ %inc, %for.cond.for.body_crit_edge ]
  br i1 %retval.0.i6468, label %if.then18, label %if.end15

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 @sdio_readl(ptr noundef %7, i32 noundef %addr, ptr noundef nonnull %err) #5
  br label %if.end19

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sdio_claim_host(ptr noundef %7) #5
  %call1672 = tail call i32 @sdio_readl(ptr noundef %7, i32 noundef %addr, ptr noundef nonnull %err) #5
  tail call void @sdio_release_host(ptr noundef %7) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %call1673 = phi i32 [ %call1672, %if.then18 ], [ %call16, %if.end15 ]
  %19 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end19.if.end26_crit_edge [
    i32 0, label %if.then21
    i32 -108, label %if.end19.if.then24_crit_edge
    i32 -19, label %if.end19.if.then24_crit_edge89
  ]

if.end19.if.then24_crit_edge89:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.end19.if.then24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_reset_continual_io_error(ptr noundef %3) #5
  br label %cleanup

if.then24:                                        ; preds = %if.end19.if.then24_crit_edge, %if.end19.if.then24_crit_edge89
  %22 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %bSurpriseRemoved, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end19.if.end26_crit_edge
  %call27 = tail call i32 @rtw_inc_and_chk_continual_io_error(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 1
  br i1 %cmp28, label %if.then29, label %for.cond

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %bSurpriseRemoved, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.then21, %for.cond.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call670, %land.lhs.true.cleanup_crit_edge ], [ %call670, %if.end9.cleanup_crit_edge ], [ %call1673, %if.then21 ], [ %call1673, %if.then29 ], [ %call1673, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_reset_continual_io_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_inc_and_chk_continual_io_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_write8(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i8 noundef zeroext %v, ptr noundef %err) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %4 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 24, i32 4
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %sys_sdio_irq_thd.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %sys_sdio_irq_thd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_sdio_irq_thd.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %land.lhs.true.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i:                                  ; preds = %if.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %if.end8.critedge, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %land.lhs.true.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @sdio_claim_host(ptr noundef %7) #5
  tail call void @sdio_writeb(ptr noundef %7, i8 noundef zeroext %v, i32 noundef %addr, ptr noundef %err) #5
  tail call void @sdio_release_host(ptr noundef %7) #5
  br label %cleanup

if.end8.critedge:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sdio_writeb(ptr noundef %7, i8 noundef zeroext %v, i32 noundef %addr, ptr noundef %err) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8.critedge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_write32(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %v, ptr noundef %err) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfhdl, align 4
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %2 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pintf_dev, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 24, i32 4
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %sys_sdio_irq_thd.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %sys_sdio_irq_thd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_sdio_irq_thd.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %land.lhs.true.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i:                                  ; preds = %if.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %if.end8.critedge, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %land.lhs.true.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @sdio_claim_host(ptr noundef %7) #5
  tail call void @sdio_writel(ptr noundef %7, i32 noundef %v, i32 noundef %addr, ptr noundef %err) #5
  tail call void @sdio_release_host(ptr noundef %7) #5
  br label %if.end8

if.end8.critedge:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sdio_writel(ptr noundef %7, i32 noundef %v, i32 noundef %addr, ptr noundef %err) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end8.critedge, %if.then4
  %retval.0.i61 = phi i1 [ false, %if.end8.critedge ], [ true, %if.then4 ]
  %tobool9.not = icmp eq ptr %err, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end8
  %16 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %err, align 4
  br label %for.body

for.cond:                                         ; preds = %if.end24
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then11
  %i.063 = phi i32 [ 0, %if.then11 ], [ %inc, %for.cond.for.body_crit_edge ]
  br i1 %retval.0.i61, label %if.then13, label %if.end17.critedge

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sdio_claim_host(ptr noundef %7) #5
  tail call void @sdio_writel(ptr noundef %7, i32 noundef %v, i32 noundef %addr, ptr noundef nonnull %err) #5
  tail call void @sdio_release_host(ptr noundef %7) #5
  br label %if.end17

if.end17.critedge:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sdio_writel(ptr noundef %7, i32 noundef %v, i32 noundef %addr, ptr noundef nonnull %err) #5
  br label %if.end17

if.end17:                                         ; preds = %if.end17.critedge, %if.then13
  %19 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %20, label %if.end17.if.end24_crit_edge [
    i32 0, label %if.then19
    i32 -108, label %if.end17.if.then22_crit_edge
    i32 -19, label %if.end17.if.then22_crit_edge64
  ]

if.end17.if.then22_crit_edge64:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.end17.if.then22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_reset_continual_io_error(ptr noundef %3) #5
  br label %cleanup

if.then22:                                        ; preds = %if.end17.if.then22_crit_edge, %if.end17.if.then22_crit_edge64
  %22 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %bSurpriseRemoved, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end17.if.end24_crit_edge
  %call25 = tail call i32 @rtw_inc_and_chk_continual_io_error(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 1
  br i1 %cmp26, label %if.then27, label %for.cond

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %bSurpriseRemoved, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.then19, %for.cond.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_sd_read(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pdata) local_unnamed_addr #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #5
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4
  %1 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %5 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %6, i32 0, i32 24, i32 4
  %7 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func2, align 4
  %cnt.off = add i32 %cnt, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt.off)
  %switch = icmp ult i32 %cnt.off, 2
  br i1 %switch, label %for.body, label %if.end11

for.body:                                         ; preds = %if.end
  %call = call zeroext i8 @sdio_readb(ptr noundef %8, i32 noundef %addr, ptr noundef nonnull %err) #5
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call, ptr %pdata, align 1
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt)
  %exitcond.not = icmp eq i32 %cnt, 1
  %or.cond = or i1 %tobool8.not, %exitcond.not
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.1 = add i32 %addr, 1
  %call.1 = call zeroext i8 @sdio_readb(ptr noundef %8, i32 noundef %add.1, ptr noundef nonnull %err) #5
  %add.ptr.1 = getelementptr i8, ptr %pdata, i32 1
  %12 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call.1, ptr %add.ptr.1, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge
  %13 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @sdio_memcpy_fromio(ptr noundef %8, ptr noundef %pdata, i32 noundef %addr, i32 noundef %cnt) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %for.end ], [ %call12, %if.end11 ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_read(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pdata) local_unnamed_addr #2 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %4 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 24, i32 4
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %sys_sdio_irq_thd.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %sys_sdio_irq_thd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_sdio_irq_thd.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %land.lhs.true.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i:                                  ; preds = %if.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @sdio_claim_host(ptr noundef %7) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.i.if.end5_crit_edge
  %retval.0.i25 = phi i1 [ true, %if.then4 ], [ false, %land.lhs.true.i.if.end5_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #5
  %16 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %err.i, align 4
  %17 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i21 = icmp eq i32 %20, 0
  br i1 %tobool.not.i21, label %if.end.i22, label %if.end5._sd_read.exit_crit_edge

if.end5._sd_read.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sd_read.exit

if.end.i22:                                       ; preds = %if.end5
  %21 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pintf_dev, align 4
  %func2.i = getelementptr inbounds %struct.dvobj_priv, ptr %22, i32 0, i32 24, i32 4
  %23 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func2.i, align 4
  %cnt.off.i = add i32 %cnt, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt.off.i)
  %switch.i = icmp ult i32 %cnt.off.i, 2
  br i1 %switch.i, label %for.body.i, label %if.end11.i

for.body.i:                                       ; preds = %if.end.i22
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %24, i32 noundef %addr, ptr noundef nonnull %err.i) #5
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call.i, ptr %pdata, align 1
  %26 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not.i = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt)
  %exitcond.not.i = icmp eq i32 %cnt, 1
  %or.cond.i = or i1 %tobool8.not.i, %exitcond.not.i
  br i1 %or.cond.i, label %for.body.i._sd_read.exit_crit_edge, label %for.body.i.1

for.body.i._sd_read.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sd_read.exit

for.body.i.1:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.1 = add i32 %addr, 1
  %call.i.1 = call zeroext i8 @sdio_readb(ptr noundef %24, i32 noundef %add.i.1, ptr noundef nonnull %err.i) #5
  %add.ptr.i.1 = getelementptr i8, ptr %pdata, i32 1
  %28 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call.i.1, ptr %add.ptr.i.1, align 1
  %29 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err.i, align 4
  br label %_sd_read.exit

if.end11.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  %call12.i = tail call i32 @sdio_memcpy_fromio(ptr noundef %24, ptr noundef %pdata, i32 noundef %addr, i32 noundef %cnt) #5
  br label %_sd_read.exit

_sd_read.exit:                                    ; preds = %if.end11.i, %for.body.i.1, %for.body.i._sd_read.exit_crit_edge, %if.end5._sd_read.exit_crit_edge
  %retval.0.i23 = phi i32 [ %call12.i, %if.end11.i ], [ -1, %if.end5._sd_read.exit_crit_edge ], [ %27, %for.body.i._sd_read.exit_crit_edge ], [ %30, %for.body.i.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #5
  br i1 %retval.0.i25, label %if.then8, label %_sd_read.exit.cleanup_crit_edge

_sd_read.exit.cleanup_crit_edge:                  ; preds = %_sd_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %_sd_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @sdio_release_host(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %_sd_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.i23, %if.then8 ], [ %retval.0.i23, %_sd_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_sd_write(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pdata) local_unnamed_addr #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #5
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4
  %1 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %5 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %6, i32 0, i32 24, i32 4
  %7 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func2, align 4
  %cnt.off = add i32 %cnt, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt.off)
  %switch = icmp ult i32 %cnt.off, 2
  br i1 %switch, label %for.body, label %if.end11

for.body:                                         ; preds = %if.end
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pdata, align 1
  call void @sdio_writeb(ptr noundef %8, i8 noundef zeroext %10, i32 noundef %addr, ptr noundef nonnull %err) #5
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt)
  %exitcond.not = icmp eq i32 %cnt, 1
  %or.cond = or i1 %tobool8.not, %exitcond.not
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.1 = getelementptr i8, ptr %pdata, i32 1
  %13 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.1, align 1
  %add.1 = add i32 %addr, 1
  call void @sdio_writeb(ptr noundef %8, i8 noundef zeroext %14, i32 noundef %add.1, ptr noundef nonnull %err) #5
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge
  %15 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %err, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @sdio_memcpy_toio(ptr noundef %8, i32 noundef %addr, ptr noundef %pdata, i32 noundef %cnt) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %for.end ], [ %call, %if.end11 ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_write(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pdata) local_unnamed_addr #2 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pintf_dev = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %4 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pintf_dev, align 4
  %func2 = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 24, i32 4
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %sys_sdio_irq_thd.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %sys_sdio_irq_thd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_sdio_irq_thd.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %land.lhs.true.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i:                                  ; preds = %if.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @sdio_claim_host(ptr noundef %7) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.i.if.end5_crit_edge
  %retval.0.i25 = phi i1 [ true, %if.then4 ], [ false, %land.lhs.true.i.if.end5_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #5
  %16 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %err.i, align 4
  %17 = ptrtoint ptr %pintfhdl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pintfhdl, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i21 = icmp eq i32 %20, 0
  br i1 %tobool.not.i21, label %if.end.i22, label %if.end5._sd_write.exit_crit_edge

if.end5._sd_write.exit_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sd_write.exit

if.end.i22:                                       ; preds = %if.end5
  %21 = ptrtoint ptr %pintf_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pintf_dev, align 4
  %func2.i = getelementptr inbounds %struct.dvobj_priv, ptr %22, i32 0, i32 24, i32 4
  %23 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func2.i, align 4
  %cnt.off.i = add i32 %cnt, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt.off.i)
  %switch.i = icmp ult i32 %cnt.off.i, 2
  br i1 %switch.i, label %for.body.i, label %if.end11.i

for.body.i:                                       ; preds = %if.end.i22
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pdata, align 1
  call void @sdio_writeb(ptr noundef %24, i8 noundef zeroext %26, i32 noundef %addr, ptr noundef nonnull %err.i) #5
  %27 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool8.not.i = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt)
  %exitcond.not.i = icmp eq i32 %cnt, 1
  %or.cond.i = or i1 %tobool8.not.i, %exitcond.not.i
  br i1 %or.cond.i, label %for.body.i._sd_write.exit_crit_edge, label %for.body.i.1

for.body.i._sd_write.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sd_write.exit

for.body.i.1:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.1 = getelementptr i8, ptr %pdata, i32 1
  %29 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.1, align 1
  %add.i.1 = add i32 %addr, 1
  call void @sdio_writeb(ptr noundef %24, i8 noundef zeroext %30, i32 noundef %add.i.1, ptr noundef nonnull %err.i) #5
  %31 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %err.i, align 4
  br label %_sd_write.exit

if.end11.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @sdio_memcpy_toio(ptr noundef %24, i32 noundef %addr, ptr noundef %pdata, i32 noundef %cnt) #5
  br label %_sd_write.exit

_sd_write.exit:                                   ; preds = %if.end11.i, %for.body.i.1, %for.body.i._sd_write.exit_crit_edge, %if.end5._sd_write.exit_crit_edge
  %retval.0.i23 = phi i32 [ %call.i, %if.end11.i ], [ -1, %if.end5._sd_write.exit_crit_edge ], [ %28, %for.body.i._sd_write.exit_crit_edge ], [ %32, %for.body.i.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #5
  br i1 %retval.0.i25, label %if.then8, label %_sd_write.exit.cleanup_crit_edge

_sd_write.exit.cleanup_crit_edge:                 ; preds = %_sd_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %_sd_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @sdio_release_host(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %_sd_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.i23, %if.then8 ], [ %retval.0.i23, %_sd_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
