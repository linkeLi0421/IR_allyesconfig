; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/usb_halinit.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/usb_halinit.c"
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
%struct.io_queue = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.intf_hdl }
%struct.intf_hdl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.recv_buf = type { %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_usb_hal_bus_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %registrypriv1 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %registrypriv1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registrypriv1, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end261_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then65
    i8 2, label %entry.if.then151_crit_edge
    i8 3, label %entry.if.then151_crit_edge476
  ]

entry.if.then151_crit_edge476:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then151

entry.if.then151_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then151

entry.if.end261_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860296, i8 noundef zeroext 1) #2
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860312) #2
  %3 = or i8 %call, 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860312, i8 noundef zeroext %3) #2
  %call5 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860304) #2
  %4 = or i8 %call5, 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860304, i8 noundef zeroext %4) #2
  %call9 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860320) #2
  %5 = or i8 %call9, 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860320, i8 noundef zeroext %5) #2
  %call13 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860312) #2
  %6 = or i8 %call13, 2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860312, i8 noundef zeroext %6) #2
  %call17 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860304) #2
  %7 = or i8 %call17, 2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860304, i8 noundef zeroext %7) #2
  %call21 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860289) #2
  %8 = or i8 %call21, 8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860289, i8 noundef zeroext %8) #2
  %call25 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860289) #2
  %9 = and i8 %call25, -17
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860289, i8 noundef zeroext %9) #2
  %call28 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860327) #2
  %10 = and i8 %call28, -5
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860327, i8 noundef zeroext %10) #2
  %call32 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860328) #2
  %11 = or i8 %call32, 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860328, i8 noundef zeroext %11) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860288, i8 noundef zeroext -18) #2
  %call36 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860297) #2
  %12 = or i8 %call36, 8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860297, i8 noundef zeroext %12) #2
  %call40 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860291) #2
  %13 = or i8 %call40, 8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860291, i8 noundef zeroext %13) #2
  %14 = or i8 %call40, -120
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860291, i8 noundef zeroext %14) #2
  %call47 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860297) #2
  %15 = and i8 %call47, 63
  %16 = or i8 %15, -128
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860297, i8 noundef zeroext %16) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860352, i8 noundef zeroext -4) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860353, i8 noundef zeroext 55) #2
  %call52 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860459) #2
  %17 = or i8 %call52, -64
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860459, i8 noundef zeroext %17) #2
  %call57 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860296) #2
  %18 = and i8 %call57, -5
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860296, i8 noundef zeroext %18) #2
  br label %if.end261

if.then65:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860306, i8 noundef zeroext 83) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860305, i8 noundef zeroext 87) #2
  %call66 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860304) #2
  %19 = or i8 %call66, 3
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860304, i8 noundef zeroext %19) #2
  %call71 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860320) #2
  %20 = or i8 %call71, 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860320, i8 noundef zeroext %20) #2
  %call75 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860312) #2
  %21 = or i8 %call75, 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860312, i8 noundef zeroext %21) #2
  tail call void @msleep(i32 noundef 20) #2
  %call79 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860312) #2
  %22 = or i8 %call79, 2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860312, i8 noundef zeroext %22) #2
  tail call void @r8712_write32(ptr noundef %adapter, i32 noundef 270860312, i32 noundef 10990183) #2
  %call83 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860289) #2
  %23 = or i8 %call83, 8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860289, i8 noundef zeroext %23) #2
  %call87 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860291) #2
  %24 = or i8 %call87, 32
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860291, i8 noundef zeroext %24) #2
  %call91 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860289) #2
  %25 = and i8 %call91, 111
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860289, i8 noundef zeroext %25) #2
  %call95 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860327) #2
  %26 = and i8 %call95, -5
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860327, i8 noundef zeroext %26) #2
  %call99 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860328) #2
  %27 = or i8 %call99, 17
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860328, i8 noundef zeroext %27) #2
  %call103 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860288) #2
  %28 = and i8 %call103, -18
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860288, i8 noundef zeroext %28) #2
  %call107 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860296) #2
  %29 = and i8 %call107, -2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860296, i8 noundef zeroext %29) #2
  %call111 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860296) #2
  %call112 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860297) #2
  %30 = or i8 %call112, 24
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860297, i8 noundef zeroext %30) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860292, i8 noundef zeroext 2) #2
  %call116 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860291) #2
  %31 = or i8 %call116, 8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860291, i8 noundef zeroext %31) #2
  %call120 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860291) #2
  %32 = or i8 %call120, -128
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860291, i8 noundef zeroext %32) #2
  %call124 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860297) #2
  %33 = and i8 %call124, 63
  %34 = or i8 %33, -128
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860297, i8 noundef zeroext %34) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860352, i8 noundef zeroext -4) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860353, i8 noundef zeroext 55) #2
  %call129 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270925404) #2
  %35 = or i8 %call129, -128
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270925404, i8 noundef zeroext %35) #2
  %call133 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860459) #2
  %36 = or i8 %call133, -64
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860459, i8 noundef zeroext %36) #2
  %call138 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860296) #2
  %37 = and i8 %call138, -5
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860296, i8 noundef zeroext %37) #2
  br label %if.end261

