; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_mp_ioctl.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_mp_ioctl.c"
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
%struct.bb_reg_param = type { i32, i32 }
%struct.rf_reg_param = type { i32, i32, i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.mp_rw_reg = type { i32, i32, i32 }
%struct.EFUSE_ACCESS_STRUCT = type { i16, i16, [0 x i8] }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mp_pseudo_adhoc\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [46 x i8] c"../drivers/staging/rtl8712/rtl871x_mp_ioctl.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 165, i32 44 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_null_function(ptr nocapture noundef readnone %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_wireless_mode_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %2 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_of_oid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end18_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then6
  ]

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then:                                          ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %5 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not = icmp eq i32 %6, 0
  br i1 %cmp1.not, label %if.then.if.end18_crit_edge, label %if.then2

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %7 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %information_buf, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %wireless_mode = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 9, i32 7
  %11 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %wireless_mode, align 1
  br label %if.end18

if.then6:                                         ; preds = %entry
  %information_buf_len7 = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %12 = ptrtoint ptr %information_buf_len7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %information_buf_len7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8.not = icmp eq i32 %13, 0
  br i1 %cmp8.not, label %if.then6.if.end18_crit_edge, label %if.then9

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %wireless_mode11 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 9, i32 7
  %14 = ptrtoint ptr %wireless_mode11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wireless_mode11, align 1
  %information_buf12 = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %16 = ptrtoint ptr %information_buf12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %information_buf12, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %15, ptr %17, align 1
  %19 = ptrtoint ptr %information_buf_len7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %information_buf_len7, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %21 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bytes_rw, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %22, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.then6.if.end18_crit_edge, %if.then2, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %status.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then9 ], [ -1073676268, %if.then.if.end18_crit_edge ], [ -1073676268, %if.then6.if.end18_crit_edge ], [ 65539, %entry.if.end18_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_write_bb_reg_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp1 = icmp ult i32 %5, 8
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = trunc i32 %9 to i16
  %conv6 = and i16 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %conv6)
  %cmp8 = icmp ult i16 %conv6, 2048
  %11 = or i16 %conv6, 2048
  %spec.select = select i1 %cmp8, i16 %11, i16 %conv6
  %value14 = getelementptr inbounds %struct.bb_reg_param, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %value14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value14, align 4
  %call = tail call zeroext i8 @r8712_bb_reg_write(ptr noundef %1, i16 noundef zeroext %spec.select, i32 noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_bb_reg_write(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_read_bb_reg_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp1 = icmp ult i32 %5, 8
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = trunc i32 %9 to i16
  %conv6 = and i16 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %conv6)
  %cmp8 = icmp ult i16 %conv6, 2048
  %11 = or i16 %conv6, 2048
  %spec.select = select i1 %cmp8, i16 %11, i16 %conv6
  %call = tail call i32 @r8712_bb_reg_read(ptr noundef %1, i16 noundef zeroext %spec.select) #6
  %value14 = getelementptr inbounds %struct.bb_reg_param, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %value14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %value14, align 4
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

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_bb_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_write_rf_reg_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp1 = icmp ult i32 %5, 12
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %conv5 = and i32 %9, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %cmp6.not = icmp eq i32 %conv5, 0
  br i1 %cmp6.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %9 to i8
  %offset10 = getelementptr inbounds %struct.rf_reg_param, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %offset10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset10, align 4
  %conv11 = trunc i32 %11 to i8
  %value12 = getelementptr inbounds %struct.rf_reg_param, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value12, align 4
  %call = tail call zeroext i8 @r8712_rf_reg_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv11, i32 noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ], [ 65539, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_rf_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_read_rf_reg_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp1 = icmp ult i32 %5, 12
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %conv5 = and i32 %9, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %cmp6.not = icmp eq i32 %conv5, 0
  br i1 %cmp6.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %9 to i8
  %offset10 = getelementptr inbounds %struct.rf_reg_param, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %offset10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset10, align 4
  %conv11 = trunc i32 %11 to i8
  %call = tail call i32 @r8712_rf_reg_read(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv11) #6
  %value12 = getelementptr inbounds %struct.rf_reg_param, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %value12, align 4
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

cleanup:                                          ; preds = %if.end9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ], [ 65539, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_rf_reg_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_set_data_rate_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1.not = icmp eq i32 %5, 4
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %9)
  %cmp4 = icmp ugt i32 %9, 27
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %curr_rateidx = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 10
  %10 = ptrtoint ptr %curr_rateidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %curr_rateidx, align 4
  tail call void @r8712_SetDataRate(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ], [ -1073676267, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SetDataRate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_start_test_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %mode1 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 22
  %8 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode1, align 4
  %mlmepriv.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 884) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.mp_start_test.exit.thread_crit_edge, label %if.end.i

