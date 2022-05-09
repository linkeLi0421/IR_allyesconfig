; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_recv.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_recv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { ptr }
%struct.sk_buff_head = type { %union.anon.3, i32, %struct.spinlock }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr }
%struct.smooth_rssi_data = type { [100 x i32], i32, i32, i32 }
%struct.recv_frame_hdr = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, [2 x i8], i8, i8, i8 }
%union.recv_frame = type { %union.anon.130 }
%union.anon.130 = type { %struct.recv_frame_hdr }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
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
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

@_r8712_init_sta_recv_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&psta_recvpriv->lock\00", [43 x i8] zeroinitializer }, align 32
@_r8712_init_sta_recv_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&((&psta_recvpriv->defrag_q)->lock)\00", [60 x i8] zeroinitializer }, align 32
@_r8712_init_recv_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&precvpriv->lock\00", [47 x i8] zeroinitializer }, align 32
@_r8712_init_recv_priv.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&((&precvpriv->free_recv_queue)->lock)\00", [57 x i8] zeroinitializer }, align 32
@_r8712_init_recv_priv.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"&((&precvpriv->recv_pending_queue)->lock)\00", [54 x i8] zeroinitializer }, align 32
@rfc1042_header = external dso_local constant [6 x i8], align 1
@SNAP_ETH_TYPE_IPX = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\817", [30 x i8] zeroinitializer }, align 32
@SNAP_ETH_TYPE_APPLETALK_AARP = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\80\F3", [30 x i8] zeroinitializer }, align 32
@bridge_tunnel_header = external dso_local constant [6 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 2, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 43, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 44, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 54, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 55, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 56, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"SNAP_ETH_TYPE_IPX\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 35, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant [29 x i8] c"SNAP_ETH_TYPE_APPLETALK_AARP\00", align 1
@___asan_gen_.45 = private constant [42 x i8] c"../drivers/staging/rtl8712/rtl871x_recv.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 38, i32 17 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @_r8712_init_sta_recv_priv.__key, ptr @.str, ptr @_r8712_init_sta_recv_priv.__key.1, ptr @.str.2, ptr @_r8712_init_recv_priv.__key, ptr @.str.3, ptr @_r8712_init_recv_priv.__key.4, ptr @.str.5, ptr @_r8712_init_recv_priv.__key.6, ptr @.str.7, ptr @SNAP_ETH_TYPE_IPX, ptr @SNAP_ETH_TYPE_APPLETALK_AARP], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_sta_recv_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_sta_recv_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_recv_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_recv_priv.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_recv_priv.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SNAP_ETH_TYPE_IPX to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SNAP_ETH_TYPE_APPLETALK_AARP to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_r8712_init_sta_recv_priv(ptr noundef %psta_recvpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %psta_recvpriv, i32 0, i32 144)
  tail call void @__raw_spin_lock_init(ptr noundef %psta_recvpriv, ptr noundef nonnull @.str, ptr noundef nonnull @_r8712_init_sta_recv_priv.__key, i16 noundef signext 3) #7
  %defrag_q = getelementptr inbounds %struct.sta_recv_priv, ptr %psta_recvpriv, i32 0, i32 2
  %1 = ptrtoint ptr %defrag_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %defrag_q, ptr %defrag_q, align 4
  %prev.i = getelementptr inbounds %struct.sta_recv_priv, ptr %psta_recvpriv, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %defrag_q, ptr %prev.i, align 4
  %lock4 = getelementptr inbounds %struct.sta_recv_priv, ptr %psta_recvpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock4, ptr noundef nonnull @.str.2, ptr noundef nonnull @_r8712_init_sta_recv_priv.__key.1, i16 noundef signext 3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_r8712_init_recv_priv(ptr noundef %precvpriv, ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %precvpriv, i32 0, i32 1228)
  tail call void @__raw_spin_lock_init(ptr noundef %precvpriv, ptr noundef nonnull @.str.3, ptr noundef nonnull @_r8712_init_recv_priv.__key, i16 noundef signext 3) #7
  %free_recv_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 1
  %1 = ptrtoint ptr %free_recv_queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %free_recv_queue, ptr %free_recv_queue, align 4
  %prev.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %free_recv_queue, ptr %prev.i, align 4
  %lock4 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock4, ptr noundef nonnull @.str.5, ptr noundef nonnull @_r8712_init_recv_priv.__key.4, i16 noundef signext 3) #7
  %recv_pending_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 2
  %3 = ptrtoint ptr %recv_pending_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %recv_pending_queue, ptr %recv_pending_queue, align 4
  %prev.i56 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %recv_pending_queue, ptr %prev.i56, align 4
  %lock14 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock14, ptr noundef nonnull @.str.7, ptr noundef nonnull @_r8712_init_recv_priv.__key.6, i16 noundef signext 3) #7
  %adapter = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 6
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %padapter, ptr %adapter, align 4
  %free_recvframe_cnt = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 5
  %6 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %free_recvframe_cnt, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 35072, i32 noundef 2848, i32 noundef 4) #10
  %pallocated_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 3
  %7 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i.i.i, ptr %pallocated_frame_buf, align 4
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call1.i.i.i) #7
  %8 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pallocated_frame_buf, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 256
  %10 = ptrtoint ptr %9 to i32
  %and = and i32 %10, 255
  %idx.neg = sub nsw i32 0, %and
  %add.ptr25 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %precv_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 4
  %11 = ptrtoint ptr %precv_frame_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr25, ptr %precv_frame_buf, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %precvframe.060 = phi ptr [ %add.ptr25, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.059 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %precvframe.060 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %precvframe.060, ptr %precvframe.060, align 4
  %prev.i57 = getelementptr inbounds %struct.list_head, ptr %precvframe.060, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %precvframe.060, ptr %prev.i57, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precvframe.060, ptr noundef %15, ptr noundef %free_recv_queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %precvframe.060, ptr %prev.i, align 4
  %17 = ptrtoint ptr %precvframe.060 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_recv_queue, ptr %precvframe.060, align 4
  %18 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i57, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %precvframe.060, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  tail call void @r8712_os_recv_resource_alloc(ptr noundef %padapter, ptr noundef %precvframe.060) #7
  %adapter29 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe.060, i32 0, i32 3
  %20 = ptrtoint ptr %adapter29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %padapter, ptr %adapter29, align 4
  %incdec.ptr = getelementptr %union.recv_frame, ptr %precvframe.060, i32 1
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rx_pending_cnt = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 14
  %21 = ptrtoint ptr %rx_pending_cnt to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %rx_pending_cnt, align 4
  tail call void @r8712_init_recv_priv(ptr noundef %precvpriv, ptr noundef %padapter) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_not_leak(ptr noundef) local_unnamed_addr #1 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_os_recv_resource_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_init_recv_priv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_r8712_free_recv_priv(ptr noundef %precvpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pallocated_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 3
  %0 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pallocated_frame_buf, align 4
  tail call void @kfree(ptr noundef %1) #7
  tail call void @r8712_free_recv_priv(ptr noundef %precvpriv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_recv_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_alloc_recvframe(ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %pfree_recv_queue, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %pfree_recv_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pfree_recv_queue, align 4
  %cmp10.not = icmp eq ptr %1, %pfree_recv_queue
  %spec.select = select i1 %cmp10.not, ptr null, ptr %1
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %spec.select, ptr %spec.select, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %prev.i3.i, align 4
  %adapter = getelementptr inbounds %struct.recv_frame_hdr, ptr %spec.select, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  %tobool13.not = icmp ne ptr %11, null
  %free_recv_queue = getelementptr inbounds %struct._adapter, ptr %11, i32 0, i32 6, i32 1
  %cmp15 = icmp eq ptr %free_recv_queue, %pfree_recv_queue
  %or.cond = select i1 %tobool13.not, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then17, label %list_del_init.exit.if.end19_crit_edge

list_del_init.exit.if.end19_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %free_recvframe_cnt = getelementptr inbounds %struct._adapter, ptr %11, i32 0, i32 6, i32 5
  %12 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_recvframe_cnt, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %free_recvframe_cnt, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %list_del_init.exit.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_recvframe_queue(ptr noundef %pframequeue, ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %pframequeue, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %0 = ptrtoint ptr %pframequeue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pframequeue, align 4
  %cmp.i.not8 = icmp eq ptr %1, %pframequeue
  br i1 %cmp.i.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %plist.09 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %plist.09 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.09, align 4
  tail call void @r8712_free_recvframe(ptr noundef %plist.09, ptr noundef %pfree_recv_queue) #7
  %cmp.i.not = icmp eq ptr %3, %pframequeue
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_recvframe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_recvframe_chkmic(ptr noundef %adapter, ptr noundef %precvframe) local_unnamed_addr #0 align 64 {
entry:
  %miccode = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %miccode) #7
  %0 = getelementptr inbounds [8 x i8], ptr %miccode, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %miccode, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %miccode, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %miccode, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %miccode, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %miccode, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %miccode, i32 0, i32 7
  %stapriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %ta = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 20
  %7 = ptrtoint ptr %miccode to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %miccode, align 8
  %call = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #7
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 12
  %8 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ne i32 %9, 2
  %tobool.not = icmp eq ptr %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %entry
  %ra = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 21
  %10 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ra, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then1
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %13 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_data, align 4
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 11
  %15 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hdrlen, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %arrayidx4 = getelementptr i8, ptr %add.ptr, i32 3
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4, align 1
  %19 = lshr i8 %18, 6
  %20 = zext i8 %19 to i32
  %sub = add nsw i32 %20, -1
  %arrayidx5 = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 8, i32 9, i32 %sub
  %binstallGrpkey = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 16
  %21 = ptrtoint ptr %binstallGrpkey to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %binstallGrpkey, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not = icmp eq i8 %22, 0
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %tkiprxmickey = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 13
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3.if.end10_crit_edge
  %mickey.0 = phi ptr [ %arrayidx5, %if.then3.if.end10_crit_edge ], [ %tkiprxmickey, %if.else ]
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %hdrlen11 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 11
  %25 = ptrtoint ptr %hdrlen11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hdrlen11, align 4
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 13
  %27 = ptrtoint ptr %iv_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iv_len, align 4
  %icv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 14
  %29 = ptrtoint ptr %icv_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %icv_len, align 4
  %.neg100 = add i32 %24, -8
  %31 = add i32 %26, %28
  %32 = add i32 %31, %30
  %sub15 = sub i32 %.neg100, %32
  %rx_data16 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %33 = ptrtoint ptr %rx_data16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_data16, align 4
  %add.ptr18 = getelementptr i8, ptr %34, i32 %26
  %add.ptr20 = getelementptr i8, ptr %add.ptr18, i32 %28
  %priority = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 15
  %35 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %priority, align 4
  %conv22 = trunc i32 %36 to i8
  call void @seccalctkipmic(ptr noundef %mickey.0, ptr noundef %34, ptr noundef %add.ptr20, i32 noundef %sub15, ptr noundef nonnull %miccode, i8 noundef zeroext %conv22) #7
  %add.ptr23 = getelementptr i8, ptr %add.ptr20, i32 %sub15
  %37 = ptrtoint ptr %miccode to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %miccode, align 8
  %39 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr23, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp30.not = icmp eq i8 %38, %40
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %0, align 1
  %add.ptr28.1 = getelementptr i8, ptr %add.ptr23, i32 1
  %43 = ptrtoint ptr %add.ptr28.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr28.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp30.not.1 = icmp eq i8 %42, %44
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %1, align 2
  %add.ptr28.2 = getelementptr i8, ptr %add.ptr23, i32 2
  %47 = ptrtoint ptr %add.ptr28.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr28.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp30.not.2 = icmp eq i8 %46, %48
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %2, align 1
  %add.ptr28.3 = getelementptr i8, ptr %add.ptr23, i32 3
  %51 = ptrtoint ptr %add.ptr28.3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr28.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp30.not.3 = icmp eq i8 %50, %52
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %3, align 4
  %add.ptr28.4 = getelementptr i8, ptr %add.ptr23, i32 4
  %55 = ptrtoint ptr %add.ptr28.4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr28.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp30.not.4 = icmp eq i8 %54, %56
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %4, align 1
  %add.ptr28.5 = getelementptr i8, ptr %add.ptr23, i32 5
  %59 = ptrtoint ptr %add.ptr28.5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr28.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp30.not.5 = icmp eq i8 %58, %60
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %5, align 2
  %add.ptr28.6 = getelementptr i8, ptr %add.ptr23, i32 6
  %63 = ptrtoint ptr %add.ptr28.6 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr28.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp30.not.6 = icmp eq i8 %62, %64
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %6, align 1
  %add.ptr28.7 = getelementptr i8, ptr %add.ptr23, i32 7
  %67 = ptrtoint ptr %add.ptr28.7 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr28.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %68)
  %cmp30.not.7 = icmp eq i8 %66, %68
  %69 = select i1 %cmp30.not.7, i1 %cmp30.not.6, i1 false
  %70 = select i1 %69, i1 %cmp30.not.5, i1 false
  %71 = select i1 %70, i1 %cmp30.not.4, i1 false
  %72 = select i1 %71, i1 %cmp30.not.3, i1 false
  %73 = select i1 %72, i1 %cmp30.not.2, i1 false
  %74 = select i1 %73, i1 %cmp30.not.1, i1 false
  %narrow = select i1 %74, i1 %cmp30.not, i1 false
  br i1 %narrow, label %if.else43, label %if.then35

if.then35:                                        ; preds = %if.end10
  %bdecrypted = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 10
  %75 = ptrtoint ptr %bdecrypted to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bdecrypted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool36.not = icmp eq i8 %76, 0
  br i1 %tobool36.not, label %if.then35.if.end52_crit_edge, label %if.then37

if.then35.if.end52_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ra, align 4
  %79 = lshr i32 %78, 24
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  call void @r8712_handle_tkip_mic_err(ptr noundef %adapter, i8 noundef zeroext %81) #7
  br label %if.end52

if.else43:                                        ; preds = %if.end10
  %bcheck_grpkey = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 19
  %82 = ptrtoint ptr %bcheck_grpkey to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bcheck_grpkey, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool44.not = icmp eq i8 %83, 0
  br i1 %tobool44.not, label %land.lhs.true, label %if.else43.if.end52_crit_edge

if.else43.if.end52_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.lhs.true:                                    ; preds = %if.else43
  %84 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ra, align 4
  %86 = and i32 %85, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i98.not = icmp eq i32 %86, 0
  br i1 %tobool.i98.not, label %land.lhs.true.if.end52_crit_edge, label %if.then49

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %bcheck_grpkey to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %bcheck_grpkey, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %land.lhs.true.if.end52_crit_edge, %if.else43.if.end52_crit_edge, %if.then37, %if.then35.if.end52_crit_edge
  %res.0 = phi i32 [ 1, %if.else43.if.end52_crit_edge ], [ 1, %if.then49 ], [ 1, %land.lhs.true.if.end52_crit_edge ], [ 0, %if.then37 ], [ 0, %if.then35.if.end52_crit_edge ]
  %tobool.not.i = icmp eq ptr %precvframe, null
  br i1 %tobool.not.i, label %if.end52.cleanup_crit_edge, label %if.end.i

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end52
  %rx_tail.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %88 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_tail.i, align 4
  %add.ptr.i = getelementptr i8, ptr %89, i32 -8
  store ptr %add.ptr.i, ptr %rx_tail.i, align 4
  %90 = ptrtoint ptr %rx_data16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx_data16, align 4
  %cmp.i = icmp ult ptr %add.ptr.i, %91
  br i1 %cmp.i, label %if.then2.i, label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %rx_tail.i, align 4
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len, align 4
  %sub.i = add i32 %94, -8
  store i32 %sub.i, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.then2.i, %if.end52.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ %res.0, %if.end52.cleanup_crit_edge ], [ %res.0, %if.then2.i ], [ %res.0, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %miccode) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seccalctkipmic(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_handle_tkip_mic_err(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_decryptor(ptr noundef %padapter, ptr noundef returned %precv_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %bdecrypted = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %bdecrypted to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bdecrypted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sw_decrypt = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 22
  %4 = ptrtoint ptr %sw_decrypt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sw_decrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %hw_decrypted = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 23
  %6 = ptrtoint ptr %hw_decrypted to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %hw_decrypted, align 8
  %7 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encrypt, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.then.if.end12_crit_edge [
    i32 1, label %if.then.sw.bb_crit_edge
    i32 5, label %if.then.sw.bb_crit_edge25
    i32 2, label %sw.bb4
    i32 4, label %sw.bb5
  ]

if.then.sw.bb_crit_edge25:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge25
  tail call void @r8712_wep_decrypt(ptr noundef %padapter, ptr noundef %precv_frame) #7
  br label %if.end12

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r8712_tkip_decrypt(ptr noundef %padapter, ptr noundef %precv_frame) #7
  br label %if.end12

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r8712_aes_decrypt(ptr noundef %padapter, ptr noundef %precv_frame) #7
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %entry.if.else_crit_edge
  %bdecrypted6 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 10
  %10 = ptrtoint ptr %bdecrypted6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bdecrypted6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp8 = icmp eq i8 %11, 1
  br i1 %cmp8, label %if.then10, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %hw_decrypted11 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 23
  %12 = ptrtoint ptr %hw_decrypted11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %hw_decrypted11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else.if.end12_crit_edge, %sw.bb5, %sw.bb4, %sw.bb, %if.then.if.end12_crit_edge
  ret ptr %precv_frame
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_wep_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_tkip_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_aes_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_portctrl(ptr noundef %adapter, ptr noundef %precv_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %precv_frame, null
  br i1 %tobool.not.i, label %entry.get_recvframe_data.exit_crit_edge, label %if.end.i

entry.get_recvframe_data.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_recvframe_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_data.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 8
  %0 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data.i, align 4
  br label %get_recvframe_data.exit

get_recvframe_data.exit:                          ; preds = %if.end.i, %entry.get_recvframe_data.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.get_recvframe_data.exit_crit_edge ]
  %ta = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 20
  %call1 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #7
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8
  %2 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ne i32 %3, 2
  %tobool.not = icmp eq ptr %call1, null
  %or.cond31 = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond31, label %get_recvframe_data.exit.if.end18_crit_edge, label %land.lhs.true

get_recvframe_data.exit.if.end18_crit_edge:       ; preds = %get_recvframe_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %get_recvframe_data.exit
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 11
  %4 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdrlen, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 %5
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 6
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr3, align 1
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 10
  %8 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ieee8021x_blocked, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %7)
  %cmp7 = icmp eq i16 %7, -30578
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp7
  br i1 %or.cond, label %land.lhs.true.if.end18_crit_edge, label %if.else

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %free_recv_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 6, i32 1
  tail call void @r8712_free_recvframe(ptr noundef %precv_frame, ptr noundef %free_recv_queue) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %land.lhs.true.if.end18_crit_edge, %get_recvframe_data.exit.if.end18_crit_edge
  %prtnframe.0 = phi ptr [ null, %if.else ], [ %precv_frame, %get_recvframe_data.exit.if.end18_crit_edge ], [ %precv_frame, %land.lhs.true.if.end18_crit_edge ]
  ret ptr %prtnframe.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_validate_recv_frame(ptr noundef %adapter, ptr noundef %precv_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 8
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = and i16 %7, 12
  %trunc.i = trunc i16 %6 to i2
  %rev.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i) #7
  %conv6.i = zext i2 %rev.i to i8
  %to_fr_ds = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %to_fr_ds to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6.i, ptr %to_fr_ds, align 1
  %10 = ptrtoint ptr %1 to i32
  %add = add i32 %10, 22
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %14 = lshr i16 %13, 8
  %15 = trunc i16 %14 to i8
  %conv13 = and i8 %15, 15
  %frag_num = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %frag_num to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13, ptr %frag_num, align 4
  %17 = load i16, ptr %11, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = lshr i16 %18, 4
  %seq_num = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %seq_num to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %seq_num, align 2
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %1, align 2
  %23 = trunc i16 %22 to i8
  %24 = lshr i8 %23, 4
  %25 = and i8 %24, 1
  %pw_save = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 6
  %26 = ptrtoint ptr %pw_save to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %pw_save, align 4
  %27 = load i16, ptr %1, align 2
  %28 = trunc i16 %27 to i8
  %29 = lshr i8 %28, 2
  %30 = and i8 %29, 1
  %mfrag = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 7
  %31 = ptrtoint ptr %mfrag to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %mfrag, align 1
  %32 = load i16, ptr %1, align 2
  %33 = trunc i16 %32 to i8
  %34 = lshr i8 %33, 5
  %35 = and i8 %34, 1
  %mdata = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 8
  %36 = ptrtoint ptr %mdata to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %mdata, align 2
  %37 = load i16, ptr %1, align 2
  %38 = trunc i16 %37 to i8
  %39 = lshr i8 %38, 6
  %40 = and i8 %39, 1
  %privacy = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 9
  %41 = ptrtoint ptr %privacy to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %privacy, align 1
  %42 = load i16, ptr %1, align 2
  %43 = trunc i16 %42 to i8
  %44 = lshr i8 %43, 7
  %order = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %order to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %order, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %8)
  %cond = icmp eq i16 %8, 8
  br i1 %cond, label %sw.bb46, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  %46 = trunc i16 %7 to i8
  %47 = lshr i8 %46, 7
  %qos = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 2
  %48 = ptrtoint ptr %qos to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %qos, align 2
  %attrib.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5
  %securitypriv.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %1, align 2
  %51 = and i16 %50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp.i.not.i.i = icmp eq i16 %51, 0
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %retval.0.i.i = select i1 %cmp.i.not.i.i, ptr %addr1.i.i, ptr %addr3.i.i
  %52 = and i16 %50, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %52)
  %cmp.i.i.i = icmp eq i16 %52, 3
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 6
  br label %ieee80211_get_SA.exit.i

if.end.i.i:                                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  %53 = and i16 %50, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp.i11.not.i.i = icmp eq i16 %53, 0
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %spec.select.i = select i1 %cmp.i11.not.i.i, ptr %addr2.i.i, ptr %addr3.i.i
  br label %ieee80211_get_SA.exit.i

ieee80211_get_SA.exit.i:                          ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i191.i = phi ptr [ %addr4.i.i, %if.then.i.i ], [ %spec.select.i, %if.end.i.i ]
  %trunc.i.i = trunc i16 %50 to i2
  %rev.i.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i.i) #7
  %54 = sext i2 %rev.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %.not = icmp eq i2 %rev.i.i, -1
  br i1 %.not, label %ieee80211_get_SA.exit.i.cleanup_crit_edge, label %switch.lookup