if.then151:                                       ; preds = %entry.if.then151_crit_edge, %entry.if.then151_crit_edge476
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 55, i8 noundef zeroext -80) #2
  tail call void @msleep(i32 noundef 20) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 55, i8 noundef zeroext 48) #2
  %call152 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860297) #2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call152)
  %tobool.not = icmp sgt i8 %call152, -1
  br i1 %tobool.not, label %if.then151.if.end_crit_edge, label %if.then155

if.then151.if.end_crit_edge:                      ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then155:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #4
  %and157 = and i8 %call152, 63
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860297, i8 noundef zeroext %and157) #2
  br label %if.end

if.end:                                           ; preds = %if.then155, %if.then151.if.end_crit_edge
  %call159 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860291) #2
  %38 = and i8 %call159, 115
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860291, i8 noundef zeroext %38) #2
  tail call void @msleep(i32 noundef 20) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860306, i8 noundef zeroext 83) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860305, i8 noundef zeroext 87) #2
  %call163 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860304) #2
  %39 = or i8 %call163, 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860304, i8 noundef zeroext %39) #2
  %40 = or i8 %call163, 11
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860304, i8 noundef zeroext %40) #2
  %call172 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860320) #2
  %41 = or i8 %call172, 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860320, i8 noundef zeroext %41) #2
  %call176 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860321) #2
  %42 = or i8 %call176, 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860321, i8 noundef zeroext %42) #2
  %call180 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860289) #2
  %43 = or i8 %call180, 8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860289, i8 noundef zeroext %43) #2
  %call184 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860291) #2
  %44 = or i8 %call184, 32
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860291, i8 noundef zeroext %44) #2
  %call188 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860289) #2
  %45 = and i8 %call188, 104
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860289, i8 noundef zeroext %45) #2
  %call192 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860327) #2
  %46 = and i8 %call192, -5
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860327, i8 noundef zeroext %46) #2
  %call196 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860328) #2
  %or198 = or i8 %call196, 17
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860328, i8 noundef zeroext %or198) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 107374000) #2
  %48 = or i8 %call196, 81
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860328, i8 noundef zeroext %48) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 107374000) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860328, i8 noundef zeroext %or198) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 107374000) #2
  %call206 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860288) #2
  %51 = and i8 %call206, -18
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860288, i8 noundef zeroext %51) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860296, i8 noundef zeroext 0) #2
  %call210 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860296) #2
  %52 = or i8 %call210, -96
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860296, i8 noundef zeroext %52) #2
  %call214 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860297) #2
  %53 = or i8 %call214, 24
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860297, i8 noundef zeroext %53) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860292, i8 noundef zeroext 2) #2
  %call218 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860291) #2
  %54 = or i8 %call218, 8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860291, i8 noundef zeroext %54) #2
  %call222 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860291) #2
  %55 = or i8 %call222, -128
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860291, i8 noundef zeroext %55) #2
  %call226 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860297) #2
  %56 = and i8 %call226, 63
  %57 = or i8 %56, -128
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860297, i8 noundef zeroext %57) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860352, i8 noundef zeroext -4) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860353, i8 noundef zeroext 55) #2
  %call231 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270925404) #2
  %58 = or i8 %call231, -128
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270925404, i8 noundef zeroext %58) #2
  %call235 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860296) #2
  %59 = and i8 %call235, -5
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860296, i8 noundef zeroext %59) #2
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270925340, i8 noundef zeroext -128) #2
  br label %do.body

do.body:                                          ; preds = %if.end245.do.body_crit_edge, %if.end
  %PollingCnt.0 = phi i32 [ 20, %if.end ], [ %dec, %if.end245.do.body_crit_edge ]
  %call239 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860356) #2
  %60 = and i8 %call239, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %60)
  %cmp242 = icmp eq i8 %60, 10
  br i1 %cmp242, label %do.end, label %if.end245

if.end245:                                        ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 1073740) #2
  %dec = add nsw i32 %PollingCnt.0, -1
  %tobool246.not = icmp eq i32 %PollingCnt.0, 0
  br i1 %tobool246.not, label %if.end245.if.then249_crit_edge, label %if.end245.do.body_crit_edge

if.end245.do.body_crit_edge:                      ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

if.end245.if.then249_crit_edge:                   ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then249

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %PollingCnt.0)
  %cmp247 = icmp slt i32 %PollingCnt.0, 1
  br i1 %cmp247, label %do.end.if.then249_crit_edge, label %do.end.if.end261_crit_edge

do.end.if.end261_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end261

do.end.if.then249_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then249

if.then249:                                       ; preds = %do.end.if.then249_crit_edge, %if.end245.if.then249_crit_edge
  %call250 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860352) #2
  %and252 = and i8 %call250, -17
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860352, i8 noundef zeroext %and252) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 429496) #2
  %63 = or i8 %call250, 16
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860352, i8 noundef zeroext %63) #2
  br label %if.end261

