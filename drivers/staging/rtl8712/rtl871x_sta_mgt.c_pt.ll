; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_sta_mgt.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_sta_mgt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.stainfo_rxcache = type { [16 x i16] }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ht_priv = type { i32, i32, [16 x i8], i32, i32, i32, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@_r8712_init_sta_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&((&pstapriv->free_sta_queue)->lock)\00", [59 x i8] zeroinitializer }, align 32
@_r8712_init_sta_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pstapriv->sta_hash_lock\00", [39 x i8] zeroinitializer }, align 32
@_r8712_init_sta_priv.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&((&pstapriv->sleep_q)->lock)\00", [34 x i8] zeroinitializer }, align 32
@_r8712_init_sta_priv.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&((&pstapriv->wakeup_q)->lock)\00", [33 x i8] zeroinitializer }, align 32
@r8712_alloc_stainfo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"&((&preorder_ctrl->pending_recvframe_queue)->lock)\00", [45 x i8] zeroinitializer }, align 32
@__const.r8712_get_bcmc_stainfo.bc_addr = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@_init_stainfo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&psta->lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 48, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 49, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 51, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 52, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 132, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [45 x i8] c"../drivers/staging/rtl8712/rtl871x_sta_mgt.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 28, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @_r8712_init_sta_priv.__key, ptr @.str, ptr @_r8712_init_sta_priv.__key.1, ptr @.str.2, ptr @_r8712_init_sta_priv.__key.3, ptr @.str.4, ptr @_r8712_init_sta_priv.__key.5, ptr @.str.6, ptr @r8712_alloc_stainfo.__key, ptr @.str.7, ptr @_init_stainfo.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_sta_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_sta_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_sta_priv.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_sta_priv.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_alloc_stainfo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_stainfo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_r8712_init_sta_priv(ptr noundef %pstapriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 88068, i32 noundef 2592, i32 noundef 5) #9
  %0 = ptrtoint ptr %pstapriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i.i, ptr %pstapriv, align 4
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call1.i.i, i32 4
  %pstainfo_buf = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 1
  %1 = ptrtoint ptr %pstainfo_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %pstainfo_buf, align 4
  %free_sta_queue = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2
  %2 = ptrtoint ptr %free_sta_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %free_sta_queue, ptr %free_sta_queue, align 4
  %prev.i = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %free_sta_queue, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @_r8712_init_sta_priv.__key, i16 noundef signext 3) #6
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %sta_hash_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @_r8712_init_sta_priv.__key.1, i16 noundef signext 3) #6
  %asoc_sta_count = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 5
  %4 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %asoc_sta_count, align 4
  %sleep_q = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 6
  %5 = ptrtoint ptr %sleep_q to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %sleep_q, ptr %sleep_q, align 4
  %prev.i59 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sleep_q, ptr %prev.i59, align 4
  %lock18 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock18, ptr noundef nonnull @.str.4, ptr noundef nonnull @_r8712_init_sta_priv.__key.3, i16 noundef signext 3) #6
  %wakeup_q = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 7
  %7 = ptrtoint ptr %wakeup_q to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %wakeup_q, ptr %wakeup_q, align 4
  %prev.i60 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %wakeup_q, ptr %prev.i60, align 4
  %lock28 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock28, ptr noundef nonnull @.str.6, ptr noundef nonnull @_r8712_init_sta_priv.__key.5, i16 noundef signext 3) #6
  %9 = ptrtoint ptr %pstainfo_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pstainfo_buf, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %i.067 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %psta.065 = phi ptr [ %10, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %11 = call ptr @memset(ptr %psta.065, i32 0, i32 2752)
  tail call void @__raw_spin_lock_init(ptr noundef %psta.065, ptr noundef nonnull @.str.8, ptr noundef nonnull @_init_stainfo.__key, i16 noundef signext 3) #6
  %list.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 1
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list.i, ptr %prev.i.i, align 4
  %hash_list.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 2
  %14 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %hash_list.i, ptr %hash_list.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hash_list.i, ptr %prev.i8.i, align 4
  %sta_xmitpriv.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 3
  tail call void @_r8712_init_sta_xmit_priv(ptr noundef %sta_xmitpriv.i) #6
  %sta_recvpriv.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 4
  tail call void @_r8712_init_sta_recv_priv(ptr noundef %sta_recvpriv.i) #6
  %asoc_list.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 24
  %16 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %asoc_list.i, ptr %asoc_list.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 24, i32 1
  %17 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %asoc_list.i, ptr %prev.i9.i, align 4
  %auth_list.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 25
  %18 = ptrtoint ptr %auth_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %auth_list.i, ptr %auth_list.i, align 4
  %prev.i10.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 25, i32 1
  %19 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %auth_list.i, ptr %prev.i10.i, align 4
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %i.067
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i61 = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %i.067, i32 1
  %21 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %prev.i61, align 4
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %23, ptr noundef %free_sta_queue) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.i, ptr %prev.i, align 4
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %free_sta_queue, ptr %list.i, align 4
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.i, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.sta_info, ptr %psta.065, i32 1
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %asoc_list = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 9
  %28 = ptrtoint ptr %asoc_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %asoc_list, ptr %asoc_list, align 4
  %prev.i63 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %prev.i63 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %asoc_list, ptr %prev.i63, align 4
  %auth_list = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 10
  %30 = ptrtoint ptr %auth_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %auth_list, ptr %auth_list, align 4
  %prev.i64 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %auth_list, ptr %prev.i64, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_r8712_free_sta_priv(ptr noundef %pstapriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pstapriv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %sta_hash_lock.i = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_hash_lock.i) #6
  %free_sta_queue.i = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then
  %plist.0.in.i = phi ptr [ %free_sta_queue.i, %if.then ], [ %plist.0.i, %while.cond.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %free_sta_queue.i, %plist.0.i
  br i1 %cmp.i.not.i, label %mfree_all_stainfo.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

mfree_all_stainfo.exit:                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_hash_lock.i, i32 noundef %call2.i) #6
  %1 = ptrtoint ptr %pstapriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pstapriv, align 4
  tail call void @kfree(ptr noundef %2) #6
  br label %if.end

