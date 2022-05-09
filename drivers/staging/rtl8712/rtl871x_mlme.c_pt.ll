; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_mlme.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_mlme.c"
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
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.stassoc_event = type { [6 x i8], [2 x i8], i32 }
%struct.reportpwrstate_parm = type { i8, i8, i16 }
%struct.ADDBA_Req_Report_parm = type { [6 x i8], i16, i8 }
%struct.cmd_obj = type { i16, i8, ptr, i32, ptr, i32, %struct.list_head }
%struct.setkey_parm = type { i8, i8, i8, [16 x i8] }

@r8712_init_mlme_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&(pmlmepriv->lock)\00", [45 x i8] zeroinitializer }, align 32
@r8712_init_mlme_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(pmlmepriv->lock2)\00", [44 x i8] zeroinitializer }, align 32
@r8712_init_mlme_priv.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&((&(pmlmepriv->free_bss_pool))->lock)\00", [57 x i8] zeroinitializer }, align 32
@r8712_init_mlme_priv.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&((&(pmlmepriv->scanned_queue))->lock)\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__const.r8712_restruct_sec_ie.wpa_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\01", align 1
@__const.r8712_restructure_ht_ie.WMM_IE = private unnamed_addr constant [7 x i8] c"\00P\F2\02\00\01\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.r8712_surveydone_event_callback = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 3, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.r8712_update_registrypriv_dev_network = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 3, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.r8712_stadel_event_callback = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 3, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.r8712_restruct_sec_ie = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\01\01\01\02\02\04\04", [24 x i8] zeroinitializer }, align 32
@switch.table.r8712_restruct_sec_ie.8 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 4, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.r8712_restruct_sec_ie.9 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 0, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 47, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 48, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 49, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [42 x i8] c"../drivers/staging/rtl8712/rtl871x_mlme.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 50, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [45 x i8] c"switch.table.r8712_surveydone_event_callback\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [51 x i8] c"switch.table.r8712_update_registrypriv_dev_network\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [41 x i8] c"switch.table.r8712_stadel_event_callback\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [35 x i8] c"switch.table.r8712_restruct_sec_ie\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [37 x i8] c"switch.table.r8712_restruct_sec_ie.8\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [37 x i8] c"switch.table.r8712_restruct_sec_ie.9\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @r8712_init_mlme_priv.__key, ptr @.str, ptr @r8712_init_mlme_priv.__key.1, ptr @.str.2, ptr @r8712_init_mlme_priv.__key.3, ptr @.str.4, ptr @r8712_init_mlme_priv.__key.5, ptr @.str.6, ptr @switch.table.r8712_surveydone_event_callback, ptr @switch.table.r8712_update_registrypriv_dev_network, ptr @switch.table.r8712_stadel_event_callback, ptr @switch.table.r8712_restruct_sec_ie, ptr @switch.table.r8712_restruct_sec_ie.8, ptr @switch.table.r8712_restruct_sec_ie.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_mlme_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_mlme_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_mlme_priv.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_mlme_priv.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r8712_surveydone_event_callback to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r8712_update_registrypriv_dev_network to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r8712_stadel_event_callback to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r8712_restruct_sec_ie to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r8712_restruct_sec_ie.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r8712_restruct_sec_ie.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_init_mlme_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  %0 = call ptr @memset(ptr %mlmepriv, i32 0, i32 1512)
  %nic_hdl = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 4
  %1 = ptrtoint ptr %nic_hdl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %padapter, ptr %nic_hdl, align 8
  %fw_state = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fw_state, align 8
  %InfrastructureMode = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 8
  %3 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %InfrastructureMode, align 4
  %passive_mode = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %passive_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %passive_mode, align 8
  tail call void @__raw_spin_lock_init(ptr noundef %mlmepriv, ptr noundef nonnull @.str, ptr noundef nonnull @r8712_init_mlme_priv.__key, i16 noundef signext 3) #15
  %lock2 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock2, ptr noundef nonnull @.str.2, ptr noundef nonnull @r8712_init_mlme_priv.__key.1, i16 noundef signext 3) #15
  %free_bss_pool = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 6
  %5 = ptrtoint ptr %free_bss_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %free_bss_pool, ptr %free_bss_pool, align 4
  %prev.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %free_bss_pool, ptr %prev.i, align 4
  %lock8 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock8, ptr noundef nonnull @.str.4, ptr noundef nonnull @r8712_init_mlme_priv.__key.3, i16 noundef signext 3) #15
  %scanned_queue = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %scanned_queue, ptr %scanned_queue, align 4
  %prev.i58 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i58 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %scanned_queue, ptr %prev.i58, align 4
  %lock18 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock18, ptr noundef nonnull @.str.6, ptr noundef nonnull @r8712_init_mlme_priv.__key.5, i16 noundef signext 3) #15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #15
  %num_of_scanned.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_of_scanned.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call2.i) #15
  %assoc_ssid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 11
  %10 = call ptr @memset(ptr %assoc_ssid, i32 0, i32 36)
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58368, i32 noundef 2592, i32 noundef 4) #18
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_bss_buf = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %free_bss_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i.i.i, ptr %free_bss_buf, align 8
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %pnetwork.062 = phi ptr [ %call1.i.i.i, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.061 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %pnetwork.062 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %pnetwork.062, ptr %pnetwork.062, align 4
  %prev.i59 = getelementptr inbounds %struct.list_head, ptr %pnetwork.062, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pnetwork.062, ptr %prev.i59, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pnetwork.062, ptr noundef %15, ptr noundef %free_bss_pool) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pnetwork.062, ptr %prev.i, align 4
  %17 = ptrtoint ptr %pnetwork.062 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_bss_pool, ptr %pnetwork.062, align 4
  %18 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i59, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %pnetwork.062, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.wlan_network, ptr %pnetwork.062, i32 1
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sitesurveyctrl = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14
  %20 = call ptr @memset(ptr %sitesurveyctrl, i32 0, i32 16)
  tail call void @r8712_init_mlme_timer(ptr noundef %padapter) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_init_mlme_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_r8712_alloc_network(ptr noundef %pmlmepriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bss_pool = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 6
  %lock = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 6, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %0 = ptrtoint ptr %free_bss_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_bss_pool, align 4
  %cmp10.not = icmp eq ptr %1, %free_bss_pool
  %spec.select = select i1 %cmp10.not, ptr null, ptr %1
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %spec.select, i32 0, i32 3
  %11 = ptrtoint ptr %last_scanned to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_scanned, align 4
  %num_of_scanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 9
  %12 = ptrtoint ptr %num_of_scanned to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_of_scanned, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %num_of_scanned, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #15
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_network_queue(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue1 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 7
  %lock = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 7, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %0 = ptrtoint ptr %scanned_queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scanned_queue1, align 4
  %cmp.i.not17 = icmp eq ptr %scanned_queue1, %1
  br i1 %cmp.i.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %free_bss_pool.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 6
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 6, i32 1
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 6, i32 0, i32 1
  %num_of_scanned.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 9
  br label %while.body

while.body:                                       ; preds = %_free_network.exit.while.body_crit_edge, %while.body.lr.ph
  %plist.018 = phi ptr [ %1, %while.body.lr.ph ], [ %3, %_free_network.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %plist.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.018, align 4
  %tobool.not.i = icmp eq ptr %plist.018, null
  br i1 %tobool.not.i, label %while.body._free_network.exit_crit_edge, label %if.end.i

while.body._free_network.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %_free_network.exit

if.end.i:                                         ; preds = %while.body
  %fixed.i = getelementptr inbounds %struct.wlan_network, ptr %plist.018, i32 0, i32 2
  %4 = ptrtoint ptr %fixed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fixed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i._free_network.exit_crit_edge

if.end.i._free_network.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %_free_network.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i = getelementptr inbounds %struct.wlan_network, ptr %plist.018, i32 0, i32 3
  %7 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_scanned.i, align 4
  %sub.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %sub.i)
  %cmp.i16 = icmp ult i32 %sub.i, 2000
  br i1 %cmp.i16, label %if.end3.i._free_network.exit_crit_edge, label %do.body6.i

if.end3.i._free_network.exit_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %_free_network.exit

do.body6.i:                                       ; preds = %if.end3.i
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %plist.018) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body6.i.list_del_init.exit.i_crit_edge

do.body6.i.list_del_init.exit.i_crit_edge:        ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.018, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %plist.018 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plist.018, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.body6.i.list_del_init.exit.i_crit_edge
  %15 = ptrtoint ptr %plist.018 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %plist.018, ptr %plist.018, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %plist.018, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %plist.018, ptr %prev.i3.i.i, align 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i23.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %plist.018, ptr noundef %18, ptr noundef %free_bss_pool.i) #15
  br i1 %call.i.i23.i, label %if.end.i.i24.i, label %list_del_init.exit.i.list_add_tail.exit.i_crit_edge

list_del_init.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i24.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %plist.018, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %plist.018 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_bss_pool.i, ptr %plist.018, align 4
  %21 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %plist.018, ptr %18, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i24.i, %list_del_init.exit.i.list_add_tail.exit.i_crit_edge
  %23 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_of_scanned.i, align 4
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %num_of_scanned.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #15
  br label %_free_network.exit

_free_network.exit:                               ; preds = %list_add_tail.exit.i, %if.end3.i._free_network.exit_crit_edge, %if.end.i._free_network.exit_crit_edge, %while.body._free_network.exit_crit_edge
  %cmp.i.not = icmp eq ptr %scanned_queue1, %3
  br i1 %cmp.i.not, label %_free_network.exit.while.end_crit_edge, label %_free_network.exit.while.body_crit_edge

_free_network.exit.while.body_crit_edge:          ; preds = %_free_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

_free_network.exit.while.end_crit_edge:           ; preds = %_free_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %_free_network.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r8712_if_up(ptr nocapture noundef readonly %padapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %0 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_stopped, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %2 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surprise_removed, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 8
  %6 = and i32 %5, 1
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false2, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %res.0 = phi i32 [ 0, %lor.lhs.false.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ %6, %lor.lhs.false2 ]
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r8712_generate_random_ibss(ptr nocapture noundef writeonly %pibss) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %pibss to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %pibss, align 1
  %arrayidx1 = getelementptr i8, ptr %pibss, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 17, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %pibss, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -121, ptr %arrayidx2, align 1
  %conv = trunc i32 %0 to i8
  %arrayidx3 = getelementptr i8, ptr %pibss, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx3, align 1
  %shr = lshr i32 %0, 8
  %conv5 = trunc i32 %shr to i8
  %arrayidx6 = getelementptr i8, ptr %pibss, i32 4
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %arrayidx6, align 1
  %shr7 = lshr i32 %0, 16
  %conv9 = trunc i32 %shr7 to i8
  %arrayidx10 = getelementptr i8, ptr %pibss, i32 5
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %arrayidx10, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r8712_get_wlan_bssid_ex_sz(ptr nocapture noundef readonly %bss) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %IELength = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bss, i32 0, i32 10
  %0 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %IELength, align 4
  %sub = add i32 %1, 116
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @r8712_get_capability_from_ie(ptr noundef readnone %ie) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %ie, i32 10
  ret ptr %add.ptr1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_mlme_priv(ptr nocapture noundef readonly %pmlmepriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bss_buf = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 8
  %0 = ptrtoint ptr %free_bss_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_bss_buf, align 8
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r8712_is_same_ibss(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %pnetwork) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %PrivacyAlgrthm = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %Privacy6 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %Privacy6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Privacy6, align 4
  br i1 %cmp.not, label %land.lhs.true4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.else9_crit_edge

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else9

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true4:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %cmp7 = icmp eq i32 %3, 16777216
  br i1 %cmp7, label %land.lhs.true4.if.end10_crit_edge, label %land.lhs.true4.if.else9_crit_edge

land.lhs.true4.if.else9_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else9

land.lhs.true4.if.end10_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.else9:                                         ; preds = %land.lhs.true4.if.else9_crit_edge, %land.lhs.true.if.else9_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %land.lhs.true4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %ret.0 = phi i32 [ 1, %if.else9 ], [ 0, %land.lhs.true.if.end10_crit_edge ], [ 0, %land.lhs.true4.if.end10_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_get_oldest_wlan_network(ptr noundef readonly %scanned_queue) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.016 = load ptr, ptr %scanned_queue, align 4
  %cmp.i.not17 = icmp eq ptr %plist.016, %scanned_queue
  br i1 %cmp.i.not17, label %entry.while.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end:                                           ; preds = %if.end7.if.end_crit_edge, %entry.if.end_crit_edge
  %plist.019 = phi ptr [ %plist.0, %if.end7.if.end_crit_edge ], [ %plist.016, %entry.if.end_crit_edge ]
  %oldest.018 = phi ptr [ %oldest.1, %if.end7.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.019, i32 0, i32 2
  %1 = ptrtoint ptr %fixed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq ptr %oldest.018, null
  br i1 %tobool3.not, label %if.then2.if.then5_crit_edge, label %lor.lhs.false

if.then2.if.then5_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.then2
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %plist.019, i32 0, i32 3
  %3 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_scanned, align 4
  %last_scanned4 = getelementptr inbounds %struct.wlan_network, ptr %oldest.018, i32 0, i32 3
  %5 = ptrtoint ptr %last_scanned4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_scanned4, align 4
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.if.end7_crit_edge

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.then2.if.then5_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %lor.lhs.false.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %oldest.1 = phi ptr [ %oldest.018, %if.end.if.end7_crit_edge ], [ %plist.019, %if.then5 ], [ %oldest.018, %lor.lhs.false.if.end7_crit_edge ]
  %7 = ptrtoint ptr %plist.019 to i32
  call void @__asan_load4_noabort(i32 %7)
  %plist.0 = load ptr, ptr %plist.019, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %scanned_queue
  br i1 %cmp.i.not, label %if.end7.while.end_crit_edge, label %if.end7.if.end_crit_edge

if.end7.if.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end7.while.end_crit_edge, %entry.while.end_crit_edge
  %oldest.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %oldest.1, %if.end7.while.end_crit_edge ]
  ret ptr %oldest.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r8712_atimdone_event_callback(ptr nocapture noundef %adapter, ptr nocapture noundef %pbuf) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_survey_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pbuf, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pbuf, align 4
  %Ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 3
  %4 = ptrtoint ptr %Ssid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Ssid, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %Ssid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %Ssid, align 4
  %Privacy = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 4
  %8 = ptrtoint ptr %Privacy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Privacy, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %Privacy to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %Privacy, align 4
  %Rssi = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 5
  %12 = ptrtoint ptr %Rssi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %Rssi, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %Rssi to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %Rssi, align 4
  %NetworkTypeInUse = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 6
  %16 = ptrtoint ptr %NetworkTypeInUse to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %NetworkTypeInUse, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %NetworkTypeInUse to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %NetworkTypeInUse, align 4
  %Configuration = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 7
  %ATIMWindow = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ATIMWindow, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ATIMWindow, align 4
  %BeaconPeriod = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %BeaconPeriod, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %BeaconPeriod, align 4
  %DSConfig = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %DSConfig to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %DSConfig, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %DSConfig to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %DSConfig, align 4
  %FHConfig = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 7, i32 4
  %DwellTime = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 7, i32 4, i32 3
  %32 = ptrtoint ptr %DwellTime to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DwellTime, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %DwellTime to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %DwellTime, align 4
  %HopPattern = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 7, i32 4, i32 1
  %36 = ptrtoint ptr %HopPattern to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %HopPattern, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %HopPattern to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %HopPattern, align 4
  %HopSet = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 7, i32 4, i32 2
  %40 = ptrtoint ptr %HopSet to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %HopSet, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %HopSet to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %HopSet, align 4
  %44 = ptrtoint ptr %FHConfig to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %FHConfig, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %FHConfig to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %FHConfig, align 4
  %48 = ptrtoint ptr %Configuration to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %Configuration, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %Configuration to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %Configuration, align 4
  %InfrastructureMode = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 8
  %52 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %InfrastructureMode, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %InfrastructureMode, align 4
  %IELength = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 10
  %56 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %IELength, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %IELength to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %IELength, align 4
  %60 = add i32 %58, -769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -885, i32 %60)
  %cmp = icmp ult i32 %60, -885
  br i1 %cmp, label %entry.cleanup88_crit_edge, label %do.body41

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup88

do.body41:                                        ; preds = %entry
  %lock2 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 1
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock2) #15
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fw_state.i, align 8
  %63 = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not = icmp eq i32 %63, 0
  br i1 %tobool.not, label %do.body41.if.end70_crit_edge, label %if.then48

do.body41.if.end70_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then48:                                        ; preds = %do.body41
  %MacAddress = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %MacAddress49 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress49, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool51.not = icmp eq i32 %bcmp, 0
  br i1 %tobool51.not, label %if.then52, label %if.then48.if.end70_crit_edge

if.then48.if.end70_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then52:                                        ; preds = %if.then48
  %IEs = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 11
  %IEs56 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 11
  %64 = ptrtoint ptr %IEs56 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %65 = load i64, ptr %IEs56, align 4
  %66 = ptrtoint ptr %IEs to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %65, ptr %IEs, align 4
  %scanned_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7
  %67 = ptrtoint ptr %MacAddress49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %MacAddress49, align 4
  %add.ptr.i.i = getelementptr %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 1, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %70 to i32
  %or.i.i = or i32 %68, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then52.if.end70_crit_edge, label %do.body1.i

if.then52.if.end70_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

do.body1.i:                                       ; preds = %if.then52
  %lock.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body1.i
  %plist.0.in.i = phi ptr [ %scanned_queue, %do.body1.i ], [ %plist.0.i, %for.body.i.for.cond.i_crit_edge ]
  %71 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.i30.i = icmp eq ptr %plist.0.i, %scanned_queue
  br i1 %cmp.i30.i, label %r8712_find_network.exit.thread148, label %for.body.i

r8712_find_network.exit.thread148:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #15
  br label %if.end70

for.body.i:                                       ; preds = %for.cond.i
  %MacAddress.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress49, ptr noundef dereferenceable(6) %MacAddress.i, i32 6) #20
  %tobool9.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool9.not.i, label %r8712_find_network.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

r8712_find_network.exit:                          ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #15
  %tobool61.not = icmp eq ptr %plist.0.i, null
  br i1 %tobool61.not, label %r8712_find_network.exit.if.end70_crit_edge, label %cleanup

r8712_find_network.exit.if.end70_crit_edge:       ; preds = %r8712_find_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

cleanup:                                          ; preds = %r8712_find_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  %IEs64 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 11
  %72 = ptrtoint ptr %IEs56 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %IEs56, align 4
  %74 = ptrtoint ptr %IEs64 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %73, ptr %IEs64, align 4
  br label %exit