if.end.mp_start_test.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mp_start_test.exit.thread

if.end.i:                                         ; preds = %if.end
  %MacAddress.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i.i, i32 0, i32 1
  %network_macaddr.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 21
  %10 = call ptr @memcpy(ptr %MacAddress.i, ptr %network_macaddr.i, i32 6)
  %Ssid.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %Ssid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %Ssid.i, align 4
  %Ssid3.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %12 = call ptr @memcpy(ptr %Ssid3.i, ptr @.str, i32 16)
  %InfrastructureMode.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %InfrastructureMode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %InfrastructureMode.i, align 4
  %NetworkTypeInUse.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %NetworkTypeInUse.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %NetworkTypeInUse.i, align 8
  %IELength.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %IELength.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %IELength.i, align 8
  %call7.i = tail call i32 @r8712_get_wlan_bssid_ex_sz(ptr noundef nonnull %call7.i.i.i) #6
  %call7.biased.i = add i32 %call7.i, 3
  %storemerge.i = and i32 %call7.biased.i, -4
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %call7.i.i.i, align 8
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv.i) #6
  %fw_state.i.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_state.i.i, align 8
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not.i = icmp eq i32 %19, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end.i.mp_start_test.exit_crit_edge

if.end.i.mp_start_test.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mp_start_test.exit

if.end20.i:                                       ; preds = %if.end.i
  %prev_fw_state.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 23
  %20 = ptrtoint ptr %prev_fw_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %prev_fw_state.i, align 4
  %21 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp22.i = icmp eq i32 %22, 1
  %or.i90.i = select i1 %cmp22.i, i32 4259968, i32 65664
  %23 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i90.i, ptr %fw_state.i.i, align 8
  %stapriv.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 7
  %network.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 13, i32 6
  %MacAddress26.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 13, i32 6, i32 1
  %call28.i = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv.i, ptr noundef %MacAddress26.i) #6
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.end20.i.if.end31.i_crit_edge, label %if.then30.i

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r8712_free_stainfo(ptr noundef %1, ptr noundef nonnull %call28.i) #6
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %if.end20.i.if.end31.i_crit_edge
  %call35.i = tail call ptr @r8712_alloc_stainfo(ptr noundef %stapriv.i, ptr noundef %MacAddress.i) #6
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %if.end31.i.mp_start_test.exit_crit_edge, label %if.end38.i

if.end31.i.mp_start_test.exit_crit_edge:          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mp_start_test.exit

if.end38.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %join_res.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 13, i32 5
  %24 = ptrtoint ptr %join_res.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %join_res.i, align 4
  %aid.i = getelementptr inbounds %struct.sta_info, ptr %call35.i, i32 0, i32 6
  %25 = ptrtoint ptr %aid.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %aid.i, align 4
  %aid39.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 13, i32 4
  %26 = ptrtoint ptr %aid39.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %aid39.i, align 4
  %27 = call ptr @memcpy(ptr %network.i, ptr %call7.i.i.i, i32 %call7.i)
  %28 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_state.i.i, align 8
  %and.i92.i = and i32 %29, -129
  store i32 %and.i92.i, ptr %fw_state.i.i, align 8
  tail call void @r8712_os_indicate_connect(ptr noundef %1) #6
  %30 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw_state.i.i, align 8
  %or.i94.i = or i32 %31, 1
  store i32 %or.i94.i, ptr %fw_state.i.i, align 8
  br label %mp_start_test.exit

