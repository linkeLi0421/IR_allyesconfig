; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_ioctl_set.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_ioctl_set.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_set_802_11_bssid(ptr noundef %padapter, ptr nocapture noundef readonly %bssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %0 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bssid, align 4
  %add.ptr.i = getelementptr i8, ptr %bssid, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %3 to i32
  %or.i = or i32 %1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %bssid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bssid, align 2
  %add.ptr1.i = getelementptr i8, ptr %bssid, i32 2
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %5, %3
  %and510.i = and i16 %and9.i, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i55 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i55, label %lor.lhs.false.cleanup_crit_edge, label %do.body2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body2:                                         ; preds = %lor.lhs.false
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #3
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %9, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #5
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 7
  br label %done

if.end10:                                         ; preds = %do.body2
  %and.i61 = and i32 %9, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62.not = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i62.not, label %if.end10.if.end30_crit_edge, label %if.then13

if.end10.if.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then13:                                        ; preds = %if.end10
  %MacAddress = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %bssid, i32 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then13
  %12 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %if.then16.done_crit_edge, label %if.then16.if.end30_crit_edge

if.then16.if.end30_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then16.done_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.else:                                          ; preds = %if.then13
  tail call void @r8712_disassoc_cmd(ptr noundef %padapter) #3
  %13 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i, align 8
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %if.else.if.end24_crit_edge, label %if.then23

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r8712_ind_disconnect(ptr noundef %padapter) #3
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.else.if.end24_crit_edge
  tail call void @r8712_free_assoc_resources(ptr noundef %padapter) #3
  %16 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_state.i, align 8
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %and.i77 = and i32 %17, -97
  %or.i79 = or i32 %and.i77, 32
  %19 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i79, ptr %fw_state.i, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge, %if.then16.if.end30_crit_edge, %if.end10.if.end30_crit_edge
  %assoc_bssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 12
  %20 = call ptr @memcpy(ptr %assoc_bssid, ptr %bssid, i32 6)
  %assoc_by_bssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 16
  %21 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %assoc_by_bssid, align 8
  %call31 = tail call fastcc zeroext i8 @do_join(ptr noundef %padapter)
  br label %done

done:                                             ; preds = %if.end30, %if.then16.done_crit_edge, %if.then8
  %status.0 = phi i8 [ %11, %if.then8 ], [ %call31, %if.end30 ], [ 1, %if.then16.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call4) #3
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %status.0, %done ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_disassoc_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_ind_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_assoc_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @do_join(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %scanned_queue = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scanned_queue, align 4
  %join_res = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 5
  %2 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2, ptr %join_res, align 8
  %fw_state = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state, align 8
  %or = or i32 %4, 128
  store i32 %or, ptr %fw_state, align 8
  %pscanned = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %pscanned, align 4
  %to_join = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %to_join, align 4
  %7 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %scanned_queue, align 4
  %cmp.i.not = icmp eq ptr %9, %scanned_queue
  br i1 %cmp.i.not, label %if.end, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end:                                           ; preds = %land.lhs.true
  %10 = and i32 %4, -129
  %11 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_state, align 8
  %traffic_busy = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14, i32 2
  %12 = ptrtoint ptr %traffic_busy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %traffic_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.cleanup48_crit_edge

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup48

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %assoc_ssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 11
  %call11 = tail call zeroext i8 @r8712_sitesurvey_cmd(ptr noundef %padapter, ptr noundef %assoc_ssid) #3
  br label %cleanup48

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %call14 = tail call i32 @r8712_select_and_join_from_scan(ptr noundef %mlmepriv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %assoc_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 600
  %call18 = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %add) #3
  br label %cleanup48

if.else:                                          ; preds = %if.end13
  %15 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_state, align 8
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %if.else31, label %if.then21

if.then21:                                        ; preds = %if.else
  %18 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 64, ptr %fw_state, align 8
  %MacAddress = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 33, i32 1
  %Ssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 33, i32 3
  %assoc_ssid25 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 11
  %19 = call ptr @memcpy(ptr %Ssid, ptr %assoc_ssid25, i32 36)
  tail call void @r8712_update_registrypriv_dev_network(ptr noundef %padapter) #3
  tail call void @r8712_generate_random_ibss(ptr noundef %MacAddress) #3
  %call26 = tail call i32 @r8712_createbss_cmd(ptr noundef %padapter) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then21.cleanup48_crit_edge

if.then21.cleanup48_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup48

if.end29:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %to_join, align 4
  br label %cleanup48

if.else31:                                        ; preds = %if.else
  %21 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_state, align 8
  %and33 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else31.if.end38_crit_edge, label %if.then35

if.else31.if.end38_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #5
  %xor37 = xor i32 %22, 128
  %23 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %xor37, ptr %fw_state, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.else31.if.end38_crit_edge
  %traffic_busy40 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14, i32 2
  %24 = ptrtoint ptr %traffic_busy40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %traffic_busy40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool41.not = icmp eq i32 %25, 0
  br i1 %tobool41.not, label %if.then42, label %if.end38.cleanup48_crit_edge

if.end38.cleanup48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup48

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  %assoc_ssid43 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 11
  %call44 = tail call zeroext i8 @r8712_sitesurvey_cmd(ptr noundef %padapter, ptr noundef %assoc_ssid43) #3
  br label %cleanup48

cleanup48:                                        ; preds = %if.then42, %if.end38.cleanup48_crit_edge, %if.end29, %if.then21.cleanup48_crit_edge, %if.then16, %if.then10, %if.end.cleanup48_crit_edge
  %retval.1 = phi i8 [ 1, %if.then10 ], [ 1, %if.end.cleanup48_crit_edge ], [ 1, %if.end29 ], [ 1, %if.then42 ], [ 1, %if.end38.cleanup48_crit_edge ], [ 1, %if.then16 ], [ 0, %if.then21.cleanup48_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_set_802_11_ssid(ptr noundef %padapter, ptr nocapture noundef readonly %ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %cur_network = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13
  %hw_init_completed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 20
  %0 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #3
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %3, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end9, label %do.body1.done_crit_edge

do.body1.done_crit_edge:                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end9:                                          ; preds = %do.body1
  %and.i98 = and i32 %3, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99.not = icmp eq i32 %and.i98, 0
  br i1 %tobool.not.i99.not, label %if.end9.if.end48_crit_edge, label %if.then12

if.end9.if.end48_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then12:                                        ; preds = %if.end9
  %assoc_ssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %assoc_ssid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %assoc_ssid, align 4
  %6 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp14 = icmp eq i32 %5, %7
  br i1 %cmp14, label %land.lhs.true, label %if.then12.if.else38_crit_edge

if.then12.if.else38_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else38

land.lhs.true:                                    ; preds = %if.then12
  %Ssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 11, i32 1
  %Ssid17 = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %ssid, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr %Ssid, ptr %Ssid17, i32 %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool20.not = icmp eq i32 %bcmp, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true.if.else38_crit_edge

land.lhs.true.if.else38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else38

if.then21:                                        ; preds = %land.lhs.true
  %8 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool23.not = icmp eq i32 %8, 0
  br i1 %tobool23.not, label %if.then24, label %if.then21.if.end48_crit_edge

if.then21.if.end48_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then24:                                        ; preds = %if.then21
  %call25 = tail call i32 @r8712_is_same_ibss(ptr noundef %padapter, ptr noundef %cur_network) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.then24.done_crit_edge

if.then24.done_crit_edge:                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.then27:                                        ; preds = %if.then24
  tail call void @r8712_disassoc_cmd(ptr noundef %padapter) #3
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 8
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool29.not = icmp eq i32 %11, 0
  br i1 %tobool29.not, label %if.then27.if.end31_crit_edge, label %if.then30

if.then27.if.end31_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r8712_ind_disconnect(ptr noundef %padapter) #3
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then27.if.end31_crit_edge
  tail call void @r8712_free_assoc_resources(ptr noundef %padapter) #3
  %12 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_state.i, align 8
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool33.not = icmp eq i32 %14, 0
  br i1 %tobool33.not, label %if.end31.if.end48_crit_edge, label %if.end31.if.end48.sink.split_crit_edge

if.end31.if.end48.sink.split_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.sink.split

if.end31.if.end48_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.else38:                                        ; preds = %land.lhs.true.if.else38_crit_edge, %if.then12.if.else38_crit_edge
  tail call void @r8712_disassoc_cmd(ptr noundef %padapter) #3
  %15 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_state.i, align 8
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool40.not = icmp eq i32 %17, 0
  br i1 %tobool40.not, label %if.else38.if.end42_crit_edge, label %if.then41

if.else38.if.end42_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r8712_ind_disconnect(ptr noundef %padapter) #3
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.else38.if.end42_crit_edge
  tail call void @r8712_free_assoc_resources(ptr noundef %padapter) #3
  %18 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_state.i, align 8
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool44.not = icmp eq i32 %20, 0
  br i1 %tobool44.not, label %if.end42.if.end48_crit_edge, label %if.end42.if.end48.sink.split_crit_edge

if.end42.if.end48.sink.split_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.sink.split

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.end48.sink.split:                              ; preds = %if.end42.if.end48.sink.split_crit_edge, %if.end31.if.end48.sink.split_crit_edge
  %.sink = phi i32 [ %13, %if.end31.if.end48.sink.split_crit_edge ], [ %19, %if.end42.if.end48.sink.split_crit_edge ]
  %and.i114 = and i32 %.sink, -97
  %or.i = or i32 %and.i114, 32
  %21 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %fw_state.i, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.end42.if.end48_crit_edge, %if.end31.if.end48_crit_edge, %if.then21.if.end48_crit_edge, %if.end9.if.end48_crit_edge
  %btkip_countermeasure = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 34
  %22 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %btkip_countermeasure, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool49.not = icmp eq i8 %23, 0
  br i1 %tobool49.not, label %if.end51, label %if.end48.done_crit_edge

if.end48.done_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end51:                                         ; preds = %if.end48
  %24 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp.i = icmp ugt i32 %25, 32
  br i1 %cmp.i, label %if.end51.done_crit_edge, label %for.cond.preheader.i

if.end51.done_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

for.cond.preheader.i:                             ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp221.not.i = icmp eq i32 %25, 0
  br i1 %cmp221.not.i, label %for.cond.preheader.i.if.end55_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.if.end55_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %wide.trip.count = and i32 %25, 255
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.i.if.end55_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.i.if.end55_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.ndis_802_11_ssid, ptr %ssid, i32 0, i32 1, i32 %indvars.iv
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %28 = add i8 %27, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %28)
  %29 = icmp ult i8 %28, 95
  br i1 %29, label %for.cond.i, label %for.body.i.done_crit_edge

for.body.i.done_crit_edge:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end55:                                         ; preds = %for.cond.i.if.end55_crit_edge, %for.cond.preheader.i.if.end55_crit_edge
  %assoc_ssid56 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 11
  %30 = call ptr @memcpy(ptr %assoc_ssid56, ptr %ssid, i32 36)
  %assoc_by_bssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 16
  %31 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %assoc_by_bssid, align 8
  %call57 = tail call fastcc zeroext i8 @do_join(ptr noundef %padapter)
  br label %done

done:                                             ; preds = %if.end55, %for.body.i.done_crit_edge, %if.end51.done_crit_edge, %if.end48.done_crit_edge, %if.then24.done_crit_edge, %do.body1.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call2) #3
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_is_same_ibss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_set_802_11_infrastructure_mode(ptr noundef %padapter, i32 noundef %networktype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %InfrastructureMode = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 8
  %0 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %networktype)
  %cmp.not = icmp eq i32 %1, %networktype
  br i1 %cmp.not, label %entry.if.end31_crit_edge, label %do.body2

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #3
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 8
  %4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body2.if.then11_crit_edge

do.body2.if.then11_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

lor.lhs.false:                                    ; preds = %do.body2
  %5 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %do.body2.if.then11_crit_edge
  tail call void @r8712_disassoc_cmd(ptr noundef %padapter) #3
  br label %if.end

if.end:                                           ; preds = %if.then11, %lor.lhs.false.if.end_crit_edge
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 8
  %and.i51 = and i32 %8, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52.not = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r8712_free_assoc_resources(ptr noundef %padapter) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 8
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.end15.if.then25_crit_edge

if.end15.if.then25_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25

lor.lhs.false19:                                  ; preds = %if.end15
  %12 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp ult i32 %13, 2
  br i1 %switch, label %lor.lhs.false19.if.then25_crit_edge, label %lor.lhs.false19.if.end26_crit_edge

lor.lhs.false19.if.end26_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

lor.lhs.false19.if.then25_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false19.if.then25_crit_edge, %if.end15.if.then25_crit_edge
  tail call void @r8712_ind_disconnect(ptr noundef %padapter) #3
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %lor.lhs.false19.if.end26_crit_edge
  %14 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %networktype, ptr %InfrastructureMode, align 4
  %15 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_state.i, align 8
  %and.i59 = and i32 %16, -121
  store i32 %and.i59, ptr %fw_state.i, align 8
  %17 = zext i32 %networktype to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %networktype, label %if.end26.sw.epilog_crit_edge [
    i32 0, label %if.end26.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb27
    i32 4, label %sw.bb28
  ]

if.end26.sw.epilog.sink.split_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb28, %sw.bb27, %if.end26.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 16, %sw.bb28 ], [ 8, %sw.bb27 ], [ 32, %if.end26.sw.epilog.sink.split_crit_edge ]
  %or.i64 = or i32 %and.i59, %.sink
  %18 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i64, ptr %fw_state.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end26.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call4) #3
  br label %if.end31