if.end70:                                         ; preds = %r8712_find_network.exit.if.end70_crit_edge, %r8712_find_network.exit.thread148, %if.then52.if.end70_crit_edge, %if.then48.if.end70_crit_edge, %do.body41.if.end70_crit_edge
  %75 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fw_state.i, align 8
  %77 = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool72.not = icmp eq i32 %77, 0
  br i1 %tobool72.not, label %if.then73, label %if.end70.exit_crit_edge

if.end70.exit_crit_edge:                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.then73:                                        ; preds = %if.end70
  %Ssid75 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %Ssid75 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %Ssid75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp77.not = icmp eq i8 %79, 0
  br i1 %cmp77.not, label %if.else, label %if.then79

if.then79:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @rtl8711_add_network(ptr noundef %adapter, ptr noundef %pbuf)
  br label %exit

if.else:                                          ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %Ssid to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8, ptr %Ssid, align 4
  %81 = ptrtoint ptr %Ssid75 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 4352844919755599422, ptr %Ssid75, align 4
  tail call fastcc void @rtl8711_add_network(ptr noundef %adapter, ptr noundef %pbuf)
  br label %exit

exit:                                             ; preds = %if.else, %if.then79, %if.end70.exit_crit_edge, %cleanup
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock2, i32 noundef %call44) #15
  br label %cleanup88

cleanup88:                                        ; preds = %exit, %entry.cleanup88_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8711_add_network(ptr noundef %adapter, ptr nocapture noundef %pnetwork) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %network.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6
  %add.ptr1.i.i.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 11, i32 10
  %0 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %s_cap.0.copyload.i.i = load i16, ptr %add.ptr1.i.i.i, align 1
  %add.ptr1.i50.i.i = getelementptr %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 11, i32 10
  %1 = ptrtoint ptr %add.ptr1.i50.i.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %d_cap.0.copyload.i.i = load i16, ptr %add.ptr1.i50.i.i, align 1
  %Ssid.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 3
  %2 = ptrtoint ptr %Ssid.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Ssid.i.i, align 4
  %Ssid4.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 3
  %4 = ptrtoint ptr %Ssid4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Ssid4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.i = icmp eq i32 %3, %5
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %entry.update_current_network.exit_crit_edge

entry.update_current_network.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_current_network.exit

land.lhs.true.i.i:                                ; preds = %entry
  %DSConfig.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 7, i32 3
  %6 = ptrtoint ptr %DSConfig.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DSConfig.i.i, align 4
  %DSConfig7.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %DSConfig7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %DSConfig7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp8.i.i = icmp eq i32 %7, %9
  br i1 %cmp8.i.i, label %land.lhs.true9.i.i, label %land.lhs.true.i.i.update_current_network.exit_crit_edge

land.lhs.true.i.i.update_current_network.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_current_network.exit

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %MacAddress.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %MacAddress11.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i.i, ptr noundef dereferenceable(6) %MacAddress11.i.i, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true14.i.i, label %land.lhs.true9.i.i.update_current_network.exit_crit_edge

land.lhs.true9.i.i.update_current_network.exit_crit_edge: ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_current_network.exit

land.lhs.true14.i.i:                              ; preds = %land.lhs.true9.i.i
  %Ssid16.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 3, i32 1
  %Ssid19.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 3, i32 1
  %bcmp49.i.i = tail call i32 @bcmp(ptr %Ssid16.i.i, ptr %Ssid19.i.i, i32 %3) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49.i.i)
  %tobool24.not.i.i = icmp eq i32 %bcmp49.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %land.lhs.true14.i.i.update_current_network.exit_crit_edge

land.lhs.true14.i.i.update_current_network.exit_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_current_network.exit

land.lhs.true25.i.i:                              ; preds = %land.lhs.true14.i.i
  %10 = xor i16 %d_cap.0.copyload.i.i, %s_cap.0.copyload.i.i
  %11 = and i16 %10, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %if.then.i, label %land.lhs.true25.i.i.update_current_network.exit_crit_edge

land.lhs.true25.i.i.update_current_network.exit_crit_edge: ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_current_network.exit

if.then.i:                                        ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @update_network(ptr noundef %network.i, ptr noundef %pnetwork, ptr noundef %adapter) #15
  %add.ptr.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 11, i32 12
  %IELength.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 10
  %13 = ptrtoint ptr %IELength.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %IELength.i, align 4
  tail call void @r8712_update_protection(ptr noundef %adapter, ptr noundef %add.ptr.i, i32 noundef %14) #15
  br label %update_current_network.exit

update_current_network.exit:                      ; preds = %if.then.i, %land.lhs.true25.i.i.update_current_network.exit_crit_edge, %land.lhs.true14.i.i.update_current_network.exit_crit_edge, %land.lhs.true9.i.i.update_current_network.exit_crit_edge, %land.lhs.true.i.i.update_current_network.exit_crit_edge, %entry.update_current_network.exit_crit_edge
  %scanned_queue.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %scanned_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %plist.085.i = load ptr, ptr %scanned_queue.i, align 4
  %cmp.i.not86.i = icmp eq ptr %scanned_queue.i, %plist.085.i
  br i1 %cmp.i.not86.i, label %update_current_network.exit.if.then13.i_crit_edge, label %if.end.lr.ph.i

update_current_network.exit.if.then13.i_crit_edge: ; preds = %update_current_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i

if.end.lr.ph.i:                                   ; preds = %update_current_network.exit
  %16 = ptrtoint ptr %add.ptr1.i50.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %d_cap.0.copyload.i.i11 = load i16, ptr %add.ptr1.i50.i.i, align 1
  %17 = ptrtoint ptr %Ssid4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %Ssid4.i.i, align 4
  %DSConfig7.i.i13 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 7, i32 3
  %MacAddress11.i.i14 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 1
  %Ssid19.i.i15 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 3, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.end9.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %plist.088.i = phi ptr [ %plist.085.i, %if.end.lr.ph.i ], [ %plist.0.i, %if.end9.i.if.end.i_crit_edge ]
  %oldest.087.i = phi ptr [ null, %if.end.lr.ph.i ], [ %oldest.1.i, %if.end9.i.if.end.i_crit_edge ]
  %add.ptr1.i.i.i16 = getelementptr %struct.wlan_network, ptr %plist.088.i, i32 0, i32 6, i32 11, i32 10
  %19 = ptrtoint ptr %add.ptr1.i.i.i16 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %s_cap.0.copyload.i.i17 = load i16, ptr %add.ptr1.i.i.i16, align 1
  %Ssid.i.i18 = getelementptr inbounds %struct.wlan_network, ptr %plist.088.i, i32 0, i32 6, i32 3
  %20 = ptrtoint ptr %Ssid.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Ssid.i.i18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %18)
  %cmp.i72.i = icmp eq i32 %21, %18
  br i1 %cmp.i72.i, label %land.lhs.true.i.i21, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

land.lhs.true.i.i21:                              ; preds = %if.end.i
  %DSConfig.i.i19 = getelementptr inbounds %struct.wlan_network, ptr %plist.088.i, i32 0, i32 6, i32 7, i32 3
  %22 = ptrtoint ptr %DSConfig.i.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DSConfig.i.i19, align 4
  %24 = ptrtoint ptr %DSConfig7.i.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DSConfig7.i.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp8.i.i20 = icmp eq i32 %23, %25
  br i1 %cmp8.i.i20, label %land.lhs.true9.i.i25, label %land.lhs.true.i.i21.if.end5.i_crit_edge

land.lhs.true.i.i21.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

land.lhs.true9.i.i25:                             ; preds = %land.lhs.true.i.i21
  %MacAddress.i.i22 = getelementptr inbounds %struct.wlan_network, ptr %plist.088.i, i32 0, i32 6, i32 1
  %bcmp.i.i23 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i.i22, ptr noundef dereferenceable(6) %MacAddress11.i.i14, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i23)
  %tobool.not.i.i24 = icmp eq i32 %bcmp.i.i23, 0
  br i1 %tobool.not.i.i24, label %land.lhs.true14.i.i29, label %land.lhs.true9.i.i25.if.end5.i_crit_edge

land.lhs.true9.i.i25.if.end5.i_crit_edge:         ; preds = %land.lhs.true9.i.i25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

land.lhs.true14.i.i29:                            ; preds = %land.lhs.true9.i.i25
  %Ssid16.i.i26 = getelementptr inbounds %struct.wlan_network, ptr %plist.088.i, i32 0, i32 6, i32 3, i32 1
  %bcmp49.i.i27 = tail call i32 @bcmp(ptr %Ssid16.i.i26, ptr %Ssid19.i.i15, i32 %18) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49.i.i27)
  %tobool24.not.i.i28 = icmp eq i32 %bcmp49.i.i27, 0
  br i1 %tobool24.not.i.i28, label %land.lhs.true25.i.i30, label %land.lhs.true14.i.i29.if.end5.i_crit_edge

land.lhs.true14.i.i29.if.end5.i_crit_edge:        ; preds = %land.lhs.true14.i.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

land.lhs.true25.i.i30:                            ; preds = %land.lhs.true14.i.i29
  %26 = xor i16 %s_cap.0.copyload.i.i17, %d_cap.0.copyload.i.i11
  %27 = and i16 %26, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %if.else32.i, label %land.lhs.true25.i.i30.if.end5.i_crit_edge

land.lhs.true25.i.i30.if.end5.i_crit_edge:        ; preds = %land.lhs.true25.i.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true25.i.i30.if.end5.i_crit_edge, %land.lhs.true14.i.i29.if.end5.i_crit_edge, %land.lhs.true9.i.i25.if.end5.i_crit_edge, %land.lhs.true.i.i21.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %cmp.i = icmp eq ptr %oldest.087.i, null
  br i1 %cmp.i, label %if.end5.i.if.then8.i_crit_edge, label %lor.lhs.false.i

if.end5.i.if.then8.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %last_scanned.i = getelementptr inbounds %struct.wlan_network, ptr %plist.088.i, i32 0, i32 3
  %29 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_scanned.i, align 4
  %last_scanned6.i = getelementptr inbounds %struct.wlan_network, ptr %oldest.087.i, i32 0, i32 3
  %31 = ptrtoint ptr %last_scanned6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_scanned6.i, align 4
  %sub.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp7.i = icmp slt i32 %sub.i, 0
  br i1 %cmp7.i, label %lor.lhs.false.i.if.then8.i_crit_edge, label %lor.lhs.false.i.if.end9.i_crit_edge

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %if.end5.i.if.then8.i_crit_edge
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %lor.lhs.false.i.if.end9.i_crit_edge
  %oldest.1.i = phi ptr [ %plist.088.i, %if.then8.i ], [ %oldest.087.i, %lor.lhs.false.i.if.end9.i_crit_edge ]
  %33 = ptrtoint ptr %plist.088.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %plist.0.i = load ptr, ptr %plist.088.i, align 4
  %cmp.i.not.i = icmp eq ptr %scanned_queue.i, %plist.0.i
  br i1 %cmp.i.not.i, label %if.end9.i.if.then13.i_crit_edge, label %if.end9.i.if.end.i_crit_edge

if.end9.i.if.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end9.i.if.then13.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.end9.i.if.then13.i_crit_edge, %update_current_network.exit.if.then13.i_crit_edge
  %oldest.0.lcssa.i = phi ptr [ null, %update_current_network.exit.if.then13.i_crit_edge ], [ %oldest.1.i, %if.end9.i.if.then13.i_crit_edge ]
  %free_bss_pool.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %free_bss_pool.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %free_bss_pool.i, align 4
  %cmp.i75.not.i = icmp eq ptr %35, %free_bss_pool.i
  br i1 %cmp.i75.not.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  %network18.i = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa.i, i32 0, i32 6
  %Rssi.i = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa.i, i32 0, i32 6, i32 5
  %36 = ptrtoint ptr %Rssi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %Rssi.i, align 4
  %Rssi19.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 5
  %38 = ptrtoint ptr %Rssi19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %Rssi19.i, align 4
  %add.i = add i32 %39, %37
  %div.i = sdiv i32 %add.i, 2
  store i32 %div.i, ptr %Rssi19.i, align 4
  %IELength.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 10
  %40 = ptrtoint ptr %IELength.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %IELength.i.i, align 4
  %sub.i.i = add i32 %41, 116
  %42 = call ptr @memcpy(ptr %network18.i, ptr %pnetwork, i32 %sub.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %last_scanned23.i = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa.i, i32 0, i32 3
  %44 = ptrtoint ptr %last_scanned23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %last_scanned23.i, align 4
  br label %update_scanned_network.exit

if.else.i:                                        ; preds = %if.then13.i
  %lock.i.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 6, i32 1
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #15
  %45 = ptrtoint ptr %free_bss_pool.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %free_bss_pool.i, align 4
  %cmp10.not.i.i.i = icmp eq ptr %46, %free_bss_pool.i
  %tobool.not.i.i82.i = icmp eq ptr %46, null
  %tobool.not.i.i.i = or i1 %cmp10.not.i.i.i, %tobool.not.i.i82.i
  br i1 %tobool.not.i.i.i, label %alloc_network.exit.thread.i, label %if.then.i.i.i

alloc_network.exit.thread.i:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call2.i.i.i) #15
  br label %update_scanned_network.exit

if.then.i.i.i:                                    ; preds = %if.else.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %46) #15
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.if.end27.i_crit_edge

if.then.i.i.i.if.end27.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.if.end27.i_crit_edge
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %46, ptr %46, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %46, ptr %prev.i3.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i.i.i = getelementptr inbounds %struct.wlan_network, ptr %46, i32 0, i32 3
  %56 = ptrtoint ptr %last_scanned.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %last_scanned.i.i.i, align 4
  %num_of_scanned.i.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 9
  %57 = ptrtoint ptr %num_of_scanned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_of_scanned.i.i.i, align 4
  %inc.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i, ptr %num_of_scanned.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call2.i.i.i) #15
  %IELength.i77.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 10
  %59 = ptrtoint ptr %IELength.i77.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %IELength.i77.i, align 4
  %sub.i78.i = add i32 %60, 116
  %61 = ptrtoint ptr %pnetwork to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i78.i, ptr %pnetwork, align 4
  %network29.i = getelementptr inbounds %struct.wlan_network, ptr %46, i32 0, i32 6
  %62 = call ptr @memcpy(ptr %network29.i, ptr %pnetwork, i32 %sub.i78.i)
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %46, ptr noundef %64, ptr noundef %scanned_queue.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.update_scanned_network.exit_crit_edge

if.end27.i.update_scanned_network.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_scanned_network.exit

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %46, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %scanned_queue.i, ptr %46, align 4
  %67 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev.i3.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %46, ptr %64, align 4
  br label %update_scanned_network.exit

if.else32.i:                                      ; preds = %land.lhs.true25.i.i30
  call void @__sanitizer_cov_trace_pc() #17
  %network33.i = getelementptr inbounds %struct.wlan_network, ptr %plist.088.i, i32 0, i32 6
  tail call fastcc void @update_network(ptr noundef %network33.i, ptr noundef %pnetwork, ptr noundef %adapter) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %last_scanned34.i = getelementptr inbounds %struct.wlan_network, ptr %plist.088.i, i32 0, i32 3
  %70 = ptrtoint ptr %last_scanned34.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %last_scanned34.i, align 4
  br label %update_scanned_network.exit