ieee80211_get_SA.exit.i.cleanup_crit_edge:        ; preds = %ieee80211_get_SA.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %ieee80211_get_SA.exit.i
  %or.i.i = zext i2 %rev.i.i to i32
  %switch.idx.mult = mul nsw i32 %or.i.i, -6
  %switch.offset = add nsw i32 %switch.idx.mult, 16
  %add.i.i = add i32 %switch.offset, %10
  %sa.0.i.i = inttoptr i32 %add.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool.not.i, label %switch.lookup.cleanup_crit_edge, label %if.end.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %switch.lookup
  %dst.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 18
  %55 = call ptr @memcpy(ptr %dst.i, ptr %retval.0.i.i, i32 6)
  %src.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 19
  %56 = call ptr @memcpy(ptr %src.i, ptr %retval.0.i191.i, i32 6)
  %bssid.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 22
  %57 = call ptr @memcpy(ptr %bssid.i, ptr %sa.0.i.i, i32 6)
  %58 = zext i2 %rev.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.8)
  switch i2 %rev.i, label %if.end.i.unreachabledefault [
    i2 0, label %sw.bb.i
    i2 1, label %sw.bb11.i
    i2 -2, label %sw.bb17.i
    i2 -1, label %sw.bb23.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %ra.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 21
  %59 = call ptr @memcpy(ptr %ra.i, ptr %retval.0.i.i, i32 6)
  %ta.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 20
  %60 = call ptr @memcpy(ptr %ta.i, ptr %retval.0.i191.i, i32 6)
  %stapriv.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %MacAddress.i.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %mac_addr.i.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 12, i32 3
  %61 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dst.i, align 4
  %63 = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.i.i.i = icmp ne i32 %63, 0
  %fw_state.i.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fw_state.i.i.i, align 8
  %66 = and i32 %65, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %if.else.i.i, label %if.then.i192.i

if.then.i192.i:                                   ; preds = %sw.bb.i
  %bcmp153.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i.i, ptr noundef dereferenceable(6) %src.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp153.i.i)
  %tobool9.not.i.i = icmp eq i32 %bcmp153.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then.i192.i.cleanup_crit_edge, label %if.end.i193.i