if.end:                                           ; preds = %mfree_all_stainfo.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_alloc_stainfo(ptr noundef %pstapriv, ptr nocapture noundef readonly %hwaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %free_sta_queue = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2
  %lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %0 = ptrtoint ptr %free_sta_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_sta_queue, align 4
  %cmp10.not = icmp eq ptr %1, %free_sta_queue
  %add.ptr = getelementptr i8, ptr %1, i32 -44
  %spec.select = select i1 %cmp10.not, ptr null, ptr %add.ptr
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.then

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 1, i32 1
  %9 = call ptr @memset(ptr %spec.select, i32 0, i32 2752)
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.8, ptr noundef nonnull @_init_stainfo.__key, i16 noundef signext 3) #6
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  %hash_list.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 2
  %12 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %hash_list.i, ptr %hash_list.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hash_list.i, ptr %prev.i8.i, align 4
  %sta_xmitpriv.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 3
  tail call void @_r8712_init_sta_xmit_priv(ptr noundef %sta_xmitpriv.i) #6
  %sta_recvpriv.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 4
  tail call void @_r8712_init_sta_recv_priv(ptr noundef %sta_recvpriv.i) #6
  %asoc_list.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 24
  %14 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %asoc_list.i, ptr %asoc_list.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 24, i32 1
  %15 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %asoc_list.i, ptr %prev.i9.i, align 4
  %auth_list.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 25
  %16 = ptrtoint ptr %auth_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %auth_list.i, ptr %auth_list.i, align 4
  %prev.i10.i = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 25, i32 1
  %17 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %auth_list.i, ptr %prev.i10.i, align 4
  %hwaddr13 = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 9
  %18 = call ptr @memcpy(ptr %hwaddr13, ptr %hwaddr, i32 6)
  %19 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hwaddr, align 1
  %conv.i = zext i8 %20 to i32
  %arrayidx1.i = getelementptr i8, ptr %hwaddr, i32 1
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %22 to i32
  %23 = shl nuw nsw i32 %conv.i, 4
  %24 = shl nuw nsw i32 %conv2.i, 2
  %shl3.i = xor i32 %24, %23
  %arrayidx4.i = getelementptr i8, ptr %hwaddr, i32 2
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %26 to i32
  %xor6.i = xor i32 %shl3.i, %conv5.i
  %arrayidx8.i = getelementptr i8, ptr %hwaddr, i32 3
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %28 to i32
  %arrayidx12.i = getelementptr i8, ptr %hwaddr, i32 4
  %29 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %30 to i32
  %31 = shl nuw nsw i32 %xor6.i, 6
  %32 = shl nuw nsw i32 %conv9.i, 4
  %33 = shl nuw nsw i32 %conv13.i, 2
  %34 = xor i32 %33, %32
  %shl15.i = xor i32 %34, %31
  %arrayidx16.i = getelementptr i8, ptr %hwaddr, i32 5
  %35 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %36 to i32
  %xor18.i = xor i32 %34, %conv17.i
  %shr.i = lshr i32 %shl15.i, 8
  %xor19.i = xor i32 %xor18.i, %shr.i
  %and.i = and i32 %xor19.i, 31
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %and.i
  %prev.i = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %and.i, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i71 = tail call zeroext i1 @__list_add_valid(ptr noundef %hash_list.i, ptr noundef %38, ptr noundef %arrayidx) #6
  br i1 %call.i.i71, label %if.end.i.i72, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i72:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %hash_list.i, ptr %prev.i, align 4
  %40 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx, ptr %hash_list.i, align 4
  %41 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i8.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %hash_list.i, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i72, %list_del_init.exit.list_add_tail.exit_crit_edge
  %asoc_sta_count = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 5
  %43 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %asoc_sta_count, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %asoc_sta_count, align 4
  %rxcache = getelementptr inbounds %struct.sta_info, ptr %spec.select, i32 0, i32 4, i32 3
  %45 = call ptr @memset(ptr %rxcache, i32 255, i32 32)
  %padapter = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 8
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %list_add_tail.exit
  %i.175 = phi i32 [ 0, %list_add_tail.exit ], [ %inc39, %for.body25.for.body25_crit_edge ]
  %arrayidx26 = getelementptr %struct.sta_info, ptr %spec.select, i32 0, i32 22, i32 %i.175
  %46 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %padapter, align 4
  %48 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %arrayidx26, align 4
  %indicate_seq = getelementptr %struct.sta_info, ptr %spec.select, i32 0, i32 22, i32 %i.175, i32 1
  %49 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %indicate_seq, align 4
  %wend_b = getelementptr %struct.sta_info, ptr %spec.select, i32 0, i32 22, i32 %i.175, i32 2
  %50 = ptrtoint ptr %wend_b to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %wend_b, align 2
  %wsize_b = getelementptr %struct.sta_info, ptr %spec.select, i32 0, i32 22, i32 %i.175, i32 3
  %51 = ptrtoint ptr %wsize_b to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 64, ptr %wsize_b, align 4
  %pending_recvframe_queue = getelementptr %struct.sta_info, ptr %spec.select, i32 0, i32 22, i32 %i.175, i32 4
  %52 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %pending_recvframe_queue, ptr %pending_recvframe_queue, align 4
  %prev.i73 = getelementptr inbounds %struct.list_head, ptr %pending_recvframe_queue, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %pending_recvframe_queue, ptr %prev.i73, align 4
  %lock32 = getelementptr %struct.sta_info, ptr %spec.select, i32 0, i32 22, i32 %i.175, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock32, ptr noundef nonnull @.str.7, ptr noundef nonnull @r8712_alloc_stainfo.__key, i16 noundef signext 3) #6
  tail call void @r8712_init_recv_timer(ptr noundef %arrayidx26) #6
  %inc39 = add nuw nsw i32 %i.175, 1
  %exitcond.not = icmp eq i32 %inc39, 16
  br i1 %exitcond.not, label %for.body25.exit_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.body25.exit_crit_edge:                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

