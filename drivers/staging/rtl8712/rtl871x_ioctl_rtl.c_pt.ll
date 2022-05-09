; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_ioctl_rtl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.oid_par_priv = type { ptr, i32, ptr, i32, ptr, ptr, i32, i32 }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION, i32, [16 x i8], i32, [768 x i8] }
%struct.NDIS_802_11_CONFIGURATION = type { i32, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION_FH }
%struct.NDIS_802_11_CONFIGURATION_FH = type { i32, i32, i32, i32 }
%struct.sitesurvey_ctrl = type { i64, i32, i32, %struct.timer_list }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i32, i32, [16 x i8], i32, i32, i32, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.3, i32, %struct.spinlock }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr }
%struct.smooth_rssi_data = type { [100 x i32], i32, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [2 x %union.Keytype], [2 x %union.Keytype], [2 x %union.Keytype], %union.pn48, %union.pn48, i8, i8, [512 x i8], i32, i8, i8, %struct.timer_list, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.NDIS_802_11_WEP, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.RT_PMKID_LIST], i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.NDIS_802_11_WEP = type { i32, i32, i32, [16 x i8] }
%struct.RT_PMKID_LIST = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type { i8, i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8 }
%struct.wlan_acl_pool = type { [64 x %struct.wlan_acl_node] }
%struct.wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.work_struct, %struct.work_struct, %struct.timer_list, i8, i32, %struct.spinlock, i32, i8, i8 }
%struct.eeprom_priv = type { i8, i8, i8, [6 x i8], i8, i16, [3 x i8], [15 x i8], [15 x i8], [201 x i8], [256 x i8], i32 }
%struct.hal_priv = type { [10 x ptr], ptr }
%struct.led_priv = type { %struct.LED_871x, %struct.LED_871x, i32, i8, ptr }
%struct.LED_871x = type { ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.timer_list, %struct.work_struct }
%struct.mp_priv = type { ptr, %struct.mp_wiparam, i8, i8, i32, i32, i32, i32, %struct.recv_stat, i32, i32, i8, i8, i8, i32, i16, i16, i8, i8, i32, %struct.wlan_network, [6 x i8], i32, i32, ptr, ptr, %struct.__queue, i32 }
%struct.mp_wiparam = type { i32, i32, i32, i32 }
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_signal_quality_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_small_packet_crc_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx_smallpacket_crcerr = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 12
  %6 = ptrtoint ptr %rx_smallpacket_crcerr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_smallpacket_crcerr, align 8
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %8 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %information_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 4
  %11 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %13 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bytes_rw, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_middle_packet_crc_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx_middlepacket_crcerr = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 13
  %6 = ptrtoint ptr %rx_middlepacket_crcerr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_middlepacket_crcerr, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %8 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %information_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 4
  %11 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %13 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bytes_rw, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_large_packet_crc_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx_largepacket_crcerr = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 11
  %6 = ptrtoint ptr %rx_largepacket_crcerr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_largepacket_crcerr, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %8 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %information_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 4
  %11 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %13 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bytes_rw, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_tx_retry_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_rx_retry_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %2 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %4 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bytes_rw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_rx_total_packet_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx_pkts = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 8
  %6 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pkts, align 8
  %rx_drop = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 9
  %8 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_drop, align 4
  %add = add i32 %9, %7
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %10 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %information_buf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %11, align 4
  %13 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %15 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bytes_rw, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_tx_beacon_ok_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_tx_beacon_err_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_rx_icv_err_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx_icv_err = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 10
  %6 = ptrtoint ptr %rx_icv_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_icv_err, align 8
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %8 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %information_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 4
  %11 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %13 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bytes_rw, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_set_encryption_algorithm_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_preamble_mode_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %preamble = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 9, i32 12
  %6 = ptrtoint ptr %preamble to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %preamble, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %switch.selectcmp = icmp eq i8 %7, 2
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %switch.selectcmp33 = icmp eq i8 %7, 3
  %switch.select34 = select i1 %switch.selectcmp33, i32 2, i32 %switch.select
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %8 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %information_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.select34, ptr %9, align 4
  %11 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %13 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bytes_rw, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_ap_ip_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_channelplan_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %6 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bytes_rw, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %7, align 4
  %channel_plan = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 12, i32 5
  %9 = ptrtoint ptr %channel_plan to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %channel_plan, align 2
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %11 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %information_buf, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %10, ptr %12, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_set_channelplan_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %channel_plan = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 12, i32 5
  %8 = ptrtoint ptr %channel_plan to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %channel_plan, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_set_preamble_mode_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %switch.lookup, label %if.then2.if.end16_crit_edge

