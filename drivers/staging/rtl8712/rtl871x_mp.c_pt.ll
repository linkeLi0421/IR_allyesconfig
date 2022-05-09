; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_mp.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_mp.c"
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
%struct.mp_xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, [8 x i16], [8 x ptr], [8 x i8], [8 x i8] }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], ptr }
%struct.cmd_obj = type { i16, i8, ptr, i32, ptr, i32, %struct.list_head }

@init_mp_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&((&pmp_priv->free_mp_xmitqueue)->lock)\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@___asan_gen_.3 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [40 x i8] c"../drivers/staging/rtl8712/rtl871x_mp.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 42, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @init_mp_priv.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mp_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mp871xinit(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mppriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15
  %0 = ptrtoint ptr %mppriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %padapter, ptr %mppriv, align 4
  %mode.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 22
  %1 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %mode.i.i, align 4
  %curr_ch.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 9
  %2 = ptrtoint ptr %curr_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %curr_ch.i.i, align 4
  %curr_modem.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 12
  %3 = ptrtoint ptr %curr_modem.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %curr_modem.i.i, align 1
  %curr_rateidx.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 10
  %4 = ptrtoint ptr %curr_rateidx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %curr_rateidx.i.i, align 4
  %curr_txpoweridx.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 13
  %5 = ptrtoint ptr %curr_txpoweridx.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 20, ptr %curr_txpoweridx.i.i, align 2
  %antenna_tx.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 15
  %6 = ptrtoint ptr %antenna_tx.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %antenna_tx.i.i, align 4
  %antenna_rx.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 16
  %7 = ptrtoint ptr %antenna_rx.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 3, ptr %antenna_rx.i.i, align 2
  %check_mp_pkt.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 18
  %8 = ptrtoint ptr %check_mp_pkt.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %check_mp_pkt.i.i, align 1
  %tx_pktcount.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 4
  %9 = ptrtoint ptr %tx_pktcount.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tx_pktcount.i.i, align 4
  %rx_pktcount.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 5
  %10 = ptrtoint ptr %rx_pktcount.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_pktcount.i.i, align 4
  %rx_crcerrpktcount.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 6
  %11 = ptrtoint ptr %rx_crcerrpktcount.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_crcerrpktcount.i.i, align 4
  %free_mp_xmitqueue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 26
  %12 = ptrtoint ptr %free_mp_xmitqueue.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %free_mp_xmitqueue.i, ptr %free_mp_xmitqueue.i, align 4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 26, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %free_mp_xmitqueue.i, ptr %prev.i.i, align 4
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 26, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_mp_priv.__key, i16 noundef signext 3) #4
  %pallocated_mp_xmitframe_buf.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 24
  %14 = ptrtoint ptr %pallocated_mp_xmitframe_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pallocated_mp_xmitframe_buf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2592, i32 noundef 1252) #7
  %16 = ptrtoint ptr %pallocated_mp_xmitframe_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %pallocated_mp_xmitframe_buf.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.init_mp_priv.exit_crit_edge, label %if.end.i

entry.init_mp_priv.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_mp_priv.exit

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 4
  %pmp_xmtframe_buf.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 25
  %17 = ptrtoint ptr %pmp_xmtframe_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %pmp_xmtframe_buf.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end.i
  %pmp_xmitframe.04.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %incdec.ptr.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %pmp_xmitframe.04.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %pmp_xmitframe.04.i, ptr %pmp_xmitframe.04.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.list_head, ptr %pmp_xmitframe.04.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pmp_xmitframe.04.i, ptr %prev.i1.i, align 4
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pmp_xmitframe.04.i, ptr noundef %21, ptr noundef %free_mp_xmitqueue.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pmp_xmitframe.04.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %pmp_xmitframe.04.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %free_mp_xmitqueue.i, ptr %pmp_xmitframe.04.i, align 4
  %24 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i1.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %pmp_xmitframe.04.i, ptr %21, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %pkt.i = getelementptr inbounds %struct.mp_xmit_frame, ptr %pmp_xmitframe.04.i, i32 0, i32 2
  %26 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %pkt.i, align 4
  %frame_tag.i = getelementptr inbounds %struct.mp_xmit_frame, ptr %pmp_xmitframe.04.i, i32 0, i32 3
  %27 = ptrtoint ptr %frame_tag.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 7, ptr %frame_tag.i, align 4
  %28 = ptrtoint ptr %mppriv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mppriv, align 4
  %padapter.i = getelementptr inbounds %struct.mp_xmit_frame, ptr %pmp_xmitframe.04.i, i32 0, i32 4
  %30 = ptrtoint ptr %padapter.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %padapter.i, align 4
  %incdec.ptr.i = getelementptr %struct.mp_xmit_frame, ptr %pmp_xmitframe.04.i, i32 1
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %free_mp_xmitframe_cnt.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 27
  %31 = ptrtoint ptr %free_mp_xmitframe_cnt.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %free_mp_xmitframe_cnt.i, align 4
  br label %init_mp_priv.exit

init_mp_priv.exit:                                ; preds = %for.end.i, %entry.init_mp_priv.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mp871xdeinit(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pallocated_mp_xmitframe_buf.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 24
  %0 = ptrtoint ptr %pallocated_mp_xmitframe_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pallocated_mp_xmitframe_buf.i, align 4
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_bb_reg_read(ptr noundef %pAdapter, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  %val32.i39 = alloca i32, align 4
  %val32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %offset, 3
  %1 = and i16 %offset, 4092
  %iocmd.sroa.0.sroa.628.0.insert.ext29 = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #4
  %2 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val32.i, align 4
  %iocmd.sroa.0.sroa.0.0.insert.insert23 = shl nuw nsw i32 %iocmd.sroa.0.sroa.628.0.insert.ext29, 8
  %or4.i = or i32 %iocmd.sroa.0.sroa.0.0.insert.insert23, -268435456
  %call.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef %or4.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i, i8 noundef zeroext 1) #4
  br label %fw_iocmd_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val32.i, align 4
  br label %fw_iocmd_read.exit

fw_iocmd_read.exit:                               ; preds = %if.else.i, %if.then.i
  %4 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val32.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.not = icmp eq i16 %0, 0
  br i1 %cmp.not, label %fw_iocmd_read.exit.if.end_crit_edge, label %if.then

fw_iocmd_read.exit.if.end_crit_edge:              ; preds = %fw_iocmd_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %fw_iocmd_read.exit
  %conv1 = zext i16 %0 to i32
  %mul = shl nuw nsw i32 %conv1, 3
  %shr = lshr i32 %5, %mul
  %add = add nuw nsw i16 %1, 4
  %iocmd.sroa.0.sroa.628.0.insert.ext = zext i16 %add to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i39) #4
  %6 = ptrtoint ptr %val32.i39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val32.i39, align 4
  %iocmd.sroa.0.sroa.0.0.insert.insert = shl nuw nsw i32 %iocmd.sroa.0.sroa.628.0.insert.ext, 8
  %or4.i43 = or i32 %iocmd.sroa.0.sroa.0.0.insert.insert, -268435456
  %call.i44 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef %or4.i43) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i44)
  %tobool.not.i45 = icmp eq i8 %call.i44, 0
  br i1 %tobool.not.i45, label %if.else.i47, label %if.then.i46

if.then.i46:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i39, i8 noundef zeroext 1) #4
  br label %fw_iocmd_read.exit48

if.else.i47:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %val32.i39 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val32.i39, align 4
  br label %fw_iocmd_read.exit48

fw_iocmd_read.exit48:                             ; preds = %if.else.i47, %if.then.i46
  %8 = ptrtoint ptr %val32.i39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val32.i39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i39) #4
  %.neg = mul nsw i32 %conv1, -8
  %mul14 = add nsw i32 %.neg, 32
  %shl = shl i32 %9, %mul14
  %or = or i32 %shl, %shr
  br label %if.end

if.end:                                           ; preds = %fw_iocmd_read.exit48, %fw_iocmd_read.exit.if.end_crit_edge
  %bb_val.0 = phi i32 [ %or, %fw_iocmd_read.exit48 ], [ %5, %fw_iocmd_read.exit.if.end_crit_edge ]
  ret i32 %bb_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_bb_reg_write(ptr noundef %pAdapter, i16 noundef zeroext %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i69 = alloca i32, align 4
  %value.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %offset, 3
  %1 = and i16 %offset, 4092
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.not = icmp eq i16 %0, 0
  br i1 %cmp.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then:                                          ; preds = %entry
  %conv1 = zext i16 %0 to i32
  %call = tail call i32 @r8712_bb_reg_read(ptr noundef %pAdapter, i16 noundef zeroext %1)
  %.neg = mul nsw i32 %conv1, -8
  %mul = add nsw i32 %.neg, 32
  %shr = lshr i32 -1, %mul
  %and10 = and i32 %call, %shr
  %mul12 = shl nuw nsw i32 %conv1, 3
  %shl = shl i32 %value, %mul12
  %or = or i32 %and10, %shl
  %iocmd.sroa.0.sroa.654.0.insert.ext55 = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i)
  %2 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %value.addr.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %iocmd.sroa.0.sroa.0.0.insert.insert49 = shl nuw nsw i32 %iocmd.sroa.0.sroa.654.0.insert.ext55, 8
  %or5.i = or i32 %iocmd.sroa.0.sroa.0.0.insert.insert49, -268435455
  %call.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef %or5.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not = icmp eq i8 %call.i, 0
  br i1 %tobool.not, label %if.then.cleanup33_crit_edge, label %cleanup

if.then.cleanup33_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup33

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %add = add nuw nsw i16 %1, 4
  %call19 = call i32 @r8712_bb_reg_read(ptr noundef %pAdapter, i16 noundef zeroext %add)
  %shl22 = shl nsw i32 -1, %mul12
  %and23 = and i32 %call19, %shl22
  %shr27 = lshr i32 %value, %mul
  %or28 = or i32 %and23, %shr27
  br label %if.end30

if.end30:                                         ; preds = %cleanup, %entry.if.end30_crit_edge
  %iocmd.sroa.0.sroa.654.1 = phi i16 [ %add, %cleanup ], [ %1, %entry.if.end30_crit_edge ]
  %value.addr.1 = phi i32 [ %or28, %cleanup ], [ %value, %entry.if.end30_crit_edge ]
  %iocmd.sroa.0.sroa.654.0.insert.ext = zext i16 %iocmd.sroa.0.sroa.654.1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69)
  %3 = ptrtoint ptr %value.addr.i69 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %value.addr.1, ptr %value.addr.i69, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %iocmd.sroa.0.sroa.0.0.insert.insert = shl nuw nsw i32 %iocmd.sroa.0.sroa.654.0.insert.ext, 8
  %or5.i74 = or i32 %iocmd.sroa.0.sroa.0.0.insert.insert, -268435455
  %call.i75 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef %or5.i74) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69)
  br label %cleanup33

cleanup33:                                        ; preds = %if.end30, %if.then.cleanup33_crit_edge
  %retval.1 = phi i8 [ %call.i75, %if.end30 ], [ 0, %if.then.cleanup33_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_rf_reg_read(ptr noundef %pAdapter, i8 noundef zeroext %path, i8 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  %val32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %path to i32
  %conv1 = zext i8 %offset to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #4
  %0 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val32.i, align 4
  %1 = shl nuw nsw i32 %conv, 16
  %2 = shl nuw nsw i32 %conv1, 8
  %iocmd.sroa.0.sroa.0.0.insert.insert = or i32 %2, %1
  %or4.i = or i32 %iocmd.sroa.0.sroa.0.0.insert.insert, -268435454
  %call.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef %or4.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i, i8 noundef zeroext 1) #4
  br label %fw_iocmd_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val32.i, align 4
  br label %fw_iocmd_read.exit

fw_iocmd_read.exit:                               ; preds = %if.else.i, %if.then.i
  %4 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val32.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_rf_reg_write(ptr noundef %pAdapter, i8 noundef zeroext %path, i8 noundef zeroext %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %path to i32
  %conv1 = zext i8 %offset to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i)
  %0 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %value.addr.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %1 = shl nuw nsw i32 %conv, 16
  %2 = shl nuw nsw i32 %conv1, 8
  %iocmd.sroa.0.sroa.0.0.insert.insert = or i32 %2, %1
  %or5.i = or i32 %iocmd.sroa.0.sroa.0.0.insert.insert, -268435453
  %call.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef %or5.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i)
  ret i8 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SetChannel(ptr noundef %pAdapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 4) #7
  %tobool2.not = icmp eq ptr %call7.i20, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %curr_ch = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 9
  %2 = ptrtoint ptr %curr_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_ch, align 8
  %4 = ptrtoint ptr %call7.i20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call7.i20, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 8
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 46, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i20, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %9 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %11 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rspsz, align 8
  tail call void @r8712_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_enqueue_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SetTxPower(ptr noundef %pAdapter) local_unnamed_addr #0 align 64 {
entry:
  %val32.i.i127.i = alloca i32, align 4
  %value.addr.i69.i125.i = alloca i32, align 4
  %val32.i.i119.i = alloca i32, align 4
  %value.addr.i69.i117.i = alloca i32, align 4
  %val32.i.i111.i = alloca i32, align 4
  %value.addr.i69.i109.i = alloca i32, align 4
  %val32.i.i103.i = alloca i32, align 4
  %value.addr.i69.i101.i = alloca i32, align 4
  %val32.i.i95.i = alloca i32, align 4
  %value.addr.i69.i93.i = alloca i32, align 4
  %val32.i.i.i4 = alloca i32, align 4
  %value.addr.i69.i.i5 = alloca i32, align 4
  %val32.i.i.i = alloca i32, align 4
  %value.addr.i69.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_txpoweridx = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 13
  %0 = ptrtoint ptr %curr_txpoweridx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_txpoweridx, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i.i) #4
  %2 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val32.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267515904) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i8 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i.i, i8 noundef zeroext 1) #4
  br label %SetCCKTxPower.exit

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val32.i.i.i, align 4
  br label %SetCCKTxPower.exit

