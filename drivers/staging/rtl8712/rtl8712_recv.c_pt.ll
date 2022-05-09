; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl8712_recv.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl8712_recv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { ptr }
%struct.sk_buff_head = type { %union.anon.3, i32, %struct.spinlock }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.smooth_rssi_data = type { [100 x i32], i32, i32, i32 }
%struct.recv_buf = type { %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sk_buff = type { %union.anon.5, %union.anon.105, %union.anon.106, [48 x i8], %union.anon.107, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.109, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr, %union.anon.7 }
%union.anon.7 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { i64 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, ptr }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.111, i32, i32, i32, i16, i16, %union.anon.113, i32, %union.anon.114, %union.anon.115, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.111 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.recv_frame_hdr = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, [2 x i8], i8, i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.phy_cck_rx_status = type { [4 x i8], i8, i8 }

@r8712_init_recv_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"&((&precvpriv->free_recv_buf_queue)->lock)\00", [53 x i8] zeroinitializer }, align 32
@r8712_init_recv_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&precvbuf->recvbuf_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"r8712u: rx_skb_queue not empty\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"r8712u: free_recv_skb_queue not empty %d\0A\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"r8712u: nRemain_Length is %d and nSubframe_Length is: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"r8712u: ParseSubframe(): Too many Subframes! Packets dropped!\0A\00", [33 x i8] zeroinitializer }, align 32
@rfc1042_header = external dso_local constant [6 x i8], align 1
@bridge_tunnel_header = external dso_local constant [6 x i8], align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 43, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 53, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 94, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 97, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1984, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 338, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [42 x i8] c"../drivers/staging/rtl8712/rtl8712_recv.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 353, i32 35 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @r8712_init_recv_priv.__key, ptr @.str, ptr @r8712_init_recv_priv.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @skb_queue_head_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_recv_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_recv_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_init_recv_priv(ptr noundef %precvpriv, ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %free_recv_buf_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 21
  %0 = ptrtoint ptr %free_recv_buf_queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %free_recv_buf_queue, ptr %free_recv_buf_queue, align 4
  %prev.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 21, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free_recv_buf_queue, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 21, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @r8712_init_recv_priv.__key, i16 noundef signext 3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 836) #12
  %pallocated_recv_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 19
  %3 = ptrtoint ptr %pallocated_recv_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %pallocated_recv_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 4
  %precv_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 20
  %4 = ptrtoint ptr %precv_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %precv_buf, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %precvbuf.071 = phi ptr [ %add.ptr, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.070 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %precvbuf.071 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %precvbuf.071, ptr %precvbuf.071, align 4
  %prev.i65 = getelementptr inbounds %struct.list_head, ptr %precvbuf.071, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %precvbuf.071, ptr %prev.i65, align 4
  %recvbuf_lock = getelementptr inbounds %struct.recv_buf, ptr %precvbuf.071, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %recvbuf_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @r8712_init_recv_priv.__key.1, i16 noundef signext 3) #9
  %call15 = tail call i32 @r8712_os_recvbuf_resource_alloc(ptr noundef %padapter, ptr noundef %precvbuf.071) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end18:                                         ; preds = %for.body
  %ref_cnt = getelementptr inbounds %struct.recv_buf, ptr %precvbuf.071, i32 0, i32 2
  %7 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ref_cnt, align 4
  %adapter = getelementptr inbounds %struct.recv_buf, ptr %precvbuf.071, i32 0, i32 3
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %padapter, ptr %adapter, align 4
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precvbuf.071, ptr noundef %10, ptr noundef %free_recv_buf_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.list_add_tail.exit_crit_edge

if.end18.list_add_tail.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %precvbuf.071, ptr %prev.i, align 4
  %12 = ptrtoint ptr %precvbuf.071 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %free_recv_buf_queue, ptr %precvbuf.071, align 4
  %13 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i65, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %precvbuf.071, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end18.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.recv_buf, ptr %precvbuf.071, i32 1
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %free_recv_buf_queue_cnt = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 22
  %15 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %free_recv_buf_queue_cnt, align 4
  %recv_tasklet = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 16
  tail call void @tasklet_setup(ptr noundef %recv_tasklet, ptr noundef nonnull @recv_tasklet) #9
  %rx_skb_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 18
  %lock.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 18, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %16 = ptrtoint ptr %rx_skb_queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx_skb_queue, ptr %rx_skb_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 18, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx_skb_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qlen.i.i, align 4
  %free_recv_skb_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17
  %lock.i67 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i67, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %19 = ptrtoint ptr %free_recv_skb_queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %free_recv_skb_queue, ptr %free_recv_skb_queue, align 4
  %prev.i.i68 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i68 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_recv_skb_queue, ptr %prev.i.i68, align 4
  %qlen.i.i69 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %qlen.i.i69 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %qlen.i.i69, align 4
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 24
  %22 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pnetdev, align 8
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %23, i32 noundef 9612, i32 noundef 2592) #9
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %for.end.if.end30_crit_edge, label %if.then27

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  %and28 = and i32 %26, 511
  %sub = sub nuw nsw i32 512, %and28
  %add.ptr.i = getelementptr i8, ptr %25, i32 %sub
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %28, i32 %sub
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call.i) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %for.end.if.end30_crit_edge
  %29 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pnetdev, align 8
  %call.i.1 = tail call ptr @__netdev_alloc_skb(ptr noundef %30, i32 noundef 9612, i32 noundef 2592) #9
  %tobool26.not.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool26.not.1, label %if.end30.if.end30.1_crit_edge, label %if.then27.1

if.end30.if.end30.1_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.1

if.then27.1:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %data.1 = getelementptr inbounds %struct.sk_buff, ptr %call.i.1, i32 0, i32 19
  %31 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.1, align 4
  %33 = ptrtoint ptr %32 to i32
  %and28.1 = and i32 %33, 511
  %sub.1 = sub nuw nsw i32 512, %and28.1
  %add.ptr.i.1 = getelementptr i8, ptr %32, i32 %sub.1
  store ptr %add.ptr.i.1, ptr %data.1, align 4
  %tail.i.1 = getelementptr inbounds %struct.sk_buff, ptr %call.i.1, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.1, align 8
  %add.ptr1.i.1 = getelementptr i8, ptr %35, i32 %sub.1
  store ptr %add.ptr1.i.1, ptr %tail.i.1, align 8
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call.i.1) #9
  br label %if.end30.1

if.end30.1:                                       ; preds = %if.then27.1, %if.end30.if.end30.1_crit_edge
  %36 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pnetdev, align 8
  %call.i.2 = tail call ptr @__netdev_alloc_skb(ptr noundef %37, i32 noundef 9612, i32 noundef 2592) #9
  %tobool26.not.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool26.not.2, label %if.end30.1.if.end30.2_crit_edge, label %if.then27.2

if.end30.1.if.end30.2_crit_edge:                  ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.2

if.then27.2:                                      ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #11
  %data.2 = getelementptr inbounds %struct.sk_buff, ptr %call.i.2, i32 0, i32 19
  %38 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.2, align 4
  %40 = ptrtoint ptr %39 to i32
  %and28.2 = and i32 %40, 511
  %sub.2 = sub nuw nsw i32 512, %and28.2
  %add.ptr.i.2 = getelementptr i8, ptr %39, i32 %sub.2
  store ptr %add.ptr.i.2, ptr %data.2, align 4
  %tail.i.2 = getelementptr inbounds %struct.sk_buff, ptr %call.i.2, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.2, align 8
  %add.ptr1.i.2 = getelementptr i8, ptr %42, i32 %sub.2
  store ptr %add.ptr1.i.2, ptr %tail.i.2, align 8
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call.i.2) #9
  br label %if.end30.2

if.end30.2:                                       ; preds = %if.then27.2, %if.end30.1.if.end30.2_crit_edge
  %43 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pnetdev, align 8
  %call.i.3 = tail call ptr @__netdev_alloc_skb(ptr noundef %44, i32 noundef 9612, i32 noundef 2592) #9
  %tobool26.not.3 = icmp eq ptr %call.i.3, null
  br i1 %tobool26.not.3, label %if.end30.2.if.end30.3_crit_edge, label %if.then27.3

if.end30.2.if.end30.3_crit_edge:                  ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.3

if.then27.3:                                      ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #11
  %data.3 = getelementptr inbounds %struct.sk_buff, ptr %call.i.3, i32 0, i32 19
  %45 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.3, align 4
  %47 = ptrtoint ptr %46 to i32
  %and28.3 = and i32 %47, 511
  %sub.3 = sub nuw nsw i32 512, %and28.3
  %add.ptr.i.3 = getelementptr i8, ptr %46, i32 %sub.3
  store ptr %add.ptr.i.3, ptr %data.3, align 4
  %tail.i.3 = getelementptr inbounds %struct.sk_buff, ptr %call.i.3, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.3, align 8
  %add.ptr1.i.3 = getelementptr i8, ptr %49, i32 %sub.3
  store ptr %add.ptr1.i.3, ptr %tail.i.3, align 8
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call.i.3) #9
  br label %if.end30.3

if.end30.3:                                       ; preds = %if.then27.3, %if.end30.2.if.end30.3_crit_edge
  %50 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pnetdev, align 8
  %call.i.4 = tail call ptr @__netdev_alloc_skb(ptr noundef %51, i32 noundef 9612, i32 noundef 2592) #9
  %tobool26.not.4 = icmp eq ptr %call.i.4, null
  br i1 %tobool26.not.4, label %if.end30.3.if.end30.4_crit_edge, label %if.then27.4

if.end30.3.if.end30.4_crit_edge:                  ; preds = %if.end30.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.4

if.then27.4:                                      ; preds = %if.end30.3
  call void @__sanitizer_cov_trace_pc() #11
  %data.4 = getelementptr inbounds %struct.sk_buff, ptr %call.i.4, i32 0, i32 19
  %52 = ptrtoint ptr %data.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.4, align 4
  %54 = ptrtoint ptr %53 to i32
  %and28.4 = and i32 %54, 511
  %sub.4 = sub nuw nsw i32 512, %and28.4
  %add.ptr.i.4 = getelementptr i8, ptr %53, i32 %sub.4
  store ptr %add.ptr.i.4, ptr %data.4, align 4
  %tail.i.4 = getelementptr inbounds %struct.sk_buff, ptr %call.i.4, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.4, align 8
  %add.ptr1.i.4 = getelementptr i8, ptr %56, i32 %sub.4
  store ptr %add.ptr1.i.4, ptr %tail.i.4, align 8
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call.i.4) #9
  br label %if.end30.4

if.end30.4:                                       ; preds = %if.then27.4, %if.end30.3.if.end30.4_crit_edge
  %57 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pnetdev, align 8
  %call.i.5 = tail call ptr @__netdev_alloc_skb(ptr noundef %58, i32 noundef 9612, i32 noundef 2592) #9
  %tobool26.not.5 = icmp eq ptr %call.i.5, null
  br i1 %tobool26.not.5, label %if.end30.4.if.end30.5_crit_edge, label %if.then27.5

if.end30.4.if.end30.5_crit_edge:                  ; preds = %if.end30.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.5

if.then27.5:                                      ; preds = %if.end30.4
  call void @__sanitizer_cov_trace_pc() #11
  %data.5 = getelementptr inbounds %struct.sk_buff, ptr %call.i.5, i32 0, i32 19
  %59 = ptrtoint ptr %data.5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.5, align 4
  %61 = ptrtoint ptr %60 to i32
  %and28.5 = and i32 %61, 511
  %sub.5 = sub nuw nsw i32 512, %and28.5
  %add.ptr.i.5 = getelementptr i8, ptr %60, i32 %sub.5
  store ptr %add.ptr.i.5, ptr %data.5, align 4
  %tail.i.5 = getelementptr inbounds %struct.sk_buff, ptr %call.i.5, i32 0, i32 16
  %62 = ptrtoint ptr %tail.i.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i.5, align 8
  %add.ptr1.i.5 = getelementptr i8, ptr %63, i32 %sub.5
  store ptr %add.ptr1.i.5, ptr %tail.i.5, align 8
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call.i.5) #9
  br label %if.end30.5

if.end30.5:                                       ; preds = %if.then27.5, %if.end30.4.if.end30.5_crit_edge
  %64 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pnetdev, align 8
  %call.i.6 = tail call ptr @__netdev_alloc_skb(ptr noundef %65, i32 noundef 9612, i32 noundef 2592) #9
  %tobool26.not.6 = icmp eq ptr %call.i.6, null
  br i1 %tobool26.not.6, label %if.end30.5.if.end30.6_crit_edge, label %if.then27.6

if.end30.5.if.end30.6_crit_edge:                  ; preds = %if.end30.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.6

if.then27.6:                                      ; preds = %if.end30.5
  call void @__sanitizer_cov_trace_pc() #11
  %data.6 = getelementptr inbounds %struct.sk_buff, ptr %call.i.6, i32 0, i32 19
  %66 = ptrtoint ptr %data.6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.6, align 4
  %68 = ptrtoint ptr %67 to i32
  %and28.6 = and i32 %68, 511
  %sub.6 = sub nuw nsw i32 512, %and28.6
  %add.ptr.i.6 = getelementptr i8, ptr %67, i32 %sub.6
  store ptr %add.ptr.i.6, ptr %data.6, align 4
  %tail.i.6 = getelementptr inbounds %struct.sk_buff, ptr %call.i.6, i32 0, i32 16
  %69 = ptrtoint ptr %tail.i.6 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.6, align 8
  %add.ptr1.i.6 = getelementptr i8, ptr %70, i32 %sub.6
  store ptr %add.ptr1.i.6, ptr %tail.i.6, align 8
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call.i.6) #9
  br label %if.end30.6

if.end30.6:                                       ; preds = %if.then27.6, %if.end30.5.if.end30.6_crit_edge
  %71 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pnetdev, align 8
  %call.i.7 = tail call ptr @__netdev_alloc_skb(ptr noundef %72, i32 noundef 9612, i32 noundef 2592) #9
  %tobool26.not.7 = icmp eq ptr %call.i.7, null
  br i1 %tobool26.not.7, label %if.end30.6.cleanup_crit_edge, label %if.then27.7