if.end261:                                        ; preds = %if.then249, %do.end.if.end261_crit_edge, %if.then65, %if.then, %entry.if.end261_crit_edge
  %ret.0 = phi i8 [ 1, %if.then ], [ 1, %if.then65 ], [ 1, %if.then249 ], [ 1, %do.end.if.end261_crit_edge ], [ 0, %entry.if.end261_crit_edge ]
  ret i8 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_usb_inirp_init(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %ff_hwaddr = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 6, i32 15
  %2 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 272105472, ptr %ff_hwaddr, align 4
  %precv_buf = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 6, i32 20
  %3 = ptrtoint ptr %precv_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %precv_buf, align 4
  %free_recv_buf_queue_cnt = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 6, i32 22
  %call = tail call i32 @r8712_usb_read_port(ptr noundef %intf, i32 noundef 272105472, i32 noundef 0, ptr noundef %4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr %struct.recv_buf, ptr %4, i32 1
  %5 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %free_recv_buf_queue_cnt, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %free_recv_buf_queue_cnt, align 4
  %7 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ff_hwaddr, align 4
  %call.1 = tail call i32 @r8712_usb_read_port(ptr noundef %intf, i32 noundef %8, i32 noundef 0, ptr noundef %incdec.ptr) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp4.1 = icmp eq i32 %call.1, 0
  br i1 %cmp4.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %incdec.ptr.1 = getelementptr %struct.recv_buf, ptr %4, i32 2
  %9 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %free_recv_buf_queue_cnt, align 4
  %dec.1 = add i32 %10, -1
  store i32 %dec.1, ptr %free_recv_buf_queue_cnt, align 4
  %11 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ff_hwaddr, align 4
  %call.2 = tail call i32 @r8712_usb_read_port(ptr noundef %intf, i32 noundef %12, i32 noundef 0, ptr noundef %incdec.ptr.1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp4.2 = icmp eq i32 %call.2, 0
  br i1 %cmp4.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %incdec.ptr.2 = getelementptr %struct.recv_buf, ptr %4, i32 3
  %13 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %free_recv_buf_queue_cnt, align 4
  %dec.2 = add i32 %14, -1
  store i32 %dec.2, ptr %free_recv_buf_queue_cnt, align 4
  %15 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ff_hwaddr, align 4
  %call.3 = tail call i32 @r8712_usb_read_port(ptr noundef %intf, i32 noundef %16, i32 noundef 0, ptr noundef %incdec.ptr.2) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp4.3 = icmp eq i32 %call.3, 0
  br i1 %cmp4.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %incdec.ptr.3 = getelementptr %struct.recv_buf, ptr %4, i32 4
  %17 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_recv_buf_queue_cnt, align 4
  %dec.3 = add i32 %18, -1
  store i32 %dec.3, ptr %free_recv_buf_queue_cnt, align 4
  %19 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ff_hwaddr, align 4
  %call.4 = tail call i32 @r8712_usb_read_port(ptr noundef %intf, i32 noundef %20, i32 noundef 0, ptr noundef %incdec.ptr.3) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp4.4 = icmp eq i32 %call.4, 0
  br i1 %cmp4.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  %incdec.ptr.4 = getelementptr %struct.recv_buf, ptr %4, i32 5
  %21 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %free_recv_buf_queue_cnt, align 4
  %dec.4 = add i32 %22, -1
  store i32 %dec.4, ptr %free_recv_buf_queue_cnt, align 4
  %23 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ff_hwaddr, align 4
  %call.5 = tail call i32 @r8712_usb_read_port(ptr noundef %intf, i32 noundef %24, i32 noundef 0, ptr noundef %incdec.ptr.4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp4.5 = icmp eq i32 %call.5, 0
  br i1 %cmp4.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  %incdec.ptr.5 = getelementptr %struct.recv_buf, ptr %4, i32 6
  %25 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %free_recv_buf_queue_cnt, align 4
  %dec.5 = add i32 %26, -1
  store i32 %dec.5, ptr %free_recv_buf_queue_cnt, align 4
  %27 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ff_hwaddr, align 4
  %call.6 = tail call i32 @r8712_usb_read_port(ptr noundef %intf, i32 noundef %28, i32 noundef 0, ptr noundef %incdec.ptr.5) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp4.6 = icmp eq i32 %call.6, 0
  br i1 %cmp4.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  %incdec.ptr.6 = getelementptr %struct.recv_buf, ptr %4, i32 7
  %29 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %free_recv_buf_queue_cnt, align 4
  %dec.6 = add i32 %30, -1
  store i32 %dec.6, ptr %free_recv_buf_queue_cnt, align 4
  %31 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ff_hwaddr, align 4
  %call.7 = tail call i32 @r8712_usb_read_port(ptr noundef %intf, i32 noundef %32, i32 noundef 0, ptr noundef %incdec.ptr.6) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp4.7 = icmp eq i32 %call.7, 0
  br i1 %cmp4.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #4
  %33 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %free_recv_buf_queue_cnt, align 4
  %dec.7 = add i32 %34, -1
  store i32 %dec.7, ptr %free_recv_buf_queue_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 1, %if.end.7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_usb_read_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_usb_inirp_deinit(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8712_usb_read_port_cancel(ptr noundef %adapter) #2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_usb_read_port_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