if.end31:                                         ; preds = %sw.epilog, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_set_802_11_disassociate(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #3
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r8712_disassoc_cmd(ptr noundef %padapter) #3
  tail call void @r8712_ind_disconnect(ptr noundef %padapter) #3
  tail call void @r8712_free_assoc_resources(ptr noundef %padapter) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call2) #3
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_set_802_11_bssid_list_scan(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %hw_init_completed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 20
  %0 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #3
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %3, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false, label %do.body4.if.then12_crit_edge

do.body4.if.then12_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

lor.lhs.false:                                    ; preds = %do.body4
  %traffic_busy = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14, i32 2
  %4 = ptrtoint ptr %traffic_busy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %traffic_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.else, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %do.body4.if.then12_crit_edge
  %and.i28 = lshr i32 %3, 11
  %6 = trunc i32 %and.i28 to i8
  %7 = and i8 %6, 1
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r8712_free_network_queue(ptr noundef nonnull %padapter) #3
  %call14 = tail call zeroext i8 @r8712_sitesurvey_cmd(ptr noundef nonnull %padapter, ptr noundef null) #3
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %ret.0 = phi i8 [ %7, %if.then12 ], [ %call14, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call5) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %ret.0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_network_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_sitesurvey_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_set_802_11_authentication_mode(ptr noundef %padapter, i32 noundef %authmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8
  %ndisauthtype = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 24
  %0 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %authmode, ptr %ndisauthtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %authmode)
  %cmp = icmp ugt i32 %authmode, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %securitypriv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @r8712_set_auth(ptr noundef %padapter, ptr noundef %securitypriv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = zext i1 %tobool.not to i8
  ret i8 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_set_auth(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_set_802_11_add_wep(ptr noundef %padapter, ptr nocapture noundef readonly %wep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %KeyIndex = getelementptr inbounds %struct.NDIS_802_11_WEP, ptr %wep, i32 0, i32 1
  %0 = ptrtoint ptr %KeyIndex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %KeyIndex, align 4
  %and = and i32 %1, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8
  %KeyLength = getelementptr inbounds %struct.NDIS_802_11_WEP, ptr %wep, i32 0, i32 2
  %2 = ptrtoint ptr %KeyLength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %KeyLength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 13
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %switch.selectcmp23 = icmp eq i32 %3, 5
  %switch.select24 = select i1 %switch.selectcmp23, i32 1, i32 %switch.select
  %PrivacyAlgrthm3 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %PrivacyAlgrthm3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.select24, ptr %PrivacyAlgrthm3, align 4
  %arrayidx = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 3, i32 %and
  %KeyMaterial = getelementptr inbounds %struct.NDIS_802_11_WEP, ptr %wep, i32 0, i32 3
  %5 = ptrtoint ptr %KeyLength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %KeyLength, align 4
  %7 = call ptr @memcpy(ptr %arrayidx, ptr %KeyMaterial, i32 %6)
  %8 = load i32, ptr %KeyLength, align 4
  %arrayidx6 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 4, i32 %and
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx6, align 4
  %PrivacyKeyIndex = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %PrivacyKeyIndex to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %PrivacyKeyIndex, align 8
  %call = tail call i32 @r8712_set_key(ptr noundef %padapter, ptr noundef %securitypriv, i32 noundef %and) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_set_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_select_and_join_from_scan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_update_registrypriv_dev_network(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_generate_random_ibss(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_createbss_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind readonly willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nobuiltin }

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