if.end30.6.cleanup_crit_edge:                     ; preds = %if.end30.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.7:                                      ; preds = %if.end30.6
  call void @__sanitizer_cov_trace_pc() #11
  %data.7 = getelementptr inbounds %struct.sk_buff, ptr %call.i.7, i32 0, i32 19
  %73 = ptrtoint ptr %data.7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.7, align 4
  %75 = ptrtoint ptr %74 to i32
  %and28.7 = and i32 %75, 511
  %sub.7 = sub nuw nsw i32 512, %and28.7
  %add.ptr.i.7 = getelementptr i8, ptr %74, i32 %sub.7
  store ptr %add.ptr.i.7, ptr %data.7, align 4
  %tail.i.7 = getelementptr inbounds %struct.sk_buff, ptr %call.i.7, i32 0, i32 16
  %76 = ptrtoint ptr %tail.i.7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.7, align 8
  %add.ptr1.i.7 = getelementptr i8, ptr %77, i32 %sub.7
  store ptr %add.ptr1.i.7, ptr %tail.i.7, align 8
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call.i.7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then27.7, %if.end30.6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_os_recvbuf_resource_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_skb_queue = getelementptr i8, ptr %t, i32 80
  %call13 = tail call ptr @skb_dequeue(ptr noundef %rx_skb_queue) #9
  %cmp.not14 = icmp eq ptr %call13, null
  br i1 %cmp.not14, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %free_recv_queue.i = getelementptr i8, ptr %t, i32 -156
  %pnetdev.i = getelementptr i8, ptr %t, i32 10392
  %free_recv_skb_queue = getelementptr i8, ptr %t, i32 24
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call15 = phi ptr [ %call13, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, -12648448
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp ult i32 %7, %5
  br i1 %cmp.i, label %while.body.recvbuf2recvframe.exit_crit_edge, label %do.body.preheader.i

while.body.recvbuf2recvframe.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %recvbuf2recvframe.exit

do.body.preheader.i:                              ; preds = %while.body
  %rxdw2.i = getelementptr inbounds %struct.recv_stat, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rxdw2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxdw2.i, align 4
  %10 = trunc i32 %9 to i16
  %11 = lshr i16 %10, 8
  br label %do.body.i

do.body.i:                                        ; preds = %update_recvframe_attrib_from_recvstat.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %transfer_len.0.i = phi i32 [ %sub76.i, %update_recvframe_attrib_from_recvstat.exit.i.do.body.i_crit_edge ], [ %7, %do.body.preheader.i ]
  %pkt_cnt.0.i = phi i16 [ %dec.i, %update_recvframe_attrib_from_recvstat.exit.i.do.body.i_crit_edge ], [ %11, %do.body.preheader.i ]
  %shift_sz.0.i = phi i8 [ %spec.select.i, %update_recvframe_attrib_from_recvstat.exit.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %pbuf.0.i = phi ptr [ %add.ptr78.i, %update_recvframe_attrib_from_recvstat.exit.i.do.body.i_crit_edge ], [ %1, %do.body.preheader.i ]
  %12 = ptrtoint ptr %pbuf.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pbuf.0.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %and4.i = and i32 %14, 16383
  %rxdw1.i = getelementptr inbounds %struct.recv_stat, ptr %pbuf.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %rxdw1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxdw1.i, align 4
  %rxdw28.i = getelementptr inbounds %struct.recv_stat, ptr %pbuf.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %rxdw28.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxdw28.i, align 4
  %19 = lshr i32 %14, 13
  %conv17.i = and i32 %19, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp18.i = icmp eq i32 %and4.i, 0
  br i1 %cmp18.i, label %do.body.i.recvbuf2recvframe.exit_crit_edge, label %if.end21.i

do.body.i.recvbuf2recvframe.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recvbuf2recvframe.exit

if.end21.i:                                       ; preds = %do.body.i
  %20 = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %spec.select.i = select i1 %tobool.not.i, i8 %shift_sz.0.i, i8 2
  %call.i = tail call ptr @r8712_alloc_recvframe(ptr noundef %free_recv_queue.i) #9
  %tobool27.not.i = icmp eq ptr %call.i, null
  br i1 %tobool27.not.i, label %if.end21.i.recvbuf2recvframe.exit_crit_edge, label %if.end29.i

if.end21.i.recvbuf2recvframe.exit_crit_edge:      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recvbuf2recvframe.exit

if.end29.i:                                       ; preds = %if.end21.i
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %prev.i.i, align 4
  %precvbuf.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %precvbuf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %precvbuf.i, align 4
  %len30.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %len30.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %len30.i, align 4
  %add.i = add nuw nsw i32 %conv17.i, %and4.i
  %25 = trunc i32 %add.i to i16
  %conv33.i = add nuw nsw i16 %25, 24
  %conv34.i = zext i16 %conv33.i to i32
  %sub.i = add nuw nsw i32 %add.i, 23
  %or.i = or i32 %sub.i, 127
  %add35.i = add nuw nsw i32 %or.i, 1
  %26 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp38.not.i = icmp ne i32 %26, 0
  %27 = and i32 %18, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp41.i = icmp eq i32 %27, 0
  %or.cond.i = select i1 %cmp38.not.i, i1 %cmp41.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 1634, i16 %25)
  %cmp46.i = icmp ugt i16 %25, 1634
  %conv33..i = select i1 %cmp46.i, i16 %conv33.i, i16 1658
  %alloc_sz.0.i = select i1 %or.cond.i, i16 %conv33..i, i16 %conv33.i
  %add53.i = add nuw nsw i16 %alloc_sz.0.i, 6
  %28 = ptrtoint ptr %pnetdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pnetdev.i, align 8
  %conv55.i = zext i16 %add53.i to i32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %29, i32 noundef %conv55.i, i32 noundef 2592) #9
  %tobool57.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool57.not.i, label %if.end29.i.recvbuf2recvframe.exit_crit_edge, label %if.end.i.i

if.end29.i.recvbuf2recvframe.exit_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recvbuf2recvframe.exit

if.end.i.i:                                       ; preds = %if.end29.i
  %pkt.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %pkt.i, align 4
  %data60.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %data60.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data60.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %rem.i = and i32 %33, 3
  %sub61.i = sub nuw nsw i32 4, %rem.i
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %sub61.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %35, i32 %sub61.i
  %conv62.i = zext i8 %spec.select.i to i32
  %add.ptr.i150.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv62.i
  store ptr %add.ptr.i150.i, ptr %data60.i, align 4
  %add.ptr1.i152.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %conv62.i
  store ptr %add.ptr1.i152.i, ptr %tail.i.i, align 8
  %36 = call ptr @memcpy(ptr %add.ptr.i150.i, ptr %pbuf.0.i, i32 %conv34.i)
  %37 = load ptr, ptr %data60.i, align 4
  %rx_head.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %rx_head.i, align 4
  %39 = load ptr, ptr %data60.i, align 4
  %rx_data.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 8
  %40 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %rx_data.i, align 4
  %41 = load ptr, ptr %data60.i, align 4
  %rx_tail.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 9
  %42 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %rx_tail.i, align 4
  %43 = load ptr, ptr %data60.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 %conv55.i
  %rx_end.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 10
  %44 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %rx_end.i, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %41, i32 %conv34.i
  store ptr %add.ptr.i153.i, ptr %rx_tail.i, align 4
  %cmp.i.i = icmp ugt ptr %add.ptr.i153.i, %add.ptr.i
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end5.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %41, ptr %rx_tail.i, align 4
  br label %if.end.i158.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %len30.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len30.i, align 4
  %add.i.i = add i32 %47, %conv34.i
  store i32 %add.i.i, ptr %len30.i, align 4
  br label %if.end.i158.i

if.end.i158.i:                                    ; preds = %if.end5.i.i, %if.then2.i.i
  %add73.i = add nuw nsw i32 %conv17.i, 24
  %48 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_data.i, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %49, i32 %add73.i
  store ptr %add.ptr.i155.i, ptr %rx_data.i, align 4
  %50 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_tail.i, align 4
  %cmp.i157.i = icmp ugt ptr %add.ptr.i155.i, %51
  br i1 %cmp.i157.i, label %if.then2.i159.i, label %if.end5.i161.i

if.then2.i159.i:                                  ; preds = %if.end.i158.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %rx_data.i, align 4
  br label %recvframe_pull.exit.i

if.end5.i161.i:                                   ; preds = %if.end.i158.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %len30.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len30.i, align 4
  %sub.i.i = sub i32 %54, %add73.i
  store i32 %sub.i.i, ptr %len30.i, align 4
  br label %recvframe_pull.exit.i

recvframe_pull.exit.i:                            ; preds = %if.end5.i161.i, %if.then2.i159.i
  %55 = ptrtoint ptr %pbuf.0.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pbuf.0.i, align 4
  %57 = trunc i32 %56 to i8
  %58 = lshr i8 %57, 3
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  %bdecrypted.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 5, i32 10
  %61 = ptrtoint ptr %bdecrypted.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %bdecrypted.i.i, align 4
  %62 = load i32, ptr %pbuf.0.i, align 4
  %63 = lshr i32 %62, 22
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %crc_err.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 5, i32 17
  %66 = ptrtoint ptr %crc_err.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %crc_err.i.i, align 4
  %rxdw3.i.i = getelementptr inbounds %struct.recv_stat, ptr %pbuf.0.i, i32 0, i32 3
  %67 = ptrtoint ptr %rxdw3.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rxdw3.i.i, align 4
  %69 = and i32 %68, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i162.i = icmp eq i32 %69, 0
  %tcpchk_valid26.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 5, i32 23
  br i1 %tobool.not.i162.i, label %if.else25.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %recvframe_pull.exit.i
  %70 = ptrtoint ptr %tcpchk_valid26.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %tcpchk_valid26.i.i, align 1
  %71 = ptrtoint ptr %rxdw3.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rxdw3.i.i, align 4
  %73 = lshr i32 %72, 19
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 5, i32 25
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %75, ptr %76, align 1
  %78 = load i32, ptr %rxdw3.i.i, align 4
  %79 = and i32 %78, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool20.not.i.i = icmp eq i32 %79, 0
  %ip_chkrpt23.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 5, i32 24
  br i1 %tobool20.not.i.i, label %if.else22.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %ip_chkrpt23.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %ip_chkrpt23.i.i, align 4
  br label %update_recvframe_attrib_from_recvstat.exit.i

if.else22.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %ip_chkrpt23.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %ip_chkrpt23.i.i, align 4
  br label %update_recvframe_attrib_from_recvstat.exit.i

if.else25.i.i:                                    ; preds = %recvframe_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %tcpchk_valid26.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %tcpchk_valid26.i.i, align 1
  br label %update_recvframe_attrib_from_recvstat.exit.i

update_recvframe_attrib_from_recvstat.exit.i:     ; preds = %if.else25.i.i, %if.else22.i.i, %if.then21.i.i
  %83 = ptrtoint ptr %rxdw3.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rxdw3.i.i, align 4
  %85 = lshr i32 %84, 24
  %86 = trunc i32 %85 to i8
  %conv30.i.i = and i8 %86, 63
  %mcs_rate.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 5, i32 28
  %87 = ptrtoint ptr %mcs_rate.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv30.i.i, ptr %mcs_rate.i.i, align 1
  %88 = load i32, ptr %rxdw3.i.i, align 4
  %89 = lshr i32 %88, 22
  %90 = trunc i32 %89 to i8
  %conv34.i.i = and i8 %90, 1
  %htc.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 5, i32 29
  %91 = ptrtoint ptr %htc.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv34.i.i, ptr %htc.i.i, align 2
  tail call void @r8712_recv_entry(ptr noundef nonnull %call.i) #9
  %conv75.i = and i32 %add35.i, 65408
  %sub76.i = sub i32 %transfer_len.0.i, %conv75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub76.i)
  %cmp79.not.i = icmp eq i32 %sub76.i, 0
  %dec.i = add i16 %pkt_cnt.0.i, -1
  %add.ptr78.i = getelementptr i8, ptr %pbuf.0.i, i32 %conv75.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %cmp82.not.i = icmp eq i16 %dec.i, 0
  %or.cond148.i = select i1 %cmp79.not.i, i1 true, i1 %cmp82.not.i
  br i1 %or.cond148.i, label %update_recvframe_attrib_from_recvstat.exit.i.recvbuf2recvframe.exit_crit_edge, label %update_recvframe_attrib_from_recvstat.exit.i.do.body.i_crit_edge

update_recvframe_attrib_from_recvstat.exit.i.do.body.i_crit_edge: ; preds = %update_recvframe_attrib_from_recvstat.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

update_recvframe_attrib_from_recvstat.exit.i.recvbuf2recvframe.exit_crit_edge: ; preds = %update_recvframe_attrib_from_recvstat.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recvbuf2recvframe.exit

recvbuf2recvframe.exit:                           ; preds = %update_recvframe_attrib_from_recvstat.exit.i.recvbuf2recvframe.exit_crit_edge, %if.end29.i.recvbuf2recvframe.exit_crit_edge, %if.end21.i.recvbuf2recvframe.exit_crit_edge, %do.body.i.recvbuf2recvframe.exit_crit_edge, %while.body.recvbuf2recvframe.exit_crit_edge
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 16
  %94 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %tail.i, align 8
  %95 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %len.i, align 4
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 12
  %96 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i10 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i10, label %recvbuf2recvframe.exit.if.then_crit_edge, label %skb_cloned.exit

recvbuf2recvframe.exit.if.then_crit_edge:         ; preds = %recvbuf2recvframe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

skb_cloned.exit:                                  ; preds = %recvbuf2recvframe.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 17
  %97 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #9
  %99 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %100, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i11.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i11.not, label %skb_cloned.exit.if.then_crit_edge, label %if.else

skb_cloned.exit.if.then_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %skb_cloned.exit.if.then_crit_edge, %recvbuf2recvframe.exit.if.then_crit_edge
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call15) #9
  br label %if.end

