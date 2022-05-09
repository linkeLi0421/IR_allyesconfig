; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl8712_xmit.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl8712_xmit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], ptr }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.stainfo_rxcache = type { [16 x i16] }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ht_priv = type { i32, i32, [16 x i8], i32, i32, i32, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hw_xmit = type { %struct.spinlock, %struct.list_head, ptr, ptr, i32, i32 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, ptr, [8 x i16], [8 x ptr], [8 x i8], [8 x i8] }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION, i32, [16 x i8], i32, [768 x i8] }
%struct.NDIS_802_11_CONFIGURATION = type { i32, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION_FH }
%struct.NDIS_802_11_CONFIGURATION_FH = type { i32, i32, i32, i32 }
%struct.sitesurvey_ctrl = type { i64, i32, i32, %struct.timer_list }
%struct.qos_priv = type { i32 }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.3, i32, %struct.spinlock }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr }
%struct.smooth_rssi_data = type { [100 x i32], i32, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [2 x %union.Keytype], [2 x %union.Keytype], [2 x %union.Keytype], %union.pn48, %union.pn48, i8, i8, [512 x i8], i32, i8, i8, %struct.timer_list, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.NDIS_802_11_WEP, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.RT_PMKID_LIST], i8 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tx_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@switch.table._r8712_init_hw_txqueue = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 271843328, i32 271908864, i32 271974400, i32 272039936, i32 271974400, i32 271974400, i32 271974400], [36 x i8] zeroinitializer }, align 32
@switch.table.r8712_do_queue_select = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\01\03\05\05\07\07", [25 x i8] zeroinitializer }, align 32
@switch.table.dump_xframe = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 272039936, i32 272039936, i32 271974400, i32 271908864, i32 271908864, i32 271843328, i32 271843328, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 272171008, i32 272171008, i32 272171008, i32 272171008], [52 x i8] zeroinitializer }, align 32
@switch.table.dump_xframe.1 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 271843328, i32 271843328, i32 271843328, i32 271843328, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 271974400, i32 272171008, i32 272171008, i32 272171008, i32 272171008], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 34958]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 34958]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 8]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@___asan_gen_ = private constant [42 x i8] c"../drivers/staging/rtl8712/rtl8712_xmit.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [36 x i8] c"switch.table._r8712_init_hw_txqueue\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [35 x i8] c"switch.table.r8712_do_queue_select\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"switch.table.dump_xframe\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [27 x i8] c"switch.table.dump_xframe.1\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @switch.table._r8712_init_hw_txqueue, ptr @switch.table.r8712_do_queue_select, ptr @switch.table.dump_xframe, ptr @switch.table.dump_xframe.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._r8712_init_hw_txqueue to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r8712_do_queue_select to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dump_xframe to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dump_xframe.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @_r8712_init_hw_txqueue(ptr nocapture noundef writeonly %phw_txqueue, i8 noundef zeroext %ac_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ac_tag to i32
  %ac_tag1 = getelementptr inbounds %struct.hw_txqueue, ptr %phw_txqueue, i32 0, i32 7
  %0 = ptrtoint ptr %ac_tag1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %ac_tag1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %ac_tag)
  %1 = icmp ult i8 %ac_tag, 7
  br i1 %1, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i8 79, %ac_tag
  %2 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.lobit.not = icmp eq i8 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %3 = sext i8 %ac_tag to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table._r8712_init_hw_txqueue, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %ff_hwaddr10 = getelementptr inbounds %struct.hw_txqueue, ptr %phw_txqueue, i32 0, i32 5
  %5 = ptrtoint ptr %ff_hwaddr10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.load, ptr %ff_hwaddr10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r8712_txframes_sta_ac_pending(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readonly %pattrib) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priority1 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %0 = ptrtoint ptr %priority1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority1, align 4
  %psta2 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 26
  %2 = ptrtoint ptr %psta2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psta2, align 4
  %4 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 1, label %entry.sw.bb_crit_edge
    i8 2, label %entry.sw.bb_crit_edge13
    i8 4, label %entry.sw.bb3_crit_edge
    i8 5, label %entry.sw.bb3_crit_edge14
    i8 6, label %entry.sw.bb5_crit_edge
    i8 7, label %entry.sw.bb5_crit_edge15
  ]

entry.sw.bb5_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb3_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 3, i32 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge14
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 3, i32 5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge15
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 3, i32 6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %be_q = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 3, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb
  %ptxservq.0 = phi ptr [ %be_q, %sw.default ], [ %vo_q, %sw.bb5 ], [ %vi_q, %sw.bb3 ], [ %bk_q, %sw.bb ]
  %qcnt = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0, i32 0, i32 2
  %5 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qcnt, align 4
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r8712_do_queue_select(ptr nocapture noundef readonly %padapter, ptr nocapture noundef %pattrib) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_endpoint = getelementptr inbounds %struct.dvobj_priv, ptr %padapter, i32 0, i32 1
  %0 = ptrtoint ptr %nr_endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_endpoint, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %entry.if.end38_crit_edge [
    i32 6, label %if.then
    i32 4, label %if.then4
  ]

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priority = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %3 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priority, align 4
  br label %if.end38

if.then4:                                         ; preds = %entry
  %priority5 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %5 = ptrtoint ptr %priority5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %priority5, align 4
  %switch.tableidx = add i8 %6, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 7
  br i1 %7, label %switch.lookup, label %if.then4.if.end38_crit_edge

if.then4.if.end38_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

switch.lookup:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.r8712_do_queue_select, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %9)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end38