update_scanned_network.exit:                      ; preds = %if.else32.i, %if.end.i.i.i, %if.end27.i.update_scanned_network.exit_crit_edge, %alloc_network.exit.thread.i, %if.then17.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_surveydone_event_callback(ptr noundef %adapter, ptr nocapture noundef readnone %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #15
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %scan_to_timer = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 18
  %call6 = tail call i32 @del_timer(ptr noundef %scan_to_timer) #15
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 8
  %and.i63 = and i32 %4, -2049
  store i32 %and.i63, ptr %fw_state.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %to_join = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %to_join to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %to_join, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.end.if.end38_crit_edge, label %if.then8

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then8:                                         ; preds = %if.end
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 8
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.else26, label %if.then11

if.then11:                                        ; preds = %if.then8
  %10 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %if.then14, label %if.then11.if.end38_crit_edge

if.then11.if.end38_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then14:                                        ; preds = %if.then11
  %or.i = or i32 %8, 128
  %11 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %fw_state.i, align 8
  %call15 = tail call i32 @r8712_select_and_join_from_scan(ptr noundef %mlmepriv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  %assoc_timer = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 600
  %call19 = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %add) #15
  br label %if.end38

if.else:                                          ; preds = %if.then14
  %MacAddress = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1
  %13 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i, align 8
  %xor = xor i32 %14, 2048
  store i32 %xor, ptr %fw_state.i, align 8
  %Ssid = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 3
  %assoc_ssid = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 11
  %15 = call ptr @memcpy(ptr %Ssid, ptr %assoc_ssid, i32 36)
  %PrivacyAlgrthm.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %PrivacyAlgrthm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.not.i = icmp eq i32 %17, 0
  %18 = select i1 %cmp.not.not.i, i32 0, i32 16777216
  %Privacy.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 4
  %19 = ptrtoint ptr %Privacy.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %Privacy.i, align 4
  %Rssi.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 5
  %20 = ptrtoint ptr %Rssi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %Rssi.i, align 4
  %wireless_mode.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 7
  %21 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wireless_mode.i, align 1
  %switch.tableidx = add i8 %22, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %23 = icmp ult i8 %switch.tableidx, 4
  br i1 %23, label %switch.lookup, label %if.else.sw.epilog.i_crit_edge

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %24 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.r8712_surveydone_event_callback, i32 0, i32 %24
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %NetworkTypeInUse5.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 6
  %26 = ptrtoint ptr %NetworkTypeInUse5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.load, ptr %NetworkTypeInUse5.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.else.sw.epilog.i_crit_edge
  %channel.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 6
  %27 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %channel.i, align 4
  %conv6.i = zext i8 %28 to i32
  %DSConfig.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 7, i32 3
  %29 = ptrtoint ptr %DSConfig.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv6.i, ptr %DSConfig.i, align 4
  %InfrastructureMode.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 8
  %30 = ptrtoint ptr %InfrastructureMode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %InfrastructureMode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp7.i = icmp eq i32 %31, 0
  br i1 %cmp7.i, label %if.then.i, label %sw.epilog.i.r8712_update_registrypriv_dev_network.exit_crit_edge

sw.epilog.i.r8712_update_registrypriv_dev_network.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %r8712_update_registrypriv_dev_network.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %ATIMWindow.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 7, i32 2
  %32 = ptrtoint ptr %ATIMWindow.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %ATIMWindow.i, align 4
  br label %r8712_update_registrypriv_dev_network.exit

r8712_update_registrypriv_dev_network.exit:       ; preds = %if.then.i, %sw.epilog.i.r8712_update_registrypriv_dev_network.exit_crit_edge
  %dev_network.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33
  %registrypriv.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9
  %InfrastructureMode12.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 8
  %33 = ptrtoint ptr %InfrastructureMode12.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %InfrastructureMode12.i, align 4
  %call.i = tail call i32 @r8712_generate_ie(ptr noundef %registrypriv.i) #15
  %IELength.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 10
  %34 = ptrtoint ptr %IELength.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i, ptr %IELength.i, align 4
  %sub.i.i = add i32 %call.i, 116
  %35 = ptrtoint ptr %dev_network.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i.i, ptr %dev_network.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %37 = ptrtoint ptr %MacAddress to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %MacAddress, align 1
  %arrayidx1.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 17, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 2
  %39 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -121, ptr %arrayidx2.i, align 1
  %conv.i = trunc i32 %36 to i8
  %arrayidx3.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 3
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %shr.i = lshr i32 %36, 8
  %conv5.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 4
  %41 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %36, 16
  %conv9.i = trunc i32 %shr7.i to i8
  %arrayidx10.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 5
  %42 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %43 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 64, ptr %fw_state.i, align 8
  %44 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %to_join, align 4
  br label %if.end38

if.else26:                                        ; preds = %if.then8
  %45 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %to_join, align 4
  %or.i74 = or i32 %8, 128
  %46 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i74, ptr %fw_state.i, align 8
  %call28 = tail call i32 @r8712_select_and_join_from_scan(ptr noundef %mlmepriv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.else35

if.then30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #17
  %assoc_timer31 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add33 = add i32 %47, 600
  %call34 = tail call i32 @mod_timer(ptr noundef %assoc_timer31, i32 noundef %add33) #15
  br label %if.end38

if.else35:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_state.i, align 8
  %and.i76 = and i32 %49, -129
  store i32 %and.i76, ptr %fw_state.i, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then30, %r8712_update_registrypriv_dev_network.exit, %if.then17, %if.then11.if.end38_crit_edge, %if.end.if.end38_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_select_and_join_from_scan(ptr noundef %pmlmepriv) local_unnamed_addr #0 align 64 {
entry:
  %wps_ie.i = alloca [512 x i8], align 1
  %wps_ielen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_hdl = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 4
  %0 = ptrtoint ptr %nic_hdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_hdl, align 8
  %scanned_queue = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 7
  %2 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scanned_queue, align 4
  %pscanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 5
  %4 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pscanned, align 4
  %cmp.i.not152 = icmp eq ptr %scanned_queue, %3
  br i1 %cmp.i.not152, label %entry.cleanup_crit_edge, label %if.end6.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6.lr.ph:                                    ; preds = %entry
  %assoc_by_bssid = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 16
  %assoc_bssid = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 12
  %assoc_ssid = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 11
  %Ssid35 = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 11, i32 1
  %assoc_by_rssi49 = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 17
  %wps_phase.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 8, i32 13
  %PrivacyAlgrthm.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 8, i32 1
  %fw_state.i.i137 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %InfrastructureMode16.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 13, i32 6, i32 8
  br label %if.end6

if.then:                                          ; preds = %if.end72
  %assoc_by_rssi = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 17
  %5 = ptrtoint ptr %assoc_by_rssi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %assoc_by_rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %tobool4.not = icmp eq ptr %pnetwork_max_rssi.1, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then.ask_for_joinbss_crit_edge

if.then.ask_for_joinbss_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %ask_for_joinbss

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end72.if.end6_crit_edge, %if.end6.lr.ph
  %7 = phi ptr [ %3, %if.end6.lr.ph ], [ %85, %if.end72.if.end6_crit_edge ]
  %pnetwork_max_rssi.0153 = phi ptr [ null, %if.end6.lr.ph ], [ %pnetwork_max_rssi.1, %if.end72.if.end6_crit_edge ]
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pscanned, align 4
  %11 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %assoc_by_bssid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not = icmp eq i32 %12, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end6
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 1
  %bcmp119 = call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %assoc_bssid, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp119)
  %tobool15.not = icmp eq i32 %bcmp119, 0
  br i1 %tobool15.not, label %if.then16, label %if.then12.if.end30_crit_edge

if.then12.if.end30_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then16:                                        ; preds = %if.then12
  %fw_state.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 2
  %13 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i, align 8
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.then16.ask_for_joinbss_crit_edge, label %if.then19

if.then16.ask_for_joinbss_crit_edge:              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %ask_for_joinbss

if.then19:                                        ; preds = %if.then16
  %add.ptr1.i.i = getelementptr %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 13, i32 6, i32 11, i32 10
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %s_cap.0.copyload.i = load i16, ptr %add.ptr1.i.i, align 1
  %add.ptr1.i50.i = getelementptr %struct.wlan_network, ptr %7, i32 0, i32 6, i32 11, i32 10
  %17 = ptrtoint ptr %add.ptr1.i50.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %d_cap.0.copyload.i = load i16, ptr %add.ptr1.i50.i, align 1
  %Ssid.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 13, i32 6, i32 3
  %18 = ptrtoint ptr %Ssid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %Ssid.i, align 4
  %Ssid4.i = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 3
  %20 = ptrtoint ptr %Ssid4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Ssid4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i120 = icmp eq i32 %19, %21
  br i1 %cmp.i120, label %land.lhs.true.i, label %if.then19.if.end25_crit_edge

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

land.lhs.true.i:                                  ; preds = %if.then19
  %DSConfig.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 13, i32 6, i32 7, i32 3
  %22 = ptrtoint ptr %DSConfig.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DSConfig.i, align 4
  %DSConfig7.i = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 7, i32 3
  %24 = ptrtoint ptr %DSConfig7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DSConfig7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp8.i = icmp eq i32 %23, %25
  br i1 %cmp8.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.end25_crit_edge

land.lhs.true.i.if.end25_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %MacAddress.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 13, i32 6, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i, ptr noundef dereferenceable(6) %MacAddress, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i121 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i121, label %land.lhs.true14.i, label %land.lhs.true9.i.if.end25_crit_edge

land.lhs.true9.i.if.end25_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

land.lhs.true14.i:                                ; preds = %land.lhs.true9.i
  %Ssid16.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 13, i32 6, i32 3, i32 1
  %Ssid19.i = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 3, i32 1
  %bcmp49.i = call i32 @bcmp(ptr %Ssid16.i, ptr %Ssid19.i, i32 %19) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49.i)
  %tobool24.not.i = icmp eq i32 %bcmp49.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %land.lhs.true14.i.if.end25_crit_edge

land.lhs.true14.i.if.end25_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

land.lhs.true25.i:                                ; preds = %land.lhs.true14.i
  %26 = xor i16 %d_cap.0.copyload.i, %s_cap.0.copyload.i
  %27 = and i16 %26, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %if.then24, label %land.lhs.true25.i.if.end25_crit_edge

land.lhs.true25.i.if.end25_crit_edge:             ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true25.i
  %and.i123 = and i32 %14, -129
  %29 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i123, ptr %fw_state.i, align 8
  %to_join.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %to_join.i, align 4
  %31 = ptrtoint ptr %fw_state.i.i137 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw_state.i.i137, align 8
  %or.i.i = or i32 %32, 1
  store i32 %or.i.i, ptr %fw_state.i.i137, align 8
  %LedControlHandler.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 4
  %33 = ptrtoint ptr %LedControlHandler.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %LedControlHandler.i, align 4
  call void %34(ptr noundef %1, i32 noundef 2) #15
  call void @r8712_os_indicate_connect(ptr noundef %1) #15
  %power_mgnt.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 9, i32 17
  %35 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %power_mgnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.not.i = icmp eq i8 %36, 0
  br i1 %cmp.not.i, label %if.then24.cleanup_crit_edge, label %if.then.i

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %dhcp_timer.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %37, 6000
  %call2.i = call i32 @mod_timer(ptr noundef %dhcp_timer.i, i32 noundef %add.i) #15
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true25.i.if.end25_crit_edge, %land.lhs.true14.i.if.end25_crit_edge, %land.lhs.true9.i.if.end25_crit_edge, %land.lhs.true.i.if.end25_crit_edge, %if.then19.if.end25_crit_edge
  call void @r8712_disassoc_cmd(ptr noundef %1) #15
  %38 = ptrtoint ptr %fw_state.i.i137 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw_state.i.i137, align 8
  %40 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i125 = icmp eq i32 %40, 0
  br i1 %tobool.not.i125, label %if.end25.if.end.i_crit_edge, label %if.then.i127

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i127:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %and.i21.i = and i32 %39, -2
  %41 = ptrtoint ptr %fw_state.i.i137 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i21.i, ptr %fw_state.i.i137, align 8
  %LedControlHandler.i126 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 4
  %42 = ptrtoint ptr %LedControlHandler.i126 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %LedControlHandler.i126, align 4
  call void %43(ptr noundef %1, i32 noundef 3) #15
  call void @r8712_os_indicate_disconnect(ptr noundef %1) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i127, %if.end25.if.end.i_crit_edge
  %pwr_mode.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 11, i32 6
  %44 = ptrtoint ptr %pwr_mode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pwr_mode.i, align 4
  %power_mgnt.i128 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 9, i32 17
  %46 = ptrtoint ptr %power_mgnt.i128 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %power_mgnt.i128, align 1
  %conv.i129 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i129)
  %cmp.not.i130 = icmp eq i32 %45, %conv.i129
  br i1 %cmp.not.i130, label %if.end.i.ask_for_joinbss.sink.split_crit_edge, label %if.then2.i

if.end.i.ask_for_joinbss.sink.split_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ask_for_joinbss.sink.split

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %dhcp_timer.i131 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 19
  %call3.i = call i32 @del_timer(ptr noundef %dhcp_timer.i131) #15
  %48 = ptrtoint ptr %power_mgnt.i128 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %power_mgnt.i128, align 1
  %conv6.i = zext i8 %49 to i32
  %smart_ps.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 9, i32 16
  %50 = ptrtoint ptr %smart_ps.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %smart_ps.i, align 8
  %conv8.i = zext i8 %51 to i32
  call void @r8712_set_ps_mode(ptr noundef %1, i32 noundef %conv6.i, i32 noundef %conv8.i) #15
  br label %ask_for_joinbss.sink.split

if.else:                                          ; preds = %if.end6
  %52 = ptrtoint ptr %assoc_ssid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %assoc_ssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp = icmp eq i32 %53, 0
  br i1 %cmp, label %if.else.ask_for_joinbss_crit_edge, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.else.ask_for_joinbss_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %ask_for_joinbss

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.then12.if.end30_crit_edge
  %Ssid = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 3
  %54 = ptrtoint ptr %Ssid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %Ssid, align 4
  %56 = ptrtoint ptr %assoc_ssid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %assoc_ssid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp42 = icmp eq i32 %55, %57
  br i1 %cmp42, label %land.lhs.true43, label %if.end30.if.end72_crit_edge

if.end30.if.end72_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

land.lhs.true43:                                  ; preds = %if.end30
  %Ssid32 = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 3, i32 1
  %bcmp = call i32 @bcmp(ptr %Ssid32, ptr %Ssid35, i32 %55) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool47.not = icmp eq i32 %bcmp, 0
  br i1 %tobool47.not, label %if.then48, label %land.lhs.true43.if.end72_crit_edge

land.lhs.true43.if.end72_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then48:                                        ; preds = %land.lhs.true43
  %58 = ptrtoint ptr %assoc_by_rssi49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %assoc_by_rssi49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool50.not = icmp eq i32 %59, 0
  br i1 %tobool50.not, label %if.else62, label %if.then51

if.then51:                                        ; preds = %if.then48
  %tobool52.not = icmp eq ptr %pnetwork_max_rssi.0153, null
  br i1 %tobool52.not, label %if.then51.if.end72_crit_edge, label %if.then53

if.then51.if.end72_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then53:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  %Rssi = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 5
  %60 = ptrtoint ptr %Rssi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %Rssi, align 4
  %Rssi56 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork_max_rssi.0153, i32 0, i32 6, i32 5
  %62 = ptrtoint ptr %Rssi56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %Rssi56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp57 = icmp sgt i32 %61, %63
  %spec.select = select i1 %cmp57, ptr %7, ptr %pnetwork_max_rssi.0153
  br label %if.end72

if.else62:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %wps_ie.i) #15
  %64 = call ptr @memset(ptr %wps_ie.i, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen.i) #15
  %65 = ptrtoint ptr %wps_ielen.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %wps_ielen.i, align 4, !annotation !24
  %66 = ptrtoint ptr %wps_phase.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %wps_phase.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i132 = icmp eq i8 %67, 0
  br i1 %tobool.not.i132, label %if.end5.i, label %if.then.i134

if.then.i134:                                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  %IEs.i = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 11
  %IELength.i = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 10
  %68 = ptrtoint ptr %IELength.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %IELength.i, align 4
  %call.i = call i32 @r8712_get_wps_ie(ptr noundef %IEs.i, i32 noundef %69, ptr noundef nonnull %wps_ie.i, ptr noundef nonnull %wps_ielen.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp ne i32 %call.i, 0
  %..i133 = zext i1 %tobool3.not.i to i32
  br label %is_desired_network.exit

if.end5.i:                                        ; preds = %if.else62
  %70 = ptrtoint ptr %PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %PrivacyAlgrthm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.not.i135 = icmp eq i32 %71, 0
  br i1 %cmp.not.i135, label %if.end5.i.if.end9.i_crit_edge, label %land.lhs.true.i136

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

land.lhs.true.i136:                               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  %Privacy.i = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 4
  %72 = ptrtoint ptr %Privacy.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %Privacy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp7.i = icmp ne i32 %73, 0
  %spec.select.i = zext i1 %cmp7.i to i32
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.i136, %if.end5.i.if.end9.i_crit_edge
  %bselected.0.i = phi i32 [ 1, %if.end5.i.if.end9.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i136 ]
  %74 = ptrtoint ptr %fw_state.i.i137 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fw_state.i.i137, align 8
  %76 = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool11.not.i = icmp eq i32 %76, 0
  br i1 %tobool11.not.i, label %if.end9.i.is_desired_network.exit_crit_edge, label %if.then12.i

if.end9.i.is_desired_network.exit_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_desired_network.exit

if.then12.i:                                      ; preds = %if.end9.i
  %InfrastructureMode.i = getelementptr inbounds %struct.wlan_network, ptr %7, i32 0, i32 6, i32 8
  %77 = ptrtoint ptr %InfrastructureMode.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %InfrastructureMode.i, align 4
  %79 = ptrtoint ptr %InfrastructureMode16.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %InfrastructureMode16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp17.not.i = icmp eq i32 %78, %80
  br i1 %cmp17.not.i, label %if.then12.i.is_desired_network.exit_crit_edge, label %is_desired_network.exit.thread

if.then12.i.is_desired_network.exit_crit_edge:    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_desired_network.exit

is_desired_network.exit.thread:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen.i) #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %wps_ie.i) #15
  br label %if.end72

is_desired_network.exit:                          ; preds = %if.then12.i.is_desired_network.exit_crit_edge, %if.end9.i.is_desired_network.exit_crit_edge, %if.then.i134
  %retval.0.i = phi i32 [ %..i133, %if.then.i134 ], [ %bselected.0.i, %if.end9.i.is_desired_network.exit_crit_edge ], [ %bselected.0.i, %if.then12.i.is_desired_network.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen.i) #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %wps_ie.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool64.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool64.not, label %is_desired_network.exit.if.end72_crit_edge, label %if.then65

is_desired_network.exit.if.end72_crit_edge:       ; preds = %is_desired_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then65:                                        ; preds = %is_desired_network.exit
  %fw_state.i138 = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 2
  %81 = ptrtoint ptr %fw_state.i138 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fw_state.i138, align 8
  %83 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool67.not = icmp eq i32 %83, 0
  br i1 %tobool67.not, label %if.then65.ask_for_joinbss_crit_edge, label %if.then68

if.then65.ask_for_joinbss_crit_edge:              ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  br label %ask_for_joinbss

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  call void @r8712_disassoc_cmd(ptr noundef %1) #15
  br label %ask_for_joinbss.sink.split

if.end72:                                         ; preds = %is_desired_network.exit.if.end72_crit_edge, %is_desired_network.exit.thread, %if.then53, %if.then51.if.end72_crit_edge, %land.lhs.true43.if.end72_crit_edge, %if.end30.if.end72_crit_edge
  %pnetwork_max_rssi.1 = phi ptr [ %pnetwork_max_rssi.0153, %land.lhs.true43.if.end72_crit_edge ], [ %pnetwork_max_rssi.0153, %is_desired_network.exit.if.end72_crit_edge ], [ %pnetwork_max_rssi.0153, %if.end30.if.end72_crit_edge ], [ %spec.select, %if.then53 ], [ %7, %if.then51.if.end72_crit_edge ], [ %pnetwork_max_rssi.0153, %is_desired_network.exit.thread ]
  %84 = ptrtoint ptr %pscanned to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pscanned, align 4
  %cmp.i.not = icmp eq ptr %scanned_queue, %85
  br i1 %cmp.i.not, label %if.then, label %if.end72.if.end6_crit_edge

if.end72.if.end6_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

ask_for_joinbss.sink.split:                       ; preds = %if.then68, %if.then2.i, %if.end.i.ask_for_joinbss.sink.split_crit_edge
  call void @r8712_free_assoc_resources(ptr noundef %1)
  br label %ask_for_joinbss

ask_for_joinbss:                                  ; preds = %ask_for_joinbss.sink.split, %if.then65.ask_for_joinbss_crit_edge, %if.else.ask_for_joinbss_crit_edge, %if.then16.ask_for_joinbss_crit_edge, %if.then.ask_for_joinbss_crit_edge
  %pnetwork.0 = phi ptr [ %7, %if.then65.ask_for_joinbss_crit_edge ], [ %7, %if.then16.ask_for_joinbss_crit_edge ], [ %pnetwork_max_rssi.1, %if.then.ask_for_joinbss_crit_edge ], [ %7, %ask_for_joinbss.sink.split ], [ %7, %if.else.ask_for_joinbss_crit_edge ]
  %call73 = call i32 @r8712_joinbss_cmd(ptr noundef %1, ptr noundef %pnetwork.0) #15
  br label %cleanup