SetCCKTxPower.exit:                               ; preds = %if.else.i.i.i, %if.then.i.i.i
  %4 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val32.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i.i) #4
  %conv1.i = zext i8 %1 to i32
  %and.i.i = and i32 %5, -32513
  %shl.i.i = shl nuw nsw i32 %conv1.i, 8
  %or.i.i = or i32 %and.i.i, %shl.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i.i) #4
  %6 = ptrtoint ptr %value.addr.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i, ptr %value.addr.i69.i.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267515903) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i.i) #4
  %or7.i = mul nuw i32 %conv1.i, 16843009
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i.i4) #4
  %7 = ptrtoint ptr %val32.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val32.i.i.i4, align 4
  %call.i.i.i6 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267517952) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i6)
  %tobool.not.i.i.i7 = icmp eq i8 %call.i.i.i6, 0
  br i1 %tobool.not.i.i.i7, label %if.else.i.i.i9, label %if.then.i.i.i8

if.then.i.i.i8:                                   ; preds = %SetCCKTxPower.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i.i4, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit.i

if.else.i.i.i9:                                   ; preds = %SetCCKTxPower.exit
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %val32.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val32.i.i.i4, align 4
  br label %set_bb_reg.exit.i

set_bb_reg.exit.i:                                ; preds = %if.else.i.i.i9, %if.then.i.i.i8
  %9 = ptrtoint ptr %val32.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val32.i.i.i4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i.i4) #4
  %and.i.i10 = and i32 %10, -2139062144
  %or.i.i11 = or i32 %and.i.i10, %or7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i.i5) #4
  %11 = ptrtoint ptr %value.addr.i69.i.i5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i.i11, ptr %value.addr.i69.i.i5, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i.i5, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i.i12 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267517951) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i.i5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i95.i) #4
  %12 = ptrtoint ptr %val32.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val32.i.i95.i, align 4
  %call.i.i96.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267516928) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i96.i)
  %tobool.not.i.i97.i = icmp eq i8 %call.i.i96.i, 0
  br i1 %tobool.not.i.i97.i, label %if.else.i.i99.i, label %if.then.i.i98.i

if.then.i.i98.i:                                  ; preds = %set_bb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i95.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit40.i

if.else.i.i99.i:                                  ; preds = %set_bb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %val32.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val32.i.i95.i, align 4
  br label %set_bb_reg.exit40.i

set_bb_reg.exit40.i:                              ; preds = %if.else.i.i99.i, %if.then.i.i98.i
  %14 = ptrtoint ptr %val32.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val32.i.i95.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i95.i) #4
  %and.i36.i = and i32 %15, -2139062144
  %or.i38.i = or i32 %and.i36.i, %or7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i93.i) #4
  %16 = ptrtoint ptr %value.addr.i69.i93.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i38.i, ptr %value.addr.i69.i93.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i93.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i94.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267516927) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i93.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i103.i) #4
  %17 = ptrtoint ptr %val32.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val32.i.i103.i, align 4
  %call.i.i104.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267513856) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i104.i)
  %tobool.not.i.i105.i = icmp eq i8 %call.i.i104.i, 0
  br i1 %tobool.not.i.i105.i, label %if.else.i.i107.i, label %if.then.i.i106.i

if.then.i.i106.i:                                 ; preds = %set_bb_reg.exit40.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i103.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit53.i

if.else.i.i107.i:                                 ; preds = %set_bb_reg.exit40.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %val32.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val32.i.i103.i, align 4
  br label %set_bb_reg.exit53.i

set_bb_reg.exit53.i:                              ; preds = %if.else.i.i107.i, %if.then.i.i106.i
  %19 = ptrtoint ptr %val32.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val32.i.i103.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i103.i) #4
  %and.i49.i = and i32 %20, -2139062144
  %or.i51.i = or i32 %and.i49.i, %or7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i101.i) #4
  %21 = ptrtoint ptr %value.addr.i69.i101.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i51.i, ptr %value.addr.i69.i101.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i101.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i102.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267513855) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i101.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i111.i) #4
  %22 = ptrtoint ptr %val32.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %val32.i.i111.i, align 4
  %call.i.i112.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267512832) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i112.i)
  %tobool.not.i.i113.i = icmp eq i8 %call.i.i112.i, 0
  br i1 %tobool.not.i.i113.i, label %if.else.i.i115.i, label %if.then.i.i114.i

if.then.i.i114.i:                                 ; preds = %set_bb_reg.exit53.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i111.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit66.i

if.else.i.i115.i:                                 ; preds = %set_bb_reg.exit53.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %val32.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val32.i.i111.i, align 4
  br label %set_bb_reg.exit66.i

set_bb_reg.exit66.i:                              ; preds = %if.else.i.i115.i, %if.then.i.i114.i
  %24 = ptrtoint ptr %val32.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val32.i.i111.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i111.i) #4
  %and.i62.i = and i32 %25, -2139062144
  %or.i64.i = or i32 %and.i62.i, %or7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i109.i) #4
  %26 = ptrtoint ptr %value.addr.i69.i109.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i64.i, ptr %value.addr.i69.i109.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i109.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i110.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267512831) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i109.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i119.i) #4
  %27 = ptrtoint ptr %val32.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %val32.i.i119.i, align 4
  %call.i.i120.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267511808) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i120.i)
  %tobool.not.i.i121.i = icmp eq i8 %call.i.i120.i, 0
  br i1 %tobool.not.i.i121.i, label %if.else.i.i123.i, label %if.then.i.i122.i

if.then.i.i122.i:                                 ; preds = %set_bb_reg.exit66.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i119.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit79.i

if.else.i.i123.i:                                 ; preds = %set_bb_reg.exit66.i
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %val32.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val32.i.i119.i, align 4
  br label %set_bb_reg.exit79.i

set_bb_reg.exit79.i:                              ; preds = %if.else.i.i123.i, %if.then.i.i122.i
  %29 = ptrtoint ptr %val32.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val32.i.i119.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i119.i) #4
  %and.i75.i = and i32 %30, -2139062144
  %or.i77.i = or i32 %and.i75.i, %or7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i117.i) #4
  %31 = ptrtoint ptr %value.addr.i69.i117.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i77.i, ptr %value.addr.i69.i117.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i117.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i118.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267511807) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i117.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i127.i) #4
  %32 = ptrtoint ptr %val32.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val32.i.i127.i, align 4
  %call.i.i128.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267510784) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i128.i)
  %tobool.not.i.i129.i = icmp eq i8 %call.i.i128.i, 0
  br i1 %tobool.not.i.i129.i, label %if.else.i.i131.i, label %if.then.i.i130.i

if.then.i.i130.i:                                 ; preds = %set_bb_reg.exit79.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i127.i, i8 noundef zeroext 1) #4
  br label %SetOFDMTxPower.exit

if.else.i.i131.i:                                 ; preds = %set_bb_reg.exit79.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %val32.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %val32.i.i127.i, align 4
  br label %SetOFDMTxPower.exit

SetOFDMTxPower.exit:                              ; preds = %if.else.i.i131.i, %if.then.i.i130.i
  %34 = ptrtoint ptr %val32.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val32.i.i127.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i127.i) #4
  %and.i88.i = and i32 %35, -2139062144
  %or.i90.i = or i32 %and.i88.i, %or7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i125.i) #4
  %36 = ptrtoint ptr %value.addr.i69.i125.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i90.i, ptr %value.addr.i69.i125.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i125.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i126.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267510783) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i125.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SetTxAGCOffset(ptr noundef %pAdapter, i32 noundef %ulTxAGCOffset) local_unnamed_addr #0 align 64 {
entry:
  %val32.i.i = alloca i32, align 4
  %value.addr.i69.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i) #4
  %0 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val32.i.i, align 4
  %call.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267908096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val32.i.i, align 4
  br label %set_bb_reg.exit

set_bb_reg.exit:                                  ; preds = %if.else.i.i, %if.then.i.i
  %2 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i) #4
  %4 = lshr i32 %ulTxAGCOffset, 4
  %shl4 = and i32 %4, 4080
  %and = and i32 %ulTxAGCOffset, 255
  %or = or i32 %shl4, %and
  %and.i = and i32 %3, -1048321
  %or58 = shl nuw nsw i32 %or, 8
  %ulTxAGCOffset.mask = and i32 %ulTxAGCOffset, 16711680
  %shl.i = or i32 %ulTxAGCOffset.mask, %or58
  %or.i = or i32 %shl.i, %and.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  %5 = ptrtoint ptr %value.addr.i69.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %value.addr.i69.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267908095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SetDataRate(ptr noundef %pAdapter) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_rateidx = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 10
  %0 = ptrtoint ptr %curr_rateidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_rateidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  %cond = select i1 %cmp, i32 17472, i32 61952
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i.i) #4
  %2 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %value.addr.i.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268425725) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SwitchBandwidth(ptr noundef %pAdapter) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i69.i140 = alloca i32, align 4
  %val32.i.i134 = alloca i32, align 4
  %value.addr.i69.i132 = alloca i32, align 4
  %val32.i.i126 = alloca i32, align 4
  %value.addr.i69.i124 = alloca i32, align 4
  %val32.i.i118 = alloca i32, align 4
  %value.addr.i69.i116 = alloca i32, align 4
  %val32.i.i110 = alloca i32, align 4
  %value.addr.i69.i108 = alloca i32, align 4
  %value.addr.i69.i106 = alloca i32, align 4
  %val32.i.i100 = alloca i32, align 4
  %value.addr.i69.i98 = alloca i32, align 4
  %val32.i.i = alloca i32, align 4
  %value.addr.i69.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_bandwidth = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 11
  %0 = ptrtoint ptr %curr_bandwidth to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_bandwidth, align 8
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %pAdapter, i32 noundef 270860803) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %2 = and i8 %call, -5
  %masksel = select i1 %cmp, i8 4, i8 0
  %regBwOpMode.0 = or i8 %2, %masksel
  tail call void @r8712_write8(ptr noundef %pAdapter, i32 noundef 270860803, i8 noundef zeroext %regBwOpMode.0) #4
  %3 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog22_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb10
  ]

entry.sw.epilog22_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog22

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i) #4
  %4 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val32.i.i, align 4
  %call.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit

if.else.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %val32.i.i, align 4
  br label %r8712_bb_reg_read.exit

r8712_bb_reg_read.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  %6 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i) #4
  %and.i = and i32 %7, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  %8 = ptrtoint ptr %value.addr.i69.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %value.addr.i69.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i100) #4
  %9 = ptrtoint ptr %val32.i.i100 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %val32.i.i100, align 4
  %call.i.i101 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267845632) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i101)
  %tobool.not.i.i102 = icmp eq i8 %call.i.i101, 0
  br i1 %tobool.not.i.i102, label %if.else.i.i104, label %if.then.i.i103

if.then.i.i103:                                   ; preds = %r8712_bb_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i100, i8 noundef zeroext 1) #4
  br label %sw.bb17

if.else.i.i104:                                   ; preds = %r8712_bb_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %val32.i.i100 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %val32.i.i100, align 4
  br label %sw.bb17

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i110) #4
  %11 = ptrtoint ptr %val32.i.i110 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %val32.i.i110, align 4
  %call.i.i111 = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i111)
  %tobool.not.i.i112 = icmp eq i8 %call.i.i111, 0
  br i1 %tobool.not.i.i112, label %if.else.i.i114, label %if.then.i.i113

if.then.i.i113:                                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i110, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit61

if.else.i.i114:                                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %val32.i.i110 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val32.i.i110, align 4
  br label %set_bb_reg.exit61

set_bb_reg.exit61:                                ; preds = %if.else.i.i114, %if.then.i.i113
  %13 = ptrtoint ptr %val32.i.i110 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val32.i.i110, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i110) #4
  %or.i = or i32 %14, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i108) #4
  %15 = ptrtoint ptr %value.addr.i69.i108 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %value.addr.i69.i108, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i108, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i109 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i108) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i118) #4
  %16 = ptrtoint ptr %val32.i.i118 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %val32.i.i118, align 4
  %call.i.i119 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267845632) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i119)
  %tobool.not.i.i120 = icmp eq i8 %call.i.i119, 0
  br i1 %tobool.not.i.i120, label %if.else.i.i122, label %if.then.i.i121

if.then.i.i121:                                   ; preds = %set_bb_reg.exit61
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i118, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit74

if.else.i.i122:                                   ; preds = %set_bb_reg.exit61
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %val32.i.i118 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val32.i.i118, align 4
  br label %set_bb_reg.exit74

set_bb_reg.exit74:                                ; preds = %if.else.i.i122, %if.then.i.i121
  %18 = ptrtoint ptr %val32.i.i118 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val32.i.i118, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i118) #4
  %or.i72 = or i32 %19, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i116) #4
  %20 = ptrtoint ptr %value.addr.i69.i116 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i72, ptr %value.addr.i69.i116, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i116, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i117 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267845631) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i116) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i126) #4
  %21 = ptrtoint ptr %val32.i.i126 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val32.i.i126, align 4
  %call.i.i127 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i127)
  %tobool.not.i.i128 = icmp eq i8 %call.i.i127, 0
  br i1 %tobool.not.i.i128, label %if.else.i.i130, label %if.then.i.i129

if.then.i.i129:                                   ; preds = %set_bb_reg.exit74
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i126, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit131

if.else.i.i130:                                   ; preds = %set_bb_reg.exit74
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %val32.i.i126 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %val32.i.i126, align 4
  br label %r8712_bb_reg_read.exit131