mp_start_test.exit:                               ; preds = %if.end38.i, %if.end31.i.mp_start_test.exit_crit_edge, %if.end.i.mp_start_test.exit_crit_edge
  %tobool.not = phi i32 [ 0, %if.end.i.mp_start_test.exit_crit_edge ], [ 65539, %if.end31.i.mp_start_test.exit_crit_edge ], [ 0, %if.end38.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv.i, i32 noundef %call14.i) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %mp_start_test.exit.thread

mp_start_test.exit.thread:                        ; preds = %mp_start_test.exit, %if.end.mp_start_test.exit.thread_crit_edge
  %32 = phi i32 [ 65539, %if.end.mp_start_test.exit.thread_crit_edge ], [ %tobool.not, %mp_start_test.exit ]
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270860364, i8 noundef zeroext 1) #6
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270860360, i8 noundef zeroext 0) #6
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270860362, i8 noundef zeroext 87) #6
  tail call void @r8712_write16(ptr noundef %1, i32 noundef 270860566, i16 noundef zeroext 0) #6
  %call4 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270860298) #6
  %33 = and i8 %call4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool5.not = icmp eq i8 %33, 0
  br i1 %tobool5.not, label %if.then6, label %mp_start_test.exit.thread.cleanup_crit_edge

mp_start_test.exit.thread.cleanup_crit_edge:      ; preds = %mp_start_test.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %mp_start_test.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call zeroext i8 @r8712_efuse_reg_init(ptr noundef %1) #6
  tail call void @r8712_efuse_change_max_size(ptr noundef %1) #6
  tail call void @r8712_efuse_reg_uninit(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %mp_start_test.exit.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 65539, %entry.cleanup_crit_edge ], [ %32, %if.then6 ], [ %32, %mp_start_test.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_efuse_reg_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_efuse_change_max_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_efuse_reg_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_stop_test_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %mlmepriv.i = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 1
  %cur_network.i = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 1, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv.i) #6
  %fw_state.i.i = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i.i, align 8
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.mp_stop_test.exit_crit_edge, label %if.end.i

if.end.mp_stop_test.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mp_stop_test.exit

if.end.i:                                         ; preds = %if.end
  tail call void @r8712_os_indicate_disconnect(ptr noundef %3) #6
  %stapriv.i = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 7
  %MacAddress.i = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 1, i32 13, i32 6, i32 1
  %call6.i = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv.i, ptr noundef %MacAddress.i) #6
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then8.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r8712_free_stainfo(ptr noundef %3, ptr noundef nonnull %call6.i) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end.i.if.end9.i_crit_edge
  %prev_fw_state.i = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 15, i32 23
  %7 = ptrtoint ptr %prev_fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prev_fw_state.i, align 4
  %9 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fw_state.i.i, align 8
  %10 = call ptr @memset(ptr %cur_network.i, i32 0, i32 912)
  br label %mp_stop_test.exit

