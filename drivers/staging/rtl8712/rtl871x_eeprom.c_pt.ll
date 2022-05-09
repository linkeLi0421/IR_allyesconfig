; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_eeprom.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_eeprom_write16(ptr noundef %padapter, i16 noundef zeroext %reg, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861041) #2
  %and = and i8 %call, -9
  call void @__sanitizer_cov_trace_cmp1(i8 %call, i8 %and)
  %cmp.not = icmp eq i8 %call, %and
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861041, i8 noundef zeroext %and) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860291) #2
  %or = or i8 %call5, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %or, i8 %call5)
  %cmp10.not = icmp eq i8 %or, %call5
  br i1 %cmp10.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860291, i8 noundef zeroext %or) #2
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %call14 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %0 = and i8 %call14, 48
  %1 = or i8 %0, -120
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %1) #2
  tail call fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext 19, i16 noundef zeroext 5)
  %eeprom_address_size = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 19
  %2 = ptrtoint ptr %eeprom_address_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eeprom_address_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp22 = icmp eq i8 %3, 8
  %. = select i1 %cmp22, i16 6, i16 4
  tail call fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext 0, i16 noundef zeroext %.)
  %call.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %4 = and i8 %call.i, -13
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %4) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 10737400) #2
  %6 = or i8 %4, 8
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %6) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 10737400) #2
  %call.i78 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %8 = and i8 %call.i78, -13
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %8) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 10737400) #2
  %10 = or i8 %8, 8
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %10) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 10737400) #2
  tail call fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext 5, i16 noundef zeroext 3)
  %12 = ptrtoint ptr %eeprom_address_size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eeprom_address_size, align 1
  %conv27 = zext i8 %13 to i16
  tail call fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext %reg, i16 noundef zeroext %conv27)
  tail call fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext %data, i16 noundef zeroext 16)
  %call.i.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %14 = and i8 %call.i.i, -13
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %14) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 10737400) #2
  %16 = or i8 %14, 8
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %16) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 10737400) #2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end13
  %i.06.i = phi i16 [ 0, %if.end13 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i79 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %18 = and i8 %call.i79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then29

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 10737400) #2
  %inc.i = add nuw nsw i16 %i.06.i, 1
  %cmp.i = icmp ult i16 %i.06.i, 199
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end30_crit_edge

if.end.i.if.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end30

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

if.then29:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %call.i80 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %20 = and i8 %call.i80, -13
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %20) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 10737400) #2
  %22 = or i8 %20, 8
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %22) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 10737400) #2
  tail call fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext 16, i16 noundef zeroext 5)
  tail call fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext %reg, i16 noundef zeroext 4)
  tail call fastcc void @eeprom_clean(ptr noundef %padapter)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end.i.if.end30_crit_edge
  br i1 %cmp10.not, label %if.end30.if.end36_crit_edge, label %if.then35

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860291, i8 noundef zeroext %call5) #2
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end30.if.end36_crit_edge
  br i1 %cmp.not, label %if.end36.if.end42_crit_edge, label %if.then41

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end42

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861041, i8 noundef zeroext %call) #2
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end36.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext %data, i16 noundef zeroext %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %0 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end:                                           ; preds = %entry
  %conv = zext i16 %count to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %2 = and i8 %call, -4
  %conv4 = zext i8 %2 to i16
  %conv8 = zext i16 %data to i32
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %if.end
  %x.0 = phi i16 [ %conv4, %if.end ], [ %8, %if.end19.do.body_crit_edge ]
  %mask.0 = phi i32 [ %shl, %if.end ], [ %10, %if.end19.do.body_crit_edge ]
  %3 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool17.not = icmp eq i8 %4, 0
  br i1 %tobool17.not, label %if.end19, label %do.body.out_crit_edge

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end19:                                         ; preds = %do.body
  %and10 = and i32 %mask.0, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %5 = and i16 %x.0, -3
  %masksel = select i1 %tobool11.not, i16 0, i16 2
  %spec.select = or i16 %masksel, %5
  %conv20 = trunc i16 %spec.select to i8
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %conv20) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #2
  %conv2.i = or i8 %conv20, 4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %conv2.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 10737400) #2
  %8 = and i16 %spec.select, -5
  %conv2.i41 = trunc i16 %8 to i8
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %conv2.i41) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 10737400) #2
  %conv9 = lshr i32 %mask.0, 1
  %10 = and i32 %conv9, 32767
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %do.end, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.end:                                           ; preds = %if.end19
  %11 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool25.not = icmp eq i8 %12, 0
  br i1 %tobool25.not, label %if.end27, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  %13 = trunc i16 %x.0 to i8
  %conv31 = and i8 %13, -7
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %conv31) #2
  br label %out