r8712_bb_reg_read.exit131:                        ; preds = %if.else.i.i130, %if.then.i.i129
  %23 = ptrtoint ptr %val32.i.i126 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val32.i.i126, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i126) #4
  %and.i83 = and i32 %24, -17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i124) #4
  %25 = ptrtoint ptr %value.addr.i69.i124 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i83, ptr %value.addr.i69.i124, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i124, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i125 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i124) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i134) #4
  %26 = ptrtoint ptr %val32.i.i134 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %val32.i.i134, align 4
  %call.i.i135 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i135)
  %tobool.not.i.i136 = icmp eq i8 %call.i.i135, 0
  br i1 %tobool.not.i.i136, label %if.else.i.i138, label %if.then.i.i137

if.then.i.i137:                                   ; preds = %r8712_bb_reg_read.exit131
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i134, i8 noundef zeroext 1) #4
  br label %sw.bb19

if.else.i.i138:                                   ; preds = %r8712_bb_reg_read.exit131
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %val32.i.i134 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %val32.i.i134, align 4
  br label %sw.bb19

sw.bb17:                                          ; preds = %if.else.i.i104, %if.then.i.i103
  %28 = ptrtoint ptr %val32.i.i100 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val32.i.i100, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i100) #4
  %and.i47 = and i32 %29, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i98) #4
  %30 = ptrtoint ptr %value.addr.i69.i98 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i47, ptr %value.addr.i69.i98, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i98, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i99 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267845631) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i98) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i106) #4
  %31 = ptrtoint ptr %value.addr.i69.i106 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 88, ptr %value.addr.i69.i106, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i106, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i107 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267877375) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i106) #4
  br label %sw.epilog22.sink.split

sw.bb19:                                          ; preds = %if.else.i.i138, %if.then.i.i137
  %32 = ptrtoint ptr %val32.i.i134 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val32.i.i134, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i134) #4
  %and.i94 = and i32 %33, -3073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i132) #4
  %34 = ptrtoint ptr %value.addr.i69.i132 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i94, ptr %value.addr.i69.i132, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i132, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i133 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i132) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i140) #4
  %35 = ptrtoint ptr %value.addr.i69.i140 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 24, ptr %value.addr.i69.i140, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i140, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i141 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267877375) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i140) #4
  br label %sw.epilog22.sink.split

sw.epilog22.sink.split:                           ; preds = %sw.bb19, %sw.bb17
  %.sink = phi i32 [ 0, %sw.bb19 ], [ 1, %sw.bb17 ]
  call fastcc void @set_rf_reg(ptr noundef %pAdapter, i8 noundef zeroext 0, i8 noundef zeroext 24, i32 noundef 3072, i32 noundef %.sink)
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.epilog22.sink.split, %entry.sw.epilog22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_rf_reg(ptr noundef %pAdapter, i8 noundef zeroext %path, i8 noundef zeroext %offset, i32 noundef %bitmask, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i = alloca i32, align 4
  %val32.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %path to i32
  %conv1.i = zext i8 %offset to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i) #4
  %0 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val32.i.i, align 4
  %1 = shl nuw nsw i32 %conv.i, 16
  %2 = shl nuw nsw i32 %conv1.i, 8
  %iocmd.sroa.0.sroa.0.0.insert.insert.i = or i32 %2, %1
  %or4.i.i = or i32 %iocmd.sroa.0.sroa.0.0.insert.insert.i, -268435454
  %call.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef %or4.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i, i8 noundef zeroext 1) #4
  br label %r8712_rf_reg_read.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val32.i.i, align 4
  br label %r8712_rf_reg_read.exit

r8712_rf_reg_read.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  %4 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %r8712_rf_reg_read.exit
  %i.05.i = phi i32 [ 0, %r8712_rf_reg_read.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = shl nuw i32 1, %i.05.i
  %7 = and i32 %6, %bitmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.bitshift.exit_crit_edge

for.body.i.bitshift.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bitshift.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.bitshift.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.bitshift.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bitshift.exit

bitshift.exit:                                    ; preds = %for.inc.i.bitshift.exit_crit_edge, %for.body.i.bitshift.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.05.i, %for.body.i.bitshift.exit_crit_edge ], [ 32, %for.inc.i.bitshift.exit_crit_edge ]
  %neg = xor i32 %bitmask, -1
  %and = and i32 %5, %neg
  %shl = shl i32 %value, %i.0.lcssa.i
  %or = or i32 %shl, %and
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i.i) #4
  %8 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %value.addr.i.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %or5.i.i = or i32 %iocmd.sroa.0.sroa.0.0.insert.insert.i, -268435453
  %call.i.i4 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef %or5.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SwitchAntenna(ptr noundef %pAdapter) local_unnamed_addr #0 align 64 {
entry:
  %val32.i.i263 = alloca i32, align 4
  %value.addr.i69.i261 = alloca i32, align 4
  %val32.i.i255 = alloca i32, align 4
  %value.addr.i69.i253 = alloca i32, align 4
  %val32.i.i247 = alloca i32, align 4
  %value.addr.i69.i245 = alloca i32, align 4
  %val32.i.i239 = alloca i32, align 4
  %value.addr.i69.i237 = alloca i32, align 4
  %value.addr.i69.i235 = alloca i32, align 4
  %val32.i.i229 = alloca i32, align 4
  %value.addr.i69.i227 = alloca i32, align 4
  %val32.i.i221 = alloca i32, align 4
  %value.addr.i69.i219 = alloca i32, align 4
  %val32.i.i213 = alloca i32, align 4
  %value.addr.i69.i211 = alloca i32, align 4
  %val32.i.i205 = alloca i32, align 4
  %value.addr.i69.i203 = alloca i32, align 4
  %val32.i.i197 = alloca i32, align 4
  %value.addr.i69.i195 = alloca i32, align 4
  %val32.i.i = alloca i32, align 4
  %value.addr.i69.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %antenna_tx = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 15
  %0 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %antenna_tx, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb2
    i16 3, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i) #4
  %3 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val32.i.i, align 4
  %call.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267901952) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit

if.else.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val32.i.i, align 4
  br label %set_bb_reg.exit

set_bb_reg.exit:                                  ; preds = %if.else.i.i, %if.then.i.i
  %5 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i) #4
  %and.i = and i32 %6, -15
  %or.i = or i32 %and.i, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  %7 = ptrtoint ptr %value.addr.i69.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %value.addr.i69.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267901951) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i197) #4
  %8 = ptrtoint ptr %val32.i.i197 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val32.i.i197, align 4
  %call.i.i198 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267899904) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i198)
  %tobool.not.i.i199 = icmp eq i8 %call.i.i198, 0
  br i1 %tobool.not.i.i199, label %if.else.i.i201, label %if.then.i.i200

if.then.i.i200:                                   ; preds = %set_bb_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i197, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit89

if.else.i.i201:                                   ; preds = %set_bb_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %val32.i.i197 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %val32.i.i197, align 4
  br label %set_bb_reg.exit89

set_bb_reg.exit89:                                ; preds = %if.else.i.i201, %if.then.i.i200
  %10 = ptrtoint ptr %val32.i.i197 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val32.i.i197, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i197) #4
  %and.i85 = and i32 %11, -15
  %or.i87 = or i32 %and.i85, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i195) #4
  %12 = ptrtoint ptr %value.addr.i69.i195 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i87, ptr %value.addr.i69.i195, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i195, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i196 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267899903) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i195) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i205) #4
  %13 = ptrtoint ptr %val32.i.i205 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val32.i.i205, align 4
  %call.i.i206 = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267901952) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i206)
  %tobool.not.i.i207 = icmp eq i8 %call.i.i206, 0
  br i1 %tobool.not.i.i207, label %if.else.i.i209, label %if.then.i.i208

if.then.i.i208:                                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i205, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit102

if.else.i.i209:                                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %val32.i.i205 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val32.i.i205, align 4
  br label %set_bb_reg.exit102

set_bb_reg.exit102:                               ; preds = %if.else.i.i209, %if.then.i.i208
  %15 = ptrtoint ptr %val32.i.i205 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val32.i.i205, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i205) #4
  %and.i98 = and i32 %16, -15
  %or.i100 = or i32 %and.i98, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i203) #4
  %17 = ptrtoint ptr %value.addr.i69.i203 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i100, ptr %value.addr.i69.i203, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i203, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i204 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267901951) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i203) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i213) #4
  %18 = ptrtoint ptr %val32.i.i213 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val32.i.i213, align 4
  %call.i.i214 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267899904) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i214)
  %tobool.not.i.i215 = icmp eq i8 %call.i.i214, 0
  br i1 %tobool.not.i.i215, label %if.else.i.i217, label %if.then.i.i216

if.then.i.i216:                                   ; preds = %set_bb_reg.exit102
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i213, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit115

if.else.i.i217:                                   ; preds = %set_bb_reg.exit102
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %val32.i.i213 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %val32.i.i213, align 4
  br label %set_bb_reg.exit115

set_bb_reg.exit115:                               ; preds = %if.else.i.i217, %if.then.i.i216
  %20 = ptrtoint ptr %val32.i.i213 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val32.i.i213, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i213) #4
  %and.i111 = and i32 %21, -15
  %or.i113 = or i32 %and.i111, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i211) #4
  %22 = ptrtoint ptr %value.addr.i69.i211 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i113, ptr %value.addr.i69.i211, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i211, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i212 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267899903) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i211) #4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i221) #4
  %23 = ptrtoint ptr %val32.i.i221 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val32.i.i221, align 4
  %call.i.i222 = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267901952) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i222)
  %tobool.not.i.i223 = icmp eq i8 %call.i.i222, 0
  br i1 %tobool.not.i.i223, label %if.else.i.i225, label %if.then.i.i224

if.then.i.i224:                                   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i221, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit128

if.else.i.i225:                                   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %val32.i.i221 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %val32.i.i221, align 4
  br label %set_bb_reg.exit128

set_bb_reg.exit128:                               ; preds = %if.else.i.i225, %if.then.i.i224
  %25 = ptrtoint ptr %val32.i.i221 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val32.i.i221, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i221) #4
  %and.i124 = and i32 %26, -15
  %or.i126 = or i32 %and.i124, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i219) #4
  %27 = ptrtoint ptr %value.addr.i69.i219 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i126, ptr %value.addr.i69.i219, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i219, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i220 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267901951) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i219) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i229) #4
  %28 = ptrtoint ptr %val32.i.i229 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val32.i.i229, align 4
  %call.i.i230 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267899904) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i230)
  %tobool.not.i.i231 = icmp eq i8 %call.i.i230, 0
  br i1 %tobool.not.i.i231, label %if.else.i.i233, label %if.then.i.i232

if.then.i.i232:                                   ; preds = %set_bb_reg.exit128
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i229, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit141

if.else.i.i233:                                   ; preds = %set_bb_reg.exit128
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %val32.i.i229 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %val32.i.i229, align 4
  br label %set_bb_reg.exit141

set_bb_reg.exit141:                               ; preds = %if.else.i.i233, %if.then.i.i232
  %30 = ptrtoint ptr %val32.i.i229 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val32.i.i229, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i229) #4
  %and.i137 = and i32 %31, -15
  %or.i139 = or i32 %and.i137, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i227) #4
  %32 = ptrtoint ptr %value.addr.i69.i227 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i139, ptr %value.addr.i69.i227, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i227, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i228 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267899903) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i227) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %set_bb_reg.exit141, %set_bb_reg.exit115, %set_bb_reg.exit89, %entry.sw.epilog_crit_edge
  %cck_ant_select_val.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 12, %set_bb_reg.exit141 ], [ 4, %set_bb_reg.exit115 ], [ 8, %set_bb_reg.exit89 ]
  %ofdm_tx_en_val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 3, %set_bb_reg.exit141 ], [ 3, %set_bb_reg.exit115 ], [ 3, %set_bb_reg.exit89 ]
  %ofdm_tx_ant_sel_val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 53613363, %set_bb_reg.exit141 ], [ 572662306, %set_bb_reg.exit115 ], [ 286331153, %set_bb_reg.exit89 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i235) #4
  %33 = ptrtoint ptr %value.addr.i69.i235 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %ofdm_tx_ant_sel_val.0, ptr %value.addr.i69.i235, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i235, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i236 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267842559) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i235) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i239) #4
  %34 = ptrtoint ptr %val32.i.i239 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %val32.i.i239, align 4
  %call.i.i240 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267910144) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i240)
  %tobool.not.i.i241 = icmp eq i8 %call.i.i240, 0
  br i1 %tobool.not.i.i241, label %if.else.i.i243, label %if.then.i.i242

if.then.i.i242:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i239, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit155

if.else.i.i243:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %val32.i.i239 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val32.i.i239, align 4
  br label %set_bb_reg.exit155

set_bb_reg.exit155:                               ; preds = %if.else.i.i243, %if.then.i.i242
  %36 = ptrtoint ptr %val32.i.i239 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val32.i.i239, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i239) #4
  %and.i151 = and i32 %37, -16
  %or.i153 = or i32 %ofdm_tx_en_val.0, %and.i151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i237) #4
  %38 = ptrtoint ptr %value.addr.i69.i237 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i153, ptr %value.addr.i69.i237, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i237, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i238 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267910143) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i237) #4
  %antenna_rx = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 16
  %39 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %antenna_rx, align 2
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %40, label %set_bb_reg.exit155.sw.epilog40_crit_edge [
    i16 1, label %sw.bb18
    i16 2, label %sw.bb25
    i16 3, label %sw.bb32
  ]

set_bb_reg.exit155.sw.epilog40_crit_edge:         ; preds = %set_bb_reg.exit155
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog40

sw.bb18:                                          ; preds = %set_bb_reg.exit155
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog40

sw.bb25:                                          ; preds = %set_bb_reg.exit155
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set31 = or i8 %cck_ant_select_val.0, 80
  br label %sw.epilog40

sw.bb32:                                          ; preds = %set_bb_reg.exit155
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set38 = or i8 %cck_ant_select_val.0, 64
  br label %sw.epilog40