if.end38:                                         ; preds = %switch.lookup, %if.then4.if.end38_crit_edge, %if.then, %entry.if.end38_crit_edge
  %qsel.0 = phi i8 [ %4, %if.then ], [ 0, %entry.if.end38_crit_edge ], [ 3, %if.then4.if.end38_crit_edge ], [ %switch.load, %switch.lookup ]
  %qsel40 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 15
  %10 = ptrtoint ptr %qsel40 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %qsel.0, ptr %qsel40, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_xmitframe_complete(ptr noundef %padapter, ptr noundef %pxmitpriv, ptr noundef %pxmitbuf) local_unnamed_addr #4 align 64 {
entry:
  %inx.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwxmits = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 28
  %0 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwxmits, align 4
  %hwxmit_entry = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 29
  %2 = ptrtoint ptr %hwxmit_entry to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hwxmit_entry, align 8
  %conv = zext i8 %3 to i32
  %tobool.not = icmp eq ptr %pxmitbuf, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call ptr @r8712_alloc_xmitbuf(ptr noundef %pxmitpriv) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %pxmitbuf.addr.0 = phi ptr [ %pxmitbuf, %entry.if.end3_crit_edge ], [ %call, %if.then.if.end3_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inx.i) #7
  %4 = getelementptr inbounds [4 x i32], ptr %inx.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %inx.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %inx.i, i32 0, i32 3
  %7 = ptrtoint ptr %inx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %inx.i, align 4
  %voq_cnt.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 38
  %8 = ptrtoint ptr %voq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %voq_cnt.i, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %4, align 4
  %viq_cnt.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 37
  %11 = ptrtoint ptr %viq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %viq_cnt.i, align 8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %5, align 4
  %beq_cnt.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 35
  %14 = ptrtoint ptr %beq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %beq_cnt.i, align 8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %6, align 4
  %bkq_cnt.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36
  %17 = ptrtoint ptr %bkq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bkq_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp14.i = icmp slt i32 %12, %9
  br i1 %cmp14.i, label %do.body.i, label %if.end3.for.inc.i_crit_edge

if.end3.for.inc.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.body11.lr.ph.1.i:                             ; preds = %do.body.2121.i, %for.inc.1115.i.for.body11.lr.ph.1.i_crit_edge
  %acirp_cnt.i.sroa.23.0 = phi i32 [ %acirp_cnt.i.sroa.0.1, %do.body.2121.i ], [ %18, %for.inc.1115.i.for.body11.lr.ph.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %acirp_cnt.i.sroa.16.1, i32 %acirp_cnt.i.sroa.9.1)
  %cmp14.1.i = icmp slt i32 %acirp_cnt.i.sroa.16.1, %acirp_cnt.i.sroa.9.1
  br i1 %cmp14.1.i, label %do.body.1.i, label %for.body11.lr.ph.1.i.for.inc.1.i_crit_edge

for.body11.lr.ph.1.i.for.inc.1.i_crit_edge:       ; preds = %for.body11.lr.ph.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

do.body.1.i:                                      ; preds = %for.body11.lr.ph.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  store i32 %22, ptr %4, align 4
  store i32 %20, ptr %5, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.body.1.i, %for.body11.lr.ph.1.i.for.inc.1.i_crit_edge
  %acirp_cnt.i.sroa.16.0 = phi i32 [ %acirp_cnt.i.sroa.9.1, %do.body.1.i ], [ %acirp_cnt.i.sroa.16.1, %for.body11.lr.ph.1.i.for.inc.1.i_crit_edge ]
  %acirp_cnt.i.sroa.9.0 = phi i32 [ %acirp_cnt.i.sroa.16.1, %do.body.1.i ], [ %acirp_cnt.i.sroa.9.1, %for.body11.lr.ph.1.i.for.inc.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %acirp_cnt.i.sroa.23.0, i32 %acirp_cnt.i.sroa.9.0)
  %cmp14.1.1.i = icmp slt i32 %acirp_cnt.i.sroa.23.0, %acirp_cnt.i.sroa.9.0
  br i1 %cmp14.1.1.i, label %do.body.1.1.i, label %for.inc.1.i.for.body11.lr.ph.2.i_crit_edge

for.inc.1.i.for.body11.lr.ph.2.i_crit_edge:       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.lr.ph.2.i

do.body.1.1.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %4, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %6, align 4
  store i32 %26, ptr %4, align 4
  store i32 %24, ptr %6, align 4
  br label %for.body11.lr.ph.2.i

for.body11.lr.ph.2.i:                             ; preds = %do.body.1.1.i, %for.inc.1.i.for.body11.lr.ph.2.i_crit_edge
  %acirp_cnt.i.sroa.23.1 = phi i32 [ %acirp_cnt.i.sroa.9.0, %do.body.1.1.i ], [ %acirp_cnt.i.sroa.23.0, %for.inc.1.i.for.body11.lr.ph.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %acirp_cnt.i.sroa.23.1, i32 %acirp_cnt.i.sroa.16.0)
  %cmp14.2.i = icmp slt i32 %acirp_cnt.i.sroa.23.1, %acirp_cnt.i.sroa.16.0
  br i1 %cmp14.2.i, label %do.body.2.i, label %for.body11.lr.ph.2.i.for.cond.loopexit.3.i_crit_edge

for.body11.lr.ph.2.i.for.cond.loopexit.3.i_crit_edge: ; preds = %for.body11.lr.ph.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.3.i