out:                                              ; preds = %if.end27, %do.end.out_crit_edge, %do.body.out_crit_edge, %entry.out_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eeprom_clean(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %0 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %2 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = and i8 %call, -11
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %4) #2
  %5 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %7 = or i8 %4, 4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %7) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 10737400) #2
  %9 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  %11 = and i8 %call, -15
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %11) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 10737400) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @r8712_eeprom_read16(ptr noundef %padapter, i16 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861041) #2
  %and = and i8 %call, -9
  call void @__sanitizer_cov_trace_cmp1(i8 %call, i8 %and)
  %cmp.not = icmp eq i8 %call, %and
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861041, i8 noundef zeroext %and) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860291) #2
  %or = or i8 %call5, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %or, i8 %call5)
  %cmp10.not = icmp eq i8 %or, %call5
  br i1 %cmp10.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860291, i8 noundef zeroext %or) #2
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %0 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end15, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end15:                                         ; preds = %if.end13
  %call16 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %2 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool19.not = icmp eq i8 %3, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end21:                                         ; preds = %if.end15
  %4 = and i8 %call16, 48
  %5 = or i8 %4, -120
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %5) #2
  tail call fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext 6, i16 noundef zeroext 3)
  %eeprom_address_size = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 19
  %6 = ptrtoint ptr %eeprom_address_size to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eeprom_address_size, align 1
  %conv29 = zext i8 %7 to i16
  tail call fastcc void @shift_out_bits(ptr noundef %padapter, i16 noundef zeroext %reg, i16 noundef zeroext %conv29)
  %8 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.shift_in_bits.exit_crit_edge

if.end21.shift_in_bits.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %shift_in_bits.exit

if.end.i:                                         ; preds = %if.end21
  %call.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %10 = and i8 %call.i, -4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.end.i
  %i.036.i = phi i16 [ 0, %if.end.i ], [ %inc.i, %if.end10.i.for.body.i_crit_edge ]
  %d.035.i = phi i16 [ 0, %if.end.i ], [ %16, %if.end10.i.for.body.i_crit_edge ]
  %x.0.off034.i = phi i8 [ %10, %if.end.i ], [ %17, %if.end10.i.for.body.i_crit_edge ]
  %shl.i = shl i16 %d.035.i, 1
  %conv2.i.i = or i8 %x.0.off034.i, 4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %conv2.i.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 10737400) #2
  %12 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not.i = icmp eq i8 %13, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %for.body.i.shift_in_bits.exit_crit_edge

for.body.i.shift_in_bits.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %shift_in_bits.exit

if.end10.i:                                       ; preds = %for.body.i
  %call11.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #2
  %14 = and i8 %call11.i, 1
  %15 = zext i8 %14 to i16
  %16 = or i16 %shl.i, %15
  %17 = and i8 %call11.i, -7
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860298, i8 noundef zeroext %17) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 10737400) #2
  %inc.i = add nuw nsw i16 %i.036.i, 1
  %cmp.i = icmp ult i16 %i.036.i, 15
  br i1 %cmp.i, label %if.end10.i.for.body.i_crit_edge, label %if.end10.i.shift_in_bits.exit_crit_edge

if.end10.i.shift_in_bits.exit_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %shift_in_bits.exit

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

shift_in_bits.exit:                               ; preds = %if.end10.i.shift_in_bits.exit_crit_edge, %for.body.i.shift_in_bits.exit_crit_edge, %if.end21.shift_in_bits.exit_crit_edge
  %d.2.i = phi i16 [ 0, %if.end21.shift_in_bits.exit_crit_edge ], [ %shl.i, %for.body.i.shift_in_bits.exit_crit_edge ], [ %16, %if.end10.i.shift_in_bits.exit_crit_edge ]
  tail call fastcc void @eeprom_clean(ptr noundef %padapter)
  br label %out

out:                                              ; preds = %shift_in_bits.exit, %if.end15.out_crit_edge, %if.end13.out_crit_edge
  %data.0 = phi i16 [ 0, %if.end13.out_crit_edge ], [ 0, %if.end15.out_crit_edge ], [ %d.2.i, %shift_in_bits.exit ]
  br i1 %cmp10.not, label %out.if.end36_crit_edge, label %if.then35

out.if.end36_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36

if.then35:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860291, i8 noundef zeroext %call5) #2
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %out.if.end36_crit_edge
  br i1 %cmp.not, label %if.end36.if.end42_crit_edge, label %if.then41

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end42

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861041, i8 noundef zeroext %call) #2
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end36.if.end42_crit_edge
  ret i16 %data.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
!9 = !{i8 0, i8 2}