mp_stop_test.exit:                                ; preds = %if.end9.i, %if.end.mp_stop_test.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv.i, i32 noundef %call2.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mp_stop_test.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mp_stop_test.exit ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_set_channel_direct_call_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1.not = icmp eq i32 %5, 4
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp4 = icmp ugt i32 %9, 14
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %curr_ch = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 9
  %10 = ptrtoint ptr %curr_ch to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %curr_ch, align 8
  tail call void @r8712_SetChannel(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ], [ 65539, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SetChannel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_set_antenna_bb_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1.not = icmp eq i32 %5, 4
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %shr = lshr i32 %9, 16
  %conv = trunc i32 %shr to i16
  %antenna_tx = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 15
  %10 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %antenna_tx, align 8
  %conv5 = trunc i32 %9 to i16
  %antenna_rx = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 16
  %11 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5, ptr %antenna_rx, align 2
  tail call void @r8712_SwitchAntenna(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SwitchAntenna(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_set_tx_power_control_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1.not = icmp eq i32 %5, 4
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %cmp4 = icmp ugt i32 %9, 64
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %9 to i8
  %curr_txpoweridx = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 13
  %10 = ptrtoint ptr %curr_txpoweridx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %curr_txpoweridx, align 2
  tail call void @r8712_SetTxPower(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ], [ 65539, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SetTxPower(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_pro_query_tx_packet_sent_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp eq i32 %5, 4
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_pktcount = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 4
  %6 = ptrtoint ptr %tx_pktcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pktcount, align 8
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
define dso_local i32 @oid_rt_pro_query_rx_packet_received_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp eq i32 %5, 4
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rx_pktcount = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 5
  %6 = ptrtoint ptr %rx_pktcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pktcount, align 4
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
define dso_local i32 @oid_rt_pro_query_rx_packet_crc32_error_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp eq i32 %5, 4
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rx_crcerrpktcount = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 6
  %6 = ptrtoint ptr %rx_crcerrpktcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_crcerrpktcount, align 8
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
define dso_local i32 @oid_rt_pro_reset_tx_packet_sent_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %tx_pktcount = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %tx_pktcount to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tx_pktcount, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_pro_reset_rx_packet_received_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp eq i32 %5, 4
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rx_pktcount = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 5
  %6 = ptrtoint ptr %rx_pktcount to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rx_pktcount, align 4
  %rx_crcerrpktcount = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 6
  %7 = ptrtoint ptr %rx_crcerrpktcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rx_crcerrpktcount, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_reset_phy_rx_packet_count_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  tail call void @r8712_ResetPhyRxPktCount(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_ResetPhyRxPktCount(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_get_phy_rx_packet_received_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1.not = icmp eq i32 %5, 4
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @r8712_GetPhyRxPktReceived(ptr noundef %1) #6
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %7, align 4
  %9 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %11 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bytes_rw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_GetPhyRxPktReceived(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_get_phy_rx_packet_crc32_error_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1.not = icmp eq i32 %5, 4
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @r8712_GetPhyRxPktCRC32Error(ptr noundef %1) #6
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %7, align 4
  %9 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %11 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bytes_rw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_GetPhyRxPktCRC32Error(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_pro_set_modulation_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %curr_modem = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 15, i32 12
  %8 = ptrtoint ptr %curr_modem to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %curr_modem, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_set_continuous_tx_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv = trunc i32 %7 to i8
  tail call void @r8712_SetContinuousTx(ptr noundef %3, i8 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SetContinuousTx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_set_single_carrier_tx_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv = trunc i32 %7 to i8
  tail call void @r8712_SetSingleCarrierTx(ptr noundef %3, i8 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SetSingleCarrierTx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_set_carrier_suppression_tx_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv = trunc i32 %7 to i8
  tail call void @r8712_SetCarrierSuppressionTx(ptr noundef %3, i8 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SetCarrierSuppressionTx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_set_single_tone_tx_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv = trunc i32 %7 to i8
  tail call void @r8712_SetSingleToneTx(ptr noundef %3, i8 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SetSingleToneTx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_read_register_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 270862336, i32 %8)
  %9 = icmp eq i32 %8, 270862336
  br i1 %9, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = trunc i32 %7 to i16
  %call = tail call i32 @r8712_bb_reg_read(ptr noundef %1, i16 noundef zeroext %10) #6
  br label %if.end22.sink.split

if.else:                                          ; preds = %if.end
  %width = getelementptr inbounds %struct.mp_rw_reg, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %12, label %if.else.if.end22_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 4, label %sw.bb18
  ]

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef %7) #6
  %conv11 = zext i8 %call10 to i32
  br label %if.end22.sink.split

sw.bb13:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call zeroext i16 @r8712_read16(ptr noundef %1, i32 noundef %7) #6
  %conv16 = zext i16 %call15 to i32
  br label %if.end22.sink.split

sw.bb18:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 @r8712_read32(ptr noundef %1, i32 noundef %7) #6
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %sw.bb18, %sw.bb13, %sw.bb, %if.then5
  %conv11.sink = phi i32 [ %conv11, %sw.bb ], [ %conv16, %sw.bb13 ], [ %call20, %sw.bb18 ], [ %call, %if.then5 ]
  %value12 = getelementptr inbounds %struct.mp_rw_reg, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv11.sink, ptr %value12, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.else.if.end22_crit_edge
  %status.0 = phi i32 [ 65539, %if.else.if.end22_crit_edge ], [ 0, %if.end22.sink.split ]
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
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

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end22 ], [ 65539, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @r8712_read16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_read32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_write_register_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 270862336, i32 %8)
  %9 = icmp eq i32 %8, 270862336
  br i1 %9, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %10 = trunc i32 %7 to i16
  %value9 = getelementptr inbounds %struct.mp_rw_reg, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value9, align 4
  %width = getelementptr inbounds %struct.mp_rw_reg, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %14, label %if.then5.sw.epilog_crit_edge [
    i32 1, label %if.then5.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb12
  ]

if.then5.sw.epilog.sink.split_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.then5.sw.epilog_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb12, %if.then5.sw.epilog.sink.split_crit_edge
  %.sink64 = phi i32 [ -65536, %sw.bb12 ], [ -256, %if.then5.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 65535, %sw.bb12 ], [ 255, %if.then5.sw.epilog.sink.split_crit_edge ]
  %call13 = tail call i32 @r8712_bb_reg_read(ptr noundef %1, i16 noundef zeroext %10) #6
  %and14 = and i32 %call13, %.sink64
  %and15 = and i32 %12, %.sink
  %or16 = or i32 %and14, %and15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then5.sw.epilog_crit_edge
  %value.0 = phi i32 [ %12, %if.then5.sw.epilog_crit_edge ], [ %or16, %sw.epilog.sink.split ]
  %call17 = tail call zeroext i8 @r8712_bb_reg_write(ptr noundef %1, i16 noundef zeroext %10, i32 noundef %value.0) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %width18 = getelementptr inbounds %struct.mp_rw_reg, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %width18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width18, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %17, label %if.else.cleanup_crit_edge [
    i32 1, label %sw.bb19
    i32 2, label %sw.bb23
    i32 4, label %sw.bb27
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb19:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %value21 = getelementptr inbounds %struct.mp_rw_reg, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %value21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value21, align 4
  %conv22 = trunc i32 %20 to i8
  tail call void @r8712_write8(ptr noundef %1, i32 noundef %7, i8 noundef zeroext %conv22) #6
  br label %cleanup

sw.bb23:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %value25 = getelementptr inbounds %struct.mp_rw_reg, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %value25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value25, align 4
  %conv26 = trunc i32 %22 to i16
  tail call void @r8712_write16(ptr noundef %1, i32 noundef %7, i16 noundef zeroext %conv26) #6
  br label %cleanup

sw.bb27:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %value29 = getelementptr inbounds %struct.mp_rw_reg, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %value29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value29, align 4
  tail call void @r8712_write32(ptr noundef %1, i32 noundef %7, i32 noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %sw.bb23, %sw.bb19, %if.else.cleanup_crit_edge, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 65539, %entry.cleanup_crit_edge ], [ 0, %sw.epilog ], [ 0, %sw.bb27 ], [ 0, %sw.bb23 ], [ 0, %sw.bb19 ], [ 65539, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_get_thermal_meter_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %act_in_progress = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 2
  %4 = ptrtoint ptr %act_in_progress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %act_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %6 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
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
  store i32 33, ptr %act_type, align 4
  %io_offset = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 1, i32 2
  %11 = ptrtoint ptr %io_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %io_offset, align 4
  %io_value = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 1, i32 3
  %12 = ptrtoint ptr %io_value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %io_value, align 4
  tail call void @r8712_GetThermalMeter(ptr noundef %1, ptr noundef %io_value) #6
  %13 = ptrtoint ptr %workparam to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %workparam, align 4
  %14 = ptrtoint ptr %act_in_progress to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %act_in_progress, align 4
  %15 = ptrtoint ptr %io_value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_value, align 4
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %17 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %information_buf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %18, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %20 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bytes_rw, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 65539, %entry.cleanup_crit_edge ], [ 65539, %if.end.cleanup_crit_edge ], [ -1073676268, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_GetThermalMeter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_read_efuse_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ult i32 %5, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %cnts4 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %cnts4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cnts4, align 2
  %data5 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, ptr %7, i32 0, i32 2
  %conv = zext i16 %11 to i32
  %12 = call ptr @memset(ptr %data5, i32 255, i32 %conv)
  %conv6 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %9)
  %cmp7 = icmp ugt i16 %9, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp10 = icmp eq i16 %11, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp10
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %11)
  %cmp14 = icmp ugt i16 %11, 512
  %or.cond45 = select i1 %or.cond, i1 true, i1 %cmp14
  %add = add nuw nsw i32 %conv, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add)
  %cmp19 = icmp ugt i32 %add, 512
  %or.cond46 = select i1 %or.cond45, i1 true, i1 %cmp19
  br i1 %or.cond46, label %if.end3.cleanup_crit_edge, label %if.end22

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i8 @r8712_efuse_access(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %9, i16 noundef zeroext %11, ptr noundef %data5) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  %spec.select = select i1 %tobool.not, i32 -1073741823, i32 0
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

cleanup:                                          ; preds = %if.end22, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end22 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ], [ 65539, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_efuse_access(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_write_efuse_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %4 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %information_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %cnts1 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %cnts1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cnts1, align 2
  %data2 = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, ptr %5, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %7)
  %cmp3 = icmp ugt i16 %7, 511
  %10 = add i16 %9, -513
  call void @__sanitizer_cov_trace_const_cmp2(i16 -512, i16 %10)
  %11 = icmp ult i16 %10, -512
  %or.cond = select i1 %cmp3, i1 true, i1 %11
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end
  %conv = zext i16 %7 to i32
  %conv5 = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv5, %conv
  %call = tail call i32 @r8712_efuse_get_max_size(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %call)
  %cmp15 = icmp sgt i32 %add, %call
  br i1 %cmp15, label %lor.lhs.false12.cleanup_crit_edge, label %if.end18

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call zeroext i8 @r8712_efuse_access(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %7, i16 noundef zeroext %9, ptr noundef %data2) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call19)
  %tobool.not = icmp eq i8 %call19, 0
  %spec.select = select i1 %tobool.not, i32 -1073741823, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end18 ], [ 65539, %entry.cleanup_crit_edge ], [ 65539, %lor.lhs.false12.cleanup_crit_edge ], [ 65539, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_efuse_get_max_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_get_efuse_current_size_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ult i32 %5, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i8 @r8712_efuse_reg_init(ptr noundef %1) #6
  %call4 = tail call zeroext i16 @r8712_efuse_get_current_size(ptr noundef %1) #6
  %conv = zext i16 %call4 to i32
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %7, align 4
  tail call void @r8712_efuse_reg_uninit(ptr noundef %1) #6
  %9 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %11 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bytes_rw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @r8712_efuse_get_current_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_get_efuse_max_size_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ult i32 %5, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @r8712_efuse_get_max_size(ptr noundef %1) #6
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %7, align 4
  %9 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %information_buf_len, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %11 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bytes_rw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_efuse_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %0 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_of_oid, align 4
  %2 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poid_par_priv, align 4
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 0, label %if.end.i
    i32 1, label %if.end.i8
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %information_buf_len.i = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %5 = ptrtoint ptr %information_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %information_buf_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp1.i = icmp ult i32 %6, 4
  br i1 %cmp1.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %information_buf.i = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %7 = ptrtoint ptr %information_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %information_buf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 2
  %cnts4.i = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %cnts4.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cnts4.i, align 2
  %data5.i = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, ptr %8, i32 0, i32 2
  %conv.i = zext i16 %12 to i32
  %13 = call ptr @memset(ptr %data5.i, i32 255, i32 %conv.i)
  %conv6.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %10)
  %cmp7.i = icmp ugt i16 %10, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp10.i = icmp eq i16 %12, 0
  %or.cond.i = select i1 %cmp7.i, i1 true, i1 %cmp10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %12)
  %cmp14.i = icmp ugt i16 %12, 512
  %or.cond45.i = select i1 %or.cond.i, i1 true, i1 %cmp14.i
  %add.i = add nuw nsw i32 %conv.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i)
  %cmp19.i = icmp ugt i32 %add.i, 512
  %or.cond46.i = select i1 %or.cond45.i, i1 true, i1 %cmp19.i
  br i1 %or.cond46.i, label %if.end3.i.if.end_crit_edge, label %if.end22.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end22.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i8 @r8712_efuse_access(ptr noundef %3, i8 noundef zeroext 1, i16 noundef zeroext %10, i16 noundef zeroext %12, ptr noundef %data5.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 -1073741823, i32 0
  %14 = ptrtoint ptr %information_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %information_buf_len.i, align 4
  %bytes_rw.i = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %16 = ptrtoint ptr %bytes_rw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bytes_rw.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %17, align 4
  br label %if.end

if.end.i8:                                        ; preds = %entry
  %information_buf.i6 = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %19 = ptrtoint ptr %information_buf.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %information_buf.i6, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  %cnts1.i = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %cnts1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cnts1.i, align 2
  %data2.i = getelementptr inbounds %struct.EFUSE_ACCESS_STRUCT, ptr %20, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %22)
  %cmp3.i = icmp ugt i16 %22, 511
  %25 = add i16 %24, -513
  call void @__sanitizer_cov_trace_const_cmp2(i16 -512, i16 %25)
  %26 = icmp ult i16 %25, -512
  %or.cond.i7 = select i1 %cmp3.i, i1 true, i1 %26
  br i1 %or.cond.i7, label %if.end.i8.if.end_crit_edge, label %lor.lhs.false12.i

if.end.i8.if.end_crit_edge:                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false12.i:                                ; preds = %if.end.i8
  %conv.i9 = zext i16 %22 to i32
  %conv5.i = zext i16 %24 to i32
  %add.i10 = add nuw nsw i32 %conv5.i, %conv.i9
  %call.i11 = tail call i32 @r8712_efuse_get_max_size(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i10, i32 %call.i11)
  %cmp15.i = icmp sgt i32 %add.i10, %call.i11
  br i1 %cmp15.i, label %lor.lhs.false12.i.if.end_crit_edge, label %if.end18.i

lor.lhs.false12.i.if.end_crit_edge:               ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end18.i:                                       ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call zeroext i8 @r8712_efuse_access(ptr noundef %3, i8 noundef zeroext 0, i16 noundef zeroext %22, i16 noundef zeroext %24, ptr noundef %data2.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call19.i)
  %tobool.not.i12 = icmp eq i8 %call19.i, 0
  %spec.select.i13 = select i1 %tobool.not.i12, i32 -1073741823, i32 0
  br label %if.end

if.end:                                           ; preds = %if.end18.i, %lor.lhs.false12.i.if.end_crit_edge, %if.end.i8.if.end_crit_edge, %if.end22.i, %if.end3.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %spec.select.i, %if.end22.i ], [ -1073676268, %if.end.i.if.end_crit_edge ], [ 65539, %if.end3.i.if.end_crit_edge ], [ %spec.select.i13, %if.end18.i ], [ 65539, %lor.lhs.false12.i.if.end_crit_edge ], [ 65539, %if.end.i8.if.end_crit_edge ], [ 65539, %entry.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_pro_efuse_map_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poid_par_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poid_par_priv, align 4
  %bytes_rw = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 4
  %2 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bytes_rw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %5 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %6)
  %cmp = icmp ult i32 %6, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %7 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %information_buf, align 4
  %type_of_oid = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 6
  %9 = ptrtoint ptr %type_of_oid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type_of_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1 = icmp eq i32 %10, 0
  br i1 %cmp1, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.end
  %call = tail call zeroext i8 @r8712_efuse_map_read(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.then2.cleanup_crit_edge, label %if.then3

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bytes_rw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %12, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.end
  %call7 = tail call zeroext i8 @r8712_efuse_reg_init(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call7)
  %tobool8.not = icmp eq i8 %call7, 0
  br i1 %tobool8.not, label %if.else6.cleanup_crit_edge, label %if.then9

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.else6
  %call10 = tail call zeroext i8 @r8712_efuse_map_write(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %tobool11.not = icmp eq i8 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %if.then12

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %bytes_rw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bytes_rw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %15, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9.if.end15_crit_edge
  %status.0 = phi i32 [ 0, %if.then12 ], [ -1073741823, %if.then9.if.end15_crit_edge ]
  tail call void @r8712_efuse_reg_uninit(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.else6.cleanup_crit_edge, %if.then3, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1073676268, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %status.0, %if.end15 ], [ -1073741823, %if.then2.cleanup_crit_edge ], [ -1073741823, %if.else6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_efuse_map_read(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_efuse_map_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_set_bandwidth_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ult i32 %5, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.not = icmp ne i32 %9, 0
  %conv = zext i1 %cmp4.not to i8
  %curr_bandwidth = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 11
  %10 = ptrtoint ptr %curr_bandwidth to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %curr_bandwidth, align 8
  tail call void @r8712_SwitchBandwidth(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SwitchBandwidth(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oid_rt_set_rx_packet_type_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %6 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %information_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %call = tail call i32 @r8712_read32(ptr noundef %1, i32 noundef 270860360) #6
  %and = and i32 %call, -8388624
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %9, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %if.then12
    i8 3, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and, 47
  br label %if.end15

sw.bb6:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %or7 = or i32 %and, 34
  br label %if.end15

sw.default:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %and8 = and i32 %call, -8388656
  br label %if.end15

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %or5 = or i32 %and, 47
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %sw.default, %sw.bb6, %sw.bb
  %.sink = phi i8 [ 1, %if.then12 ], [ 0, %sw.default ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  %rcr_val32.032 = phi i32 [ %or5, %if.then12 ], [ %and8, %sw.default ], [ %or7, %sw.bb6 ], [ %or, %sw.bb ]
  %check_mp_pkt14 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 18
  %11 = ptrtoint ptr %check_mp_pkt14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %check_mp_pkt14, align 1
  tail call void @r8712_write32(ptr noundef %1, i32 noundef 270860360, i32 noundef %rcr_val32.032) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mp_ioctl_xmit_packet_hdl(ptr nocapture noundef readnone %poid_par_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @oid_rt_set_power_down_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
define dso_local i32 @oid_rt_get_power_mode_hdl(ptr nocapture noundef readonly %poid_par_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %information_buf_len = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 3
  %4 = ptrtoint ptr %information_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %information_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ult i32 %5, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %low_power = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 9, i32 38
  %6 = ptrtoint ptr %low_power to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %low_power, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = zext i1 %tobool.not to i32
  %information_buf = getelementptr inbounds %struct.oid_par_priv, ptr %poid_par_priv, i32 0, i32 2
  %8 = ptrtoint ptr %information_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %information_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %9, align 4
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

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 65539, %entry.cleanup_crit_edge ], [ -1073676268, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_get_wlan_bssid_ex_sz(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_alloc_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_os_indicate_connect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_os_indicate_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_mp_ioctl.c", i32 165, i32 44}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