if.else:                                          ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %call15) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call ptr @skb_dequeue(ptr noundef %rx_skb_queue) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_recv_priv(ptr noundef %precvpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 6
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %precv_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 20
  %2 = ptrtoint ptr %precv_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %precv_buf, align 4
  tail call void @r8712_os_recvbuf_resource_free(ptr noundef %1, ptr noundef %3) #9
  %incdec.ptr = getelementptr %struct.recv_buf, ptr %3, i32 1
  tail call void @r8712_os_recvbuf_resource_free(ptr noundef %1, ptr noundef %incdec.ptr) #9
  %incdec.ptr.1 = getelementptr %struct.recv_buf, ptr %3, i32 2
  tail call void @r8712_os_recvbuf_resource_free(ptr noundef %1, ptr noundef %incdec.ptr.1) #9
  %incdec.ptr.2 = getelementptr %struct.recv_buf, ptr %3, i32 3
  tail call void @r8712_os_recvbuf_resource_free(ptr noundef %1, ptr noundef %incdec.ptr.2) #9
  %incdec.ptr.3 = getelementptr %struct.recv_buf, ptr %3, i32 4
  tail call void @r8712_os_recvbuf_resource_free(ptr noundef %1, ptr noundef %incdec.ptr.3) #9
  %incdec.ptr.4 = getelementptr %struct.recv_buf, ptr %3, i32 5
  tail call void @r8712_os_recvbuf_resource_free(ptr noundef %1, ptr noundef %incdec.ptr.4) #9
  %incdec.ptr.5 = getelementptr %struct.recv_buf, ptr %3, i32 6
  tail call void @r8712_os_recvbuf_resource_free(ptr noundef %1, ptr noundef %incdec.ptr.5) #9
  %incdec.ptr.6 = getelementptr %struct.recv_buf, ptr %3, i32 7
  tail call void @r8712_os_recvbuf_resource_free(ptr noundef %1, ptr noundef %incdec.ptr.6) #9
  %pallocated_recv_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 19
  %4 = ptrtoint ptr %pallocated_recv_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pallocated_recv_buf, align 4
  tail call void @kfree(ptr noundef %5) #9
  %rx_skb_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 18
  tail call void @skb_queue_purge(ptr noundef %rx_skb_queue) #9
  %qlen.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %free_recv_skb_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17
  tail call void @skb_queue_purge(ptr noundef %free_recv_skb_queue) #9
  %qlen.i21 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %qlen.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pnetdev6 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %pnetdev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pnetdev6, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef %11) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_os_recvbuf_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r8712_init_recvbuf(ptr nocapture noundef readnone %padapter, ptr nocapture noundef %precvbuf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_len = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 7
  %0 = ptrtoint ptr %transfer_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %transfer_len, align 4
  %len = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 8
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %len, align 4
  %ref_cnt = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 2
  %2 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ref_cnt, align 4
  %pbuf = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 13
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pbuf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdata = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 10
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pdata, align 4
  %phead = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 9
  %6 = ptrtoint ptr %phead to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %phead, align 4
  %ptail = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 11
  %7 = ptrtoint ptr %ptail to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %ptail, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 9100
  %pend = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 12
  %8 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %pend, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_recvframe(ptr noundef %precvframe, ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %pkt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 1
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %3, i32 noundef 1) #9
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pkt, align 4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.__queue, ptr %pfree_recv_queue, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %precvframe) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body3.list_del_init.exit_crit_edge

do.body3.list_del_init.exit_crit_edge:            ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %precvframe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %precvframe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body3.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %precvframe, ptr %precvframe, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %precvframe, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pfree_recv_queue, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i26 = tail call zeroext i1 @__list_add_valid(ptr noundef %precvframe, ptr noundef %14, ptr noundef %pfree_recv_queue) #9
  br i1 %call.i.i26, label %if.end.i.i27, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i27:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %precvframe, ptr %prev.i, align 4
  %16 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pfree_recv_queue, ptr %precvframe, align 4
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %precvframe, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i27, %list_del_init.exit.list_add_tail.exit_crit_edge
  %tobool8.not = icmp ne ptr %1, null
  %free_recv_queue = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 1
  %cmp10 = icmp eq ptr %free_recv_queue, %pfree_recv_queue
  %or.cond = select i1 %tobool8.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then12, label %list_add_tail.exit.if.end14_crit_edge

list_add_tail.exit.if.end14_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %free_recvframe_cnt = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 6, i32 5
  %19 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %free_recvframe_cnt, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %free_recvframe_cnt, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %list_add_tail.exit.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_recvframe_chk_defrag(ptr noundef %padapter, ptr noundef %precv_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %free_recv_queue = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 1
  %mfrag = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 7
  %0 = ptrtoint ptr %mfrag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mfrag, align 1
  %frag_num = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %frag_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %frag_num, align 4
  %ta = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 5, i32 20
  %call = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #9
  %tobool.not = icmp eq ptr %call, null
  %defrag_q = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 2
  %pdefrag_q.0 = select i1 %tobool.not, ptr null, ptr %defrag_q
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  %prtnframe.0 = select i1 %or.cond, ptr %precv_frame, ptr null
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp10 = icmp eq i8 %1, 1
  br i1 %cmp10, label %if.then12, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then12:                                        ; preds = %entry
  %tobool13.not = icmp eq ptr %pdefrag_q.0, null
  br i1 %tobool13.not, label %if.end27.thread, label %if.then14

if.then14:                                        ; preds = %if.then12
  br i1 %cmp5, label %if.then18, label %if.then14.if.end23_crit_edge

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then18:                                        ; preds = %if.then14
  %4 = ptrtoint ptr %pdefrag_q.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pdefrag_q.0, align 4
  %cmp.i.not = icmp eq ptr %5, %pdefrag_q.0
  br i1 %cmp.i.not, label %if.then18.if.end23_crit_edge, label %if.then21

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r8712_free_recvframe_queue(ptr noundef nonnull %pdefrag_q.0, ptr noundef %free_recv_queue) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18.if.end23_crit_edge, %if.then14.if.end23_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pdefrag_q.0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precv_frame, ptr noundef %7, ptr noundef nonnull %pdefrag_q.0) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %precv_frame, ptr %prev.i, align 4
  %9 = ptrtoint ptr %precv_frame to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdefrag_q.0, ptr %precv_frame, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %precv_frame, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %precv_frame, ptr %7, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i, %if.end23.if.end27_crit_edge, %entry.if.end27_crit_edge
  %prtnframe.1 = phi ptr [ %prtnframe.0, %entry.if.end27_crit_edge ], [ null, %if.end23.if.end27_crit_edge ], [ null, %if.end.i.i ]
  %cmp.not = xor i1 %cmp, true
  %or.cond86 = select i1 %cmp.not, i1 true, i1 %cmp5
  br i1 %or.cond86, label %if.end27.if.end43_crit_edge, label %if.then35

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end27.thread:                                  ; preds = %if.then12
  tail call void @r8712_free_recvframe(ptr noundef %precv_frame, ptr noundef %free_recv_queue)
  %cmp.not94 = xor i1 %cmp, true
  %or.cond8695 = select i1 %cmp.not94, i1 true, i1 %cmp5
  br i1 %or.cond8695, label %if.end27.thread.if.end55_crit_edge, label %if.end27.thread.if.else41_crit_edge

if.end27.thread.if.else41_crit_edge:              ; preds = %if.end27.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else41

if.end27.thread.if.end55_crit_edge:               ; preds = %if.end27.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then35:                                        ; preds = %if.end27
  %tobool36.not = icmp eq ptr %pdefrag_q.0, null
  br i1 %tobool36.not, label %if.then35.if.else41_crit_edge, label %if.then37

if.then35.if.else41_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else41

if.then37:                                        ; preds = %if.then35
  %prev.i87 = getelementptr inbounds %struct.list_head, ptr %pdefrag_q.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i87, align 4
  %call.i.i88 = tail call zeroext i1 @__list_add_valid(ptr noundef %precv_frame, ptr noundef %13, ptr noundef nonnull %pdefrag_q.0) #9
  br i1 %call.i.i88, label %if.end.i.i90, label %if.then37.list_add_tail.exit91_crit_edge

if.then37.list_add_tail.exit91_crit_edge:         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit91

if.end.i.i90:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %precv_frame, ptr %prev.i87, align 4
  %15 = ptrtoint ptr %precv_frame to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pdefrag_q.0, ptr %precv_frame, align 4
  %prev3.i.i89 = getelementptr inbounds %struct.list_head, ptr %precv_frame, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i89 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i89, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %precv_frame, ptr %13, align 4
  br label %list_add_tail.exit91

list_add_tail.exit91:                             ; preds = %if.end.i.i90, %if.then37.list_add_tail.exit91_crit_edge
  %18 = ptrtoint ptr %pdefrag_q.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdefrag_q.0, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add_tail.exit91.list_del_init.exit.i_crit_edge

list_add_tail.exit91.list_del_init.exit.i_crit_edge: ; preds = %list_add_tail.exit91
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %list_add_tail.exit91
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %list_add_tail.exit91.list_del_init.exit.i_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i.i, align 4
  %frag_num.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %19, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %frag_num.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %frag_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.not.i = icmp eq i8 %29, 0
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %list_del_init.exit.i.cleanup.sink.split.i_crit_edge

list_del_init.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

while.cond.preheader.i:                           ; preds = %list_del_init.exit.i
  %30 = ptrtoint ptr %pdefrag_q.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %plist.094.i = load ptr, ptr %pdefrag_q.0, align 4
  %cmp.i.not95.i = icmp eq ptr %plist.094.i, %pdefrag_q.0
  br i1 %cmp.i.not95.i, label %while.cond.preheader.i.recvframe_defrag.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.recvframe_defrag.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recvframe_defrag.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %icv_len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %19, i32 0, i32 5, i32 14
  %tobool.not.i72.i = icmp eq ptr %19, null
  %rx_tail.i73.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %19, i32 0, i32 9
  %rx_data.i75.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %19, i32 0, i32 8
  %len.i79.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %19, i32 0, i32 6
  %rx_end.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %19, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %recvframe_put.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %plist.097.i = phi ptr [ %plist.094.i, %while.body.lr.ph.i ], [ %plist.0.i, %recvframe_put.exit.i.while.body.i_crit_edge ]
  %curfragnum.096.i = phi i8 [ 1, %while.body.lr.ph.i ], [ %inc16.i, %recvframe_put.exit.i.while.body.i_crit_edge ]
  %frag_num10.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 5, i32 4
  %31 = ptrtoint ptr %frag_num10.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %frag_num10.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %curfragnum.096.i, i8 %32)
  %cmp12.not.i = icmp eq i8 %curfragnum.096.i, %32
  br i1 %cmp12.not.i, label %if.end15.i, label %while.body.i.cleanup.sink.split.i_crit_edge

while.body.i.cleanup.sink.split.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end15.i:                                       ; preds = %while.body.i
  %inc16.i = add i8 %curfragnum.096.i, 1
  %hdrlen.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 5, i32 11
  %33 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hdrlen.i, align 4
  %iv_len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 5, i32 13
  %35 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iv_len.i, align 4
  %add.i = add i32 %36, %34
  %conv20.i = and i32 %add.i, 255
  %tobool.not.i.i = icmp eq ptr %plist.097.i, null
  br i1 %tobool.not.i.i, label %if.end15.i.recvframe_pull.exit.i_crit_edge, label %if.end.i.i92

if.end15.i.recvframe_pull.exit.i_crit_edge:       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recvframe_pull.exit.i

if.end.i.i92:                                     ; preds = %if.end15.i
  %rx_data.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 8
  %37 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %conv20.i
  store ptr %add.ptr.i.i, ptr %rx_data.i.i, align 4
  %rx_tail.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 9
  %39 = ptrtoint ptr %rx_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_tail.i.i, align 4
  %cmp.i71.i = icmp ugt ptr %add.ptr.i.i, %40
  br i1 %cmp.i71.i, label %if.then2.i.i, label %if.end5.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %rx_data.i.i, align 4
  br label %recvframe_pull.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #11
  %len.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 6
  %42 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 %43, %conv20.i
  store i32 %sub.i.i, ptr %len.i.i, align 4
  br label %recvframe_pull.exit.i

recvframe_pull.exit.i:                            ; preds = %if.end5.i.i, %if.then2.i.i, %if.end15.i.recvframe_pull.exit.i_crit_edge
  %44 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %icv_len.i, align 4
  %46 = ptrtoint ptr %rx_tail.i73.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_tail.i73.i, align 4
  br i1 %tobool.not.i72.i, label %recvframe_pull_tail.exit.i, label %if.end.i77.i

if.end.i77.i:                                     ; preds = %recvframe_pull.exit.i
  %idx.neg.i.i = sub i32 0, %45
  %add.ptr.i74.i = getelementptr i8, ptr %47, i32 %idx.neg.i.i
  %48 = ptrtoint ptr %rx_tail.i73.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i74.i, ptr %rx_tail.i73.i, align 4
  %49 = ptrtoint ptr %rx_data.i75.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_data.i75.i, align 4
  %cmp.i76.i = icmp ult ptr %add.ptr.i74.i, %50
  br i1 %cmp.i76.i, label %if.then2.i78.i, label %if.end5.i81.i

if.then2.i78.i:                                   ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %rx_tail.i73.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %47, ptr %rx_tail.i73.i, align 4
  br label %if.end.i86.i

if.end5.i81.i:                                    ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %len.i79.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i79.i, align 4
  %sub.i80.i = sub i32 %53, %45
  store i32 %sub.i80.i, ptr %len.i79.i, align 4
  br label %if.end.i86.i

recvframe_pull_tail.exit.i:                       ; preds = %recvframe_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_data.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 8
  %54 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_data.i, align 4
  %len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 6
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  %58 = call ptr @memcpy(ptr %47, ptr %55, i32 %57)
  br label %recvframe_put.exit.i

if.end.i86.i:                                     ; preds = %if.end5.i81.i, %if.then2.i78.i
  %59 = ptrtoint ptr %rx_tail.i73.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_tail.i73.i, align 4
  %rx_data91.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 8
  %61 = ptrtoint ptr %rx_data91.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_data91.i, align 4
  %len92.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 6
  %63 = ptrtoint ptr %len92.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len92.i, align 4
  %65 = call ptr @memcpy(ptr %60, ptr %62, i32 %64)
  %66 = load i32, ptr %len92.i, align 4
  %67 = load ptr, ptr %rx_tail.i73.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %67, i32 %66
  store ptr %add.ptr.i84.i, ptr %rx_tail.i73.i, align 4
  %68 = ptrtoint ptr %rx_end.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_end.i.i, align 4
  %cmp.i85.i = icmp ugt ptr %add.ptr.i84.i, %69
  br i1 %cmp.i85.i, label %if.then2.i87.i, label %if.end5.i89.i

if.then2.i87.i:                                   ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %rx_tail.i73.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %rx_tail.i73.i, align 4
  br label %recvframe_put.exit.i