exit:                                             ; preds = %for.body25.exit_crit_edge, %entry.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_init_recv_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_stainfo(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %xmitpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5
  %free_sta_queue = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7, i32 2
  %sta_xmitpriv = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3
  %lock = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 4, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6
  %sta_pending = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6, i32 1
  tail call void @r8712_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vo_q) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %vo_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vo_q, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %vo_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %vo_q, ptr %vo_q, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vo_q, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %lock15 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 3, i32 1
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock15) #6
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5
  %sta_pending22 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5, i32 1
  tail call void @r8712_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending22) #6
  %call.i.i110 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vi_q) #6
  br i1 %call.i.i110, label %if.end.i.i113, label %list_del_init.exit.list_del_init.exit115_crit_edge

list_del_init.exit.list_del_init.exit115_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit115

if.end.i.i113:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i111 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i111 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i111, align 4
  %10 = ptrtoint ptr %vi_q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vi_q, align 4
  %prev1.i.i.i112 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i112, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit115

list_del_init.exit115:                            ; preds = %if.end.i.i113, %list_del_init.exit.list_del_init.exit115_crit_edge
  %14 = ptrtoint ptr %vi_q to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %vi_q, ptr %vi_q, align 4
  %prev.i3.i114 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i114 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vi_q, ptr %prev.i3.i114, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock15, i32 noundef %call17) #6
  %lock34 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 2, i32 1
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock34) #6
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4
  %sta_pending41 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4, i32 1
  tail call void @r8712_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending41) #6
  %call.i.i116 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bk_q) #6
  br i1 %call.i.i116, label %if.end.i.i119, label %list_del_init.exit115.list_del_init.exit121_crit_edge

