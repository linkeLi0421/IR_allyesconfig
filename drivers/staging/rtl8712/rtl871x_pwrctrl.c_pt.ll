; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_pwrctrl.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_pwrctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.reportpwrstate_parm = type { i8, i8, i16 }

@r8712_init_pwrctrl_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pwrctrlpriv->mutex_lock\00", [39 x i8] zeroinitializer }, align 32
@r8712_init_pwrctrl_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&pwrctrlpriv->SetPSModeWorkItem)\00", [45 x i8] zeroinitializer }, align 32
@r8712_init_pwrctrl_priv.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&pwrctrlpriv->rpwm_workitem)\00", [49 x i8] zeroinitializer }, align 32
@r8712_init_pwrctrl_priv.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(&pwrctrlpriv->rpwm_check_timer)\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 12]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 12]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 168, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 175, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 176, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [45 x i8] c"../drivers/staging/rtl8712/rtl871x_pwrctrl.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 177, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @r8712_init_pwrctrl_priv.__key, ptr @.str, ptr @r8712_init_pwrctrl_priv.__key.1, ptr @.str.2, ptr @r8712_init_pwrctrl_priv.__key.3, ptr @.str.4, ptr @r8712_init_pwrctrl_priv.__key.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_pwrctrl_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_pwrctrl_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_pwrctrl_priv.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_pwrctrl_priv.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_set_rpwm(ptr noundef %padapter, i8 noundef zeroext %val8) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rpwm1 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %rpwm1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rpwm1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %val8)
  %cmp = icmp eq i8 %1, %val8
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then:                                          ; preds = %entry
  %rpwm_retry = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 14
  %2 = ptrtoint ptr %rpwm_retry to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rpwm_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %4 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %driver_stopped, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %6 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %surprise_removed, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.end13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %tog = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 3
  %8 = ptrtoint ptr %tog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tog, align 2
  %or41 = or i8 %9, %val8
  %10 = zext i8 %val8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %val8, label %if.end13.sw.epilog_crit_edge [
    i8 1, label %if.end13.sw.epilog.sink.split_crit_edge
    i8 2, label %if.end13.sw.epilog.sink.split_crit_edge42
    i8 4, label %if.end13.sw.epilog.sink.split_crit_edge43
    i8 12, label %if.end13.sw.epilog.sink.split_crit_edge44
  ]

if.end13.sw.epilog.sink.split_crit_edge44:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.end13.sw.epilog.sink.split_crit_edge43:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.end13.sw.epilog.sink.split_crit_edge42:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.end13.sw.epilog.sink.split_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end13.sw.epilog.sink.split_crit_edge, %if.end13.sw.epilog.sink.split_crit_edge42, %if.end13.sw.epilog.sink.split_crit_edge43, %if.end13.sw.epilog.sink.split_crit_edge44
  %cpwm19 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %cpwm19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %val8, ptr %cpwm19, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end13.sw.epilog_crit_edge
  %rpwm_retry20 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 14
  %12 = ptrtoint ptr %rpwm_retry20 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rpwm_retry20, align 4
  %13 = ptrtoint ptr %rpwm1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %val8, ptr %rpwm1, align 4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270925400, i8 noundef zeroext %or41) #2
  %14 = ptrtoint ptr %tog to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tog, align 2
  %add = xor i8 %15, -128
  store i8 %add, ptr %tog, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_set_ps_mode(ptr noundef %padapter, i32 noundef %ps_mode, i32 noundef %smart_ps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %ps_mode)
  %cmp = icmp ugt i32 %ps_mode, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ps_mode)
  %cmp1 = icmp eq i32 %ps_mode, 0
  %spec.select = select i1 %cmp1, i32 0, i32 %smart_ps
  %pwr_mode = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 6
  %0 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ps_mode)
  %cmp4.not = icmp eq i32 %1, %ps_mode
  br i1 %cmp4.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %smart_ps5 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 7
  %2 = ptrtoint ptr %smart_ps5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smart_ps5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %spec.select)
  %cmp6.not = icmp eq i32 %3, %spec.select
  br i1 %cmp6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp eq i32 %1, 0
  %spec.select27 = zext i1 %cmp9 to i32
  %4 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select27, ptr %4, align 4
  %6 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ps_mode, ptr %pwr_mode, align 4
  %smart_ps14 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 7
  %7 = ptrtoint ptr %smart_ps14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %smart_ps14, align 4
  %SetPSModeWorkItem = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %SetPSModeWorkItem) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_cpwm_int_hdl(ptr noundef %padapter, ptr nocapture noundef readonly %preportpwrstate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrctrlpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  %cpwm_tog = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 4
  %0 = ptrtoint ptr %cpwm_tog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cpwm_tog, align 1
  %state = getelementptr inbounds %struct.reportpwrstate_parm, ptr %preportpwrstate, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  %4 = and i8 %3, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %4)
  %cmp = icmp eq i8 %1, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %rpwm_check_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 13
  %call = tail call i32 @del_timer(ptr noundef %rpwm_check_timer) #2
  tail call void @mutex_lock_nested(ptr noundef %pwrctrlpriv, i32 noundef 0) #2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 1
  %7 = and i8 %6, 15
  %cpwm = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %cpwm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp10 = icmp ugt i8 %7, 1
  br i1 %cmp10, label %if.then12, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