cleanup:                                          ; preds = %ask_for_joinbss, %if.then.i, %if.then24.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call73, %ask_for_joinbss ], [ -22, %if.then.cleanup_crit_edge ], [ 2, %if.then24.cleanup_crit_edge ], [ 2, %if.then.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_update_registrypriv_dev_network(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %PrivacyAlgrthm = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.not = icmp eq i32 %1, 0
  %2 = select i1 %cmp.not.not, i32 0, i32 16777216
  %Privacy = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 4
  %3 = ptrtoint ptr %Privacy to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %Privacy, align 4
  %Rssi = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 5
  %4 = ptrtoint ptr %Rssi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %Rssi, align 4
  %wireless_mode = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 7
  %5 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wireless_mode, align 1
  %switch.tableidx = add i8 %6, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 4
  br i1 %7, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.r8712_update_registrypriv_dev_network, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %NetworkTypeInUse5 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 6
  %10 = ptrtoint ptr %NetworkTypeInUse5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.load, ptr %NetworkTypeInUse5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %channel = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 6
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel, align 4
  %conv6 = zext i8 %12 to i32
  %DSConfig = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 7, i32 3
  %13 = ptrtoint ptr %DSConfig to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv6, ptr %DSConfig, align 4
  %InfrastructureMode = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 8
  %14 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7 = icmp eq i32 %15, 0
  br i1 %cmp7, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %ATIMWindow = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 7, i32 2
  %16 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %ATIMWindow, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %dev_network = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33
  %registrypriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9
  %InfrastructureMode12 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 8
  %17 = ptrtoint ptr %InfrastructureMode12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %InfrastructureMode12, align 4
  %call = tail call i32 @r8712_generate_ie(ptr noundef %registrypriv) #15
  %IELength = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 10
  %18 = ptrtoint ptr %IELength to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %IELength, align 4
  %sub.i = add i32 %call, 116
  %19 = ptrtoint ptr %dev_network to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i, ptr %dev_network, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_assoc_resources(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7
  %MacAddress = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %0 = ptrtoint ptr %MacAddress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %MacAddress, align 4
  %add.ptr.i.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %entry.r8712_find_network.exit_crit_edge, label %do.body1.i

entry.r8712_find_network.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %r8712_find_network.exit

do.body1.i:                                       ; preds = %entry
  %lock.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body1.i
  %plist.0.in.i = phi ptr [ %scanned_queue, %do.body1.i ], [ %plist.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.i30.i = icmp eq ptr %plist.0.i, %scanned_queue
  br i1 %cmp.i30.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %MacAddress.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress.i, i32 6) #20
  %tobool9.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool9.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %spec.select.i = phi ptr [ %plist.0.i, %for.body.i.for.end.i_crit_edge ], [ null, %for.cond.i.for.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #15
  br label %r8712_find_network.exit

r8712_find_network.exit:                          ; preds = %for.end.i, %entry.r8712_find_network.exit_crit_edge
  %retval.0.i = phi ptr [ %spec.select.i, %for.end.i ], [ null, %entry.r8712_find_network.exit_crit_edge ]
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %r8712_find_network.exit.if.end_crit_edge, label %if.then

r8712_find_network.exit.if.end_crit_edge:         ; preds = %r8712_find_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %r8712_find_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  %stapriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %call6 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #15
  %sta_hash_lock = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_hash_lock) #15
  tail call void @r8712_free_stainfo(ptr noundef %adapter, ptr noundef %call6) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_hash_lock, i32 noundef %call9) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %r8712_find_network.exit.if.end_crit_edge
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 8
  %and.i43 = and i32 %8, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44.not = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44.not, label %if.end.if.end16_crit_edge, label %if.then15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @r8712_free_all_stainfo(ptr noundef %adapter) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %retval.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fixed, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %10 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_state.i, align 8
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %if.end19.if.end27_crit_edge, label %land.lhs.true

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end19
  %asoc_sta_count = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asoc_sta_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp24 = icmp eq i32 %14, 1
  br i1 %cmp24, label %if.then26, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  %free_bss_pool.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 6
  br i1 %tobool17.not, label %if.then26.if.end27_crit_edge, label %if.end.i

if.then26.if.end27_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end.i:                                         ; preds = %if.then26
  %fixed.i = getelementptr inbounds %struct.wlan_network, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %fixed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fixed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.if.end27_crit_edge

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %retval.0.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_del_init.exit.i_crit_edge

if.end3.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retval.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_del_init.exit.i_crit_edge
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %retval.0.i, ptr %retval.0.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %prev.i3.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 6, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %call.i.i9.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %retval.0.i, ptr noundef %26, ptr noundef %free_bss_pool.i) #15
  br i1 %call.i.i9.i, label %if.end.i.i10.i, label %list_del_init.exit.i.list_add_tail.exit.i_crit_edge

list_del_init.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i10.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %free_bss_pool.i, ptr %retval.0.i, align 4
  %29 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %retval.0.i, ptr %26, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i10.i, %list_del_init.exit.i.list_add_tail.exit.i_crit_edge
  %num_of_scanned.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 9
  %31 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_of_scanned.i, align 4
  %dec.i = add i32 %32, -1
  store i32 %dec.i, ptr %num_of_scanned.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %list_add_tail.exit.i, %if.end.i.if.end27_crit_edge, %if.then26.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_all_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_indicate_connect(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %to_join = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %to_join, align 4
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_state.i, align 8
  %or.i = or i32 %2, 1
  store i32 %or.i, ptr %fw_state.i, align 8
  %LedControlHandler = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 4
  %3 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %LedControlHandler, align 4
  tail call void %4(ptr noundef %padapter, i32 noundef 2) #15
  tail call void @r8712_os_indicate_connect(ptr noundef %padapter) #15
  %power_mgnt = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 17
  %5 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %power_mgnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dhcp_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 6000
  %call2 = tail call i32 @mod_timer(ptr noundef %dhcp_timer, i32 noundef %add) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_os_indicate_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_ind_disconnect(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and.i21 = and i32 %1, -2
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.i21, ptr %fw_state.i, align 8
  %LedControlHandler = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 4
  %4 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %LedControlHandler, align 4
  tail call void %5(ptr noundef %padapter, i32 noundef 3) #15
  tail call void @r8712_os_indicate_disconnect(ptr noundef %padapter) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pwr_mode = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 6
  %6 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwr_mode, align 4
  %power_mgnt = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 17
  %8 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %power_mgnt, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not = icmp eq i32 %7, %conv
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dhcp_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 19
  %call3 = tail call i32 @del_timer(ptr noundef %dhcp_timer) #15
  %10 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %power_mgnt, align 1
  %conv6 = zext i8 %11 to i32
  %smart_ps = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 16
  %12 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %smart_ps, align 8
  %conv8 = zext i8 %13 to i32
  tail call void @r8712_set_ps_mode(ptr noundef %padapter, i32 noundef %conv6, i32 noundef %conv8) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_os_indicate_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_set_ps_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_joinbss_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1
  %join_res = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 5
  %0 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %join_res, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %join_res, align 4
  %network_type = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 1
  %4 = ptrtoint ptr %network_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %network_type, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %network_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %network_type, align 4
  %network = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6
  %8 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %network, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %network to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %network, align 4
  %Ssid = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %Ssid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %Ssid, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %Ssid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %Ssid, align 4
  %Privacy = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 4
  %16 = ptrtoint ptr %Privacy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %Privacy, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %Privacy to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %Privacy, align 4
  %Rssi = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 5
  %20 = ptrtoint ptr %Rssi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Rssi, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %Rssi to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %Rssi, align 4
  %NetworkTypeInUse = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 6
  %24 = ptrtoint ptr %NetworkTypeInUse to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %NetworkTypeInUse, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %NetworkTypeInUse to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %NetworkTypeInUse, align 4
  %Configuration = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 7
  %ATIMWindow = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 7, i32 2
  %28 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ATIMWindow, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ATIMWindow, align 4
  %BeaconPeriod = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 7, i32 1
  %32 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %BeaconPeriod, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %BeaconPeriod, align 4
  %DSConfig = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 7, i32 3
  %36 = ptrtoint ptr %DSConfig to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %DSConfig, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %DSConfig to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %DSConfig, align 4
  %FHConfig = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 7, i32 4
  %DwellTime = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 7, i32 4, i32 3
  %40 = ptrtoint ptr %DwellTime to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %DwellTime, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %DwellTime to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %DwellTime, align 4
  %HopPattern = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 7, i32 4, i32 1
  %44 = ptrtoint ptr %HopPattern to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %HopPattern, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %HopPattern to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %HopPattern, align 4
  %HopSet = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 7, i32 4, i32 2
  %48 = ptrtoint ptr %HopSet to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %HopSet, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %HopSet to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %HopSet, align 4
  %52 = ptrtoint ptr %FHConfig to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %FHConfig, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %FHConfig to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %FHConfig, align 4
  %56 = ptrtoint ptr %Configuration to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %Configuration, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %Configuration to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %Configuration, align 4
  %InfrastructureMode = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 8
  %60 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %InfrastructureMode, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %InfrastructureMode, align 4
  %IELength = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 10
  %64 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %IELength, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %IELength to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %IELength, align 4
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 1
  %network74 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6
  %MacAddress75 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress75, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %sub.i = add i32 %66, 116
  %68 = ptrtoint ptr %network to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub.i, ptr %network, align 4
  %call83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #15
  %69 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %network, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 884, i32 %70)
  %cmp88 = icmp ugt i32 %70, 884
  br i1 %cmp88, label %entry.ignore_joinbss_callback_crit_edge, label %if.end

entry.ignore_joinbss_callback_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ignore_joinbss_callback

if.end:                                           ; preds = %entry
  %71 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %join_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp91 = icmp sgt i32 %72, 0
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fw_state.i, align 8
  %75 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool95.not = icmp eq i32 %75, 0
  br i1 %cmp91, label %if.then93, label %if.else230

if.then93:                                        ; preds = %if.end
  br i1 %tobool95.not, label %if.then93.ignore_joinbss_callback_crit_edge, label %if.then96

if.then93.ignore_joinbss_callback_crit_edge:      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #17
  br label %ignore_joinbss_callback

if.then96:                                        ; preds = %if.then93
  %76 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool98.not = icmp eq i32 %76, 0
  %scanned_queue143 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7
  br i1 %tobool98.not, label %if.else142, label %if.then99

if.then99:                                        ; preds = %if.then96
  %77 = ptrtoint ptr %MacAddress75 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %MacAddress75, align 4
  %add.ptr.i.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1, i32 4
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %80 to i32
  %or.i.i = or i32 %78, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %tobool.not, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.then99
  br i1 %cmp.i.i, label %if.then101.if.then154_crit_edge, label %do.body1.i

if.then101.if.then154_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then154

do.body1.i:                                       ; preds = %if.then101
  %lock.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body1.i
  %plist.0.in.i = phi ptr [ %scanned_queue143, %do.body1.i ], [ %plist.0.i, %for.body.i.for.cond.i_crit_edge ]
  %81 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.i30.i = icmp eq ptr %plist.0.i, %scanned_queue143
  br i1 %cmp.i30.i, label %if.end152.thread459, label %for.body.i

if.end152.thread459:                              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #15
  br label %if.then154

for.body.i:                                       ; preds = %for.cond.i
  %MacAddress.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress75, ptr noundef dereferenceable(6) %MacAddress.i, i32 6) #20
  %tobool9.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool9.not.i, label %if.end152, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

if.else:                                          ; preds = %if.then99
  br i1 %cmp.i.i, label %if.else.if.end113_crit_edge, label %do.body1.i360

if.else.if.end113_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

do.body1.i360:                                    ; preds = %if.else
  %lock.i358 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7, i32 1
  %call3.i359 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i358) #15
  br label %for.cond.i364

for.cond.i364:                                    ; preds = %for.body.i368.for.cond.i364_crit_edge, %do.body1.i360
  %plist.0.in.i361 = phi ptr [ %scanned_queue143, %do.body1.i360 ], [ %plist.0.i362, %for.body.i368.for.cond.i364_crit_edge ]
  %82 = ptrtoint ptr %plist.0.in.i361 to i32
  call void @__asan_load4_noabort(i32 %82)
  %plist.0.i362 = load ptr, ptr %plist.0.in.i361, align 4
  %cmp.i30.i363 = icmp eq ptr %plist.0.i362, %scanned_queue143
  br i1 %cmp.i30.i363, label %r8712_find_network.exit372.thread440, label %for.body.i368

r8712_find_network.exit372.thread440:             ; preds = %for.cond.i364
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i358, i32 noundef %call3.i359) #15
  br label %if.end113

for.body.i368:                                    ; preds = %for.cond.i364
  %MacAddress.i365 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i362, i32 0, i32 6, i32 1
  %bcmp.i366 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress75, ptr noundef dereferenceable(6) %MacAddress.i365, i32 6) #20
  %tobool9.not.i367 = icmp eq i32 %bcmp.i366, 0
  br i1 %tobool9.not.i367, label %r8712_find_network.exit372, label %for.body.i368.for.cond.i364_crit_edge

for.body.i368.for.cond.i364_crit_edge:            ; preds = %for.body.i368
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i364

r8712_find_network.exit372:                       ; preds = %for.body.i368
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i358, i32 noundef %call3.i359) #15
  %tobool111.not = icmp eq ptr %plist.0.i362, null
  br i1 %tobool111.not, label %r8712_find_network.exit372.if.end113_crit_edge, label %if.then112

r8712_find_network.exit372.if.end113_crit_edge:   ; preds = %r8712_find_network.exit372
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then112:                                       ; preds = %r8712_find_network.exit372
  call void @__sanitizer_cov_trace_pc() #17
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i362, i32 0, i32 2
  %83 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %fixed, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %r8712_find_network.exit372.if.end113_crit_edge, %r8712_find_network.exit372.thread440, %if.else.if.end113_crit_edge
  %call117 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress75) #15
  %sta_hash_lock = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7, i32 3
  %call126 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_hash_lock) #15
  tail call void @r8712_free_stainfo(ptr noundef %adapter, ptr noundef %call117) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_hash_lock, i32 noundef %call126) #15
  %84 = ptrtoint ptr %MacAddress to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %MacAddress, align 4
  %add.ptr.i.i373 = getelementptr %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 1, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i373 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i373, align 2
  %conv.i.i374 = zext i16 %87 to i32
  %or.i.i375 = or i32 %85, %conv.i.i374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i375)
  %cmp.i.i376 = icmp eq i32 %or.i.i375, 0
  br i1 %cmp.i.i376, label %if.end113.if.then154_crit_edge, label %do.body1.i379

if.end113.if.then154_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then154

do.body1.i379:                                    ; preds = %if.end113
  %lock.i377 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7, i32 1
  %call3.i378 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i377) #15
  br label %for.cond.i383

for.cond.i383:                                    ; preds = %for.body.i387.for.cond.i383_crit_edge, %do.body1.i379
  %plist.0.in.i380 = phi ptr [ %scanned_queue143, %do.body1.i379 ], [ %plist.0.i381, %for.body.i387.for.cond.i383_crit_edge ]
  %88 = ptrtoint ptr %plist.0.in.i380 to i32
  call void @__asan_load4_noabort(i32 %88)
  %plist.0.i381 = load ptr, ptr %plist.0.in.i380, align 4
  %cmp.i30.i382 = icmp eq ptr %plist.0.i381, %scanned_queue143
  br i1 %cmp.i30.i382, label %r8712_find_network.exit391.thread445, label %for.body.i387

r8712_find_network.exit391.thread445:             ; preds = %for.cond.i383
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i377, i32 noundef %call3.i378) #15
  br label %if.then154

for.body.i387:                                    ; preds = %for.cond.i383
  %MacAddress.i384 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i381, i32 0, i32 6, i32 1
  %bcmp.i385 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress.i384, i32 6) #20
  %tobool9.not.i386 = icmp eq i32 %bcmp.i385, 0
  br i1 %tobool9.not.i386, label %r8712_find_network.exit391, label %for.body.i387.for.cond.i383_crit_edge

for.body.i387.for.cond.i383_crit_edge:            ; preds = %for.body.i387
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i383

r8712_find_network.exit391:                       ; preds = %for.body.i387
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i377, i32 noundef %call3.i378) #15
  %tobool137.not = icmp eq ptr %plist.0.i381, null
  br i1 %tobool137.not, label %r8712_find_network.exit391.if.then154_crit_edge, label %r8712_find_network.exit391.if.end159.sink.split_crit_edge

r8712_find_network.exit391.if.end159.sink.split_crit_edge: ; preds = %r8712_find_network.exit391
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end159.sink.split

r8712_find_network.exit391.if.then154_crit_edge:  ; preds = %r8712_find_network.exit391
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then154

if.else142:                                       ; preds = %if.then96
  %89 = ptrtoint ptr %MacAddress to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %MacAddress, align 4
  %add.ptr.i.i392 = getelementptr %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 1, i32 4
  %91 = ptrtoint ptr %add.ptr.i.i392 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %add.ptr.i.i392, align 2
  %conv.i.i393 = zext i16 %92 to i32
  %or.i.i394 = or i32 %90, %conv.i.i393
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i394)
  %cmp.i.i395 = icmp eq i32 %or.i.i394, 0
  br i1 %cmp.i.i395, label %if.else142.if.then154_crit_edge, label %do.body1.i398

if.else142.if.then154_crit_edge:                  ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then154

do.body1.i398:                                    ; preds = %if.else142
  %lock.i396 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7, i32 1
  %call3.i397 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i396) #15
  br label %for.cond.i402

for.cond.i402:                                    ; preds = %for.body.i406.for.cond.i402_crit_edge, %do.body1.i398
  %plist.0.in.i399 = phi ptr [ %scanned_queue143, %do.body1.i398 ], [ %plist.0.i400, %for.body.i406.for.cond.i402_crit_edge ]
  %93 = ptrtoint ptr %plist.0.in.i399 to i32
  call void @__asan_load4_noabort(i32 %93)
  %plist.0.i400 = load ptr, ptr %plist.0.in.i399, align 4
  %cmp.i30.i401 = icmp eq ptr %plist.0.i400, %scanned_queue143
  br i1 %cmp.i30.i401, label %r8712_find_network.exit410.thread450, label %for.body.i406

r8712_find_network.exit410.thread450:             ; preds = %for.cond.i402
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i396, i32 noundef %call3.i397) #15
  br label %if.then154

for.body.i406:                                    ; preds = %for.cond.i402
  %MacAddress.i403 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i400, i32 0, i32 6, i32 1
  %bcmp.i404 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress.i403, i32 6) #20
  %tobool9.not.i405 = icmp eq i32 %bcmp.i404, 0
  br i1 %tobool9.not.i405, label %r8712_find_network.exit410, label %for.body.i406.for.cond.i402_crit_edge

for.body.i406.for.cond.i402_crit_edge:            ; preds = %for.body.i406
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i402

r8712_find_network.exit410:                       ; preds = %for.body.i406
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i396, i32 noundef %call3.i397) #15
  %tobool148.not = icmp eq ptr %plist.0.i400, null
  br i1 %tobool148.not, label %r8712_find_network.exit410.if.then154_crit_edge, label %r8712_find_network.exit410.if.end159.sink.split_crit_edge

r8712_find_network.exit410.if.end159.sink.split_crit_edge: ; preds = %r8712_find_network.exit410
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end159.sink.split

r8712_find_network.exit410.if.then154_crit_edge:  ; preds = %r8712_find_network.exit410
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then154