list_del_init.exit115.list_del_init.exit121_crit_edge: ; preds = %list_del_init.exit115
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit121

if.end.i.i119:                                    ; preds = %list_del_init.exit115
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i117 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i117 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i117, align 4
  %18 = ptrtoint ptr %bk_q to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bk_q, align 4
  %prev1.i.i.i118 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i118, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit121

list_del_init.exit121:                            ; preds = %if.end.i.i119, %list_del_init.exit115.list_del_init.exit121_crit_edge
  %22 = ptrtoint ptr %bk_q to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %bk_q, ptr %bk_q, align 4
  %prev.i3.i120 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i120 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %bk_q, ptr %prev.i3.i120, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock34, i32 noundef %call36) #6
  %lock53 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 1, i32 1
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock53) #6
  %be_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3
  %sta_pending60 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3, i32 1
  tail call void @r8712_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending60) #6
  %call.i.i122 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %be_q) #6
  br i1 %call.i.i122, label %if.end.i.i125, label %list_del_init.exit121.list_del_init.exit127_crit_edge

list_del_init.exit121.list_del_init.exit127_crit_edge: ; preds = %list_del_init.exit121
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit127

if.end.i.i125:                                    ; preds = %list_del_init.exit121
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i123 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i123 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i123, align 4
  %26 = ptrtoint ptr %be_q to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %be_q, align 4
  %prev1.i.i.i124 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i124, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit127

list_del_init.exit127:                            ; preds = %if.end.i.i125, %list_del_init.exit121.list_del_init.exit127_crit_edge
  %30 = ptrtoint ptr %be_q to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %be_q, ptr %be_q, align 4
  %prev.i3.i126 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i126 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %be_q, ptr %prev.i3.i126, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock53, i32 noundef %call55) #6
  %hash_list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2
  %call.i.i128 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hash_list) #6
  br i1 %call.i.i128, label %if.end.i.i131, label %list_del_init.exit127.list_del_init.exit133_crit_edge

list_del_init.exit127.list_del_init.exit133_crit_edge: ; preds = %list_del_init.exit127
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit133

if.end.i.i131:                                    ; preds = %list_del_init.exit127
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i129 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev.i.i129 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i129, align 4
  %34 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hash_list, align 4
  %prev1.i.i.i130 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i130, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init.exit133

list_del_init.exit133:                            ; preds = %if.end.i.i131, %list_del_init.exit127.list_del_init.exit133_crit_edge
  %38 = ptrtoint ptr %hash_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %hash_list, ptr %hash_list, align 4
  %prev.i3.i132 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev.i3.i132 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %hash_list, ptr %prev.i3.i132, align 4
  %asoc_sta_count = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7, i32 5
  %40 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %asoc_sta_count, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %asoc_sta_count, align 4
  tail call void @_r8712_init_sta_xmit_priv(ptr noundef %sta_xmitpriv) #6
  %sta_recvpriv = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4
  tail call void @_r8712_init_sta_recv_priv(ptr noundef %sta_recvpriv) #6
  %reordering_ctrl_timer = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 0, i32 5
  %call68 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer) #6
  %reordering_ctrl_timer.1 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 1, i32 5
  %call68.1 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.1) #6
  %reordering_ctrl_timer.2 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 2, i32 5
  %call68.2 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.2) #6
  %reordering_ctrl_timer.3 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 3, i32 5
  %call68.3 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.3) #6
  %reordering_ctrl_timer.4 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 4, i32 5
  %call68.4 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.4) #6
  %reordering_ctrl_timer.5 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 5, i32 5
  %call68.5 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.5) #6
  %reordering_ctrl_timer.6 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 6, i32 5
  %call68.6 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.6) #6
  %reordering_ctrl_timer.7 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 7, i32 5
  %call68.7 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.7) #6
  %reordering_ctrl_timer.8 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 8, i32 5
  %call68.8 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.8) #6
  %reordering_ctrl_timer.9 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 9, i32 5
  %call68.9 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.9) #6
  %reordering_ctrl_timer.10 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 10, i32 5
  %call68.10 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.10) #6
  %reordering_ctrl_timer.11 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 11, i32 5
  %call68.11 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.11) #6
  %reordering_ctrl_timer.12 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 12, i32 5
  %call68.12 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.12) #6
  %reordering_ctrl_timer.13 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 13, i32 5
  %call68.13 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.13) #6
  %reordering_ctrl_timer.14 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 14, i32 5
  %call68.14 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.14) #6
  %reordering_ctrl_timer.15 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 22, i32 15, i32 5
  %call68.15 = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer.15) #6
  %lock69 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7, i32 2, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock69) #6
  %list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7, i32 2, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 4
  %call.i.i134 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %43, ptr noundef %free_sta_queue) #6
  br i1 %call.i.i134, label %if.end.i.i135, label %list_del_init.exit133.list_add_tail.exit_crit_edge