if.then12:                                        ; preds = %if.end
  %alives = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 8
  %9 = ptrtoint ptr %alives to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alives, align 4
  %and13 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.then12.if.end16_crit_edge, label %if.then14

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @complete(ptr noundef %cmdpriv) #2
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then12.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state, align 1
  %13 = and i8 %12, -128
  %14 = ptrtoint ptr %cpwm_tog to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %cpwm_tog, align 1
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_init_pwrctrl_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrctrlpriv1 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11
  %0 = call ptr @memset(ptr %pwrctrlpriv1, i32 0, i32 316)
  tail call void @__mutex_init(ptr noundef %pwrctrlpriv1, ptr noundef nonnull @.str, ptr noundef nonnull @r8712_init_pwrctrl_priv.__key) #2
  %cpwm = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 2
  %1 = ptrtoint ptr %cpwm to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 12, ptr %cpwm, align 1
  %pwr_mode = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 6
  %2 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pwr_mode, align 4
  %smart_ps = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 7
  %3 = ptrtoint ptr %smart_ps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %smart_ps, align 4
  %tog = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %tog to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %tog, align 2
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270925400, i8 noundef zeroext 0) #2
  %SetPSModeWorkItem = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @__init_work(ptr noundef %SetPSModeWorkItem, i32 noundef 0) #2
  %5 = ptrtoint ptr %SetPSModeWorkItem to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %SetPSModeWorkItem, align 4
  %lockdep_map = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @r8712_init_pwrctrl_priv.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #2
  %entry6 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 11, i32 1
  %6 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 11, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 11, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @SetPSModeWorkItemCallback, ptr %func, align 4
  %rpwm_workitem = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 12
  tail call void @__init_work(ptr noundef %rpwm_workitem, i32 noundef 0) #2
  %9 = ptrtoint ptr %rpwm_workitem to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %rpwm_workitem, align 4
  %lockdep_map16 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map16, ptr noundef nonnull @.str.4, ptr noundef nonnull @r8712_init_pwrctrl_priv.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #2
  %entry18 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 12, i32 1
  %10 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i43 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 12, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry18, ptr %prev.i43, align 4
  %func20 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 12, i32 2
  %12 = ptrtoint ptr %func20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rpwm_workitem_callback, ptr %func20, align 4
  %rpwm_check_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 13
  tail call void @init_timer_key(ptr noundef %rpwm_check_timer, ptr noundef nonnull @rpwm_check_handler, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @r8712_init_pwrctrl_priv.__key.5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SetPSModeWorkItemCallback(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -120
  %add.ptr3 = getelementptr i8, ptr %work, i32 -11560
  %bSleep = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %bSleep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bSleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #2
  %pwr_mode = getelementptr i8, ptr %work, i32 -20
  %2 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then4:                                         ; preds = %if.then
  %rpwm1.i = getelementptr i8, ptr %work, i32 -28
  %4 = ptrtoint ptr %rpwm1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rpwm1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %5)
  %cmp.i = icmp eq i8 %5, 12
  br i1 %cmp.i, label %if.then.i, label %if.then4.if.end8.i_crit_edge

if.then4.if.end8.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then4
  %rpwm_retry.i = getelementptr i8, ptr %work, i32 136
  %6 = ptrtoint ptr %rpwm_retry.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rpwm_retry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5.i = icmp eq i8 %7, 0
  br i1 %cmp5.i, label %if.then.i.if.end_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %if.then4.if.end8.i_crit_edge
  %driver_stopped.i = getelementptr i8, ptr %work, i32 2084
  %8 = ptrtoint ptr %driver_stopped.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %driver_stopped.i, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end8.i.if.end_crit_edge

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %surprise_removed.i = getelementptr i8, ptr %work, i32 2085
  %10 = ptrtoint ptr %surprise_removed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %surprise_removed.i, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not.i = icmp eq i8 %11, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end13.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  %tog.i = getelementptr i8, ptr %work, i32 -26
  %12 = ptrtoint ptr %tog.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tog.i, align 2
  %or41.i = or i8 %13, 12
  %cpwm19.i = getelementptr i8, ptr %work, i32 -27
  %14 = ptrtoint ptr %cpwm19.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 12, ptr %cpwm19.i, align 1
  %rpwm_retry20.i = getelementptr i8, ptr %work, i32 136
  %15 = ptrtoint ptr %rpwm_retry20.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rpwm_retry20.i, align 4
  %16 = ptrtoint ptr %rpwm1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 12, ptr %rpwm1.i, align 4
  tail call void @r8712_write8(ptr noundef %add.ptr3, i32 noundef 270925400, i8 noundef zeroext %or41.i) #2
  %17 = ptrtoint ptr %tog.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tog.i, align 2
  %add.i = xor i8 %18, -128
  store i8 %add.i, ptr %tog.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.end13.i, %lor.lhs.false.i.if.end_crit_edge, %if.end8.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr) #2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpwm_workitem_callback(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cpwm = getelementptr i8, ptr %work, i32 -71
  %0 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cpwm, align 1
  %rpwm = getelementptr i8, ptr %work, i32 -72
  %2 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rpwm, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.end8.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end8.i:                                        ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -164
  %add.ptr3 = getelementptr i8, ptr %work, i32 -11604
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #2
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %add.ptr3, i32 noundef 269484161) #2
  %rpwm_retry = getelementptr i8, ptr %work, i32 92
  %4 = ptrtoint ptr %rpwm_retry to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %rpwm_retry, align 4
  %5 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rpwm, align 4
  %driver_stopped.i = getelementptr i8, ptr %work, i32 2040
  %7 = ptrtoint ptr %driver_stopped.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %driver_stopped.i, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end8.i.r8712_set_rpwm.exit_crit_edge