if.then.i192.i.cleanup_crit_edge:                 ; preds = %if.then.i192.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i193.i:                                    ; preds = %if.then.i192.i
  %bcmp154.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i.i, ptr noundef dereferenceable(6) %dst.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp154.i.i)
  %tobool14.not.i.i = icmp eq i32 %bcmp154.i.i, 0
  %brmerge.i.i = select i1 %tobool14.not.i.i, i1 true, i1 %tobool.i.i.i
  br i1 %brmerge.i.i, label %if.end17.i.i, label %if.end.i193.i.cleanup_crit_edge

if.end.i193.i.cleanup_crit_edge:                  ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i.i:                                     ; preds = %if.end.i193.i
  %68 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bssid.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 22, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %71 to i32
  %or.i.i.i = or i32 %69, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i194.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i194.i, label %if.end17.i.i.cleanup_crit_edge, label %lor.lhs.false21.i.i

if.end17.i.i.cleanup_crit_edge:                   ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false21.i.i:                              ; preds = %if.end17.i.i
  %72 = ptrtoint ptr %MacAddress.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %MacAddress.i.i.i, align 4
  %add.ptr.i160.i.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1, i32 4
  %74 = ptrtoint ptr %add.ptr.i160.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i160.i.i, align 2
  %conv.i161.i.i = zext i16 %75 to i32
  %or.i162.i.i = or i32 %73, %conv.i161.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i162.i.i)
  %cmp.i163.i.i = icmp eq i32 %or.i162.i.i, 0
  br i1 %cmp.i163.i.i, label %lor.lhs.false21.i.i.cleanup_crit_edge, label %lor.lhs.false24.i.i