sw.epilog40:                                      ; preds = %sw.bb32, %sw.bb25, %sw.bb18, %set_bb_reg.exit155.sw.epilog40_crit_edge
  %cck_ant_select_val.1 = phi i8 [ %cck_ant_select_val.0, %set_bb_reg.exit155.sw.epilog40_crit_edge ], [ %bf.set38, %sw.bb32 ], [ %bf.set31, %sw.bb25 ], [ %cck_ant_select_val.0, %sw.bb18 ]
  %ofdm_rx_ant_sel_val.0 = phi i32 [ 0, %set_bb_reg.exit155.sw.epilog40_crit_edge ], [ 3, %sw.bb32 ], [ 2, %sw.bb25 ], [ 1, %sw.bb18 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i247) #4
  %42 = ptrtoint ptr %val32.i.i247 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val32.i.i247, align 4
  %call.i.i248 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267648000) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i248)
  %tobool.not.i.i249 = icmp eq i8 %call.i.i248, 0
  br i1 %tobool.not.i.i249, label %if.else.i.i251, label %if.then.i.i250

if.then.i.i250:                                   ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i247, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit168

if.else.i.i251:                                   ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %val32.i.i247 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %val32.i.i247, align 4
  br label %set_bb_reg.exit168

set_bb_reg.exit168:                               ; preds = %if.else.i.i251, %if.then.i.i250
  %44 = ptrtoint ptr %val32.i.i247 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val32.i.i247, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i247) #4
  %and.i164 = and i32 %45, -16
  %or.i166 = or i32 %ofdm_rx_ant_sel_val.0, %and.i164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i245) #4
  %46 = ptrtoint ptr %value.addr.i69.i245 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i166, ptr %value.addr.i69.i245, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i245, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i246 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267647999) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i245) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i255) #4
  %47 = ptrtoint ptr %val32.i.i255 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %val32.i.i255, align 4
  %call.i.i256 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267582464) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i256)
  %tobool.not.i.i257 = icmp eq i8 %call.i.i256, 0
  br i1 %tobool.not.i.i257, label %if.else.i.i259, label %if.then.i.i258

if.then.i.i258:                                   ; preds = %set_bb_reg.exit168
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i255, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit181

if.else.i.i259:                                   ; preds = %set_bb_reg.exit168
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %val32.i.i255 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %val32.i.i255, align 4
  br label %set_bb_reg.exit181

set_bb_reg.exit181:                               ; preds = %if.else.i.i259, %if.then.i.i258
  %49 = ptrtoint ptr %val32.i.i255 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val32.i.i255, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i255) #4
  %and.i177 = and i32 %50, -16
  %or.i179 = or i32 %ofdm_rx_ant_sel_val.0, %and.i177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i253) #4
  %51 = ptrtoint ptr %value.addr.i69.i253 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i179, ptr %value.addr.i69.i253, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i253, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i254 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267582463) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i253) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i263) #4
  %52 = ptrtoint ptr %val32.i.i263 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %val32.i.i263, align 4
  %call.i.i264 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267779072) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i264)
  %tobool.not.i.i265 = icmp eq i8 %call.i.i264, 0
  br i1 %tobool.not.i.i265, label %if.else.i.i267, label %if.then.i.i266

if.then.i.i266:                                   ; preds = %set_bb_reg.exit181
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i263, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit194

if.else.i.i267:                                   ; preds = %set_bb_reg.exit181
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %val32.i.i263 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %val32.i.i263, align 4
  br label %set_bb_reg.exit194

set_bb_reg.exit194:                               ; preds = %if.else.i.i267, %if.then.i.i266
  %54 = ptrtoint ptr %val32.i.i263 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val32.i.i263, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i263) #4
  %conv45 = zext i8 %cck_ant_select_val.1 to i32
  %and.i190 = and i32 %55, 16777215
  %shl.i191 = shl nuw i32 %conv45, 24
  %or.i192 = or i32 %shl.i191, %and.i190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i261) #4
  %56 = ptrtoint ptr %value.addr.i69.i261 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i192, ptr %value.addr.i69.i261, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i261, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i262 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267779071) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i261) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_GetThermalMeter(ptr noundef %pAdapter, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %val32.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @set_rf_reg(ptr noundef %pAdapter, i8 noundef zeroext 0, i8 noundef zeroext 36, i32 noundef 1048575, i32 noundef 96) #4
  tail call void @msleep(i32 noundef 1000) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i.i.i) #4
  %0 = ptrtoint ptr %val32.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val32.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268426238) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i8 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i.i.i, i8 noundef zeroext 1) #4
  br label %ReadRFThermalMeter.exit

if.else.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %val32.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val32.i.i.i.i, align 4
  br label %ReadRFThermalMeter.exit

ReadRFThermalMeter.exit:                          ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %2 = ptrtoint ptr %val32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val32.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i.i.i) #4
  %and.i.i = and i32 %3, 31
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i.i, ptr %value, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SetSingleCarrierTx(ptr noundef %pAdapter, i8 noundef zeroext %bStart) local_unnamed_addr #0 align 64 {
entry:
  %val32.i.i224 = alloca i32, align 4
  %value.addr.i69.i222 = alloca i32, align 4
  %val32.i.i216 = alloca i32, align 4
  %value.addr.i69.i214 = alloca i32, align 4
  %val32.i.i208 = alloca i32, align 4
  %value.addr.i69.i206 = alloca i32, align 4
  %val32.i.i200 = alloca i32, align 4
  %value.addr.i69.i198 = alloca i32, align 4
  %val32.i.i192 = alloca i32, align 4
  %value.addr.i69.i190 = alloca i32, align 4
  %val32.i.i184 = alloca i32, align 4
  %value.addr.i69.i182 = alloca i32, align 4
  %val32.i.i176 = alloca i32, align 4
  %value.addr.i69.i174 = alloca i32, align 4
  %val32.i.i168 = alloca i32, align 4
  %value.addr.i69.i166 = alloca i32, align 4
  %val32.i.i160 = alloca i32, align 4
  %value.addr.i69.i158 = alloca i32, align 4
  %val32.i.i152 = alloca i32, align 4
  %value.addr.i69.i150 = alloca i32, align 4
  %val32.i.i = alloca i32, align 4
  %value.addr.i69.i = alloca i32, align 4
  %val32.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bStart)
  %tobool.not = icmp eq i8 %bStart, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i.i) #4
  %0 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val32.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i8 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i.i, i8 noundef zeroext 1) #4
  br label %get_bb_reg.exit

if.else.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val32.i.i.i, align 4
  br label %get_bb_reg.exit

get_bb_reg.exit:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %2 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val32.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i.i) #4
  %4 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.then2, label %get_bb_reg.exit.if.end_crit_edge

get_bb_reg.exit.if.end_crit_edge:                 ; preds = %get_bb_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then2:                                         ; preds = %get_bb_reg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i) #4
  %5 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %val32.i.i, align 4
  %call.i.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit

if.else.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val32.i.i, align 4
  br label %set_bb_reg.exit

set_bb_reg.exit:                                  ; preds = %if.else.i.i, %if.then.i.i
  %7 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i) #4
  %or.i = or i32 %8, 33554432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  %9 = ptrtoint ptr %value.addr.i69.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %value.addr.i69.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  br label %if.end

if.end:                                           ; preds = %set_bb_reg.exit, %get_bb_reg.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i152) #4
  %10 = ptrtoint ptr %val32.i.i152 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %val32.i.i152, align 4
  %call.i.i153 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i153)
  %tobool.not.i.i154 = icmp eq i8 %call.i.i153, 0
  br i1 %tobool.not.i.i154, label %if.else.i.i156, label %if.then.i.i155

if.then.i.i155:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i152, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit157

if.else.i.i156:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %val32.i.i152 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %val32.i.i152, align 4
  br label %r8712_bb_reg_read.exit157

r8712_bb_reg_read.exit157:                        ; preds = %if.else.i.i156, %if.then.i.i155
  %12 = ptrtoint ptr %val32.i.i152 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val32.i.i152, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i152) #4
  %and.i42 = and i32 %13, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i150) #4
  %14 = ptrtoint ptr %value.addr.i69.i150 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i42, ptr %value.addr.i69.i150, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i150, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i151 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i150) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i160) #4
  %15 = ptrtoint ptr %val32.i.i160 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %val32.i.i160, align 4
  %call.i.i161 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i161)
  %tobool.not.i.i162 = icmp eq i8 %call.i.i161, 0
  br i1 %tobool.not.i.i162, label %if.else.i.i164, label %if.then.i.i163

if.then.i.i163:                                   ; preds = %r8712_bb_reg_read.exit157
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i160, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit57

if.else.i.i164:                                   ; preds = %r8712_bb_reg_read.exit157
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %val32.i.i160 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %val32.i.i160, align 4
  br label %set_bb_reg.exit57

set_bb_reg.exit57:                                ; preds = %if.else.i.i164, %if.then.i.i163
  %17 = ptrtoint ptr %val32.i.i160 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val32.i.i160, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i160) #4
  %or.i55 = or i32 %18, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i158) #4
  %19 = ptrtoint ptr %value.addr.i69.i158 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i55, ptr %value.addr.i69.i158, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i158, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i159 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i158) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i168) #4
  %20 = ptrtoint ptr %val32.i.i168 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val32.i.i168, align 4
  %call.i.i169 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i169)
  %tobool.not.i.i170 = icmp eq i8 %call.i.i169, 0
  br i1 %tobool.not.i.i170, label %if.else.i.i172, label %if.then.i.i171

if.then.i.i171:                                   ; preds = %set_bb_reg.exit57
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i168, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit173

if.else.i.i172:                                   ; preds = %set_bb_reg.exit57
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %val32.i.i168 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val32.i.i168, align 4
  br label %r8712_bb_reg_read.exit173

r8712_bb_reg_read.exit173:                        ; preds = %if.else.i.i172, %if.then.i.i171
  %22 = ptrtoint ptr %val32.i.i168 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val32.i.i168, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i168) #4
  %and.i66 = and i32 %23, -268435457
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i166) #4
  %24 = ptrtoint ptr %value.addr.i69.i166 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i66, ptr %value.addr.i69.i166, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i166, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i167 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i166) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i176) #4
  %25 = ptrtoint ptr %val32.i.i176 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %val32.i.i176, align 4
  %call.i.i177 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i177)
  %tobool.not.i.i178 = icmp eq i8 %call.i.i177, 0
  br i1 %tobool.not.i.i178, label %if.else.i.i180, label %if.then.i.i179

if.then.i.i179:                                   ; preds = %r8712_bb_reg_read.exit173
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i176, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit81

if.else.i.i180:                                   ; preds = %r8712_bb_reg_read.exit173
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %val32.i.i176 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %val32.i.i176, align 4
  br label %set_bb_reg.exit81

set_bb_reg.exit81:                                ; preds = %if.else.i.i180, %if.then.i.i179
  %27 = ptrtoint ptr %val32.i.i176 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val32.i.i176, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i176) #4
  %or.i79 = or i32 %28, 536870912
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i174) #4
  %29 = ptrtoint ptr %value.addr.i69.i174 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i79, ptr %value.addr.i69.i174, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i174, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i175 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i174) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i184) #4
  %30 = ptrtoint ptr %val32.i.i184 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %val32.i.i184, align 4
  %call.i.i185 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i185)
  %tobool.not.i.i186 = icmp eq i8 %call.i.i185, 0
  br i1 %tobool.not.i.i186, label %if.else.i.i188, label %if.then.i.i187

if.then.i.i187:                                   ; preds = %set_bb_reg.exit81
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i184, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit189

if.else.i.i188:                                   ; preds = %set_bb_reg.exit81
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %val32.i.i184 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %val32.i.i184, align 4
  br label %r8712_bb_reg_read.exit189

r8712_bb_reg_read.exit189:                        ; preds = %if.else.i.i188, %if.then.i.i187
  %32 = ptrtoint ptr %val32.i.i184 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val32.i.i184, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i184) #4
  %and.i90 = and i32 %33, -1073741825
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i182) #4
  %34 = ptrtoint ptr %value.addr.i69.i182 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i90, ptr %value.addr.i69.i182, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i182, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i183 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i182) #4
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i192) #4
  %35 = ptrtoint ptr %val32.i.i192 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val32.i.i192, align 4
  %call.i.i193 = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i193)
  %tobool.not.i.i194 = icmp eq i8 %call.i.i193, 0
  br i1 %tobool.not.i.i194, label %if.else.i.i196, label %if.then.i.i195

if.then.i.i195:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i192, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit197

if.else.i.i196:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %val32.i.i192 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %val32.i.i192, align 4
  br label %r8712_bb_reg_read.exit197

r8712_bb_reg_read.exit197:                        ; preds = %if.else.i.i196, %if.then.i.i195
  %37 = ptrtoint ptr %val32.i.i192 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val32.i.i192, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i192) #4
  %and.i101 = and i32 %38, -268435457
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i190) #4
  %39 = ptrtoint ptr %value.addr.i69.i190 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i101, ptr %value.addr.i69.i190, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i190, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i191 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i190) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i200) #4
  %40 = ptrtoint ptr %val32.i.i200 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %val32.i.i200, align 4
  %call.i.i201 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i201)
  %tobool.not.i.i202 = icmp eq i8 %call.i.i201, 0
  br i1 %tobool.not.i.i202, label %if.else.i.i204, label %if.then.i.i203

if.then.i.i203:                                   ; preds = %r8712_bb_reg_read.exit197
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i200, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit205

if.else.i.i204:                                   ; preds = %r8712_bb_reg_read.exit197
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %val32.i.i200 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %val32.i.i200, align 4
  br label %r8712_bb_reg_read.exit205