if.end5.i89.i:                                    ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %len.i79.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i79.i, align 4
  %add.i.i = add i32 %72, %66
  store i32 %add.i.i, ptr %len.i79.i, align 4
  br label %recvframe_put.exit.i

recvframe_put.exit.i:                             ; preds = %if.end5.i89.i, %if.then2.i87.i, %recvframe_pull_tail.exit.i
  %icv_len27.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.097.i, i32 0, i32 5, i32 14
  %73 = ptrtoint ptr %icv_len27.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %icv_len27.i, align 4
  %75 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %icv_len.i, align 4
  %76 = ptrtoint ptr %plist.097.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %plist.0.i = load ptr, ptr %plist.097.i, align 4
  %cmp.i.not.i = icmp eq ptr %plist.0.i, %pdefrag_q.0
  br i1 %cmp.i.not.i, label %recvframe_put.exit.i.recvframe_defrag.exit_crit_edge, label %recvframe_put.exit.i.while.body.i_crit_edge

recvframe_put.exit.i.while.body.i_crit_edge:      ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

recvframe_put.exit.i.recvframe_defrag.exit_crit_edge: ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recvframe_defrag.exit

cleanup.sink.split.i:                             ; preds = %while.body.i.cleanup.sink.split.i_crit_edge, %list_del_init.exit.i.cleanup.sink.split.i_crit_edge
  tail call void @r8712_free_recvframe(ptr noundef %19, ptr noundef %free_recv_queue) #9
  br label %recvframe_defrag.exit

recvframe_defrag.exit:                            ; preds = %cleanup.sink.split.i, %recvframe_put.exit.i.recvframe_defrag.exit_crit_edge, %while.cond.preheader.i.recvframe_defrag.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %while.cond.preheader.i.recvframe_defrag.exit_crit_edge ], [ null, %cleanup.sink.split.i ], [ %19, %recvframe_put.exit.i.recvframe_defrag.exit_crit_edge ]
  tail call void @r8712_free_recvframe_queue(ptr noundef nonnull %pdefrag_q.0, ptr noundef %free_recv_queue) #9
  br label %if.end43

if.else41:                                        ; preds = %if.then35.if.else41_crit_edge, %if.end27.thread.if.else41_crit_edge
  tail call void @r8712_free_recvframe(ptr noundef %precv_frame, ptr noundef %free_recv_queue)
  br label %if.end55

if.end43:                                         ; preds = %recvframe_defrag.exit, %if.end27.if.end43_crit_edge
  %prtnframe.2 = phi ptr [ %retval.0.i, %recvframe_defrag.exit ], [ %prtnframe.1, %if.end27.if.end43_crit_edge ]
  %tobool44.not = icmp eq ptr %prtnframe.2, null
  br i1 %tobool44.not, label %if.end43.if.end55_crit_edge, label %land.lhs.true45

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true45:                                  ; preds = %if.end43
  %privacy = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 5, i32 9
  %77 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %privacy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool48.not = icmp eq i8 %78, 0
  br i1 %tobool48.not, label %land.lhs.true45.if.end55_crit_edge, label %if.then49

land.lhs.true45.if.end55_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then49:                                        ; preds = %land.lhs.true45
  %call50 = tail call i32 @r8712_recvframe_chkmic(ptr noundef %padapter, ptr noundef nonnull %prtnframe.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.then49.if.end55_crit_edge

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r8712_free_recvframe(ptr noundef nonnull %prtnframe.2, ptr noundef %free_recv_queue)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.then49.if.end55_crit_edge, %land.lhs.true45.if.end55_crit_edge, %if.end43.if.end55_crit_edge, %if.else41, %if.end27.thread.if.end55_crit_edge
  %prtnframe.3 = phi ptr [ null, %if.then53 ], [ %prtnframe.2, %if.then49.if.end55_crit_edge ], [ %prtnframe.2, %land.lhs.true45.if.end55_crit_edge ], [ null, %if.end43.if.end55_crit_edge ], [ null, %if.else41 ], [ null, %if.end27.thread.if.end55_crit_edge ]
  ret ptr %prtnframe.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_recvframe_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_recvframe_chkmic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_rxcmd_event_hdl(ptr noundef %padapter, ptr noundef %prxcmdbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prxcmdbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prxcmdbuf, align 4
  %2 = lshr i32 %1, 5
  %conv2 = and i32 %2, 120
  %add = add nuw nsw i32 %conv2, 24
  %add.ptr = getelementptr i8, ptr %prxcmdbuf, i32 %add
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %poffset.0 = phi ptr [ %add.ptr, %entry ], [ %add.ptr8, %do.body.do.body_crit_edge ]
  %3 = ptrtoint ptr %poffset.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %poffset.0, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void @r8712_event_handle(ptr noundef %padapter, ptr noundef %poffset.0) #9
  %conv6 = and i32 %5, 65535
  %add7 = add nuw nsw i32 %conv6, 8
  %add.ptr8 = getelementptr i8, ptr %poffset.0, i32 %add7
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_event_handle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_recv_indicatepkts_in_order(ptr noundef %padapter, ptr noundef %preorder_ctrl, i32 noundef %bforced) local_unnamed_addr #0 align 64 {
entry:
  %subframes.i = alloca [64 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_recvframe_queue = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_recvframe_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bforced)
  %tobool.not = icmp eq i32 %bforced, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %pending_recvframe_queue
  br i1 %cmp.i.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %seq_num = getelementptr inbounds %struct.recv_frame_hdr, ptr %1, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %seq_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %seq_num, align 2
  %indicate_seq = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 1
  %6 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %indicate_seq, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %7 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i68.not88 = icmp eq ptr %8, %pending_recvframe_queue
  br i1 %cmp.i68.not88, label %if.end3.cleanup_crit_edge, label %while.body.lr.ph

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end3
  %indicate_seq10 = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 1
  %pnetdev28.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 24
  %free_recv_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 1
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  %plist.089 = phi ptr [ %1, %while.body.lr.ph ], [ %14, %if.end40.while.body_crit_edge ]
  %attrib9 = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 5
  %9 = ptrtoint ptr %indicate_seq10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %indicate_seq10, align 4
  %conv = zext i16 %10 to i32
  %seq_num11 = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 5, i32 5
  %11 = ptrtoint ptr %seq_num11 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %seq_num11, align 2
  %conv12 = zext i16 %12 to i32
  %sub = sub nsw i32 %conv, %conv12
  %and = and i32 %sub, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.then14, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %while.body
  %13 = ptrtoint ptr %plist.089 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plist.089, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.089) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del_init.exit_crit_edge

if.then14.list_del_init.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.089, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %plist.089 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plist.089, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then14.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %plist.089 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %plist.089, ptr %plist.089, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.089, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %plist.089, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %indicate_seq10 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %indicate_seq10, align 4
  %25 = ptrtoint ptr %seq_num11 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %seq_num11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp20 = icmp eq i16 %24, %26
  br i1 %cmp20, label %if.then22, label %list_del_init.exit.if.end27_crit_edge

list_del_init.exit.if.end27_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = add i16 %24, 1
  %28 = and i16 %27, 4095
  %29 = ptrtoint ptr %indicate_seq10 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %indicate_seq10, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %list_del_init.exit.if.end27_crit_edge
  %30 = ptrtoint ptr %attrib9 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %attrib9, align 4
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %31, label %if.end27.if.end40_crit_edge [
    i8 0, label %if.then29
    i8 1, label %if.then38
  ]

if.end27.if.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then29:                                        ; preds = %if.end27
  %33 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %driver_stopped, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool30.not = icmp eq i8 %34, 0
  br i1 %tobool30.not, label %land.lhs.true, label %if.then29.if.end40_crit_edge

if.then29.if.end40_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true:                                    ; preds = %if.then29
  %35 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %surprise_removed, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool31.not = icmp eq i8 %36, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r8712_recv_indicatepkt(ptr noundef %padapter, ptr noundef %plist.089) #9
  br label %if.end40

if.then38:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %subframes.i) #9
  %37 = call ptr @memset(ptr %subframes.i, i32 255, i32 256)
  %hdrlen.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 5, i32 11
  %38 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hdrlen.i, align 4
  %tobool.not.i.i = icmp eq ptr %plist.089, null
  br i1 %tobool.not.i.i, label %if.then38.if.end.i_crit_edge, label %if.end.i.i70

if.then38.if.end.i_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i70:                                     ; preds = %if.then38
  %rx_data.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 8
  %40 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %39
  store ptr %add.ptr.i.i, ptr %rx_data.i.i, align 4
  %rx_tail.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 9
  %42 = ptrtoint ptr %rx_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_tail.i.i, align 4
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %43
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end5.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %rx_data.i.i, align 4
  br label %recvframe_pull.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  %len.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 6
  %45 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 %46, %39
  store i32 %sub.i.i, ptr %len.i.i, align 4
  br label %recvframe_pull.exit.i

recvframe_pull.exit.i:                            ; preds = %if.end5.i.i, %if.then2.i.i
  %iv_len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 5, i32 13
  %47 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i71 = icmp sgt i32 %48, 0
  br i1 %cmp.i71, label %if.end.i195.critedge.i, label %recvframe_pull.exit.i.if.end.i_crit_edge

recvframe_pull.exit.i.if.end.i_crit_edge:         ; preds = %recvframe_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i195.critedge.i:                           ; preds = %recvframe_pull.exit.i
  %49 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_data.i.i, align 4
  %add.ptr.i192.i = getelementptr i8, ptr %50, i32 %48
  store ptr %add.ptr.i192.i, ptr %rx_data.i.i, align 4
  %51 = ptrtoint ptr %rx_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_tail.i.i, align 4
  %cmp.i194.i = icmp ugt ptr %add.ptr.i192.i, %52
  br i1 %cmp.i194.i, label %if.then2.i196.i, label %if.end5.i199.i

if.then2.i196.i:                                  ; preds = %if.end.i195.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %rx_data.i.i, align 4
  br label %if.end.i

if.end5.i199.i:                                   ; preds = %if.end.i195.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  %len.i197.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 6
  %54 = ptrtoint ptr %len.i197.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i197.i, align 4
  %sub.i198.i = sub i32 %55, %48
  store i32 %sub.i198.i, ptr %len.i197.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i199.i, %if.then2.i196.i, %recvframe_pull.exit.i.if.end.i_crit_edge, %if.then38.if.end.i_crit_edge
  %len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 6
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %57)
  %cmp6214.i = icmp sgt i32 %57, 14
  br i1 %cmp6214.i, label %while.body.preheader.i, label %if.end.i.amsdu_to_msdu.exit_crit_edge

if.end.i.amsdu_to_msdu.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amsdu_to_msdu.exit

while.body.preheader.i:                           ; preds = %if.end.i
  %rx_data.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 8
  %58 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_data.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end50.i.while.body.i_crit_edge, %while.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %while.body.preheader.i ], [ %indvars.iv.next.i, %if.end50.i.while.body.i_crit_edge ]
  %a_len.0217.i = phi i32 [ %57, %while.body.preheader.i ], [ %sub49.i, %if.end50.i.while.body.i_crit_edge ]
  %pdata.0216.i = phi ptr [ %59, %while.body.preheader.i ], [ %add.ptr48.i, %if.end50.i.while.body.i_crit_edge ]
  %nr_subframes.0215.i = phi i8 [ 0, %while.body.preheader.i ], [ %inc.i, %if.end50.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pdata.0216.i, i32 12
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.i, align 2
  %add.i = tail call i16 @llvm.bswap.i16(i16 %61) #9
  %conv9.i = zext i16 %add.i to i32
  %add10.i = add nuw nsw i32 %conv9.i, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %a_len.0217.i, i32 %add10.i)
  %cmp11.i = icmp ult i32 %a_len.0217.i, %add10.i
  br i1 %cmp11.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %pnetdev28.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pnetdev28.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %63, ptr noundef nonnull @.str.6, i32 noundef %a_len.0217.i, i32 noundef %conv9.i) #13
  br label %amsdu_to_msdu.exit

if.end15.i:                                       ; preds = %while.body.i
  %add.ptr16.i = getelementptr i8, ptr %pdata.0216.i, i32 14
  %sub.i = add nsw i32 %a_len.0217.i, -14
  %add18.i = add nuw nsw i32 %conv9.i, 12
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add18.i, i32 noundef 2592) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %while.end.i, label %if.end21.i

if.end21.i:                                       ; preds = %if.end15.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %64 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i201.i = getelementptr i8, ptr %65, i32 12
  store ptr %add.ptr.i201.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %66 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %67, i32 12
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i.i72 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv9.i) #9
  %68 = call ptr @memcpy(ptr %call.i.i72, ptr %add.ptr16.i, i32 %conv9.i)
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc.i = add nuw nsw i8 %nr_subframes.0215.i, 1
  %arrayidx.i = getelementptr [64 x ptr], ptr %subframes.i, i32 0, i32 %indvars.iv.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.i.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %indvars.iv.i)
  %exitcond.i = icmp eq i32 %indvars.iv.i, 63
  br i1 %exitcond.i, label %if.then27.i, label %if.end29.i

if.then27.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %pnetdev28.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pnetdev28.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %71, ptr noundef nonnull @.str.7) #13
  br label %for.body.lr.ph.i

if.end29.i:                                       ; preds = %if.end21.i
  %add.ptr31.i = getelementptr i8, ptr %add.ptr16.i, i32 %conv9.i
  %sub33.i = sub nsw i32 %sub.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv9.i)
  %cmp34.not.i = icmp eq i32 %sub.i, %conv9.i
  br i1 %cmp34.not.i, label %if.end29.i.for.body.lr.ph.i_crit_edge, label %if.then36.i

if.end29.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

if.then36.i:                                      ; preds = %if.end29.i
  %and.i = and i32 %add10.i, 3
  %sub39.i = sub nuw nsw i32 4, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp40.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %cmp40.i, i32 0, i32 %sub39.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33.i, i32 %spec.store.select.i)
  %cmp44.i = icmp slt i32 %sub33.i, %spec.store.select.i
  br i1 %cmp44.i, label %if.then36.i.amsdu_to_msdu.exit_crit_edge, label %if.end50.i

if.then36.i.amsdu_to_msdu.exit_crit_edge:         ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amsdu_to_msdu.exit