if.end152:                                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #15
  %tobool153.not = icmp eq ptr %plist.0.i, null
  br i1 %tobool153.not, label %if.end152.if.then154_crit_edge, label %if.end152.if.end159_crit_edge

if.end152.if.end159_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end159

if.end152.if.then154_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then154

if.then154:                                       ; preds = %if.end152.if.then154_crit_edge, %r8712_find_network.exit410.if.then154_crit_edge, %r8712_find_network.exit410.thread450, %if.else142.if.then154_crit_edge, %r8712_find_network.exit391.if.then154_crit_edge, %r8712_find_network.exit391.thread445, %if.end113.if.then154_crit_edge, %if.end152.thread459, %if.then101.if.then154_crit_edge
  %94 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fw_state.i, align 8
  %96 = and i32 %95, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool156.not = icmp eq i32 %96, 0
  br i1 %tobool156.not, label %if.then154.ignore_joinbss_callback_crit_edge, label %if.then157

if.then154.ignore_joinbss_callback_crit_edge:     ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #17
  br label %ignore_joinbss_callback

if.then157:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fw_state.i, align 8
  %xor = xor i32 %98, 128
  store i32 %xor, ptr %fw_state.i, align 8
  br label %ignore_joinbss_callback

if.end159.sink.split:                             ; preds = %r8712_find_network.exit410.if.end159.sink.split_crit_edge, %r8712_find_network.exit391.if.end159.sink.split_crit_edge
  %plist.0.i400.lcssa473.sink = phi ptr [ %plist.0.i381, %r8712_find_network.exit391.if.end159.sink.split_crit_edge ], [ %plist.0.i400, %r8712_find_network.exit410.if.end159.sink.split_crit_edge ]
  %fixed150 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i400.lcssa473.sink, i32 0, i32 2
  %99 = ptrtoint ptr %fixed150 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %fixed150, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.end159.sink.split, %if.end152.if.end159_crit_edge
  %100 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fw_state.i, align 8
  %102 = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool161.not = icmp eq i32 %102, 0
  br i1 %tobool161.not, label %if.end159.if.end201_crit_edge, label %if.then162

if.end159.if.end201_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

if.then162:                                       ; preds = %if.end159
  br i1 %tobool.not, label %if.then164, label %if.then162.if.end181_crit_edge

if.then162.if.end181_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end181

if.then164:                                       ; preds = %if.then162
  %call168 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #15
  %tobool169.not = icmp eq ptr %call168, null
  br i1 %tobool169.not, label %if.then164.if.end181_crit_edge, label %if.then164.if.then183_crit_edge

if.then164.if.then183_crit_edge:                  ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then183

if.then164.if.end181_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end181

if.end181:                                        ; preds = %if.then164.if.end181_crit_edge, %if.then162.if.end181_crit_edge
  %call174 = tail call ptr @r8712_alloc_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #15
  %tobool182.not = icmp eq ptr %call174, null
  br i1 %tobool182.not, label %if.else193, label %if.end181.if.then183_crit_edge

if.end181.if.then183_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then183

if.then183:                                       ; preds = %if.end181.if.then183_crit_edge, %if.then164.if.then183_crit_edge
  %ptarget_sta.0464 = phi ptr [ %call174, %if.end181.if.then183_crit_edge ], [ %call168, %if.then164.if.then183_crit_edge ]
  %103 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %join_res, align 4
  %aid = getelementptr inbounds %struct.sta_info, ptr %ptarget_sta.0464, i32 0, i32 6
  %105 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %aid, align 4
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %ptarget_sta.0464, i32 0, i32 8
  %106 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %qos_option, align 4
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %ptarget_sta.0464, i32 0, i32 7
  %107 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 5, ptr %mac_id, align 8
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8
  %108 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp185 = icmp eq i32 %109, 2
  br i1 %cmp185, label %if.then187, label %if.then183.if.end201_crit_edge

if.then183.if.end201_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

if.then187:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #17
  %binstallGrpkey = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 16
  %110 = ptrtoint ptr %binstallGrpkey to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %binstallGrpkey, align 8
  %busetkipkey = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 17
  %111 = ptrtoint ptr %busetkipkey to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %busetkipkey, align 1
  %bgrpkey_handshake = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 20
  %112 = ptrtoint ptr %bgrpkey_handshake to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %bgrpkey_handshake, align 1
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %ptarget_sta.0464, i32 0, i32 10
  %113 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %ieee8021x_blocked, align 8
  %PrivacyAlgrthm = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 1
  %114 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %PrivacyAlgrthm, align 4
  %XPrivacy = getelementptr inbounds %struct.sta_info, ptr %ptarget_sta.0464, i32 0, i32 11
  %116 = ptrtoint ptr %XPrivacy to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %XPrivacy, align 4
  %tkiptxmickey = getelementptr inbounds %struct.sta_info, ptr %ptarget_sta.0464, i32 0, i32 12
  %117 = call ptr @memset(ptr %tkiptxmickey, i32 0, i32 64)
  br label %if.end201

if.else193:                                       ; preds = %if.end181
  %118 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fw_state.i, align 8
  %120 = and i32 %119, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool195.not = icmp eq i32 %120, 0
  br i1 %tobool195.not, label %if.else193.ignore_joinbss_callback_crit_edge, label %if.then196

if.else193.ignore_joinbss_callback_crit_edge:     ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #17
  br label %ignore_joinbss_callback

if.then196:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fw_state.i, align 8
  %xor198 = xor i32 %122, 128
  store i32 %xor198, ptr %fw_state.i, align 8
  br label %ignore_joinbss_callback

if.end201:                                        ; preds = %if.then187, %if.then183.if.end201_crit_edge, %if.end159.if.end201_crit_edge
  %123 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %network, align 4
  %125 = call ptr @memcpy(ptr %network74, ptr %network, i32 %124)
  %126 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %join_res, align 4
  %aid207 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 4
  %128 = ptrtoint ptr %aid207 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %aid207, align 4
  %129 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %switch.selectcmp = icmp eq i32 %130, 0
  %switch.select = select i1 %switch.selectcmp, i32 32, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %switch.selectcmp477 = icmp eq i32 %130, 1
  %switch.select478 = select i1 %switch.selectcmp477, i32 8, i32 %switch.select
  %131 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %switch.select478, ptr %fw_state.i, align 8
  %add.ptr = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 11, i32 12
  %IELength217 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 10
  %132 = ptrtoint ptr %IELength217 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %IELength217, align 4
  tail call void @r8712_update_protection(ptr noundef %adapter, ptr noundef %add.ptr, i32 noundef %133) #15
  %134 = ptrtoint ptr %IELength217 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %IELength217, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #15
  %htpriv.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 21
  %136 = ptrtoint ptr %htpriv.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %htpriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.not.i423 = icmp eq i32 %137, 0
  br i1 %tobool.not.i423, label %if.end201.update_ht_cap.exit_crit_edge, label %if.end.i

if.end201.update_ht_cap.exit_crit_edge:           ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_ht_cap.exit

if.end.i:                                         ; preds = %if.end201
  %ampdu_enable.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 21, i32 1
  %138 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ampdu_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool1.not.i = icmp eq i32 %139, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ampdu_enable2.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 36
  %140 = ptrtoint ptr %ampdu_enable2.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ampdu_enable2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %141)
  %cmp.i = icmp eq i8 %141, 1
  br i1 %cmp.i, label %if.then4.i, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %142 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %ampdu_enable.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %143 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %len.i, align 4
  %sub.i424 = add i32 %135, -12
  %call.i = call ptr @r8712_get_ie(ptr noundef %add.ptr, i32 noundef 45, ptr noundef nonnull %len.i, i32 noundef %sub.i424) #15
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end18.i_crit_edge, label %land.lhs.true8.i

if.end6.i.if.end18.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

land.lhs.true8.i:                                 ; preds = %if.end6.i
  %144 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp9.not.i = icmp eq i32 %145, 0
  br i1 %cmp9.not.i, label %land.lhs.true8.i.if.end18.i_crit_edge, label %if.then11.i

land.lhs.true8.i.if.end18.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then11.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  %ampdu_params_info.i = getelementptr i8, ptr %call.i, i32 4
  %146 = ptrtoint ptr %ampdu_params_info.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ampdu_params_info.i, align 1
  %148 = and i8 %147, 3
  %shl.i = shl nuw nsw i8 8, %148
  %conv17.i = zext i8 %shl.i to i32
  %rx_ampdu_maxlen.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 21, i32 5
  %149 = ptrtoint ptr %rx_ampdu_maxlen.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv17.i, ptr %rx_ampdu_maxlen.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then11.i, %land.lhs.true8.i.if.end18.i_crit_edge, %if.end6.i.if.end18.i_crit_edge
  %call19.i = call ptr @r8712_get_bcmc_stainfo(ptr noundef %adapter) #15
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %for.body.preheader.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

for.body.preheader.i:                             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %indicate_seq.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 0, i32 1
  %150 = ptrtoint ptr %indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 -1, ptr %indicate_seq.i, align 4
  %wend_b.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 0, i32 2
  %151 = ptrtoint ptr %wend_b.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 -1, ptr %wend_b.i, align 2
  %indicate_seq.1.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 1, i32 1
  %152 = ptrtoint ptr %indicate_seq.1.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 -1, ptr %indicate_seq.1.i, align 4
  %wend_b.1.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 1, i32 2
  %153 = ptrtoint ptr %wend_b.1.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 -1, ptr %wend_b.1.i, align 2
  %indicate_seq.2.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 2, i32 1
  %154 = ptrtoint ptr %indicate_seq.2.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 -1, ptr %indicate_seq.2.i, align 4
  %wend_b.2.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 2, i32 2
  %155 = ptrtoint ptr %wend_b.2.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 -1, ptr %wend_b.2.i, align 2
  %indicate_seq.3.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 3, i32 1
  %156 = ptrtoint ptr %indicate_seq.3.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 -1, ptr %indicate_seq.3.i, align 4
  %wend_b.3.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 3, i32 2
  %157 = ptrtoint ptr %wend_b.3.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 -1, ptr %wend_b.3.i, align 2
  %indicate_seq.4.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 4, i32 1
  %158 = ptrtoint ptr %indicate_seq.4.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 -1, ptr %indicate_seq.4.i, align 4
  %wend_b.4.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 4, i32 2
  %159 = ptrtoint ptr %wend_b.4.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 -1, ptr %wend_b.4.i, align 2
  %indicate_seq.5.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 5, i32 1
  %160 = ptrtoint ptr %indicate_seq.5.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 -1, ptr %indicate_seq.5.i, align 4
  %wend_b.5.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 5, i32 2
  %161 = ptrtoint ptr %wend_b.5.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 -1, ptr %wend_b.5.i, align 2
  %indicate_seq.6.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 6, i32 1
  %162 = ptrtoint ptr %indicate_seq.6.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 -1, ptr %indicate_seq.6.i, align 4
  %wend_b.6.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 6, i32 2
  %163 = ptrtoint ptr %wend_b.6.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 -1, ptr %wend_b.6.i, align 2
  %indicate_seq.7.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 7, i32 1
  %164 = ptrtoint ptr %indicate_seq.7.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 -1, ptr %indicate_seq.7.i, align 4
  %wend_b.7.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 7, i32 2
  %165 = ptrtoint ptr %wend_b.7.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 -1, ptr %wend_b.7.i, align 2
  %indicate_seq.8.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 8, i32 1
  %166 = ptrtoint ptr %indicate_seq.8.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 -1, ptr %indicate_seq.8.i, align 4
  %wend_b.8.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 8, i32 2
  %167 = ptrtoint ptr %wend_b.8.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -1, ptr %wend_b.8.i, align 2
  %indicate_seq.9.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 9, i32 1
  %168 = ptrtoint ptr %indicate_seq.9.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 -1, ptr %indicate_seq.9.i, align 4
  %wend_b.9.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 9, i32 2
  %169 = ptrtoint ptr %wend_b.9.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 -1, ptr %wend_b.9.i, align 2
  %indicate_seq.10.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 10, i32 1
  %170 = ptrtoint ptr %indicate_seq.10.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 -1, ptr %indicate_seq.10.i, align 4
  %wend_b.10.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 10, i32 2
  %171 = ptrtoint ptr %wend_b.10.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 -1, ptr %wend_b.10.i, align 2
  %indicate_seq.11.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 11, i32 1
  %172 = ptrtoint ptr %indicate_seq.11.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 -1, ptr %indicate_seq.11.i, align 4
  %wend_b.11.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 11, i32 2
  %173 = ptrtoint ptr %wend_b.11.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 -1, ptr %wend_b.11.i, align 2
  %indicate_seq.12.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 12, i32 1
  %174 = ptrtoint ptr %indicate_seq.12.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 -1, ptr %indicate_seq.12.i, align 4
  %wend_b.12.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 12, i32 2
  %175 = ptrtoint ptr %wend_b.12.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 -1, ptr %wend_b.12.i, align 2
  %indicate_seq.13.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 13, i32 1
  %176 = ptrtoint ptr %indicate_seq.13.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 -1, ptr %indicate_seq.13.i, align 4
  %wend_b.13.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 13, i32 2
  %177 = ptrtoint ptr %wend_b.13.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 -1, ptr %wend_b.13.i, align 2
  %indicate_seq.14.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 14, i32 1
  %178 = ptrtoint ptr %indicate_seq.14.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 -1, ptr %indicate_seq.14.i, align 4
  %wend_b.14.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 14, i32 2
  %179 = ptrtoint ptr %wend_b.14.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -1, ptr %wend_b.14.i, align 2
  %indicate_seq.15.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 15, i32 1
  %180 = ptrtoint ptr %indicate_seq.15.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 -1, ptr %indicate_seq.15.i, align 4
  %wend_b.15.i = getelementptr %struct.sta_info, ptr %call19.i, i32 0, i32 22, i32 15, i32 2
  %181 = ptrtoint ptr %wend_b.15.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 -1, ptr %wend_b.15.i, align 2
  br label %if.end24.i

if.end24.i:                                       ; preds = %for.body.preheader.i, %if.end18.i.if.end24.i_crit_edge
  %call25.i = call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress75) #15
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end24.i.if.end39.i_crit_edge, label %for.body31.preheader.i

if.end24.i.if.end39.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39.i

for.body31.preheader.i:                           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %indicate_seq34.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 0, i32 1
  %182 = ptrtoint ptr %indicate_seq34.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 -1, ptr %indicate_seq34.i, align 4
  %wend_b35.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 0, i32 2
  %183 = ptrtoint ptr %wend_b35.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 -1, ptr %wend_b35.i, align 2
  %indicate_seq34.1.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 1, i32 1
  %184 = ptrtoint ptr %indicate_seq34.1.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 -1, ptr %indicate_seq34.1.i, align 4
  %wend_b35.1.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 1, i32 2
  %185 = ptrtoint ptr %wend_b35.1.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 -1, ptr %wend_b35.1.i, align 2
  %indicate_seq34.2.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 2, i32 1
  %186 = ptrtoint ptr %indicate_seq34.2.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 -1, ptr %indicate_seq34.2.i, align 4
  %wend_b35.2.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 2, i32 2
  %187 = ptrtoint ptr %wend_b35.2.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 -1, ptr %wend_b35.2.i, align 2
  %indicate_seq34.3.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 3, i32 1
  %188 = ptrtoint ptr %indicate_seq34.3.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 -1, ptr %indicate_seq34.3.i, align 4
  %wend_b35.3.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 3, i32 2
  %189 = ptrtoint ptr %wend_b35.3.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 -1, ptr %wend_b35.3.i, align 2
  %indicate_seq34.4.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 4, i32 1
  %190 = ptrtoint ptr %indicate_seq34.4.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 -1, ptr %indicate_seq34.4.i, align 4
  %wend_b35.4.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 4, i32 2
  %191 = ptrtoint ptr %wend_b35.4.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 -1, ptr %wend_b35.4.i, align 2
  %indicate_seq34.5.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 5, i32 1
  %192 = ptrtoint ptr %indicate_seq34.5.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 -1, ptr %indicate_seq34.5.i, align 4
  %wend_b35.5.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 5, i32 2
  %193 = ptrtoint ptr %wend_b35.5.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 -1, ptr %wend_b35.5.i, align 2
  %indicate_seq34.6.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 6, i32 1
  %194 = ptrtoint ptr %indicate_seq34.6.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -1, ptr %indicate_seq34.6.i, align 4
  %wend_b35.6.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 6, i32 2
  %195 = ptrtoint ptr %wend_b35.6.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 -1, ptr %wend_b35.6.i, align 2
  %indicate_seq34.7.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 7, i32 1
  %196 = ptrtoint ptr %indicate_seq34.7.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 -1, ptr %indicate_seq34.7.i, align 4
  %wend_b35.7.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 7, i32 2
  %197 = ptrtoint ptr %wend_b35.7.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 -1, ptr %wend_b35.7.i, align 2
  %indicate_seq34.8.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 8, i32 1
  %198 = ptrtoint ptr %indicate_seq34.8.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 -1, ptr %indicate_seq34.8.i, align 4
  %wend_b35.8.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 8, i32 2
  %199 = ptrtoint ptr %wend_b35.8.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 -1, ptr %wend_b35.8.i, align 2
  %indicate_seq34.9.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 9, i32 1
  %200 = ptrtoint ptr %indicate_seq34.9.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 -1, ptr %indicate_seq34.9.i, align 4
  %wend_b35.9.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 9, i32 2
  %201 = ptrtoint ptr %wend_b35.9.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 -1, ptr %wend_b35.9.i, align 2
  %indicate_seq34.10.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 10, i32 1
  %202 = ptrtoint ptr %indicate_seq34.10.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 -1, ptr %indicate_seq34.10.i, align 4
  %wend_b35.10.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 10, i32 2
  %203 = ptrtoint ptr %wend_b35.10.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 -1, ptr %wend_b35.10.i, align 2
  %indicate_seq34.11.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 11, i32 1
  %204 = ptrtoint ptr %indicate_seq34.11.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 -1, ptr %indicate_seq34.11.i, align 4
  %wend_b35.11.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 11, i32 2
  %205 = ptrtoint ptr %wend_b35.11.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 -1, ptr %wend_b35.11.i, align 2
  %indicate_seq34.12.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 12, i32 1
  %206 = ptrtoint ptr %indicate_seq34.12.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 -1, ptr %indicate_seq34.12.i, align 4
  %wend_b35.12.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 12, i32 2
  %207 = ptrtoint ptr %wend_b35.12.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 -1, ptr %wend_b35.12.i, align 2
  %indicate_seq34.13.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 13, i32 1
  %208 = ptrtoint ptr %indicate_seq34.13.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 -1, ptr %indicate_seq34.13.i, align 4
  %wend_b35.13.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 13, i32 2
  %209 = ptrtoint ptr %wend_b35.13.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 -1, ptr %wend_b35.13.i, align 2
  %indicate_seq34.14.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 14, i32 1
  %210 = ptrtoint ptr %indicate_seq34.14.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 -1, ptr %indicate_seq34.14.i, align 4
  %wend_b35.14.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 14, i32 2
  %211 = ptrtoint ptr %wend_b35.14.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 -1, ptr %wend_b35.14.i, align 2
  %indicate_seq34.15.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 15, i32 1
  %212 = ptrtoint ptr %indicate_seq34.15.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 -1, ptr %indicate_seq34.15.i, align 4
  %wend_b35.15.i = getelementptr %struct.sta_info, ptr %call25.i, i32 0, i32 22, i32 15, i32 2
  %213 = ptrtoint ptr %wend_b35.15.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 -1, ptr %wend_b35.15.i, align 2
  br label %if.end39.i