if.then2.if.end16_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

switch.lookup:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = trunc i32 %9 to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %preamble8 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 9, i32 12
  %11 = ptrtoint ptr %preamble8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %switch.offset, ptr %preamble8, align 4
  br label %if.end16

if.end16:                                         ; preds = %switch.lookup, %if.then2.if.end16_crit_edge
  %12 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %information_buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %13, align 4
  %15 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %17 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bytes_rw, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_set_bcn_intvl_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_dedicate_probe_hdl(ptr nocapture noundef readnone %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_total_tx_bytes_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bytes = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 5, i32 25
  %6 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bytes, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %8 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %information_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 4
  %11 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %13 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bytes_rw, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_total_rx_bytes_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx_bytes = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 7
  %6 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_bytes, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %8 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %information_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 4
  %11 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %13 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bytes_rw, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_current_tx_power_level_hdl(ptr nocapture noundef readnone %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_enc_key_mismatch_count_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_enc_key_match_count_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_channel_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 8
  %6 = and i32 %5, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %Configuration = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 1, i32 13, i32 6, i32 7
  %Configuration5 = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 9, i32 33, i32 7
  %pnic_Config.0 = select i1 %7, ptr %Configuration5, ptr %Configuration
  %DSConfig = getelementptr inbounds %struct.NDIS_802_11_CONFIGURATION, ptr %pnic_Config.0, i32 0, i32 3
  %8 = ptrtoint ptr %DSConfig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %DSConfig, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %10 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %information_buf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %11, align 4
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %13 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %15 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bytes_rw, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_hardware_radio_off_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_key_mismatch_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_supported_wireless_mode_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %2 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1 = icmp ugt i32 %3, 3
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1792, ptr %5, align 4
  %7 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %9 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bytes_rw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_channel_list_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_scan_in_progress_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_forced_data_rate_hdl(ptr nocapture noundef readnone %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_wireless_mode_for_scan_list_hdl(ptr nocapture noundef readnone %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_bss_wireless_mode_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_scan_with_magic_packet_hdl(ptr nocapture noundef readnone %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_ap_get_associated_station_list_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_ap_switch_into_ap_mode_hdl(ptr nocapture noundef readnone %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_ap_supported_hdl(ptr nocapture noundef readnone %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_ap_set_passphrase_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_rf_write_registry_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp1 = icmp eq i32 %5, 12
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %add.ptr = getelementptr i32, ptr %7, i32 2
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %call = tail call i32 @r8712_setrfreg_cmd(ptr noundef %1, i8 noundef zeroext %9, i32 noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 65539
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 65539, %entry.cleanup_crit_edge ], [ %spec.select, %if.then2 ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_setrfreg_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_rf_read_registry_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp1 = icmp eq i32 %5, 12
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %act_in_progress = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 2
  %6 = ptrtoint ptr %act_in_progress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %act_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %act_in_progress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %act_in_progress, align 4
  %workparam = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %workparam to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %workparam, align 4
  %act_type = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 1, i32 1
  %10 = ptrtoint ptr %act_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 11, ptr %act_type, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %11 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %information_buf, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %io_offset = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 1, i32 2
  %15 = ptrtoint ptr %io_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %io_offset, align 4
  %io_value = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 1, i32 3
  %16 = ptrtoint ptr %io_value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -858993460, ptr %io_value, align 4
  %17 = load ptr, ptr %information_buf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %call = tail call i32 @r8712_getrfreg_cmd(ptr noundef %1, i8 noundef zeroext %19, ptr noundef %io_value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool17.not, i32 0, i32 65539
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 65539, %entry.cleanup_crit_edge ], [ 65539, %if.then2.cleanup_crit_edge ], [ %spec.select, %if.else ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_getrfreg_cmd(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_get_connect_state_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 8
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.else:                                          ; preds = %if.end
  %7 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.else5, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %8 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %. = select i1 %tobool7.not, i32 3, i32 2
  br label %if.end12

if.end12:                                         ; preds = %if.else5, %if.else.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %ulInfo.0 = phi i32 [ 0, %if.end.if.end12_crit_edge ], [ 1, %if.else.if.end12_crit_edge ], [ %., %if.else5 ]
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %9 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %information_buf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ulInfo.0, ptr %10, align 4
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %12 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %14 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bytes_rw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_set_default_key_id_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  %. = select i1 %cmp.not, i32 0, i32 65539
  ret i32 %.
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