if.end50.i:                                       ; preds = %if.then36.i
  %add.ptr48.i = getelementptr i8, ptr %add.ptr31.i, i32 %spec.store.select.i
  %sub49.i = sub nsw i32 %sub33.i, %spec.store.select.i
  %cmp6.i = icmp sgt i32 %sub49.i, 14
  br i1 %cmp6.i, label %if.end50.i.while.body.i_crit_edge, label %if.end50.i.for.body.lr.ph.i_crit_edge

if.end50.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

if.end50.i.while.body.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end15.i
  %72 = trunc i32 %indvars.iv.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp53219.not.i = icmp eq i8 %72, 0
  br i1 %cmp53219.not.i, label %while.end.i.amsdu_to_msdu.exit_crit_edge, label %while.end.i.for.body.lr.ph.i_crit_edge

while.end.i.for.body.lr.ph.i_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

while.end.i.amsdu_to_msdu.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amsdu_to_msdu.exit

for.body.lr.ph.i:                                 ; preds = %while.end.i.for.body.lr.ph.i_crit_edge, %if.end50.i.for.body.lr.ph.i_crit_edge, %if.end29.i.for.body.lr.ph.i_crit_edge, %if.then27.i
  %nr_subframes.1237.i = phi i8 [ %72, %while.end.i.for.body.lr.ph.i_crit_edge ], [ 64, %if.then27.i ], [ %inc.i, %if.end29.i.for.body.lr.ph.i_crit_edge ], [ %inc.i, %if.end50.i.for.body.lr.ph.i_crit_edge ]
  %src91.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 5, i32 19
  %dst94.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 5, i32 18
  %tcpchk_valid.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 5, i32 23
  %tcp_chkrpt.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.089, i32 0, i32 5, i32 25
  %wide.trip.count.i = zext i8 %nr_subframes.1237.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv229.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next230.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx56.i = getelementptr [64 x ptr], ptr %subframes.i, i32 0, i32 %indvars.iv229.i
  %73 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx56.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 19
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i, align 4
  %arrayidx57.i = getelementptr i8, ptr %76, i32 6
  %77 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx57.i, align 1
  %conv58.i = zext i8 %78 to i16
  %shl59.i = shl nuw i16 %conv58.i, 8
  %arrayidx61.i = getelementptr i8, ptr %76, i32 7
  %79 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx61.i, align 1
  %conv62.i = zext i8 %80 to i16
  %or.i = or i16 %shl59.i, %conv62.i
  %len64.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 6
  %81 = ptrtoint ptr %len64.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %82)
  %cmp65.i = icmp ugt i32 %82, 7
  br i1 %cmp65.i, label %land.lhs.true.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %76, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #14
  %bcmp.fr.i = freeze i32 %bcmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.fr.i)
  %tobool69.not.not.i = icmp eq i32 %bcmp.fr.i, 0
  br i1 %tobool69.not.not.i, label %switch.early.test.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

switch.early.test.i:                              ; preds = %land.lhs.true.i
  %83 = zext i16 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %or.i, label %switch.early.test.i.if.then81.i_crit_edge [
    i16 -32457, label %switch.early.test.i.lor.lhs.false.i_crit_edge
    i16 -32525, label %switch.early.test.i.lor.lhs.false.i_crit_edge167
  ]

switch.early.test.i.lor.lhs.false.i_crit_edge167: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

switch.early.test.i.lor.lhs.false.i_crit_edge:    ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

switch.early.test.i.if.then81.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81.i

lor.lhs.false.i:                                  ; preds = %switch.early.test.i.lor.lhs.false.i_crit_edge, %switch.early.test.i.lor.lhs.false.i_crit_edge167, %land.lhs.true.i.lor.lhs.false.i_crit_edge
  %bcmp188.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %76, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp188.i)
  %tobool80.not.i = icmp eq i32 %bcmp188.i, 0
  br i1 %tobool80.not.i, label %lor.lhs.false.i.if.then81.i_crit_edge, label %lor.lhs.false.i.if.else.i_crit_edge

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

lor.lhs.false.i.if.then81.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81.i

if.then81.i:                                      ; preds = %lor.lhs.false.i.if.then81.i_crit_edge, %switch.early.test.i.if.then81.i_crit_edge
  %call82.i = tail call ptr @skb_pull(ptr noundef %74, i32 noundef 6) #9
  br label %if.end96.i

if.else.i:                                        ; preds = %lor.lhs.false.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %conv88.i = trunc i32 %82 to i16
  %call89.i = tail call ptr @skb_push(ptr noundef %74, i32 noundef 2) #9
  %84 = ptrtoint ptr %call89.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %conv88.i, ptr %call89.i, align 1
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.else.i, %if.then81.i
  %call90.i = tail call ptr @skb_push(ptr noundef %74, i32 noundef 6) #9
  %85 = call ptr @memcpy(ptr %call90.i, ptr %src91.i, i32 6)
  %call93.i = tail call ptr @skb_push(ptr noundef %74, i32 noundef 6) #9
  %86 = call ptr @memcpy(ptr %call93.i, ptr %dst94.i, i32 6)
  %tobool97.not.i = icmp eq ptr %74, null
  br i1 %tobool97.not.i, label %if.end96.i.for.inc.i_crit_edge, label %if.then98.i

if.end96.i.for.inc.i_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then98.i:                                      ; preds = %if.end96.i
  %87 = ptrtoint ptr %pnetdev28.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pnetdev28.i, align 8
  %call100.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %74, ptr noundef %88) #9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15, i32 0, i32 18
  %89 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %call100.i, ptr %protocol.i, align 8
  %90 = ptrtoint ptr %pnetdev28.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pnetdev28.i, align 8
  %92 = getelementptr inbounds %struct.anon.6, ptr %74, i32 0, i32 2
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %91, ptr %92, align 8
  %94 = ptrtoint ptr %tcpchk_valid.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %tcpchk_valid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp103.i = icmp eq i8 %95, 1
  br i1 %cmp103.i, label %land.lhs.true105.i, label %if.then98.i.if.else110.i_crit_edge

if.then98.i.if.else110.i_crit_edge:               ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else110.i

land.lhs.true105.i:                               ; preds = %if.then98.i
  %96 = ptrtoint ptr %tcp_chkrpt.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tcp_chkrpt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %97)
  %cmp107.i = icmp eq i8 %97, 1
  br i1 %cmp107.i, label %if.then109.i, label %land.lhs.true105.i.if.else110.i_crit_edge

land.lhs.true105.i.if.else110.i_crit_edge:        ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else110.i

if.then109.i:                                     ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #11
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15
  %98 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end115.i

if.else110.i:                                     ; preds = %land.lhs.true105.i.if.else110.i_crit_edge, %if.then98.i.if.else110.i_crit_edge
  %ip_summed111.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15
  %99 = ptrtoint ptr %ip_summed111.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load112.i = load i16, ptr %ip_summed111.i, align 8
  %bf.clear113.i = and i16 %bf.load112.i, -1537
  store i16 %bf.clear113.i, ptr %ip_summed111.i, align 8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.else110.i, %if.then109.i
  %call116.i = tail call i32 @netif_rx(ptr noundef nonnull %74) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end115.i, %if.end96.i.for.inc.i_crit_edge
  %indvars.iv.next230.i = add nuw nsw i32 %indvars.iv229.i, 1
  %exitcond231.not.i = icmp eq i32 %indvars.iv.next230.i, %wide.trip.count.i
  br i1 %exitcond231.not.i, label %for.inc.i.amsdu_to_msdu.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.amsdu_to_msdu.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amsdu_to_msdu.exit

amsdu_to_msdu.exit:                               ; preds = %for.inc.i.amsdu_to_msdu.exit_crit_edge, %while.end.i.amsdu_to_msdu.exit_crit_edge, %if.then36.i.amsdu_to_msdu.exit_crit_edge, %if.then13.i, %if.end.i.amsdu_to_msdu.exit_crit_edge
  %100 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %len.i, align 4
  tail call void @r8712_free_recvframe(ptr noundef %plist.089, ptr noundef %free_recv_queue.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %subframes.i) #9
  br label %if.end40

if.end40:                                         ; preds = %amsdu_to_msdu.exit, %if.then32, %land.lhs.true.if.end40_crit_edge, %if.then29.if.end40_crit_edge, %if.end27.if.end40_crit_edge
  %101 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i68.not = icmp eq ptr %102, %pending_recvframe_queue
  br i1 %cmp.i68.not, label %if.end40.cleanup_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end40.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_recv_indicatepkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_reordering_ctrl_timeout_handler(ptr noundef %pcontext) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcontext, align 4
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %driver_stopped, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %surprise_removed, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %do.body3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %pcontext, i32 0, i32 4, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call7 = tail call i32 @r8712_recv_indicatepkts_in_order(ptr noundef %1, ptr noundef %pcontext, i32 noundef 1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r8712_signal_scale_mapping(i32 noundef %cur_sig) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %cur_sig, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %0)
  %1 = icmp ult i32 %0, 50
  br i1 %1, label %entry.if.end52_crit_edge, label %if.else

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.else:                                          ; preds = %entry
  %2 = add i32 %cur_sig, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %3 = icmp ult i32 %2, 10
  br i1 %3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub = shl nuw nsw i32 %cur_sig, 1
  br label %if.end52

if.else6:                                         ; preds = %if.else
  %4 = add i32 %cur_sig, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  %add12 = add nuw nsw i32 %cur_sig, 36
  br label %if.end52

if.else13:                                        ; preds = %if.else6
  %6 = add i32 %cur_sig, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %7 = icmp ult i32 %6, 10
  br i1 %7, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  %add19 = add nuw nsw i32 %cur_sig, 34
  br label %if.end52

if.else20:                                        ; preds = %if.else13
  %8 = add i32 %cur_sig, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %8)
  %9 = icmp ult i32 %8, 11
  br i1 %9, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  %cur_sig.tr = trunc i32 %cur_sig to i8
  %10 = shl nuw nsw i8 %cur_sig.tr, 1
  %div79.lhs.trunc = add nsw i8 %10, -20
  %div7980 = udiv i8 %div79.lhs.trunc, 3
  %narrow = add nuw nsw i8 %div7980, 42
  %add27 = zext i8 %narrow to i32
  br label %if.end52

if.else28:                                        ; preds = %if.else20
  %11 = add i32 %cur_sig, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %if.then32, label %if.else37

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %13 = mul nuw nsw i32 %cur_sig, 3
  %div3581.lhs.trunc = add nuw nsw i32 %13, 241
  %div35818286 = lshr i32 %div3581.lhs.trunc, 1
  %div3581.zext = and i32 %div35818286, 127
  %add36 = add nuw nsw i32 %div3581.zext, 22
  br label %if.end52

if.else37:                                        ; preds = %if.else28
  %14 = add i32 %cur_sig, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %if.then41, label %if.else37.if.end52_crit_edge

if.else37.if.end52_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %16 = mul nuw nsw i32 %cur_sig, 3
  %div4483.lhs.trunc = add nuw nsw i32 %16, 253
  %div44838485 = lshr i32 %div4483.lhs.trunc, 1
  %div4483.zext = and i32 %div44838485, 127
  %add45 = add nuw nsw i32 %div4483.zext, 6
  br label %if.end52

if.end52:                                         ; preds = %if.then41, %if.else37.if.end52_crit_edge, %if.then32, %if.then24, %if.then17, %if.then10, %if.then5, %entry.if.end52_crit_edge
  %ret_sig.0 = phi i32 [ %sub, %if.then5 ], [ %add12, %if.then10 ], [ %add19, %if.then17 ], [ %add27, %if.then24 ], [ %add36, %if.then32 ], [ %add45, %if.then41 ], [ 100, %entry.if.end52_crit_edge ], [ %cur_sig, %if.else37.if.end52_crit_edge ]
  ret i32 %ret_sig.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @recv_func(ptr noundef %padapter, ptr noundef %pcontext) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %free_recv_queue = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 1
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %crc_err = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 17
  %3 = ptrtoint ptr %crc_err to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %crc_err, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp eq i8 %4, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %rx_crcerrpktcount = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 6
  %5 = ptrtoint ptr %rx_crcerrpktcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_crcerrpktcount, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %rx_crcerrpktcount, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %rx_pktcount = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 15, i32 5
  %7 = ptrtoint ptr %rx_pktcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_pktcount, align 4
  %inc5 = add i32 %8, 1
  store i32 %inc5, ptr %rx_pktcount, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %9 = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r8712_free_recvframe(ptr noundef %pcontext, ptr noundef %free_recv_queue)
  br label %_exit_recv_func

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %call11 = tail call i32 @r8712_validate_recv_frame(ptr noundef %padapter, ptr noundef %pcontext) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 1
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r8712_free_recvframe(ptr noundef %pcontext, ptr noundef %free_recv_queue)
  br label %_exit_recv_func

if.end15:                                         ; preds = %if.end10
  %rx_head.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 7
  %10 = ptrtoint ptr %rx_head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_head.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.recv_stat, ptr %11, i32 1
  %mcs_rate.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 28
  %12 = ptrtoint ptr %mcs_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mcs_rate.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp.i.i = icmp ult i8 %13, 4
  br i1 %cmp.i.i, label %if.then5.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end15
  %rf_config.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 37
  %14 = ptrtoint ptr %rf_config.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rf_config.i.i, align 1
  %16 = and i8 %15, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp159357.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp159357.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  %wide.trip.count.i.i = zext i8 %16 to i32
  br label %for.body.i.i

if.then5.i.i:                                     ; preds = %if.end15
  %cck_agc_rpt.i.i = getelementptr inbounds %struct.phy_cck_rx_status, ptr %add.ptr.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %cck_agc_rpt.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cck_agc_rpt.i.i, align 1
  %19 = lshr i8 %18, 3
  %20 = and i8 %19, 24
  %switch.shiftamt = zext i8 %20 to i32
  %switch.downshift = lshr i32 -655557106, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %21 = and i8 %18, 62
  %sub.i.i = sub nsw i8 %switch.masked, %21
  %22 = add nsw i8 %sub.i.i, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %22)
  %23 = icmp ult i8 %22, -119
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sub.i.i)
  %cmp6.i.i.i = icmp sgt i8 %sub.i.i, -1
  %add.i.op.i.i = add nsw i8 %sub.i.i, 106
  %24 = tail call i8 @llvm.umin.i8(i8 %add.i.op.i.i, i8 100) #9
  %25 = select i1 %cmp6.i.i.i, i8 100, i8 %24
  %26 = select i1 %23, i8 6, i8 %25
  %27 = add nsw i8 %26, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %27)
  %28 = icmp ult i8 %27, 8
  br i1 %28, label %if.then83.i.i, label %if.else87.i.i