lor.lhs.false21.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false24.i.i:                              ; preds = %lor.lhs.false21.i.i
  %bcmp155.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i, ptr noundef dereferenceable(6) %MacAddress.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp155.i.i)
  %tobool28.not.i.i = icmp eq i32 %bcmp155.i.i, 0
  br i1 %tobool28.not.i.i, label %lor.lhs.false24.i.i.if.end91.i.i_crit_edge, label %lor.lhs.false24.i.i.cleanup_crit_edge

lor.lhs.false24.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false24.i.i.if.end91.i.i_crit_edge:       ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i.i

if.else.i.i:                                      ; preds = %sw.bb.i
  %76 = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool34.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool34.not.i.i, label %if.else46.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.else.i.i
  %bcmp152.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i, ptr noundef dereferenceable(6) %src.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp152.i.i)
  %tobool41.not.i.i = icmp eq i32 %bcmp152.i.i, 0
  br i1 %tobool41.not.i.i, label %if.then35.i.i.if.end91.i.i_crit_edge, label %if.then35.i.i.cleanup_crit_edge

if.then35.i.i.cleanup_crit_edge:                  ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35.i.i.if.end91.i.i_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i.i

if.else46.i.i:                                    ; preds = %if.else.i.i
  %77 = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool48.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool48.not.i.i, label %if.else69.i.i, label %if.then49.i.i

if.then49.i.i:                                    ; preds = %if.else46.i.i
  br i1 %tobool.i.i.i, label %if.then51.i.i, label %if.else57.i.i

if.then51.i.i:                                    ; preds = %if.then49.i.i
  %78 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bssid.i, align 4
  %80 = and i32 %79, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i172.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool.i172.not.i.i, label %if.then51.i.i.cleanup_crit_edge, label %if.then51.i.i.if.then93.i.i_crit_edge

if.then51.i.i.if.then93.i.i_crit_edge:            ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then93.i.i

if.then51.i.i.cleanup_crit_edge:                  ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else57.i.i:                                    ; preds = %if.then49.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i, ptr noundef dereferenceable(6) %dst.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool63.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool63.not.i.i, label %if.else57.i.i.if.else95.i.i_crit_edge, label %if.else57.i.i.cleanup_crit_edge

if.else57.i.i.cleanup_crit_edge:                  ; preds = %if.else57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else57.i.i.if.else95.i.i_crit_edge:            ; preds = %if.else57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else95.i.i

if.else69.i.i:                                    ; preds = %if.else46.i.i
  %81 = and i32 %65, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool71.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool71.not.i.i, label %if.else69.i.i.if.end91.i.i_crit_edge, label %if.then72.i.i

if.else69.i.i.if.end91.i.i_crit_edge:             ; preds = %if.else69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i.i

if.then72.i.i:                                    ; preds = %if.else69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i195.i = add i32 %10, 4
  %82 = inttoptr i32 %add.i195.i to ptr
  %83 = call ptr @memcpy(ptr %dst.i, ptr %82, i32 6)
  %add77.i.i = add i32 %10, 10
  %84 = inttoptr i32 %add77.i.i to ptr
  %85 = call ptr @memcpy(ptr %src.i, ptr %84, i32 6)
  %add80.i.i = add i32 %10, 16
  %86 = inttoptr i32 %add80.i.i to ptr
  %87 = call ptr @memcpy(ptr %bssid.i, ptr %86, i32 6)
  %88 = call ptr @memcpy(ptr %ra.i, ptr %dst.i, i32 6)
  %89 = call ptr @memcpy(ptr %ta.i, ptr %src.i, i32 6)
  br label %if.end91.i.i

if.end91.i.i:                                     ; preds = %if.then72.i.i, %if.else69.i.i.if.end91.i.i_crit_edge, %if.then35.i.i.if.end91.i.i_crit_edge, %lor.lhs.false24.i.i.if.end91.i.i_crit_edge
  %ret.0.i.i = phi i32 [ 1, %if.then72.i.i ], [ 1, %lor.lhs.false24.i.i.if.end91.i.i_crit_edge ], [ 1, %if.then35.i.i.if.end91.i.i_crit_edge ], [ 0, %if.else69.i.i.if.end91.i.i_crit_edge ]
  %sta_addr.0.i.i = phi ptr [ %MacAddress.i.i.i, %if.then72.i.i ], [ %src.i, %lor.lhs.false24.i.i.if.end91.i.i_crit_edge ], [ %bssid.i, %if.then35.i.i.if.end91.i.i_crit_edge ], [ null, %if.else69.i.i.if.end91.i.i_crit_edge ]
  br i1 %tobool.i.i.i, label %if.end91.i.i.if.then93.i.i_crit_edge, label %if.end91.i.i.if.else95.i.i_crit_edge

if.end91.i.i.if.else95.i.i_crit_edge:             ; preds = %if.end91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else95.i.i

if.end91.i.i.if.then93.i.i_crit_edge:             ; preds = %if.end91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then93.i.i

if.then93.i.i:                                    ; preds = %if.end91.i.i.if.then93.i.i_crit_edge, %if.then51.i.i.if.then93.i.i_crit_edge
  %ret.0184.i.i = phi i32 [ %ret.0.i.i, %if.end91.i.i.if.then93.i.i_crit_edge ], [ 1, %if.then51.i.i.if.then93.i.i_crit_edge ]
  %call94.i.i = tail call ptr @r8712_get_bcmc_stainfo(ptr noundef %adapter) #7
  br label %if.end97.i.i

if.else95.i.i:                                    ; preds = %if.end91.i.i.if.else95.i.i_crit_edge, %if.else57.i.i.if.else95.i.i_crit_edge
  %sta_addr.0189.i.i = phi ptr [ %sta_addr.0.i.i, %if.end91.i.i.if.else95.i.i_crit_edge ], [ %src.i, %if.else57.i.i.if.else95.i.i_crit_edge ]
  %ret.0188.i.i = phi i32 [ %ret.0.i.i, %if.end91.i.i.if.else95.i.i_crit_edge ], [ 1, %if.else57.i.i.if.else95.i.i_crit_edge ]
  %call96.i.i = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv.i.i, ptr noundef %sta_addr.0189.i.i) #7
  br label %if.end97.i.i

if.end97.i.i:                                     ; preds = %if.else95.i.i, %if.then93.i.i
  %ret.0183.i.i = phi i32 [ %ret.0188.i.i, %if.else95.i.i ], [ %ret.0184.i.i, %if.then93.i.i ]
  %storemerge.i.i = phi ptr [ %call96.i.i, %if.else95.i.i ], [ %call94.i.i, %if.then93.i.i ]
  %tobool98.not.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %tobool98.not.i.i, label %if.then99.i.i, label %sw.epilog.i

if.then99.i.i:                                    ; preds = %if.end97.i.i
  %90 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fw_state.i.i.i, align 8
  %92 = and i32 %91, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool101.not.i.i = icmp eq i32 %92, 0
  br i1 %tobool101.not.i.i, label %if.then99.i.i.cleanup_crit_edge, label %if.then102.i.i