if.end39.i:                                       ; preds = %for.body31.preheader.i, %if.end24.i.if.end39.i_crit_edge
  %214 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %len.i, align 4
  %call42.i = call ptr @r8712_get_ie(ptr noundef %add.ptr, i32 noundef 61, ptr noundef nonnull %len.i, i32 noundef %sub.i424) #15
  br label %update_ht_cap.exit

update_ht_cap.exit:                               ; preds = %if.end39.i, %if.end201.update_ht_cap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #15
  %215 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %fw_state.i, align 8
  %217 = and i32 %216, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool224.not = icmp eq i32 %217, 0
  br i1 %tobool224.not, label %update_ht_cap.exit.if.end226_crit_edge, label %if.then225

update_ht_cap.exit.if.end226_crit_edge:           ; preds = %update_ht_cap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end226

if.then225:                                       ; preds = %update_ht_cap.exit
  %to_join.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 3
  %218 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %to_join.i, align 4
  %219 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %fw_state.i, align 8
  %or.i.i430 = or i32 %220, 1
  store i32 %or.i.i430, ptr %fw_state.i, align 8
  %LedControlHandler.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 14, i32 4
  %221 = ptrtoint ptr %LedControlHandler.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %LedControlHandler.i, align 4
  call void %222(ptr noundef %adapter, i32 noundef 2) #15
  call void @r8712_os_indicate_connect(ptr noundef %adapter) #15
  %power_mgnt.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 17
  %223 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %power_mgnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %cmp.not.i = icmp eq i8 %224, 0
  br i1 %cmp.not.i, label %if.then225.if.end226_crit_edge, label %if.then.i

if.then225.if.end226_crit_edge:                   ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end226

if.then.i:                                        ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #17
  %dhcp_timer.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %225 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %225, 6000
  %call2.i = call i32 @mod_timer(ptr noundef %dhcp_timer.i, i32 noundef %add.i) #15
  br label %if.end226

if.end226:                                        ; preds = %if.then.i, %if.then225.if.end226_crit_edge, %update_ht_cap.exit.if.end226_crit_edge
  %assoc_timer = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 15
  %call227 = call i32 @del_timer(ptr noundef %assoc_timer) #15
  br label %ignore_joinbss_callback

if.else230:                                       ; preds = %if.end
  br i1 %tobool95.not, label %if.else230.ignore_joinbss_callback_crit_edge, label %if.then233

if.else230.ignore_joinbss_callback_crit_edge:     ; preds = %if.else230
  call void @__sanitizer_cov_trace_pc() #17
  br label %ignore_joinbss_callback

if.then233:                                       ; preds = %if.else230
  call void @__sanitizer_cov_trace_pc() #17
  %assoc_timer234 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %226 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %226, 1
  %call236 = tail call i32 @mod_timer(ptr noundef %assoc_timer234, i32 noundef %add) #15
  %227 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %fw_state.i, align 8
  %and.i437 = and i32 %228, -129
  store i32 %and.i437, ptr %fw_state.i, align 8
  br label %ignore_joinbss_callback

ignore_joinbss_callback:                          ; preds = %if.then233, %if.else230.ignore_joinbss_callback_crit_edge, %if.end226, %if.then196, %if.else193.ignore_joinbss_callback_crit_edge, %if.then157, %if.then154.ignore_joinbss_callback_crit_edge, %if.then93.ignore_joinbss_callback_crit_edge, %entry.ignore_joinbss_callback_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call83) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_alloc_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_update_protection(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_stassoc_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1
  %acl_list = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 10
  %call = tail call zeroext i8 @r8712_access_ctrl(ptr noundef %acl_list, ptr noundef %pbuf) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %stapriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %call3 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %pbuf) #15
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call10 = tail call ptr @r8712_alloc_stainfo(ptr noundef %stapriv, ptr noundef %pbuf) #15
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 8
  %0 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %qos_option, align 4
  %cam_id = getelementptr inbounds %struct.stassoc_event, ptr %pbuf, i32 0, i32 2
  %1 = ptrtoint ptr %cam_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cam_id, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 7
  %4 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mac_id, align 8
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8
  %5 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then14, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %PrivacyAlgrthm = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %PrivacyAlgrthm, align 4
  %XPrivacy = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 11
  %9 = ptrtoint ptr %XPrivacy to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %XPrivacy, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end13.if.end16_crit_edge
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 10
  %10 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ieee8021x_blocked, align 8
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #15
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_state.i, align 8
  %13 = and i32 %12, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.end16.if.end35_crit_edge, label %if.then29

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then29:                                        ; preds = %if.end16
  %asoc_sta_count = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7, i32 5
  %15 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asoc_sta_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp31 = icmp eq i32 %16, 2
  br i1 %cmp31, label %if.then33, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then33:                                        ; preds = %if.then29
  %to_join.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %to_join.i, align 4
  %18 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_state.i, align 8
  %or.i.i = or i32 %19, 1
  store i32 %or.i.i, ptr %fw_state.i, align 8
  %LedControlHandler.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 14, i32 4
  %20 = ptrtoint ptr %LedControlHandler.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %LedControlHandler.i, align 4
  tail call void %21(ptr noundef %adapter, i32 noundef 2) #15
  tail call void @r8712_os_indicate_connect(ptr noundef %adapter) #15
  %power_mgnt.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 17
  %22 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %power_mgnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.not.i = icmp eq i8 %23, 0
  br i1 %cmp.not.i, label %if.then33.if.end35_crit_edge, label %if.then.i

if.then33.if.end35_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  %dhcp_timer.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %24, 6000
  %call2.i = tail call i32 @mod_timer(ptr noundef %dhcp_timer.i, i32 noundef %add.i) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then.i, %if.then33.if.end35_crit_edge, %if.then29.if.end35_crit_edge, %if.end16.if.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call20) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_access_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_stadel_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1
  %stapriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #15
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 8
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i73 = icmp eq i32 %5, 0
  br i1 %tobool.not.i73, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %and.i21.i = and i32 %4, -2
  %6 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i21.i, ptr %fw_state.i, align 8
  %LedControlHandler.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 14, i32 4
  %7 = ptrtoint ptr %LedControlHandler.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %LedControlHandler.i, align 4
  tail call void %8(ptr noundef %adapter, i32 noundef 3) #15
  tail call void @r8712_os_indicate_disconnect(ptr noundef %adapter) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %pwr_mode.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 11, i32 6
  %9 = ptrtoint ptr %pwr_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pwr_mode.i, align 4
  %power_mgnt.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 17
  %11 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %power_mgnt.i, align 1
  %conv.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %10, %conv.i
  br i1 %cmp.not.i, label %if.end.i.r8712_ind_disconnect.exit_crit_edge, label %if.then2.i

if.end.i.r8712_ind_disconnect.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %r8712_ind_disconnect.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %dhcp_timer.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 19
  %call3.i = tail call i32 @del_timer(ptr noundef %dhcp_timer.i) #15
  %13 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %power_mgnt.i, align 1
  %conv6.i = zext i8 %14 to i32
  %smart_ps.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 16
  %15 = ptrtoint ptr %smart_ps.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %smart_ps.i, align 8
  %conv8.i = zext i8 %16 to i32
  tail call void @r8712_set_ps_mode(ptr noundef %adapter, i32 noundef %conv6.i, i32 noundef %conv8.i) #15
  br label %r8712_ind_disconnect.exit

r8712_ind_disconnect.exit:                        ; preds = %if.then2.i, %if.end.i.r8712_ind_disconnect.exit_crit_edge
  tail call void @r8712_free_assoc_resources(ptr noundef %adapter)
  br label %if.end

if.end:                                           ; preds = %r8712_ind_disconnect.exit, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_state.i, align 8
  %and.i75 = and i32 %18, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool.not.i76.not = icmp eq i32 %and.i75, 0
  br i1 %tobool.not.i76.not, label %if.end.if.end46_crit_edge, label %if.then8

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then8:                                         ; preds = %if.end
  %call10 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %pbuf) #15
  %sta_hash_lock = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7, i32 3
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_hash_lock) #15
  tail call void @r8712_free_stainfo(ptr noundef %adapter, ptr noundef %call10) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_hash_lock, i32 noundef %call19) #15
  %asoc_sta_count = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7, i32 5
  %19 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %asoc_sta_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp26 = icmp eq i32 %20, 1
  br i1 %cmp26, label %if.then28, label %if.then8.if.end46_crit_edge

if.then8.if.end46_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then28:                                        ; preds = %if.then8
  %scanned_queue = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7
  %network = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6
  %MacAddress = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %21 = ptrtoint ptr %MacAddress to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %MacAddress, align 4
  %add.ptr.i.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 1, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %24 to i32
  %or.i.i = or i32 %22, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then28.if.end33_crit_edge, label %do.body1.i

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

do.body1.i:                                       ; preds = %if.then28
  %lock.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 7, i32 1
  %call3.i78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body1.i
  %plist.0.in.i = phi ptr [ %scanned_queue, %do.body1.i ], [ %plist.0.i, %for.body.i.for.cond.i_crit_edge ]
  %25 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.i30.i = icmp eq ptr %plist.0.i, %scanned_queue
  br i1 %cmp.i30.i, label %r8712_find_network.exit.thread95, label %for.body.i

r8712_find_network.exit.thread95:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i78) #15
  br label %if.end33

for.body.i:                                       ; preds = %for.cond.i
  %MacAddress.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress.i, i32 6) #20
  %tobool9.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool9.not.i, label %r8712_find_network.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

r8712_find_network.exit:                          ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i78) #15
  %tobool31.not = icmp eq ptr %plist.0.i, null
  br i1 %tobool31.not, label %r8712_find_network.exit.if.end33_crit_edge, label %if.end3.i

r8712_find_network.exit.if.end33_crit_edge:       ; preds = %r8712_find_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end3.i:                                        ; preds = %r8712_find_network.exit
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 2
  %26 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %fixed, align 4
  %free_bss_pool.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %plist.0.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_del_init.exit.i_crit_edge

if.end3.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %plist.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %plist.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_del_init.exit.i_crit_edge
  %33 = ptrtoint ptr %plist.0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %plist.0.i, ptr %plist.0.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %plist.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %plist.0.i, ptr %prev.i3.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 6, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %call.i.i9.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %plist.0.i, ptr noundef %36, ptr noundef %free_bss_pool.i) #15
  br i1 %call.i.i9.i, label %if.end.i.i10.i, label %list_del_init.exit.i.free_network_nolock.exit_crit_edge

list_del_init.exit.i.free_network_nolock.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_network_nolock.exit

if.end.i.i10.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %plist.0.i, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %plist.0.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %free_bss_pool.i, ptr %plist.0.i, align 4
  %39 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %plist.0.i, ptr %36, align 4
  br label %free_network_nolock.exit

free_network_nolock.exit:                         ; preds = %if.end.i.i10.i, %list_del_init.exit.i.free_network_nolock.exit_crit_edge
  %num_of_scanned.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 9
  %41 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_of_scanned.i, align 4
  %dec.i = add i32 %42, -1
  store i32 %dec.i, ptr %num_of_scanned.i, align 4
  br label %if.end33

if.end33:                                         ; preds = %free_network_nolock.exit, %r8712_find_network.exit.if.end33_crit_edge, %r8712_find_network.exit.thread95, %if.then28.if.end33_crit_edge
  %dev_network = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33
  %MacAddress36 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1
  %IELength.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 10
  %43 = ptrtoint ptr %IELength.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %IELength.i, align 4
  %sub.i = add i32 %44, 116
  %45 = call ptr @memcpy(ptr %dev_network, ptr %network, i32 %sub.i)
  %Ssid = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 3
  %assoc_ssid = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 11
  %46 = call ptr @memcpy(ptr %Ssid, ptr %assoc_ssid, i32 36)
  %PrivacyAlgrthm.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %PrivacyAlgrthm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.not.i = icmp eq i32 %48, 0
  %49 = select i1 %cmp.not.not.i, i32 0, i32 16777216
  %Privacy.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 4
  %50 = ptrtoint ptr %Privacy.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %Privacy.i, align 4
  %Rssi.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 5
  %51 = ptrtoint ptr %Rssi.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %Rssi.i, align 4
  %wireless_mode.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 7
  %52 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %wireless_mode.i, align 1
  %switch.tableidx = add i8 %53, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %54 = icmp ult i8 %switch.tableidx, 4
  br i1 %54, label %switch.lookup, label %if.end33.sw.epilog.i_crit_edge

if.end33.sw.epilog.i_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %55 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.r8712_stadel_event_callback, i32 0, i32 %55
  %56 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %56)
  %switch.load = load i32, ptr %switch.gep, align 4
  %NetworkTypeInUse5.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 6
  %57 = ptrtoint ptr %NetworkTypeInUse5.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %switch.load, ptr %NetworkTypeInUse5.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end33.sw.epilog.i_crit_edge
  %channel.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 6
  %58 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %channel.i, align 4
  %conv6.i81 = zext i8 %59 to i32
  %DSConfig.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 7, i32 3
  %60 = ptrtoint ptr %DSConfig.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv6.i81, ptr %DSConfig.i, align 4
  %InfrastructureMode.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 13, i32 6, i32 8
  %61 = ptrtoint ptr %InfrastructureMode.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %InfrastructureMode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp7.i = icmp eq i32 %62, 0
  br i1 %cmp7.i, label %if.then.i82, label %sw.epilog.i.r8712_update_registrypriv_dev_network.exit_crit_edge

sw.epilog.i.r8712_update_registrypriv_dev_network.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %r8712_update_registrypriv_dev_network.exit

if.then.i82:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %ATIMWindow.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 7, i32 2
  %63 = ptrtoint ptr %ATIMWindow.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3, ptr %ATIMWindow.i, align 4
  br label %r8712_update_registrypriv_dev_network.exit

r8712_update_registrypriv_dev_network.exit:       ; preds = %if.then.i82, %sw.epilog.i.r8712_update_registrypriv_dev_network.exit_crit_edge
  %registrypriv.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9
  %InfrastructureMode12.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 8
  %64 = ptrtoint ptr %InfrastructureMode12.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %62, ptr %InfrastructureMode12.i, align 4
  %call.i = tail call i32 @r8712_generate_ie(ptr noundef %registrypriv.i) #15
  %IELength.i83 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 10
  %65 = ptrtoint ptr %IELength.i83 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call.i, ptr %IELength.i83, align 4
  %sub.i.i = add i32 %call.i, 116
  %66 = ptrtoint ptr %dev_network to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub.i.i, ptr %dev_network, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %68 = ptrtoint ptr %MacAddress36 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 2, ptr %MacAddress36, align 1
  %arrayidx1.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 1
  %69 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 17, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -121, ptr %arrayidx2.i, align 1
  %conv.i85 = trunc i32 %67 to i8
  %arrayidx3.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 3
  %71 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i85, ptr %arrayidx3.i, align 1
  %shr.i = lshr i32 %67, 8
  %conv5.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 4
  %72 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %67, 16
  %conv9.i = trunc i32 %shr7.i to i8
  %arrayidx10.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1, i32 5
  %73 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %74 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fw_state.i, align 8
  %76 = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool42.not = icmp eq i32 %76, 0
  br i1 %tobool42.not, label %r8712_update_registrypriv_dev_network.exit.if.end46_crit_edge, label %if.then43

r8712_update_registrypriv_dev_network.exit.if.end46_crit_edge: ; preds = %r8712_update_registrypriv_dev_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then43:                                        ; preds = %r8712_update_registrypriv_dev_network.exit
  call void @__sanitizer_cov_trace_pc() #17
  %and.i91 = and i32 %75, -97
  %or.i = or i32 %and.i91, 64
  %77 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i, ptr %fw_state.i, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %r8712_update_registrypriv_dev_network.exit.if.end46_crit_edge, %if.then8.if.end46_crit_edge, %if.end.if.end46_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_cpwm_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cpwm_tog = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 11, i32 4
  %0 = ptrtoint ptr %cpwm_tog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cpwm_tog, align 1
  %add = xor i8 %1, -128
  %state = getelementptr inbounds %struct.reportpwrstate_parm, ptr %pbuf, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  %or7 = or i8 %3, %add
  store i8 %or7, ptr %state, align 1
  tail call void @r8712_cpwm_int_hdl(ptr noundef %adapter, ptr noundef %pbuf) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_cpwm_int_hdl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_got_addbareq_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 7
  %call = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %pbuf) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tid = getelementptr inbounds %struct.ADDBA_Req_Report_parm, ptr %pbuf, i32 0, i32 2
  %0 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tid, align 2
  %idxprom = zext i8 %1 to i32
  %indicate_seq = getelementptr %struct.sta_info, ptr %call, i32 0, i32 22, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %indicate_seq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r8712_wpspbc_event_callback(ptr nocapture noundef %adapter, ptr nocapture noundef readnone %pbuf) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wps_hw_pbc_pressed = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 12
  %0 = ptrtoint ptr %wps_hw_pbc_pressed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wps_hw_pbc_pressed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %wps_hw_pbc_pressed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %wps_hw_pbc_pressed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @_r8712_sitesurvey_ctrl_handler(ptr nocapture noundef %adapter) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sitesurveyctrl = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 14
  %tx_pkts = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 5, i32 26
  %0 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tx_pkts, align 8
  %2 = ptrtoint ptr %sitesurveyctrl to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sitesurveyctrl, align 8
  %sub = sub i64 %1, %3
  %rx_pkts = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pkts, align 8
  %last_rx_pkts = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 14, i32 1
  %6 = ptrtoint ptr %last_rx_pkts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_rx_pkts, align 8
  store i64 %1, ptr %sitesurveyctrl, align 8
  store i32 %5, ptr %last_rx_pkts, align 8
  %busy_thresh = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 21
  %8 = ptrtoint ptr %busy_thresh to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %busy_thresh, align 2
  %conv = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp = icmp ugt i64 %sub, %conv
  %sub1 = sub i32 %5, %7
  %conv10 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %conv10)
  %cmp11 = icmp ugt i32 %sub1, %conv10
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11
  %spec.select = zext i1 %or.cond to i32
  %10 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 14, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_r8712_join_timeout_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_stopped, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 17
  %2 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surprise_removed, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %do.body2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body2:                                         ; preds = %lor.lhs.false
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #15
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %5, -129
  store i32 %and.i, ptr %fw_state.i, align 8
  %to_join = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %to_join, align 4
  %7 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %do.body2.if.end9_crit_edge, label %if.then8