if.then83.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub85.i.i = add nsw i8 %26, -2
  br label %if.else131.i.i

if.else87.i.i:                                    ; preds = %if.then5.i.i
  %29 = add nsw i8 %26, -27
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %30 = icmp ult i8 %29, 8
  br i1 %30, label %if.then95.i.i, label %if.else99.i.i

if.then95.i.i:                                    ; preds = %if.else87.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub97.i.i = add nsw i8 %26, -6
  br label %if.else131.i.i

if.else99.i.i:                                    ; preds = %if.else87.i.i
  %31 = add nsw i8 %26, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %31)
  %32 = icmp ult i8 %31, 12
  br i1 %32, label %if.then107.i.i, label %if.end126.i.i

if.then107.i.i:                                   ; preds = %if.else99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub109.i.i = add nsw i8 %26, -8
  br label %if.else131.i.i

if.end126.i.i:                                    ; preds = %if.else99.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %26)
  %cmp117.i.i = icmp ult i8 %26, 15
  %sub121.i.i = add nsw i8 %26, -4
  %spec.select.i.i = select i1 %cmp117.i.i, i8 %sub121.i.i, i8 %26
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %spec.select.i.i)
  %cmp128.i.i = icmp ugt i8 %spec.select.i.i, 40
  br i1 %cmp128.i.i, label %if.end126.i.i.if.then228.i.i_crit_edge, label %if.end126.i.i.if.else131.i.i_crit_edge

if.end126.i.i.if.else131.i.i_crit_edge:           ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else131.i.i

if.end126.i.i.if.then228.i.i_crit_edge:           ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then228.i.i

if.else131.i.i:                                   ; preds = %if.end126.i.i.if.else131.i.i_crit_edge, %if.then107.i.i, %if.then95.i.i, %if.then83.i.i
  %pwdb_all.0349.i.i = phi i8 [ %spec.select.i.i, %if.end126.i.i.if.else131.i.i_crit_edge ], [ %sub109.i.i, %if.then107.i.i ], [ %sub97.i.i, %if.then95.i.i ], [ %sub85.i.i, %if.then83.i.i ]
  %sq_rpt.i.i = getelementptr %struct.recv_stat, ptr %11, i32 1, i32 1
  %33 = ptrtoint ptr %sq_rpt.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sq_rpt.i.i, align 1
  %conv133.i.i = zext i8 %34 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %34)
  %cmp134.i.i = icmp ugt i8 %34, 64
  br i1 %cmp134.i.i, label %if.else131.i.i.if.then228.i.i_crit_edge, label %if.else137.i.i

if.else131.i.i.if.then228.i.i_crit_edge:          ; preds = %if.else131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then228.i.i

if.else137.i.i:                                   ; preds = %if.else131.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %34)
  %cmp140.i.i = icmp ult i8 %34, 20
  br i1 %cmp140.i.i, label %if.else137.i.i.if.then228.i.i_crit_edge, label %if.else143.i.i

if.else137.i.i.if.then228.i.i_crit_edge:          ; preds = %if.else137.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then228.i.i

if.else143.i.i:                                   ; preds = %if.else137.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub145.i.i = sub nsw i16 64, %conv133.i.i
  %mul.i.i = mul nsw i16 %sub145.i.i, 100
  %div355.i.i = sdiv i16 %mul.i.i, 44
  %conv146.i.i = trunc i16 %div355.i.i to i8
  br label %if.then228.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %total_rssi.0359.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %add174.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx163.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %indvars.iv.i.i
  %35 = ptrtoint ptr %arrayidx163.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx163.i.i, align 1
  %37 = shl i8 %36, 1
  %38 = and i8 %37, 126
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %38)
  %39 = icmp ult i8 %38, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %38)
  %cmp6.i309.i.i = icmp ugt i8 %38, 109
  %add.i310.i.i = add nsw i8 %38, -10
  %spec.select.i311.i.i = select i1 %cmp6.i309.i.i, i8 100, i8 %add.i310.i.i
  %retval.0.i312.i.i = select i1 %39, i8 0, i8 %spec.select.i311.i.i
  %conv173.i.i = zext i8 %retval.0.i312.i.i to i32
  %add174.i.i = add i32 %total_rssi.0359.i.i, %conv173.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %total_rssi.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %add174.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %htc.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 29
  %40 = ptrtoint ptr %htc.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %htc.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool185.not.i.i = icmp ne i8 %41, 0
  %42 = add i8 %13, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %43 = icmp ult i8 %42, 8
  %or.cond.i.i = select i1 %tobool185.not.i.i, i1 %43, i1 false
  %max_spatial_stream.0.i.i = select i1 %or.cond.i.i, i32 2, i32 1
  %signal_qual215.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 26
  br label %for.body206.i.i

for.body206.i.i:                                  ; preds = %for.body206.i.i.for.body206.i.i_crit_edge, %for.end.i.i
  %indvars.iv364.i.i = phi i32 [ 0, %for.end.i.i ], [ %indvars.iv.next365.i.i, %for.body206.i.i.for.body206.i.i_crit_edge ]
  %add208.i.i = add nuw nsw i32 %indvars.iv364.i.i, 13
  %arrayidx209.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add208.i.i
  %44 = ptrtoint ptr %arrayidx209.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx209.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.i.i.i = icmp slt i8 %45, 0
  %conv.i.i.i = sext i8 %45 to i32
  %sub.i.i.i = sub nsw i32 0, %conv.i.i.i
  %46 = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 33) #9
  %47 = trunc i32 %46 to i8
  %.op.i.i.i = mul i8 %47, 3
  %conv9.i.i.i = select i1 %cmp.i.i.i, i8 %.op.i.i.i, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %conv9.i.i.i)
  %cmp11.i.i.i = icmp eq i8 %conv9.i.i.i, 99
  %spec.store.select.i.i.i = select i1 %cmp11.i.i.i, i8 100, i8 %conv9.i.i.i
  %48 = ptrtoint ptr %signal_qual215.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %spec.store.select.i.i.i, ptr %signal_qual215.i.i, align 2
  %arrayidx222.i.i = getelementptr %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 27, i32 %indvars.iv364.i.i
  %49 = ptrtoint ptr %arrayidx222.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %spec.store.select.i.i.i, ptr %arrayidx222.i.i, align 1
  %indvars.iv.next365.i.i = add nuw nsw i32 %indvars.iv364.i.i, 1
  %exitcond366.not.i.i = icmp eq i32 %indvars.iv.next365.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond366.not.i.i, label %if.else233.i.i, label %for.body206.i.i.for.body206.i.i_crit_edge

for.body206.i.i.for.body206.i.i_crit_edge:        ; preds = %for.body206.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body206.i.i

if.then228.i.i:                                   ; preds = %if.else143.i.i, %if.else137.i.i.if.then228.i.i_crit_edge, %if.else131.i.i.if.then228.i.i_crit_edge, %if.end126.i.i.if.then228.i.i_crit_edge
  %pwdb_all.0350.i.i = phi i8 [ %pwdb_all.0349.i.i, %if.else143.i.i ], [ %spec.select.i.i, %if.end126.i.i.if.then228.i.i_crit_edge ], [ %pwdb_all.0349.i.i, %if.else131.i.i.if.then228.i.i_crit_edge ], [ %pwdb_all.0349.i.i, %if.else137.i.i.if.then228.i.i_crit_edge ]
  %sq.0.i.i = phi i8 [ %conv146.i.i, %if.else143.i.i ], [ 100, %if.end126.i.i.if.then228.i.i_crit_edge ], [ 0, %if.else131.i.i.if.then228.i.i_crit_edge ], [ 100, %if.else137.i.i.if.then228.i.i_crit_edge ]
  %signal_qual.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 26
  %50 = ptrtoint ptr %signal_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %sq.0.i.i, ptr %signal_qual.i.i, align 2
  %rx_mimo_signal_qual.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 27
  %51 = ptrtoint ptr %rx_mimo_signal_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %sq.0.i.i, ptr %rx_mimo_signal_qual.i.i, align 1
  %arrayidx154.i.i = getelementptr %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 27, i32 1
  %52 = ptrtoint ptr %arrayidx154.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %arrayidx154.i.i, align 1
  %conv229.i.i = zext i8 %pwdb_all.0350.i.i to i32
  %53 = add nsw i32 %conv229.i.i, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %53)
  %54 = icmp ult i32 %53, 50
  br i1 %54, label %if.then228.i.i.if.end245.sink.split.i.i_crit_edge, label %if.else.i.i.i

if.then228.i.i.if.end245.sink.split.i.i_crit_edge: ; preds = %if.then228.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245.sink.split.i.i

if.else.i.i.i:                                    ; preds = %if.then228.i.i
  %55 = add nsw i32 %conv229.i.i, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %55)
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %if.then5.i.i.i, label %if.else6.i.i.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i317.i.i = shl nuw nsw i32 %conv229.i.i, 1
  br label %if.end245.sink.split.i.i

if.else6.i.i.i:                                   ; preds = %if.else.i.i.i
  %57 = add nsw i32 %conv229.i.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %57)
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %if.then10.i.i.i, label %if.else13.i.i.i

if.then10.i.i.i:                                  ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i.i.i = add nuw nsw i32 %conv229.i.i, 36
  br label %if.end245.sink.split.i.i

if.else13.i.i.i:                                  ; preds = %if.else6.i.i.i
  %59 = add nsw i32 %conv229.i.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %59)
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %if.then17.i.i.i, label %if.else20.i.i.i

if.then17.i.i.i:                                  ; preds = %if.else13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add19.i.i.i = add nuw nsw i32 %conv229.i.i, 34
  br label %if.end245.sink.split.i.i

if.else20.i.i.i:                                  ; preds = %if.else13.i.i.i
  %61 = add nsw i32 %conv229.i.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %61)
  %62 = icmp ult i32 %61, 11
  br i1 %62, label %if.then24.i.i.i, label %if.else28.i.i.i

if.then24.i.i.i:                                  ; preds = %if.else20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = shl nuw nsw i8 %pwdb_all.0350.i.i, 1
  %div79.lhs.trunc.i.i.i = add nsw i8 %63, -20
  %div7980.i.i.i = udiv i8 %div79.lhs.trunc.i.i.i, 3
  %narrow.i.i.i = add nuw nsw i8 %div7980.i.i.i, 42
  %add27.i.i.i = zext i8 %narrow.i.i.i to i32
  br label %if.end245.sink.split.i.i

if.else28.i.i.i:                                  ; preds = %if.else20.i.i.i
  %64 = add nsw i32 %conv229.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %64)
  %65 = icmp ult i32 %64, 5
  br i1 %65, label %if.then32.i.i.i, label %if.else37.i.i.i

if.then32.i.i.i:                                  ; preds = %if.else28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = mul nuw nsw i32 %conv229.i.i, 3
  %div3581.lhs.trunc.i.i.i = add nuw nsw i32 %66, 241
  %div35818286.i.i.i = lshr i32 %div3581.lhs.trunc.i.i.i, 1
  %div3581.zext.i.i.i = and i32 %div35818286.i.i.i, 127
  %add36.i.i.i = add nuw nsw i32 %div3581.zext.i.i.i, 22
  br label %if.end245.sink.split.i.i

if.else37.i.i.i:                                  ; preds = %if.else28.i.i.i
  %67 = add nsw i32 %conv229.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %if.then41.i.i.i, label %if.else37.i.i.i.if.end245.sink.split.i.i_crit_edge

if.else37.i.i.i.if.end245.sink.split.i.i_crit_edge: ; preds = %if.else37.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245.sink.split.i.i

if.then41.i.i.i:                                  ; preds = %if.else37.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = mul nuw nsw i32 %conv229.i.i, 3
  %div4483.lhs.trunc.i.i.i = add nuw nsw i32 %69, 253
  %div44838485.i.i.i = lshr i32 %div4483.lhs.trunc.i.i.i, 1
  %div4483.zext.i.i.i = and i32 %div44838485.i.i.i, 127
  %add45.i.i.i = add nuw nsw i32 %div4483.zext.i.i.i, 6
  br label %if.end245.sink.split.i.i

if.else233.i.i:                                   ; preds = %for.body206.i.i
  br i1 %cmp159357.not.i.i, label %if.else233.i.i.query_rx_phy_status.exit.i_crit_edge, label %if.then237.i.i

if.else233.i.i.query_rx_phy_status.exit.i_crit_edge: ; preds = %if.else233.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %query_rx_phy_status.exit.i

if.then237.i.i:                                   ; preds = %if.else233.i.i
  %conv234.i.i = zext i8 %16 to i32
  %div239.i.i = udiv i32 %total_rssi.0.lcssa.i.i, %conv234.i.i
  %70 = add i32 %div239.i.i, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %70)
  %71 = icmp ult i32 %70, 50
  br i1 %71, label %if.then237.i.i.if.end245.sink.split.i.i_crit_edge, label %if.else.i318.i.i

if.then237.i.i.if.end245.sink.split.i.i_crit_edge: ; preds = %if.then237.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245.sink.split.i.i

if.else.i318.i.i:                                 ; preds = %if.then237.i.i
  %72 = add i32 %div239.i.i, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %72)
  %73 = icmp ult i32 %72, 10
  br i1 %73, label %if.then5.i320.i.i, label %if.else6.i321.i.i

if.then5.i320.i.i:                                ; preds = %if.else.i318.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i319.i.i = shl nuw nsw i32 %div239.i.i, 1
  br label %if.end245.sink.split.i.i

if.else6.i321.i.i:                                ; preds = %if.else.i318.i.i
  %74 = add i32 %div239.i.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %74)
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %if.then10.i323.i.i, label %if.else13.i324.i.i

if.then10.i323.i.i:                               ; preds = %if.else6.i321.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i322.i.i = add nuw nsw i32 %div239.i.i, 36
  br label %if.end245.sink.split.i.i

if.else13.i324.i.i:                               ; preds = %if.else6.i321.i.i
  %76 = add i32 %div239.i.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %76)
  %77 = icmp ult i32 %76, 10
  br i1 %77, label %if.then17.i326.i.i, label %if.else20.i327.i.i