list_del_init.exit133.list_add_tail.exit_crit_edge: ; preds = %list_del_init.exit133
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i135:                                    ; preds = %list_del_init.exit133
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list, ptr %prev.i, align 4
  %45 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %free_sta_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i135, %list_del_init.exit133.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock69) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_xmitframe_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_r8712_init_sta_xmit_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_r8712_init_sta_recv_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_all_stainfo(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_hash_lock.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7, i32 3
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_hash_lock.i.i) #6
  %arrayidx.i.i = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 7, i32 4, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %plist.0.in.i.i = phi ptr [ %arrayidx.i.i, %entry ], [ %plist.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %arrayidx.i.i, %plist.0.i.i
  br i1 %cmp.i.not.i.i, label %while.cond.i.i.r8712_get_bcmc_stainfo.exit_crit_edge, label %while.body.i.i

while.cond.i.i.r8712_get_bcmc_stainfo.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r8712_get_bcmc_stainfo.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %hwaddr9.i.i = getelementptr i8, ptr %plist.0.i.i, i32 548
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr9.i.i, ptr noundef nonnull dereferenceable(6) @__const.r8712_get_bcmc_stainfo.bc_addr, i32 6) #10
  %tobool11.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool11.not.i.i, label %while.end.split.loop.exit.i.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.end.split.loop.exit.i.i:                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.le.i.i = getelementptr i8, ptr %plist.0.i.i, i32 -52
  br label %r8712_get_bcmc_stainfo.exit

r8712_get_bcmc_stainfo.exit:                      ; preds = %while.end.split.loop.exit.i.i, %while.cond.i.i.r8712_get_bcmc_stainfo.exit_crit_edge
  %psta.1.i.i = phi ptr [ %add.ptr.le.i.i, %while.end.split.loop.exit.i.i ], [ null, %while.cond.i.i.r8712_get_bcmc_stainfo.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_hash_lock.i.i, i32 noundef %call3.i.i) #6
  %asoc_sta_count = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7, i32 5
  %1 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asoc_sta_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %r8712_get_bcmc_stainfo.exit.cleanup_crit_edge, label %do.body1