do.body.2.i:                                      ; preds = %for.body11.lr.ph.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %6, align 4
  store i32 %30, ptr %5, align 4
  store i32 %28, ptr %6, align 4
  br label %for.cond.loopexit.3.i

for.cond.loopexit.3.i:                            ; preds = %do.body.2.i, %for.body11.lr.ph.2.i.for.cond.loopexit.3.i_crit_edge
  %call33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pxmitpriv) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp39104.i.not = icmp eq i8 %3, 0
  br i1 %cmp39104.i.not, label %for.cond.loopexit.3.i.if.else20_crit_edge, label %for.cond.loopexit.3.i.for.body41.i_crit_edge

for.cond.loopexit.3.i.for.body41.i_crit_edge:     ; preds = %for.cond.loopexit.3.i
  br label %for.body41.i

for.cond.loopexit.3.i.if.else20_crit_edge:        ; preds = %for.cond.loopexit.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20

do.body.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %inx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %inx.i, align 4
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %4, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i, %if.end3.for.inc.i_crit_edge
  %acirp_cnt.i.sroa.9.1 = phi i32 [ %9, %do.body.i ], [ %12, %if.end3.for.inc.i_crit_edge ]
  %acirp_cnt.i.sroa.0.0 = phi i32 [ %12, %do.body.i ], [ %9, %if.end3.for.inc.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %acirp_cnt.i.sroa.0.0)
  %cmp14.1111.i = icmp slt i32 %15, %acirp_cnt.i.sroa.0.0
  br i1 %cmp14.1111.i, label %do.body.1114.i, label %for.inc.i.for.inc.1115.i_crit_edge

for.inc.i.for.inc.1115.i_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1115.i

do.body.1114.i:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %inx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inx.i, align 4
  store i32 2, ptr %inx.i, align 4
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %5, align 4
  br label %for.inc.1115.i

for.inc.1115.i:                                   ; preds = %do.body.1114.i, %for.inc.i.for.inc.1115.i_crit_edge
  %acirp_cnt.i.sroa.16.1 = phi i32 [ %acirp_cnt.i.sroa.0.0, %do.body.1114.i ], [ %15, %for.inc.i.for.inc.1115.i_crit_edge ]
  %acirp_cnt.i.sroa.0.1 = phi i32 [ %15, %do.body.1114.i ], [ %acirp_cnt.i.sroa.0.0, %for.inc.i.for.inc.1115.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %acirp_cnt.i.sroa.0.1)
  %cmp14.2118.i = icmp slt i32 %18, %acirp_cnt.i.sroa.0.1
  br i1 %cmp14.2118.i, label %do.body.2121.i, label %for.inc.1115.i.for.body11.lr.ph.1.i_crit_edge

for.inc.1115.i.for.body11.lr.ph.1.i_crit_edge:    ; preds = %for.inc.1115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.lr.ph.1.i

do.body.2121.i:                                   ; preds = %for.inc.1115.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %inx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inx.i, align 4
  store i32 3, ptr %inx.i, align 4
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %6, align 4
  br label %for.body11.lr.ph.1.i

for.body41.i:                                     ; preds = %for.inc56.i.for.body41.i_crit_edge, %for.cond.loopexit.3.i.for.body41.i_crit_edge
  %i.1105.i = phi i32 [ %inc57.i, %for.inc56.i.for.body41.i_crit_edge ], [ 0, %for.cond.loopexit.3.i.for.body41.i_crit_edge ]
  %arrayidx42.i = getelementptr [4 x i32], ptr %inx.i, i32 0, i32 %i.1105.i
  %39 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx42.i, align 4
  %sta_queue.i = getelementptr %struct.hw_xmit, ptr %1, i32 %40, i32 2
  %41 = ptrtoint ptr %sta_queue.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sta_queue.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %cmp.i.not101.i = icmp eq ptr %42, %44
  br i1 %cmp.i.not101.i, label %for.body41.i.for.inc56.i_crit_edge, label %while.body.lr.ph.i

for.body41.i.for.inc56.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i

while.body.lr.ph.i:                               ; preds = %for.body41.i
  %txcmdcnt.i.i = getelementptr %struct.hw_xmit, ptr %1, i32 %40, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end55.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sta_plist.0102.i = phi ptr [ %44, %while.body.lr.ph.i ], [ %60, %if.end55.i.while.body.i_crit_edge ]
  %sta_pending.i = getelementptr inbounds %struct.tx_servq, ptr %sta_plist.0102.i, i32 0, i32 1
  %45 = ptrtoint ptr %sta_pending.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sta_pending.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %46, %sta_pending.i
  br i1 %cmp.i.not.i.i, label %while.body.i.if.end49.i_crit_edge, label %if.then.i.i

while.body.i.if.end49.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then.i.i:                                      ; preds = %while.body.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.dequeue_one_xmitframe.exit.i_crit_edge

if.then.i.i.dequeue_one_xmitframe.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dequeue_one_xmitframe.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %dequeue_one_xmitframe.exit.i

dequeue_one_xmitframe.exit.i:                     ; preds = %if.end.i.i.i.i, %if.then.i.i.dequeue_one_xmitframe.exit.i_crit_edge
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %46, ptr %46, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %46, ptr %prev.i3.i.i.i, align 4
  %qcnt.i.i = getelementptr inbounds %struct.tx_servq, ptr %sta_plist.0102.i, i32 0, i32 2
  %55 = ptrtoint ptr %qcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qcnt.i.i, align 4
  %dec.i.i = add i32 %56, -1
  store i32 %dec.i.i, ptr %qcnt.i.i, align 4
  %57 = ptrtoint ptr %txcmdcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txcmdcnt.i.i, align 4
  %inc.i.i = add i32 %58, 1
  store i32 %inc.i.i, ptr %txcmdcnt.i.i, align 4
  %tobool47.not.i = icmp eq ptr %46, null
  br i1 %tobool47.not.i, label %dequeue_one_xmitframe.exit.i.if.end49.i_crit_edge, label %if.then6