if.then17.i326.i.i:                               ; preds = %if.else13.i324.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add19.i325.i.i = add nuw nsw i32 %div239.i.i, 34
  br label %if.end245.sink.split.i.i

if.else20.i327.i.i:                               ; preds = %if.else13.i324.i.i
  %78 = add i32 %div239.i.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %78)
  %79 = icmp ult i32 %78, 11
  br i1 %79, label %if.then24.i332.i.i, label %if.else28.i333.i.i

if.then24.i332.i.i:                               ; preds = %if.else20.i327.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cur_sig.tr.i.i.i = trunc i32 %div239.i.i to i8
  %80 = shl nuw nsw i8 %cur_sig.tr.i.i.i, 1
  %div79.lhs.trunc.i328.i.i = add nsw i8 %80, -20
  %div7980.i329.i.i = udiv i8 %div79.lhs.trunc.i328.i.i, 3
  %narrow.i330.i.i = add nuw nsw i8 %div7980.i329.i.i, 42
  %add27.i331.i.i = zext i8 %narrow.i330.i.i to i32
  br label %if.end245.sink.split.i.i

if.else28.i333.i.i:                               ; preds = %if.else20.i327.i.i
  %81 = add i32 %div239.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %81)
  %82 = icmp ult i32 %81, 5
  br i1 %82, label %if.then32.i338.i.i, label %if.else37.i339.i.i

if.then32.i338.i.i:                               ; preds = %if.else28.i333.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = mul nuw nsw i32 %div239.i.i, 3
  %div3581.lhs.trunc.i334.i.i = add nuw nsw i32 %83, 241
  %div35818286.i335.i.i = lshr i32 %div3581.lhs.trunc.i334.i.i, 1
  %div3581.zext.i336.i.i = and i32 %div35818286.i335.i.i, 127
  %add36.i337.i.i = add nuw nsw i32 %div3581.zext.i336.i.i, 22
  br label %if.end245.sink.split.i.i

if.else37.i339.i.i:                               ; preds = %if.else28.i333.i.i
  %84 = add i32 %div239.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %85 = icmp ult i32 %84, 4
  br i1 %85, label %if.then41.i344.i.i, label %if.else37.i339.i.i.if.end245.sink.split.i.i_crit_edge

if.else37.i339.i.i.if.end245.sink.split.i.i_crit_edge: ; preds = %if.else37.i339.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245.sink.split.i.i

if.then41.i344.i.i:                               ; preds = %if.else37.i339.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = mul nuw nsw i32 %div239.i.i, 3
  %div4483.lhs.trunc.i340.i.i = add nuw nsw i32 %86, 253
  %div44838485.i341.i.i = lshr i32 %div4483.lhs.trunc.i340.i.i, 1
  %div4483.zext.i342.i.i = and i32 %div44838485.i341.i.i, 127
  %add45.i343.i.i = add nuw nsw i32 %div4483.zext.i342.i.i, 6
  br label %if.end245.sink.split.i.i

if.end245.sink.split.i.i:                         ; preds = %if.then41.i344.i.i, %if.else37.i339.i.i.if.end245.sink.split.i.i_crit_edge, %if.then32.i338.i.i, %if.then24.i332.i.i, %if.then17.i326.i.i, %if.then10.i323.i.i, %if.then5.i320.i.i, %if.then237.i.i.if.end245.sink.split.i.i_crit_edge, %if.then41.i.i.i, %if.else37.i.i.i.if.end245.sink.split.i.i_crit_edge, %if.then32.i.i.i, %if.then24.i.i.i, %if.then17.i.i.i, %if.then10.i.i.i, %if.then5.i.i.i, %if.then228.i.i.if.end245.sink.split.i.i_crit_edge
  %ret_sig.0.i345.sink.i.i = phi i32 [ %sub.i317.i.i, %if.then5.i.i.i ], [ %add12.i.i.i, %if.then10.i.i.i ], [ %add19.i.i.i, %if.then17.i.i.i ], [ %add27.i.i.i, %if.then24.i.i.i ], [ %add36.i.i.i, %if.then32.i.i.i ], [ %add45.i.i.i, %if.then41.i.i.i ], [ 100, %if.then228.i.i.if.end245.sink.split.i.i_crit_edge ], [ 0, %if.else37.i.i.i.if.end245.sink.split.i.i_crit_edge ], [ %sub.i319.i.i, %if.then5.i320.i.i ], [ %add12.i322.i.i, %if.then10.i323.i.i ], [ %add19.i325.i.i, %if.then17.i326.i.i ], [ %add27.i331.i.i, %if.then24.i332.i.i ], [ %add36.i337.i.i, %if.then32.i338.i.i ], [ %add45.i343.i.i, %if.then41.i344.i.i ], [ 100, %if.then237.i.i.if.end245.sink.split.i.i_crit_edge ], [ %div239.i.i, %if.else37.i339.i.i.if.end245.sink.split.i.i_crit_edge ]
  %conv241.i.i = trunc i32 %ret_sig.0.i345.sink.i.i to i8
  %signal_strength243.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 30
  %87 = ptrtoint ptr %signal_strength243.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv241.i.i, ptr %signal_strength243.i.i, align 1
  br label %query_rx_phy_status.exit.i

query_rx_phy_status.exit.i:                       ; preds = %if.end245.sink.split.i.i, %if.else233.i.i.query_rx_phy_status.exit.i_crit_edge
  %signal_strength_data.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 28
  %total_num.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 28, i32 2
  %88 = ptrtoint ptr %total_num.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %total_num.i.i, align 4
  %inc.i.i = add i32 %89, 1
  store i32 %inc.i.i, ptr %total_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %89)
  %cmp.i5.i = icmp ugt i32 %89, 99
  br i1 %cmp.i5.i, label %if.then.i.i, label %query_rx_phy_status.exit.i.if.end.i7.i_crit_edge

query_rx_phy_status.exit.i.if.end.i7.i_crit_edge: ; preds = %query_rx_phy_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i7.i

if.then.i.i:                                      ; preds = %query_rx_phy_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %total_num.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 100, ptr %total_num.i.i, align 4
  %index.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 28, i32 1
  %91 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %index.i.i, align 4
  %arrayidx.i.i = getelementptr [100 x i32], ptr %signal_strength_data.i.i, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i.i, align 4
  %total_val.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 28, i32 3
  %95 = ptrtoint ptr %total_val.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %total_val.i.i, align 4
  %sub.i6.i = sub i32 %96, %94
  store i32 %sub.i6.i, ptr %total_val.i.i, align 4
  br label %if.end.i7.i

if.end.i7.i:                                      ; preds = %if.then.i.i, %query_rx_phy_status.exit.i.if.end.i7.i_crit_edge
  %signal_strength.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 30
  %97 = ptrtoint ptr %signal_strength.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %signal_strength.i.i, align 1
  %conv.i.i = zext i8 %98 to i32
  %total_val2.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 28, i32 3
  %99 = ptrtoint ptr %total_val2.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %total_val2.i.i, align 4
  %add.i.i = add i32 %100, %conv.i.i
  store i32 %add.i.i, ptr %total_val2.i.i, align 4
  %101 = load i8, ptr %signal_strength.i.i, align 1
  %conv4.i.i = zext i8 %101 to i32
  %index6.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 28, i32 1
  %102 = ptrtoint ptr %index6.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %index6.i.i, align 4
  %inc7.i.i = add i32 %103, 1
  store i32 %inc7.i.i, ptr %index6.i.i, align 4
  %arrayidx8.i.i = getelementptr [100 x i32], ptr %signal_strength_data.i.i, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv4.i.i, ptr %arrayidx8.i.i, align 4
  %105 = load i32, ptr %index6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %105)
  %cmp10.i.i = icmp ugt i32 %105, 99
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.end.i7.i.process_rssi.exit.i_crit_edge

if.end.i7.i.process_rssi.exit.i_crit_edge:        ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_rssi.exit.i

if.then12.i.i:                                    ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %index6.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %index6.i.i, align 4
  br label %process_rssi.exit.i

process_rssi.exit.i:                              ; preds = %if.then12.i.i, %if.end.i7.i.process_rssi.exit.i_crit_edge
  %107 = ptrtoint ptr %total_val2.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %total_val2.i.i, align 4
  %109 = ptrtoint ptr %total_num.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %total_num.i.i, align 4
  %div.i.i = udiv i32 %108, %110
  %conv.i.i8.i = and i32 %div.i.i, 255
  %add.i.i.i = add nuw nsw i32 %conv.i.i8.i, 1
  %111 = lshr i32 %add.i.i.i, 1
  %112 = trunc i32 %111 to i8
  %conv18.i.i = add i8 %112, -95
  %rssi.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 23
  %113 = ptrtoint ptr %rssi.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv18.i.i, ptr %rssi.i.i, align 8
  %signal_qual_data.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27
  %tobool.not.i.i = icmp eq ptr %pcontext, null
  %tobool1.not.i.i = icmp eq ptr %padapter, null
  %or.cond.i9.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i9.i, label %process_rssi.exit.i.process_phy_info.exit_crit_edge, label %if.end.i11.i

process_rssi.exit.i.process_phy_info.exit_crit_edge: ; preds = %process_rssi.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_phy_info.exit

if.end.i11.i:                                     ; preds = %process_rssi.exit.i
  %signal_qual.i10.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %pcontext, i32 0, i32 5, i32 26
  %114 = ptrtoint ptr %signal_qual.i10.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %signal_qual.i10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp.not.i.i = icmp eq i8 %115, 0
  br i1 %cmp.not.i.i, label %if.end.i11.i.process_phy_info.exit_crit_edge, label %if.then3.i.i

if.end.i11.i.process_phy_info.exit_crit_edge:     ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_phy_info.exit

if.then3.i.i:                                     ; preds = %if.end.i11.i
  %total_num.i12.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 2
  %116 = ptrtoint ptr %total_num.i12.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %total_num.i12.i, align 4
  %inc.i13.i = add i32 %117, 1
  store i32 %inc.i13.i, ptr %total_num.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %117)
  %cmp4.i.i = icmp ugt i32 %117, 19
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.then3.i.i.if.end8.i.i_crit_edge

if.then3.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %total_num.i12.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 20, ptr %total_num.i12.i, align 4
  %index.i14.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 1
  %119 = ptrtoint ptr %index.i14.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %index.i14.i, align 4
  %arrayidx.i15.i = getelementptr [100 x i32], ptr %signal_qual_data.i.i, i32 0, i32 %120
  %121 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i15.i, align 4
  %total_val.i16.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 3
  %123 = ptrtoint ptr %total_val.i16.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %total_val.i16.i, align 4
  %sub.i17.i = sub i32 %124, %122
  store i32 %sub.i17.i, ptr %total_val.i16.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6.i.i, %if.then3.i.i.if.end8.i.i_crit_edge
  %125 = ptrtoint ptr %signal_qual.i10.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %signal_qual.i10.i, align 2
  %conv10.i18.i = zext i8 %126 to i32
  %total_val11.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 3
  %127 = ptrtoint ptr %total_val11.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %total_val11.i.i, align 4
  %add.i19.i = add i32 %128, %conv10.i18.i
  store i32 %add.i19.i, ptr %total_val11.i.i, align 4
  %129 = load i8, ptr %signal_qual.i10.i, align 2
  %conv13.i.i = zext i8 %129 to i32
  %index15.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 1
  %130 = ptrtoint ptr %index15.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %index15.i.i, align 4
  %inc16.i.i = add i32 %131, 1
  store i32 %inc16.i.i, ptr %index15.i.i, align 4
  %arrayidx17.i.i = getelementptr [100 x i32], ptr %signal_qual_data.i.i, i32 0, i32 %131
  %132 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv13.i.i, ptr %arrayidx17.i.i, align 4
  %133 = load i32, ptr %index15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %133)
  %cmp19.i.i = icmp ugt i32 %133, 19
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.end8.i.i.if.end23.i.i_crit_edge

if.end8.i.i.if.end23.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.then21.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %index15.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %index15.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then21.i.i, %if.end8.i.i.if.end23.i.i_crit_edge
  %135 = ptrtoint ptr %total_val11.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %total_val11.i.i, align 4
  %137 = ptrtoint ptr %total_num.i12.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %total_num.i12.i, align 4
  %div.i20.i = udiv i32 %136, %138
  %conv26.i.i = trunc i32 %div.i20.i to i8
  %signal.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 24
  %139 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv26.i.i, ptr %signal.i.i, align 1
  br label %process_phy_info.exit

process_phy_info.exit:                            ; preds = %if.end23.i.i, %if.end.i11.i.process_phy_info.exit_crit_edge, %process_rssi.exit.i.process_phy_info.exit_crit_edge
  %call16 = tail call ptr @r8712_decryptor(ptr noundef %padapter, ptr noundef %pcontext) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %process_phy_info.exit._exit_recv_func_crit_edge, label %if.end19

process_phy_info.exit._exit_recv_func_crit_edge:  ; preds = %process_phy_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %_exit_recv_func

if.end19:                                         ; preds = %process_phy_info.exit
  %call20 = tail call ptr @r8712_recvframe_chk_defrag(ptr noundef %padapter, ptr noundef nonnull %call16)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19._exit_recv_func_crit_edge, label %if.end23

if.end19._exit_recv_func_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %_exit_recv_func

if.end23:                                         ; preds = %if.end19
  %call24 = tail call ptr @r8712_portctrl(ptr noundef %padapter, ptr noundef nonnull %call20) #9
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23._exit_recv_func_crit_edge, label %if.end27

if.end23._exit_recv_func_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %_exit_recv_func

if.end27:                                         ; preds = %if.end23
  %htpriv.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 21
  %140 = ptrtoint ptr %htpriv.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %htpriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp.i = icmp eq i32 %141, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end27
  %attrib.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call24, i32 0, i32 5
  %preorder_ctrl1.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call24, i32 0, i32 13
  %142 = ptrtoint ptr %preorder_ctrl1.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %preorder_ctrl1.i.i, align 4
  %144 = ptrtoint ptr %attrib.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %attrib.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i.i63 = icmp eq i8 %145, 0
  br i1 %tobool.not.i.i63, label %if.then.i.i65, label %if.then.i.do.body8.i.i_crit_edge

if.then.i.do.body8.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8.i.i