if.end8.i.r8712_set_rpwm.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %r8712_set_rpwm.exit

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %surprise_removed.i = getelementptr i8, ptr %work, i32 2041
  %9 = ptrtoint ptr %surprise_removed.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %surprise_removed.i, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not.i = icmp eq i8 %10, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %lor.lhs.false.i.r8712_set_rpwm.exit_crit_edge

lor.lhs.false.i.r8712_set_rpwm.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %r8712_set_rpwm.exit

if.end13.i:                                       ; preds = %lor.lhs.false.i
  %tog.i = getelementptr i8, ptr %work, i32 -70
  %11 = ptrtoint ptr %tog.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tog.i, align 2
  %or41.i = or i8 %12, %6
  %13 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %6, label %if.end13.i.sw.epilog.i_crit_edge [
    i8 1, label %if.end13.i.sw.epilog.sink.split.i_crit_edge
    i8 2, label %if.end13.i.sw.epilog.sink.split.i_crit_edge15
    i8 4, label %if.end13.i.sw.epilog.sink.split.i_crit_edge16
    i8 12, label %if.end13.i.sw.epilog.sink.split.i_crit_edge17
  ]

if.end13.i.sw.epilog.sink.split.i_crit_edge17:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i

if.end13.i.sw.epilog.sink.split.i_crit_edge16:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i

if.end13.i.sw.epilog.sink.split.i_crit_edge15:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i

if.end13.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i