r8712_bb_reg_read.exit205:                        ; preds = %if.else.i.i204, %if.then.i.i203
  %42 = ptrtoint ptr %val32.i.i200 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val32.i.i200, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i200) #4
  %and.i112 = and i32 %43, -536870913
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i198) #4
  %44 = ptrtoint ptr %value.addr.i69.i198 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i112, ptr %value.addr.i69.i198, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i198, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i199 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i198) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i208) #4
  %45 = ptrtoint ptr %val32.i.i208 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %val32.i.i208, align 4
  %call.i.i209 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i209)
  %tobool.not.i.i210 = icmp eq i8 %call.i.i209, 0
  br i1 %tobool.not.i.i210, label %if.else.i.i212, label %if.then.i.i211

if.then.i.i211:                                   ; preds = %r8712_bb_reg_read.exit205
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i208, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit213

if.else.i.i212:                                   ; preds = %r8712_bb_reg_read.exit205
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %val32.i.i208 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %val32.i.i208, align 4
  br label %r8712_bb_reg_read.exit213

r8712_bb_reg_read.exit213:                        ; preds = %if.else.i.i212, %if.then.i.i211
  %47 = ptrtoint ptr %val32.i.i208 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val32.i.i208, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i208) #4
  %and.i123 = and i32 %48, -1073741825
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i206) #4
  %49 = ptrtoint ptr %value.addr.i69.i206 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.i123, ptr %value.addr.i69.i206, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i206, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i207 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i206) #4
  call void @msleep(i32 noundef 20) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i216) #4
  %50 = ptrtoint ptr %val32.i.i216 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %val32.i.i216, align 4
  %call.i.i217 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369920) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i217)
  %tobool.not.i.i218 = icmp eq i8 %call.i.i217, 0
  br i1 %tobool.not.i.i218, label %if.else.i.i220, label %if.then.i.i219

if.then.i.i219:                                   ; preds = %r8712_bb_reg_read.exit213
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i216, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit221

if.else.i.i220:                                   ; preds = %r8712_bb_reg_read.exit213
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %val32.i.i216 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %val32.i.i216, align 4
  br label %r8712_bb_reg_read.exit221

r8712_bb_reg_read.exit221:                        ; preds = %if.else.i.i220, %if.then.i.i219
  %52 = ptrtoint ptr %val32.i.i216 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val32.i.i216, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i216) #4
  %and.i134 = and i32 %53, -257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i214) #4
  %54 = ptrtoint ptr %value.addr.i69.i214 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.i134, ptr %value.addr.i69.i214, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i214, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i215 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369919) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i214) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i224) #4
  %55 = ptrtoint ptr %val32.i.i224 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %val32.i.i224, align 4
  %call.i.i225 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369920) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i225)
  %tobool.not.i.i226 = icmp eq i8 %call.i.i225, 0
  br i1 %tobool.not.i.i226, label %if.else.i.i228, label %if.then.i.i227

if.then.i.i227:                                   ; preds = %r8712_bb_reg_read.exit221
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i224, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit149

if.else.i.i228:                                   ; preds = %r8712_bb_reg_read.exit221
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %val32.i.i224 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %val32.i.i224, align 4
  br label %set_bb_reg.exit149

set_bb_reg.exit149:                               ; preds = %if.else.i.i228, %if.then.i.i227
  %57 = ptrtoint ptr %val32.i.i224 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val32.i.i224, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i224) #4
  %or.i147 = or i32 %58, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i222) #4
  %59 = ptrtoint ptr %value.addr.i69.i222 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or.i147, ptr %value.addr.i69.i222, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i222, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i223 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369919) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i222) #4
  br label %if.end14

if.end14:                                         ; preds = %set_bb_reg.exit149, %r8712_bb_reg_read.exit189
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SetSingleToneTx(ptr noundef %pAdapter, i8 noundef zeroext %bStart) local_unnamed_addr #0 align 64 {
entry:
  %val32.i.i73 = alloca i32, align 4
  %value.addr.i69.i71 = alloca i32, align 4
  %val32.i.i65 = alloca i32, align 4
  %value.addr.i69.i63 = alloca i32, align 4
  %val32.i.i57 = alloca i32, align 4
  %value.addr.i69.i55 = alloca i32, align 4
  %val32.i.i = alloca i32, align 4
  %value.addr.i69.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %antenna_tx = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 15
  %0 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %antenna_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bStart)
  %tobool.not = icmp eq i8 %bStart, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i) #4
  %2 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val32.i.i, align 4
  %call.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val32.i.i, align 4
  br label %r8712_bb_reg_read.exit

r8712_bb_reg_read.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  %4 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i) #4
  %and.i = and i32 %5, -16777217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  %6 = ptrtoint ptr %value.addr.i69.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i, ptr %value.addr.i69.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i57) #4
  %7 = ptrtoint ptr %val32.i.i57 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val32.i.i57, align 4
  %call.i.i58 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i58)
  %tobool.not.i.i59 = icmp eq i8 %call.i.i58, 0
  br i1 %tobool.not.i.i59, label %if.else.i.i61, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %r8712_bb_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i57, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit62

if.else.i.i61:                                    ; preds = %r8712_bb_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %val32.i.i57 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val32.i.i57, align 4
  br label %r8712_bb_reg_read.exit62

r8712_bb_reg_read.exit62:                         ; preds = %if.else.i.i61, %if.then.i.i60
  %9 = ptrtoint ptr %val32.i.i57 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val32.i.i57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i57) #4
  %and.i28 = and i32 %10, -33554433
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i55) #4
  %11 = ptrtoint ptr %value.addr.i69.i55 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i28, ptr %value.addr.i69.i55, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i55, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i56 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i55) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i65) #4
  %12 = ptrtoint ptr %val32.i.i65 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val32.i.i65, align 4
  %call.i.i66 = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i66)
  %tobool.not.i.i67 = icmp eq i8 %call.i.i66, 0
  br i1 %tobool.not.i.i67, label %if.else.i.i69, label %if.then.i.i68

if.then.i.i68:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i65, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit41

if.else.i.i69:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %val32.i.i65 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val32.i.i65, align 4
  br label %set_bb_reg.exit41

set_bb_reg.exit41:                                ; preds = %if.else.i.i69, %if.then.i.i68
  %14 = ptrtoint ptr %val32.i.i65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val32.i.i65, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i65) #4
  %or.i = or i32 %15, 16777216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i63) #4
  %16 = ptrtoint ptr %value.addr.i69.i63 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %value.addr.i69.i63, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i63, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i64 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i63) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i73) #4
  %17 = ptrtoint ptr %val32.i.i73 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val32.i.i73, align 4
  %call.i.i74 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i74)
  %tobool.not.i.i75 = icmp eq i8 %call.i.i74, 0
  br i1 %tobool.not.i.i75, label %if.else.i.i77, label %if.then.i.i76

if.then.i.i76:                                    ; preds = %set_bb_reg.exit41
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i73, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit54

if.else.i.i77:                                    ; preds = %set_bb_reg.exit41
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %val32.i.i73 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val32.i.i73, align 4
  br label %set_bb_reg.exit54

set_bb_reg.exit54:                                ; preds = %if.else.i.i77, %if.then.i.i76
  %19 = ptrtoint ptr %val32.i.i73 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val32.i.i73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i73) #4
  %or.i52 = or i32 %20, 33554432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i71) #4
  %21 = ptrtoint ptr %value.addr.i69.i71 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i52, ptr %value.addr.i69.i71, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i71, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i72 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i71) #4
  br label %if.end

if.end:                                           ; preds = %set_bb_reg.exit54, %r8712_bb_reg_read.exit62
  %.sink80 = phi i32 [ 344064, %set_bb_reg.exit54 ], [ 868352, %r8712_bb_reg_read.exit62 ]
  %.sink = phi i32 [ 196608, %set_bb_reg.exit54 ], [ 131103, %r8712_bb_reg_read.exit62 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cond = icmp eq i16 %1, 2
  %. = zext i1 %cond to i8
  call fastcc void @set_rf_reg(ptr noundef %pAdapter, i8 noundef zeroext %., i8 noundef zeroext 33, i32 noundef 1048575, i32 noundef %.sink80)
  call void @msleep(i32 noundef 100) #4
  call fastcc void @set_rf_reg(ptr noundef %pAdapter, i8 noundef zeroext %., i8 noundef zeroext 0, i32 noundef 1048575, i32 noundef %.sink)
  call void @msleep(i32 noundef 100) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SetCarrierSuppressionTx(ptr noundef %pAdapter, i8 noundef zeroext %bStart) local_unnamed_addr #0 align 64 {
entry:
  %val32.i.i233 = alloca i32, align 4
  %value.addr.i69.i231 = alloca i32, align 4
  %val32.i.i225 = alloca i32, align 4
  %value.addr.i69.i223 = alloca i32, align 4
  %val32.i.i217 = alloca i32, align 4
  %value.addr.i69.i215 = alloca i32, align 4
  %val32.i.i209 = alloca i32, align 4
  %value.addr.i69.i207 = alloca i32, align 4
  %val32.i.i201 = alloca i32, align 4
  %value.addr.i69.i199 = alloca i32, align 4
  %val32.i.i193 = alloca i32, align 4
  %value.addr.i69.i191 = alloca i32, align 4
  %val32.i.i185 = alloca i32, align 4
  %value.addr.i69.i183 = alloca i32, align 4
  %val32.i.i177 = alloca i32, align 4
  %value.addr.i69.i175 = alloca i32, align 4
  %val32.i.i169 = alloca i32, align 4
  %value.addr.i69.i167 = alloca i32, align 4
  %val32.i.i161 = alloca i32, align 4
  %value.addr.i69.i159 = alloca i32, align 4
  %val32.i.i = alloca i32, align 4
  %value.addr.i69.i = alloca i32, align 4
  %val32.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bStart)
  %tobool.not = icmp eq i8 %bStart, 0
  %curr_rateidx13 = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 10
  %0 = ptrtoint ptr %curr_rateidx13 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_rateidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp14 = icmp ult i32 %1, 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp14, label %if.then1, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then1:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i.i) #4
  %2 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val32.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i8 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i.i, i8 noundef zeroext 1) #4
  br label %get_bb_reg.exit

if.else.i.i.i:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val32.i.i.i, align 4
  br label %get_bb_reg.exit

get_bb_reg.exit:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %4 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val32.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i.i) #4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then3, label %get_bb_reg.exit.if.end_crit_edge

get_bb_reg.exit.if.end_crit_edge:                 ; preds = %get_bb_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %get_bb_reg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i) #4
  %7 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val32.i.i, align 4
  %call.i.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit

if.else.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val32.i.i, align 4
  br label %set_bb_reg.exit

set_bb_reg.exit:                                  ; preds = %if.else.i.i, %if.then.i.i
  %9 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i) #4
  %or.i = or i32 %10, 16777216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  %11 = ptrtoint ptr %value.addr.i69.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %value.addr.i69.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  br label %if.end

if.end:                                           ; preds = %set_bb_reg.exit, %get_bb_reg.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i161) #4
  %12 = ptrtoint ptr %val32.i.i161 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val32.i.i161, align 4
  %call.i.i162 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i162)
  %tobool.not.i.i163 = icmp eq i8 %call.i.i162, 0
  br i1 %tobool.not.i.i163, label %if.else.i.i165, label %if.then.i.i164

if.then.i.i164:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i161, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit166

if.else.i.i165:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %val32.i.i161 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val32.i.i161, align 4
  br label %r8712_bb_reg_read.exit166

r8712_bb_reg_read.exit166:                        ; preds = %if.else.i.i165, %if.then.i.i164
  %14 = ptrtoint ptr %val32.i.i161 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val32.i.i161, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i161) #4
  %and.i51 = and i32 %15, -268435457
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i159) #4
  %16 = ptrtoint ptr %value.addr.i69.i159 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i51, ptr %value.addr.i69.i159, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i159, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i160 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i159) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i169) #4
  %17 = ptrtoint ptr %val32.i.i169 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val32.i.i169, align 4
  %call.i.i170 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i170)
  %tobool.not.i.i171 = icmp eq i8 %call.i.i170, 0
  br i1 %tobool.not.i.i171, label %if.else.i.i173, label %if.then.i.i172

if.then.i.i172:                                   ; preds = %r8712_bb_reg_read.exit166
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i169, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit174

if.else.i.i173:                                   ; preds = %r8712_bb_reg_read.exit166
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %val32.i.i169 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val32.i.i169, align 4
  br label %r8712_bb_reg_read.exit174

r8712_bb_reg_read.exit174:                        ; preds = %if.else.i.i173, %if.then.i.i172
  %19 = ptrtoint ptr %val32.i.i169 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val32.i.i169, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i169) #4
  %and.i62 = and i32 %20, -536870913
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i167) #4
  %21 = ptrtoint ptr %value.addr.i69.i167 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i62, ptr %value.addr.i69.i167, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i167, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i168 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i167) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i177) #4
  %22 = ptrtoint ptr %val32.i.i177 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %val32.i.i177, align 4
  %call.i.i178 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i178)
  %tobool.not.i.i179 = icmp eq i8 %call.i.i178, 0
  br i1 %tobool.not.i.i179, label %if.else.i.i181, label %if.then.i.i180

if.then.i.i180:                                   ; preds = %r8712_bb_reg_read.exit174
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i177, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit182

if.else.i.i181:                                   ; preds = %r8712_bb_reg_read.exit174
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %val32.i.i177 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val32.i.i177, align 4
  br label %r8712_bb_reg_read.exit182

r8712_bb_reg_read.exit182:                        ; preds = %if.else.i.i181, %if.then.i.i180
  %24 = ptrtoint ptr %val32.i.i177 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val32.i.i177, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i177) #4
  %and.i73 = and i32 %25, -1073741825
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i175) #4
  %26 = ptrtoint ptr %value.addr.i69.i175 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i73, ptr %value.addr.i69.i175, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i175, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i176 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i175) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i185) #4
  %27 = ptrtoint ptr %val32.i.i185 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %val32.i.i185, align 4
  %call.i.i186 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i186)
  %tobool.not.i.i187 = icmp eq i8 %call.i.i186, 0
  br i1 %tobool.not.i.i187, label %if.else.i.i189, label %if.then.i.i188