if.then99.i.i.cleanup_crit_edge:                  ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then102.i.i:                                   ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_pktloss.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 15, i32 7
  %93 = ptrtoint ptr %rx_pktloss.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_pktloss.i.i, align 4
  %inc.i.i = add i32 %94, 1
  store i32 %inc.i.i, ptr %rx_pktloss.i.i, align 4
  br label %cleanup

sw.bb11.i:                                        ; preds = %if.end.i
  %ra12.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 21
  %95 = call ptr @memcpy(ptr %ra12.i, ptr %retval.0.i.i, i32 6)
  %ta14.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 20
  %96 = call ptr @memcpy(ptr %ta14.i, ptr %sa.0.i.i, i32 6)
  %stapriv.i198.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %MacAddress.i.i199.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %mac_addr.i.i200.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 12, i32 3
  %97 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dst.i, align 4
  %99 = and i32 %98, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.i.i202.i = icmp ne i32 %99, 0
  %fw_state.i.i203.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %100 = ptrtoint ptr %fw_state.i.i203.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fw_state.i.i203.i, align 8
  %102 = and i32 %101, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %102)
  %.not.i.i = icmp eq i32 %102, 9
  br i1 %.not.i.i, label %if.then.i204.i, label %if.else58.i.i

if.then.i204.i:                                   ; preds = %sw.bb11.i
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %1, align 2
  %105 = lshr i16 %104, 8
  %106 = and i16 %105, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 72, i16 %106)
  %cmp.i.i = icmp eq i16 %106, 72
  br i1 %cmp.i.i, label %if.then.i204.i.cleanup_crit_edge, label %if.end.i205.i

if.then.i204.i.cleanup_crit_edge:                 ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i205.i:                                    ; preds = %if.then.i204.i
  %and.i.i = zext i16 %106 to i32
  %and12.i.i = and i32 %and.i.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and12.i.i)
  %cmp13.i.i = icmp ne i32 %and12.i.i, 136
  %and18.i.i = and i32 %and.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  %or.cond.i.i = or i1 %cmp13.i.i, %tobool19.not.i.i
  br i1 %or.cond.i.i, label %if.end22.i.i, label %if.end.i205.i.cleanup_crit_edge

if.end.i205.i.cleanup_crit_edge:                  ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.i.i:                                     ; preds = %if.end.i205.i
  %bcmp.i207.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i200.i, ptr noundef dereferenceable(6) %src.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i207.i)
  %tobool25.not.i.i = icmp eq i32 %bcmp.i207.i, 0
  br i1 %tobool25.not.i.i, label %if.end22.i.i.cleanup_crit_edge, label %if.end27.i.i

if.end22.i.i.cleanup_crit_edge:                   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27.i.i:                                     ; preds = %if.end22.i.i
  %bcmp134.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i200.i, ptr noundef dereferenceable(6) %dst.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp134.i.i)
  %tobool31.not.i.i = icmp eq i32 %bcmp134.i.i, 0
  %brmerge.i208.i = select i1 %tobool31.not.i.i, i1 true, i1 %tobool.i.i202.i
  br i1 %brmerge.i208.i, label %if.end35.i.i, label %if.end27.i.i.cleanup_crit_edge

if.end27.i.i.cleanup_crit_edge:                   ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35.i.i:                                     ; preds = %if.end27.i.i
  %107 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bssid.i, align 4
  %add.ptr.i.i210.i = getelementptr %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 22, i32 4
  %109 = ptrtoint ptr %add.ptr.i.i210.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %add.ptr.i.i210.i, align 2
  %conv.i.i211.i = zext i16 %110 to i32
  %or.i.i212.i = or i32 %108, %conv.i.i211.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i212.i)
  %cmp.i.i213.i = icmp eq i32 %or.i.i212.i, 0
  br i1 %cmp.i.i213.i, label %if.end35.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end35.i.i.cleanup_crit_edge:                   ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end35.i.i
  %111 = ptrtoint ptr %MacAddress.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %MacAddress.i.i199.i, align 4
  %add.ptr.i140.i.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1, i32 4
  %113 = ptrtoint ptr %add.ptr.i140.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i140.i.i, align 2
  %conv.i141.i.i = zext i16 %114 to i32
  %or.i142.i.i = or i32 %112, %conv.i141.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i142.i.i)
  %cmp.i143.i.i = icmp eq i32 %or.i142.i.i, 0
  br i1 %cmp.i143.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false41.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false41.i.i:                              ; preds = %lor.lhs.false.i.i
  %bcmp135.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i, ptr noundef dereferenceable(6) %MacAddress.i.i199.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp135.i.i)
  %tobool45.not.i.i = icmp eq i32 %bcmp135.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end47.i.i, label %lor.lhs.false41.i.i.cleanup_crit_edge

lor.lhs.false41.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47.i.i:                                     ; preds = %lor.lhs.false41.i.i
  br i1 %tobool.i.i202.i, label %if.then49.i214.i, label %if.else.i215.i

if.then49.i214.i:                                 ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call50.i.i = tail call ptr @r8712_get_bcmc_stainfo(ptr noundef %adapter) #7
  br label %if.end54.i.i

if.else.i215.i:                                   ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call53.i.i = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv.i198.i, ptr noundef %bssid.i) #7
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.else.i215.i, %if.then49.i214.i
  %storemerge.i216.i = phi ptr [ %call53.i.i, %if.else.i215.i ], [ %call50.i.i, %if.then49.i214.i ]
  %tobool55.not.i.i = icmp eq ptr %storemerge.i216.i, null
  br i1 %tobool55.not.i.i, label %if.end54.i.i.cleanup_crit_edge, label %if.end54.i.i.if.end35.i_crit_edge

if.end54.i.i.if.end35.i_crit_edge:                ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.end54.i.i.cleanup_crit_edge:                   ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else58.i.i:                                    ; preds = %sw.bb11.i
  %115 = and i32 %101, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %115)
  %.not154.i.i = icmp eq i32 %115, 65537
  br i1 %.not154.i.i, label %if.then66.i.i, label %if.else58.i.i.cleanup_crit_edge

if.else58.i.i.cleanup_crit_edge:                  ; preds = %if.else58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then66.i.i:                                    ; preds = %if.else58.i.i
  %add.i217.i = add i32 %10, 4
  %116 = inttoptr i32 %add.i217.i to ptr
  %117 = call ptr @memcpy(ptr %dst.i, ptr %116, i32 6)
  %add71.i.i = add i32 %10, 10
  %118 = inttoptr i32 %add71.i.i to ptr
  %119 = call ptr @memcpy(ptr %src.i, ptr %118, i32 6)
  %add74.i.i = add i32 %10, 16
  %120 = inttoptr i32 %add74.i.i to ptr
  %121 = call ptr @memcpy(ptr %bssid.i, ptr %120, i32 6)
  %122 = call ptr @memcpy(ptr %ra12.i, ptr %dst.i, i32 6)
  %123 = call ptr @memcpy(ptr %ta14.i, ptr %src.i, i32 6)
  %124 = call ptr @memcpy(ptr %bssid.i, ptr %MacAddress.i.i199.i, i32 6)
  %call85.i.i = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv.i198.i, ptr noundef %bssid.i) #7
  %tobool86.not.i.i = icmp eq ptr %call85.i.i, null
  br i1 %tobool86.not.i.i, label %if.then66.i.i.cleanup_crit_edge, label %if.then66.i.i.if.end35.i_crit_edge

if.then66.i.i.if.end35.i_crit_edge:               ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then66.i.i.cleanup_crit_edge:                  ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb17.i:                                        ; preds = %if.end.i
  %ra18.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 21
  %125 = call ptr @memcpy(ptr %ra18.i, ptr %sa.0.i.i, i32 6)
  %ta20.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 20
  %126 = call ptr @memcpy(ptr %ta20.i, ptr %retval.0.i191.i, i32 6)
  %stapriv.i222.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %fw_state.i.i223.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %127 = ptrtoint ptr %fw_state.i.i223.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fw_state.i.i223.i, align 8
  %129 = and i32 %128, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i.i = icmp eq i32 %129, 0
  br i1 %tobool.not.i.i, label %sw.bb17.i.cleanup_crit_edge, label %if.then.i227.i