do.body2.if.end9_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @r8712_os_indicate_disconnect(ptr noundef %adapter) #15
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i, align 8
  %and.i38 = and i32 %9, -2
  store i32 %and.i38, ptr %fw_state.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body2.if.end9_crit_edge
  %pwr_mode = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 11, i32 6
  %10 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwr_mode, align 4
  %power_mgnt = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 17
  %12 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %power_mgnt, align 1
  %conv10 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv10)
  %cmp11.not = icmp eq i32 %11, %conv10
  br i1 %cmp11.not, label %if.end9.if.end19_crit_edge, label %if.then13

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %smart_ps = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 16
  %14 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %smart_ps, align 8
  %conv18 = zext i8 %15 to i32
  tail call void @r8712_set_ps_mode(ptr noundef %adapter, i32 noundef %conv10, i32 noundef %conv18) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end9.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_scan_timeout_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #15
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %1, -2049
  store i32 %and.i, ptr %fw_state.i, align 8
  %to_join = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %to_join, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_r8712_dhcp_timeout_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_stopped, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 17
  %2 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surprise_removed, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end:                                           ; preds = %lor.lhs.false
  %pwr_mode = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 11, i32 6
  %4 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwr_mode, align 4
  %power_mgnt = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 17
  %6 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_mgnt, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %smart_ps = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 16
  %8 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %smart_ps, align 8
  %conv8 = zext i8 %9 to i32
  tail call void @r8712_set_ps_mode(ptr noundef %adapter, i32 noundef %conv, i32 noundef %conv8) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_disassoc_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_joinbss_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_set_auth(ptr noundef %adapter, ptr nocapture noundef readonly %psecuritypriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #21
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 4) #21
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %psecuritypriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %psecuritypriv, align 8
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %call7.i.i, align 8
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 19, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rspsz, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 8
  tail call void @r8712_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_enqueue_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_set_key(ptr noundef %adapter, ptr nocapture noundef readonly %psecuritypriv, i32 noundef %keyid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 28) #21
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 19) #21
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.err_free_cmd_crit_edge, label %if.end4

if.end.err_free_cmd_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_cmd

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %psecuritypriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %psecuritypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %PrivacyAlgrthm = getelementptr inbounds %struct.security_priv, ptr %psecuritypriv, i32 0, i32 1
  %XGrpPrivacy = getelementptr inbounds %struct.security_priv, ptr %psecuritypriv, i32 0, i32 5
  %storemerge.in.in = select i1 %cmp, ptr %XGrpPrivacy, ptr %PrivacyAlgrthm
  %4 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %storemerge.in = load i32, ptr %storemerge.in.in, align 4
  %storemerge = trunc i32 %storemerge.in to i8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge, ptr %call7.i.i, align 8
  %conv9 = trunc i32 %keyid to i8
  %keyid10 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %keyid10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %keyid10, align 1
  %7 = zext i8 %storemerge to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %storemerge, label %if.end4.err_free_parm_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %sw.bb15
    i8 2, label %sw.bb22
    i8 4, label %sw.bb33
  ]

if.end4.err_free_parm_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_parm

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %key = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i, i32 0, i32 3
  %arrayidx = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 3, i32 %keyid
  %8 = call ptr @memcpy(ptr %key, ptr %arrayidx, i32 5)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %key16 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i, i32 0, i32 3
  %arrayidx19 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 3, i32 %keyid
  %9 = call ptr @memcpy(ptr %key16, ptr %arrayidx19, i32 13)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end4
  %10 = add i32 %keyid, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %10)
  %11 = icmp ult i32 %10, -2
  br i1 %11, label %sw.bb22.err_free_parm_crit_edge, label %if.end28

sw.bb22.err_free_parm_crit_edge:                  ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_parm

if.end28:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #17
  %key29 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i, i32 0, i32 3
  %sub = add nsw i32 %keyid, -1
  %arrayidx31 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 7, i32 %sub
  %12 = call ptr @memcpy(ptr %key29, ptr %arrayidx31, i32 16)
  %grpkey = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %grpkey to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %grpkey, align 2
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end4
  %14 = add i32 %keyid, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %14)
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %sw.bb33.err_free_parm_crit_edge, label %if.end40

sw.bb33.err_free_parm_crit_edge:                  ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_parm

if.end40:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #17
  %key41 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i, i32 0, i32 3
  %sub44 = add nsw i32 %keyid, -1
  %arrayidx45 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 7, i32 %sub44
  %16 = call ptr @memcpy(ptr %key41, ptr %arrayidx45, i32 16)
  %grpkey47 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %grpkey47 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %grpkey47, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %if.end28, %sw.bb15, %sw.bb
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 20, ptr %call7.i, align 8
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 2
  %19 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 3
  %20 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 19, ptr %cmdsz, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 4
  %21 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 5
  %22 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rspsz, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev.i, align 8
  tail call void @r8712_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i) #15
  br label %cleanup

err_free_parm:                                    ; preds = %sw.bb33.err_free_parm_crit_edge, %sw.bb22.err_free_parm_crit_edge, %if.end4.err_free_parm_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %err_free_cmd

err_free_cmd:                                     ; preds = %err_free_parm, %if.end.err_free_cmd_crit_edge
  %ret.1 = phi i32 [ -22, %err_free_parm ], [ -12, %if.end.err_free_cmd_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %err_free_cmd, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_cmd ], [ 0, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_restruct_wmm_ie(ptr nocapture noundef readnone %adapter, ptr nocapture noundef readonly %in_ie, ptr nocapture noundef writeonly %out_ie, i32 noundef %in_len, i32 noundef %initial_out_len) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %in_len)
  %cmp75 = icmp ugt i32 %in_len, 12
  br i1 %cmp75, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %i.076 = phi i32 [ %add45, %if.end.while.body_crit_edge ], [ 12, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %i.076
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp1 = icmp eq i8 %1, -35
  %add = add i32 %i.076, 2
  br i1 %cmp1, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %arrayidx3 = getelementptr i8, ptr %in_ie, i32 %add
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %add8 = add i32 %i.076, 3
  %arrayidx9 = getelementptr i8, ptr %in_ie, i32 %add8
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %5)
  %cmp11 = icmp eq i8 %5, 80
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %add14 = add i32 %i.076, 4
  %arrayidx15 = getelementptr i8, ptr %in_ie, i32 %add14
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %7)
  %cmp17 = icmp eq i8 %7, -14
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true13.if.end_crit_edge

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %add20 = add i32 %i.076, 5
  %arrayidx21 = getelementptr i8, ptr %in_ie, i32 %add20
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp23 = icmp eq i8 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %in_len)
  %cmp27 = icmp ult i32 %add20, %in_len
  %or.cond = select i1 %cmp23, i1 %cmp27, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %land.lhs.true19.if.end_crit_edge

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader:                               ; preds = %land.lhs.true19
  %add29 = add i32 %i.076, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %i.076)
  %cmp3078 = icmp ult i32 %i.076, -9
  br i1 %cmp3078, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.080 = phi i32 [ %inc34, %for.body.for.body_crit_edge ], [ %i.076, %for.cond.preheader.for.body_crit_edge ]
  %ielength.179 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %initial_out_len, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx32 = getelementptr i8, ptr %in_ie, i32 %j.080
  %10 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %out_ie, i32 %ielength.179
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx33, align 1
  %inc = add i32 %ielength.179, 1
  %inc34 = add nuw i32 %j.080, 1
  %cmp30 = icmp ult i32 %inc34, %add29
  br i1 %cmp30, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ielength.1.lcssa = phi i32 [ %initial_out_len, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %add35 = add i32 %initial_out_len, 1
  %arrayidx36 = getelementptr i8, ptr %out_ie, i32 %add35
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %arrayidx36, align 1
  %add37 = add i32 %initial_out_len, 6
  %arrayidx38 = getelementptr i8, ptr %out_ie, i32 %add37
  %14 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx38, align 1
  %add39 = add i32 %initial_out_len, 8
  %arrayidx40 = getelementptr i8, ptr %out_ie, i32 %add39
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx40, align 1
  br label %while.end

if.end:                                           ; preds = %land.lhs.true19.if.end_crit_edge, %land.lhs.true13.if.end_crit_edge, %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %add41 = add nuw i32 %i.076, 1
  %arrayidx42 = getelementptr i8, ptr %in_ie, i32 %add41
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %17 to i32
  %add45 = add i32 %add, %conv43
  %cmp = icmp ult i32 %add45, %in_len
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %for.end, %entry.while.end_crit_edge
  %ielength.2 = phi i32 [ %ielength.1.lcssa, %for.end ], [ 0, %entry.while.end_crit_edge ], [ %initial_out_len, %if.end.while.end_crit_edge ]
  ret i32 %ielength.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_restruct_sec_ie(ptr noundef %adapter, ptr nocapture noundef readonly %in_ie, ptr nocapture noundef %out_ie, i32 noundef %in_len) local_unnamed_addr #0 align 64 {
entry:
  %sec_ie = alloca [256 x i8], align 1
  %uncst_oui = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sec_ie) #15
  %0 = call ptr @memset(ptr %sec_ie, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uncst_oui) #15
  %1 = getelementptr inbounds [4 x i8], ptr %uncst_oui, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %uncst_oui, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %uncst_oui, i32 0, i32 3
  %ndisauthtype = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 24
  %4 = ptrtoint ptr %uncst_oui to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %uncst_oui, align 4
  %5 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndisauthtype, align 4
  %ndisencryptstatus = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 25
  %7 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ndisencryptstatus, align 8
  %.off = add i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.if.end11.sink.split_crit_edge, label %if.end

entry.if.end11.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.sink.split

if.end:                                           ; preds = %entry
  %9 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %switch389 = icmp eq i32 %9, 6
  br i1 %switch389, label %if.end.if.end11.sink.split_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end.if.end11.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.end.if.end11.sink.split_crit_edge, %entry.if.end11.sink.split_crit_edge
  %.sink420 = phi i8 [ 80, %entry.if.end11.sink.split_crit_edge ], [ 15, %if.end.if.end11.sink.split_crit_edge ]
  %.sink = phi i8 [ -14, %entry.if.end11.sink.split_crit_edge ], [ -84, %if.end.if.end11.sink.split_crit_edge ]
  %authmode.1.ph = phi i8 [ -35, %entry.if.end11.sink.split_crit_edge ], [ 48, %if.end.if.end11.sink.split_crit_edge ]
  %10 = xor i1 %switch, true
  %11 = ptrtoint ptr %uncst_oui to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %uncst_oui, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink420, ptr %1, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %2, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.end.if.end11_crit_edge
  %cmp244 = phi i1 [ false, %if.end.if.end11_crit_edge ], [ %10, %if.end11.sink.split ]
  %authmode.1 = phi i8 [ 0, %if.end.if.end11_crit_edge ], [ %authmode.1.ph, %if.end11.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %14 = icmp ult i32 %8, 8
  br i1 %14, label %switch.hole_check, label %if.end11.sw.epilog_crit_edge

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end11
  %switch.maskindex = trunc i32 %8 to i8
  %switch.shifted = lshr i8 -11, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.r8712_restruct_sec_ie, i32 0, i32 %8
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %16)
  %switch.load = load i8, ptr %switch.gep, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %switch.load, ptr %3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %if.end11.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %in_len)
  %cmp17406 = icmp ugt i32 %in_len, 12
  br i1 %cmp17406, label %sw.epilog.while.body_crit_edge, label %sw.epilog.if.end223_crit_edge

sw.epilog.if.end223_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end223

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  br label %while.body

while.body:                                       ; preds = %if.end68.while.body_crit_edge, %sw.epilog.while.body_crit_edge
  %cnt.0407 = phi i32 [ %add73, %if.end68.while.body_crit_edge ], [ 12, %sw.epilog.while.body_crit_edge ]
  %arrayidx18 = getelementptr i8, ptr %in_ie, i32 %cnt.0407
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %authmode.1)
  %cmp20 = icmp eq i8 %19, %authmode.1
  br i1 %cmp20, label %if.then22, label %while.body.if.end68_crit_edge

while.body.if.end68_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

if.then22:                                        ; preds = %while.body
  %20 = zext i8 %authmode.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %authmode.1, label %if.then22.if.end68_crit_edge [
    i8 -35, label %land.lhs.true
    i8 48, label %if.then22.if.then75_crit_edge
  ]

if.then22.if.then75_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then75

if.then22.if.end68_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

land.lhs.true:                                    ; preds = %if.then22
  %add = add i32 %cnt.0407, 2
  %arrayidx26 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp385 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx26, ptr noundef nonnull dereferenceable(4) @__const.r8712_restruct_sec_ie.wpa_oui, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp385)
  %tobool.not = icmp eq i32 %bcmp385, 0
  br i1 %tobool.not, label %land.lhs.true.if.then75_crit_edge, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

land.lhs.true.if.then75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then75

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %if.then22.if.end68_crit_edge, %while.body.if.end68_crit_edge
  %add69 = add nuw i32 %cnt.0407, 1
  %arrayidx70 = getelementptr i8, ptr %in_ie, i32 %add69
  %21 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %22 to i32
  %add72 = add i32 %cnt.0407, 2
  %add73 = add i32 %add72, %conv71
  %cmp17 = icmp ult i32 %add73, %in_len
  br i1 %cmp17, label %if.end68.while.body_crit_edge, label %if.end68.if.end223_crit_edge

if.end68.if.end223_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end223

if.end68.while.body_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.then75:                                        ; preds = %land.lhs.true.if.then75_crit_edge, %if.then22.if.then75_crit_edge
  %arrayidx18.le = getelementptr i8, ptr %in_ie, i32 %cnt.0407
  %add31 = add nuw i32 %cnt.0407, 1
  %arrayidx32 = getelementptr i8, ptr %in_ie, i32 %add31
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %24 to i32
  %add34 = add nuw nsw i32 %conv33, 2
  %25 = call ptr @memcpy(ptr %sec_ie, ptr %arrayidx18.le, i32 %add34)
  %26 = ptrtoint ptr %sec_ie to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sec_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %27)
  %cmp78 = icmp eq i8 %27, -35
  br i1 %cmp78, label %while.body82, label %if.then75.if.end150_crit_edge

if.then75.if.end150_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

while.body82:                                     ; preds = %if.then75
  %arrayidx83 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 2
  %bcmp381 = call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx83, ptr noundef nonnull dereferenceable(4) @__const.r8712_restruct_sec_ie.wpa_oui, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp381)
  %tobool86.not = icmp eq i32 %bcmp381, 0
  br i1 %tobool86.not, label %if.end88, label %while.body82.if.end150_crit_edge

while.body82.if.end150_crit_edge:                 ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

if.end88:                                         ; preds = %while.body82
  %arrayidx89 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp91.not = icmp eq i8 %29, 1
  br i1 %cmp91.not, label %lor.lhs.false93, label %if.end88.if.end150_crit_edge

if.end88.if.end150_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

lor.lhs.false93:                                  ; preds = %if.end88
  %arrayidx94 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp96.not = icmp eq i8 %31, 0
  br i1 %cmp96.not, label %if.end99, label %lor.lhs.false93.if.end150_crit_edge

lor.lhs.false93.if.end150_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

if.end99:                                         ; preds = %lor.lhs.false93
  %arrayidx100 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 8
  %bcmp382 = call i32 @bcmp(ptr noundef dereferenceable(3) %arrayidx100, ptr noundef nonnull dereferenceable(3) @__const.r8712_restruct_sec_ie.wpa_oui, i32 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp382)
  %tobool103.not = icmp eq i32 %bcmp382, 0
  br i1 %tobool103.not, label %if.then104, label %if.end99.if.end150_crit_edge

if.end99.if.end150_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

if.then104:                                       ; preds = %if.end99
  %arrayidx105 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 11
  %32 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %33)
  %34 = icmp ult i8 %33, 6
  br i1 %34, label %switch.lookup428, label %if.then104.if.end117_crit_edge

if.then104.if.end117_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

switch.lookup428:                                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  %35 = sext i8 %33 to i32
  %switch.gep429 = getelementptr inbounds [6 x i32], ptr @switch.table.r8712_restruct_sec_ie.8, i32 0, i32 %35
  %36 = ptrtoint ptr %switch.gep429 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load430 = load i32, ptr %switch.gep429, align 4
  %XGrpPrivacy = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 5
  %37 = ptrtoint ptr %XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %switch.load430, ptr %XGrpPrivacy, align 4
  br label %if.end117

if.end117:                                        ; preds = %switch.lookup428, %if.then104.if.end117_crit_edge
  %arrayidx118 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 12
  %38 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp120 = icmp eq i8 %39, 1
  br i1 %cmp120, label %if.then122, label %if.else129

if.then122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx123 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 14
  %bcmp383 = call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx123, ptr noundef nonnull dereferenceable(4) %uncst_oui, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp383)
  %tobool126.not = icmp eq i32 %bcmp383, 0
  %spec.select = zext i1 %tobool126.not to i8
  br label %if.end150

if.else129:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  %conv119 = zext i8 %39 to i32
  %sub = shl nuw nsw i32 %conv119, 2
  %40 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx118, align 1
  %arrayidx133 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 14
  %41 = ptrtoint ptr %uncst_oui to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %uncst_oui, align 4
  %43 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %arrayidx133, align 1
  %arrayidx135 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 18
  %add136 = add nuw nsw i32 %sub, 14
  %arrayidx137 = getelementptr [256 x i8], ptr %sec_ie, i32 0, i32 %add136
  %arrayidx138 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %45 to i32
  %add141 = sub nuw nsw i32 -12, %sub
  %sub142 = add nsw i32 %add141, %conv139
  %46 = call ptr @memcpy(ptr %arrayidx135, ptr %arrayidx137, i32 %sub142)
  %47 = trunc i32 %sub to i8
  %48 = add i8 %47, -4
  %conv146 = sub i8 %45, %48
  store i8 %conv146, ptr %arrayidx138, align 1
  br label %if.end150

if.end150:                                        ; preds = %if.else129, %if.then122, %if.end99.if.end150_crit_edge, %lor.lhs.false93.if.end150_crit_edge, %if.end88.if.end150_crit_edge, %while.body82.if.end150_crit_edge, %if.then75.if.end150_crit_edge
  %match.1 = phi i8 [ 1, %if.else129 ], [ 1, %if.then75.if.end150_crit_edge ], [ 0, %while.body82.if.end150_crit_edge ], [ 0, %lor.lhs.false93.if.end150_crit_edge ], [ 0, %if.end88.if.end150_crit_edge ], [ 0, %if.end99.if.end150_crit_edge ], [ %spec.select, %if.then122 ]
  br i1 %cmp244, label %while.body156, label %if.end150.if.end223_crit_edge