if.then.i.i188:                                   ; preds = %r8712_bb_reg_read.exit182
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i185, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit88

if.else.i.i189:                                   ; preds = %r8712_bb_reg_read.exit182
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %val32.i.i185 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val32.i.i185, align 4
  br label %set_bb_reg.exit88

set_bb_reg.exit88:                                ; preds = %if.else.i.i189, %if.then.i.i188
  %29 = ptrtoint ptr %val32.i.i185 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val32.i.i185, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i185) #4
  %and.i84 = and i32 %30, -4
  %or.i86 = or i32 %and.i84, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i183) #4
  %31 = ptrtoint ptr %value.addr.i69.i183 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i86, ptr %value.addr.i69.i183, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i183, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i184 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i183) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i193) #4
  %32 = ptrtoint ptr %val32.i.i193 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val32.i.i193, align 4
  %call.i.i194 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i194)
  %tobool.not.i.i195 = icmp eq i8 %call.i.i194, 0
  br i1 %tobool.not.i.i195, label %if.else.i.i197, label %if.then.i.i196

if.then.i.i196:                                   ; preds = %set_bb_reg.exit88
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i193, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit198

if.else.i.i197:                                   ; preds = %set_bb_reg.exit88
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %val32.i.i193 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %val32.i.i193, align 4
  br label %r8712_bb_reg_read.exit198

r8712_bb_reg_read.exit198:                        ; preds = %if.else.i.i197, %if.then.i.i196
  %34 = ptrtoint ptr %val32.i.i193 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val32.i.i193, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i193) #4
  %and.i97 = and i32 %35, -9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i191) #4
  %36 = ptrtoint ptr %value.addr.i69.i191 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i97, ptr %value.addr.i69.i191, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i191, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i192 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i191) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i201) #4
  %37 = ptrtoint ptr %val32.i.i201 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %val32.i.i201, align 4
  %call.i.i202 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i202)
  %tobool.not.i.i203 = icmp eq i8 %call.i.i202, 0
  br i1 %tobool.not.i.i203, label %if.else.i.i205, label %if.then.i.i204

if.then.i.i204:                                   ; preds = %r8712_bb_reg_read.exit198
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i201, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit206

if.else.i.i205:                                   ; preds = %r8712_bb_reg_read.exit198
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %val32.i.i201 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %val32.i.i201, align 4
  br label %r8712_bb_reg_read.exit206

r8712_bb_reg_read.exit206:                        ; preds = %if.else.i.i205, %if.then.i.i204
  %39 = ptrtoint ptr %val32.i.i201 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val32.i.i201, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i201) #4
  %and.i108 = and i32 %40, -12289
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i199) #4
  %41 = ptrtoint ptr %value.addr.i69.i199 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i108, ptr %value.addr.i69.i199, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i199, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i200 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i199) #4
  br label %if.end21

if.else:                                          ; preds = %entry
  br i1 %cmp14, label %if.then15, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then15:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i209) #4
  %42 = ptrtoint ptr %val32.i.i209 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val32.i.i209, align 4
  %call.i.i210 = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i210)
  %tobool.not.i.i211 = icmp eq i8 %call.i.i210, 0
  br i1 %tobool.not.i.i211, label %if.else.i.i213, label %if.then.i.i212

if.then.i.i212:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i209, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit214

if.else.i.i213:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %val32.i.i209 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %val32.i.i209, align 4
  br label %r8712_bb_reg_read.exit214

r8712_bb_reg_read.exit214:                        ; preds = %if.else.i.i213, %if.then.i.i212
  %44 = ptrtoint ptr %val32.i.i209 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val32.i.i209, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i209) #4
  %and.i119 = and i32 %45, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i207) #4
  %46 = ptrtoint ptr %value.addr.i69.i207 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i119, ptr %value.addr.i69.i207, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i207, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i208 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i207) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i217) #4
  %47 = ptrtoint ptr %val32.i.i217 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %val32.i.i217, align 4
  %call.i.i218 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i218)
  %tobool.not.i.i219 = icmp eq i8 %call.i.i218, 0
  br i1 %tobool.not.i.i219, label %if.else.i.i221, label %if.then.i.i220

if.then.i.i220:                                   ; preds = %r8712_bb_reg_read.exit214
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i217, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit134

if.else.i.i221:                                   ; preds = %r8712_bb_reg_read.exit214
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %val32.i.i217 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %val32.i.i217, align 4
  br label %set_bb_reg.exit134

set_bb_reg.exit134:                               ; preds = %if.else.i.i221, %if.then.i.i220
  %49 = ptrtoint ptr %val32.i.i217 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val32.i.i217, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i217) #4
  %or.i132 = or i32 %50, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i215) #4
  %51 = ptrtoint ptr %value.addr.i69.i215 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i132, ptr %value.addr.i69.i215, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i215, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i216 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i215) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i225) #4
  %52 = ptrtoint ptr %val32.i.i225 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %val32.i.i225, align 4
  %call.i.i226 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369920) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i226)
  %tobool.not.i.i227 = icmp eq i8 %call.i.i226, 0
  br i1 %tobool.not.i.i227, label %if.else.i.i229, label %if.then.i.i228

if.then.i.i228:                                   ; preds = %set_bb_reg.exit134
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i225, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit230

if.else.i.i229:                                   ; preds = %set_bb_reg.exit134
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %val32.i.i225 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %val32.i.i225, align 4
  br label %r8712_bb_reg_read.exit230

r8712_bb_reg_read.exit230:                        ; preds = %if.else.i.i229, %if.then.i.i228
  %54 = ptrtoint ptr %val32.i.i225 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val32.i.i225, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i225) #4
  %and.i143 = and i32 %55, -257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i223) #4
  %56 = ptrtoint ptr %value.addr.i69.i223 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i143, ptr %value.addr.i69.i223, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i223, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i224 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369919) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i223) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i233) #4
  %57 = ptrtoint ptr %val32.i.i233 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %val32.i.i233, align 4
  %call.i.i234 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369920) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i234)
  %tobool.not.i.i235 = icmp eq i8 %call.i.i234, 0
  br i1 %tobool.not.i.i235, label %if.else.i.i237, label %if.then.i.i236

if.then.i.i236:                                   ; preds = %r8712_bb_reg_read.exit230
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i233, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit158

if.else.i.i237:                                   ; preds = %r8712_bb_reg_read.exit230
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %val32.i.i233 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %val32.i.i233, align 4
  br label %set_bb_reg.exit158

set_bb_reg.exit158:                               ; preds = %if.else.i.i237, %if.then.i.i236
  %59 = ptrtoint ptr %val32.i.i233 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val32.i.i233, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i233) #4
  %or.i156 = or i32 %60, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i231) #4
  %61 = ptrtoint ptr %value.addr.i69.i231 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or.i156, ptr %value.addr.i69.i231, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i231, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i232 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369919) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i231) #4
  br label %if.end21

if.end21:                                         ; preds = %set_bb_reg.exit158, %if.else.if.end21_crit_edge, %r8712_bb_reg_read.exit206, %if.then.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SetContinuousTx(ptr noundef %pAdapter, i8 noundef zeroext %bStart) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i69.i56 = alloca i32, align 4
  %val32.i.i49 = alloca i32, align 4
  %val32.i.i224.i = alloca i32, align 4
  %value.addr.i69.i222.i = alloca i32, align 4
  %val32.i.i216.i = alloca i32, align 4
  %value.addr.i69.i214.i = alloca i32, align 4
  %val32.i.i208.i = alloca i32, align 4
  %value.addr.i69.i206.i = alloca i32, align 4
  %val32.i.i200.i = alloca i32, align 4
  %value.addr.i69.i198.i = alloca i32, align 4
  %val32.i.i192.i = alloca i32, align 4
  %value.addr.i69.i190.i = alloca i32, align 4
  %val32.i.i184.i = alloca i32, align 4
  %value.addr.i69.i182.i = alloca i32, align 4
  %val32.i.i176.i = alloca i32, align 4
  %value.addr.i69.i174.i = alloca i32, align 4
  %val32.i.i168.i = alloca i32, align 4
  %value.addr.i69.i166.i = alloca i32, align 4
  %val32.i.i160.i = alloca i32, align 4
  %value.addr.i69.i158.i = alloca i32, align 4
  %val32.i.i152.i = alloca i32, align 4
  %value.addr.i69.i150.i = alloca i32, align 4
  %val32.i.i.i28 = alloca i32, align 4
  %value.addr.i69.i.i29 = alloca i32, align 4
  %val32.i.i.i.i30 = alloca i32, align 4
  %val32.i.i229.i = alloca i32, align 4
  %value.addr.i69.i227.i = alloca i32, align 4
  %val32.i.i221.i = alloca i32, align 4
  %value.addr.i69.i219.i = alloca i32, align 4
  %val32.i.i213.i = alloca i32, align 4
  %value.addr.i69.i211.i = alloca i32, align 4
  %val32.i.i205.i = alloca i32, align 4
  %value.addr.i69.i203.i = alloca i32, align 4
  %val32.i.i197.i = alloca i32, align 4
  %value.addr.i69.i195.i = alloca i32, align 4
  %val32.i.i189.i = alloca i32, align 4
  %value.addr.i69.i187.i = alloca i32, align 4
  %val32.i.i181.i = alloca i32, align 4
  %value.addr.i69.i179.i = alloca i32, align 4
  %val32.i.i173.i = alloca i32, align 4
  %value.addr.i69.i171.i = alloca i32, align 4
  %val32.i.i165.i = alloca i32, align 4
  %value.addr.i69.i163.i = alloca i32, align 4
  %val32.i.i157.i = alloca i32, align 4
  %value.addr.i69.i155.i = alloca i32, align 4
  %val32.i.i.i = alloca i32, align 4
  %value.addr.i69.i.i = alloca i32, align 4
  %val32.i.i.i.i = alloca i32, align 4
  %value.addr.i69.i = alloca i32, align 4
  %val32.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bStart)
  %tobool.not = icmp eq i8 %bStart, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i) #4
  %0 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val32.i.i, align 4
  %call.i.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267489280) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i, i8 noundef zeroext 1) #4
  br label %if.end.thread

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val32.i.i, align 4
  br label %if.end.thread

if.end:                                           ; preds = %entry
  %curr_rateidx = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 10
  %2 = ptrtoint ptr %curr_rateidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_rateidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %if.else.i, label %land.lhs.true

if.end.thread:                                    ; preds = %if.else.i.i, %if.then.i.i
  %4 = ptrtoint ptr %val32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i) #4
  %and = and i32 %5, -31457281
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  %6 = ptrtoint ptr %value.addr.i69.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %value.addr.i69.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267489279) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i) #4
  call void @msleep(i32 noundef 100) #4
  %curr_rateidx58 = getelementptr inbounds %struct._adapter, ptr %pAdapter, i32 0, i32 15, i32 10
  %7 = ptrtoint ptr %curr_rateidx58 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %curr_rateidx58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp59 = icmp ult i32 %8, 4
  br i1 %cmp59, label %if.then.i, label %land.lhs.true.thread

if.then.i:                                        ; preds = %if.end.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i.i.i) #4
  %9 = ptrtoint ptr %val32.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %val32.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i8 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i.i.i, i8 noundef zeroext 1) #4
  br label %get_bb_reg.exit.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %val32.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %val32.i.i.i.i, align 4
  br label %get_bb_reg.exit.i

get_bb_reg.exit.i:                                ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %11 = ptrtoint ptr %val32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val32.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i.i.i) #4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %get_bb_reg.exit.i.if.end.i_crit_edge

get_bb_reg.exit.i.if.end.i_crit_edge:             ; preds = %get_bb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then2.i:                                       ; preds = %get_bb_reg.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i.i) #4
  %14 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val32.i.i.i, align 4
  %call.i.i.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i8 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit.i

if.else.i.i.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %val32.i.i.i, align 4
  br label %set_bb_reg.exit.i

set_bb_reg.exit.i:                                ; preds = %if.else.i.i.i, %if.then.i.i.i
  %16 = ptrtoint ptr %val32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val32.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i.i) #4
  %or.i.i = or i32 %17, 16777216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i.i) #4
  %18 = ptrtoint ptr %value.addr.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i, ptr %value.addr.i69.i.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i.i) #4
  br label %if.end.i

if.end.i:                                         ; preds = %set_bb_reg.exit.i, %get_bb_reg.exit.i.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i157.i) #4
  %19 = ptrtoint ptr %val32.i.i157.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %val32.i.i157.i, align 4
  %call.i.i158.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i158.i)
  %tobool.not.i.i159.i = icmp eq i8 %call.i.i158.i, 0
  br i1 %tobool.not.i.i159.i, label %if.else.i.i161.i, label %if.then.i.i160.i

if.then.i.i160.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i157.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit162.i

if.else.i.i161.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %val32.i.i157.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val32.i.i157.i, align 4
  br label %r8712_bb_reg_read.exit162.i

r8712_bb_reg_read.exit162.i:                      ; preds = %if.else.i.i161.i, %if.then.i.i160.i
  %21 = ptrtoint ptr %val32.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val32.i.i157.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i157.i) #4
  %and.i43.i = and i32 %22, -268435457
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i155.i) #4
  %23 = ptrtoint ptr %value.addr.i69.i155.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i43.i, ptr %value.addr.i69.i155.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i155.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i156.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i155.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i165.i) #4
  %24 = ptrtoint ptr %val32.i.i165.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %val32.i.i165.i, align 4
  %call.i.i166.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i166.i)
  %tobool.not.i.i167.i = icmp eq i8 %call.i.i166.i, 0
  br i1 %tobool.not.i.i167.i, label %if.else.i.i169.i, label %if.then.i.i168.i

if.then.i.i168.i:                                 ; preds = %r8712_bb_reg_read.exit162.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i165.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit170.i