if.end13.i.sw.epilog.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %if.end13.i.sw.epilog.sink.split.i_crit_edge, %if.end13.i.sw.epilog.sink.split.i_crit_edge15, %if.end13.i.sw.epilog.sink.split.i_crit_edge16, %if.end13.i.sw.epilog.sink.split.i_crit_edge17
  %14 = ptrtoint ptr %cpwm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %6, ptr %cpwm, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end13.i.sw.epilog.i_crit_edge
  %15 = ptrtoint ptr %rpwm_retry to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rpwm_retry, align 4
  tail call void @r8712_write8(ptr noundef %add.ptr3, i32 noundef 270925400, i8 noundef zeroext %or41.i) #2
  %16 = ptrtoint ptr %tog.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tog.i, align 2
  %add.i = xor i8 %17, -128
  store i8 %add.i, ptr %tog.i, align 2
  br label %r8712_set_rpwm.exit

r8712_set_rpwm.exit:                              ; preds = %sw.epilog.i, %lor.lhs.false.i.r8712_set_rpwm.exit_crit_edge, %if.end8.i.r8712_set_rpwm.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr) #2
  br label %if.end

if.end:                                           ; preds = %r8712_set_rpwm.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpwm_check_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_stopped.i = getelementptr i8, ptr %t, i32 1996
  %0 = ptrtoint ptr %driver_stopped.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_stopped.i, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry._rpwm_check_handler.exit_crit_edge

entry._rpwm_check_handler.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rpwm_check_handler.exit

lor.lhs.false.i:                                  ; preds = %entry
  %surprise_removed.i = getelementptr i8, ptr %t, i32 1997
  %2 = ptrtoint ptr %surprise_removed.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surprise_removed.i, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i._rpwm_check_handler.exit_crit_edge

lor.lhs.false.i._rpwm_check_handler.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rpwm_check_handler.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cpwm.i = getelementptr i8, ptr %t, i32 -115
  %4 = ptrtoint ptr %cpwm.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cpwm.i, align 1
  %rpwm.i = getelementptr i8, ptr %t, i32 -116
  %6 = ptrtoint ptr %rpwm.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rpwm.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not.i = icmp eq i8 %5, %7
  br i1 %cmp.not.i, label %if.end.i._rpwm_check_handler.exit_crit_edge, label %if.then4.i

if.end.i._rpwm_check_handler.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rpwm_check_handler.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %rpwm_workitem.i = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %rpwm_workitem.i) #2
  br label %_rpwm_check_handler.exit

_rpwm_check_handler.exit:                         ; preds = %if.then4.i, %if.end.i._rpwm_check_handler.exit_crit_edge, %lor.lhs.false.i._rpwm_check_handler.exit_crit_edge, %entry._rpwm_check_handler.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_register_cmd_alive(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrctrlpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %pwrctrlpriv, i32 noundef 0) #2
  %alives.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alives.i, align 4
  %or.i = or i32 %1, 4
  store i32 %or.i, ptr %alives.i, align 4
  %cpwm = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  %rpwm1.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %rpwm1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rpwm1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp.i = icmp eq i8 %5, 4
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end8.i_crit_edge

if.then.if.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then
  %rpwm_retry.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 14
  %6 = ptrtoint ptr %rpwm_retry.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rpwm_retry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5.i = icmp eq i8 %7, 0
  br i1 %cmp5.i, label %if.then.i.if.end_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %if.then.if.end8.i_crit_edge
  %driver_stopped.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %8 = ptrtoint ptr %driver_stopped.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %driver_stopped.i, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end8.i.if.end_crit_edge

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %surprise_removed.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %10 = ptrtoint ptr %surprise_removed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %surprise_removed.i, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not.i = icmp eq i8 %11, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end13.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  %tog.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %tog.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tog.i, align 2
  %or41.i = or i8 %13, 4
  %14 = ptrtoint ptr %cpwm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %cpwm, align 1
  %rpwm_retry20.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 14
  %15 = ptrtoint ptr %rpwm_retry20.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rpwm_retry20.i, align 4
  %16 = ptrtoint ptr %rpwm1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %rpwm1.i, align 4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270925400, i8 noundef zeroext %or41.i) #2
  %17 = ptrtoint ptr %tog.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tog.i, align 2
  %add.i = xor i8 %18, -128
  store i8 %add.i, ptr %tog.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.end13.i, %lor.lhs.false.i.if.end_crit_edge, %if.end8.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %res.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ -22, %if.then.i.if.end_crit_edge ], [ -22, %if.end8.i.if.end_crit_edge ], [ -22, %lor.lhs.false.i.if.end_crit_edge ], [ -22, %if.end13.i ]
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #2
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_unregister_cmd_alive(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrctrlpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %pwrctrlpriv, i32 noundef 0) #2
  %alives.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alives.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.unregister_task_alive.exit_crit_edge, label %if.then.i