dequeue_one_xmitframe.exit.i.if.end49.i_crit_edge: ; preds = %dequeue_one_xmitframe.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.end49.i:                                       ; preds = %dequeue_one_xmitframe.exit.i.if.end49.i_crit_edge, %while.body.i.if.end49.i_crit_edge
  %59 = ptrtoint ptr %sta_plist.0102.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sta_plist.0102.i, align 4
  %61 = ptrtoint ptr %sta_pending.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %sta_pending.i, align 4
  %cmp.i92.not.i = icmp eq ptr %62, %sta_pending.i
  br i1 %cmp.i92.not.i, label %if.then54.i, label %if.end49.i.if.end55.i_crit_edge

if.end49.i.if.end55.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then54.i:                                      ; preds = %if.end49.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sta_plist.0102.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then54.i.list_del_init.exit.i_crit_edge

if.then54.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sta_plist.0102.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i.i, align 4
  %65 = ptrtoint ptr %sta_plist.0102.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sta_plist.0102.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then54.i.list_del_init.exit.i_crit_edge
  %69 = ptrtoint ptr %sta_plist.0102.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %sta_plist.0102.i, ptr %sta_plist.0102.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %sta_plist.0102.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %sta_plist.0102.i, ptr %prev.i3.i.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %list_del_init.exit.i, %if.end49.i.if.end55.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %42, %60
  br i1 %cmp.i.not.i, label %if.end55.i.for.inc56.i_crit_edge, label %if.end55.i.while.body.i_crit_edge

if.end55.i.while.body.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end55.i.for.inc56.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i

for.inc56.i:                                      ; preds = %if.end55.i.for.inc56.i_crit_edge, %for.body41.i.for.inc56.i_crit_edge
  %inc57.i = add nuw nsw i32 %i.1105.i, 1
  %exitcond.not.i = icmp eq i32 %inc57.i, %conv
  br i1 %exitcond.not.i, label %for.inc56.i.if.else20_crit_edge, label %for.inc56.i.for.body41.i_crit_edge

for.inc56.i.for.body41.i_crit_edge:               ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.i

for.inc56.i.if.else20_crit_edge:                  ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20

if.then6:                                         ; preds = %dequeue_one_xmitframe.exit.i
  %accnt.i = getelementptr %struct.hw_xmit, ptr %1, i32 %40, i32 5
  %71 = ptrtoint ptr %accnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %accnt.i, align 4
  %dec.i = add i32 %72, -1
  store i32 %dec.i, ptr %accnt.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pxmitpriv, i32 noundef %call33.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inx.i) #7
  tail call void @xmitframe_xmitbuf_attach(ptr noundef nonnull %46, ptr noundef %pxmitbuf.addr.0) #7
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %46, i32 0, i32 3
  %73 = ptrtoint ptr %frame_tag to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %frame_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp = icmp eq i32 %74, 1
  br i1 %cmp, label %if.then8, label %if.then6.if.then18_crit_edge

if.then6.if.then18_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then8:                                         ; preds = %if.then6
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %46, i32 0, i32 1, i32 16
  %75 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %76)
  %cmp10 = icmp ult i8 %76, 16
  br i1 %cmp10, label %if.end15, label %if.end15.thread60

if.end15.thread60:                                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r8712_xmit_complete(ptr noundef %padapter, ptr noundef nonnull %46) #7
  br label %if.then18