if.else.i.i169.i:                                 ; preds = %r8712_bb_reg_read.exit162.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %val32.i.i165.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %val32.i.i165.i, align 4
  br label %r8712_bb_reg_read.exit170.i

r8712_bb_reg_read.exit170.i:                      ; preds = %if.else.i.i169.i, %if.then.i.i168.i
  %26 = ptrtoint ptr %val32.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val32.i.i165.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i165.i) #4
  %and.i54.i = and i32 %27, -536870913
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i163.i) #4
  %28 = ptrtoint ptr %value.addr.i69.i163.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i54.i, ptr %value.addr.i69.i163.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i163.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i164.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i163.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i173.i) #4
  %29 = ptrtoint ptr %val32.i.i173.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %val32.i.i173.i, align 4
  %call.i.i174.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i174.i)
  %tobool.not.i.i175.i = icmp eq i8 %call.i.i174.i, 0
  br i1 %tobool.not.i.i175.i, label %if.else.i.i177.i, label %if.then.i.i176.i

if.then.i.i176.i:                                 ; preds = %r8712_bb_reg_read.exit170.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i173.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit178.i

if.else.i.i177.i:                                 ; preds = %r8712_bb_reg_read.exit170.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %val32.i.i173.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %val32.i.i173.i, align 4
  br label %r8712_bb_reg_read.exit178.i

r8712_bb_reg_read.exit178.i:                      ; preds = %if.else.i.i177.i, %if.then.i.i176.i
  %31 = ptrtoint ptr %val32.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val32.i.i173.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i173.i) #4
  %and.i65.i = and i32 %32, -1073741825
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i171.i) #4
  %33 = ptrtoint ptr %value.addr.i69.i171.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i65.i, ptr %value.addr.i69.i171.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i171.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i172.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i171.i) #4
  %34 = ptrtoint ptr %curr_rateidx58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %curr_rateidx58, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i181.i) #4
  %36 = ptrtoint ptr %val32.i.i181.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %val32.i.i181.i, align 4
  %call.i.i182.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i182.i)
  %tobool.not.i.i183.i = icmp eq i8 %call.i.i182.i, 0
  br i1 %tobool.not.i.i183.i, label %if.else.i.i185.i, label %if.then.i.i184.i

if.then.i.i184.i:                                 ; preds = %r8712_bb_reg_read.exit178.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i181.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit80.i

if.else.i.i185.i:                                 ; preds = %r8712_bb_reg_read.exit178.i
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %val32.i.i181.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %val32.i.i181.i, align 4
  br label %set_bb_reg.exit80.i

set_bb_reg.exit80.i:                              ; preds = %if.else.i.i185.i, %if.then.i.i184.i
  %38 = ptrtoint ptr %val32.i.i181.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val32.i.i181.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i181.i) #4
  %and.i76.i = and i32 %39, -12289
  %shl.i77.i = shl i32 %35, 12
  %or.i78.i = or i32 %and.i76.i, %shl.i77.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i179.i) #4
  %40 = ptrtoint ptr %value.addr.i69.i179.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i78.i, ptr %value.addr.i69.i179.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i179.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i180.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i179.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i189.i) #4
  %41 = ptrtoint ptr %val32.i.i189.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %val32.i.i189.i, align 4
  %call.i.i190.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i190.i)
  %tobool.not.i.i191.i = icmp eq i8 %call.i.i190.i, 0
  br i1 %tobool.not.i.i191.i, label %if.else.i.i193.i, label %if.then.i.i192.i

if.then.i.i192.i:                                 ; preds = %set_bb_reg.exit80.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i189.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit93.i

if.else.i.i193.i:                                 ; preds = %set_bb_reg.exit80.i
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %val32.i.i189.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val32.i.i189.i, align 4
  br label %set_bb_reg.exit93.i

set_bb_reg.exit93.i:                              ; preds = %if.else.i.i193.i, %if.then.i.i192.i
  %43 = ptrtoint ptr %val32.i.i189.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val32.i.i189.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i189.i) #4
  %and.i89.i = and i32 %44, -4
  %or.i91.i = or i32 %and.i89.i, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i187.i) #4
  %45 = ptrtoint ptr %value.addr.i69.i187.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i91.i, ptr %value.addr.i69.i187.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i187.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i188.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i187.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i197.i) #4
  %46 = ptrtoint ptr %val32.i.i197.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %val32.i.i197.i, align 4
  %call.i.i198.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i198.i)
  %tobool.not.i.i199.i = icmp eq i8 %call.i.i198.i, 0
  br i1 %tobool.not.i.i199.i, label %if.else.i.i201.i, label %if.then.i.i200.i

if.then.i.i200.i:                                 ; preds = %set_bb_reg.exit93.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i197.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit106.i

if.else.i.i201.i:                                 ; preds = %set_bb_reg.exit93.i
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %val32.i.i197.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %val32.i.i197.i, align 4
  br label %set_bb_reg.exit106.i

set_bb_reg.exit106.i:                             ; preds = %if.else.i.i201.i, %if.then.i.i200.i
  %48 = ptrtoint ptr %val32.i.i197.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val32.i.i197.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i197.i) #4
  %or.i104.i = or i32 %49, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i195.i) #4
  %50 = ptrtoint ptr %value.addr.i69.i195.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i104.i, ptr %value.addr.i69.i195.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i195.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i196.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i195.i) #4
  br label %if.end16

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i205.i) #4
  %51 = ptrtoint ptr %val32.i.i205.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %val32.i.i205.i, align 4
  %call.i.i206.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i206.i)
  %tobool.not.i.i207.i = icmp eq i8 %call.i.i206.i, 0
  br i1 %tobool.not.i.i207.i, label %if.else.i.i209.i, label %if.then.i.i208.i

if.then.i.i208.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i205.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit210.i

if.else.i.i209.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %val32.i.i205.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %val32.i.i205.i, align 4
  br label %r8712_bb_reg_read.exit210.i

r8712_bb_reg_read.exit210.i:                      ; preds = %if.else.i.i209.i, %if.then.i.i208.i
  %53 = ptrtoint ptr %val32.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val32.i.i205.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i205.i) #4
  %and.i115.i = and i32 %54, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i203.i) #4
  %55 = ptrtoint ptr %value.addr.i69.i203.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and.i115.i, ptr %value.addr.i69.i203.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i203.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i204.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i203.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i213.i) #4
  %56 = ptrtoint ptr %val32.i.i213.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %val32.i.i213.i, align 4
  %call.i.i214.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i214.i)
  %tobool.not.i.i215.i = icmp eq i8 %call.i.i214.i, 0
  br i1 %tobool.not.i.i215.i, label %if.else.i.i217.i, label %if.then.i.i216.i

if.then.i.i216.i:                                 ; preds = %r8712_bb_reg_read.exit210.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i213.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit130.i

if.else.i.i217.i:                                 ; preds = %r8712_bb_reg_read.exit210.i
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %val32.i.i213.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %val32.i.i213.i, align 4
  br label %set_bb_reg.exit130.i

set_bb_reg.exit130.i:                             ; preds = %if.else.i.i217.i, %if.then.i.i216.i
  %58 = ptrtoint ptr %val32.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val32.i.i213.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i213.i) #4
  %or.i128.i = or i32 %59, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i211.i) #4
  %60 = ptrtoint ptr %value.addr.i69.i211.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i128.i, ptr %value.addr.i69.i211.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i211.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i212.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i211.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i221.i) #4
  %61 = ptrtoint ptr %val32.i.i221.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %val32.i.i221.i, align 4
  %call.i.i222.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369920) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i222.i)
  %tobool.not.i.i223.i = icmp eq i8 %call.i.i222.i, 0
  br i1 %tobool.not.i.i223.i, label %if.else.i.i225.i, label %if.then.i.i224.i

if.then.i.i224.i:                                 ; preds = %set_bb_reg.exit130.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i221.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit226.i

if.else.i.i225.i:                                 ; preds = %set_bb_reg.exit130.i
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %val32.i.i221.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %val32.i.i221.i, align 4
  br label %r8712_bb_reg_read.exit226.i

r8712_bb_reg_read.exit226.i:                      ; preds = %if.else.i.i225.i, %if.then.i.i224.i
  %63 = ptrtoint ptr %val32.i.i221.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val32.i.i221.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i221.i) #4
  %and.i139.i = and i32 %64, -257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i219.i) #4
  %65 = ptrtoint ptr %value.addr.i69.i219.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and.i139.i, ptr %value.addr.i69.i219.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i219.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i220.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369919) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i219.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i229.i) #4
  %66 = ptrtoint ptr %val32.i.i229.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %val32.i.i229.i, align 4
  %call.i.i230.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369920) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i230.i)
  %tobool.not.i.i231.i = icmp eq i8 %call.i.i230.i, 0
  br i1 %tobool.not.i.i231.i, label %if.else.i.i233.i, label %if.then.i.i232.i

if.then.i.i232.i:                                 ; preds = %r8712_bb_reg_read.exit226.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i229.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit154.i

if.else.i.i233.i:                                 ; preds = %r8712_bb_reg_read.exit226.i
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %val32.i.i229.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %val32.i.i229.i, align 4
  br label %set_bb_reg.exit154.i

set_bb_reg.exit154.i:                             ; preds = %if.else.i.i233.i, %if.then.i.i232.i
  %68 = ptrtoint ptr %val32.i.i229.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val32.i.i229.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i229.i) #4
  %or.i152.i = or i32 %69, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i227.i) #4
  %70 = ptrtoint ptr %value.addr.i69.i227.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i152.i, ptr %value.addr.i69.i227.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i227.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i228.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369919) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i227.i) #4
  br label %if.then13

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %3)
  %cmp8 = icmp ult i32 %3, 28
  br i1 %cmp8, label %if.else.i48, label %land.lhs.true.if.then13_crit_edge

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

land.lhs.true.thread:                             ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %8)
  %cmp863 = icmp ult i32 %8, 28
  br i1 %cmp863, label %if.then.i34, label %land.lhs.true.thread.if.end16_crit_edge

land.lhs.true.thread.if.end16_crit_edge:          ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then.i34:                                      ; preds = %land.lhs.true.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i.i.i30) #4
  %71 = ptrtoint ptr %val32.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %val32.i.i.i.i30, align 4
  %call.i.i.i.i32 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i.i32)
  %tobool.not.i.i.i.i33 = icmp eq i8 %call.i.i.i.i32, 0
  br i1 %tobool.not.i.i.i.i33, label %if.else.i.i.i.i36, label %if.then.i.i.i.i35

if.then.i.i.i.i35:                                ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i.i.i30, i8 noundef zeroext 1) #4
  br label %get_bb_reg.exit.i38

if.else.i.i.i.i36:                                ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %val32.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %val32.i.i.i.i30, align 4
  br label %get_bb_reg.exit.i38

get_bb_reg.exit.i38:                              ; preds = %if.else.i.i.i.i36, %if.then.i.i.i.i35
  %73 = ptrtoint ptr %val32.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val32.i.i.i.i30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i.i.i30) #4
  %75 = and i32 %74, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool1.not.i37 = icmp eq i32 %75, 0
  br i1 %tobool1.not.i37, label %if.then2.i41, label %get_bb_reg.exit.i38.if.end.i47_crit_edge

get_bb_reg.exit.i38.if.end.i47_crit_edge:         ; preds = %get_bb_reg.exit.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i47

if.then2.i41:                                     ; preds = %get_bb_reg.exit.i38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i.i28) #4
  %76 = ptrtoint ptr %val32.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %val32.i.i.i28, align 4
  %call.i.i.i39 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911168) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i39)
  %tobool.not.i.i.i40 = icmp eq i8 %call.i.i.i39, 0
  br i1 %tobool.not.i.i.i40, label %if.else.i.i.i43, label %if.then.i.i.i42

if.then.i.i.i42:                                  ; preds = %if.then2.i41
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i.i28, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit.i46

if.else.i.i.i43:                                  ; preds = %if.then2.i41
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %val32.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %val32.i.i.i28, align 4
  br label %set_bb_reg.exit.i46

set_bb_reg.exit.i46:                              ; preds = %if.else.i.i.i43, %if.then.i.i.i42
  %78 = ptrtoint ptr %val32.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val32.i.i.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i.i28) #4
  %or.i.i44 = or i32 %79, 33554432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i.i29) #4
  %80 = ptrtoint ptr %value.addr.i69.i.i29 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or.i.i44, ptr %value.addr.i69.i.i29, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i.i29, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i.i45 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267911167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i.i29) #4
  br label %if.end.i47

if.end.i47:                                       ; preds = %set_bb_reg.exit.i46, %get_bb_reg.exit.i38.if.end.i47_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i152.i) #4
  %81 = ptrtoint ptr %val32.i.i152.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %val32.i.i152.i, align 4
  %call.i.i153.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i153.i)
  %tobool.not.i.i154.i = icmp eq i8 %call.i.i153.i, 0
  br i1 %tobool.not.i.i154.i, label %if.else.i.i156.i, label %if.then.i.i155.i

if.then.i.i155.i:                                 ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i152.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit157.i

if.else.i.i156.i:                                 ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %val32.i.i152.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %val32.i.i152.i, align 4
  br label %r8712_bb_reg_read.exit157.i

r8712_bb_reg_read.exit157.i:                      ; preds = %if.else.i.i156.i, %if.then.i.i155.i
  %83 = ptrtoint ptr %val32.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val32.i.i152.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i152.i) #4
  %and.i42.i = and i32 %84, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i150.i) #4
  %85 = ptrtoint ptr %value.addr.i69.i150.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and.i42.i, ptr %value.addr.i69.i150.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i150.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i151.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i150.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i160.i) #4
  %86 = ptrtoint ptr %val32.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %val32.i.i160.i, align 4
  %call.i.i161.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780096) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i161.i)
  %tobool.not.i.i162.i = icmp eq i8 %call.i.i161.i, 0
  br i1 %tobool.not.i.i162.i, label %if.else.i.i164.i, label %if.then.i.i163.i