entry.unregister_task_alive.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %unregister_task_alive.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %xor.i = xor i32 %1, 4
  %2 = ptrtoint ptr %alives.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %xor.i, ptr %alives.i, align 4
  br label %unregister_task_alive.exit

unregister_task_alive.exit:                       ; preds = %if.then.i, %entry.unregister_task_alive.exit_crit_edge
  %cpwm = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ugt i8 %4, 2
  br i1 %cmp, label %land.lhs.true, label %unregister_task_alive.exit.if.end11_crit_edge

unregister_task_alive.exit.if.end11_crit_edge:    ; preds = %unregister_task_alive.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

land.lhs.true:                                    ; preds = %unregister_task_alive.exit
  %pwr_mode = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 6
  %5 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alives.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %land.lhs.true6, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

land.lhs.true6:                                   ; preds = %if.then
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 8
  %.mask22 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask22)
  %cmp8.not.not = icmp eq i32 %.mask22, 0
  br i1 %cmp8.not.not, label %if.then10, label %land.lhs.true6.if.end11_crit_edge

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true6
  %rpwm1.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %rpwm1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rpwm1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp eq i8 %12, 1
  br i1 %cmp.i, label %if.then.i20, label %if.then10.if.end8.i_crit_edge

if.then10.if.end8.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then.i20:                                      ; preds = %if.then10
  %rpwm_retry.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 14
  %13 = ptrtoint ptr %rpwm_retry.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rpwm_retry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp5.i = icmp eq i8 %14, 0
  br i1 %cmp5.i, label %if.then.i20.if.end11_crit_edge, label %if.then.i20.if.end8.i_crit_edge

if.then.i20.if.end8.i_crit_edge:                  ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then.i20.if.end11_crit_edge:                   ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

if.end8.i:                                        ; preds = %if.then.i20.if.end8.i_crit_edge, %if.then10.if.end8.i_crit_edge
  %driver_stopped.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %15 = ptrtoint ptr %driver_stopped.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %driver_stopped.i, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i21 = icmp eq i8 %16, 0
  br i1 %tobool.not.i21, label %lor.lhs.false.i, label %if.end8.i.if.end11_crit_edge

if.end8.i.if.end11_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %surprise_removed.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %17 = ptrtoint ptr %surprise_removed.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %surprise_removed.i, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not.i = icmp eq i8 %18, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %lor.lhs.false.i.if.end11_crit_edge

lor.lhs.false.i.if.end11_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

if.end13.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  %tog.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 3
  %19 = ptrtoint ptr %tog.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tog.i, align 2
  %or41.i = or i8 %20, 1
  %21 = ptrtoint ptr %cpwm to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %cpwm, align 1
  %rpwm_retry20.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 14
  %22 = ptrtoint ptr %rpwm_retry20.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %rpwm_retry20.i, align 4
  %23 = ptrtoint ptr %rpwm1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %rpwm1.i, align 4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270925400, i8 noundef zeroext %or41.i) #2
  %24 = ptrtoint ptr %tog.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tog.i, align 2
  %add.i = xor i8 %25, -128
  store i8 %add.i, ptr %tog.i, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.end13.i, %lor.lhs.false.i.if.end11_crit_edge, %if.end8.i.if.end11_crit_edge, %if.then.i20.if.end11_crit_edge, %land.lhs.true6.if.end11_crit_edge, %if.then.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %unregister_task_alive.exit.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_flush_rwctrl_works(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %SetPSModeWorkItem = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 11
  %call = tail call zeroext i1 @flush_work(ptr noundef %SetPSModeWorkItem) #2
  %rpwm_workitem = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 12
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %rpwm_workitem) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @r8712_init_pwrctrl_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_pwrctrl.c", i32 168, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @r8712_init_pwrctrl_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8712/rtl871x_pwrctrl.c", i32 175, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @r8712_init_pwrctrl_priv.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/rtl871x_pwrctrl.c", i32 176, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @r8712_init_pwrctrl_priv.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8712/rtl871x_pwrctrl.c", i32 177, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