if.end15:                                         ; preds = %if.then8
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %46, i32 0, i32 2
  %77 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pkt, align 4
  %call13 = tail call i32 @r8712_xmitframe_coalesce(ptr noundef %padapter, ptr noundef %78, ptr noundef nonnull %46) #7
  tail call void @r8712_xmit_complete(ptr noundef %padapter, ptr noundef nonnull %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp16 = icmp eq i32 %call13, 1
  br i1 %cmp16, label %if.end15.if.then18_crit_edge, label %if.else

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %if.end15.if.then18_crit_edge, %if.end15.thread60, %if.then6.if.then18_crit_edge
  tail call fastcc void @dump_xframe(ptr noundef %padapter, ptr noundef nonnull %46)
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r8712_free_xmitframe_ex(ptr noundef %pxmitpriv, ptr noundef nonnull %46) #7
  br label %cleanup

if.else20:                                        ; preds = %for.inc56.i.if.else20_crit_edge, %for.cond.loopexit.3.i.if.else20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pxmitpriv, i32 noundef %call33.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inx.i) #7
  tail call void @r8712_free_xmitbuf(ptr noundef %pxmitpriv, ptr noundef %pxmitbuf.addr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.else, %if.then18, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else20 ], [ 0, %if.then.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_alloc_xmitbuf(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xmitframe_xmitbuf_attach(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_xmitframe_coalesce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_xmit_complete(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_xframe(ptr noundef %padapter, ptr noundef %pxmitframe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ether_type = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ether_type, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %1, label %if.then8 [
    i16 2054, label %entry.if.end10_crit_edge
    i16 -30578, label %entry.if.end10_crit_edge76
  ]

entry.if.end10_crit_edge76:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %3 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priority, align 4
  %conv9 = zext i8 %4 to i32
  tail call void @r8712_issue_addbareq_cmd(ptr noundef %padapter, i32 noundef %conv9) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %entry.if.end10_crit_edge, %entry.if.end10_crit_edge76
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %5 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1266.not = icmp eq i8 %6, 0
  br i1 %cmp1266.not, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %conv1165 = zext i8 %6 to i32
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %7 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf_addr, align 4
  %frag_len = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 19
  %sw_encrypt = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 21
  %icv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %padapter1.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 4
  %ra.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %frame_tag.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 3
  %qsel114.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 15
  %priority128.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 17
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 2
  %dhcp_pkt.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 3
  %pctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 4
  %mem_addr26 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %get_ff_hwaddr.exit.for.body_crit_edge, %for.body.lr.ph
  %conv1171 = phi i32 [ %conv1165, %for.body.lr.ph ], [ %conv11, %get_ff_hwaddr.exit.for.body_crit_edge ]
  %mem_addr.069 = phi ptr [ %8, %for.body.lr.ph ], [ %137, %get_ff_hwaddr.exit.for.body_crit_edge ]
  %t.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %get_ff_hwaddr.exit.for.body_crit_edge ]
  %sub = add nsw i32 %conv1171, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %t.067, i32 %sub)
  %cmp16.not = icmp eq i32 %t.067, %sub
  br i1 %cmp16.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %for.body
  %9 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frag_len, align 4
  %sub19 = add i32 %10, -4
  %11 = ptrtoint ptr %sw_encrypt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sw_encrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %cond.false, label %if.then18.cond.end_crit_edge

if.then18.cond.end_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %icv_len, align 1
  %conv20 = zext i8 %14 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then18.cond.end_crit_edge
  %cond = phi i32 [ %conv20, %cond.false ], [ 0, %if.then18.cond.end_crit_edge ]
  %sub21 = sub i32 %sub19, %cond
  br label %if.end25

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %last_txcmdsz, align 2
  %conv22 = zext i16 %16 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.else, %cond.end
  %.sink = phi i8 [ 1, %if.else ], [ 0, %cond.end ]
  %sz.0 = phi i32 [ %conv22, %if.else ], [ %sub21, %cond.end ]
  %arrayidx24 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 11, i32 %t.067
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %arrayidx24, align 1
  %18 = ptrtoint ptr %padapter1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %padapter1.i, align 4
  %qospriv.i = getelementptr inbounds %struct._adapter, ptr %19, i32 0, i32 1, i32 20
  %20 = ptrtoint ptr %ra.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ra.i, align 4
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  %htpriv.i = getelementptr inbounds %struct._adapter, ptr %19, i32 0, i32 1, i32 21
  %txdesc_mp.sroa.5.0.pmem.sroa_idx.i = getelementptr inbounds i8, ptr %mem_addr.069, i32 8
  %23 = ptrtoint ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %txdesc_mp.sroa.5.0.copyload.i = load i32, ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i, align 4
  %txdesc_mp.sroa.8.0.pmem.sroa_idx.i = getelementptr inbounds i8, ptr %mem_addr.069, i32 16
  %24 = ptrtoint ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %txdesc_mp.sroa.8.0.copyload.i = load i32, ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i, align 4
  %txdesc_mp.sroa.10.0.pmem.sroa_idx.i = getelementptr inbounds i8, ptr %mem_addr.069, i32 20
  %25 = ptrtoint ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %txdesc_mp.sroa.10.0.copyload.i = load i32, ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i, align 4
  %26 = getelementptr inbounds i8, ptr %mem_addr.069, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 28)
  %and.i = and i32 %sz.0, 65535
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %29 = ptrtoint ptr %mem_addr.069 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mem_addr.069, align 4
  %ishighspeed.i = getelementptr inbounds %struct.dvobj_priv, ptr %19, i32 0, i32 2
  %30 = ptrtoint ptr %ishighspeed.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ishighspeed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  %add4.i = add i32 %sz.0, 32
  br i1 %tobool.not.i, label %if.end10.i, label %if.then.i

if.then.i:                                        ; preds = %if.end25
  %32 = and i32 %add4.i, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.i = icmp eq i32 %32, 0
  br i1 %cmp.not.i, label %if.then.i.if.end18.i_crit_edge, label %if.then.i.if.else15.i_crit_edge

if.then.i.if.else15.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

if.then.i.if.end18.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.end10.i:                                       ; preds = %if.end25
  %33 = and i32 %add4.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp6.not.i = icmp eq i32 %33, 0
  br i1 %cmp6.not.i, label %if.end10.i.if.end18.i_crit_edge, label %if.end10.i.if.else15.i_crit_edge

if.end10.i.if.else15.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.else15.i:                                      ; preds = %if.end10.i.if.else15.i_crit_edge, %if.then.i.if.else15.i_crit_edge
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else15.i, %if.end10.i.if.end18.i_crit_edge, %if.then.i.if.end18.i_crit_edge
  %.sink.i = phi i32 [ 8192, %if.else15.i ], [ 10240, %if.then.i.if.end18.i_crit_edge ], [ 10240, %if.end10.i.if.end18.i_crit_edge ]
  %or17.i = or i32 %28, %.sink.i
  %or20.i = or i32 %or17.i, 140
  %34 = ptrtoint ptr %mem_addr.069 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or20.i, ptr %mem_addr.069, align 4
  %35 = ptrtoint ptr %frame_tag.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frame_tag.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %36, label %if.else144.i [
    i32 1, label %if.then22.i
    i32 3, label %if.then111.i
    i32 8, label %if.then139.i
  ]

if.then22.i:                                      ; preds = %if.end18.i
  %38 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mac_id.i, align 4
  %40 = and i8 %39, 31
  %and23.i = zext i8 %40 to i32
  %41 = shl nuw nsw i32 %and23.i, 24
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %26, align 4
  %or24.i = or i32 %41, %43
  store i32 %or24.i, ptr %26, align 4
  %44 = ptrtoint ptr %qsel114.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %qsel114.i, align 1
  %and27.i = zext i8 %45 to i32
  %shl.i = shl nuw nsw i32 %and27.i, 16
  %and28.i = and i32 %shl.i, 2031616
  %or30.i = or i32 %and28.i, %or24.i
  store i32 %or30.i, ptr %26, align 4
  %46 = ptrtoint ptr %qospriv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qospriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool31.not.i = icmp eq i32 %47, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.then22.i.if.end35.i_crit_edge

if.then22.i.if.end35.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %or34.i = or i32 %or30.i, 256
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or34.i, ptr %26, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.then22.i.if.end35.i_crit_edge
  %49 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp37.not.i = icmp eq i8 %50, 0
  br i1 %cmp37.not.i, label %if.end35.i.if.end56.i_crit_edge, label %land.lhs.true.i

if.end35.i.if.end56.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

land.lhs.true.i:                                  ; preds = %if.end35.i
  %51 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bswenc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool39.not.i = icmp eq i8 %52, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %land.lhs.true.i.if.end56.i_crit_edge

land.lhs.true.i.if.end56.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.then40.i:                                      ; preds = %land.lhs.true.i
  %53 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %50, label %if.then40.i.if.end56.i_crit_edge [
    i8 1, label %if.then40.i.sw.bb.i_crit_edge
    i8 5, label %if.then40.i.sw.bb.i_crit_edge77
    i8 2, label %if.then40.i.sw.bb49.i_crit_edge
    i8 3, label %if.then40.i.sw.bb49.i_crit_edge78
    i8 4, label %sw.bb52.i
  ]

if.then40.i.sw.bb49.i_crit_edge78:                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49.i

if.then40.i.sw.bb49.i_crit_edge:                  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49.i

if.then40.i.sw.bb.i_crit_edge77:                  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then40.i.sw.bb.i_crit_edge:                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then40.i.if.end56.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

sw.bb.i:                                          ; preds = %if.then40.i.sw.bb.i_crit_edge, %if.then40.i.sw.bb.i_crit_edge77
  %54 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %26, align 4
  %or44.i = or i32 %55, 16384
  store i32 %or44.i, ptr %26, align 4
  %PrivacyKeyIndex.i = getelementptr inbounds %struct._adapter, ptr %19, i32 0, i32 8, i32 2
  %56 = ptrtoint ptr %PrivacyKeyIndex.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %PrivacyKeyIndex.i, align 8
  %58 = shl i32 %57, 9
  %59 = and i32 %58, 1536
  %or48.i = or i32 %59, %or44.i
  br label %if.end56.sink.split.i

sw.bb49.i:                                        ; preds = %if.then40.i.sw.bb49.i_crit_edge, %if.then40.i.sw.bb49.i_crit_edge78
  %60 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %26, align 4
  %or51.i = or i32 %61, 32768
  br label %if.end56.sink.split.i

sw.bb52.i:                                        ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %26, align 4
  %or54.i = or i32 %63, 49152
  br label %if.end56.sink.split.i

if.end56.sink.split.i:                            ; preds = %sw.bb52.i, %sw.bb49.i, %sw.bb.i
  %or48.sink.i = phi i32 [ %or48.i, %sw.bb.i ], [ %or51.i, %sw.bb49.i ], [ %or54.i, %sw.bb52.i ]
  %64 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or48.sink.i, ptr %26, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end56.sink.split.i, %if.then40.i.if.end56.i_crit_edge, %land.lhs.true.i.if.end56.i_crit_edge, %if.end35.i.if.end56.i_crit_edge
  br i1 %tobool.i.not.i, label %if.end56.i.if.end60.i_crit_edge, label %if.then58.i

if.end56.i.if.end60.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then58.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i, align 4
  %or59.i = or i32 %66, -2147483648
  store i32 %or59.i, ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then58.i, %if.end56.i.if.end60.i_crit_edge
  %67 = ptrtoint ptr %priority128.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %priority128.i, align 4
  %conv61.i = zext i8 %68 to i32
  %69 = shl nuw nsw i32 %conv61.i, 8
  %txdw3.i = getelementptr inbounds %struct.tx_desc, ptr %mem_addr.069, i32 0, i32 3
  %70 = ptrtoint ptr %txdw3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %txdw3.i, align 4
  %71 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ether_type, align 2
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %72, label %land.lhs.true72.i [
    i16 -30578, label %if.end60.i.if.else86.i_crit_edge
    i16 2054, label %if.end60.i.if.else86.i_crit_edge79
  ]

if.end60.i.if.else86.i_crit_edge79:               ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else86.i

if.end60.i.if.else86.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else86.i

land.lhs.true72.i:                                ; preds = %if.end60.i
  %74 = ptrtoint ptr %dhcp_pkt.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %dhcp_pkt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp74.not.i = icmp eq i8 %75, 1
  br i1 %cmp74.not.i, label %land.lhs.true72.i.if.else86.i_crit_edge, label %if.then76.i

land.lhs.true72.i.if.else86.i_crit_edge:          ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else86.i

if.then76.i:                                      ; preds = %land.lhs.true72.i
  %76 = ptrtoint ptr %htpriv.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %htpriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp77.i = icmp eq i32 %77, 1
  br i1 %cmp77.i, label %if.then79.i, label %if.then76.i.if.end87.i_crit_edge

if.then76.i.if.end87.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

if.then79.i:                                      ; preds = %if.then76.i
  %ampdu_enable.i = getelementptr inbounds %struct._adapter, ptr %19, i32 0, i32 1, i32 21, i32 1
  %78 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ampdu_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool80.not.i = icmp eq i32 %79, 0
  br i1 %tobool80.not.i, label %if.then81.i, label %if.then79.i.if.end87.i_crit_edge

if.then79.i.if.end87.i_crit_edge:                 ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

if.then81.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i, align 4
  %or83.i = or i32 %81, 64
  store i32 %or83.i, ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i, align 4
  br label %if.end87.i

if.else86.i:                                      ; preds = %land.lhs.true72.i.if.else86.i_crit_edge, %if.end60.i.if.else86.i_crit_edge, %if.end60.i.if.else86.i_crit_edge79
  %82 = ptrtoint ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 128, ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i, align 4
  %83 = ptrtoint ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8396544, ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.else86.i, %if.then81.i, %if.then79.i.if.end87.i_crit_edge, %if.then76.i.if.end87.i_crit_edge
  %84 = ptrtoint ptr %pctrl.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pctrl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %85)
  %cmp89.i = icmp eq i8 %85, 1
  br i1 %cmp89.i, label %if.then91.i, label %if.end87.i.update_txdesc.exit_crit_edge

if.end87.i.update_txdesc.exit_crit_edge:          ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_txdesc.exit

if.then91.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = shl nuw i32 %22, 7
  %87 = or i32 %txdesc_mp.sroa.5.0.copyload.i, %86
  %or100.i = or i32 %87, 64
  %88 = ptrtoint ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or100.i, ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i, align 4
  %89 = ptrtoint ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %txdesc_mp.sroa.8.0.copyload.i, ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i, align 4
  %90 = ptrtoint ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %txdesc_mp.sroa.10.0.copyload.i, ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i, align 4
  %91 = ptrtoint ptr %pctrl.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %pctrl.i, align 2
  br label %update_txdesc.exit

if.then111.i:                                     ; preds = %if.end18.i
  %92 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %26, align 4
  %or113.i = or i32 %93, 83886080
  store i32 %or113.i, ptr %26, align 4
  %94 = ptrtoint ptr %qsel114.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %qsel114.i, align 1
  %and116.i = zext i8 %95 to i32
  %shl117.i = shl nuw nsw i32 %and116.i, 16
  %and118.i = and i32 %shl117.i, 2031616
  %or120.i = or i32 %93, %and118.i
  %or122.i = or i32 %or120.i, 83886336
  store i32 %or122.i, ptr %26, align 4
  br i1 %tobool.i.not.i, label %if.then111.i.if.end127.i_crit_edge, label %if.then124.i

if.then111.i.if.end127.i_crit_edge:               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127.i

if.then124.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i, align 4
  %or126.i = or i32 %97, -2147483648
  store i32 %or126.i, ptr %txdesc_mp.sroa.5.0.pmem.sroa_idx.i, align 4
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then124.i, %if.then111.i.if.end127.i_crit_edge
  %98 = ptrtoint ptr %priority128.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %priority128.i, align 4
  %conv129.i = zext i8 %99 to i32
  %100 = shl nuw nsw i32 %conv129.i, 8
  %txdw3132.i = getelementptr inbounds %struct.tx_desc, ptr %mem_addr.069, i32 0, i32 3
  %101 = ptrtoint ptr %txdw3132.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %txdw3132.i, align 4
  %102 = ptrtoint ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1075839104, ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i, align 4
  %103 = ptrtoint ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 8396544, ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i, align 4
  br label %update_txdesc.exit

if.then139.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %26, align 4
  %or143.i = or i32 %105, 1245184
  store i32 %or143.i, ptr %26, align 4
  br label %update_txdesc.exit

if.else144.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %priority128.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %priority128.i, align 4
  %and147.i = zext i8 %107 to i32
  %shl148.i = shl nuw nsw i32 %and147.i, 16
  %and149.i = and i32 %shl148.i, 2031616
  %108 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %26, align 4
  %or151.i = or i32 %and149.i, %109
  store i32 %or151.i, ptr %26, align 4
  %110 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %seqnum.i, align 4
  %conv152.i = zext i16 %111 to i32
  %shl153.i = shl nuw i32 %conv152.i, 16
  %and154.i = and i32 %shl153.i, 268369920
  %112 = tail call i32 @llvm.bswap.i32(i32 %and154.i) #7
  %txdw3155.i = getelementptr inbounds %struct.tx_desc, ptr %mem_addr.069, i32 0, i32 3
  %113 = ptrtoint ptr %txdw3155.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %txdw3155.i, align 4
  %114 = ptrtoint ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1075839104, ptr %txdesc_mp.sroa.8.0.pmem.sroa_idx.i, align 4
  %115 = ptrtoint ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 9838336, ptr %txdesc_mp.sroa.10.0.pmem.sroa_idx.i, align 4
  br label %update_txdesc.exit

update_txdesc.exit:                               ; preds = %if.else144.i, %if.then139.i, %if.end127.i, %if.then91.i, %if.end87.i.update_txdesc.exit_crit_edge
  %116 = ptrtoint ptr %mem_addr26 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %mem_addr.069, ptr %mem_addr26, align 4
  %arrayidx27 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 10, i32 %t.067
  %117 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayidx27, align 1
  %118 = ptrtoint ptr %frame_tag.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %frame_tag.i, align 4
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %119, label %if.else5.i [
    i32 8, label %update_txdesc.exit.get_ff_hwaddr.exit_crit_edge
    i32 3, label %if.then4.i
  ]

update_txdesc.exit.get_ff_hwaddr.exit_crit_edge:  ; preds = %update_txdesc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ff_hwaddr.exit

if.then4.i:                                       ; preds = %update_txdesc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ff_hwaddr.exit

if.else5.i:                                       ; preds = %update_txdesc.exit
  %121 = ptrtoint ptr %padapter1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %padapter1.i, align 4
  %nr_endpoint.i = getelementptr inbounds %struct.dvobj_priv, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %nr_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nr_endpoint.i, align 4
  %125 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %124, label %if.else5.i.get_ff_hwaddr.exit_crit_edge [
    i32 6, label %if.then7.i
    i32 4, label %if.then16.i
  ]

if.else5.i.get_ff_hwaddr.exit_crit_edge:          ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ff_hwaddr.exit

if.then7.i:                                       ; preds = %if.else5.i
  %126 = ptrtoint ptr %priority128.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %priority128.i, align 4
  %switch.tableidx = add i8 %127, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %switch.tableidx)
  %128 = icmp ult i8 %switch.tableidx, 19
  br i1 %128, label %switch.lookup, label %if.then7.i.get_ff_hwaddr.exit_crit_edge