sw.bb17.i.cleanup_crit_edge:                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i227.i:                                   ; preds = %sw.bb17.i
  %MacAddress.i.i224.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %bcmp.i226.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i, ptr noundef dereferenceable(6) %MacAddress.i.i224.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i226.i)
  %tobool3.not.i.i = icmp eq i32 %bcmp.i226.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i229.i, label %if.then.i227.i.cleanup_crit_edge

if.then.i227.i.cleanup_crit_edge:                 ; preds = %if.then.i227.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i229.i:                                    ; preds = %if.then.i227.i
  %call6.i.i = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv.i222.i, ptr noundef %src.i) #7
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.end.i229.i.cleanup_crit_edge, label %if.end.i229.i.if.end35.i_crit_edge

if.end.i229.i.if.end35.i_crit_edge:               ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.end.i229.i.cleanup_crit_edge:                  ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb23.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ra24.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 21
  %add.i = add i32 %10, 4
  %130 = inttoptr i32 %add.i to ptr
  %131 = call ptr @memcpy(ptr %ra24.i, ptr %130, i32 6)
  %ta26.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 20
  %add28.i = add i32 %10, 10
  %132 = inttoptr i32 %add28.i to ptr
  %133 = call ptr @memcpy(ptr %ta26.i, ptr %132, i32 6)
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.end97.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0183.i.i)
  %cmp29.i = icmp eq i32 %ret.0183.i.i, 0
  br i1 %cmp29.i, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.if.end35.i_crit_edge

sw.epilog.i.if.end35.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35.i:                                       ; preds = %sw.epilog.i.if.end35.i_crit_edge, %if.end.i229.i.if.end35.i_crit_edge, %if.then66.i.i.if.end35.i_crit_edge, %if.end54.i.i.if.end35.i_crit_edge
  %psta.5247250.i = phi ptr [ %call6.i.i, %if.end.i229.i.if.end35.i_crit_edge ], [ %storemerge.i216.i, %if.end54.i.i.if.end35.i_crit_edge ], [ %call85.i.i, %if.then66.i.i.if.end35.i_crit_edge ], [ %storemerge.i.i, %sw.epilog.i.if.end35.i_crit_edge ]
  %psta36.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 12
  %134 = ptrtoint ptr %psta36.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %psta.5247250.i, ptr %psta36.i, align 4
  %135 = ptrtoint ptr %attrib.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %attrib.i, align 4
  %136 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %qos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %137)
  %cmp38.i = icmp eq i8 %137, 1
  br i1 %cmp38.i, label %if.then40.i, label %if.else.i

if.then40.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %138 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %add.ptr.i, align 2
  %140 = lshr i16 %139, 8
  %141 = and i16 %140, 15
  %and42.i = zext i16 %141 to i32
  %priority.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 15
  %142 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %and42.i, ptr %priority.i, align 4
  %143 = load i16, ptr %add.ptr.i, align 2
  %144 = lshr i16 %143, 13
  %145 = and i16 %144, 3
  %and45.i = zext i16 %145 to i32
  %ack_policy.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 16
  %146 = ptrtoint ptr %ack_policy.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %and45.i, ptr %ack_policy.i, align 4
  %147 = load i16, ptr %add.ptr.i, align 2
  %148 = lshr i16 %147, 15
  %conv50.i = trunc i16 %148 to i8
  %149 = ptrtoint ptr %attrib.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv50.i, ptr %attrib.i, align 4
  %150 = ptrtoint ptr %to_fr_ds to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %to_fr_ds, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %151)
  %cmp54.i = icmp eq i8 %151, 3
  %cond.i = select i1 %cmp54.i, i32 32, i32 26
  br label %if.end63.i

if.else.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %priority56.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 15
  %152 = ptrtoint ptr %priority56.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %priority56.i, align 4
  %153 = ptrtoint ptr %to_fr_ds to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %to_fr_ds, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %154)
  %cmp59.i = icmp eq i8 %154, 3
  %cond61.i = select i1 %cmp59.i, i32 30, i32 24
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else.i, %if.then40.i
  %cond61.sink.i = phi i32 [ %cond.i, %if.then40.i ], [ %cond61.i, %if.else.i ]
  %155 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 11
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %cond61.sink.i, ptr %155, align 4
  %157 = ptrtoint ptr %order to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %order, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool64.not.i = icmp eq i8 %158, 0
  br i1 %tobool64.not.i, label %if.end63.i.if.end68.i_crit_edge, label %if.then65.i

if.end63.i.if.end68.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  %add67.i = add nuw nsw i32 %cond61.sink.i, 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add67.i, ptr %155, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then65.i, %if.end63.i.if.end68.i_crit_edge
  %priority69.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 15
  %160 = ptrtoint ptr %priority69.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %priority69.i, align 4
  %arrayidx.i = getelementptr %struct.sta_info, ptr %psta.5247250.i, i32 0, i32 22, i32 %161
  %preorder_ctrl.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 13
  %162 = ptrtoint ptr %preorder_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %arrayidx.i, ptr %preorder_ctrl.i, align 4
  %163 = ptrtoint ptr %seq_num to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %seq_num, align 2
  %shl.i.i = shl i16 %164, 4
  %165 = ptrtoint ptr %frag_num to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %frag_num, align 4
  %167 = and i8 %166, 15
  %and4.i.i = zext i8 %167 to i16
  %or.i231.i = or i16 %shl.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %161)
  %cmp.i232.i = icmp sgt i32 %161, 15
  br i1 %cmp.i232.i, label %if.end68.i.cleanup_crit_edge, label %if.end.i233.i

if.end68.i.cleanup_crit_edge:                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i233.i:                                    ; preds = %if.end68.i
  %rxcache.i = getelementptr inbounds %struct.sta_info, ptr %psta.5247250.i, i32 0, i32 4, i32 3
  %arrayidx.i.i = getelementptr [16 x i16], ptr %rxcache.i, i32 0, i32 %161
  %168 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i231.i, i16 %169)
  %cmp9.i.i = icmp eq i16 %or.i231.i, %169
  br i1 %cmp9.i.i, label %if.end.i233.i.cleanup_crit_edge, label %if.end74.i

if.end.i233.i.cleanup_crit_edge:                  ; preds = %if.end.i233.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74.i:                                       ; preds = %if.end.i233.i
  %170 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %or.i231.i, ptr %arrayidx.i.i, align 2
  %171 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %privacy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool75.not.i = icmp eq i8 %172, 0
  br i1 %tobool75.not.i, label %if.else109.i, label %do.body.i

do.body.i:                                        ; preds = %if.end74.i
  %173 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %securitypriv.i, align 8
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %174, label %do.body.i.do.body94.i_crit_edge [
    i32 0, label %do.body.i.sw.bb77.i_crit_edge
    i32 1, label %do.body.i.sw.bb77.i_crit_edge80
    i32 3, label %do.body.i.sw.bb77.i_crit_edge81
    i32 2, label %sw.bb80.i
  ]

do.body.i.sw.bb77.i_crit_edge81:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb77.i

do.body.i.sw.bb77.i_crit_edge80:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb77.i

do.body.i.sw.bb77.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb77.i

do.body.i.do.body94.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body94.i

sw.bb77.i:                                        ; preds = %do.body.i.sw.bb77.i_crit_edge, %do.body.i.sw.bb77.i_crit_edge80, %do.body.i.sw.bb77.i_crit_edge81
  %PrivacyAlgrthm.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 1
  br label %do.body94.sink.split.i

sw.bb80.i:                                        ; preds = %do.body.i
  %ra81.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 21
  %176 = ptrtoint ptr %ra81.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ra81.i, align 4
  %178 = and i32 %177, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.i.not.i = icmp eq i32 %178, 0
  br i1 %tobool.i.not.i, label %if.else88.i, label %if.then84.i

if.then84.i:                                      ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #9
  %XGrpPrivacy.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 5
  br label %do.body94.sink.split.i

if.else88.i:                                      ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #9
  %XPrivacy.i = getelementptr inbounds %struct.sta_info, ptr %psta.5247250.i, i32 0, i32 11
  br label %do.body94.sink.split.i

do.body94.sink.split.i:                           ; preds = %if.else88.i, %if.then84.i, %sw.bb77.i
  %PrivacyAlgrthm.sink.i = phi ptr [ %PrivacyAlgrthm.i, %sw.bb77.i ], [ %XPrivacy.i, %if.else88.i ], [ %XGrpPrivacy.i, %if.then84.i ]
  %179 = ptrtoint ptr %PrivacyAlgrthm.sink.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %PrivacyAlgrthm.sink.i, align 4
  %conv79.i = and i32 %180, 255
  %encrypt.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 12
  %181 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %conv79.i, ptr %encrypt.i, align 4
  br label %do.body94.i

