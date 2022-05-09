; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/mlme_linux.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/mlme_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.RT_PMKID_LIST = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
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
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }

@r8712_init_mlme_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&mlmepriv->assoc_timer)\00", [39 x i8] zeroinitializer }, align 32
@r8712_init_mlme_timer.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(&mlmepriv->sitesurveyctrl.sitesurvey_ctrl_timer)\00", [46 x i8] zeroinitializer }, align 32
@r8712_init_mlme_timer.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&mlmepriv->scan_to_timer)\00", [37 x i8] zeroinitializer }, align 32
@r8712_init_mlme_timer.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&mlmepriv->dhcp_timer)\00", [40 x i8] zeroinitializer }, align 32
@r8712_init_mlme_timer.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&mlmepriv->wdg_timer)\00", [41 x i8] zeroinitializer }, align 32
@backupPMKIDList = internal global { [16 x %struct.RT_PMKID_LIST], [256 x i8] } zeroinitializer, align 32
@r8712_os_indicate_disconnect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(&adapter->securitypriv.tkip_timer)\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ASSOCINFO(ReqIEs=\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 73, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 74, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 76, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 77, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 78, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"backupPMKIDList\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 87, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 110, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 147, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [40 x i8] c"../drivers/staging/rtl8712/mlme_linux.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 151, i32 20 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @r8712_init_mlme_timer.__key, ptr @.str, ptr @r8712_init_mlme_timer.__key.1, ptr @.str.2, ptr @r8712_init_mlme_timer.__key.3, ptr @.str.4, ptr @r8712_init_mlme_timer.__key.5, ptr @.str.6, ptr @r8712_init_mlme_timer.__key.7, ptr @.str.8, ptr @backupPMKIDList, ptr @r8712_os_indicate_disconnect.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_mlme_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_mlme_timer.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_mlme_timer.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_mlme_timer.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_mlme_timer.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backupPMKIDList to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_os_indicate_disconnect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_init_mlme_timer(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_timer = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 15
  tail call void @init_timer_key(ptr noundef %assoc_timer, ptr noundef nonnull @join_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @r8712_init_mlme_timer.__key) #5
  %sitesurvey_ctrl_timer = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 14, i32 3
  tail call void @init_timer_key(ptr noundef %sitesurvey_ctrl_timer, ptr noundef nonnull @sitesurvey_ctrl_handler, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @r8712_init_mlme_timer.__key.1) #5
  %scan_to_timer = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 18
  tail call void @init_timer_key(ptr noundef %scan_to_timer, ptr noundef nonnull @_scan_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @r8712_init_mlme_timer.__key.3) #5
  %dhcp_timer = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 19
  tail call void @init_timer_key(ptr noundef %dhcp_timer, ptr noundef nonnull @dhcp_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @r8712_init_mlme_timer.__key.5) #5
  %wdg_timer = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 22
  tail call void @init_timer_key(ptr noundef %wdg_timer, ptr noundef nonnull @wdg_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @r8712_init_mlme_timer.__key.7) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @join_timeout_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1264
  tail call void @_r8712_join_timeout_handler(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sitesurvey_ctrl_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1216
  tail call void @_r8712_sitesurvey_ctrl_handler(ptr noundef %add.ptr) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 300
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_scan_timeout_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1320
  tail call void @r8712_scan_timeout_handler(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dhcp_timeout_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1368
  tail call void @_r8712_dhcp_timeout_handler(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdg_timeout_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1484
  tail call void @r8712_wdg_wk_cmd(ptr noundef %add.ptr) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 200
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_os_indicate_connect(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8712_indicate_wx_assoc_event(ptr noundef %adapter) #5
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 8
  tail call void @netif_carrier_on(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_indicate_wx_assoc_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_os_indicate_disconnect(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8712_indicate_wx_disassoc_event(ptr noundef %adapter) #5
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 8
  tail call void @netif_carrier_off(ptr noundef %1) #5
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8
  %2 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %PMKIDList = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 37
  %4 = call ptr @memcpy(ptr @backupPMKIDList, ptr %PMKIDList, i32 1024)
  %PMKIDIndex = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 38
  %5 = ptrtoint ptr %PMKIDIndex to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %PMKIDIndex, align 8
  %btkip_countermeasure = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 34
  %7 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %btkip_countermeasure, align 8
  %9 = call ptr @memset(ptr %securitypriv, i32 0, i32 4648)
  %tkip_timer = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 18
  tail call void @init_timer_key(ptr noundef %tkip_timer, ptr noundef nonnull @r8712_use_tkipkey_handler, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @r8712_os_indicate_disconnect.__key) #5
  %10 = call ptr @memcpy(ptr %PMKIDList, ptr @backupPMKIDList, i32 1024)
  %11 = ptrtoint ptr %PMKIDIndex to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %6, ptr %PMKIDIndex, align 8
  %12 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %8, ptr %btkip_countermeasure, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %securitypriv, align 8
  %PrivacyAlgrthm = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %PrivacyAlgrthm, align 4
  %PrivacyKeyIndex = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %PrivacyKeyIndex to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %PrivacyKeyIndex, align 8
  %XGrpPrivacy = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 5
  %16 = ptrtoint ptr %XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %XGrpPrivacy, align 4
  %XGrpKeyid = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 6
  %17 = ptrtoint ptr %XGrpKeyid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %XGrpKeyid, align 8
  %ndisauthtype = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 24
  %18 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ndisauthtype, align 4
  %ndisencryptstatus = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 25
  %19 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ndisencryptstatus, align 8
  %wps_phase = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 13
  %20 = ptrtoint ptr %wps_phase to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %wps_phase, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_indicate_wx_disassoc_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_use_tkipkey_handler(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_report_sec_ie(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %authmode, ptr nocapture noundef readonly %sec_ie) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #5
  %0 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %authmode)
  %cmp = icmp eq i8 %authmode, -35
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 256) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = call ptr @memcpy(ptr %call7.i.i, ptr @.str.10, i32 18)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 17
  %arrayidx = getelementptr i8, ptr %sec_ie, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %4)
  %cmp5 = icmp ult i8 %4, -2
  %conv4 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv4, 2
  %cond = select i1 %cmp5, i32 %add, i32 256
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %conv751 = phi i32 [ 0, %if.end ], [ %conv7, %for.body.for.body_crit_edge ]
  %i.050 = phi i8 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %p.049 = phi ptr [ %add.ptr, %if.end ], [ %add.ptr13, %for.body.for.body_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %sec_ie, i32 %conv751
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %6 to i32
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.049, ptr noundef nonnull @.str.11, i32 noundef %conv11)
  %add.ptr13 = getelementptr i8, ptr %p.049, i32 %call12
  %inc = add i8 %i.050, 1
  %conv7 = zext i8 %inc to i32
  %cmp8 = icmp ugt i32 %cond, %conv7
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 10496, ptr %add.ptr13, align 1
  %add.ptr15 = getelementptr i8, ptr %add.ptr13, i32 1
  %8 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call7.i.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv16 = trunc i32 %sub.ptr.sub to i16
  %conv18 = and i32 %sub.ptr.sub, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18)
  %cmp19 = icmp eq i32 %conv18, 0
  %spec.select = select i1 %cmp19, i16 %conv16, i16 256
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %spec.select, ptr %0, align 4
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 24
  %10 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pnetdev, align 8
  call void @wireless_send_event(ptr noundef %11, i32 noundef 35842, ptr noundef nonnull %wrqu, ptr noundef nonnull %call7.i.i) #5
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #5
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_r8712_join_timeout_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_r8712_sitesurvey_ctrl_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_scan_timeout_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_r8712_dhcp_timeout_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_wdg_wk_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @r8712_init_mlme_timer.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 73, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @r8712_init_mlme_timer.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 74, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @r8712_init_mlme_timer.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 76, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @r8712_init_mlme_timer.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 77, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @r8712_init_mlme_timer.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 78, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @r8712_os_indicate_disconnect.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 110, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 147, i32 19}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 151, i32 20}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 152, i32 19}
!24 = !{ptr @backupPMKIDList, !25, !"backupPMKIDList", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8712/mlme_linux.c", i32 87, i32 31}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