r8712_get_bcmc_stainfo.exit.cleanup_crit_edge:    ; preds = %r8712_get_bcmc_stainfo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %r8712_get_bcmc_stainfo.exit
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_hash_lock.i.i) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body1
  %index.037 = phi i32 [ 0, %do.body1 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 7, i32 4, i32 %index.037
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not35 = icmp eq ptr %arrayidx, %4
  br i1 %cmp.i.not35, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %for.body.while.body_crit_edge
  %plist.036 = phi ptr [ %6, %if.end15.while.body_crit_edge ], [ %4, %for.body.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %plist.036, i32 -52
  %5 = ptrtoint ptr %plist.036 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plist.036, align 4
  %cmp12.not = icmp eq ptr %psta.1.i.i, %add.ptr
  br i1 %cmp12.not, label %while.body.if.end15_crit_edge, label %if.then14

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r8712_free_stainfo(ptr noundef %padapter, ptr noundef %add.ptr)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.body.if.end15_crit_edge
  %cmp.i.not = icmp eq ptr %arrayidx, %6
  br i1 %cmp.i.not, label %if.end15.for.inc_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.037, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_hash_lock.i.i, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %r8712_get_bcmc_stainfo.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_get_bcmc_stainfo(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_hash_lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_hash_lock.i) #6
  %arrayidx.i = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 7, i32 4, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %plist.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %plist.0.i, %while.body.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %arrayidx.i, %plist.0.i
  br i1 %cmp.i.not.i, label %while.cond.i.r8712_get_stainfo.exit_crit_edge, label %while.body.i

while.cond.i.r8712_get_stainfo.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r8712_get_stainfo.exit

while.body.i:                                     ; preds = %while.cond.i
  %hwaddr9.i = getelementptr i8, ptr %plist.0.i, i32 548
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr9.i, ptr noundef nonnull dereferenceable(6) @__const.r8712_get_bcmc_stainfo.bc_addr, i32 6) #10
  %tobool11.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool11.not.i, label %while.end.split.loop.exit.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.split.loop.exit.i:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.le.i = getelementptr i8, ptr %plist.0.i, i32 -52
  br label %r8712_get_stainfo.exit

r8712_get_stainfo.exit:                           ; preds = %while.end.split.loop.exit.i, %while.cond.i.r8712_get_stainfo.exit_crit_edge
  %psta.1.i = phi ptr [ %add.ptr.le.i, %while.end.split.loop.exit.i ], [ null, %while.cond.i.r8712_get_stainfo.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_hash_lock.i, i32 noundef %call3.i) #6
  ret ptr %psta.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_get_stainfo(ptr noundef %pstapriv, ptr noundef readonly %hwaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwaddr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hwaddr, align 1
  %conv.i = zext i8 %1 to i32
  %arrayidx1.i = getelementptr i8, ptr %hwaddr, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %4 = shl nuw nsw i32 %conv.i, 4
  %5 = shl nuw nsw i32 %conv2.i, 2
  %shl3.i = xor i32 %5, %4
  %arrayidx4.i = getelementptr i8, ptr %hwaddr, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %7 to i32
  %xor6.i = xor i32 %shl3.i, %conv5.i
  %arrayidx8.i = getelementptr i8, ptr %hwaddr, i32 3
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %9 to i32
  %arrayidx12.i = getelementptr i8, ptr %hwaddr, i32 4
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %11 to i32
  %12 = shl nuw nsw i32 %xor6.i, 6
  %13 = shl nuw nsw i32 %conv9.i, 4
  %14 = shl nuw nsw i32 %conv13.i, 2
  %15 = xor i32 %14, %13
  %shl15.i = xor i32 %15, %12
  %arrayidx16.i = getelementptr i8, ptr %hwaddr, i32 5
  %16 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %17 to i32
  %xor18.i = xor i32 %15, %conv17.i
  %shr.i = lshr i32 %shl15.i, 8
  %xor19.i = xor i32 %xor18.i, %shr.i
  %and.i = and i32 %xor19.i, 31
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_hash_lock) #6
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %and.i
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  %plist.0.in = phi ptr [ %arrayidx, %if.end ], [ %plist.0, %while.body.while.cond_crit_edge ]
  %18 = ptrtoint ptr %plist.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %plist.0 = load ptr, ptr %plist.0.in, align 4
  %cmp.i.not = icmp eq ptr %arrayidx, %plist.0
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %hwaddr9 = getelementptr i8, ptr %plist.0, i32 548
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr9, ptr noundef nonnull dereferenceable(6) %hwaddr, i32 6) #11
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %while.end.split.loop.exit, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end.split.loop.exit:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.le = getelementptr i8, ptr %plist.0, i32 -52
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit, %while.cond.while.end_crit_edge
  %psta.1 = phi ptr [ %add.ptr.le, %while.end.split.loop.exit ], [ null, %while.cond.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_hash_lock, i32 noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %psta.1, %while.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_init_bcmc_stainfo(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bcast_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bcast_addr) #6
  %0 = call ptr @memset(ptr %bcast_addr, i32 255, i32 6)
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %call = call ptr @r8712_alloc_stainfo(ptr noundef %stapriv, ptr noundef nonnull %bcast_addr)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bcast_addr) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @r8712_access_ctrl(ptr nocapture noundef readnone %pacl_list, ptr nocapture noundef readnone %mac_addr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 1
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @_r8712_init_sta_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_sta_mgt.c", i32 48, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_r8712_init_sta_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8712/rtl871x_sta_mgt.c", i32 49, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_r8712_init_sta_priv.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/rtl871x_sta_mgt.c", i32 51, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_r8712_init_sta_priv.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8712/rtl871x_sta_mgt.c", i32 52, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @r8712_alloc_stainfo.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8712/rtl871x_sta_mgt.c", i32 132, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @_init_stainfo.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8712/rtl871x_sta_mgt.c", i32 28, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