do.body94.i:                                      ; preds = %do.body94.sink.split.i, %do.body.i.do.body94.i_crit_edge
  %encrypt95.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 12
  %182 = ptrtoint ptr %encrypt95.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %encrypt95.i, align 4
  %184 = zext i32 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %183, label %sw.default103.i [
    i32 1, label %do.body94.i.sw.bb96.i_crit_edge
    i32 5, label %do.body94.i.sw.bb96.i_crit_edge82
    i32 2, label %sw.bb97.i
    i32 4, label %sw.bb100.i
  ]

do.body94.i.sw.bb96.i_crit_edge82:                ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb96.i

do.body94.i.sw.bb96.i_crit_edge:                  ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb96.i

sw.bb96.i:                                        ; preds = %do.body94.i.sw.bb96.i_crit_edge, %do.body94.i.sw.bb96.i_crit_edge82
  %iv_len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 13
  %185 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 4, ptr %iv_len.i, align 4
  %icv_len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 14
  %186 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 4, ptr %icv_len.i, align 4
  br label %cleanup

sw.bb97.i:                                        ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #9
  %iv_len98.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 13
  %187 = ptrtoint ptr %iv_len98.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 8, ptr %iv_len98.i, align 4
  %icv_len99.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 14
  %188 = ptrtoint ptr %icv_len99.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 4, ptr %icv_len99.i, align 4
  br label %cleanup

sw.bb100.i:                                       ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #9
  %iv_len101.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 13
  %189 = ptrtoint ptr %iv_len101.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 8, ptr %iv_len101.i, align 4
  %icv_len102.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 14
  %190 = ptrtoint ptr %icv_len102.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 8, ptr %icv_len102.i, align 4
  br label %cleanup

sw.default103.i:                                  ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #9
  %iv_len104.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 13
  %191 = ptrtoint ptr %iv_len104.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %iv_len104.i, align 4
  %icv_len105.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 14
  %192 = ptrtoint ptr %icv_len105.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %icv_len105.i, align 4
  br label %cleanup

if.else109.i:                                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %encrypt110.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 12
  %193 = ptrtoint ptr %encrypt110.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %encrypt110.i, align 4
  %icv_len111.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 14
  %194 = ptrtoint ptr %icv_len111.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %icv_len111.i, align 4
  %iv_len112.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 13
  %195 = ptrtoint ptr %iv_len112.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %iv_len112.i, align 4
  br label %cleanup

if.end.i.unreachabledefault:                      ; preds = %if.end.i
  unreachable

cleanup:                                          ; preds = %if.else109.i, %sw.default103.i, %sw.bb100.i, %sw.bb97.i, %sw.bb96.i, %if.end.i233.i.cleanup_crit_edge, %if.end68.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %sw.bb23.i, %if.end.i229.i.cleanup_crit_edge, %if.then.i227.i.cleanup_crit_edge, %sw.bb17.i.cleanup_crit_edge, %if.then66.i.i.cleanup_crit_edge, %if.else58.i.i.cleanup_crit_edge, %if.end54.i.i.cleanup_crit_edge, %lor.lhs.false41.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end35.i.i.cleanup_crit_edge, %if.end27.i.i.cleanup_crit_edge, %if.end22.i.i.cleanup_crit_edge, %if.end.i205.i.cleanup_crit_edge, %if.then.i204.i.cleanup_crit_edge, %if.then102.i.i, %if.then99.i.i.cleanup_crit_edge, %if.else57.i.i.cleanup_crit_edge, %if.then51.i.i.cleanup_crit_edge, %if.then35.i.i.cleanup_crit_edge, %lor.lhs.false24.i.i.cleanup_crit_edge, %lor.lhs.false21.i.i.cleanup_crit_edge, %if.end17.i.i.cleanup_crit_edge, %if.end.i193.i.cleanup_crit_edge, %if.then.i192.i.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %ieee80211_get_SA.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb23.i ], [ 0, %switch.lookup.cleanup_crit_edge ], [ 0, %sw.epilog.i.cleanup_crit_edge ], [ 1, %sw.bb96.i ], [ 1, %sw.bb97.i ], [ 1, %sw.bb100.i ], [ 1, %sw.default103.i ], [ 1, %if.else109.i ], [ 0, %ieee80211_get_SA.exit.i.cleanup_crit_edge ], [ 0, %sw.bb17.i.cleanup_crit_edge ], [ 0, %if.then.i192.i.cleanup_crit_edge ], [ 0, %if.end.i193.i.cleanup_crit_edge ], [ 0, %lor.lhs.false24.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false21.i.i.cleanup_crit_edge ], [ 0, %if.end17.i.i.cleanup_crit_edge ], [ 0, %if.then35.i.i.cleanup_crit_edge ], [ 0, %if.then51.i.i.cleanup_crit_edge ], [ 0, %if.else57.i.i.cleanup_crit_edge ], [ 0, %if.then102.i.i ], [ 0, %if.then99.i.i.cleanup_crit_edge ], [ 0, %if.then.i204.i.cleanup_crit_edge ], [ 0, %if.end.i205.i.cleanup_crit_edge ], [ 0, %if.end22.i.i.cleanup_crit_edge ], [ 0, %if.end27.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false41.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 0, %if.end35.i.i.cleanup_crit_edge ], [ 0, %if.end54.i.i.cleanup_crit_edge ], [ 0, %if.then66.i.i.cleanup_crit_edge ], [ 0, %if.else58.i.i.cleanup_crit_edge ], [ 0, %if.then.i227.i.cleanup_crit_edge ], [ 0, %if.end.i229.i.cleanup_crit_edge ], [ 0, %if.end68.i.cleanup_crit_edge ], [ 0, %if.end.i233.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r8712_wlanhdr_to_ethhdr(ptr noundef %precvframe) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %tobool.not.i = icmp eq ptr %precvframe, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %get_recvframe_data.exit.thread

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

get_recvframe_data.exit.thread:                   ; preds = %entry
  %rx_data.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %2 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data.i, align 4
  %encrypt133 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 12
  %4 = ptrtoint ptr %encrypt133 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encrypt133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not134 = icmp eq i32 %5, 0
  br i1 %tobool.not134, label %get_recvframe_data.exit.thread.if.end_crit_edge, label %if.end.i104

get_recvframe_data.exit.thread.if.end_crit_edge:  ; preds = %get_recvframe_data.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i104:                                      ; preds = %get_recvframe_data.exit.thread
  %icv_len138 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 14
  %6 = ptrtoint ptr %icv_len138 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %icv_len138, align 4
  %rx_tail.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %8 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_tail.i, align 4
  %idx.neg.i = sub i32 0, %7
  %add.ptr.i = getelementptr i8, ptr %9, i32 %idx.neg.i
  store ptr %add.ptr.i, ptr %rx_tail.i, align 4
  %10 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_data.i, align 4
  %cmp.i = icmp ult ptr %add.ptr.i, %11
  br i1 %cmp.i, label %if.then2.i, label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %rx_tail.i, align 4
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %14, %7
  store i32 %sub.i, ptr %len.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end5.i, %if.then2.i, %get_recvframe_data.exit.thread.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i136 = phi ptr [ %3, %get_recvframe_data.exit.thread.if.end_crit_edge ], [ %3, %if.then2.i ], [ %3, %if.end5.i ], [ null, %entry.if.end_crit_edge ]
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 11
  %15 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hdrlen, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i136, i32 %16
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 13
  %17 = ptrtoint ptr %iv_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iv_len, align 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %18
  %add.ptr8 = getelementptr i8, ptr %add.ptr3, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr3, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %bcmp99 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr8, ptr noundef nonnull dereferenceable(2) @SNAP_ETH_TYPE_IPX, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp99)
  %tobool12.not = icmp eq i32 %bcmp99, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true13

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true13:                                  ; preds = %land.lhs.true
  %bcmp101 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr8, ptr noundef nonnull dereferenceable(2) @SNAP_ETH_TYPE_APPLETALK_AARP, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp101)
  %tobool15.not = icmp eq i32 %bcmp101, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end19_crit_edge, label %land.lhs.true13.if.end19.thread_crit_edge

land.lhs.true13.if.end19.thread_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.thread

land.lhs.true13.if.end19_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true13.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %bcmp100 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr3, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp100)
  %tobool17.not = icmp ne i32 %bcmp100, 0
  %spec.select155 = select i1 %tobool17.not, i32 0, i32 6
  br label %if.end19.thread