if.end150.if.end223_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end223

while.body156:                                    ; preds = %if.end150
  %arrayidx157 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp159.not = icmp eq i8 %50, 1
  br i1 %cmp159.not, label %lor.lhs.false161, label %while.body156.if.then231.thread_crit_edge

while.body156.if.then231.thread_crit_edge:        ; preds = %while.body156
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then231.thread

lor.lhs.false161:                                 ; preds = %while.body156
  %arrayidx162 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx162, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp164.not = icmp eq i8 %52, 0
  br i1 %cmp164.not, label %if.end167, label %lor.lhs.false161.if.then231.thread_crit_edge

lor.lhs.false161.if.then231.thread_crit_edge:     ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then231.thread

if.end167:                                        ; preds = %lor.lhs.false161
  %arrayidx168 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(3) %arrayidx168, ptr noundef nonnull dereferenceable(3) %uncst_oui, i32 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool171.not = icmp eq i32 %bcmp, 0
  br i1 %tobool171.not, label %if.then172, label %if.end167.if.then231.thread_crit_edge

if.end167.if.then231.thread_crit_edge:            ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then231.thread

if.then172:                                       ; preds = %if.end167
  %arrayidx173 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 7
  %53 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx173, align 1
  %switch.tableidx = add i8 %54, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %55 = icmp ult i8 %switch.tableidx, 5
  br i1 %55, label %switch.lookup431, label %if.then172.if.end187_crit_edge

if.then172.if.end187_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end187

switch.lookup431:                                 ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #17
  %56 = sext i8 %switch.tableidx to i32
  %switch.gep432 = getelementptr inbounds [5 x i32], ptr @switch.table.r8712_restruct_sec_ie.9, i32 0, i32 %56
  %57 = ptrtoint ptr %switch.gep432 to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load433 = load i32, ptr %switch.gep432, align 4
  br label %if.end187

if.end187:                                        ; preds = %switch.lookup431, %if.then172.if.end187_crit_edge
  %.sink425 = phi i32 [ %switch.load433, %switch.lookup431 ], [ 0, %if.then172.if.end187_crit_edge ]
  %XGrpPrivacy176 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 5
  %58 = ptrtoint ptr %XGrpPrivacy176 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink425, ptr %XGrpPrivacy176, align 4
  %arrayidx188 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 8
  %59 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx188, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp190 = icmp eq i8 %60, 1
  br i1 %cmp190, label %if.then192, label %if.else199

if.then192:                                       ; preds = %if.end187
  %arrayidx193 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 10
  %bcmp380 = call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx193, ptr noundef nonnull dereferenceable(4) %uncst_oui, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp380)
  %tobool196.not = icmp eq i32 %bcmp380, 0
  br i1 %tobool196.not, label %if.then192.if.then231_crit_edge, label %if.then192.if.then231.thread_crit_edge

if.then192.if.then231.thread_crit_edge:           ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then231.thread

if.then192.if.then231_crit_edge:                  ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then231

if.else199:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  %conv189 = zext i8 %60 to i32
  %sub202 = shl nuw nsw i32 %conv189, 2
  %61 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %arrayidx188, align 1
  %arrayidx205 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 10
  %62 = ptrtoint ptr %uncst_oui to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %uncst_oui, align 4
  %64 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %arrayidx205, align 1
  %arrayidx207 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 14
  %add208 = add nuw nsw i32 %sub202, 10
  %arrayidx209 = getelementptr [256 x i8], ptr %sec_ie, i32 0, i32 %add208
  %arrayidx210 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %66 to i32
  %add213 = sub nuw nsw i32 -8, %sub202
  %sub214 = add nsw i32 %add213, %conv211
  %67 = call ptr @memcpy(ptr %arrayidx207, ptr %arrayidx209, i32 %sub214)
  %68 = trunc i32 %sub202 to i8
  %69 = add i8 %68, -4
  %conv218 = sub i8 %66, %69
  store i8 %conv218, ptr %arrayidx210, align 1
  br label %if.then231

if.end223:                                        ; preds = %if.end150.if.end223_crit_edge, %if.end68.if.end223_crit_edge, %sw.epilog.if.end223_crit_edge
  %match.2 = phi i8 [ %match.1, %if.end150.if.end223_crit_edge ], [ 0, %sw.epilog.if.end223_crit_edge ], [ 0, %if.end68.if.end223_crit_edge ]
  %70 = zext i8 %authmode.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %authmode.1, label %if.else253 [
    i8 -35, label %if.end223.if.then231_crit_edge
    i8 48, label %if.end223.if.then231_crit_edge438
  ]

if.end223.if.then231_crit_edge438:                ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then231

if.end223.if.then231_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then231

if.then231.thread:                                ; preds = %if.then192.if.then231.thread_crit_edge, %if.end167.if.then231.thread_crit_edge, %lor.lhs.false161.if.then231.thread_crit_edge, %while.body156.if.then231.thread_crit_edge
  %71 = call ptr @memcpy(ptr %out_ie, ptr %in_ie, i32 12)
  br label %if.end260

if.then231:                                       ; preds = %if.end223.if.then231_crit_edge, %if.end223.if.then231_crit_edge438, %if.else199, %if.then192.if.then231_crit_edge
  %match.2394 = phi i8 [ %match.2, %if.end223.if.then231_crit_edge ], [ %match.2, %if.end223.if.then231_crit_edge438 ], [ %match.1, %if.else199 ], [ %match.1, %if.then192.if.then231_crit_edge ]
  %72 = call ptr @memcpy(ptr %out_ie, ptr %in_ie, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %match.2394)
  %tobool232.not = icmp eq i8 %match.2394, 0
  br i1 %tobool232.not, label %if.then231.if.end260_crit_edge, label %if.then233

if.then231.if.end260_crit_edge:                   ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end260

if.then233:                                       ; preds = %if.then231
  %arrayidx234 = getelementptr i8, ptr %out_ie, i32 12
  %arrayidx236 = getelementptr inbounds [256 x i8], ptr %sec_ie, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx236, align 1
  %conv237 = zext i8 %74 to i32
  %add238 = add nuw nsw i32 %conv237, 2
  %75 = call ptr @memcpy(ptr %arrayidx234, ptr %sec_ie, i32 %add238)
  %add242 = add nuw nsw i32 %conv237, 14
  br i1 %cmp244, label %if.then246, label %if.then233.if.end251_crit_edge

if.then233.if.end251_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end251

if.then246:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #17
  %sub247 = add nuw nsw i32 %conv237, 13
  %arrayidx248 = getelementptr i8, ptr %out_ie, i32 %sub247
  %76 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx248, align 1
  %sub249 = add nuw nsw i32 %conv237, 12
  %arrayidx250 = getelementptr i8, ptr %out_ie, i32 %sub249
  %77 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx250, align 1
  br label %if.end251

if.end251:                                        ; preds = %if.then246, %if.then233.if.end251_crit_edge
  call void @r8712_report_sec_ie(ptr noundef %adapter, i8 noundef zeroext %authmode.1, ptr noundef nonnull %sec_ie) #15
  br label %if.end260

if.else253:                                       ; preds = %if.end223
  %78 = call ptr @memcpy(ptr %out_ie, ptr %in_ie, i32 12)
  %wps_phase = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 13
  %79 = ptrtoint ptr %wps_phase to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %wps_phase, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool254.not = icmp eq i8 %80, 0
  br i1 %tobool254.not, label %if.else253.if.end260_crit_edge, label %if.then255

if.else253.if.end260_crit_edge:                   ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end260

if.then255:                                       ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %out_ie, i32 12
  %wps_ie = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 14
  %wps_ie_len = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 8, i32 15
  %81 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %wps_ie_len, align 4
  %83 = call ptr @memcpy(ptr %add.ptr, ptr %wps_ie, i32 %82)
  %84 = load i32, ptr %wps_ie_len, align 4
  %add258 = add i32 %84, 12
  br label %if.end260

if.end260:                                        ; preds = %if.then255, %if.else253.if.end260_crit_edge, %if.end251, %if.then231.if.end260_crit_edge, %if.then231.thread
  %ielength.0 = phi i32 [ %add242, %if.end251 ], [ 12, %if.then231.if.end260_crit_edge ], [ %add258, %if.then255 ], [ 12, %if.else253.if.end260_crit_edge ], [ 12, %if.then231.thread ]
  %assoc_bssid = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 1, i32 12
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end260
  %i.0.i = phi i32 [ 0, %if.end260 ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 8, i32 37, i32 %i.0.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %land.lhs.true.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %Bssid.i = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 8, i32 37, i32 %i.0.i, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.i, ptr noundef dereferenceable(6) %assoc_bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %do.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.i)
  %cmp5.i = icmp ne i32 %i.0.i, 16
  %87 = and i1 %cmp244, %cmp5.i
  br i1 %87, label %if.then270, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then270:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx271 = getelementptr i8, ptr %out_ie, i32 %ielength.0
  %88 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %arrayidx271, align 1
  %inc = add i32 %ielength.0, 1
  %arrayidx272 = getelementptr i8, ptr %out_ie, i32 %inc
  %89 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx272, align 1
  %inc273 = add i32 %ielength.0, 2
  %arrayidx274 = getelementptr i8, ptr %out_ie, i32 %inc273
  %PMKID = getelementptr %struct._adapter, ptr %adapter, i32 0, i32 8, i32 37, i32 %i.0.i, i32 2
  %90 = call ptr @memcpy(ptr %arrayidx274, ptr %PMKID, i32 16)
  %add276 = add i32 %ielength.0, 18
  %arrayidx277 = getelementptr i8, ptr %out_ie, i32 13
  %91 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx277, align 1
  %add279 = add i8 %92, 18
  store i8 %add279, ptr %arrayidx277, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then270, %do.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %add276, %if.then270 ], [ %ielength.0, %do.end.i.cleanup_crit_edge ], [ %ielength.0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uncst_oui) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sec_ie) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_report_sec_ie(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r8712_init_registrypriv_dev_network(ptr nocapture noundef %adapter) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr.i = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 12, i32 3
  %MacAddress = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 1
  %0 = call ptr @memcpy(ptr %MacAddress, ptr %mac_addr.i, i32 6)
  %Ssid = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 3
  %ssid = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 5
  %1 = call ptr @memcpy(ptr %Ssid, ptr %ssid, i32 36)
  %Configuration = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 7
  %2 = ptrtoint ptr %Configuration to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %Configuration, align 4
  %BeaconPeriod = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 7, i32 1
  %3 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 100, ptr %BeaconPeriod, align 4
  %FHConfig = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 9, i32 33, i32 7, i32 4
  %4 = call ptr @memset(ptr %FHConfig, i32 0, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_generate_ie(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_joinbss_reset(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ampdu_enable = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 21, i32 1
  %htpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 21
  %0 = call ptr @memset(ptr %ampdu_enable, i32 0, i32 20)
  %1 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %. = select i1 %tobool.not, i8 1, i8 48
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860505, i8 noundef zeroext %.) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_restructure_ht_ie(ptr nocapture noundef %padapter, ptr noundef %in_ie, ptr noundef %out_ie, i32 noundef %in_len, ptr noundef %pout_len) local_unnamed_addr #0 align 64 {
entry:
  %ielen = alloca i32, align 4
  %ht_capie = alloca %struct.ieee80211_ht_cap, align 2
  %WMM_IE = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ielen) #15
  %0 = ptrtoint ptr %ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ielen, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %ht_capie) #15
  %1 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_capie, i32 0, i32 1
  %2 = call ptr @memset(ptr %ht_capie, i32 255, i32 26)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %WMM_IE) #15
  %3 = call ptr @memcpy(ptr %WMM_IE, ptr @__const.r8712_restructure_ht_ie.WMM_IE, i32 7)
  %qospriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 20
  %htpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 21
  %4 = ptrtoint ptr %htpriv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %htpriv, align 4
  %add.ptr = getelementptr i8, ptr %in_ie, i32 12
  %sub = add i32 %in_len, -12
  %call = call ptr @r8712_get_ie(ptr noundef %add.ptr, i32 noundef 45, ptr noundef nonnull %ielen, i32 noundef %sub) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %ielen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %pout_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pout_len, align 4
  %add.ptr3 = getelementptr i8, ptr %out_ie, i32 %10
  %call4 = call ptr @r8712_set_ie(ptr noundef %add.ptr3, i32 noundef 221, i32 noundef 7, ptr noundef nonnull %WMM_IE, ptr noundef %pout_len) #15
  %11 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %qospriv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %pout_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pout_len, align 4
  %14 = getelementptr inbounds i8, ptr %ht_capie, i32 2
  %15 = call ptr @memset(ptr %14, i32 0, i32 24)
  %16 = ptrtoint ptr %ht_capie to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -7656, ptr %ht_capie, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %1, align 2
  %add.ptr6 = getelementptr i8, ptr %out_ie, i32 %13
  %call7 = call ptr @r8712_set_ie(ptr noundef %add.ptr6, i32 noundef 45, i32 noundef 26, ptr noundef nonnull %ht_capie, ptr noundef %pout_len) #15
  %18 = ptrtoint ptr %htpriv to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %htpriv, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %19 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %htpriv, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %WMM_IE) #15
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %ht_capie) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ielen) #15
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_set_ie(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_issue_addbareq_cmd(ptr noundef %padapter, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %htpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 21
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %ampdu_enable = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 21, i32 1
  %2 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ampdu_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 1, i32 21, i32 2, i32 %priority
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %conv = trunc i32 %priority to i8
  tail call void @r8712_addbareq_cmd(ptr noundef %padapter, i8 noundef zeroext %conv) #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_addbareq_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @update_network(ptr nocapture noundef %dst, ptr nocapture noundef %src, ptr nocapture noundef %padapter) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %signal_qual_data = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %add.ptr1.i.i = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 11, i32 10
  %3 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %s_cap.0.copyload.i = load i16, ptr %add.ptr1.i.i, align 1
  %add.ptr1.i50.i = getelementptr %struct.wlan_bssid_ex, ptr %src, i32 0, i32 11, i32 10
  %4 = ptrtoint ptr %add.ptr1.i50.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %d_cap.0.copyload.i = load i16, ptr %add.ptr1.i50.i, align 1
  %Ssid.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 3
  %5 = ptrtoint ptr %Ssid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %Ssid.i, align 4
  %Ssid4.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3
  %7 = ptrtoint ptr %Ssid4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %Ssid4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i = icmp eq i32 %6, %8
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %DSConfig.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 7, i32 3
  %9 = ptrtoint ptr %DSConfig.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %DSConfig.i, align 4
  %DSConfig7.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %DSConfig7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %DSConfig7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8.i = icmp eq i32 %10, %12
  br i1 %cmp8.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %MacAddress.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %MacAddress11.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i, ptr noundef dereferenceable(6) %MacAddress11.i, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i73 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i73, label %land.lhs.true14.i, label %land.lhs.true9.i.if.else_crit_edge

land.lhs.true9.i.if.else_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true14.i:                                ; preds = %land.lhs.true9.i
  %Ssid16.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 3, i32 1
  %Ssid19.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3, i32 1
  %bcmp49.i = tail call i32 @bcmp(ptr %Ssid16.i, ptr %Ssid19.i, i32 %6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49.i)
  %tobool24.not.i = icmp eq i32 %bcmp49.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %land.lhs.true14.i.if.else_crit_edge

land.lhs.true14.i.if.else_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true25.i:                                ; preds = %land.lhs.true14.i
  %13 = xor i16 %d_cap.0.copyload.i, %s_cap.0.copyload.i
  %14 = and i16 %13, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %if.then, label %land.lhs.true25.i.if.else_crit_edge

land.lhs.true25.i.if.else_crit_edge:              ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true25.i
  %total_num = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 2
  %16 = ptrtoint ptr %total_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_num, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %total_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %17)
  %cmp = icmp ugt i32 %17, 19
  br i1 %cmp, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %total_num to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20, ptr %total_num, align 4
  %index = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 1
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [100 x i32], ptr %signal_qual_data, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %total_val = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 3
  %23 = ptrtoint ptr %total_val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_val, align 4
  %sub = sub i32 %24, %22
  store i32 %sub, ptr %total_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %Rssi = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 5
  %25 = ptrtoint ptr %Rssi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %Rssi, align 4
  %total_val15 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 3
  %27 = ptrtoint ptr %total_val15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %total_val15, align 4
  %add = add i32 %28, %26
  store i32 %add, ptr %total_val15, align 4
  %29 = load i32, ptr %Rssi, align 4
  %index18 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 27, i32 1
  %30 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index18, align 4
  %inc19 = add i32 %31, 1
  store i32 %inc19, ptr %index18, align 4
  %arrayidx20 = getelementptr [100 x i32], ptr %signal_qual_data, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %arrayidx20, align 4
  %33 = load i32, ptr %index18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %33)
  %cmp24 = icmp ugt i32 %33, 19
  br i1 %cmp24, label %if.then26, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %index18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %index18, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end.if.end30_crit_edge
  %35 = ptrtoint ptr %total_val15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total_val15, align 4
  %37 = ptrtoint ptr %total_num to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %total_num, align 4
  %div = udiv i32 %36, %38
  %conv37 = trunc i32 %div to i8
  %signal = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 24
  %39 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv37, ptr %signal, align 1
  %conv41 = and i32 %div, 255
  %40 = ptrtoint ptr %Rssi to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv41, ptr %Rssi, align 4
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true25.i.if.else_crit_edge, %land.lhs.true14.i.if.else_crit_edge, %land.lhs.true9.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %Rssi43 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 5
  %41 = ptrtoint ptr %Rssi43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %Rssi43, align 4
  %Rssi44 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 5
  %43 = ptrtoint ptr %Rssi44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %Rssi44, align 4
  %add45 = add i32 %44, %42
  %div46 = sdiv i32 %add45, 2
  store i32 %div46, ptr %Rssi43, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.end30
  %IELength.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 10
  %45 = ptrtoint ptr %IELength.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %IELength.i, align 4
  %sub.i = add i32 %46, 116
  %47 = call ptr @memcpy(ptr %dst, ptr %src, i32 %sub.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_get_wps_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @r8712_init_mlme_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_mlme.c", i32 47, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @r8712_init_mlme_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8712/rtl871x_mlme.c", i32 48, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @r8712_init_mlme_priv.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/rtl871x_mlme.c", i32 49, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @r8712_init_mlme_priv.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8712/rtl871x_mlme.c", i32 50, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8712/rtl871x_mlme.c", i32 509, i32 32}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 2}
!24 = !{!"auto-init"}