if.then7.i.get_ff_hwaddr.exit_crit_edge:          ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ff_hwaddr.exit

if.then16.i:                                      ; preds = %if.else5.i
  %129 = ptrtoint ptr %qsel114.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %qsel114.i, align 1
  %switch.tableidx73 = add i8 %130, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %switch.tableidx73)
  %131 = icmp ult i8 %switch.tableidx73, 16
  br i1 %131, label %switch.lookup72, label %if.then16.i.get_ff_hwaddr.exit_crit_edge

if.then16.i.get_ff_hwaddr.exit_crit_edge:         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ff_hwaddr.exit

switch.lookup:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [19 x i32], ptr @switch.table.dump_xframe, i32 0, i32 %132
  %133 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %133)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_ff_hwaddr.exit

switch.lookup72:                                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %134 = sext i8 %switch.tableidx73 to i32
  %switch.gep74 = getelementptr inbounds [16 x i32], ptr @switch.table.dump_xframe.1, i32 0, i32 %134
  %135 = ptrtoint ptr %switch.gep74 to i32
  call void @__asan_load4_noabort(i32 %135)
  %switch.load75 = load i32, ptr %switch.gep74, align 4
  br label %get_ff_hwaddr.exit

get_ff_hwaddr.exit:                               ; preds = %switch.lookup72, %switch.lookup, %if.then16.i.get_ff_hwaddr.exit_crit_edge, %if.then7.i.get_ff_hwaddr.exit_crit_edge, %if.else5.i.get_ff_hwaddr.exit_crit_edge, %if.then4.i, %update_txdesc.exit.get_ff_hwaddr.exit_crit_edge
  %addr.0.i = phi i32 [ 271712256, %if.then4.i ], [ 272171008, %update_txdesc.exit.get_ff_hwaddr.exit_crit_edge ], [ 271974400, %if.then7.i.get_ff_hwaddr.exit_crit_edge ], [ 0, %if.else5.i.get_ff_hwaddr.exit_crit_edge ], [ 271974400, %if.then16.i.get_ff_hwaddr.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load75, %switch.lookup72 ]
  tail call void @r8712_write_port(ptr noundef %padapter, i32 noundef %addr.0.i, i32 noundef %add4.i, ptr noundef %pxmitframe) #7
  %add.ptr = getelementptr i8, ptr %mem_addr.069, i32 %add4.i
  %136 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %136, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp28.not = icmp eq i32 %and, 0
  %add3060 = select i1 %cmp28.not, i32 0, i32 4
  %shr61 = add i32 %add3060, %136
  %shl = and i32 %shr61, -4
  %137 = inttoptr i32 %shl to ptr
  %inc = add nuw nsw i32 %t.067, 1
  %138 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nr_frags, align 2
  %conv11 = zext i8 %139 to i32
  %cmp12 = icmp ult i32 %inc, %conv11
  br i1 %cmp12, label %get_ff_hwaddr.exit.for.body_crit_edge, label %get_ff_hwaddr.exit.for.end_crit_edge

get_ff_hwaddr.exit.for.end_crit_edge:             ; preds = %get_ff_hwaddr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

get_ff_hwaddr.exit.for.body_crit_edge:            ; preds = %get_ff_hwaddr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %get_ff_hwaddr.exit.for.end_crit_edge, %if.end10.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_xmitframe_ex(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_xmitbuf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_xmit_direct(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %call = tail call i32 @r8712_xmitframe_coalesce(ptr noundef %padapter, ptr noundef %1, ptr noundef %pxmitframe) #7
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pkt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dump_xframe(ptr noundef %padapter, ptr noundef %pxmitframe)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_xmit_enqueue(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @r8712_xmit_classifier(ptr noundef %padapter, ptr noundef %pxmitframe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pkt, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_xmit_classifier(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_issue_addbareq_cmd(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

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