if.then.i.i163.i:                                 ; preds = %r8712_bb_reg_read.exit157.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i160.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit57.i

if.else.i.i164.i:                                 ; preds = %r8712_bb_reg_read.exit157.i
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %val32.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %val32.i.i160.i, align 4
  br label %set_bb_reg.exit57.i

set_bb_reg.exit57.i:                              ; preds = %if.else.i.i164.i, %if.then.i.i163.i
  %88 = ptrtoint ptr %val32.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val32.i.i160.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i160.i) #4
  %or.i55.i = or i32 %89, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i158.i) #4
  %90 = ptrtoint ptr %value.addr.i69.i158.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or.i55.i, ptr %value.addr.i69.i158.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i158.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i159.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267780095) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i158.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i168.i) #4
  %91 = ptrtoint ptr %val32.i.i168.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %val32.i.i168.i, align 4
  %call.i.i169.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i169.i)
  %tobool.not.i.i170.i = icmp eq i8 %call.i.i169.i, 0
  br i1 %tobool.not.i.i170.i, label %if.else.i.i172.i, label %if.then.i.i171.i

if.then.i.i171.i:                                 ; preds = %set_bb_reg.exit57.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i168.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit70.i

if.else.i.i172.i:                                 ; preds = %set_bb_reg.exit57.i
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %val32.i.i168.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %val32.i.i168.i, align 4
  br label %set_bb_reg.exit70.i

set_bb_reg.exit70.i:                              ; preds = %if.else.i.i172.i, %if.then.i.i171.i
  %93 = ptrtoint ptr %val32.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val32.i.i168.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i168.i) #4
  %or.i68.i = or i32 %94, 268435456
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i166.i) #4
  %95 = ptrtoint ptr %value.addr.i69.i166.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or.i68.i, ptr %value.addr.i69.i166.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i166.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i167.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i166.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i176.i) #4
  %96 = ptrtoint ptr %val32.i.i176.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %val32.i.i176.i, align 4
  %call.i.i177.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i177.i)
  %tobool.not.i.i178.i = icmp eq i8 %call.i.i177.i, 0
  br i1 %tobool.not.i.i178.i, label %if.else.i.i180.i, label %if.then.i.i179.i

if.then.i.i179.i:                                 ; preds = %set_bb_reg.exit70.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i176.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit181.i

if.else.i.i180.i:                                 ; preds = %set_bb_reg.exit70.i
  call void @__sanitizer_cov_trace_pc() #6
  %97 = ptrtoint ptr %val32.i.i176.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %val32.i.i176.i, align 4
  br label %r8712_bb_reg_read.exit181.i

r8712_bb_reg_read.exit181.i:                      ; preds = %if.else.i.i180.i, %if.then.i.i179.i
  %98 = ptrtoint ptr %val32.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val32.i.i176.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i176.i) #4
  %and.i79.i = and i32 %99, -536870913
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i174.i) #4
  %100 = ptrtoint ptr %value.addr.i69.i174.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and.i79.i, ptr %value.addr.i69.i174.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i174.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i175.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i174.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i184.i) #4
  %101 = ptrtoint ptr %val32.i.i184.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %val32.i.i184.i, align 4
  %call.i.i185.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i185.i)
  %tobool.not.i.i186.i = icmp eq i8 %call.i.i185.i, 0
  br i1 %tobool.not.i.i186.i, label %if.else.i.i188.i, label %if.then.i.i187.i

if.then.i.i187.i:                                 ; preds = %r8712_bb_reg_read.exit181.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i184.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit189.i

if.else.i.i188.i:                                 ; preds = %r8712_bb_reg_read.exit181.i
  call void @__sanitizer_cov_trace_pc() #6
  %102 = ptrtoint ptr %val32.i.i184.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %val32.i.i184.i, align 4
  br label %r8712_bb_reg_read.exit189.i

r8712_bb_reg_read.exit189.i:                      ; preds = %if.else.i.i188.i, %if.then.i.i187.i
  %103 = ptrtoint ptr %val32.i.i184.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %val32.i.i184.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i184.i) #4
  %and.i90.i = and i32 %104, -1073741825
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i182.i) #4
  %105 = ptrtoint ptr %value.addr.i69.i182.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and.i90.i, ptr %value.addr.i69.i182.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i182.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i183.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i182.i) #4
  br label %if.end16

if.else.i48:                                      ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i192.i) #4
  %106 = ptrtoint ptr %val32.i.i192.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %val32.i.i192.i, align 4
  %call.i.i193.i = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i193.i)
  %tobool.not.i.i194.i = icmp eq i8 %call.i.i193.i, 0
  br i1 %tobool.not.i.i194.i, label %if.else.i.i196.i, label %if.then.i.i195.i

if.then.i.i195.i:                                 ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i192.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit197.i

if.else.i.i196.i:                                 ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #6
  %107 = ptrtoint ptr %val32.i.i192.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %val32.i.i192.i, align 4
  br label %r8712_bb_reg_read.exit197.i

r8712_bb_reg_read.exit197.i:                      ; preds = %if.else.i.i196.i, %if.then.i.i195.i
  %108 = ptrtoint ptr %val32.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val32.i.i192.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i192.i) #4
  %and.i101.i = and i32 %109, -268435457
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i190.i) #4
  %110 = ptrtoint ptr %value.addr.i69.i190.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and.i101.i, ptr %value.addr.i69.i190.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i190.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i191.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i190.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i200.i) #4
  %111 = ptrtoint ptr %val32.i.i200.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %val32.i.i200.i, align 4
  %call.i.i201.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i201.i)
  %tobool.not.i.i202.i = icmp eq i8 %call.i.i201.i, 0
  br i1 %tobool.not.i.i202.i, label %if.else.i.i204.i, label %if.then.i.i203.i

if.then.i.i203.i:                                 ; preds = %r8712_bb_reg_read.exit197.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i200.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit205.i

if.else.i.i204.i:                                 ; preds = %r8712_bb_reg_read.exit197.i
  call void @__sanitizer_cov_trace_pc() #6
  %112 = ptrtoint ptr %val32.i.i200.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %val32.i.i200.i, align 4
  br label %r8712_bb_reg_read.exit205.i

r8712_bb_reg_read.exit205.i:                      ; preds = %if.else.i.i204.i, %if.then.i.i203.i
  %113 = ptrtoint ptr %val32.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val32.i.i200.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i200.i) #4
  %and.i112.i = and i32 %114, -536870913
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i198.i) #4
  %115 = ptrtoint ptr %value.addr.i69.i198.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and.i112.i, ptr %value.addr.i69.i198.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i198.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i199.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i198.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i208.i) #4
  %116 = ptrtoint ptr %val32.i.i208.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %val32.i.i208.i, align 4
  %call.i.i209.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583488) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i209.i)
  %tobool.not.i.i210.i = icmp eq i8 %call.i.i209.i, 0
  br i1 %tobool.not.i.i210.i, label %if.else.i.i212.i, label %if.then.i.i211.i

if.then.i.i211.i:                                 ; preds = %r8712_bb_reg_read.exit205.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i208.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit213.i

if.else.i.i212.i:                                 ; preds = %r8712_bb_reg_read.exit205.i
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %val32.i.i208.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %val32.i.i208.i, align 4
  br label %r8712_bb_reg_read.exit213.i

r8712_bb_reg_read.exit213.i:                      ; preds = %if.else.i.i212.i, %if.then.i.i211.i
  %118 = ptrtoint ptr %val32.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val32.i.i208.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i208.i) #4
  %and.i123.i = and i32 %119, -1073741825
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i206.i) #4
  %120 = ptrtoint ptr %value.addr.i69.i206.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and.i123.i, ptr %value.addr.i69.i206.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i206.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i207.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267583487) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i206.i) #4
  call void @msleep(i32 noundef 20) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i216.i) #4
  %121 = ptrtoint ptr %val32.i.i216.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %val32.i.i216.i, align 4
  %call.i.i217.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369920) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i217.i)
  %tobool.not.i.i218.i = icmp eq i8 %call.i.i217.i, 0
  br i1 %tobool.not.i.i218.i, label %if.else.i.i220.i, label %if.then.i.i219.i

if.then.i.i219.i:                                 ; preds = %r8712_bb_reg_read.exit213.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i216.i, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit221.i

if.else.i.i220.i:                                 ; preds = %r8712_bb_reg_read.exit213.i
  call void @__sanitizer_cov_trace_pc() #6
  %122 = ptrtoint ptr %val32.i.i216.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %val32.i.i216.i, align 4
  br label %r8712_bb_reg_read.exit221.i

r8712_bb_reg_read.exit221.i:                      ; preds = %if.else.i.i220.i, %if.then.i.i219.i
  %123 = ptrtoint ptr %val32.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val32.i.i216.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i216.i) #4
  %and.i134.i = and i32 %124, -257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i214.i) #4
  %125 = ptrtoint ptr %value.addr.i69.i214.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %and.i134.i, ptr %value.addr.i69.i214.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i214.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i215.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369919) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i214.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i224.i) #4
  %126 = ptrtoint ptr %val32.i.i224.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %val32.i.i224.i, align 4
  %call.i.i225.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369920) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i225.i)
  %tobool.not.i.i226.i = icmp eq i8 %call.i.i225.i, 0
  br i1 %tobool.not.i.i226.i, label %if.else.i.i228.i, label %if.then.i.i227.i

if.then.i.i227.i:                                 ; preds = %r8712_bb_reg_read.exit221.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i224.i, i8 noundef zeroext 1) #4
  br label %set_bb_reg.exit149.i

if.else.i.i228.i:                                 ; preds = %r8712_bb_reg_read.exit221.i
  call void @__sanitizer_cov_trace_pc() #6
  %127 = ptrtoint ptr %val32.i.i224.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %val32.i.i224.i, align 4
  br label %set_bb_reg.exit149.i

set_bb_reg.exit149.i:                             ; preds = %if.else.i.i228.i, %if.then.i.i227.i
  %128 = ptrtoint ptr %val32.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %val32.i.i224.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i224.i) #4
  %or.i147.i = or i32 %129, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i222.i) #4
  %130 = ptrtoint ptr %value.addr.i69.i222.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or.i147.i, ptr %value.addr.i69.i222.i, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i222.i, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i223.i = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -268369919) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i222.i) #4
  br label %if.then13

if.then13:                                        ; preds = %set_bb_reg.exit149.i, %land.lhs.true.if.then13_crit_edge, %set_bb_reg.exit154.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i.i49) #4
  %131 = ptrtoint ptr %val32.i.i49 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %val32.i.i49, align 4
  %call.i.i50 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267489280) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i50)
  %tobool.not.i.i51 = icmp eq i8 %call.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.else.i.i53, label %if.then.i.i52

if.then.i.i52:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %val32.i.i49, i8 noundef zeroext 1) #4
  br label %r8712_bb_reg_read.exit55

if.else.i.i53:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %132 = ptrtoint ptr %val32.i.i49 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %val32.i.i49, align 4
  br label %r8712_bb_reg_read.exit55

r8712_bb_reg_read.exit55:                         ; preds = %if.else.i.i53, %if.then.i.i52
  %133 = ptrtoint ptr %val32.i.i49 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %val32.i.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i.i49) #4
  %or = or i32 %134, 31457280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i69.i56) #4
  %135 = ptrtoint ptr %value.addr.i69.i56 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or, ptr %value.addr.i69.i56, align 4
  call void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr noundef nonnull %value.addr.i69.i56, i8 noundef zeroext 0) #4
  call void @msleep(i32 noundef 100) #4
  %call.i75.i57 = call zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef -267489279) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i69.i56) #4
  br label %if.end16

if.end16:                                         ; preds = %r8712_bb_reg_read.exit55, %r8712_bb_reg_read.exit189.i, %land.lhs.true.thread.if.end16_crit_edge, %set_bb_reg.exit106.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_ResetPhyRxPktCount(ptr noundef %pAdapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 134217728) #4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 402653184) #4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 671088640) #4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 939524096) #4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 1207959552) #4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 1476395008) #4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 1744830464) #4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 2013265920) #4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef -2013265920) #4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef -1744830464) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_GetPhyRxPktReceived(ptr noundef %pAdapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 268435456) #4
  %call.i = tail call i32 @r8712_read32(ptr noundef %pAdapter, i32 noundef 270860848) #4
  %and1.i = and i32 %call.i, 1048575
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 1073741824) #4
  %call.i6 = tail call i32 @r8712_read32(ptr noundef %pAdapter, i32 noundef 270860848) #4
  %and1.i7 = and i32 %call.i6, 1048575
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef -2147483648) #4
  %call.i8 = tail call i32 @r8712_read32(ptr noundef %pAdapter, i32 noundef 270860848) #4
  %and1.i9 = and i32 %call.i8, 1048575
  %add = add nuw nsw i32 %and1.i7, %and1.i
  %add3 = add nuw nsw i32 %add, %and1.i9
  ret i32 %add3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_GetPhyRxPktCRC32Error(ptr noundef %pAdapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 536870912) #4
  %call.i = tail call i32 @r8712_read32(ptr noundef %pAdapter, i32 noundef 270860848) #4
  %and1.i = and i32 %call.i, 1048575
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef 1342177280) #4
  %call.i6 = tail call i32 @r8712_read32(ptr noundef %pAdapter, i32 noundef 270860848) #4
  %and1.i7 = and i32 %call.i6, 1048575
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270860848, i32 noundef -1879048192) #4
  %call.i8 = tail call i32 @r8712_read32(ptr noundef %pAdapter, i32 noundef 270860848) #4
  %and1.i9 = and i32 %call.i8, 1048575
  %add = add nuw nsw i32 %and1.i7, %and1.i
  %add3 = add nuw nsw i32 %add, %and1.i9
  ret i32 %add3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_fw_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_fw_cmd_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @init_mp_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_mp.c", i32 42, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