if.then.i.i65:                                    ; preds = %if.then.i
  %call.i.i = tail call i32 @r8712_wlanhdr_to_ethhdr(ptr noundef nonnull %call24) #9
  %qos.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call24, i32 0, i32 5, i32 2
  %146 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %qos.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %147)
  %cmp.not.i.i64 = icmp eq i8 %147, 1
  br i1 %cmp.not.i.i64, label %if.then.i.i65.do.body8.i.i_crit_edge, label %if.then3.i.i66

if.then.i.i65.do.body8.i.i_crit_edge:             ; preds = %if.then.i.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8.i.i

if.then3.i.i66:                                   ; preds = %if.then.i.i65
  %driver_stopped.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %148 = ptrtoint ptr %driver_stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %driver_stopped.i.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool4.not.i.i = icmp eq i8 %149, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %if.then3.i.i66.if.then2.i_crit_edge

if.then3.i.i66.if.then2.i_crit_edge:              ; preds = %if.then3.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

land.lhs.true.i.i:                                ; preds = %if.then3.i.i66
  %surprise_removed.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %150 = ptrtoint ptr %surprise_removed.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %surprise_removed.i.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool5.not.i.i = icmp eq i8 %151, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i67, label %land.lhs.true.i.i.if.then2.i_crit_edge

land.lhs.true.i.i.if.then2.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

if.then6.i.i67:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r8712_recv_indicatepkt(ptr noundef %padapter, ptr noundef nonnull %call24) #9
  br label %_exit_recv_func

do.body8.i.i:                                     ; preds = %if.then.i.i65.do.body8.i.i_crit_edge, %if.then.i.do.body8.i.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %143, i32 0, i32 4, i32 1
  %call12.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %seq_num.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call24, i32 0, i32 5, i32 5
  %152 = ptrtoint ptr %seq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %seq_num.i.i, align 2
  %wsize_b.i.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %143, i32 0, i32 3
  %154 = ptrtoint ptr %wsize_b.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %wsize_b.i.i.i, align 4
  %indicate_seq.i.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %143, i32 0, i32 1
  %156 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %indicate_seq.i.i.i, align 4
  %conv.i.i.i68 = zext i16 %157 to i32
  %conv1.i.i.i = zext i8 %155 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %157)
  %cmp.i.i.i69 = icmp eq i16 %157, -1
  br i1 %cmp.i.i.i69, label %if.then.i.i.i, label %do.body8.i.i.if.end.i.i.i_crit_edge

do.body8.i.i.if.end.i.i.i_crit_edge:              ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %153, ptr %indicate_seq.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %do.body8.i.i.if.end.i.i.i_crit_edge
  %conv7.i.i.i = zext i16 %153 to i32
  %159 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %indicate_seq.i.i.i, align 4
  %conv9.i.i.i70 = zext i16 %160 to i32
  %sub10.i.i.i = sub nsw i32 %conv7.i.i.i, %conv9.i.i.i70
  %and.i.i.i = and i32 %sub10.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp11.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp11.not.i.i.i, label %if.end14.i.i.i, label %if.end.i.i.i._err_exit.i.i_crit_edge

if.end.i.i.i._err_exit.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_err_exit.i.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %160, i16 %153)
  %cmp18.i.i.i = icmp eq i16 %160, %153
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %if.else.i.i.i73

if.then20.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add23.i.i.i = add i16 %153, 1
  %rem24.i.i.i = and i16 %add23.i.i.i, 4095
  br label %cleanup.sink.split.i.i.i

if.else.i.i.i73:                                  ; preds = %if.end14.i.i.i
  %add.i.i.i71 = sub nsw i32 4095, %conv7.i.i.i
  %sub.i.i.i72 = add nsw i32 %add.i.i.i71, %conv1.i.i.i
  %sub29.i.i.i = add nsw i32 %sub.i.i.i72, %conv.i.i.i68
  %and30.i.i.i = and i32 %sub29.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i.i)
  %cmp31.not.i.i.i = icmp eq i32 %and30.i.i.i, 0
  br i1 %cmp31.not.i.i.i, label %if.else.i.i.i73.if.end18.i.i_crit_edge, label %if.then33.i.i.i

if.else.i.i.i73.if.end18.i.i_crit_edge:           ; preds = %if.else.i.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i.i

if.then33.i.i.i:                                  ; preds = %if.else.i.i.i73
  %sub36.i.i.i = add nsw i32 %conv1.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36.i.i.i, i32 %conv7.i.i.i)
  %cmp37.not.i.i.i = icmp sgt i32 %sub36.i.i.i, %conv7.i.i.i
  br i1 %cmp37.not.i.i.i, label %if.else46.i.i.i, label %if.then39.i.i.i

if.then39.i.i.i:                                  ; preds = %if.then33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add41.i.i.i = add nuw nsw i32 %conv7.i.i.i, 1
  %sub43.i.i.i = sub nsw i32 %add41.i.i.i, %conv1.i.i.i
  %conv44.i.i.i = trunc i32 %sub43.i.i.i to i16
  br label %cleanup.sink.split.i.i.i

if.else46.i.i.i:                                  ; preds = %if.then33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add49.neg.i.i.i = xor i32 %conv7.i.i.i, -1
  %sub50.i.i.i = add nsw i32 %conv1.i.i.i, %add49.neg.i.i.i
  %161 = trunc i32 %sub50.i.i.i to i16
  %conv53.i.i.i = sub i16 4096, %161
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.else46.i.i.i, %if.then39.i.i.i, %if.then20.i.i.i
  %rem24.sink.i.i.i = phi i16 [ %rem24.i.i.i, %if.then20.i.i.i ], [ %conv44.i.i.i, %if.then39.i.i.i ], [ %conv53.i.i.i, %if.else46.i.i.i ]
  %162 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %rem24.sink.i.i.i, ptr %indicate_seq.i.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %cleanup.sink.split.i.i.i, %if.else.i.i.i73.if.end18.i.i_crit_edge
  %pending_recvframe_queue.i.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %143, i32 0, i32 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i61.i.i.while.cond.i.i.i_crit_edge, %if.end18.i.i
  %plist.0.in.i.i.i = phi ptr [ %pending_recvframe_queue.i.i.i, %if.end18.i.i ], [ %plist.0.i.i.i, %if.end.i61.i.i.while.cond.i.i.i_crit_edge ]
  %163 = ptrtoint ptr %plist.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %plist.0.i.i.i = load ptr, ptr %plist.0.in.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %pending_recvframe_queue.i.i.i, %plist.0.i.i.i
  br i1 %cmp.i.not.i.i.i, label %while.cond.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %seq_num.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0.i.i.i, i32 0, i32 5, i32 5
  %164 = ptrtoint ptr %seq_num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %seq_num.i.i.i, align 2
  %166 = ptrtoint ptr %seq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %seq_num.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %165, i16 %167)
  %cmp.i57.i.i = icmp eq i16 %165, %167
  br i1 %cmp.i57.i.i, label %while.body.i.i.i._err_exit.i.i_crit_edge, label %if.end.i61.i.i

while.body.i.i.i._err_exit.i.i_crit_edge:         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_err_exit.i.i

if.end.i61.i.i:                                   ; preds = %while.body.i.i.i
  %conv3.i.i.i = zext i16 %167 to i32
  %conv.i58.i.i = zext i16 %165 to i32
  %sub.i59.i.i = sub nsw i32 %conv.i58.i.i, %conv3.i.i.i
  %and.i60.i.i = and i32 %sub.i59.i.i, 2048
  %cmp9.not.i.i.i = icmp eq i32 %and.i60.i.i, 0
  br i1 %cmp9.not.i.i.i, label %if.end.i61.i.i.while.end.i.i.i_crit_edge, label %if.end.i61.i.i.while.cond.i.i.i_crit_edge

if.end.i61.i.i.while.cond.i.i.i_crit_edge:        ; preds = %if.end.i61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

if.end.i61.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end.i61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %if.end.i61.i.i.while.end.i.i.i_crit_edge, %while.cond.i.i.i.while.end.i.i.i_crit_edge
  %plist.0.lcssa.i.i.i = phi ptr [ %plist.0.i.i.i, %if.end.i61.i.i.while.end.i.i.i_crit_edge ], [ %pending_recvframe_queue.i.i.i, %while.cond.i.i.i.while.end.i.i.i_crit_edge ]
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call24) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %while.end.i.i.i.list_del_init.exit.i.i.i_crit_edge

while.end.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call24, i32 0, i32 1
  %168 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %170 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %call24, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %prev1.i.i.i.i.i.i, align 4
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %171, ptr %169, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %while.end.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %174 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %call24, ptr %call24, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call24, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call24, ptr %prev.i3.i.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.0.lcssa.i.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i28.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call24, ptr noundef %177, ptr noundef %plist.0.lcssa.i.i.i) #9
  br i1 %call.i.i28.i.i.i, label %if.end.i.i29.i.i.i, label %list_del_init.exit.i.i.i.if.end22.i.i_crit_edge

list_del_init.exit.i.i.i.if.end22.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.end.i.i29.i.i.i:                               ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %178 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call24, ptr %prev.i.i.i.i, align 4
  %179 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %plist.0.lcssa.i.i.i, ptr %call24, align 4
  %180 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %177, ptr %prev.i3.i.i.i.i, align 4
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %call24, ptr %177, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.end.i.i29.i.i.i, %list_del_init.exit.i.i.i.if.end22.i.i_crit_edge
  %call23.i.i = tail call i32 @r8712_recv_indicatepkts_in_order(ptr noundef %padapter, ptr noundef %143, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.else29.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %reordering_ctrl_timer.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %143, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %182 = load volatile i32, ptr @jiffies, align 128
  %add.i.i74 = add i32 %182, 3
  %call27.i.i = tail call i32 @mod_timer(ptr noundef %reordering_ctrl_timer.i.i, i32 noundef %add.i.i74) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call12.i.i) #9
  br label %_exit_recv_func

if.else29.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call12.i.i) #9
  %reordering_ctrl_timer31.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %143, i32 0, i32 5
  %call32.i.i = tail call i32 @del_timer(ptr noundef %reordering_ctrl_timer31.i.i) #9
  br label %_exit_recv_func

_err_exit.i.i:                                    ; preds = %while.body.i.i.i._err_exit.i.i_crit_edge, %if.end.i.i.i._err_exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call12.i.i) #9
  br label %if.then2.i

if.then2.i:                                       ; preds = %_err_exit.i.i, %land.lhs.true.i.i.if.then2.i_crit_edge, %if.then3.i.i66.if.then2.i_crit_edge
  %driver_stopped.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %183 = ptrtoint ptr %driver_stopped.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %driver_stopped.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool3.not.i = icmp eq i8 %184, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i._exit_recv_func_crit_edge

if.then2.i._exit_recv_func_crit_edge:             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_exit_recv_func

land.lhs.true.i:                                  ; preds = %if.then2.i
  %surprise_removed.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %185 = ptrtoint ptr %surprise_removed.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %surprise_removed.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool4.not.i = icmp eq i8 %186, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then31_crit_edge, label %land.lhs.true.i._exit_recv_func_crit_edge

land.lhs.true.i._exit_recv_func_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_exit_recv_func

land.lhs.true.i.if.then31_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.else.i:                                        ; preds = %if.end27
  %call7.i = tail call i32 @r8712_wlanhdr_to_ethhdr(ptr noundef nonnull %call24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.else.i.if.then31_crit_edge

if.else.i.if.then31_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.end10.i:                                       ; preds = %if.else.i
  %driver_stopped11.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %187 = ptrtoint ptr %driver_stopped11.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %driver_stopped11.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool12.not.i = icmp eq i8 %188, 0
  br i1 %tobool12.not.i, label %land.lhs.true13.i, label %if.end10.i.if.then31_crit_edge

if.end10.i.if.then31_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

land.lhs.true13.i:                                ; preds = %if.end10.i
  %surprise_removed14.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %189 = ptrtoint ptr %surprise_removed14.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %surprise_removed14.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool15.not.i = icmp eq i8 %190, 0
  br i1 %tobool15.not.i, label %r8712_process_recv_indicatepkts.exit, label %land.lhs.true13.i.if.then31_crit_edge

land.lhs.true13.i.if.then31_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

r8712_process_recv_indicatepkts.exit:             ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r8712_recv_indicatepkt(ptr noundef %padapter, ptr noundef nonnull %call24) #9
  br label %if.then31

if.then31:                                        ; preds = %r8712_process_recv_indicatepkts.exit, %land.lhs.true13.i.if.then31_crit_edge, %if.end10.i.if.then31_crit_edge, %if.else.i.if.then31_crit_edge, %land.lhs.true.i.if.then31_crit_edge
  tail call void @r8712_free_recvframe(ptr noundef %pcontext, ptr noundef %free_recv_queue)
  br label %_exit_recv_func

_exit_recv_func:                                  ; preds = %if.then31, %land.lhs.true.i._exit_recv_func_crit_edge, %if.then2.i._exit_recv_func_crit_edge, %if.else29.i.i, %if.then25.i.i, %if.then6.i.i67, %if.end23._exit_recv_func_crit_edge, %if.end19._exit_recv_func_crit_edge, %process_phy_info.exit._exit_recv_func_crit_edge, %if.then14, %if.then8
  %retval1.0 = phi i32 [ %call11, %if.then14 ], [ 0, %if.then31 ], [ 1, %if.end19._exit_recv_func_crit_edge ], [ 1, %if.then8 ], [ 0, %process_phy_info.exit._exit_recv_func_crit_edge ], [ 0, %if.end23._exit_recv_func_crit_edge ], [ 1, %if.then2.i._exit_recv_func_crit_edge ], [ 1, %land.lhs.true.i._exit_recv_func_crit_edge ], [ 1, %if.then6.i.i67 ], [ 1, %if.else29.i.i ], [ 1, %if.then25.i.i ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_validate_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_decryptor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_portctrl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_wlanhdr_to_ethhdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_alloc_recvframe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_recv_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @r8712_init_recv_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl8712_recv.c", i32 43, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @r8712_init_recv_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8712/rtl8712_recv.c", i32 53, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/rtl8712_recv.c", i32 94, i32 34}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8712/rtl8712_recv.c", i32 97, i32 34}
!10 = !{ptr @skb_queue_head_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8712/rtl8712_recv.c", i32 338, i32 35}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8712/rtl8712_recv.c", i32 353, i32 35}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i8 0, i8 2}