if.end19.thread:                                  ; preds = %if.end19, %land.lhs.true13.if.end19.thread_crit_edge
  %tobool22.not143 = phi i1 [ %tobool17.not, %if.end19 ], [ false, %land.lhs.true13.if.end19.thread_crit_edge ]
  %19 = phi i32 [ %spec.select155, %if.end19 ], [ 6, %land.lhs.true13.if.end19.thread_crit_edge ]
  %add145 = add i32 %18, %16
  %add23 = add i32 %add145, %19
  %len24 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6
  %20 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len24, align 4
  %sub = sub i32 %21, %add23
  %conv25 = trunc i32 %sub to i16
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_state.i, align 8
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool27.not = icmp eq i32 %24, 0
  br i1 %tobool27.not, label %if.else40, label %if.then28

if.then28:                                        ; preds = %if.end19.thread
  %add.ptr29 = getelementptr i8, ptr %retval.0.i136, i32 %add23
  %25 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -121, ptr %add.ptr29, align 1
  %add.ptr30 = getelementptr i8, ptr %add.ptr29, i32 1
  %26 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 18, ptr %add.ptr30, align 1
  %sub33 = add i32 %add23, -36
  br i1 %tobool.not.i, label %if.then28.cleanup_crit_edge, label %if.end.i111

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i111:                                      ; preds = %if.then28
  %rx_data.i107 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %27 = ptrtoint ptr %rx_data.i107 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_data.i107, align 4
  %add.ptr.i108 = getelementptr i8, ptr %28, i32 %sub33
  store ptr %add.ptr.i108, ptr %rx_data.i107, align 4
  %rx_tail.i109 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %29 = ptrtoint ptr %rx_tail.i109 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_tail.i109, align 4
  %cmp.i110 = icmp ugt ptr %add.ptr.i108, %30
  br i1 %cmp.i110, label %if.then2.i112, label %recvframe_pull.exit

if.then2.i112:                                    ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %rx_data.i107 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %rx_data.i107, align 4
  br label %cleanup

recvframe_pull.exit:                              ; preds = %if.end.i111
  %32 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len24, align 4
  %sub.i114 = sub i32 %33, %sub33
  store i32 %sub.i114, ptr %len24, align 4
  %tobool35.not = icmp eq ptr %add.ptr.i108, null
  br i1 %tobool35.not, label %recvframe_pull.exit.cleanup_crit_edge, label %get_rxmem.exit

recvframe_pull.exit.cleanup_crit_edge:            ; preds = %recvframe_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_rxmem.exit:                                   ; preds = %recvframe_pull.exit
  %rx_head.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 7
  %34 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_head.i, align 4
  %36 = call ptr @memcpy(ptr %add.ptr.i108, ptr %35, i32 24)
  %add.ptr39 = getelementptr i8, ptr %add.ptr.i108, i32 24
  %dst150 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 18
  %37 = call ptr @memcpy(ptr %add.ptr39, ptr %dst150, i32 6)
  %add.ptr51151 = getelementptr i8, ptr %add.ptr39, i32 6
  %src152 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 19
  %38 = call ptr @memcpy(ptr %add.ptr51151, ptr %src152, i32 6)
  br i1 %tobool22.not143, label %get_rxmem.exit.if.then54_crit_edge, label %get_rxmem.exit.cleanup_crit_edge

get_rxmem.exit.cleanup_crit_edge:                 ; preds = %get_rxmem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_rxmem.exit.if.then54_crit_edge:               ; preds = %get_rxmem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.else40:                                        ; preds = %if.end19.thread
  %sub41 = select i1 %tobool22.not143, i32 -14, i32 -12
  %add45 = add i32 %sub41, %add23
  br i1 %tobool.not.i, label %if.else40.cleanup_crit_edge, label %if.end.i125

if.else40.cleanup_crit_edge:                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i125:                                      ; preds = %if.else40
  %rx_data.i121 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %39 = ptrtoint ptr %rx_data.i121 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_data.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %40, i32 %add45
  store ptr %add.ptr.i122, ptr %rx_data.i121, align 4
  %rx_tail.i123 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %41 = ptrtoint ptr %rx_tail.i123 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_tail.i123, align 4
  %cmp.i124 = icmp ugt ptr %add.ptr.i122, %42
  br i1 %cmp.i124, label %if.then2.i126, label %recvframe_pull.exit131

if.then2.i126:                                    ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %rx_data.i121 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %rx_data.i121, align 4
  br label %cleanup

recvframe_pull.exit131:                           ; preds = %if.end.i125
  %sub.i128 = sub i32 %21, %add45
  %44 = ptrtoint ptr %len24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i128, ptr %len24, align 4
  %tobool47.not = icmp eq ptr %add.ptr.i122, null
  br i1 %tobool47.not, label %recvframe_pull.exit131.cleanup_crit_edge, label %if.end50

recvframe_pull.exit131.cleanup_crit_edge:         ; preds = %recvframe_pull.exit131
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %recvframe_pull.exit131
  %dst = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 18
  %45 = call ptr @memcpy(ptr %add.ptr.i122, ptr %dst, i32 6)
  %add.ptr51 = getelementptr i8, ptr %add.ptr.i122, i32 6
  %src = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 19
  %46 = call ptr @memcpy(ptr %add.ptr51, ptr %src, i32 6)
  br i1 %tobool22.not143, label %if.end50.if.then54_crit_edge, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50.if.then54_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.then54:                                        ; preds = %if.end50.if.then54_crit_edge, %get_rxmem.exit.if.then54_crit_edge
  %ptr.0153 = phi ptr [ %add.ptr39, %get_rxmem.exit.if.then54_crit_edge ], [ %add.ptr.i122, %if.end50.if.then54_crit_edge ]
  %add.ptr55 = getelementptr i8, ptr %ptr.0153, i32 12
  %47 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %conv25, ptr %add.ptr55, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end50.cleanup_crit_edge, %recvframe_pull.exit131.cleanup_crit_edge, %if.then2.i126, %if.else40.cleanup_crit_edge, %get_rxmem.exit.cleanup_crit_edge, %recvframe_pull.exit.cleanup_crit_edge, %if.then2.i112, %if.then28.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %recvframe_pull.exit.cleanup_crit_edge ], [ -12, %recvframe_pull.exit131.cleanup_crit_edge ], [ 0, %if.then54 ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %get_rxmem.exit.cleanup_crit_edge ], [ -12, %if.then2.i112 ], [ -12, %if.then28.cleanup_crit_edge ], [ -12, %if.then2.i126 ], [ -12, %if.else40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_recv_entry(ptr noundef %precvframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %LedControlHandler = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %LedControlHandler, align 4
  tail call void %3(ptr noundef %1, i32 noundef 5) #7
  %call = tail call i32 @recv_func(ptr noundef %1, ptr noundef %precvframe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %_recv_entry_drop, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_pkts = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pkts, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_pkts, align 4
  %rx_tail = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %6 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_tail, align 4
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %8 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %rx_bytes = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 7
  %10 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %sub.ptr.sub, %11
  store i32 %add, ptr %rx_bytes, align 4
  br label %cleanup

_recv_entry_drop:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_drop = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 9
  %12 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_drop, align 4
  %inc1 = add i32 %13, 1
  store i32 %inc1, ptr %rx_drop, align 4
  %rx_pktloss = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 15, i32 7
  %14 = ptrtoint ptr %rx_pktloss to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc1, ptr %rx_pktloss, align 4
  br label %cleanup

cleanup:                                          ; preds = %_recv_entry_drop, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @recv_func(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @_r8712_init_sta_recv_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_recv.c", i32 43, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_r8712_init_sta_recv_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8712/rtl871x_recv.c", i32 44, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_r8712_init_recv_priv.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/rtl871x_recv.c", i32 54, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_r8712_init_recv_priv.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8712/rtl871x_recv.c", i32 55, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @_r8712_init_recv_priv.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8712/rtl871x_recv.c", i32 56, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @SNAP_ETH_TYPE_IPX, !16, !"SNAP_ETH_TYPE_IPX", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8712/rtl871x_recv.c", i32 35, i32 17}
!17 = !{ptr @SNAP_ETH_TYPE_APPLETALK_AARP, !18, !"SNAP_ETH_TYPE_APPLETALK_AARP", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8712/rtl871x_recv.c", i32 38, i32 17}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
