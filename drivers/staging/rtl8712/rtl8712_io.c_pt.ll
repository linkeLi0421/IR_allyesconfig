; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl8712_io.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl8712_io.c"
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
%struct.io_queue = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.intf_hdl }
%struct.intf_hdl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_read8(ptr nocapture noundef readonly %adapter, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %_read8 = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 2
  %2 = ptrtoint ptr %_read8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_read8, align 4
  %call = tail call zeroext i8 %3(ptr noundef %intf, i32 noundef %addr) #1
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @r8712_read16(ptr nocapture noundef readonly %adapter, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %_read16 = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 3
  %2 = ptrtoint ptr %_read16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_read16, align 4
  %call = tail call zeroext i16 %3(ptr noundef %intf, i32 noundef %addr) #1
  ret i16 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_read32(ptr nocapture noundef readonly %adapter, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %_read32 = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 4
  %2 = ptrtoint ptr %_read32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_read32, align 4
  %call = tail call i32 %3(ptr noundef %intf, i32 noundef %addr) #1
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_write8(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %_write8 = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 11
  %2 = ptrtoint ptr %_write8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_write8, align 4
  tail call void %3(ptr noundef %intf, i32 noundef %addr, i8 noundef zeroext %val) #1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_write16(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %_write16 = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 12
  %2 = ptrtoint ptr %_write16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_write16, align 4
  tail call void %3(ptr noundef %intf, i32 noundef %addr, i16 noundef zeroext %val) #1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_write32(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %_write32 = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 13
  %2 = ptrtoint ptr %_write32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_write32, align 4
  tail call void %3(ptr noundef %intf, i32 noundef %addr, i32 noundef %val) #1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_read_mem(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %driver_stopped, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 17
  %4 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  %_read_mem = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 14
  %6 = ptrtoint ptr %_read_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_read_mem, align 4
  tail call void %7(ptr noundef %intf, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pmem) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_write_mem(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %_write_mem = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 15
  %2 = ptrtoint ptr %_write_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_write_mem, align 4
  tail call void %3(ptr noundef %intf, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pmem) #1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_read_port(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %driver_stopped, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 17
  %4 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %surprise_removed, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  %_read_port = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 17
  %6 = ptrtoint ptr %_read_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_read_port, align 4
  %call = tail call i32 %7(ptr noundef %intf, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pmem) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_write_port(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %_write_port = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 8, i32 18
  %2 = ptrtoint ptr %_write_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_write_port, align 4
  %call = tail call i32 %3(ptr noundef %intf, i32 noundef %addr, i32 noundef %cnt, ptr noundef %pmem) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

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
