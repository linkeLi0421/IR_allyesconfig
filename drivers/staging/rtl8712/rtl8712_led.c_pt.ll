; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl8712_led.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl8712_led.c"
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

@InitLed871x.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&pLed->BlinkTimer)\00", [44 x i8] zeroinitializer }, align 32
@InitLed871x.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&pLed->BlinkWorkItem)\00", [56 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.3 = internal global [13 x i64] [i64 11, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 11]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 11]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 11]
@__sancov_gen_cov_switch_values.8 = internal global [13 x i64] [i64 11, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 11]
@__sancov_gen_cov_switch_values.11 = internal global [13 x i64] [i64 11, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 11]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.15 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 11]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 11]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 11]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 6, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 87, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [41 x i8] c"../drivers/staging/rtl8712/rtl8712_led.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 88, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @InitLed871x.__key, ptr @.str, ptr @InitLed871x.__key.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @InitLed871x.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @InitLed871x.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_InitSwLeds(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ledpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14
  %LedControlHandler = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @LedControl871x, ptr %LedControlHandler, align 4
  %1 = ptrtoint ptr %ledpriv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %padapter, ptr %ledpriv, align 4
  %LedPin2.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 1
  %2 = ptrtoint ptr %LedPin2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %LedPin2.i, align 4
  %CurrLedState.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %3 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %CurrLedState.i, align 4
  %bLedOn.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %4 = ptrtoint ptr %bLedOn.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bLedOn.i, align 4
  %bLedBlinkInProgress.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %5 = ptrtoint ptr %bLedBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bLedBlinkInProgress.i, align 2
  %BlinkTimes.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 11
  %6 = ptrtoint ptr %BlinkTimes.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %BlinkTimes.i, align 4
  %BlinkingLedState.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %7 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %BlinkingLedState.i, align 4
  %BlinkTimer.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %BlinkTimer.i, ptr noundef nonnull @BlinkTimerCallback, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @InitLed871x.__key) #2
  %BlinkWorkItem.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 14
  tail call void @__init_work(ptr noundef %BlinkWorkItem.i, i32 noundef 0) #2
  %8 = ptrtoint ptr %BlinkWorkItem.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %BlinkWorkItem.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @InitLed871x.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #2
  %entry7.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %entry7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry7.i, ptr %entry7.i, align 4
  %prev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 14, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry7.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 14, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @BlinkWorkItemCallback, ptr %func.i, align 4
  %SwLed1 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %SwLed1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %padapter, ptr %SwLed1, align 4
  %LedPin2.i5 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 1
  %13 = ptrtoint ptr %LedPin2.i5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %LedPin2.i5, align 4
  %CurrLedState.i6 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 2
  %14 = ptrtoint ptr %CurrLedState.i6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %CurrLedState.i6, align 4
  %bLedOn.i7 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 3
  %15 = ptrtoint ptr %bLedOn.i7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %bLedOn.i7, align 4
  %bLedBlinkInProgress.i8 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 5
  %16 = ptrtoint ptr %bLedBlinkInProgress.i8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bLedBlinkInProgress.i8, align 2
  %BlinkTimes.i9 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 11
  %17 = ptrtoint ptr %BlinkTimes.i9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %BlinkTimes.i9, align 4
  %BlinkingLedState.i10 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 12
  %18 = ptrtoint ptr %BlinkingLedState.i10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %BlinkingLedState.i10, align 4
  %BlinkTimer.i11 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 13
  tail call void @init_timer_key(ptr noundef %BlinkTimer.i11, ptr noundef nonnull @BlinkTimerCallback, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @InitLed871x.__key) #2
  %BlinkWorkItem.i12 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 14
  tail call void @__init_work(ptr noundef %BlinkWorkItem.i12, i32 noundef 0) #2
  %19 = ptrtoint ptr %BlinkWorkItem.i12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %BlinkWorkItem.i12, align 4
  %lockdep_map.i13 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i13, ptr noundef nonnull @.str.2, ptr noundef nonnull @InitLed871x.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #2
  %entry7.i14 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 14, i32 1
  %20 = ptrtoint ptr %entry7.i14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry7.i14, ptr %entry7.i14, align 4
  %prev.i.i15 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 14, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.i15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry7.i14, ptr %prev.i.i15, align 4
  %func.i16 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 14, i32 2
  %22 = ptrtoint ptr %func.i16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @BlinkWorkItemCallback, ptr %func.i16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @LedControl871x(ptr noundef %padapter, i32 noundef %LedAction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bRegUseLed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %bRegUseLed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bRegUseLed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %LedStrategy = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %LedStrategy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %LedStrategy, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 6, label %sw.bb6
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %ledpriv1.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14
  %CustomerID.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 12, i32 11
  %5 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %CustomerID.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp.i = icmp eq i32 %6, 6
  %SwLed1.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1
  %spec.select.i = select i1 %cmp.i, ptr %SwLed1.i, ptr %ledpriv1.i
  %7 = zext i32 %LedAction to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %LedAction, label %sw.bb.cleanup_crit_edge [
    i32 8, label %sw.bb.sw.bb.i_crit_edge
    i32 3, label %sw.bb.sw.bb.i_crit_edge211
    i32 2, label %sw.bb33.i
    i32 6, label %sw.bb82.i
    i32 4, label %sw.bb.sw.bb140.i_crit_edge
    i32 5, label %sw.bb.sw.bb140.i_crit_edge212
    i32 9, label %sw.bb.sw.bb190.i_crit_edge
    i32 11, label %sw.bb.sw.bb190.i_crit_edge213
    i32 10, label %sw.bb236.i
    i32 12, label %sw.bb289.i
    i32 7, label %sw.bb310.i
  ]

sw.bb.sw.bb190.i_crit_edge213:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb190.i

sw.bb.sw.bb190.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb190.i

sw.bb.sw.bb140.i_crit_edge212:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb140.i

sw.bb.sw.bb140.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb140.i

sw.bb.sw.bb.i_crit_edge211:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge211
  %bLedNoLinkBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %8 = ptrtoint ptr %bLedNoLinkBlinkInProgress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bLedNoLinkBlinkInProgress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then2.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then2.i:                                       ; preds = %sw.bb.i
  %CurrLedState.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 2
  %10 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %CurrLedState.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %11, label %lor.lhs.false9.i [
    i32 6, label %if.then2.i.cleanup_crit_edge
    i32 9, label %if.then2.i.cleanup_crit_edge214
    i32 11, label %if.then2.i.cleanup_crit_edge215
  ]

if.then2.i.cleanup_crit_edge215:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then2.i.cleanup_crit_edge214:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false9.i:                                 ; preds = %if.then2.i
  %bLedWPSBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 10
  %13 = ptrtoint ptr %bLedWPSBlinkInProgress.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bLedWPSBlinkInProgress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not.i = icmp eq i8 %14, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false9.i.cleanup_crit_edge

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end12.i:                                       ; preds = %lor.lhs.false9.i
  %bLedLinkBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %15 = ptrtoint ptr %bLedLinkBlinkInProgress.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bLedLinkBlinkInProgress.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not.i = icmp eq i8 %16, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then14.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call.i = tail call i32 @del_timer(ptr noundef %BlinkTimer.i) #2
  %17 = ptrtoint ptr %bLedLinkBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bLedLinkBlinkInProgress.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  %bLedBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 5
  %18 = ptrtoint ptr %bLedBlinkInProgress.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bLedBlinkInProgress.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not.i = icmp eq i8 %19, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end22.i_crit_edge, label %if.then18.i

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer19.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call20.i = tail call i32 @del_timer(ptr noundef %BlinkTimer19.i) #2
  %20 = ptrtoint ptr %bLedBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bLedBlinkInProgress.i, align 2
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end22.i_crit_edge
  %21 = ptrtoint ptr %bLedNoLinkBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %bLedNoLinkBlinkInProgress.i, align 1
  %22 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %CurrLedState.i, align 4
  %bLedOn.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %23 = ptrtoint ptr %bLedOn.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bLedOn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool25.not.i = icmp eq i8 %24, 0
  %spec.select505.i = select i1 %tobool25.not.i, i32 1, i32 2
  %25 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select505.i, ptr %25, align 4
  %BlinkTimer29.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %27, 100
  %call31.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer29.i, i32 noundef %add.i) #2
  br label %cleanup

sw.bb33.i:                                        ; preds = %sw.bb
  %bLedLinkBlinkInProgress34.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %28 = ptrtoint ptr %bLedLinkBlinkInProgress34.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bLedLinkBlinkInProgress34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool35.not.i = icmp eq i8 %29, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %sw.bb33.i.cleanup_crit_edge

sw.bb33.i.cleanup_crit_edge:                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then36.i:                                      ; preds = %sw.bb33.i
  %CurrLedState37.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 2
  %30 = ptrtoint ptr %CurrLedState37.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %CurrLedState37.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %31, label %lor.lhs.false48.i [
    i32 6, label %if.then36.i.cleanup_crit_edge
    i32 9, label %if.then36.i.cleanup_crit_edge216
    i32 11, label %if.then36.i.cleanup_crit_edge217
  ]

if.then36.i.cleanup_crit_edge217:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then36.i.cleanup_crit_edge216:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then36.i.cleanup_crit_edge:                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false48.i:                                ; preds = %if.then36.i
  %bLedWPSBlinkInProgress49.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 10
  %33 = ptrtoint ptr %bLedWPSBlinkInProgress49.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bLedWPSBlinkInProgress49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool51.not.i = icmp eq i8 %34, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %lor.lhs.false48.i.cleanup_crit_edge

lor.lhs.false48.i.cleanup_crit_edge:              ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end53.i:                                       ; preds = %lor.lhs.false48.i
  %bLedNoLinkBlinkInProgress54.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %35 = ptrtoint ptr %bLedNoLinkBlinkInProgress54.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bLedNoLinkBlinkInProgress54.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool55.not.i = icmp eq i8 %36, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end60.i_crit_edge, label %if.then56.i

if.end53.i.if.end60.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer57.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call58.i = tail call i32 @del_timer(ptr noundef %BlinkTimer57.i) #2
  %37 = ptrtoint ptr %bLedNoLinkBlinkInProgress54.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %bLedNoLinkBlinkInProgress54.i, align 1
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.end53.i.if.end60.i_crit_edge
  %bLedBlinkInProgress61.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 5
  %38 = ptrtoint ptr %bLedBlinkInProgress61.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bLedBlinkInProgress61.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool62.not.i = icmp eq i8 %39, 0
  br i1 %tobool62.not.i, label %if.end60.i.if.end67.i_crit_edge, label %if.then63.i

if.end60.i.if.end67.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end67.i

if.then63.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer64.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call65.i = tail call i32 @del_timer(ptr noundef %BlinkTimer64.i) #2
  %40 = ptrtoint ptr %bLedBlinkInProgress61.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %bLedBlinkInProgress61.i, align 2
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then63.i, %if.end60.i.if.end67.i_crit_edge
  %41 = ptrtoint ptr %bLedLinkBlinkInProgress34.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %bLedLinkBlinkInProgress34.i, align 4
  %42 = ptrtoint ptr %CurrLedState37.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %CurrLedState37.i, align 4
  %bLedOn70.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %43 = ptrtoint ptr %bLedOn70.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bLedOn70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool71.not.i = icmp eq i8 %44, 0
  %spec.select506.i = select i1 %tobool71.not.i, i32 1, i32 2
  %45 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 12
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select506.i, ptr %45, align 4
  %BlinkTimer77.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add79.i = add i32 %47, 50
  %call80.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer77.i, i32 noundef %add79.i) #2
  br label %cleanup

sw.bb82.i:                                        ; preds = %sw.bb
  %traffic_busy.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14, i32 2
  %48 = ptrtoint ptr %traffic_busy.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %traffic_busy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool83.not.i = icmp eq i32 %49, 0
  br i1 %tobool83.not.i, label %sw.bb82.i.if.else88.i_crit_edge, label %land.lhs.true.i

sw.bb82.i.if.else88.i_crit_edge:                  ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else88.i

land.lhs.true.i:                                  ; preds = %sw.bb82.i
  %fw_state.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fw_state.i.i, align 8
  %52 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool86.not.i = icmp eq i32 %52, 0
  br i1 %tobool86.not.i, label %land.lhs.true.i.if.else88.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i.if.else88.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else88.i

if.else88.i:                                      ; preds = %land.lhs.true.i.if.else88.i_crit_edge, %sw.bb82.i.if.else88.i_crit_edge
  %bLedScanBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 9
  %53 = ptrtoint ptr %bLedScanBlinkInProgress.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bLedScanBlinkInProgress.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool89.not.i = icmp eq i8 %54, 0
  br i1 %tobool89.not.i, label %if.then90.i, label %if.else88.i.cleanup_crit_edge

if.else88.i.cleanup_crit_edge:                    ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then90.i:                                      ; preds = %if.else88.i
  %CurrLedState91.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 2
  %55 = ptrtoint ptr %CurrLedState91.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %CurrLedState91.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %56, label %lor.lhs.false98.i [
    i32 9, label %if.then90.i.cleanup_crit_edge
    i32 11, label %if.then90.i.cleanup_crit_edge218
  ]

if.then90.i.cleanup_crit_edge218:                 ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then90.i.cleanup_crit_edge:                    ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false98.i:                                ; preds = %if.then90.i
  %bLedWPSBlinkInProgress99.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 10
  %58 = ptrtoint ptr %bLedWPSBlinkInProgress99.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bLedWPSBlinkInProgress99.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool101.not.i = icmp eq i8 %59, 0
  br i1 %tobool101.not.i, label %if.end103.i, label %lor.lhs.false98.i.cleanup_crit_edge

lor.lhs.false98.i.cleanup_crit_edge:              ; preds = %lor.lhs.false98.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end103.i:                                      ; preds = %lor.lhs.false98.i
  %bLedNoLinkBlinkInProgress104.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %60 = ptrtoint ptr %bLedNoLinkBlinkInProgress104.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bLedNoLinkBlinkInProgress104.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool105.not.i = icmp eq i8 %61, 0
  br i1 %tobool105.not.i, label %if.end103.i.if.end110.i_crit_edge, label %if.then106.i

if.end103.i.if.end110.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end110.i

if.then106.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer107.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call108.i = tail call i32 @del_timer(ptr noundef %BlinkTimer107.i) #2
  %62 = ptrtoint ptr %bLedNoLinkBlinkInProgress104.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %bLedNoLinkBlinkInProgress104.i, align 1
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then106.i, %if.end103.i.if.end110.i_crit_edge
  %bLedLinkBlinkInProgress111.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %63 = ptrtoint ptr %bLedLinkBlinkInProgress111.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bLedLinkBlinkInProgress111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool112.not.i = icmp eq i8 %64, 0
  br i1 %tobool112.not.i, label %if.end110.i.if.end117.i_crit_edge, label %if.then113.i

if.end110.i.if.end117.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end117.i

if.then113.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer114.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call115.i = tail call i32 @del_timer(ptr noundef %BlinkTimer114.i) #2
  %65 = ptrtoint ptr %bLedLinkBlinkInProgress111.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %bLedLinkBlinkInProgress111.i, align 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then113.i, %if.end110.i.if.end117.i_crit_edge
  %bLedBlinkInProgress118.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 5
  %66 = ptrtoint ptr %bLedBlinkInProgress118.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bLedBlinkInProgress118.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool119.not.i = icmp eq i8 %67, 0
  br i1 %tobool119.not.i, label %if.end117.i.if.end124.i_crit_edge, label %if.then120.i

if.end117.i.if.end124.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end124.i

if.then120.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer121.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call122.i = tail call i32 @del_timer(ptr noundef %BlinkTimer121.i) #2
  %68 = ptrtoint ptr %bLedBlinkInProgress118.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %bLedBlinkInProgress118.i, align 2
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then120.i, %if.end117.i.if.end124.i_crit_edge
  %69 = ptrtoint ptr %bLedScanBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %bLedScanBlinkInProgress.i, align 2
  %70 = ptrtoint ptr %CurrLedState91.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 6, ptr %CurrLedState91.i, align 4
  %BlinkTimes.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 11
  %71 = ptrtoint ptr %BlinkTimes.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 24, ptr %BlinkTimes.i, align 4
  %bLedOn127.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %72 = ptrtoint ptr %bLedOn127.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bLedOn127.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool128.not.i = icmp eq i8 %73, 0
  %spec.select507.i = select i1 %tobool128.not.i, i32 1, i32 2
  %74 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 12
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.select507.i, ptr %74, align 4
  %BlinkTimer134.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add136.i = add i32 %76, 18
  %call137.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer134.i, i32 noundef %add136.i) #2
  br label %cleanup

sw.bb140.i:                                       ; preds = %sw.bb.sw.bb140.i_crit_edge, %sw.bb.sw.bb140.i_crit_edge212
  %bLedBlinkInProgress141.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 5
  %77 = ptrtoint ptr %bLedBlinkInProgress141.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bLedBlinkInProgress141.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool142.not.i = icmp eq i8 %78, 0
  br i1 %tobool142.not.i, label %if.then143.i, label %sw.bb140.i.cleanup_crit_edge

sw.bb140.i.cleanup_crit_edge:                     ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then143.i:                                     ; preds = %sw.bb140.i
  %CurrLedState144.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 2
  %79 = ptrtoint ptr %CurrLedState144.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %CurrLedState144.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %80, label %lor.lhs.false155.i [
    i32 6, label %if.then143.i.cleanup_crit_edge
    i32 9, label %if.then143.i.cleanup_crit_edge219
    i32 11, label %if.then143.i.cleanup_crit_edge220
  ]

if.then143.i.cleanup_crit_edge220:                ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then143.i.cleanup_crit_edge219:                ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then143.i.cleanup_crit_edge:                   ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false155.i:                               ; preds = %if.then143.i
  %bLedWPSBlinkInProgress156.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 10
  %82 = ptrtoint ptr %bLedWPSBlinkInProgress156.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bLedWPSBlinkInProgress156.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool158.not.i = icmp eq i8 %83, 0
  br i1 %tobool158.not.i, label %if.end160.i, label %lor.lhs.false155.i.cleanup_crit_edge

lor.lhs.false155.i.cleanup_crit_edge:             ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end160.i:                                      ; preds = %lor.lhs.false155.i
  %bLedNoLinkBlinkInProgress161.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %84 = ptrtoint ptr %bLedNoLinkBlinkInProgress161.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bLedNoLinkBlinkInProgress161.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool162.not.i = icmp eq i8 %85, 0
  br i1 %tobool162.not.i, label %if.end160.i.if.end167.i_crit_edge, label %if.then163.i

if.end160.i.if.end167.i_crit_edge:                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end167.i

if.then163.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer164.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call165.i = tail call i32 @del_timer(ptr noundef %BlinkTimer164.i) #2
  %86 = ptrtoint ptr %bLedNoLinkBlinkInProgress161.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %bLedNoLinkBlinkInProgress161.i, align 1
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then163.i, %if.end160.i.if.end167.i_crit_edge
  %bLedLinkBlinkInProgress168.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %87 = ptrtoint ptr %bLedLinkBlinkInProgress168.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bLedLinkBlinkInProgress168.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool169.not.i = icmp eq i8 %88, 0
  br i1 %tobool169.not.i, label %if.end167.i.if.end174.i_crit_edge, label %if.then170.i

if.end167.i.if.end174.i_crit_edge:                ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end174.i

if.then170.i:                                     ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer171.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call172.i = tail call i32 @del_timer(ptr noundef %BlinkTimer171.i) #2
  %89 = ptrtoint ptr %bLedLinkBlinkInProgress168.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %bLedLinkBlinkInProgress168.i, align 4
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.then170.i, %if.end167.i.if.end174.i_crit_edge
  %90 = ptrtoint ptr %bLedBlinkInProgress141.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %bLedBlinkInProgress141.i, align 2
  %91 = ptrtoint ptr %CurrLedState144.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 10, ptr %CurrLedState144.i, align 4
  %BlinkTimes177.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 11
  %92 = ptrtoint ptr %BlinkTimes177.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %BlinkTimes177.i, align 4
  %bLedOn178.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %93 = ptrtoint ptr %bLedOn178.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bLedOn178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool179.not.i = icmp eq i8 %94, 0
  %spec.select508.i = select i1 %tobool179.not.i, i32 1, i32 2
  %95 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 12
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %spec.select508.i, ptr %95, align 4
  %BlinkTimer185.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %add187.i = add i32 %97, 5
  %call188.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer185.i, i32 noundef %add187.i) #2
  br label %cleanup

sw.bb190.i:                                       ; preds = %sw.bb.sw.bb190.i_crit_edge, %sw.bb.sw.bb190.i_crit_edge213
  %bLedWPSBlinkInProgress191.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 10
  %98 = ptrtoint ptr %bLedWPSBlinkInProgress191.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bLedWPSBlinkInProgress191.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool192.not.i = icmp eq i8 %99, 0
  br i1 %tobool192.not.i, label %if.then193.i, label %sw.bb190.i.cleanup_crit_edge

sw.bb190.i.cleanup_crit_edge:                     ; preds = %sw.bb190.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then193.i:                                     ; preds = %sw.bb190.i
  %bLedNoLinkBlinkInProgress194.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %100 = ptrtoint ptr %bLedNoLinkBlinkInProgress194.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bLedNoLinkBlinkInProgress194.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool195.not.i = icmp eq i8 %101, 0
  br i1 %tobool195.not.i, label %if.then193.i.if.end200.i_crit_edge, label %if.then196.i

if.then193.i.if.end200.i_crit_edge:               ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end200.i

if.then196.i:                                     ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer197.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call198.i = tail call i32 @del_timer(ptr noundef %BlinkTimer197.i) #2
  %102 = ptrtoint ptr %bLedNoLinkBlinkInProgress194.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %bLedNoLinkBlinkInProgress194.i, align 1
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.then196.i, %if.then193.i.if.end200.i_crit_edge
  %bLedLinkBlinkInProgress201.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %103 = ptrtoint ptr %bLedLinkBlinkInProgress201.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %bLedLinkBlinkInProgress201.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool202.not.i = icmp eq i8 %104, 0
  br i1 %tobool202.not.i, label %if.end200.i.if.end207.i_crit_edge, label %if.then203.i

if.end200.i.if.end207.i_crit_edge:                ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end207.i

if.then203.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer204.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call205.i = tail call i32 @del_timer(ptr noundef %BlinkTimer204.i) #2
  %105 = ptrtoint ptr %bLedLinkBlinkInProgress201.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %bLedLinkBlinkInProgress201.i, align 4
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.then203.i, %if.end200.i.if.end207.i_crit_edge
  %bLedBlinkInProgress208.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 5
  %106 = ptrtoint ptr %bLedBlinkInProgress208.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bLedBlinkInProgress208.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool209.not.i = icmp eq i8 %107, 0
  br i1 %tobool209.not.i, label %if.end207.i.if.end214.i_crit_edge, label %if.then210.i

if.end207.i.if.end214.i_crit_edge:                ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end214.i

if.then210.i:                                     ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer211.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call212.i = tail call i32 @del_timer(ptr noundef %BlinkTimer211.i) #2
  %108 = ptrtoint ptr %bLedBlinkInProgress208.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %bLedBlinkInProgress208.i, align 2
  br label %if.end214.i

if.end214.i:                                      ; preds = %if.then210.i, %if.end207.i.if.end214.i_crit_edge
  %bLedScanBlinkInProgress215.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 9
  %109 = ptrtoint ptr %bLedScanBlinkInProgress215.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %bLedScanBlinkInProgress215.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool216.not.i = icmp eq i8 %110, 0
  br i1 %tobool216.not.i, label %if.end214.i.if.end221.i_crit_edge, label %if.then217.i

if.end214.i.if.end221.i_crit_edge:                ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end221.i

if.then217.i:                                     ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer218.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call219.i = tail call i32 @del_timer(ptr noundef %BlinkTimer218.i) #2
  %111 = ptrtoint ptr %bLedScanBlinkInProgress215.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %bLedScanBlinkInProgress215.i, align 2
  br label %if.end221.i

if.end221.i:                                      ; preds = %if.then217.i, %if.end214.i.if.end221.i_crit_edge
  %112 = ptrtoint ptr %bLedWPSBlinkInProgress191.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %bLedWPSBlinkInProgress191.i, align 1
  %CurrLedState223.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 2
  %113 = ptrtoint ptr %CurrLedState223.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 9, ptr %CurrLedState223.i, align 4
  %bLedOn224.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %114 = ptrtoint ptr %bLedOn224.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bLedOn224.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool225.not.i = icmp eq i8 %115, 0
  %spec.select509.i = select i1 %tobool225.not.i, i32 1, i32 2
  %116 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 12
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %spec.select509.i, ptr %116, align 4
  %BlinkTimer231.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %118 = load volatile i32, ptr @jiffies, align 128
  %add233.i = add i32 %118, 18
  %call234.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer231.i, i32 noundef %add233.i) #2
  br label %cleanup

sw.bb236.i:                                       ; preds = %sw.bb
  %bLedNoLinkBlinkInProgress237.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %119 = ptrtoint ptr %bLedNoLinkBlinkInProgress237.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %bLedNoLinkBlinkInProgress237.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool238.not.i = icmp eq i8 %120, 0
  br i1 %tobool238.not.i, label %sw.bb236.i.if.end243.i_crit_edge, label %if.then239.i

sw.bb236.i.if.end243.i_crit_edge:                 ; preds = %sw.bb236.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end243.i

if.then239.i:                                     ; preds = %sw.bb236.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer240.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call241.i = tail call i32 @del_timer(ptr noundef %BlinkTimer240.i) #2
  %121 = ptrtoint ptr %bLedNoLinkBlinkInProgress237.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %bLedNoLinkBlinkInProgress237.i, align 1
  br label %if.end243.i

if.end243.i:                                      ; preds = %if.then239.i, %sw.bb236.i.if.end243.i_crit_edge
  %bLedLinkBlinkInProgress244.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %122 = ptrtoint ptr %bLedLinkBlinkInProgress244.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %bLedLinkBlinkInProgress244.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool245.not.i = icmp eq i8 %123, 0
  br i1 %tobool245.not.i, label %if.end243.i.if.end250.i_crit_edge, label %if.then246.i

if.end243.i.if.end250.i_crit_edge:                ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end250.i

if.then246.i:                                     ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer247.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call248.i = tail call i32 @del_timer(ptr noundef %BlinkTimer247.i) #2
  %124 = ptrtoint ptr %bLedLinkBlinkInProgress244.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %bLedLinkBlinkInProgress244.i, align 4
  br label %if.end250.i

if.end250.i:                                      ; preds = %if.then246.i, %if.end243.i.if.end250.i_crit_edge
  %bLedBlinkInProgress251.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 5
  %125 = ptrtoint ptr %bLedBlinkInProgress251.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bLedBlinkInProgress251.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool252.not.i = icmp eq i8 %126, 0
  br i1 %tobool252.not.i, label %if.end250.i.if.end257.i_crit_edge, label %if.then253.i

if.end250.i.if.end257.i_crit_edge:                ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end257.i

if.then253.i:                                     ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer254.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call255.i = tail call i32 @del_timer(ptr noundef %BlinkTimer254.i) #2
  %127 = ptrtoint ptr %bLedBlinkInProgress251.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %bLedBlinkInProgress251.i, align 2
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.then253.i, %if.end250.i.if.end257.i_crit_edge
  %bLedScanBlinkInProgress258.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 9
  %128 = ptrtoint ptr %bLedScanBlinkInProgress258.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %bLedScanBlinkInProgress258.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool259.not.i = icmp eq i8 %129, 0
  br i1 %tobool259.not.i, label %if.end257.i.if.end264.i_crit_edge, label %if.then260.i

if.end257.i.if.end264.i_crit_edge:                ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end264.i

if.then260.i:                                     ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer261.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call262.i = tail call i32 @del_timer(ptr noundef %BlinkTimer261.i) #2
  %130 = ptrtoint ptr %bLedScanBlinkInProgress258.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %bLedScanBlinkInProgress258.i, align 2
  br label %if.end264.i

if.end264.i:                                      ; preds = %if.then260.i, %if.end257.i.if.end264.i_crit_edge
  %bLedWPSBlinkInProgress265.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 10
  %131 = ptrtoint ptr %bLedWPSBlinkInProgress265.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %bLedWPSBlinkInProgress265.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool266.not.i = icmp eq i8 %132, 0
  br i1 %tobool266.not.i, label %if.else270.i, label %if.then267.i

if.then267.i:                                     ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer268.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call269.i = tail call i32 @del_timer(ptr noundef %BlinkTimer268.i) #2
  br label %if.end272.i

if.else270.i:                                     ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #4
  %133 = ptrtoint ptr %bLedWPSBlinkInProgress265.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %bLedWPSBlinkInProgress265.i, align 1
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.else270.i, %if.then267.i
  %CurrLedState273.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 2
  %134 = ptrtoint ptr %CurrLedState273.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 11, ptr %CurrLedState273.i, align 4
  %bLedOn274.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %135 = ptrtoint ptr %bLedOn274.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %bLedOn274.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool275.not.i = icmp eq i8 %136, 0
  %BlinkingLedState283.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 12
  br i1 %tobool275.not.i, label %if.else282.i, label %if.then276.i

if.then276.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #4
  %137 = ptrtoint ptr %BlinkingLedState283.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 2, ptr %BlinkingLedState283.i, align 4
  %BlinkTimer278.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %138 = load volatile i32, ptr @jiffies, align 128
  %add280.i = add i32 %138, 500
  %call281.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer278.i, i32 noundef %add280.i) #2
  br label %cleanup

if.else282.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #4
  %139 = ptrtoint ptr %BlinkingLedState283.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %BlinkingLedState283.i, align 4
  %BlinkTimer284.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %140 = load volatile i32, ptr @jiffies, align 128
  %call287.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer284.i, i32 noundef %140) #2
  br label %cleanup

sw.bb289.i:                                       ; preds = %sw.bb
  %bLedWPSBlinkInProgress290.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 10
  %141 = ptrtoint ptr %bLedWPSBlinkInProgress290.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %bLedWPSBlinkInProgress290.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool291.not.i = icmp eq i8 %142, 0
  br i1 %tobool291.not.i, label %sw.bb289.i.if.end296.i_crit_edge, label %if.then292.i

sw.bb289.i.if.end296.i_crit_edge:                 ; preds = %sw.bb289.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end296.i

if.then292.i:                                     ; preds = %sw.bb289.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer293.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call294.i = tail call i32 @del_timer(ptr noundef %BlinkTimer293.i) #2
  %143 = ptrtoint ptr %bLedWPSBlinkInProgress290.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %bLedWPSBlinkInProgress290.i, align 1
  br label %if.end296.i

if.end296.i:                                      ; preds = %if.then292.i, %sw.bb289.i.if.end296.i_crit_edge
  %bLedNoLinkBlinkInProgress297.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %144 = ptrtoint ptr %bLedNoLinkBlinkInProgress297.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %bLedNoLinkBlinkInProgress297.i, align 1
  %CurrLedState298.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 2
  %145 = ptrtoint ptr %CurrLedState298.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 4, ptr %CurrLedState298.i, align 4
  %bLedOn299.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %146 = ptrtoint ptr %bLedOn299.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %bLedOn299.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool300.not.i = icmp eq i8 %147, 0
  %spec.select510.i = select i1 %tobool300.not.i, i32 1, i32 2
  %148 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 12
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %spec.select510.i, ptr %148, align 4
  %BlinkTimer306.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %150 = load volatile i32, ptr @jiffies, align 128
  %add308.i = add i32 %150, 100
  %call309.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer306.i, i32 noundef %add308.i) #2
  br label %cleanup

sw.bb310.i:                                       ; preds = %sw.bb
  %CurrLedState311.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 2
  %151 = ptrtoint ptr %CurrLedState311.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 2, ptr %CurrLedState311.i, align 4
  %BlinkingLedState312.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 12
  %152 = ptrtoint ptr %BlinkingLedState312.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 2, ptr %BlinkingLedState312.i, align 4
  %bLedNoLinkBlinkInProgress313.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %153 = ptrtoint ptr %bLedNoLinkBlinkInProgress313.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %bLedNoLinkBlinkInProgress313.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool314.not.i = icmp eq i8 %154, 0
  br i1 %tobool314.not.i, label %sw.bb310.i.if.end319.i_crit_edge, label %if.then315.i

sw.bb310.i.if.end319.i_crit_edge:                 ; preds = %sw.bb310.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end319.i

if.then315.i:                                     ; preds = %sw.bb310.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer316.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call317.i = tail call i32 @del_timer(ptr noundef %BlinkTimer316.i) #2
  %155 = ptrtoint ptr %bLedNoLinkBlinkInProgress313.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %bLedNoLinkBlinkInProgress313.i, align 1
  br label %if.end319.i

if.end319.i:                                      ; preds = %if.then315.i, %sw.bb310.i.if.end319.i_crit_edge
  %bLedLinkBlinkInProgress320.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %156 = ptrtoint ptr %bLedLinkBlinkInProgress320.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %bLedLinkBlinkInProgress320.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool321.not.i = icmp eq i8 %157, 0
  br i1 %tobool321.not.i, label %if.end319.i.if.end326.i_crit_edge, label %if.then322.i

if.end319.i.if.end326.i_crit_edge:                ; preds = %if.end319.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end326.i

if.then322.i:                                     ; preds = %if.end319.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer323.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call324.i = tail call i32 @del_timer(ptr noundef %BlinkTimer323.i) #2
  %158 = ptrtoint ptr %bLedLinkBlinkInProgress320.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %bLedLinkBlinkInProgress320.i, align 4
  br label %if.end326.i

if.end326.i:                                      ; preds = %if.then322.i, %if.end319.i.if.end326.i_crit_edge
  %bLedBlinkInProgress327.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 5
  %159 = ptrtoint ptr %bLedBlinkInProgress327.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %bLedBlinkInProgress327.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool328.not.i = icmp eq i8 %160, 0
  br i1 %tobool328.not.i, label %if.end326.i.if.end333.i_crit_edge, label %if.then329.i

if.end326.i.if.end333.i_crit_edge:                ; preds = %if.end326.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end333.i

if.then329.i:                                     ; preds = %if.end326.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer330.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call331.i = tail call i32 @del_timer(ptr noundef %BlinkTimer330.i) #2
  %161 = ptrtoint ptr %bLedBlinkInProgress327.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %bLedBlinkInProgress327.i, align 2
  br label %if.end333.i

if.end333.i:                                      ; preds = %if.then329.i, %if.end326.i.if.end333.i_crit_edge
  %bLedWPSBlinkInProgress334.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 10
  %162 = ptrtoint ptr %bLedWPSBlinkInProgress334.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %bLedWPSBlinkInProgress334.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool335.not.i = icmp eq i8 %163, 0
  br i1 %tobool335.not.i, label %if.end333.i.if.end340.i_crit_edge, label %if.then336.i

if.end333.i.if.end340.i_crit_edge:                ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end340.i

if.then336.i:                                     ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer337.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call338.i = tail call i32 @del_timer(ptr noundef %BlinkTimer337.i) #2
  %164 = ptrtoint ptr %bLedWPSBlinkInProgress334.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %bLedWPSBlinkInProgress334.i, align 1
  br label %if.end340.i

if.end340.i:                                      ; preds = %if.then336.i, %if.end333.i.if.end340.i_crit_edge
  %bLedScanBlinkInProgress341.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 9
  %165 = ptrtoint ptr %bLedScanBlinkInProgress341.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %bLedScanBlinkInProgress341.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool342.not.i = icmp eq i8 %166, 0
  br i1 %tobool342.not.i, label %if.end340.i.if.end347.i_crit_edge, label %if.then343.i

if.end340.i.if.end347.i_crit_edge:                ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end347.i

if.then343.i:                                     ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer344.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  %call345.i = tail call i32 @del_timer(ptr noundef %BlinkTimer344.i) #2
  %167 = ptrtoint ptr %bLedScanBlinkInProgress341.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %bLedScanBlinkInProgress341.i, align 2
  br label %if.end347.i

if.end347.i:                                      ; preds = %if.then343.i, %if.end340.i.if.end347.i_crit_edge
  %BlinkTimer348.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %168 = load volatile i32, ptr @jiffies, align 128
  %call351.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer348.i, i32 noundef %168) #2
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %169 = zext i32 %LedAction to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %LedAction, label %sw.bb2.cleanup_crit_edge [
    i32 6, label %sw.bb.i21
    i32 4, label %sw.bb2.sw.bb25.i_crit_edge
    i32 5, label %sw.bb2.sw.bb25.i_crit_edge221
    i32 2, label %sw.bb64.i
    i32 9, label %sw.bb2.sw.bb85.i_crit_edge
    i32 11, label %sw.bb2.sw.bb85.i_crit_edge222
    i32 10, label %sw.bb111.i
    i32 12, label %sw.bb119.i
    i32 8, label %sw.bb2.sw.bb127.i_crit_edge
    i32 3, label %sw.bb2.sw.bb127.i_crit_edge223
    i32 7, label %sw.bb143.i
  ]

sw.bb2.sw.bb127.i_crit_edge223:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb127.i

sw.bb2.sw.bb127.i_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb127.i

sw.bb2.sw.bb85.i_crit_edge222:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb85.i

sw.bb2.sw.bb85.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb85.i

sw.bb2.sw.bb25.i_crit_edge221:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb25.i

sw.bb2.sw.bb25.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb25.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i21:                                        ; preds = %sw.bb2
  %traffic_busy.i19 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14, i32 2
  %170 = ptrtoint ptr %traffic_busy.i19 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %traffic_busy.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.not.i20 = icmp eq i32 %171, 0
  br i1 %tobool.not.i20, label %if.else.i, label %sw.bb.i21.cleanup_crit_edge

sw.bb.i21.cleanup_crit_edge:                      ; preds = %sw.bb.i21
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb.i21
  %bLedScanBlinkInProgress.i22 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %172 = ptrtoint ptr %bLedScanBlinkInProgress.i22 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %bLedScanBlinkInProgress.i22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool2.not.i = icmp eq i8 %173, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then3.i:                                       ; preds = %if.else.i
  %CurrLedState.i23 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %174 = ptrtoint ptr %CurrLedState.i23 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %CurrLedState.i23, align 4
  %176 = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %175, label %lor.lhs.false6.i [
    i32 9, label %if.then3.i.cleanup_crit_edge
    i32 11, label %if.then3.i.cleanup_crit_edge224
  ]

if.then3.i.cleanup_crit_edge224:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false6.i:                                 ; preds = %if.then3.i
  %bLedWPSBlinkInProgress.i24 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %177 = ptrtoint ptr %bLedWPSBlinkInProgress.i24 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %bLedWPSBlinkInProgress.i24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool7.not.i = icmp eq i8 %178, 0
  br i1 %tobool7.not.i, label %if.end.i, label %lor.lhs.false6.i.cleanup_crit_edge

lor.lhs.false6.i.cleanup_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false6.i
  %bLedBlinkInProgress.i25 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %179 = ptrtoint ptr %bLedBlinkInProgress.i25 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %bLedBlinkInProgress.i25, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool9.not.i = icmp eq i8 %180, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end12.i32_crit_edge, label %if.then10.i

if.end.i.if.end12.i32_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12.i32

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer.i26 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call.i27 = tail call i32 @del_timer(ptr noundef %BlinkTimer.i26) #2
  %181 = ptrtoint ptr %bLedBlinkInProgress.i25 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %bLedBlinkInProgress.i25, align 2
  br label %if.end12.i32

if.end12.i32:                                     ; preds = %if.then10.i, %if.end.i.if.end12.i32_crit_edge
  %182 = ptrtoint ptr %bLedScanBlinkInProgress.i22 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %bLedScanBlinkInProgress.i22, align 2
  %183 = ptrtoint ptr %CurrLedState.i23 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 6, ptr %CurrLedState.i23, align 4
  %BlinkTimes.i28 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 11
  %184 = ptrtoint ptr %BlinkTimes.i28 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 24, ptr %BlinkTimes.i28, align 4
  %bLedOn.i29 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %185 = ptrtoint ptr %bLedOn.i29 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %bLedOn.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool15.not.i = icmp eq i8 %186, 0
  %spec.select.i30 = select i1 %tobool15.not.i, i32 1, i32 2
  %187 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %spec.select.i30, ptr %187, align 4
  %BlinkTimer20.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %189 = load volatile i32, ptr @jiffies, align 128
  %add.i31 = add i32 %189, 18
  %call22.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer20.i, i32 noundef %add.i31) #2
  br label %cleanup

sw.bb25.i:                                        ; preds = %sw.bb2.sw.bb25.i_crit_edge, %sw.bb2.sw.bb25.i_crit_edge221
  %bLedBlinkInProgress26.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %190 = ptrtoint ptr %bLedBlinkInProgress26.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %bLedBlinkInProgress26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool27.not.i = icmp eq i8 %191, 0
  br i1 %tobool27.not.i, label %land.lhs.true.i34, label %sw.bb25.i.cleanup_crit_edge

sw.bb25.i.cleanup_crit_edge:                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i34:                                ; preds = %sw.bb25.i
  %fw_state.i.i33 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %192 = ptrtoint ptr %fw_state.i.i33 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %fw_state.i.i33, align 8
  %194 = and i32 %193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool30.not.i = icmp eq i32 %194, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i34.cleanup_crit_edge, label %if.then31.i

land.lhs.true.i34.cleanup_crit_edge:              ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then31.i:                                      ; preds = %land.lhs.true.i34
  %CurrLedState32.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %195 = ptrtoint ptr %CurrLedState32.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %CurrLedState32.i, align 4
  %197 = zext i32 %196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %196, label %lor.lhs.false43.i [
    i32 6, label %if.then31.i.cleanup_crit_edge
    i32 9, label %if.then31.i.cleanup_crit_edge225
    i32 11, label %if.then31.i.cleanup_crit_edge226
  ]

if.then31.i.cleanup_crit_edge226:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then31.i.cleanup_crit_edge225:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then31.i.cleanup_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false43.i:                                ; preds = %if.then31.i
  %bLedWPSBlinkInProgress44.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %198 = ptrtoint ptr %bLedWPSBlinkInProgress44.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %bLedWPSBlinkInProgress44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool46.not.i = icmp eq i8 %199, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %lor.lhs.false43.i.cleanup_crit_edge

lor.lhs.false43.i.cleanup_crit_edge:              ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end48.i:                                       ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #4
  %200 = ptrtoint ptr %bLedBlinkInProgress26.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %bLedBlinkInProgress26.i, align 2
  %201 = ptrtoint ptr %CurrLedState32.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 10, ptr %CurrLedState32.i, align 4
  %BlinkTimes51.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 11
  %202 = ptrtoint ptr %BlinkTimes51.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 2, ptr %BlinkTimes51.i, align 4
  %bLedOn52.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %203 = ptrtoint ptr %bLedOn52.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %bLedOn52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool53.not.i = icmp eq i8 %204, 0
  %spec.select247.i = select i1 %tobool53.not.i, i32 1, i32 2
  %205 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %spec.select247.i, ptr %205, align 4
  %BlinkTimer59.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %207 = load volatile i32, ptr @jiffies, align 128
  %add61.i = add i32 %207, 5
  %call62.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer59.i, i32 noundef %add61.i) #2
  br label %cleanup

sw.bb64.i:                                        ; preds = %sw.bb2
  %CurrLedState65.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %208 = ptrtoint ptr %CurrLedState65.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 1, ptr %CurrLedState65.i, align 4
  %BlinkingLedState66.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %209 = ptrtoint ptr %BlinkingLedState66.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 1, ptr %BlinkingLedState66.i, align 4
  %bLedBlinkInProgress67.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %210 = ptrtoint ptr %bLedBlinkInProgress67.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %bLedBlinkInProgress67.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool68.not.i = icmp eq i8 %211, 0
  br i1 %tobool68.not.i, label %sw.bb64.i.if.end73.i_crit_edge, label %if.then69.i

sw.bb64.i.if.end73.i_crit_edge:                   ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end73.i

if.then69.i:                                      ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer70.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call71.i = tail call i32 @del_timer(ptr noundef %BlinkTimer70.i) #2
  %212 = ptrtoint ptr %bLedBlinkInProgress67.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %bLedBlinkInProgress67.i, align 2
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then69.i, %sw.bb64.i.if.end73.i_crit_edge
  %bLedScanBlinkInProgress74.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %213 = ptrtoint ptr %bLedScanBlinkInProgress74.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %bLedScanBlinkInProgress74.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool75.not.i = icmp eq i8 %214, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end80.i_crit_edge, label %if.then76.i

if.end73.i.if.end80.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end80.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer77.i35 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call78.i = tail call i32 @del_timer(ptr noundef %BlinkTimer77.i35) #2
  %215 = ptrtoint ptr %bLedScanBlinkInProgress74.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %bLedScanBlinkInProgress74.i, align 2
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then76.i, %if.end73.i.if.end80.i_crit_edge
  %BlinkTimer81.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %216 = load volatile i32, ptr @jiffies, align 128
  %call84.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer81.i, i32 noundef %216) #2
  br label %cleanup

sw.bb85.i:                                        ; preds = %sw.bb2.sw.bb85.i_crit_edge, %sw.bb2.sw.bb85.i_crit_edge222
  %bLedWPSBlinkInProgress86.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %217 = ptrtoint ptr %bLedWPSBlinkInProgress86.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %bLedWPSBlinkInProgress86.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool87.not.i = icmp eq i8 %218, 0
  br i1 %tobool87.not.i, label %if.then88.i, label %sw.bb85.i.cleanup_crit_edge

sw.bb85.i.cleanup_crit_edge:                      ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then88.i:                                      ; preds = %sw.bb85.i
  %bLedBlinkInProgress89.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %219 = ptrtoint ptr %bLedBlinkInProgress89.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %bLedBlinkInProgress89.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool90.not.i = icmp eq i8 %220, 0
  br i1 %tobool90.not.i, label %if.then88.i.if.end95.i_crit_edge, label %if.then91.i

if.then88.i.if.end95.i_crit_edge:                 ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end95.i

if.then91.i:                                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer92.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call93.i = tail call i32 @del_timer(ptr noundef %BlinkTimer92.i) #2
  %221 = ptrtoint ptr %bLedBlinkInProgress89.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %bLedBlinkInProgress89.i, align 2
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then91.i, %if.then88.i.if.end95.i_crit_edge
  %bLedScanBlinkInProgress96.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %222 = ptrtoint ptr %bLedScanBlinkInProgress96.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %bLedScanBlinkInProgress96.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool97.not.i = icmp eq i8 %223, 0
  br i1 %tobool97.not.i, label %if.end95.i.if.end102.i_crit_edge, label %if.then98.i

if.end95.i.if.end102.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end102.i

if.then98.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer99.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call100.i = tail call i32 @del_timer(ptr noundef %BlinkTimer99.i) #2
  %224 = ptrtoint ptr %bLedScanBlinkInProgress96.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %bLedScanBlinkInProgress96.i, align 2
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then98.i, %if.end95.i.if.end102.i_crit_edge
  %225 = ptrtoint ptr %bLedWPSBlinkInProgress86.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 1, ptr %bLedWPSBlinkInProgress86.i, align 1
  %CurrLedState104.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %226 = ptrtoint ptr %CurrLedState104.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 1, ptr %CurrLedState104.i, align 4
  %BlinkingLedState105.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %227 = ptrtoint ptr %BlinkingLedState105.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1, ptr %BlinkingLedState105.i, align 4
  %BlinkTimer106.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %228 = load volatile i32, ptr @jiffies, align 128
  %call109.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer106.i, i32 noundef %228) #2
  br label %cleanup

sw.bb111.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  %bLedWPSBlinkInProgress112.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %229 = ptrtoint ptr %bLedWPSBlinkInProgress112.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %bLedWPSBlinkInProgress112.i, align 1
  %CurrLedState113.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %230 = ptrtoint ptr %CurrLedState113.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 1, ptr %CurrLedState113.i, align 4
  %BlinkingLedState114.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %231 = ptrtoint ptr %BlinkingLedState114.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 1, ptr %BlinkingLedState114.i, align 4
  %BlinkTimer115.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %232 = load volatile i32, ptr @jiffies, align 128
  %call118.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer115.i, i32 noundef %232) #2
  br label %cleanup

sw.bb119.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  %bLedWPSBlinkInProgress120.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %233 = ptrtoint ptr %bLedWPSBlinkInProgress120.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 0, ptr %bLedWPSBlinkInProgress120.i, align 1
  %CurrLedState121.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %234 = ptrtoint ptr %CurrLedState121.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 2, ptr %CurrLedState121.i, align 4
  %BlinkingLedState122.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %235 = ptrtoint ptr %BlinkingLedState122.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 2, ptr %BlinkingLedState122.i, align 4
  %BlinkTimer123.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %236 = load volatile i32, ptr @jiffies, align 128
  %call126.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer123.i, i32 noundef %236) #2
  br label %cleanup

sw.bb127.i:                                       ; preds = %sw.bb2.sw.bb127.i_crit_edge, %sw.bb2.sw.bb127.i_crit_edge223
  %bLedWPSBlinkInProgress128.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %237 = ptrtoint ptr %bLedWPSBlinkInProgress128.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %bLedWPSBlinkInProgress128.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool130.not.i = icmp eq i8 %238, 0
  br i1 %tobool130.not.i, label %lor.lhs.false131.i, label %sw.bb127.i.cleanup_crit_edge

sw.bb127.i.cleanup_crit_edge:                     ; preds = %sw.bb127.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false131.i:                               ; preds = %sw.bb127.i
  %bLedScanBlinkInProgress132.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %239 = ptrtoint ptr %bLedScanBlinkInProgress132.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %bLedScanBlinkInProgress132.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool134.not.i = icmp eq i8 %240, 0
  br i1 %tobool134.not.i, label %if.then135.i, label %lor.lhs.false131.i.cleanup_crit_edge

lor.lhs.false131.i.cleanup_crit_edge:             ; preds = %lor.lhs.false131.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then135.i:                                     ; preds = %lor.lhs.false131.i
  call void @__sanitizer_cov_trace_pc() #4
  %CurrLedState136.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %241 = ptrtoint ptr %CurrLedState136.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 2, ptr %CurrLedState136.i, align 4
  %BlinkingLedState137.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %242 = ptrtoint ptr %BlinkingLedState137.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 2, ptr %BlinkingLedState137.i, align 4
  %BlinkTimer138.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %243 = load volatile i32, ptr @jiffies, align 128
  %call141.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer138.i, i32 noundef %243) #2
  br label %cleanup

sw.bb143.i:                                       ; preds = %sw.bb2
  %CurrLedState144.i36 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %244 = ptrtoint ptr %CurrLedState144.i36 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 2, ptr %CurrLedState144.i36, align 4
  %BlinkingLedState145.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %245 = ptrtoint ptr %BlinkingLedState145.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 2, ptr %BlinkingLedState145.i, align 4
  %bLedBlinkInProgress146.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %246 = ptrtoint ptr %bLedBlinkInProgress146.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %bLedBlinkInProgress146.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool147.not.i = icmp eq i8 %247, 0
  br i1 %tobool147.not.i, label %sw.bb143.i.if.end152.i_crit_edge, label %if.then148.i

sw.bb143.i.if.end152.i_crit_edge:                 ; preds = %sw.bb143.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end152.i

if.then148.i:                                     ; preds = %sw.bb143.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer149.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call150.i = tail call i32 @del_timer(ptr noundef %BlinkTimer149.i) #2
  %248 = ptrtoint ptr %bLedBlinkInProgress146.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %bLedBlinkInProgress146.i, align 2
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then148.i, %sw.bb143.i.if.end152.i_crit_edge
  %bLedScanBlinkInProgress153.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %249 = ptrtoint ptr %bLedScanBlinkInProgress153.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %bLedScanBlinkInProgress153.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool154.not.i = icmp eq i8 %250, 0
  br i1 %tobool154.not.i, label %if.end152.i.if.end159.i_crit_edge, label %if.then155.i

if.end152.i.if.end159.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end159.i

if.then155.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer156.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call157.i = tail call i32 @del_timer(ptr noundef %BlinkTimer156.i) #2
  %251 = ptrtoint ptr %bLedScanBlinkInProgress153.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 0, ptr %bLedScanBlinkInProgress153.i, align 2
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then155.i, %if.end152.i.if.end159.i_crit_edge
  %bLedWPSBlinkInProgress160.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %252 = ptrtoint ptr %bLedWPSBlinkInProgress160.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %bLedWPSBlinkInProgress160.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool161.not.i = icmp eq i8 %253, 0
  br i1 %tobool161.not.i, label %if.end159.i.if.end166.i_crit_edge, label %if.then162.i

if.end159.i.if.end166.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166.i

if.then162.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer163.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call164.i = tail call i32 @del_timer(ptr noundef %BlinkTimer163.i) #2
  %254 = ptrtoint ptr %bLedWPSBlinkInProgress160.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %bLedWPSBlinkInProgress160.i, align 1
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.then162.i, %if.end159.i.if.end166.i_crit_edge
  %BlinkTimer167.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %255 = load volatile i32, ptr @jiffies, align 128
  %call170.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer167.i, i32 noundef %255) #2
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %256 = zext i32 %LedAction to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %LedAction, label %sw.bb3.cleanup_crit_edge [
    i32 6, label %sw.bb.i39
    i32 4, label %sw.bb3.sw.bb25.i64_crit_edge
    i32 5, label %sw.bb3.sw.bb25.i64_crit_edge227
    i32 2, label %sw.bb64.i81
    i32 9, label %sw.bb3.sw.bb98.i_crit_edge
    i32 11, label %sw.bb3.sw.bb98.i_crit_edge228
    i32 10, label %sw.bb130.i
    i32 12, label %sw.bb156.i
    i32 8, label %sw.bb3.sw.bb170.i_crit_edge
    i32 3, label %sw.bb3.sw.bb170.i_crit_edge229
    i32 7, label %sw.bb186.i
  ]

sw.bb3.sw.bb170.i_crit_edge229:                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb170.i

sw.bb3.sw.bb170.i_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb170.i

sw.bb3.sw.bb98.i_crit_edge228:                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb98.i

sw.bb3.sw.bb98.i_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb98.i

sw.bb3.sw.bb25.i64_crit_edge227:                  ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb25.i64

sw.bb3.sw.bb25.i64_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb25.i64

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i39:                                        ; preds = %sw.bb3
  %traffic_busy.i37 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14, i32 2
  %257 = ptrtoint ptr %traffic_busy.i37 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %traffic_busy.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool.not.i38 = icmp eq i32 %258, 0
  br i1 %tobool.not.i38, label %if.else.i42, label %sw.bb.i39.cleanup_crit_edge

sw.bb.i39.cleanup_crit_edge:                      ; preds = %sw.bb.i39
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.else.i42:                                      ; preds = %sw.bb.i39
  %bLedScanBlinkInProgress.i40 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %259 = ptrtoint ptr %bLedScanBlinkInProgress.i40 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %bLedScanBlinkInProgress.i40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool2.not.i41 = icmp eq i8 %260, 0
  br i1 %tobool2.not.i41, label %if.then3.i44, label %if.else.i42.cleanup_crit_edge

if.else.i42.cleanup_crit_edge:                    ; preds = %if.else.i42
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then3.i44:                                     ; preds = %if.else.i42
  %CurrLedState.i43 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %261 = ptrtoint ptr %CurrLedState.i43 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %CurrLedState.i43, align 4
  %263 = zext i32 %262 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %262, label %lor.lhs.false6.i47 [
    i32 9, label %if.then3.i44.cleanup_crit_edge
    i32 11, label %if.then3.i44.cleanup_crit_edge230
  ]

if.then3.i44.cleanup_crit_edge230:                ; preds = %if.then3.i44
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then3.i44.cleanup_crit_edge:                   ; preds = %if.then3.i44
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false6.i47:                               ; preds = %if.then3.i44
  %bLedWPSBlinkInProgress.i45 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %264 = ptrtoint ptr %bLedWPSBlinkInProgress.i45 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %bLedWPSBlinkInProgress.i45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool7.not.i46 = icmp eq i8 %265, 0
  br i1 %tobool7.not.i46, label %if.end.i50, label %lor.lhs.false6.i47.cleanup_crit_edge

lor.lhs.false6.i47.cleanup_crit_edge:             ; preds = %lor.lhs.false6.i47
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i50:                                       ; preds = %lor.lhs.false6.i47
  %bLedBlinkInProgress.i48 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %266 = ptrtoint ptr %bLedBlinkInProgress.i48 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %bLedBlinkInProgress.i48, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool9.not.i49 = icmp eq i8 %267, 0
  br i1 %tobool9.not.i49, label %if.end.i50.if.end12.i61_crit_edge, label %if.then10.i53

if.end.i50.if.end12.i61_crit_edge:                ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12.i61

if.then10.i53:                                    ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer.i51 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call.i52 = tail call i32 @del_timer(ptr noundef %BlinkTimer.i51) #2
  %268 = ptrtoint ptr %bLedBlinkInProgress.i48 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 0, ptr %bLedBlinkInProgress.i48, align 2
  br label %if.end12.i61

if.end12.i61:                                     ; preds = %if.then10.i53, %if.end.i50.if.end12.i61_crit_edge
  %269 = ptrtoint ptr %bLedScanBlinkInProgress.i40 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 1, ptr %bLedScanBlinkInProgress.i40, align 2
  %270 = ptrtoint ptr %CurrLedState.i43 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 6, ptr %CurrLedState.i43, align 4
  %BlinkTimes.i54 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 11
  %271 = ptrtoint ptr %BlinkTimes.i54 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 24, ptr %BlinkTimes.i54, align 4
  %bLedOn.i55 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %272 = ptrtoint ptr %bLedOn.i55 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %bLedOn.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %tobool15.not.i56 = icmp eq i8 %273, 0
  %spec.select.i57 = select i1 %tobool15.not.i56, i32 1, i32 2
  %274 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %spec.select.i57, ptr %274, align 4
  %BlinkTimer20.i58 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %276 = load volatile i32, ptr @jiffies, align 128
  %add.i59 = add i32 %276, 18
  %call22.i60 = tail call i32 @mod_timer(ptr noundef %BlinkTimer20.i58, i32 noundef %add.i59) #2
  br label %cleanup

sw.bb25.i64:                                      ; preds = %sw.bb3.sw.bb25.i64_crit_edge, %sw.bb3.sw.bb25.i64_crit_edge227
  %bLedBlinkInProgress26.i62 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %277 = ptrtoint ptr %bLedBlinkInProgress26.i62 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %bLedBlinkInProgress26.i62, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool27.not.i63 = icmp eq i8 %278, 0
  br i1 %tobool27.not.i63, label %land.lhs.true.i67, label %sw.bb25.i64.cleanup_crit_edge

sw.bb25.i64.cleanup_crit_edge:                    ; preds = %sw.bb25.i64
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i67:                                ; preds = %sw.bb25.i64
  %fw_state.i.i65 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %279 = ptrtoint ptr %fw_state.i.i65 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %fw_state.i.i65, align 8
  %281 = and i32 %280, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool30.not.i66 = icmp eq i32 %281, 0
  br i1 %tobool30.not.i66, label %land.lhs.true.i67.cleanup_crit_edge, label %if.then31.i69

land.lhs.true.i67.cleanup_crit_edge:              ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then31.i69:                                    ; preds = %land.lhs.true.i67
  %CurrLedState32.i68 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %282 = ptrtoint ptr %CurrLedState32.i68 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %CurrLedState32.i68, align 4
  %284 = zext i32 %283 to i64
  call void @__sanitizer_cov_trace_switch(i64 %284, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %283, label %lor.lhs.false43.i72 [
    i32 6, label %if.then31.i69.cleanup_crit_edge
    i32 9, label %if.then31.i69.cleanup_crit_edge231
    i32 11, label %if.then31.i69.cleanup_crit_edge232
  ]

if.then31.i69.cleanup_crit_edge232:               ; preds = %if.then31.i69
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then31.i69.cleanup_crit_edge231:               ; preds = %if.then31.i69
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then31.i69.cleanup_crit_edge:                  ; preds = %if.then31.i69
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false43.i72:                              ; preds = %if.then31.i69
  %bLedWPSBlinkInProgress44.i70 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %285 = ptrtoint ptr %bLedWPSBlinkInProgress44.i70 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %bLedWPSBlinkInProgress44.i70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool46.not.i71 = icmp eq i8 %286, 0
  br i1 %tobool46.not.i71, label %if.end48.i79, label %lor.lhs.false43.i72.cleanup_crit_edge

lor.lhs.false43.i72.cleanup_crit_edge:            ; preds = %lor.lhs.false43.i72
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end48.i79:                                     ; preds = %lor.lhs.false43.i72
  call void @__sanitizer_cov_trace_pc() #4
  %287 = ptrtoint ptr %bLedBlinkInProgress26.i62 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 1, ptr %bLedBlinkInProgress26.i62, align 2
  %288 = ptrtoint ptr %CurrLedState32.i68 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 10, ptr %CurrLedState32.i68, align 4
  %BlinkTimes51.i73 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 11
  %289 = ptrtoint ptr %BlinkTimes51.i73 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 2, ptr %BlinkTimes51.i73, align 4
  %bLedOn52.i74 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %290 = ptrtoint ptr %bLedOn52.i74 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %bLedOn52.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool53.not.i75 = icmp eq i8 %291, 0
  %spec.select305.i = select i1 %tobool53.not.i75, i32 1, i32 2
  %292 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %spec.select305.i, ptr %292, align 4
  %BlinkTimer59.i76 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %294 = load volatile i32, ptr @jiffies, align 128
  %add61.i77 = add i32 %294, 5
  %call62.i78 = tail call i32 @mod_timer(ptr noundef %BlinkTimer59.i76, i32 noundef %add61.i77) #2
  br label %cleanup

sw.bb64.i81:                                      ; preds = %sw.bb3
  %CurrLedState65.i80 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %295 = ptrtoint ptr %CurrLedState65.i80 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %CurrLedState65.i80, align 4
  %297 = zext i32 %296 to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %296, label %lor.lhs.false72.i [
    i32 9, label %sw.bb64.i81.cleanup_crit_edge
    i32 11, label %sw.bb64.i81.cleanup_crit_edge233
  ]

sw.bb64.i81.cleanup_crit_edge233:                 ; preds = %sw.bb64.i81
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb64.i81.cleanup_crit_edge:                    ; preds = %sw.bb64.i81
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false72.i:                                ; preds = %sw.bb64.i81
  %bLedWPSBlinkInProgress73.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %298 = ptrtoint ptr %bLedWPSBlinkInProgress73.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %bLedWPSBlinkInProgress73.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool75.not.i82 = icmp eq i8 %299, 0
  br i1 %tobool75.not.i82, label %if.end77.i, label %lor.lhs.false72.i.cleanup_crit_edge

lor.lhs.false72.i.cleanup_crit_edge:              ; preds = %lor.lhs.false72.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end77.i:                                       ; preds = %lor.lhs.false72.i
  %300 = ptrtoint ptr %CurrLedState65.i80 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 1, ptr %CurrLedState65.i80, align 4
  %BlinkingLedState79.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %301 = ptrtoint ptr %BlinkingLedState79.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 1, ptr %BlinkingLedState79.i, align 4
  %bLedBlinkInProgress80.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %302 = ptrtoint ptr %bLedBlinkInProgress80.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %bLedBlinkInProgress80.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %303)
  %tobool81.not.i = icmp eq i8 %303, 0
  br i1 %tobool81.not.i, label %if.end77.i.if.end86.i_crit_edge, label %if.then82.i

if.end77.i.if.end86.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end86.i

if.then82.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer83.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call84.i83 = tail call i32 @del_timer(ptr noundef %BlinkTimer83.i) #2
  %304 = ptrtoint ptr %bLedBlinkInProgress80.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 0, ptr %bLedBlinkInProgress80.i, align 2
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then82.i, %if.end77.i.if.end86.i_crit_edge
  %bLedScanBlinkInProgress87.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %305 = ptrtoint ptr %bLedScanBlinkInProgress87.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %bLedScanBlinkInProgress87.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool88.not.i = icmp eq i8 %306, 0
  br i1 %tobool88.not.i, label %if.end86.i.if.end93.i_crit_edge, label %if.then89.i

if.end86.i.if.end93.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end93.i

if.then89.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer90.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call91.i = tail call i32 @del_timer(ptr noundef %BlinkTimer90.i) #2
  %307 = ptrtoint ptr %bLedScanBlinkInProgress87.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 0, ptr %bLedScanBlinkInProgress87.i, align 2
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then89.i, %if.end86.i.if.end93.i_crit_edge
  %BlinkTimer94.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %308 = load volatile i32, ptr @jiffies, align 128
  %call97.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer94.i, i32 noundef %308) #2
  br label %cleanup

sw.bb98.i:                                        ; preds = %sw.bb3.sw.bb98.i_crit_edge, %sw.bb3.sw.bb98.i_crit_edge228
  %bLedWPSBlinkInProgress99.i84 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %309 = ptrtoint ptr %bLedWPSBlinkInProgress99.i84 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %bLedWPSBlinkInProgress99.i84, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool100.not.i = icmp eq i8 %310, 0
  br i1 %tobool100.not.i, label %if.then101.i, label %sw.bb98.i.cleanup_crit_edge

sw.bb98.i.cleanup_crit_edge:                      ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then101.i:                                     ; preds = %sw.bb98.i
  %bLedBlinkInProgress102.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %311 = ptrtoint ptr %bLedBlinkInProgress102.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %bLedBlinkInProgress102.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool103.not.i = icmp eq i8 %312, 0
  br i1 %tobool103.not.i, label %if.then101.i.if.end108.i_crit_edge, label %if.then104.i

if.then101.i.if.end108.i_crit_edge:               ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end108.i

if.then104.i:                                     ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer105.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call106.i = tail call i32 @del_timer(ptr noundef %BlinkTimer105.i) #2
  %313 = ptrtoint ptr %bLedBlinkInProgress102.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %bLedBlinkInProgress102.i, align 2
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then104.i, %if.then101.i.if.end108.i_crit_edge
  %bLedScanBlinkInProgress109.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %314 = ptrtoint ptr %bLedScanBlinkInProgress109.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %bLedScanBlinkInProgress109.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool110.not.i = icmp eq i8 %315, 0
  br i1 %tobool110.not.i, label %if.end108.i.if.end115.i_crit_edge, label %if.then111.i

if.end108.i.if.end115.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end115.i

if.then111.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer112.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call113.i = tail call i32 @del_timer(ptr noundef %BlinkTimer112.i) #2
  %316 = ptrtoint ptr %bLedScanBlinkInProgress109.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %bLedScanBlinkInProgress109.i, align 2
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then111.i, %if.end108.i.if.end115.i_crit_edge
  %317 = ptrtoint ptr %bLedWPSBlinkInProgress99.i84 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 1, ptr %bLedWPSBlinkInProgress99.i84, align 1
  %CurrLedState117.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %318 = ptrtoint ptr %CurrLedState117.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 9, ptr %CurrLedState117.i, align 4
  %bLedOn118.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %319 = ptrtoint ptr %bLedOn118.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %bLedOn118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool119.not.i85 = icmp eq i8 %320, 0
  %spec.select306.i = select i1 %tobool119.not.i85, i32 1, i32 2
  %321 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %spec.select306.i, ptr %321, align 4
  %BlinkTimer125.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %323 = load volatile i32, ptr @jiffies, align 128
  %add127.i = add i32 %323, 18
  %call128.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer125.i, i32 noundef %add127.i) #2
  br label %cleanup

sw.bb130.i:                                       ; preds = %sw.bb3
  %bLedWPSBlinkInProgress131.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %324 = ptrtoint ptr %bLedWPSBlinkInProgress131.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %bLedWPSBlinkInProgress131.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool132.not.i = icmp eq i8 %325, 0
  br i1 %tobool132.not.i, label %sw.bb130.i.if.end139.i_crit_edge, label %if.then133.i

sw.bb130.i.if.end139.i_crit_edge:                 ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end139.i

if.then133.i:                                     ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer134.i86 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call135.i = tail call i32 @del_timer(ptr noundef %BlinkTimer134.i86) #2
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then133.i, %sw.bb130.i.if.end139.i_crit_edge
  %storemerge.i = phi i8 [ 0, %if.then133.i ], [ 1, %sw.bb130.i.if.end139.i_crit_edge ]
  %326 = ptrtoint ptr %bLedWPSBlinkInProgress131.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %storemerge.i, ptr %bLedWPSBlinkInProgress131.i, align 1
  %CurrLedState140.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %327 = ptrtoint ptr %CurrLedState140.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 11, ptr %CurrLedState140.i, align 4
  %bLedOn141.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %328 = ptrtoint ptr %bLedOn141.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %bLedOn141.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool142.not.i87 = icmp eq i8 %329, 0
  %BlinkingLedState150.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  br i1 %tobool142.not.i87, label %if.else149.i, label %if.then143.i88

if.then143.i88:                                   ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #4
  %330 = ptrtoint ptr %BlinkingLedState150.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 2, ptr %BlinkingLedState150.i, align 4
  %BlinkTimer145.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %331 = load volatile i32, ptr @jiffies, align 128
  %add147.i = add i32 %331, 500
  %call148.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer145.i, i32 noundef %add147.i) #2
  br label %cleanup

if.else149.i:                                     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #4
  %332 = ptrtoint ptr %BlinkingLedState150.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 1, ptr %BlinkingLedState150.i, align 4
  %BlinkTimer151.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %333 = load volatile i32, ptr @jiffies, align 128
  %call154.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer151.i, i32 noundef %333) #2
  br label %cleanup

sw.bb156.i:                                       ; preds = %sw.bb3
  %bLedWPSBlinkInProgress157.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %334 = ptrtoint ptr %bLedWPSBlinkInProgress157.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %bLedWPSBlinkInProgress157.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool158.not.i89 = icmp eq i8 %335, 0
  br i1 %tobool158.not.i89, label %sw.bb156.i.if.end163.i_crit_edge, label %if.then159.i

sw.bb156.i.if.end163.i_crit_edge:                 ; preds = %sw.bb156.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end163.i

if.then159.i:                                     ; preds = %sw.bb156.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer160.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call161.i = tail call i32 @del_timer(ptr noundef %BlinkTimer160.i) #2
  %336 = ptrtoint ptr %bLedWPSBlinkInProgress157.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 0, ptr %bLedWPSBlinkInProgress157.i, align 1
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then159.i, %sw.bb156.i.if.end163.i_crit_edge
  %CurrLedState164.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %337 = ptrtoint ptr %CurrLedState164.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 2, ptr %CurrLedState164.i, align 4
  %BlinkingLedState165.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %338 = ptrtoint ptr %BlinkingLedState165.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 2, ptr %BlinkingLedState165.i, align 4
  %BlinkTimer166.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %339 = load volatile i32, ptr @jiffies, align 128
  %call169.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer166.i, i32 noundef %339) #2
  br label %cleanup

sw.bb170.i:                                       ; preds = %sw.bb3.sw.bb170.i_crit_edge, %sw.bb3.sw.bb170.i_crit_edge229
  %bLedWPSBlinkInProgress171.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %340 = ptrtoint ptr %bLedWPSBlinkInProgress171.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %bLedWPSBlinkInProgress171.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool173.not.i = icmp eq i8 %341, 0
  br i1 %tobool173.not.i, label %lor.lhs.false174.i, label %sw.bb170.i.cleanup_crit_edge

sw.bb170.i.cleanup_crit_edge:                     ; preds = %sw.bb170.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false174.i:                               ; preds = %sw.bb170.i
  %bLedScanBlinkInProgress175.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %342 = ptrtoint ptr %bLedScanBlinkInProgress175.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %bLedScanBlinkInProgress175.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %tobool177.not.i = icmp eq i8 %343, 0
  br i1 %tobool177.not.i, label %if.then178.i, label %lor.lhs.false174.i.cleanup_crit_edge

lor.lhs.false174.i.cleanup_crit_edge:             ; preds = %lor.lhs.false174.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then178.i:                                     ; preds = %lor.lhs.false174.i
  call void @__sanitizer_cov_trace_pc() #4
  %CurrLedState179.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %344 = ptrtoint ptr %CurrLedState179.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 2, ptr %CurrLedState179.i, align 4
  %BlinkingLedState180.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %345 = ptrtoint ptr %BlinkingLedState180.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 2, ptr %BlinkingLedState180.i, align 4
  %BlinkTimer181.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %346 = load volatile i32, ptr @jiffies, align 128
  %call184.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer181.i, i32 noundef %346) #2
  br label %cleanup

sw.bb186.i:                                       ; preds = %sw.bb3
  %CurrLedState187.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %347 = ptrtoint ptr %CurrLedState187.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 2, ptr %CurrLedState187.i, align 4
  %BlinkingLedState188.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %348 = ptrtoint ptr %BlinkingLedState188.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 2, ptr %BlinkingLedState188.i, align 4
  %bLedBlinkInProgress189.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %349 = ptrtoint ptr %bLedBlinkInProgress189.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %bLedBlinkInProgress189.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %350)
  %tobool190.not.i = icmp eq i8 %350, 0
  br i1 %tobool190.not.i, label %sw.bb186.i.if.end195.i_crit_edge, label %if.then191.i

sw.bb186.i.if.end195.i_crit_edge:                 ; preds = %sw.bb186.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end195.i

if.then191.i:                                     ; preds = %sw.bb186.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer192.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call193.i = tail call i32 @del_timer(ptr noundef %BlinkTimer192.i) #2
  %351 = ptrtoint ptr %bLedBlinkInProgress189.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %bLedBlinkInProgress189.i, align 2
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then191.i, %sw.bb186.i.if.end195.i_crit_edge
  %bLedScanBlinkInProgress196.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %352 = ptrtoint ptr %bLedScanBlinkInProgress196.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %bLedScanBlinkInProgress196.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool197.not.i = icmp eq i8 %353, 0
  br i1 %tobool197.not.i, label %if.end195.i.if.end202.i_crit_edge, label %if.then198.i

if.end195.i.if.end202.i_crit_edge:                ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end202.i

if.then198.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer199.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call200.i = tail call i32 @del_timer(ptr noundef %BlinkTimer199.i) #2
  %354 = ptrtoint ptr %bLedScanBlinkInProgress196.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 0, ptr %bLedScanBlinkInProgress196.i, align 2
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.then198.i, %if.end195.i.if.end202.i_crit_edge
  %bLedWPSBlinkInProgress203.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %355 = ptrtoint ptr %bLedWPSBlinkInProgress203.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %bLedWPSBlinkInProgress203.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %tobool204.not.i = icmp eq i8 %356, 0
  br i1 %tobool204.not.i, label %if.end202.i.if.end209.i_crit_edge, label %if.then205.i

if.end202.i.if.end209.i_crit_edge:                ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209.i

if.then205.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer206.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call207.i = tail call i32 @del_timer(ptr noundef %BlinkTimer206.i) #2
  %357 = ptrtoint ptr %bLedWPSBlinkInProgress203.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 0, ptr %bLedWPSBlinkInProgress203.i, align 1
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.then205.i, %if.end202.i.if.end209.i_crit_edge
  %BlinkTimer210.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %358 = load volatile i32, ptr @jiffies, align 128
  %call213.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer210.i, i32 noundef %358) #2
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %359 = zext i32 %LedAction to i64
  call void @__sanitizer_cov_trace_switch(i64 %359, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %LedAction, label %sw.bb4.cleanup_crit_edge [
    i32 8, label %sw.bb.i92
    i32 7, label %sw.bb372.i
    i32 13, label %sw.bb330.i
    i32 6, label %sw.bb114.i
    i32 4, label %sw.bb4.sw.bb165.i_crit_edge
    i32 5, label %sw.bb4.sw.bb165.i_crit_edge234
    i32 9, label %sw.bb4.sw.bb208.i_crit_edge
    i32 11, label %sw.bb4.sw.bb208.i_crit_edge235
    i32 10, label %sw.bb268.i
    i32 12, label %sw.bb289.i117
    i32 2, label %if.then54.i
    i32 3, label %sw.bb4.if.end72.i_crit_edge
  ]

sw.bb4.if.end72.i_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end72.i

sw.bb4.sw.bb208.i_crit_edge235:                   ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb208.i

sw.bb4.sw.bb208.i_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb208.i

sw.bb4.sw.bb165.i_crit_edge234:                   ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb165.i

sw.bb4.sw.bb165.i_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb165.i

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i92:                                        ; preds = %sw.bb4
  %bLedWPSBlinkInProgress.i90 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 10
  %360 = ptrtoint ptr %bLedWPSBlinkInProgress.i90 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %bLedWPSBlinkInProgress.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool.not.i91 = icmp eq i8 %361, 0
  br i1 %tobool.not.i91, label %sw.bb.i92.if.end8.i_crit_edge, label %if.then.i

sw.bb.i92.if.end8.i_crit_edge:                    ; preds = %sw.bb.i92
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then.i:                                        ; preds = %sw.bb.i92
  %362 = ptrtoint ptr %bLedWPSBlinkInProgress.i90 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 0, ptr %bLedWPSBlinkInProgress.i90, align 1
  %BlinkTimer.i93 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 13
  %call.i94 = tail call i32 @del_timer(ptr noundef %BlinkTimer.i93) #2
  %BlinkingLedState.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 12
  %363 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 2, ptr %BlinkingLedState.i, align 4
  %CurrLedState.i95 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 2
  %364 = ptrtoint ptr %CurrLedState.i95 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 2, ptr %CurrLedState.i95, align 4
  %bLedOn.i96 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 3
  %365 = ptrtoint ptr %bLedOn.i96 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %bLedOn.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %tobool3.not.i = icmp eq i8 %366, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then4.i

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer5.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %367 = load volatile i32, ptr @jiffies, align 128
  %call7.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer5.i, i32 noundef %367) #2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.then.i.if.end8.i_crit_edge, %sw.bb.i92.if.end8.i_crit_edge
  %bLedStartToLinkBlinkInProgress.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 8
  %368 = ptrtoint ptr %bLedStartToLinkBlinkInProgress.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %bLedStartToLinkBlinkInProgress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %369)
  %tobool9.not.i97 = icmp eq i8 %369, 0
  br i1 %tobool9.not.i97, label %if.then10.i98, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then10.i98:                                    ; preds = %if.end8.i
  %CurrLedState11.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %370 = ptrtoint ptr %CurrLedState11.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %CurrLedState11.i, align 4
  %372 = zext i32 %371 to i64
  call void @__sanitizer_cov_trace_switch(i64 %372, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %371, label %lor.lhs.false17.i [
    i32 6, label %if.then10.i98.cleanup_crit_edge
    i32 9, label %if.then10.i98.cleanup_crit_edge236
    i32 11, label %if.then10.i98.cleanup_crit_edge237
  ]

if.then10.i98.cleanup_crit_edge237:               ; preds = %if.then10.i98
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then10.i98.cleanup_crit_edge236:               ; preds = %if.then10.i98
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then10.i98.cleanup_crit_edge:                  ; preds = %if.then10.i98
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false17.i:                                ; preds = %if.then10.i98
  %bLedWPSBlinkInProgress18.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %373 = ptrtoint ptr %bLedWPSBlinkInProgress18.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %bLedWPSBlinkInProgress18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %374)
  %tobool19.not.i = icmp eq i8 %374, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %lor.lhs.false17.i.cleanup_crit_edge

lor.lhs.false17.i.cleanup_crit_edge:              ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end21.i:                                       ; preds = %lor.lhs.false17.i
  %bLedBlinkInProgress.i99 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %375 = ptrtoint ptr %bLedBlinkInProgress.i99 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %bLedBlinkInProgress.i99, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %376)
  %tobool22.not.i = icmp eq i8 %376, 0
  br i1 %tobool22.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then23.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer24.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call25.i = tail call i32 @del_timer(ptr noundef %BlinkTimer24.i) #2
  %377 = ptrtoint ptr %bLedBlinkInProgress.i99 to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 0, ptr %bLedBlinkInProgress.i99, align 2
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end21.i.if.end27.i_crit_edge
  %bLedNoLinkBlinkInProgress.i100 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 6
  %378 = ptrtoint ptr %bLedNoLinkBlinkInProgress.i100 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %bLedNoLinkBlinkInProgress.i100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool28.not.i = icmp eq i8 %379, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end33.i_crit_edge, label %if.then29.i

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end33.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer30.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call31.i101 = tail call i32 @del_timer(ptr noundef %BlinkTimer30.i) #2
  %380 = ptrtoint ptr %bLedNoLinkBlinkInProgress.i100 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 0, ptr %bLedNoLinkBlinkInProgress.i100, align 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end33.i_crit_edge
  %381 = ptrtoint ptr %bLedStartToLinkBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 1, ptr %bLedStartToLinkBlinkInProgress.i, align 1
  %382 = ptrtoint ptr %CurrLedState11.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 8, ptr %CurrLedState11.i, align 4
  %bLedOn36.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %383 = ptrtoint ptr %bLedOn36.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %bLedOn36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool37.not.i = icmp eq i8 %384, 0
  %BlinkingLedState44.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  br i1 %tobool37.not.i, label %if.else.i102, label %if.then38.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #4
  %385 = ptrtoint ptr %BlinkingLedState44.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 2, ptr %BlinkingLedState44.i, align 4
  %BlinkTimer40.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %386 = load volatile i32, ptr @jiffies, align 128
  %add42.i = add i32 %386, 20
  %call43.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer40.i, i32 noundef %add42.i) #2
  br label %cleanup

if.else.i102:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #4
  %387 = ptrtoint ptr %BlinkingLedState44.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 1, ptr %BlinkingLedState44.i, align 4
  %BlinkTimer45.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %388 = load volatile i32, ptr @jiffies, align 128
  %add47.i = add i32 %388, 10
  %call48.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer45.i, i32 noundef %add47.i) #2
  br label %cleanup

if.then54.i:                                      ; preds = %sw.bb4
  %bLedWPSBlinkInProgress55.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 10
  %389 = ptrtoint ptr %bLedWPSBlinkInProgress55.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %bLedWPSBlinkInProgress55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %tobool56.not.i = icmp eq i8 %390, 0
  br i1 %tobool56.not.i, label %if.then54.i.if.end72.i_crit_edge, label %if.then57.i

if.then54.i.if.end72.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end72.i

if.then57.i:                                      ; preds = %if.then54.i
  %391 = ptrtoint ptr %bLedWPSBlinkInProgress55.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 0, ptr %bLedWPSBlinkInProgress55.i, align 1
  %BlinkTimer59.i103 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 13
  %call60.i = tail call i32 @del_timer(ptr noundef %BlinkTimer59.i103) #2
  %BlinkingLedState61.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 12
  %392 = ptrtoint ptr %BlinkingLedState61.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 2, ptr %BlinkingLedState61.i, align 4
  %CurrLedState62.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 2
  %393 = ptrtoint ptr %CurrLedState62.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 2, ptr %CurrLedState62.i, align 4
  %bLedOn63.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 3
  %394 = ptrtoint ptr %bLedOn63.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %bLedOn63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %tobool64.not.i = icmp eq i8 %395, 0
  br i1 %tobool64.not.i, label %if.then57.i.if.end72.i_crit_edge, label %if.then65.i

if.then57.i.if.end72.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end72.i

if.then65.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer66.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %396 = load volatile i32, ptr @jiffies, align 128
  %call69.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer66.i, i32 noundef %396) #2
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then65.i, %if.then57.i.if.end72.i_crit_edge, %if.then54.i.if.end72.i_crit_edge, %sw.bb4.if.end72.i_crit_edge
  %bLedNoLinkBlinkInProgress73.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 6
  %397 = ptrtoint ptr %bLedNoLinkBlinkInProgress73.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %bLedNoLinkBlinkInProgress73.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %tobool74.not.i = icmp eq i8 %398, 0
  br i1 %tobool74.not.i, label %if.then75.i, label %if.end72.i.cleanup_crit_edge

if.end72.i.cleanup_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then75.i:                                      ; preds = %if.end72.i
  %CurrLedState76.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %399 = ptrtoint ptr %CurrLedState76.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %CurrLedState76.i, align 4
  %401 = zext i32 %400 to i64
  call void @__sanitizer_cov_trace_switch(i64 %401, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %400, label %lor.lhs.false87.i [
    i32 6, label %if.then75.i.cleanup_crit_edge
    i32 9, label %if.then75.i.cleanup_crit_edge238
    i32 11, label %if.then75.i.cleanup_crit_edge239
  ]

if.then75.i.cleanup_crit_edge239:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then75.i.cleanup_crit_edge238:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then75.i.cleanup_crit_edge:                    ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false87.i:                                ; preds = %if.then75.i
  %bLedWPSBlinkInProgress88.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %402 = ptrtoint ptr %bLedWPSBlinkInProgress88.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %bLedWPSBlinkInProgress88.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %403)
  %tobool90.not.i104 = icmp eq i8 %403, 0
  br i1 %tobool90.not.i104, label %if.end92.i, label %lor.lhs.false87.i.cleanup_crit_edge

lor.lhs.false87.i.cleanup_crit_edge:              ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end92.i:                                       ; preds = %lor.lhs.false87.i
  %bLedBlinkInProgress93.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %404 = ptrtoint ptr %bLedBlinkInProgress93.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %bLedBlinkInProgress93.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %tobool94.not.i = icmp eq i8 %405, 0
  br i1 %tobool94.not.i, label %if.end92.i.if.end99.i_crit_edge, label %if.then95.i

if.end92.i.if.end99.i_crit_edge:                  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end99.i

if.then95.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer96.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call97.i105 = tail call i32 @del_timer(ptr noundef %BlinkTimer96.i) #2
  %406 = ptrtoint ptr %bLedBlinkInProgress93.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 0, ptr %bLedBlinkInProgress93.i, align 2
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then95.i, %if.end92.i.if.end99.i_crit_edge
  %407 = ptrtoint ptr %bLedNoLinkBlinkInProgress73.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 1, ptr %bLedNoLinkBlinkInProgress73.i, align 1
  %408 = ptrtoint ptr %CurrLedState76.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 4, ptr %CurrLedState76.i, align 4
  %bLedOn102.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %409 = ptrtoint ptr %bLedOn102.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %bLedOn102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %410)
  %tobool103.not.i106 = icmp eq i8 %410, 0
  %spec.select.i107 = select i1 %tobool103.not.i106, i32 1, i32 2
  %411 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %spec.select.i107, ptr %411, align 4
  %BlinkTimer109.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %413 = load volatile i32, ptr @jiffies, align 128
  %add111.i = add i32 %413, 100
  %call112.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer109.i, i32 noundef %add111.i) #2
  br label %cleanup

sw.bb114.i:                                       ; preds = %sw.bb4
  %traffic_busy.i108 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14, i32 2
  %414 = ptrtoint ptr %traffic_busy.i108 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %traffic_busy.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %tobool115.not.i = icmp eq i32 %415, 0
  br i1 %tobool115.not.i, label %sw.bb114.i.if.else120.i_crit_edge, label %land.lhs.true.i110

sw.bb114.i.if.else120.i_crit_edge:                ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else120.i

land.lhs.true.i110:                               ; preds = %sw.bb114.i
  %fw_state.i.i109 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %416 = ptrtoint ptr %fw_state.i.i109 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %fw_state.i.i109, align 8
  %418 = and i32 %417, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %tobool118.not.i = icmp eq i32 %418, 0
  br i1 %tobool118.not.i, label %land.lhs.true.i110.if.else120.i_crit_edge, label %land.lhs.true.i110.cleanup_crit_edge

land.lhs.true.i110.cleanup_crit_edge:             ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i110.if.else120.i_crit_edge:        ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else120.i

if.else120.i:                                     ; preds = %land.lhs.true.i110.if.else120.i_crit_edge, %sw.bb114.i.if.else120.i_crit_edge
  %bLedScanBlinkInProgress.i111 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %419 = ptrtoint ptr %bLedScanBlinkInProgress.i111 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %bLedScanBlinkInProgress.i111, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool121.not.i = icmp eq i8 %420, 0
  br i1 %tobool121.not.i, label %if.then122.i, label %if.else120.i.cleanup_crit_edge

if.else120.i.cleanup_crit_edge:                   ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then122.i:                                     ; preds = %if.else120.i
  %CurrLedState123.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %421 = ptrtoint ptr %CurrLedState123.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %CurrLedState123.i, align 4
  %423 = zext i32 %422 to i64
  call void @__sanitizer_cov_trace_switch(i64 %423, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %422, label %lor.lhs.false130.i [
    i32 9, label %if.then122.i.cleanup_crit_edge
    i32 11, label %if.then122.i.cleanup_crit_edge240
  ]

if.then122.i.cleanup_crit_edge240:                ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then122.i.cleanup_crit_edge:                   ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false130.i:                               ; preds = %if.then122.i
  %bLedWPSBlinkInProgress131.i112 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %424 = ptrtoint ptr %bLedWPSBlinkInProgress131.i112 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %bLedWPSBlinkInProgress131.i112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %tobool133.not.i = icmp eq i8 %425, 0
  br i1 %tobool133.not.i, label %if.end135.i, label %lor.lhs.false130.i.cleanup_crit_edge

lor.lhs.false130.i.cleanup_crit_edge:             ; preds = %lor.lhs.false130.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end135.i:                                      ; preds = %lor.lhs.false130.i
  %bLedNoLinkBlinkInProgress136.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 6
  %426 = ptrtoint ptr %bLedNoLinkBlinkInProgress136.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %bLedNoLinkBlinkInProgress136.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool137.not.i = icmp eq i8 %427, 0
  br i1 %tobool137.not.i, label %if.end135.i.if.end142.i_crit_edge, label %if.then138.i

if.end135.i.if.end142.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end142.i

if.then138.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer139.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call140.i = tail call i32 @del_timer(ptr noundef %BlinkTimer139.i) #2
  %428 = ptrtoint ptr %bLedNoLinkBlinkInProgress136.i to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 0, ptr %bLedNoLinkBlinkInProgress136.i, align 1
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then138.i, %if.end135.i.if.end142.i_crit_edge
  %bLedBlinkInProgress143.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %429 = ptrtoint ptr %bLedBlinkInProgress143.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %bLedBlinkInProgress143.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %430)
  %tobool144.not.i = icmp eq i8 %430, 0
  br i1 %tobool144.not.i, label %if.end142.i.if.end149.i_crit_edge, label %if.then145.i

if.end142.i.if.end149.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end149.i

if.then145.i:                                     ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer146.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call147.i = tail call i32 @del_timer(ptr noundef %BlinkTimer146.i) #2
  %431 = ptrtoint ptr %bLedBlinkInProgress143.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 0, ptr %bLedBlinkInProgress143.i, align 2
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then145.i, %if.end142.i.if.end149.i_crit_edge
  %432 = ptrtoint ptr %bLedScanBlinkInProgress.i111 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 1, ptr %bLedScanBlinkInProgress.i111, align 2
  %433 = ptrtoint ptr %CurrLedState123.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 6, ptr %CurrLedState123.i, align 4
  %BlinkTimes.i113 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 11
  %434 = ptrtoint ptr %BlinkTimes.i113 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 24, ptr %BlinkTimes.i113, align 4
  %bLedOn152.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %435 = ptrtoint ptr %bLedOn152.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %bLedOn152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %436)
  %tobool153.not.i = icmp eq i8 %436, 0
  %spec.select629.i = select i1 %tobool153.not.i, i32 1, i32 2
  %437 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %spec.select629.i, ptr %437, align 4
  %BlinkTimer159.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %439 = load volatile i32, ptr @jiffies, align 128
  %add161.i = add i32 %439, 18
  %call162.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer159.i, i32 noundef %add161.i) #2
  br label %cleanup

sw.bb165.i:                                       ; preds = %sw.bb4.sw.bb165.i_crit_edge, %sw.bb4.sw.bb165.i_crit_edge234
  %bLedBlinkInProgress166.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %440 = ptrtoint ptr %bLedBlinkInProgress166.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %bLedBlinkInProgress166.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %tobool167.not.i = icmp eq i8 %441, 0
  br i1 %tobool167.not.i, label %if.then168.i, label %sw.bb165.i.cleanup_crit_edge

sw.bb165.i.cleanup_crit_edge:                     ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then168.i:                                     ; preds = %sw.bb165.i
  %CurrLedState169.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %442 = ptrtoint ptr %CurrLedState169.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %CurrLedState169.i, align 4
  %444 = zext i32 %443 to i64
  call void @__sanitizer_cov_trace_switch(i64 %444, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %443, label %lor.lhs.false180.i [
    i32 6, label %if.then168.i.cleanup_crit_edge
    i32 9, label %if.then168.i.cleanup_crit_edge241
    i32 11, label %if.then168.i.cleanup_crit_edge242
  ]

if.then168.i.cleanup_crit_edge242:                ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then168.i.cleanup_crit_edge241:                ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then168.i.cleanup_crit_edge:                   ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false180.i:                               ; preds = %if.then168.i
  %bLedWPSBlinkInProgress181.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %445 = ptrtoint ptr %bLedWPSBlinkInProgress181.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %bLedWPSBlinkInProgress181.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %446)
  %tobool183.not.i = icmp eq i8 %446, 0
  br i1 %tobool183.not.i, label %if.end185.i, label %lor.lhs.false180.i.cleanup_crit_edge

lor.lhs.false180.i.cleanup_crit_edge:             ; preds = %lor.lhs.false180.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end185.i:                                      ; preds = %lor.lhs.false180.i
  %bLedNoLinkBlinkInProgress186.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 6
  %447 = ptrtoint ptr %bLedNoLinkBlinkInProgress186.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %bLedNoLinkBlinkInProgress186.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool187.not.i = icmp eq i8 %448, 0
  br i1 %tobool187.not.i, label %if.end185.i.if.end192.i_crit_edge, label %if.then188.i

if.end185.i.if.end192.i_crit_edge:                ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end192.i

if.then188.i:                                     ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer189.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call190.i = tail call i32 @del_timer(ptr noundef %BlinkTimer189.i) #2
  %449 = ptrtoint ptr %bLedNoLinkBlinkInProgress186.i to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 0, ptr %bLedNoLinkBlinkInProgress186.i, align 1
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.then188.i, %if.end185.i.if.end192.i_crit_edge
  %450 = ptrtoint ptr %bLedBlinkInProgress166.i to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 1, ptr %bLedBlinkInProgress166.i, align 2
  %451 = ptrtoint ptr %CurrLedState169.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 10, ptr %CurrLedState169.i, align 4
  %BlinkTimes195.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 11
  %452 = ptrtoint ptr %BlinkTimes195.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 2, ptr %BlinkTimes195.i, align 4
  %bLedOn196.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %453 = ptrtoint ptr %bLedOn196.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %bLedOn196.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %454)
  %tobool197.not.i114 = icmp eq i8 %454, 0
  %spec.select630.i = select i1 %tobool197.not.i114, i32 1, i32 2
  %455 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %spec.select630.i, ptr %455, align 4
  %BlinkTimer203.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %457 = load volatile i32, ptr @jiffies, align 128
  %add205.i = add i32 %457, 5
  %call206.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer203.i, i32 noundef %add205.i) #2
  br label %cleanup

sw.bb208.i:                                       ; preds = %sw.bb4.sw.bb208.i_crit_edge, %sw.bb4.sw.bb208.i_crit_edge235
  %bLedWPSBlinkInProgress209.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 10
  %458 = ptrtoint ptr %bLedWPSBlinkInProgress209.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %bLedWPSBlinkInProgress209.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %459)
  %tobool210.not.i = icmp eq i8 %459, 0
  br i1 %tobool210.not.i, label %sw.bb208.i.if.end225.i_crit_edge, label %if.then211.i

sw.bb208.i.if.end225.i_crit_edge:                 ; preds = %sw.bb208.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end225.i

if.then211.i:                                     ; preds = %sw.bb208.i
  %460 = ptrtoint ptr %bLedWPSBlinkInProgress209.i to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 0, ptr %bLedWPSBlinkInProgress209.i, align 1
  %BlinkTimer213.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 13
  %call214.i = tail call i32 @del_timer(ptr noundef %BlinkTimer213.i) #2
  %BlinkingLedState215.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 12
  %461 = ptrtoint ptr %BlinkingLedState215.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 2, ptr %BlinkingLedState215.i, align 4
  %CurrLedState216.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 2
  %462 = ptrtoint ptr %CurrLedState216.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 2, ptr %CurrLedState216.i, align 4
  %bLedOn217.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 3
  %463 = ptrtoint ptr %bLedOn217.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %bLedOn217.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %464)
  %tobool218.not.i = icmp eq i8 %464, 0
  br i1 %tobool218.not.i, label %if.then211.i.if.end225.i_crit_edge, label %if.then219.i

if.then211.i.if.end225.i_crit_edge:               ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end225.i

if.then219.i:                                     ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer220.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %465 = load volatile i32, ptr @jiffies, align 128
  %call223.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer220.i, i32 noundef %465) #2
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.then219.i, %if.then211.i.if.end225.i_crit_edge, %sw.bb208.i.if.end225.i_crit_edge
  %bLedWPSBlinkInProgress226.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %466 = ptrtoint ptr %bLedWPSBlinkInProgress226.i to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %bLedWPSBlinkInProgress226.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %467)
  %tobool227.not.i = icmp eq i8 %467, 0
  br i1 %tobool227.not.i, label %if.then228.i, label %if.end225.i.cleanup_crit_edge

if.end225.i.cleanup_crit_edge:                    ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then228.i:                                     ; preds = %if.end225.i
  %bLedNoLinkBlinkInProgress229.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 6
  %468 = ptrtoint ptr %bLedNoLinkBlinkInProgress229.i to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %bLedNoLinkBlinkInProgress229.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %tobool230.not.i = icmp eq i8 %469, 0
  br i1 %tobool230.not.i, label %if.then228.i.if.end235.i_crit_edge, label %if.then231.i

if.then228.i.if.end235.i_crit_edge:               ; preds = %if.then228.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end235.i

if.then231.i:                                     ; preds = %if.then228.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer232.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call233.i = tail call i32 @del_timer(ptr noundef %BlinkTimer232.i) #2
  %470 = ptrtoint ptr %bLedNoLinkBlinkInProgress229.i to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 0, ptr %bLedNoLinkBlinkInProgress229.i, align 1
  br label %if.end235.i

if.end235.i:                                      ; preds = %if.then231.i, %if.then228.i.if.end235.i_crit_edge
  %bLedBlinkInProgress236.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %471 = ptrtoint ptr %bLedBlinkInProgress236.i to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %bLedBlinkInProgress236.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %472)
  %tobool237.not.i = icmp eq i8 %472, 0
  br i1 %tobool237.not.i, label %if.end235.i.if.end242.i_crit_edge, label %if.then238.i

if.end235.i.if.end242.i_crit_edge:                ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end242.i

if.then238.i:                                     ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer239.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call240.i = tail call i32 @del_timer(ptr noundef %BlinkTimer239.i) #2
  %473 = ptrtoint ptr %bLedBlinkInProgress236.i to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 0, ptr %bLedBlinkInProgress236.i, align 2
  br label %if.end242.i

if.end242.i:                                      ; preds = %if.then238.i, %if.end235.i.if.end242.i_crit_edge
  %bLedScanBlinkInProgress243.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %474 = ptrtoint ptr %bLedScanBlinkInProgress243.i to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %bLedScanBlinkInProgress243.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %475)
  %tobool244.not.i = icmp eq i8 %475, 0
  br i1 %tobool244.not.i, label %if.end242.i.if.end249.i_crit_edge, label %if.then245.i

if.end242.i.if.end249.i_crit_edge:                ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end249.i

if.then245.i:                                     ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer246.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call247.i = tail call i32 @del_timer(ptr noundef %BlinkTimer246.i) #2
  %476 = ptrtoint ptr %bLedScanBlinkInProgress243.i to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 0, ptr %bLedScanBlinkInProgress243.i, align 2
  br label %if.end249.i

if.end249.i:                                      ; preds = %if.then245.i, %if.end242.i.if.end249.i_crit_edge
  %477 = ptrtoint ptr %bLedWPSBlinkInProgress226.i to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 1, ptr %bLedWPSBlinkInProgress226.i, align 1
  %CurrLedState251.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %478 = ptrtoint ptr %CurrLedState251.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 9, ptr %CurrLedState251.i, align 4
  %bLedOn252.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %479 = ptrtoint ptr %bLedOn252.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %bLedOn252.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %480)
  %tobool253.not.i = icmp eq i8 %480, 0
  %BlinkingLedState261.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  br i1 %tobool253.not.i, label %if.else260.i, label %if.then254.i

if.then254.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #4
  %481 = ptrtoint ptr %BlinkingLedState261.i to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 2, ptr %BlinkingLedState261.i, align 4
  %BlinkTimer256.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %482 = load volatile i32, ptr @jiffies, align 128
  %add258.i = add i32 %482, 20
  %call259.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer256.i, i32 noundef %add258.i) #2
  br label %cleanup

if.else260.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #4
  %483 = ptrtoint ptr %BlinkingLedState261.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 1, ptr %BlinkingLedState261.i, align 4
  %BlinkTimer262.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %484 = load volatile i32, ptr @jiffies, align 128
  %add264.i = add i32 %484, 10
  %call265.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer262.i, i32 noundef %add264.i) #2
  br label %cleanup

sw.bb268.i:                                       ; preds = %sw.bb4
  %bLedWPSBlinkInProgress269.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %485 = ptrtoint ptr %bLedWPSBlinkInProgress269.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %bLedWPSBlinkInProgress269.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %486)
  %tobool270.not.i = icmp eq i8 %486, 0
  br i1 %tobool270.not.i, label %sw.bb268.i.if.end275.i_crit_edge, label %if.then271.i

sw.bb268.i.if.end275.i_crit_edge:                 ; preds = %sw.bb268.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end275.i

if.then271.i:                                     ; preds = %sw.bb268.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer272.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call273.i = tail call i32 @del_timer(ptr noundef %BlinkTimer272.i) #2
  %487 = ptrtoint ptr %bLedWPSBlinkInProgress269.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 0, ptr %bLedWPSBlinkInProgress269.i, align 1
  br label %if.end275.i

if.end275.i:                                      ; preds = %if.then271.i, %sw.bb268.i.if.end275.i_crit_edge
  %bLedNoLinkBlinkInProgress276.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 6
  %488 = ptrtoint ptr %bLedNoLinkBlinkInProgress276.i to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 1, ptr %bLedNoLinkBlinkInProgress276.i, align 1
  %CurrLedState277.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %489 = ptrtoint ptr %CurrLedState277.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 4, ptr %CurrLedState277.i, align 4
  %bLedOn278.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %490 = ptrtoint ptr %bLedOn278.i to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %bLedOn278.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %491)
  %tobool279.not.i = icmp eq i8 %491, 0
  %spec.select631.i = select i1 %tobool279.not.i, i32 1, i32 2
  %492 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %spec.select631.i, ptr %492, align 4
  %BlinkTimer285.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %494 = load volatile i32, ptr @jiffies, align 128
  %add287.i = add i32 %494, 100
  %call288.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer285.i, i32 noundef %add287.i) #2
  br label %cleanup

sw.bb289.i117:                                    ; preds = %sw.bb4
  %bLedWPSBlinkInProgress290.i115 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %495 = ptrtoint ptr %bLedWPSBlinkInProgress290.i115 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %bLedWPSBlinkInProgress290.i115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %496)
  %tobool291.not.i116 = icmp eq i8 %496, 0
  br i1 %tobool291.not.i116, label %sw.bb289.i117.if.end296.i128_crit_edge, label %if.then292.i120

sw.bb289.i117.if.end296.i128_crit_edge:           ; preds = %sw.bb289.i117
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end296.i128

if.then292.i120:                                  ; preds = %sw.bb289.i117
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer293.i118 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call294.i119 = tail call i32 @del_timer(ptr noundef %BlinkTimer293.i118) #2
  %497 = ptrtoint ptr %bLedWPSBlinkInProgress290.i115 to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 0, ptr %bLedWPSBlinkInProgress290.i115, align 1
  br label %if.end296.i128

if.end296.i128:                                   ; preds = %if.then292.i120, %sw.bb289.i117.if.end296.i128_crit_edge
  %bLedNoLinkBlinkInProgress297.i121 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 6
  %498 = ptrtoint ptr %bLedNoLinkBlinkInProgress297.i121 to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 1, ptr %bLedNoLinkBlinkInProgress297.i121, align 1
  %CurrLedState298.i122 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %499 = ptrtoint ptr %CurrLedState298.i122 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 4, ptr %CurrLedState298.i122, align 4
  %bLedOn299.i123 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %500 = ptrtoint ptr %bLedOn299.i123 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %bLedOn299.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %501)
  %tobool300.not.i124 = icmp eq i8 %501, 0
  %spec.select632.i = select i1 %tobool300.not.i124, i32 1, i32 2
  %502 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 %spec.select632.i, ptr %502, align 4
  %BlinkTimer306.i125 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %504 = load volatile i32, ptr @jiffies, align 128
  %add308.i126 = add i32 %504, 100
  %call309.i127 = tail call i32 @mod_timer(ptr noundef %BlinkTimer306.i125, i32 noundef %add308.i126) #2
  %bLedWPSBlinkInProgress310.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 10
  %505 = ptrtoint ptr %bLedWPSBlinkInProgress310.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %bLedWPSBlinkInProgress310.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %506)
  %tobool311.not.i = icmp eq i8 %506, 0
  br i1 %tobool311.not.i, label %if.else315.i, label %if.then312.i

if.then312.i:                                     ; preds = %if.end296.i128
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer313.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 13
  %call314.i = tail call i32 @del_timer(ptr noundef %BlinkTimer313.i) #2
  br label %if.end317.i

if.else315.i:                                     ; preds = %if.end296.i128
  call void @__sanitizer_cov_trace_pc() #4
  %507 = ptrtoint ptr %bLedWPSBlinkInProgress310.i to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 1, ptr %bLedWPSBlinkInProgress310.i, align 1
  br label %if.end317.i

if.end317.i:                                      ; preds = %if.else315.i, %if.then312.i
  %CurrLedState318.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 2
  %508 = ptrtoint ptr %CurrLedState318.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 11, ptr %CurrLedState318.i, align 4
  %bLedOn319.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 3
  %509 = ptrtoint ptr %bLedOn319.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %bLedOn319.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %510)
  %tobool320.not.i = icmp eq i8 %510, 0
  %spec.select633.i = select i1 %tobool320.not.i, i32 1, i32 2
  %511 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 12
  %512 = ptrtoint ptr %511 to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %spec.select633.i, ptr %511, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %513 = load volatile i32, ptr @jiffies, align 128
  %add328.i = add i32 %513, 10
  %call329.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer306.i125, i32 noundef %add328.i) #2
  br label %cleanup

sw.bb330.i:                                       ; preds = %sw.bb4
  %bLedWPSBlinkInProgress331.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %514 = ptrtoint ptr %bLedWPSBlinkInProgress331.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %bLedWPSBlinkInProgress331.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %515)
  %tobool332.not.i = icmp eq i8 %515, 0
  br i1 %tobool332.not.i, label %sw.bb330.i.if.end337.i_crit_edge, label %if.then333.i

sw.bb330.i.if.end337.i_crit_edge:                 ; preds = %sw.bb330.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end337.i

if.then333.i:                                     ; preds = %sw.bb330.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer334.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call335.i = tail call i32 @del_timer(ptr noundef %BlinkTimer334.i) #2
  %516 = ptrtoint ptr %bLedWPSBlinkInProgress331.i to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 0, ptr %bLedWPSBlinkInProgress331.i, align 1
  br label %if.end337.i

if.end337.i:                                      ; preds = %if.then333.i, %sw.bb330.i.if.end337.i_crit_edge
  %bLedNoLinkBlinkInProgress338.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 6
  %517 = ptrtoint ptr %bLedNoLinkBlinkInProgress338.i to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 1, ptr %bLedNoLinkBlinkInProgress338.i, align 1
  %CurrLedState339.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %518 = ptrtoint ptr %CurrLedState339.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 4, ptr %CurrLedState339.i, align 4
  %bLedOn340.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %519 = ptrtoint ptr %bLedOn340.i to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %bLedOn340.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %520)
  %tobool341.not.i = icmp eq i8 %520, 0
  %spec.select634.i = select i1 %tobool341.not.i, i32 1, i32 2
  %521 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %522 = ptrtoint ptr %521 to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 %spec.select634.i, ptr %521, align 4
  %BlinkTimer347.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %523 = load volatile i32, ptr @jiffies, align 128
  %add349.i = add i32 %523, 100
  %call350.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer347.i, i32 noundef %add349.i) #2
  %bLedWPSBlinkInProgress351.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 10
  %524 = ptrtoint ptr %bLedWPSBlinkInProgress351.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %bLedWPSBlinkInProgress351.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %525)
  %tobool352.not.i = icmp eq i8 %525, 0
  br i1 %tobool352.not.i, label %if.else356.i, label %if.then353.i

if.then353.i:                                     ; preds = %if.end337.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer354.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 13
  %call355.i = tail call i32 @del_timer(ptr noundef %BlinkTimer354.i) #2
  br label %if.end358.i

if.else356.i:                                     ; preds = %if.end337.i
  call void @__sanitizer_cov_trace_pc() #4
  %526 = ptrtoint ptr %bLedWPSBlinkInProgress351.i to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 1, ptr %bLedWPSBlinkInProgress351.i, align 1
  br label %if.end358.i

if.end358.i:                                      ; preds = %if.else356.i, %if.then353.i
  %CurrLedState359.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 2
  %527 = ptrtoint ptr %CurrLedState359.i to i32
  call void @__asan_store4_noabort(i32 %527)
  store i32 12, ptr %CurrLedState359.i, align 4
  %BlinkTimes360.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 11
  %528 = ptrtoint ptr %BlinkTimes360.i to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 10, ptr %BlinkTimes360.i, align 4
  %bLedOn361.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 3
  %529 = ptrtoint ptr %bLedOn361.i to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %bLedOn361.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %530)
  %tobool362.not.i = icmp eq i8 %530, 0
  %spec.select635.i = select i1 %tobool362.not.i, i32 1, i32 2
  %531 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 12
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 %spec.select635.i, ptr %531, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %533 = load volatile i32, ptr @jiffies, align 128
  %add370.i = add i32 %533, 10
  %call371.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer347.i, i32 noundef %add370.i) #2
  br label %cleanup

sw.bb372.i:                                       ; preds = %sw.bb4
  %CurrLedState373.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %534 = ptrtoint ptr %CurrLedState373.i to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 2, ptr %CurrLedState373.i, align 4
  %BlinkingLedState374.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %535 = ptrtoint ptr %BlinkingLedState374.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 2, ptr %BlinkingLedState374.i, align 4
  %bLedNoLinkBlinkInProgress375.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 6
  %536 = ptrtoint ptr %bLedNoLinkBlinkInProgress375.i to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %bLedNoLinkBlinkInProgress375.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %537)
  %tobool376.not.i = icmp eq i8 %537, 0
  br i1 %tobool376.not.i, label %sw.bb372.i.if.end381.i_crit_edge, label %if.then377.i

sw.bb372.i.if.end381.i_crit_edge:                 ; preds = %sw.bb372.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end381.i

if.then377.i:                                     ; preds = %sw.bb372.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer378.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call379.i = tail call i32 @del_timer(ptr noundef %BlinkTimer378.i) #2
  %538 = ptrtoint ptr %bLedNoLinkBlinkInProgress375.i to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 0, ptr %bLedNoLinkBlinkInProgress375.i, align 1
  br label %if.end381.i

if.end381.i:                                      ; preds = %if.then377.i, %sw.bb372.i.if.end381.i_crit_edge
  %bLedLinkBlinkInProgress.i129 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 7
  %539 = ptrtoint ptr %bLedLinkBlinkInProgress.i129 to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %bLedLinkBlinkInProgress.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %540)
  %tobool382.not.i = icmp eq i8 %540, 0
  br i1 %tobool382.not.i, label %if.end381.i.if.end387.i_crit_edge, label %if.then383.i

if.end381.i.if.end387.i_crit_edge:                ; preds = %if.end381.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end387.i

if.then383.i:                                     ; preds = %if.end381.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer384.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call385.i = tail call i32 @del_timer(ptr noundef %BlinkTimer384.i) #2
  %541 = ptrtoint ptr %bLedLinkBlinkInProgress.i129 to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 0, ptr %bLedLinkBlinkInProgress.i129, align 4
  br label %if.end387.i

if.end387.i:                                      ; preds = %if.then383.i, %if.end381.i.if.end387.i_crit_edge
  %bLedBlinkInProgress388.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %542 = ptrtoint ptr %bLedBlinkInProgress388.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %bLedBlinkInProgress388.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %543)
  %tobool389.not.i = icmp eq i8 %543, 0
  br i1 %tobool389.not.i, label %if.end387.i.if.end394.i_crit_edge, label %if.then390.i

if.end387.i.if.end394.i_crit_edge:                ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end394.i

if.then390.i:                                     ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer391.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call392.i = tail call i32 @del_timer(ptr noundef %BlinkTimer391.i) #2
  %544 = ptrtoint ptr %bLedBlinkInProgress388.i to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 0, ptr %bLedBlinkInProgress388.i, align 2
  br label %if.end394.i

if.end394.i:                                      ; preds = %if.then390.i, %if.end387.i.if.end394.i_crit_edge
  %bLedWPSBlinkInProgress395.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %545 = ptrtoint ptr %bLedWPSBlinkInProgress395.i to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %bLedWPSBlinkInProgress395.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %546)
  %tobool396.not.i = icmp eq i8 %546, 0
  br i1 %tobool396.not.i, label %if.end394.i.if.end401.i_crit_edge, label %if.then397.i

if.end394.i.if.end401.i_crit_edge:                ; preds = %if.end394.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end401.i

if.then397.i:                                     ; preds = %if.end394.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer398.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call399.i = tail call i32 @del_timer(ptr noundef %BlinkTimer398.i) #2
  %547 = ptrtoint ptr %bLedWPSBlinkInProgress395.i to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 0, ptr %bLedWPSBlinkInProgress395.i, align 1
  br label %if.end401.i

if.end401.i:                                      ; preds = %if.then397.i, %if.end394.i.if.end401.i_crit_edge
  %bLedScanBlinkInProgress402.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 9
  %548 = ptrtoint ptr %bLedScanBlinkInProgress402.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %bLedScanBlinkInProgress402.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %549)
  %tobool403.not.i = icmp eq i8 %549, 0
  br i1 %tobool403.not.i, label %if.end401.i.if.end408.i_crit_edge, label %if.then404.i

if.end401.i.if.end408.i_crit_edge:                ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end408.i

if.then404.i:                                     ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer405.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call406.i = tail call i32 @del_timer(ptr noundef %BlinkTimer405.i) #2
  %550 = ptrtoint ptr %bLedScanBlinkInProgress402.i to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 0, ptr %bLedScanBlinkInProgress402.i, align 2
  br label %if.end408.i

if.end408.i:                                      ; preds = %if.then404.i, %if.end401.i.if.end408.i_crit_edge
  %bLedStartToLinkBlinkInProgress409.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 8
  %551 = ptrtoint ptr %bLedStartToLinkBlinkInProgress409.i to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %bLedStartToLinkBlinkInProgress409.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %552)
  %tobool410.not.i = icmp eq i8 %552, 0
  br i1 %tobool410.not.i, label %if.end408.i.if.end415.i_crit_edge, label %if.then411.i

if.end408.i.if.end415.i_crit_edge:                ; preds = %if.end408.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end415.i

if.then411.i:                                     ; preds = %if.end408.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer412.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call413.i = tail call i32 @del_timer(ptr noundef %BlinkTimer412.i) #2
  %553 = ptrtoint ptr %bLedStartToLinkBlinkInProgress409.i to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 0, ptr %bLedStartToLinkBlinkInProgress409.i, align 1
  br label %if.end415.i

if.end415.i:                                      ; preds = %if.then411.i, %if.end408.i.if.end415.i_crit_edge
  %bLedWPSBlinkInProgress416.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 10
  %554 = ptrtoint ptr %bLedWPSBlinkInProgress416.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %bLedWPSBlinkInProgress416.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %555)
  %tobool417.not.i = icmp eq i8 %555, 0
  br i1 %tobool417.not.i, label %if.end415.i.if.end422.i_crit_edge, label %if.then418.i

if.end415.i.if.end422.i_crit_edge:                ; preds = %if.end415.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end422.i

if.then418.i:                                     ; preds = %if.end415.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer419.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 13
  %call420.i = tail call i32 @del_timer(ptr noundef %BlinkTimer419.i) #2
  %556 = ptrtoint ptr %bLedWPSBlinkInProgress416.i to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 0, ptr %bLedWPSBlinkInProgress416.i, align 1
  br label %if.end422.i

if.end422.i:                                      ; preds = %if.then418.i, %if.end415.i.if.end422.i_crit_edge
  %BlinkingLedState423.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 12
  %557 = ptrtoint ptr %BlinkingLedState423.i to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 0, ptr %BlinkingLedState423.i, align 4
  %surprise_removed.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %558 = ptrtoint ptr %surprise_removed.i.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %surprise_removed.i.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %559)
  %tobool.not.i.i = icmp eq i8 %559, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end422.i.cleanup_crit_edge

if.end422.i.cleanup_crit_edge:                    ; preds = %if.end422.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end422.i
  %driver_stopped.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %560 = ptrtoint ptr %driver_stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %driver_stopped.i.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %561)
  %tobool1.not.i.i = icmp eq i8 %561, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.SwLedOff.exit.i_crit_edge

lor.lhs.false.i.i.SwLedOff.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %SwLedOff.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call.i.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861042) #2
  %LedPin.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 1
  %562 = ptrtoint ptr %LedPin.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %LedPin.i.i, align 4
  %564 = zext i32 %563 to i64
  call void @__sanitizer_cov_trace_switch(i64 %564, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %563, label %if.end.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %sw.bb5.i.i
    i32 1, label %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge
  ]

if.end.i.i.sw.epilog.sink.split.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb5.i.i, %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink.i.i = phi i8 [ 15, %sw.bb5.i.i ], [ -16, %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %.sink21.i.i = phi i8 [ -128, %sw.bb5.i.i ], [ 8, %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %565 = and i8 %.sink.i.i, %call.i.i
  %566 = or i8 %565, %.sink21.i.i
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861042, i8 noundef zeroext %566) #2
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %bLedOn.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %567 = ptrtoint ptr %bLedOn.i.i to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 0, ptr %bLedOn.i.i, align 4
  br label %SwLedOff.exit.i

SwLedOff.exit.i:                                  ; preds = %sw.epilog.i.i, %lor.lhs.false.i.i.SwLedOff.exit.i_crit_edge
  %568 = ptrtoint ptr %surprise_removed.i.i to i32
  call void @__asan_load1_noabort(i32 %568)
  %.pr.i = load i8, ptr %surprise_removed.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.not.i607.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i607.i, label %lor.lhs.false.i610.i, label %SwLedOff.exit.i.cleanup_crit_edge

SwLedOff.exit.i.cleanup_crit_edge:                ; preds = %SwLedOff.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.i610.i:                             ; preds = %SwLedOff.exit.i
  %569 = ptrtoint ptr %driver_stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %driver_stopped.i.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %570)
  %tobool1.not.i609.i = icmp eq i8 %570, 0
  br i1 %tobool1.not.i609.i, label %if.end.i613.i, label %lor.lhs.false.i610.i.cleanup_crit_edge

lor.lhs.false.i610.i.cleanup_crit_edge:           ; preds = %lor.lhs.false.i610.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i613.i:                                    ; preds = %lor.lhs.false.i610.i
  %call.i611.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861042) #2
  %LedPin.i612.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 1
  %571 = ptrtoint ptr %LedPin.i612.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %LedPin.i612.i, align 4
  %573 = zext i32 %572 to i64
  call void @__sanitizer_cov_trace_switch(i64 %573, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %572, label %if.end.i613.i.sw.epilog.i619.i_crit_edge [
    i32 2, label %sw.bb5.i614.i
    i32 1, label %if.end.i613.i.sw.epilog.sink.split.i617.i_crit_edge
  ]

if.end.i613.i.sw.epilog.sink.split.i617.i_crit_edge: ; preds = %if.end.i613.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i617.i

if.end.i613.i.sw.epilog.i619.i_crit_edge:         ; preds = %if.end.i613.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i619.i

sw.bb5.i614.i:                                    ; preds = %if.end.i613.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i617.i

sw.epilog.sink.split.i617.i:                      ; preds = %sw.bb5.i614.i, %if.end.i613.i.sw.epilog.sink.split.i617.i_crit_edge
  %.sink.i615.i = phi i8 [ 15, %sw.bb5.i614.i ], [ -16, %if.end.i613.i.sw.epilog.sink.split.i617.i_crit_edge ]
  %.sink21.i616.i = phi i8 [ -128, %sw.bb5.i614.i ], [ 8, %if.end.i613.i.sw.epilog.sink.split.i617.i_crit_edge ]
  %574 = and i8 %.sink.i615.i, %call.i611.i
  %575 = or i8 %574, %.sink21.i616.i
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861042, i8 noundef zeroext %575) #2
  br label %sw.epilog.i619.i

sw.epilog.i619.i:                                 ; preds = %sw.epilog.sink.split.i617.i, %if.end.i613.i.sw.epilog.i619.i_crit_edge
  %bLedOn.i618.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 3
  %576 = ptrtoint ptr %bLedOn.i618.i to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 0, ptr %bLedOn.i618.i, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %ledpriv1.i130 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14
  %CustomerID.i131 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 12, i32 11
  %577 = ptrtoint ptr %CustomerID.i131 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %CustomerID.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %578)
  %cmp.i132 = icmp eq i32 %578, 6
  %SwLed1.i133 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1
  %spec.select.i134 = select i1 %cmp.i132, ptr %SwLed1.i133, ptr %ledpriv1.i130
  %579 = zext i32 %LedAction to i64
  call void @__sanitizer_cov_trace_switch(i64 %579, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %LedAction, label %sw.bb5.cleanup_crit_edge [
    i32 1, label %sw.bb5.sw.bb.i136_crit_edge
    i32 3, label %sw.bb5.sw.bb.i136_crit_edge243
    i32 2, label %sw.bb5.sw.bb.i136_crit_edge244
    i32 6, label %sw.bb7.i
    i32 4, label %sw.bb5.sw.bb34.i_crit_edge
    i32 5, label %sw.bb5.sw.bb34.i_crit_edge245
    i32 7, label %sw.bb58.i
  ]

sw.bb5.sw.bb34.i_crit_edge245:                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb34.i

sw.bb5.sw.bb34.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb34.i

sw.bb5.sw.bb.i136_crit_edge244:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i136

sw.bb5.sw.bb.i136_crit_edge243:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i136

sw.bb5.sw.bb.i136_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i136

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i136:                                       ; preds = %sw.bb5.sw.bb.i136_crit_edge, %sw.bb5.sw.bb.i136_crit_edge243, %sw.bb5.sw.bb.i136_crit_edge244
  %CurrLedState.i135 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 2
  %580 = ptrtoint ptr %CurrLedState.i135 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %CurrLedState.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %581)
  %cmp2.i = icmp eq i32 %581, 6
  br i1 %cmp2.i, label %sw.bb.i136.cleanup_crit_edge, label %if.end4.i

sw.bb.i136.cleanup_crit_edge:                     ; preds = %sw.bb.i136
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4.i:                                        ; preds = %sw.bb.i136
  call void @__sanitizer_cov_trace_pc() #4
  %582 = ptrtoint ptr %CurrLedState.i135 to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 1, ptr %CurrLedState.i135, align 4
  %BlinkingLedState.i137 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 12
  %583 = ptrtoint ptr %BlinkingLedState.i137 to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 1, ptr %BlinkingLedState.i137, align 4
  %bLedBlinkInProgress.i138 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 5
  %584 = ptrtoint ptr %bLedBlinkInProgress.i138 to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 0, ptr %bLedBlinkInProgress.i138, align 2
  %BlinkTimer.i139 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %585 = load volatile i32, ptr @jiffies, align 128
  %call6.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer.i139, i32 noundef %585) #2
  br label %cleanup

sw.bb7.i:                                         ; preds = %sw.bb5
  %traffic_busy.i140 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14, i32 2
  %586 = ptrtoint ptr %traffic_busy.i140 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %traffic_busy.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %587)
  %tobool.not.i141 = icmp eq i32 %587, 0
  br i1 %tobool.not.i141, label %sw.bb7.i.if.else.i146_crit_edge, label %land.lhs.true.i144

sw.bb7.i.if.else.i146_crit_edge:                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i146

land.lhs.true.i144:                               ; preds = %sw.bb7.i
  %fw_state.i.i142 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %588 = ptrtoint ptr %fw_state.i.i142 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %fw_state.i.i142, align 8
  %590 = and i32 %589, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %590)
  %tobool9.not.i143 = icmp eq i32 %590, 0
  br i1 %tobool9.not.i143, label %land.lhs.true.i144.if.else.i146_crit_edge, label %land.lhs.true.i144.cleanup_crit_edge

land.lhs.true.i144.cleanup_crit_edge:             ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i144.if.else.i146_crit_edge:        ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i146

if.else.i146:                                     ; preds = %land.lhs.true.i144.if.else.i146_crit_edge, %sw.bb7.i.if.else.i146_crit_edge
  %bLedScanBlinkInProgress.i145 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 9
  %591 = ptrtoint ptr %bLedScanBlinkInProgress.i145 to i32
  call void @__asan_load1_noabort(i32 %591)
  %592 = load i8, ptr %bLedScanBlinkInProgress.i145, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %592)
  %tobool11.not.i = icmp eq i8 %592, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else.i146.cleanup_crit_edge

if.else.i146.cleanup_crit_edge:                   ; preds = %if.else.i146
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then12.i:                                      ; preds = %if.else.i146
  %bLedBlinkInProgress13.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 5
  %593 = ptrtoint ptr %bLedBlinkInProgress13.i to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %bLedBlinkInProgress13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %594)
  %tobool14.not.i = icmp eq i8 %594, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end19.i_crit_edge, label %if.then15.i

if.then12.i.if.end19.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer16.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 13
  %call17.i = tail call i32 @del_timer(ptr noundef %BlinkTimer16.i) #2
  %595 = ptrtoint ptr %bLedBlinkInProgress13.i to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 0, ptr %bLedBlinkInProgress13.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.then12.i.if.end19.i_crit_edge
  %596 = ptrtoint ptr %bLedScanBlinkInProgress.i145 to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 1, ptr %bLedScanBlinkInProgress.i145, align 2
  %CurrLedState21.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 2
  %597 = ptrtoint ptr %CurrLedState21.i to i32
  call void @__asan_store4_noabort(i32 %597)
  store i32 6, ptr %CurrLedState21.i, align 4
  %BlinkTimes.i147 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 11
  %598 = ptrtoint ptr %BlinkTimes.i147 to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 24, ptr %BlinkTimes.i147, align 4
  %bLedOn.i148 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 3
  %599 = ptrtoint ptr %bLedOn.i148 to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %bLedOn.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %600)
  %tobool22.not.i149 = icmp eq i8 %600, 0
  %spec.select106.i = select i1 %tobool22.not.i149, i32 1, i32 2
  %601 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 12
  %602 = ptrtoint ptr %601 to i32
  call void @__asan_store4_noabort(i32 %602)
  store i32 %spec.select106.i, ptr %601, align 4
  %BlinkTimer28.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %603 = load volatile i32, ptr @jiffies, align 128
  %add30.i = add i32 %603, 18
  %call31.i150 = tail call i32 @mod_timer(ptr noundef %BlinkTimer28.i, i32 noundef %add30.i) #2
  br label %cleanup

sw.bb34.i:                                        ; preds = %sw.bb5.sw.bb34.i_crit_edge, %sw.bb5.sw.bb34.i_crit_edge245
  %bLedBlinkInProgress35.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 5
  %604 = ptrtoint ptr %bLedBlinkInProgress35.i to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %bLedBlinkInProgress35.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %605)
  %tobool36.not.i = icmp eq i8 %605, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %sw.bb34.i.cleanup_crit_edge

sw.bb34.i.cleanup_crit_edge:                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then37.i:                                      ; preds = %sw.bb34.i
  %CurrLedState38.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 2
  %606 = ptrtoint ptr %CurrLedState38.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %CurrLedState38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %607)
  %cmp39.i = icmp eq i32 %607, 6
  br i1 %cmp39.i, label %if.then37.i.cleanup_crit_edge, label %if.end42.i

if.then37.i.cleanup_crit_edge:                    ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end42.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #4
  %608 = ptrtoint ptr %bLedBlinkInProgress35.i to i32
  call void @__asan_store1_noabort(i32 %608)
  store i8 1, ptr %bLedBlinkInProgress35.i, align 2
  %609 = ptrtoint ptr %CurrLedState38.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 10, ptr %CurrLedState38.i, align 4
  %BlinkTimes45.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 11
  %610 = ptrtoint ptr %BlinkTimes45.i to i32
  call void @__asan_store4_noabort(i32 %610)
  store i32 2, ptr %BlinkTimes45.i, align 4
  %bLedOn46.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 3
  %611 = ptrtoint ptr %bLedOn46.i to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %bLedOn46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %612)
  %tobool47.not.i = icmp eq i8 %612, 0
  %spec.select107.i = select i1 %tobool47.not.i, i32 1, i32 2
  %613 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 12
  %614 = ptrtoint ptr %613 to i32
  call void @__asan_store4_noabort(i32 %614)
  store i32 %spec.select107.i, ptr %613, align 4
  %BlinkTimer53.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %615 = load volatile i32, ptr @jiffies, align 128
  %add55.i = add i32 %615, 5
  %call56.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer53.i, i32 noundef %add55.i) #2
  br label %cleanup

sw.bb58.i:                                        ; preds = %sw.bb5
  %CurrLedState59.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 2
  %616 = ptrtoint ptr %CurrLedState59.i to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 2, ptr %CurrLedState59.i, align 4
  %BlinkingLedState60.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 12
  %617 = ptrtoint ptr %BlinkingLedState60.i to i32
  call void @__asan_store4_noabort(i32 %617)
  store i32 2, ptr %BlinkingLedState60.i, align 4
  %bLedBlinkInProgress61.i151 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 5
  %618 = ptrtoint ptr %bLedBlinkInProgress61.i151 to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %bLedBlinkInProgress61.i151, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %619)
  %tobool62.not.i152 = icmp eq i8 %619, 0
  br i1 %tobool62.not.i152, label %sw.bb58.i.if.end67.i158_crit_edge, label %if.then63.i155

sw.bb58.i.if.end67.i158_crit_edge:                ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end67.i158

if.then63.i155:                                   ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer64.i153 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 13
  %call65.i154 = tail call i32 @del_timer(ptr noundef %BlinkTimer64.i153) #2
  %620 = ptrtoint ptr %bLedBlinkInProgress61.i151 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 0, ptr %bLedBlinkInProgress61.i151, align 2
  br label %if.end67.i158

if.end67.i158:                                    ; preds = %if.then63.i155, %sw.bb58.i.if.end67.i158_crit_edge
  %surprise_removed.i.i156 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %621 = ptrtoint ptr %surprise_removed.i.i156 to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %surprise_removed.i.i156, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %622)
  %tobool.not.i.i157 = icmp eq i8 %622, 0
  br i1 %tobool.not.i.i157, label %lor.lhs.false.i.i161, label %if.end67.i158.cleanup_crit_edge

if.end67.i158.cleanup_crit_edge:                  ; preds = %if.end67.i158
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.i.i161:                             ; preds = %if.end67.i158
  %driver_stopped.i.i159 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %623 = ptrtoint ptr %driver_stopped.i.i159 to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %driver_stopped.i.i159, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %624)
  %tobool1.not.i.i160 = icmp eq i8 %624, 0
  br i1 %tobool1.not.i.i160, label %if.end.i.i164, label %lor.lhs.false.i.i161.cleanup_crit_edge

lor.lhs.false.i.i161.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i161
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i.i164:                                    ; preds = %lor.lhs.false.i.i161
  %call.i.i162 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861042) #2
  %LedPin.i.i163 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 1
  %625 = ptrtoint ptr %LedPin.i.i163 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %LedPin.i.i163, align 4
  %627 = zext i32 %626 to i64
  call void @__sanitizer_cov_trace_switch(i64 %627, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %626, label %if.end.i.i164.sw.epilog.i.i170_crit_edge [
    i32 2, label %sw.bb5.i.i165
    i32 1, label %if.end.i.i164.sw.epilog.sink.split.i.i168_crit_edge
  ]

if.end.i.i164.sw.epilog.sink.split.i.i168_crit_edge: ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i168

if.end.i.i164.sw.epilog.i.i170_crit_edge:         ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i.i170

sw.bb5.i.i165:                                    ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i168

sw.epilog.sink.split.i.i168:                      ; preds = %sw.bb5.i.i165, %if.end.i.i164.sw.epilog.sink.split.i.i168_crit_edge
  %.sink.i.i166 = phi i8 [ 15, %sw.bb5.i.i165 ], [ -16, %if.end.i.i164.sw.epilog.sink.split.i.i168_crit_edge ]
  %.sink21.i.i167 = phi i8 [ -128, %sw.bb5.i.i165 ], [ 8, %if.end.i.i164.sw.epilog.sink.split.i.i168_crit_edge ]
  %628 = and i8 %.sink.i.i166, %call.i.i162
  %629 = or i8 %628, %.sink21.i.i167
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861042, i8 noundef zeroext %629) #2
  br label %sw.epilog.i.i170

sw.epilog.i.i170:                                 ; preds = %sw.epilog.sink.split.i.i168, %if.end.i.i164.sw.epilog.i.i170_crit_edge
  %bLedOn.i.i169 = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i134, i32 0, i32 3
  %630 = ptrtoint ptr %bLedOn.i.i169 to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 0, ptr %bLedOn.i.i169, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %631 = zext i32 %LedAction to i64
  call void @__sanitizer_cov_trace_switch(i64 %631, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %LedAction, label %sw.bb6.cleanup_crit_edge [
    i32 1, label %sw.bb6.sw.bb.i172_crit_edge
    i32 3, label %sw.bb6.sw.bb.i172_crit_edge246
    i32 2, label %sw.bb6.sw.bb.i172_crit_edge247
    i32 6, label %sw.bb6.sw.bb.i172_crit_edge248
    i32 4, label %sw.bb6.sw.bb7.i181_crit_edge
    i32 5, label %sw.bb6.sw.bb7.i181_crit_edge249
    i32 9, label %sw.bb6.sw.bb39.i_crit_edge
    i32 11, label %sw.bb6.sw.bb39.i_crit_edge250
    i32 12, label %sw.bb6.sw.bb64.i192_crit_edge
    i32 10, label %sw.bb6.sw.bb64.i192_crit_edge251
    i32 7, label %sw.bb78.i
  ]

sw.bb6.sw.bb64.i192_crit_edge251:                 ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb64.i192

sw.bb6.sw.bb64.i192_crit_edge:                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb64.i192

sw.bb6.sw.bb39.i_crit_edge250:                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb39.i

sw.bb6.sw.bb39.i_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb39.i

sw.bb6.sw.bb7.i181_crit_edge249:                  ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb7.i181

sw.bb6.sw.bb7.i181_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb7.i181

sw.bb6.sw.bb.i172_crit_edge248:                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i172

sw.bb6.sw.bb.i172_crit_edge247:                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i172

sw.bb6.sw.bb.i172_crit_edge246:                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i172

sw.bb6.sw.bb.i172_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i172

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i172:                                       ; preds = %sw.bb6.sw.bb.i172_crit_edge, %sw.bb6.sw.bb.i172_crit_edge246, %sw.bb6.sw.bb.i172_crit_edge247, %sw.bb6.sw.bb.i172_crit_edge248
  %CurrLedState.i171 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %632 = ptrtoint ptr %CurrLedState.i171 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %CurrLedState.i171, align 4
  %634 = zext i32 %633 to i64
  call void @__sanitizer_cov_trace_switch(i64 %634, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %633, label %lor.lhs.false4.i [
    i32 9, label %sw.bb.i172.cleanup_crit_edge
    i32 11, label %sw.bb.i172.cleanup_crit_edge252
  ]

sw.bb.i172.cleanup_crit_edge252:                  ; preds = %sw.bb.i172
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i172.cleanup_crit_edge:                     ; preds = %sw.bb.i172
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false4.i:                                 ; preds = %sw.bb.i172
  %bLedWPSBlinkInProgress.i173 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %635 = ptrtoint ptr %bLedWPSBlinkInProgress.i173 to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %bLedWPSBlinkInProgress.i173, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %636)
  %tobool.not.i174 = icmp eq i8 %636, 0
  br i1 %tobool.not.i174, label %if.end.i179, label %lor.lhs.false4.i.cleanup_crit_edge

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i179:                                      ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #4
  %637 = ptrtoint ptr %CurrLedState.i171 to i32
  call void @__asan_store4_noabort(i32 %637)
  store i32 1, ptr %CurrLedState.i171, align 4
  %BlinkingLedState.i175 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %638 = ptrtoint ptr %BlinkingLedState.i175 to i32
  call void @__asan_store4_noabort(i32 %638)
  store i32 1, ptr %BlinkingLedState.i175, align 4
  %bLedBlinkInProgress.i176 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %639 = ptrtoint ptr %bLedBlinkInProgress.i176 to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 0, ptr %bLedBlinkInProgress.i176, align 2
  %BlinkTimer.i177 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %640 = load volatile i32, ptr @jiffies, align 128
  %call6.i178 = tail call i32 @mod_timer(ptr noundef %BlinkTimer.i177, i32 noundef %640) #2
  br label %cleanup

sw.bb7.i181:                                      ; preds = %sw.bb6.sw.bb7.i181_crit_edge, %sw.bb6.sw.bb7.i181_crit_edge249
  %bLedBlinkInProgress8.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %641 = ptrtoint ptr %bLedBlinkInProgress8.i to i32
  call void @__asan_load1_noabort(i32 %641)
  %642 = load i8, ptr %bLedBlinkInProgress8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %642)
  %tobool9.not.i180 = icmp eq i8 %642, 0
  br i1 %tobool9.not.i180, label %land.lhs.true.i183, label %sw.bb7.i181.cleanup_crit_edge

sw.bb7.i181.cleanup_crit_edge:                    ; preds = %sw.bb7.i181
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i183:                               ; preds = %sw.bb7.i181
  %fw_state.i.i182 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %643 = ptrtoint ptr %fw_state.i.i182 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load i32, ptr %fw_state.i.i182, align 8
  %645 = and i32 %644, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %645)
  %tobool12.not.i = icmp eq i32 %645, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i183.cleanup_crit_edge, label %if.then13.i

land.lhs.true.i183.cleanup_crit_edge:             ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then13.i:                                      ; preds = %land.lhs.true.i183
  %CurrLedState14.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %646 = ptrtoint ptr %CurrLedState14.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %CurrLedState14.i, align 4
  %648 = zext i32 %647 to i64
  call void @__sanitizer_cov_trace_switch(i64 %648, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %647, label %lor.lhs.false21.i [
    i32 9, label %if.then13.i.cleanup_crit_edge
    i32 11, label %if.then13.i.cleanup_crit_edge253
  ]

if.then13.i.cleanup_crit_edge253:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false21.i:                                ; preds = %if.then13.i
  %bLedWPSBlinkInProgress22.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %649 = ptrtoint ptr %bLedWPSBlinkInProgress22.i to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %bLedWPSBlinkInProgress22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %650)
  %tobool24.not.i = icmp eq i8 %650, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %lor.lhs.false21.i.cleanup_crit_edge

lor.lhs.false21.i.cleanup_crit_edge:              ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end26.i:                                       ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #4
  %651 = ptrtoint ptr %bLedBlinkInProgress8.i to i32
  call void @__asan_store1_noabort(i32 %651)
  store i8 1, ptr %bLedBlinkInProgress8.i, align 2
  %652 = ptrtoint ptr %CurrLedState14.i to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 10, ptr %CurrLedState14.i, align 4
  %BlinkTimes.i184 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 11
  %653 = ptrtoint ptr %BlinkTimes.i184 to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 2, ptr %BlinkTimes.i184, align 4
  %bLedOn.i185 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %654 = ptrtoint ptr %bLedOn.i185 to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %bLedOn.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %655)
  %tobool29.not.i = icmp eq i8 %655, 0
  %spec.select.i186 = select i1 %tobool29.not.i, i32 1, i32 2
  %656 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %657 = ptrtoint ptr %656 to i32
  call void @__asan_store4_noabort(i32 %657)
  store i32 %spec.select.i186, ptr %656, align 4
  %BlinkTimer34.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %658 = load volatile i32, ptr @jiffies, align 128
  %add36.i = add i32 %658, 5
  %call37.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer34.i, i32 noundef %add36.i) #2
  br label %cleanup

sw.bb39.i:                                        ; preds = %sw.bb6.sw.bb39.i_crit_edge, %sw.bb6.sw.bb39.i_crit_edge250
  %bLedWPSBlinkInProgress40.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %659 = ptrtoint ptr %bLedWPSBlinkInProgress40.i to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %bLedWPSBlinkInProgress40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %660)
  %tobool41.not.i = icmp eq i8 %660, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %sw.bb39.i.cleanup_crit_edge

sw.bb39.i.cleanup_crit_edge:                      ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then42.i:                                      ; preds = %sw.bb39.i
  %bLedBlinkInProgress43.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %661 = ptrtoint ptr %bLedBlinkInProgress43.i to i32
  call void @__asan_load1_noabort(i32 %661)
  %662 = load i8, ptr %bLedBlinkInProgress43.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %662)
  %tobool44.not.i = icmp eq i8 %662, 0
  br i1 %tobool44.not.i, label %if.then42.i.if.end49.i_crit_edge, label %if.then45.i

if.then42.i.if.end49.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer46.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call47.i = tail call i32 @del_timer(ptr noundef %BlinkTimer46.i) #2
  %663 = ptrtoint ptr %bLedBlinkInProgress43.i to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 0, ptr %bLedBlinkInProgress43.i, align 2
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i, %if.then42.i.if.end49.i_crit_edge
  %664 = ptrtoint ptr %bLedWPSBlinkInProgress40.i to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 1, ptr %bLedWPSBlinkInProgress40.i, align 1
  %CurrLedState51.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %665 = ptrtoint ptr %CurrLedState51.i to i32
  call void @__asan_store4_noabort(i32 %665)
  store i32 9, ptr %CurrLedState51.i, align 4
  %bLedOn52.i187 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %666 = ptrtoint ptr %bLedOn52.i187 to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %bLedOn52.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %667)
  %tobool53.not.i188 = icmp eq i8 %667, 0
  %spec.select143.i = select i1 %tobool53.not.i188, i32 1, i32 2
  %668 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %669 = ptrtoint ptr %668 to i32
  call void @__asan_store4_noabort(i32 %669)
  store i32 %spec.select143.i, ptr %668, align 4
  %BlinkTimer59.i189 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %670 = load volatile i32, ptr @jiffies, align 128
  %add61.i190 = add i32 %670, 18
  %call62.i191 = tail call i32 @mod_timer(ptr noundef %BlinkTimer59.i189, i32 noundef %add61.i190) #2
  br label %cleanup

sw.bb64.i192:                                     ; preds = %sw.bb6.sw.bb64.i192_crit_edge, %sw.bb6.sw.bb64.i192_crit_edge251
  %bLedWPSBlinkInProgress65.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %671 = ptrtoint ptr %bLedWPSBlinkInProgress65.i to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %bLedWPSBlinkInProgress65.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %672)
  %tobool66.not.i = icmp eq i8 %672, 0
  br i1 %tobool66.not.i, label %sw.bb64.i192.if.end71.i_crit_edge, label %if.then67.i

sw.bb64.i192.if.end71.i_crit_edge:                ; preds = %sw.bb64.i192
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end71.i

if.then67.i:                                      ; preds = %sw.bb64.i192
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer68.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call69.i193 = tail call i32 @del_timer(ptr noundef %BlinkTimer68.i) #2
  %673 = ptrtoint ptr %bLedWPSBlinkInProgress65.i to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 0, ptr %bLedWPSBlinkInProgress65.i, align 1
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then67.i, %sw.bb64.i192.if.end71.i_crit_edge
  %CurrLedState72.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %674 = ptrtoint ptr %CurrLedState72.i to i32
  call void @__asan_store4_noabort(i32 %674)
  store i32 1, ptr %CurrLedState72.i, align 4
  %BlinkingLedState73.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %675 = ptrtoint ptr %BlinkingLedState73.i to i32
  call void @__asan_store4_noabort(i32 %675)
  store i32 1, ptr %BlinkingLedState73.i, align 4
  %BlinkTimer74.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %676 = load volatile i32, ptr @jiffies, align 128
  %call77.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer74.i, i32 noundef %676) #2
  br label %cleanup

sw.bb78.i:                                        ; preds = %sw.bb6
  %CurrLedState79.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 2
  %677 = ptrtoint ptr %CurrLedState79.i to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 2, ptr %CurrLedState79.i, align 4
  %BlinkingLedState80.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 12
  %678 = ptrtoint ptr %BlinkingLedState80.i to i32
  call void @__asan_store4_noabort(i32 %678)
  store i32 2, ptr %BlinkingLedState80.i, align 4
  %bLedBlinkInProgress81.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %679 = ptrtoint ptr %bLedBlinkInProgress81.i to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %bLedBlinkInProgress81.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %680)
  %tobool82.not.i = icmp eq i8 %680, 0
  br i1 %tobool82.not.i, label %sw.bb78.i.if.end87.i_crit_edge, label %if.then83.i

sw.bb78.i.if.end87.i_crit_edge:                   ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end87.i

if.then83.i:                                      ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer84.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call85.i = tail call i32 @del_timer(ptr noundef %BlinkTimer84.i) #2
  %681 = ptrtoint ptr %bLedBlinkInProgress81.i to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 0, ptr %bLedBlinkInProgress81.i, align 2
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then83.i, %sw.bb78.i.if.end87.i_crit_edge
  %bLedWPSBlinkInProgress88.i194 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 10
  %682 = ptrtoint ptr %bLedWPSBlinkInProgress88.i194 to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %bLedWPSBlinkInProgress88.i194, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %683)
  %tobool89.not.i195 = icmp eq i8 %683, 0
  br i1 %tobool89.not.i195, label %if.end87.i.if.end94.i_crit_edge, label %if.then90.i196

if.end87.i.if.end94.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end94.i

if.then90.i196:                                   ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer91.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call92.i = tail call i32 @del_timer(ptr noundef %BlinkTimer91.i) #2
  %684 = ptrtoint ptr %bLedWPSBlinkInProgress88.i194 to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 0, ptr %bLedWPSBlinkInProgress88.i194, align 1
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then90.i196, %if.end87.i.if.end94.i_crit_edge
  %surprise_removed.i.i197 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %685 = ptrtoint ptr %surprise_removed.i.i197 to i32
  call void @__asan_load1_noabort(i32 %685)
  %686 = load i8, ptr %surprise_removed.i.i197, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %686)
  %tobool.not.i.i198 = icmp eq i8 %686, 0
  br i1 %tobool.not.i.i198, label %lor.lhs.false.i.i201, label %if.end94.i.cleanup_crit_edge

if.end94.i.cleanup_crit_edge:                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.i.i201:                             ; preds = %if.end94.i
  %driver_stopped.i.i199 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %687 = ptrtoint ptr %driver_stopped.i.i199 to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %driver_stopped.i.i199, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %688)
  %tobool1.not.i.i200 = icmp eq i8 %688, 0
  br i1 %tobool1.not.i.i200, label %if.end.i.i204, label %lor.lhs.false.i.i201.cleanup_crit_edge

lor.lhs.false.i.i201.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i201
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i.i204:                                    ; preds = %lor.lhs.false.i.i201
  %call.i.i202 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861042) #2
  %LedPin.i.i203 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 1
  %689 = ptrtoint ptr %LedPin.i.i203 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %LedPin.i.i203, align 4
  %691 = zext i32 %690 to i64
  call void @__sanitizer_cov_trace_switch(i64 %691, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %690, label %if.end.i.i204.sw.epilog.i.i210_crit_edge [
    i32 2, label %sw.bb5.i.i205
    i32 1, label %if.end.i.i204.sw.epilog.sink.split.i.i208_crit_edge
  ]

if.end.i.i204.sw.epilog.sink.split.i.i208_crit_edge: ; preds = %if.end.i.i204
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i208

if.end.i.i204.sw.epilog.i.i210_crit_edge:         ; preds = %if.end.i.i204
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i.i210

sw.bb5.i.i205:                                    ; preds = %if.end.i.i204
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i208

sw.epilog.sink.split.i.i208:                      ; preds = %sw.bb5.i.i205, %if.end.i.i204.sw.epilog.sink.split.i.i208_crit_edge
  %.sink.i.i206 = phi i8 [ 15, %sw.bb5.i.i205 ], [ -16, %if.end.i.i204.sw.epilog.sink.split.i.i208_crit_edge ]
  %.sink21.i.i207 = phi i8 [ -128, %sw.bb5.i.i205 ], [ 8, %if.end.i.i204.sw.epilog.sink.split.i.i208_crit_edge ]
  %692 = and i8 %.sink.i.i206, %call.i.i202
  %693 = or i8 %692, %.sink21.i.i207
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861042, i8 noundef zeroext %693) #2
  br label %sw.epilog.i.i210

sw.epilog.i.i210:                                 ; preds = %sw.epilog.sink.split.i.i208, %if.end.i.i204.sw.epilog.i.i210_crit_edge
  %bLedOn.i.i209 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 3
  %694 = ptrtoint ptr %bLedOn.i.i209 to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 0, ptr %bLedOn.i.i209, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i.i210, %lor.lhs.false.i.i201.cleanup_crit_edge, %if.end94.i.cleanup_crit_edge, %if.end71.i, %if.end49.i, %sw.bb39.i.cleanup_crit_edge, %if.end26.i, %lor.lhs.false21.i.cleanup_crit_edge, %if.then13.i.cleanup_crit_edge, %if.then13.i.cleanup_crit_edge253, %land.lhs.true.i183.cleanup_crit_edge, %sw.bb7.i181.cleanup_crit_edge, %if.end.i179, %lor.lhs.false4.i.cleanup_crit_edge, %sw.bb.i172.cleanup_crit_edge, %sw.bb.i172.cleanup_crit_edge252, %sw.bb6.cleanup_crit_edge, %sw.epilog.i.i170, %lor.lhs.false.i.i161.cleanup_crit_edge, %if.end67.i158.cleanup_crit_edge, %if.end42.i, %if.then37.i.cleanup_crit_edge, %sw.bb34.i.cleanup_crit_edge, %if.end19.i, %if.else.i146.cleanup_crit_edge, %land.lhs.true.i144.cleanup_crit_edge, %if.end4.i, %sw.bb.i136.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.epilog.i619.i, %lor.lhs.false.i610.i.cleanup_crit_edge, %SwLedOff.exit.i.cleanup_crit_edge, %if.end422.i.cleanup_crit_edge, %if.end358.i, %if.end317.i, %if.end275.i, %if.else260.i, %if.then254.i, %if.end225.i.cleanup_crit_edge, %if.end192.i, %lor.lhs.false180.i.cleanup_crit_edge, %if.then168.i.cleanup_crit_edge, %if.then168.i.cleanup_crit_edge241, %if.then168.i.cleanup_crit_edge242, %sw.bb165.i.cleanup_crit_edge, %if.end149.i, %lor.lhs.false130.i.cleanup_crit_edge, %if.then122.i.cleanup_crit_edge, %if.then122.i.cleanup_crit_edge240, %if.else120.i.cleanup_crit_edge, %land.lhs.true.i110.cleanup_crit_edge, %if.end99.i, %lor.lhs.false87.i.cleanup_crit_edge, %if.then75.i.cleanup_crit_edge, %if.then75.i.cleanup_crit_edge238, %if.then75.i.cleanup_crit_edge239, %if.end72.i.cleanup_crit_edge, %if.else.i102, %if.then38.i, %lor.lhs.false17.i.cleanup_crit_edge, %if.then10.i98.cleanup_crit_edge, %if.then10.i98.cleanup_crit_edge236, %if.then10.i98.cleanup_crit_edge237, %if.end8.i.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.end209.i, %if.then178.i, %lor.lhs.false174.i.cleanup_crit_edge, %sw.bb170.i.cleanup_crit_edge, %if.end163.i, %if.else149.i, %if.then143.i88, %if.end115.i, %sw.bb98.i.cleanup_crit_edge, %if.end93.i, %lor.lhs.false72.i.cleanup_crit_edge, %sw.bb64.i81.cleanup_crit_edge, %sw.bb64.i81.cleanup_crit_edge233, %if.end48.i79, %lor.lhs.false43.i72.cleanup_crit_edge, %if.then31.i69.cleanup_crit_edge, %if.then31.i69.cleanup_crit_edge231, %if.then31.i69.cleanup_crit_edge232, %land.lhs.true.i67.cleanup_crit_edge, %sw.bb25.i64.cleanup_crit_edge, %if.end12.i61, %lor.lhs.false6.i47.cleanup_crit_edge, %if.then3.i44.cleanup_crit_edge, %if.then3.i44.cleanup_crit_edge230, %if.else.i42.cleanup_crit_edge, %sw.bb.i39.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end166.i, %if.then135.i, %lor.lhs.false131.i.cleanup_crit_edge, %sw.bb127.i.cleanup_crit_edge, %sw.bb119.i, %sw.bb111.i, %if.end102.i, %sw.bb85.i.cleanup_crit_edge, %if.end80.i, %if.end48.i, %lor.lhs.false43.i.cleanup_crit_edge, %if.then31.i.cleanup_crit_edge, %if.then31.i.cleanup_crit_edge225, %if.then31.i.cleanup_crit_edge226, %land.lhs.true.i34.cleanup_crit_edge, %sw.bb25.i.cleanup_crit_edge, %if.end12.i32, %lor.lhs.false6.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge224, %if.else.i.cleanup_crit_edge, %sw.bb.i21.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end347.i, %if.end296.i, %if.else282.i, %if.then276.i, %if.end221.i, %sw.bb190.i.cleanup_crit_edge, %if.end174.i, %lor.lhs.false155.i.cleanup_crit_edge, %if.then143.i.cleanup_crit_edge, %if.then143.i.cleanup_crit_edge219, %if.then143.i.cleanup_crit_edge220, %sw.bb140.i.cleanup_crit_edge, %if.end124.i, %lor.lhs.false98.i.cleanup_crit_edge, %if.then90.i.cleanup_crit_edge, %if.then90.i.cleanup_crit_edge218, %if.else88.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end67.i, %lor.lhs.false48.i.cleanup_crit_edge, %if.then36.i.cleanup_crit_edge, %if.then36.i.cleanup_crit_edge216, %if.then36.i.cleanup_crit_edge217, %sw.bb33.i.cleanup_crit_edge, %if.end22.i, %lor.lhs.false9.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge214, %if.then2.i.cleanup_crit_edge215, %sw.bb.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_DeInitSwLeds(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %BlinkTimer.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 13
  %call.i = tail call i32 @del_timer_sync(ptr noundef %BlinkTimer.i) #2
  %bLedBlinkInProgress.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 5
  %0 = ptrtoint ptr %bLedBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bLedBlinkInProgress.i, align 2
  %BlinkTimer.i3 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 13
  %call.i4 = tail call i32 @del_timer_sync(ptr noundef %BlinkTimer.i3) #2
  %bLedBlinkInProgress.i5 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 5
  %1 = ptrtoint ptr %bLedBlinkInProgress.i5 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bLedBlinkInProgress.i5, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_flush_led_works(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %BlinkWorkItem = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 0, i32 14
  %call = tail call zeroext i1 @flush_work(ptr noundef %BlinkWorkItem) #2
  %BlinkWorkItem1 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 14, i32 1, i32 14
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %BlinkWorkItem1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @BlinkTimerCallback(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surprise_removed, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %driver_stopped, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkWorkItem = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %BlinkWorkItem) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @BlinkWorkItemCallback(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %LedStrategy = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %LedStrategy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %LedStrategy, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @SwLedBlink(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %SwLed1.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1
  %CustomerID.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 12, i32 11
  %5 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %CustomerID.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp.i = icmp eq i32 %6, 6
  %spec.select.i = select i1 %cmp.i, ptr %SwLed1.i, ptr %add.ptr
  %BlinkingLedState.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 12
  %7 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %BlinkingLedState.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp4.i = icmp eq i32 %8, 1
  %surprise_removed.i.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %surprise_removed.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %surprise_removed.i.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %sw.bb2
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then5.i.if.end6.i_crit_edge

if.then5.i.if.end6.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

lor.lhs.false.i.i:                                ; preds = %if.then5.i
  %driver_stopped.i.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %driver_stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %driver_stopped.i.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.end6.i_crit_edge

lor.lhs.false.i.i.if.end6.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call.i.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 1
  %13 = ptrtoint ptr %LedPin.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %LedPin.i.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %14, label %if.end.i.i.if.end6.sink.split.i_crit_edge [
    i32 2, label %sw.bb3.i.i
    i32 1, label %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge
  ]

if.end.i.i.sw.epilog.sink.split.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i

if.end.i.i.if.end6.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.sink.split.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb3.i.i, %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink13.i.i = phi i8 [ 15, %sw.bb3.i.i ], [ -16, %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %16 = and i8 %.sink13.i.i, %call.i.i
  br label %if.end6.sink.split.sink.split.i

if.else.i:                                        ; preds = %sw.bb2
  br i1 %tobool.not.i.i, label %lor.lhs.false.i314.i, label %if.else.i.if.end6.i_crit_edge

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

lor.lhs.false.i314.i:                             ; preds = %if.else.i
  %driver_stopped.i312.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %driver_stopped.i312.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %driver_stopped.i312.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i313.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i313.i, label %if.end.i317.i, label %lor.lhs.false.i314.i.if.end6.i_crit_edge

lor.lhs.false.i314.i.if.end6.i_crit_edge:         ; preds = %lor.lhs.false.i314.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

if.end.i317.i:                                    ; preds = %lor.lhs.false.i314.i
  %call.i315.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i316.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 1
  %19 = ptrtoint ptr %LedPin.i316.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %LedPin.i316.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %20, label %if.end.i317.i.if.end6.sink.split.i_crit_edge [
    i32 2, label %sw.bb5.i.i
    i32 1, label %if.end.i317.i.sw.epilog.sink.split.i318.i_crit_edge
  ]

if.end.i317.i.sw.epilog.sink.split.i318.i_crit_edge: ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i318.i

if.end.i317.i.if.end6.sink.split.i_crit_edge:     ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.sink.split.i

sw.bb5.i.i:                                       ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i318.i

sw.epilog.sink.split.i318.i:                      ; preds = %sw.bb5.i.i, %if.end.i317.i.sw.epilog.sink.split.i318.i_crit_edge
  %.sink.i.i = phi i8 [ 15, %sw.bb5.i.i ], [ -16, %if.end.i317.i.sw.epilog.sink.split.i318.i_crit_edge ]
  %.sink21.i.i = phi i8 [ -128, %sw.bb5.i.i ], [ 8, %if.end.i317.i.sw.epilog.sink.split.i318.i_crit_edge ]
  %22 = and i8 %.sink.i.i, %call.i315.i
  %23 = or i8 %22, %.sink21.i.i
  br label %if.end6.sink.split.sink.split.i

if.end6.sink.split.sink.split.i:                  ; preds = %sw.epilog.sink.split.i318.i, %sw.epilog.sink.split.i.i
  %.sink394.i = phi i8 [ %23, %sw.epilog.sink.split.i318.i ], [ %16, %sw.epilog.sink.split.i.i ]
  %.sink.ph.i = phi i8 [ 0, %sw.epilog.sink.split.i318.i ], [ 1, %sw.epilog.sink.split.i.i ]
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %.sink394.i) #2
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.end6.sink.split.sink.split.i, %if.end.i317.i.if.end6.sink.split.i_crit_edge, %if.end.i.i.if.end6.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.end.i.i.if.end6.sink.split.i_crit_edge ], [ 0, %if.end.i317.i.if.end6.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end6.sink.split.sink.split.i ]
  %bLedOn.i319.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %24 = ptrtoint ptr %bLedOn.i319.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink.i, ptr %bLedOn.i319.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.sink.split.i, %lor.lhs.false.i314.i.if.end6.i_crit_edge, %if.else.i.if.end6.i_crit_edge, %lor.lhs.false.i.i.if.end6.i_crit_edge, %if.then5.i.if.end6.i_crit_edge
  %25 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %CustomerID.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.i = icmp eq i32 %26, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end6.i.if.end31.i_crit_edge

if.end6.i.if.end31.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end31.i

if.then9.i:                                       ; preds = %if.end6.i
  %fw_state.i.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_state.i.i, align 8
  %29 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  %bSWLedCtrl20.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 4
  %30 = ptrtoint ptr %bSWLedCtrl20.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bSWLedCtrl20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool21.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.else19.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then9.i
  br i1 %tobool21.not.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %if.then10.i
  %32 = ptrtoint ptr %surprise_removed.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %surprise_removed.i.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i322.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i322.i, label %lor.lhs.false.i325.i, label %if.then12.i.SwLedOn.exit334.i_crit_edge

if.then12.i.SwLedOn.exit334.i_crit_edge:          ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %SwLedOn.exit334.i

lor.lhs.false.i325.i:                             ; preds = %if.then12.i
  %driver_stopped.i323.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %driver_stopped.i323.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %driver_stopped.i323.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool1.not.i324.i = icmp eq i8 %35, 0
  br i1 %tobool1.not.i324.i, label %if.end.i328.i, label %lor.lhs.false.i325.i.SwLedOn.exit334.i_crit_edge

lor.lhs.false.i325.i.SwLedOn.exit334.i_crit_edge: ; preds = %lor.lhs.false.i325.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %SwLedOn.exit334.i

if.end.i328.i:                                    ; preds = %lor.lhs.false.i325.i
  %call.i326.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i327.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 1
  %36 = ptrtoint ptr %LedPin.i327.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %LedPin.i327.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %37, label %if.end.i328.i.sw.epilog.i333.i_crit_edge [
    i32 2, label %sw.bb3.i329.i
    i32 1, label %if.end.i328.i.sw.epilog.sink.split.i331.i_crit_edge
  ]

if.end.i328.i.sw.epilog.sink.split.i331.i_crit_edge: ; preds = %if.end.i328.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i331.i

if.end.i328.i.sw.epilog.i333.i_crit_edge:         ; preds = %if.end.i328.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i333.i

sw.bb3.i329.i:                                    ; preds = %if.end.i328.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i331.i

sw.epilog.sink.split.i331.i:                      ; preds = %sw.bb3.i329.i, %if.end.i328.i.sw.epilog.sink.split.i331.i_crit_edge
  %.sink13.i330.i = phi i8 [ 15, %sw.bb3.i329.i ], [ -16, %if.end.i328.i.sw.epilog.sink.split.i331.i_crit_edge ]
  %39 = and i8 %.sink13.i330.i, %call.i326.i
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %39) #2
  br label %sw.epilog.i333.i

sw.epilog.i333.i:                                 ; preds = %sw.epilog.sink.split.i331.i, %if.end.i328.i.sw.epilog.i333.i_crit_edge
  %bLedOn.i332.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 3
  %40 = ptrtoint ptr %bLedOn.i332.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %bLedOn.i332.i, align 4
  br label %SwLedOn.exit334.i

SwLedOn.exit334.i:                                ; preds = %sw.epilog.i333.i, %lor.lhs.false.i325.i.SwLedOn.exit334.i_crit_edge, %if.then12.i.SwLedOn.exit334.i_crit_edge
  %41 = ptrtoint ptr %bSWLedCtrl20.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %bSWLedCtrl20.i, align 1
  br label %if.end31.i

if.else14.i:                                      ; preds = %if.then10.i
  %bLedOn.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 3
  %42 = ptrtoint ptr %bLedOn.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bLedOn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool15.not.i = icmp eq i8 %43, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.else14.i.if.end31.i_crit_edge

if.else14.i.if.end31.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end31.i

if.then16.i:                                      ; preds = %if.else14.i
  %44 = ptrtoint ptr %surprise_removed.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %surprise_removed.i.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i336.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i336.i, label %lor.lhs.false.i339.i, label %if.then16.i.if.end31.i_crit_edge

if.then16.i.if.end31.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end31.i

lor.lhs.false.i339.i:                             ; preds = %if.then16.i
  %driver_stopped.i337.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %46 = ptrtoint ptr %driver_stopped.i337.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %driver_stopped.i337.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool1.not.i338.i = icmp eq i8 %47, 0
  br i1 %tobool1.not.i338.i, label %if.end.i342.i, label %lor.lhs.false.i339.i.if.end31.i_crit_edge

lor.lhs.false.i339.i.if.end31.i_crit_edge:        ; preds = %lor.lhs.false.i339.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end31.i

if.end.i342.i:                                    ; preds = %lor.lhs.false.i339.i
  %call.i340.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i341.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 1
  %48 = ptrtoint ptr %LedPin.i341.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %LedPin.i341.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %49, label %if.end.i342.i.sw.epilog.i347.i_crit_edge [
    i32 2, label %sw.bb3.i343.i
    i32 1, label %if.end.i342.i.sw.epilog.sink.split.i345.i_crit_edge
  ]

if.end.i342.i.sw.epilog.sink.split.i345.i_crit_edge: ; preds = %if.end.i342.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i345.i

if.end.i342.i.sw.epilog.i347.i_crit_edge:         ; preds = %if.end.i342.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i347.i

sw.bb3.i343.i:                                    ; preds = %if.end.i342.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i345.i

sw.epilog.sink.split.i345.i:                      ; preds = %sw.bb3.i343.i, %if.end.i342.i.sw.epilog.sink.split.i345.i_crit_edge
  %.sink13.i344.i = phi i8 [ 15, %sw.bb3.i343.i ], [ -16, %if.end.i342.i.sw.epilog.sink.split.i345.i_crit_edge ]
  %51 = and i8 %.sink13.i344.i, %call.i340.i
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %51) #2
  br label %sw.epilog.i347.i

sw.epilog.i347.i:                                 ; preds = %sw.epilog.sink.split.i345.i, %if.end.i342.i.sw.epilog.i347.i_crit_edge
  %52 = ptrtoint ptr %bLedOn.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %bLedOn.i, align 4
  br label %if.end31.i

if.else19.i:                                      ; preds = %if.then9.i
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else24.i

if.then22.i:                                      ; preds = %if.else19.i
  %53 = ptrtoint ptr %surprise_removed.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %surprise_removed.i.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i350.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i350.i, label %lor.lhs.false.i353.i, label %if.then22.i.SwLedOff.exit363.i_crit_edge

if.then22.i.SwLedOff.exit363.i_crit_edge:         ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %SwLedOff.exit363.i

lor.lhs.false.i353.i:                             ; preds = %if.then22.i
  %driver_stopped.i351.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %55 = ptrtoint ptr %driver_stopped.i351.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %driver_stopped.i351.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool1.not.i352.i = icmp eq i8 %56, 0
  br i1 %tobool1.not.i352.i, label %if.end.i356.i, label %lor.lhs.false.i353.i.SwLedOff.exit363.i_crit_edge

lor.lhs.false.i353.i.SwLedOff.exit363.i_crit_edge: ; preds = %lor.lhs.false.i353.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %SwLedOff.exit363.i

if.end.i356.i:                                    ; preds = %lor.lhs.false.i353.i
  %call.i354.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i355.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 1
  %57 = ptrtoint ptr %LedPin.i355.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %LedPin.i355.i, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %58, label %if.end.i356.i.sw.epilog.i362.i_crit_edge [
    i32 2, label %sw.bb5.i357.i
    i32 1, label %if.end.i356.i.sw.epilog.sink.split.i360.i_crit_edge
  ]

if.end.i356.i.sw.epilog.sink.split.i360.i_crit_edge: ; preds = %if.end.i356.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i360.i

if.end.i356.i.sw.epilog.i362.i_crit_edge:         ; preds = %if.end.i356.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i362.i

sw.bb5.i357.i:                                    ; preds = %if.end.i356.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i360.i

sw.epilog.sink.split.i360.i:                      ; preds = %sw.bb5.i357.i, %if.end.i356.i.sw.epilog.sink.split.i360.i_crit_edge
  %.sink.i358.i = phi i8 [ 15, %sw.bb5.i357.i ], [ -16, %if.end.i356.i.sw.epilog.sink.split.i360.i_crit_edge ]
  %.sink21.i359.i = phi i8 [ -128, %sw.bb5.i357.i ], [ 8, %if.end.i356.i.sw.epilog.sink.split.i360.i_crit_edge ]
  %60 = and i8 %.sink.i358.i, %call.i354.i
  %61 = or i8 %60, %.sink21.i359.i
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %61) #2
  br label %sw.epilog.i362.i

sw.epilog.i362.i:                                 ; preds = %sw.epilog.sink.split.i360.i, %if.end.i356.i.sw.epilog.i362.i_crit_edge
  %bLedOn.i361.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 3
  %62 = ptrtoint ptr %bLedOn.i361.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %bLedOn.i361.i, align 4
  br label %SwLedOff.exit363.i

SwLedOff.exit363.i:                               ; preds = %sw.epilog.i362.i, %lor.lhs.false.i353.i.SwLedOff.exit363.i_crit_edge, %if.then22.i.SwLedOff.exit363.i_crit_edge
  %63 = ptrtoint ptr %bSWLedCtrl20.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %bSWLedCtrl20.i, align 1
  br label %if.end31.i

if.else24.i:                                      ; preds = %if.else19.i
  %bLedOn25.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 3
  %64 = ptrtoint ptr %bLedOn25.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bLedOn25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool26.not.i = icmp eq i8 %65, 0
  br i1 %tobool26.not.i, label %if.else24.i.if.end31.i_crit_edge, label %if.then27.i

if.else24.i.if.end31.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end31.i

if.then27.i:                                      ; preds = %if.else24.i
  %66 = ptrtoint ptr %surprise_removed.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %surprise_removed.i.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i365.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i365.i, label %lor.lhs.false.i368.i, label %if.then27.i.if.end31.i_crit_edge

if.then27.i.if.end31.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end31.i

lor.lhs.false.i368.i:                             ; preds = %if.then27.i
  %driver_stopped.i366.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %68 = ptrtoint ptr %driver_stopped.i366.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %driver_stopped.i366.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool1.not.i367.i = icmp eq i8 %69, 0
  br i1 %tobool1.not.i367.i, label %if.end.i371.i, label %lor.lhs.false.i368.i.if.end31.i_crit_edge

lor.lhs.false.i368.i.if.end31.i_crit_edge:        ; preds = %lor.lhs.false.i368.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end31.i

if.end.i371.i:                                    ; preds = %lor.lhs.false.i368.i
  %call.i369.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i370.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 1
  %70 = ptrtoint ptr %LedPin.i370.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %LedPin.i370.i, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %71, label %if.end.i371.i.sw.epilog.i377.i_crit_edge [
    i32 2, label %sw.bb5.i372.i
    i32 1, label %if.end.i371.i.sw.epilog.sink.split.i375.i_crit_edge
  ]

if.end.i371.i.sw.epilog.sink.split.i375.i_crit_edge: ; preds = %if.end.i371.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i375.i

if.end.i371.i.sw.epilog.i377.i_crit_edge:         ; preds = %if.end.i371.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i377.i

sw.bb5.i372.i:                                    ; preds = %if.end.i371.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i375.i

sw.epilog.sink.split.i375.i:                      ; preds = %sw.bb5.i372.i, %if.end.i371.i.sw.epilog.sink.split.i375.i_crit_edge
  %.sink.i373.i = phi i8 [ 15, %sw.bb5.i372.i ], [ -16, %if.end.i371.i.sw.epilog.sink.split.i375.i_crit_edge ]
  %.sink21.i374.i = phi i8 [ -128, %sw.bb5.i372.i ], [ 8, %if.end.i371.i.sw.epilog.sink.split.i375.i_crit_edge ]
  %73 = and i8 %.sink.i373.i, %call.i369.i
  %74 = or i8 %73, %.sink21.i374.i
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %74) #2
  br label %sw.epilog.i377.i

sw.epilog.i377.i:                                 ; preds = %sw.epilog.sink.split.i375.i, %if.end.i371.i.sw.epilog.i377.i_crit_edge
  %75 = ptrtoint ptr %bLedOn25.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %bLedOn25.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %sw.epilog.i377.i, %lor.lhs.false.i368.i.if.end31.i_crit_edge, %if.then27.i.if.end31.i_crit_edge, %if.else24.i.if.end31.i_crit_edge, %SwLedOff.exit363.i, %sw.epilog.i347.i, %lor.lhs.false.i339.i.if.end31.i_crit_edge, %if.then16.i.if.end31.i_crit_edge, %if.else14.i.if.end31.i_crit_edge, %SwLedOn.exit334.i, %if.end6.i.if.end31.i_crit_edge
  %CurrLedState.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 2
  %76 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %CurrLedState.i, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %77, label %if.end31.i.sw.epilog_crit_edge [
    i32 4, label %sw.bb.i
    i32 3, label %sw.bb41.i
    i32 6, label %sw.bb53.i
    i32 10, label %sw.bb106.i
    i32 9, label %sw.bb164.i
    i32 11, label %sw.bb176.i
  ]

if.end31.i.sw.epilog_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn32.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %79 = ptrtoint ptr %bLedOn32.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bLedOn32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool33.not.i = icmp eq i8 %80, 0
  %..i = select i1 %tobool33.not.i, i32 1, i32 2
  %81 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %..i, ptr %BlinkingLedState.i, align 4
  %BlinkTimer.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %82, 100
  %call40.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer.i, i32 noundef %add.i) #2
  br label %sw.epilog

sw.bb41.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn42.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %83 = ptrtoint ptr %bLedOn42.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bLedOn42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool43.not.i = icmp eq i8 %84, 0
  %.302.i = select i1 %tobool43.not.i, i32 1, i32 2
  %85 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.302.i, ptr %BlinkingLedState.i, align 4
  %BlinkTimer49.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %add51.i = add i32 %86, 50
  %call52.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer49.i, i32 noundef %add51.i) #2
  br label %sw.epilog

sw.bb53.i:                                        ; preds = %if.end31.i
  %BlinkTimes.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 11
  %87 = ptrtoint ptr %BlinkTimes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %BlinkTimes.i, align 4
  %dec.i = add i32 %88, -1
  store i32 %dec.i, ptr %BlinkTimes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp55.i = icmp eq i32 %dec.i, 0
  br i1 %cmp55.i, label %if.then59.i, label %if.else93.i

if.then59.i:                                      ; preds = %sw.bb53.i
  %fw_state.i379.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %89 = ptrtoint ptr %fw_state.i379.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fw_state.i379.i, align 8
  %91 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool61.not.i = icmp eq i32 %91, 0
  br i1 %tobool61.not.i, label %if.then78.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedLinkBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %92 = ptrtoint ptr %bLedLinkBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %bLedLinkBlinkInProgress.i, align 4
  br label %if.end92.i

if.then78.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedNoLinkBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %93 = ptrtoint ptr %bLedNoLinkBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %bLedNoLinkBlinkInProgress.i, align 1
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then78.i, %if.then62.i
  %.sink386.i = phi i32 [ 4, %if.then78.i ], [ 3, %if.then62.i ]
  %.sink384.i = phi i32 [ 100, %if.then78.i ], [ 50, %if.then62.i ]
  %94 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %.sink386.i, ptr %CurrLedState.i, align 4
  %bLedOn80.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %95 = ptrtoint ptr %bLedOn80.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bLedOn80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool81.not.i = icmp eq i8 %96, 0
  %.304.i = select i1 %tobool81.not.i, i32 1, i32 2
  %97 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.304.i, ptr %BlinkingLedState.i, align 4
  %BlinkTimer87.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %add89.i = add i32 %98, %.sink384.i
  %call90.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer87.i, i32 noundef %add89.i) #2
  %bLedScanBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 9
  %99 = ptrtoint ptr %bLedScanBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %bLedScanBlinkInProgress.i, align 2
  br label %sw.epilog

if.else93.i:                                      ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn94.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %100 = ptrtoint ptr %bLedOn94.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bLedOn94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool95.not.i = icmp eq i8 %101, 0
  %.305.i = select i1 %tobool95.not.i, i32 1, i32 2
  %102 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.305.i, ptr %BlinkingLedState.i, align 4
  %BlinkTimer101.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %add103.i = add i32 %103, 18
  %call104.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer101.i, i32 noundef %add103.i) #2
  br label %sw.epilog

sw.bb106.i:                                       ; preds = %if.end31.i
  %BlinkTimes107.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 11
  %104 = ptrtoint ptr %BlinkTimes107.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %BlinkTimes107.i, align 4
  %dec108.i = add i32 %105, -1
  store i32 %dec108.i, ptr %BlinkTimes107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec108.i)
  %cmp110.i = icmp eq i32 %dec108.i, 0
  br i1 %cmp110.i, label %if.then114.i, label %if.else151.i

if.then114.i:                                     ; preds = %sw.bb106.i
  %fw_state.i381.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %106 = ptrtoint ptr %fw_state.i381.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fw_state.i381.i, align 8
  %108 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool116.not.i = icmp eq i32 %108, 0
  br i1 %tobool116.not.i, label %if.then134.i, label %if.then117.i

if.then117.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedLinkBlinkInProgress118.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %109 = ptrtoint ptr %bLedLinkBlinkInProgress118.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %bLedLinkBlinkInProgress118.i, align 4
  br label %if.end149.i

if.then134.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedNoLinkBlinkInProgress135.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 6
  %110 = ptrtoint ptr %bLedNoLinkBlinkInProgress135.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %bLedNoLinkBlinkInProgress135.i, align 1
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then134.i, %if.then117.i
  %.sink390.i = phi i32 [ 4, %if.then134.i ], [ 3, %if.then117.i ]
  %.sink388.i = phi i32 [ 100, %if.then134.i ], [ 50, %if.then117.i ]
  %111 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %.sink390.i, ptr %CurrLedState.i, align 4
  %bLedOn137.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %112 = ptrtoint ptr %bLedOn137.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bLedOn137.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool138.not.i = icmp eq i8 %113, 0
  %.307.i = select i1 %tobool138.not.i, i32 1, i32 2
  %114 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.307.i, ptr %BlinkingLedState.i, align 4
  %BlinkTimer144.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %115 = load volatile i32, ptr @jiffies, align 128
  %add146.i = add i32 %115, %.sink388.i
  %call147.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer144.i, i32 noundef %add146.i) #2
  %116 = ptrtoint ptr %BlinkTimes107.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %BlinkTimes107.i, align 4
  %bLedBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 5
  %117 = ptrtoint ptr %bLedBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %bLedBlinkInProgress.i, align 2
  br label %sw.epilog

if.else151.i:                                     ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn152.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %118 = ptrtoint ptr %bLedOn152.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bLedOn152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool153.not.i = icmp eq i8 %119, 0
  %.308.i = select i1 %tobool153.not.i, i32 1, i32 2
  %120 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.308.i, ptr %BlinkingLedState.i, align 4
  %BlinkTimer159.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %add161.i = add i32 %121, 5
  %call162.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer159.i, i32 noundef %add161.i) #2
  br label %sw.epilog

sw.bb164.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn165.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %122 = ptrtoint ptr %bLedOn165.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %bLedOn165.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool166.not.i = icmp eq i8 %123, 0
  %.309.i = select i1 %tobool166.not.i, i32 1, i32 2
  %124 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.309.i, ptr %BlinkingLedState.i, align 4
  %BlinkTimer172.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %add174.i = add i32 %125, 18
  %call175.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer172.i, i32 noundef %add174.i) #2
  br label %sw.epilog

sw.bb176.i:                                       ; preds = %if.end31.i
  %126 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %BlinkingLedState.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp178.i = icmp eq i32 %127, 1
  br i1 %cmp178.i, label %sw.bb176.i.if.end202.i_crit_edge, label %if.then188.critedge.i

sw.bb176.i.if.end202.i_crit_edge:                 ; preds = %sw.bb176.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end202.i

if.then188.critedge.i:                            ; preds = %sw.bb176.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedLinkBlinkInProgress189.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 7
  %128 = ptrtoint ptr %bLedLinkBlinkInProgress189.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %bLedLinkBlinkInProgress189.i, align 4
  %129 = ptrtoint ptr %CurrLedState.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 3, ptr %CurrLedState.i, align 4
  %bLedOn191.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 3
  %130 = ptrtoint ptr %bLedOn191.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bLedOn191.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool192.not.i = icmp eq i8 %131, 0
  %storemerge.i = select i1 %tobool192.not.i, i32 1, i32 2
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.then188.critedge.i, %sw.bb176.i.if.end202.i_crit_edge
  %.sink393.i = phi i32 [ %storemerge.i, %if.then188.critedge.i ], [ 2, %sw.bb176.i.if.end202.i_crit_edge ]
  %.sink392.i = phi i32 [ 50, %if.then188.critedge.i ], [ 500, %sw.bb176.i.if.end202.i_crit_edge ]
  %132 = ptrtoint ptr %BlinkingLedState.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %.sink393.i, ptr %BlinkingLedState.i, align 4
  %BlinkTimer181.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %133 = load volatile i32, ptr @jiffies, align 128
  %add183.i = add i32 %133, %.sink392.i
  %call184.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer181.i, i32 noundef %add183.i) #2
  %bLedWPSBlinkInProgress.i = getelementptr inbounds %struct.LED_871x, ptr %spec.select.i, i32 0, i32 10
  %134 = ptrtoint ptr %bLedWPSBlinkInProgress.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %bLedWPSBlinkInProgress.i, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %BlinkingLedState.i16 = getelementptr i8, ptr %work, i32 -52
  %135 = ptrtoint ptr %BlinkingLedState.i16 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %BlinkingLedState.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %136)
  %cmp.i17 = icmp eq i32 %136, 1
  %surprise_removed.i.i18 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %137 = ptrtoint ptr %surprise_removed.i.i18 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %surprise_removed.i.i18, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i.i19 = icmp eq i8 %138, 0
  br i1 %cmp.i17, label %if.then.i, label %if.else.i29

if.then.i:                                        ; preds = %sw.bb3
  br i1 %tobool.not.i.i19, label %lor.lhs.false.i.i22, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

lor.lhs.false.i.i22:                              ; preds = %if.then.i
  %driver_stopped.i.i20 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %139 = ptrtoint ptr %driver_stopped.i.i20 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %driver_stopped.i.i20, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool1.not.i.i21 = icmp eq i8 %140, 0
  br i1 %tobool1.not.i.i21, label %if.end.i.i25, label %lor.lhs.false.i.i22.if.end.i_crit_edge

lor.lhs.false.i.i22.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i22
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

if.end.i.i25:                                     ; preds = %lor.lhs.false.i.i22
  %call.i.i23 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i.i24 = getelementptr i8, ptr %work, i32 -72
  %141 = ptrtoint ptr %LedPin.i.i24 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %LedPin.i.i24, align 4
  %143 = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %142, label %if.end.i.i25.if.end.sink.split.i_crit_edge [
    i32 2, label %sw.bb3.i.i26
    i32 1, label %if.end.i.i25.sw.epilog.sink.split.i.i28_crit_edge
  ]

if.end.i.i25.sw.epilog.sink.split.i.i28_crit_edge: ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i28

if.end.i.i25.if.end.sink.split.i_crit_edge:       ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i

sw.bb3.i.i26:                                     ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i28

sw.epilog.sink.split.i.i28:                       ; preds = %sw.bb3.i.i26, %if.end.i.i25.sw.epilog.sink.split.i.i28_crit_edge
  %.sink13.i.i27 = phi i8 [ 15, %sw.bb3.i.i26 ], [ -16, %if.end.i.i25.sw.epilog.sink.split.i.i28_crit_edge ]
  %144 = and i8 %.sink13.i.i27, %call.i.i23
  br label %if.end.sink.split.sink.split.i

if.else.i29:                                      ; preds = %sw.bb3
  br i1 %tobool.not.i.i19, label %lor.lhs.false.i110.i, label %if.else.i29.if.end.i_crit_edge

if.else.i29.if.end.i_crit_edge:                   ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

lor.lhs.false.i110.i:                             ; preds = %if.else.i29
  %driver_stopped.i108.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %145 = ptrtoint ptr %driver_stopped.i108.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %driver_stopped.i108.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool1.not.i109.i = icmp eq i8 %146, 0
  br i1 %tobool1.not.i109.i, label %if.end.i113.i, label %lor.lhs.false.i110.i.if.end.i_crit_edge

lor.lhs.false.i110.i.if.end.i_crit_edge:          ; preds = %lor.lhs.false.i110.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

if.end.i113.i:                                    ; preds = %lor.lhs.false.i110.i
  %call.i111.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i112.i = getelementptr i8, ptr %work, i32 -72
  %147 = ptrtoint ptr %LedPin.i112.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %LedPin.i112.i, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %148, label %if.end.i113.i.if.end.sink.split.i_crit_edge [
    i32 2, label %sw.bb5.i.i30
    i32 1, label %if.end.i113.i.sw.epilog.sink.split.i114.i_crit_edge
  ]

if.end.i113.i.sw.epilog.sink.split.i114.i_crit_edge: ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i114.i

if.end.i113.i.if.end.sink.split.i_crit_edge:      ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i

sw.bb5.i.i30:                                     ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i114.i

sw.epilog.sink.split.i114.i:                      ; preds = %sw.bb5.i.i30, %if.end.i113.i.sw.epilog.sink.split.i114.i_crit_edge
  %.sink.i.i31 = phi i8 [ 15, %sw.bb5.i.i30 ], [ -16, %if.end.i113.i.sw.epilog.sink.split.i114.i_crit_edge ]
  %.sink21.i.i32 = phi i8 [ -128, %sw.bb5.i.i30 ], [ 8, %if.end.i113.i.sw.epilog.sink.split.i114.i_crit_edge ]
  %150 = and i8 %.sink.i.i31, %call.i111.i
  %151 = or i8 %150, %.sink21.i.i32
  br label %if.end.sink.split.sink.split.i

if.end.sink.split.sink.split.i:                   ; preds = %sw.epilog.sink.split.i114.i, %sw.epilog.sink.split.i.i28
  %.sink148.i = phi i8 [ %151, %sw.epilog.sink.split.i114.i ], [ %144, %sw.epilog.sink.split.i.i28 ]
  %.sink.ph.i33 = phi i8 [ 0, %sw.epilog.sink.split.i114.i ], [ 1, %sw.epilog.sink.split.i.i28 ]
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %.sink148.i) #2
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.end.sink.split.sink.split.i, %if.end.i113.i.if.end.sink.split.i_crit_edge, %if.end.i.i25.if.end.sink.split.i_crit_edge
  %.sink.i34 = phi i8 [ 1, %if.end.i.i25.if.end.sink.split.i_crit_edge ], [ 0, %if.end.i113.i.if.end.sink.split.i_crit_edge ], [ %.sink.ph.i33, %if.end.sink.split.sink.split.i ]
  %bLedOn.i115.i = getelementptr i8, ptr %work, i32 -64
  %152 = ptrtoint ptr %bLedOn.i115.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %.sink.i34, ptr %bLedOn.i115.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %lor.lhs.false.i110.i.if.end.i_crit_edge, %if.else.i29.if.end.i_crit_edge, %lor.lhs.false.i.i22.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %CurrLedState.i35 = getelementptr i8, ptr %work, i32 -68
  %153 = ptrtoint ptr %CurrLedState.i35 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %CurrLedState.i35, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %154, label %if.end.i.sw.epilog_crit_edge [
    i32 6, label %sw.bb.i38
    i32 10, label %sw.bb29.i
  ]

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb.i38:                                        ; preds = %if.end.i
  %BlinkTimes.i36 = getelementptr i8, ptr %work, i32 -56
  %156 = ptrtoint ptr %BlinkTimes.i36 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %BlinkTimes.i36, align 4
  %dec.i37 = add i32 %157, -1
  store i32 %dec.i37, ptr %BlinkTimes.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i37)
  %cmp3.i = icmp eq i32 %dec.i37, 0
  br i1 %cmp3.i, label %if.then6.i, label %if.else19.i45

if.then6.i:                                       ; preds = %sw.bb.i38
  %fw_state.i.i39 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %158 = ptrtoint ptr %fw_state.i.i39 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %fw_state.i.i39, align 8
  %160 = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool7.not.i = icmp eq i32 %160, 0
  br i1 %tobool7.not.i, label %if.then14.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then6.i
  %161 = ptrtoint ptr %CurrLedState.i35 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1, ptr %CurrLedState.i35, align 4
  %162 = ptrtoint ptr %BlinkingLedState.i16 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1, ptr %BlinkingLedState.i16, align 4
  %163 = ptrtoint ptr %surprise_removed.i.i18 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %surprise_removed.i.i18, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i118.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i118.i, label %lor.lhs.false.i121.i, label %if.then8.i.if.end18.i_crit_edge

if.then8.i.if.end18.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end18.i

lor.lhs.false.i121.i:                             ; preds = %if.then8.i
  %driver_stopped.i119.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %165 = ptrtoint ptr %driver_stopped.i119.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %driver_stopped.i119.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool1.not.i120.i = icmp eq i8 %166, 0
  br i1 %tobool1.not.i120.i, label %if.end.i124.i, label %lor.lhs.false.i121.i.if.end18.i_crit_edge

lor.lhs.false.i121.i.if.end18.i_crit_edge:        ; preds = %lor.lhs.false.i121.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end18.i

if.end.i124.i:                                    ; preds = %lor.lhs.false.i121.i
  %call.i122.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i123.i = getelementptr i8, ptr %work, i32 -72
  %167 = ptrtoint ptr %LedPin.i123.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %LedPin.i123.i, align 4
  %169 = zext i32 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %168, label %if.end.i124.i.sw.epilog.i129.i_crit_edge [
    i32 2, label %sw.bb3.i125.i
    i32 1, label %if.end.i124.i.sw.epilog.sink.split.i127.i_crit_edge
  ]

if.end.i124.i.sw.epilog.sink.split.i127.i_crit_edge: ; preds = %if.end.i124.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i127.i

if.end.i124.i.sw.epilog.i129.i_crit_edge:         ; preds = %if.end.i124.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i129.i

sw.bb3.i125.i:                                    ; preds = %if.end.i124.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i127.i

sw.epilog.sink.split.i127.i:                      ; preds = %sw.bb3.i125.i, %if.end.i124.i.sw.epilog.sink.split.i127.i_crit_edge
  %.sink13.i126.i = phi i8 [ 15, %sw.bb3.i125.i ], [ -16, %if.end.i124.i.sw.epilog.sink.split.i127.i_crit_edge ]
  %170 = and i8 %.sink13.i126.i, %call.i122.i
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %170) #2
  br label %sw.epilog.i129.i

sw.epilog.i129.i:                                 ; preds = %sw.epilog.sink.split.i127.i, %if.end.i124.i.sw.epilog.i129.i_crit_edge
  %bLedOn.i128.i = getelementptr i8, ptr %work, i32 -64
  %171 = ptrtoint ptr %bLedOn.i128.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %bLedOn.i128.i, align 4
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #4
  %172 = ptrtoint ptr %CurrLedState.i35 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 2, ptr %CurrLedState.i35, align 4
  %173 = ptrtoint ptr %BlinkingLedState.i16 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 2, ptr %BlinkingLedState.i16, align 4
  tail call fastcc void @SwLedOff(ptr noundef %1, ptr noundef %add.ptr) #2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %sw.epilog.i129.i, %lor.lhs.false.i121.i.if.end18.i_crit_edge, %if.then8.i.if.end18.i_crit_edge
  %bLedScanBlinkInProgress.i40 = getelementptr i8, ptr %work, i32 -58
  %174 = ptrtoint ptr %bLedScanBlinkInProgress.i40 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %bLedScanBlinkInProgress.i40, align 2
  br label %sw.epilog

if.else19.i45:                                    ; preds = %sw.bb.i38
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn.i41 = getelementptr i8, ptr %work, i32 -64
  %175 = ptrtoint ptr %bLedOn.i41 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %bLedOn.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool20.not.i = icmp eq i8 %176, 0
  %..i42 = select i1 %tobool20.not.i, i32 1, i32 2
  %177 = ptrtoint ptr %BlinkingLedState.i16 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %..i42, ptr %BlinkingLedState.i16, align 4
  %BlinkTimer.i43 = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %178 = load volatile i32, ptr @jiffies, align 128
  %add.i44 = add i32 %178, 18
  %call27.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer.i43, i32 noundef %add.i44) #2
  br label %sw.epilog

sw.bb29.i:                                        ; preds = %if.end.i
  %BlinkTimes30.i = getelementptr i8, ptr %work, i32 -56
  %179 = ptrtoint ptr %BlinkTimes30.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %BlinkTimes30.i, align 4
  %dec31.i = add i32 %180, -1
  store i32 %dec31.i, ptr %BlinkTimes30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31.i)
  %cmp33.i = icmp eq i32 %dec31.i, 0
  br i1 %cmp33.i, label %if.then37.i, label %if.else51.i

if.then37.i:                                      ; preds = %sw.bb29.i
  %fw_state.i132.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %181 = ptrtoint ptr %fw_state.i132.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %fw_state.i132.i, align 8
  %183 = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool39.not.i = icmp eq i32 %183, 0
  br i1 %tobool39.not.i, label %if.then46.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then37.i
  %184 = ptrtoint ptr %CurrLedState.i35 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %CurrLedState.i35, align 4
  %185 = ptrtoint ptr %BlinkingLedState.i16 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1, ptr %BlinkingLedState.i16, align 4
  %186 = ptrtoint ptr %surprise_removed.i.i18 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %surprise_removed.i.i18, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool.not.i134.i = icmp eq i8 %187, 0
  br i1 %tobool.not.i134.i, label %lor.lhs.false.i137.i, label %if.then40.i.if.end50.i_crit_edge

if.then40.i.if.end50.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end50.i

lor.lhs.false.i137.i:                             ; preds = %if.then40.i
  %driver_stopped.i135.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %188 = ptrtoint ptr %driver_stopped.i135.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %driver_stopped.i135.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool1.not.i136.i = icmp eq i8 %189, 0
  br i1 %tobool1.not.i136.i, label %if.end.i140.i, label %lor.lhs.false.i137.i.if.end50.i_crit_edge

lor.lhs.false.i137.i.if.end50.i_crit_edge:        ; preds = %lor.lhs.false.i137.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end50.i

if.end.i140.i:                                    ; preds = %lor.lhs.false.i137.i
  %call.i138.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i139.i = getelementptr i8, ptr %work, i32 -72
  %190 = ptrtoint ptr %LedPin.i139.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %LedPin.i139.i, align 4
  %192 = zext i32 %191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %191, label %if.end.i140.i.sw.epilog.i145.i_crit_edge [
    i32 2, label %sw.bb3.i141.i
    i32 1, label %if.end.i140.i.sw.epilog.sink.split.i143.i_crit_edge
  ]

if.end.i140.i.sw.epilog.sink.split.i143.i_crit_edge: ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i143.i

if.end.i140.i.sw.epilog.i145.i_crit_edge:         ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i145.i

sw.bb3.i141.i:                                    ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i143.i

sw.epilog.sink.split.i143.i:                      ; preds = %sw.bb3.i141.i, %if.end.i140.i.sw.epilog.sink.split.i143.i_crit_edge
  %.sink13.i142.i = phi i8 [ 15, %sw.bb3.i141.i ], [ -16, %if.end.i140.i.sw.epilog.sink.split.i143.i_crit_edge ]
  %193 = and i8 %.sink13.i142.i, %call.i138.i
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %193) #2
  br label %sw.epilog.i145.i

sw.epilog.i145.i:                                 ; preds = %sw.epilog.sink.split.i143.i, %if.end.i140.i.sw.epilog.i145.i_crit_edge
  %bLedOn.i144.i = getelementptr i8, ptr %work, i32 -64
  %194 = ptrtoint ptr %bLedOn.i144.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %bLedOn.i144.i, align 4
  br label %if.end50.i

if.then46.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #4
  %195 = ptrtoint ptr %CurrLedState.i35 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 2, ptr %CurrLedState.i35, align 4
  %196 = ptrtoint ptr %BlinkingLedState.i16 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 2, ptr %BlinkingLedState.i16, align 4
  tail call fastcc void @SwLedOff(ptr noundef %1, ptr noundef %add.ptr) #2
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then46.i, %sw.epilog.i145.i, %lor.lhs.false.i137.i.if.end50.i_crit_edge, %if.then40.i.if.end50.i_crit_edge
  %bLedBlinkInProgress.i46 = getelementptr i8, ptr %work, i32 -62
  %197 = ptrtoint ptr %bLedBlinkInProgress.i46 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %bLedBlinkInProgress.i46, align 2
  br label %sw.epilog

if.else51.i:                                      ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn52.i = getelementptr i8, ptr %work, i32 -64
  %198 = ptrtoint ptr %bLedOn52.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %bLedOn52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool53.not.i = icmp eq i8 %199, 0
  %.105.i = select i1 %tobool53.not.i, i32 1, i32 2
  %200 = ptrtoint ptr %BlinkingLedState.i16 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %.105.i, ptr %BlinkingLedState.i16, align 4
  %BlinkTimer59.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %201 = load volatile i32, ptr @jiffies, align 128
  %add61.i = add i32 %201, 5
  %call62.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer59.i, i32 noundef %add61.i) #2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %BlinkingLedState.i47 = getelementptr i8, ptr %work, i32 -52
  %202 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %BlinkingLedState.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp.i48 = icmp eq i32 %203, 1
  br i1 %cmp.i48, label %if.then.i51, label %if.else.i62

if.then.i51:                                      ; preds = %sw.bb4
  %surprise_removed.i.i49 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %204 = ptrtoint ptr %surprise_removed.i.i49 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %surprise_removed.i.i49, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.i.i50 = icmp eq i8 %205, 0
  br i1 %tobool.not.i.i50, label %lor.lhs.false.i.i54, label %if.then.i51.if.end4.i_crit_edge

if.then.i51.if.end4.i_crit_edge:                  ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

lor.lhs.false.i.i54:                              ; preds = %if.then.i51
  %driver_stopped.i.i52 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %206 = ptrtoint ptr %driver_stopped.i.i52 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %driver_stopped.i.i52, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool1.not.i.i53 = icmp eq i8 %207, 0
  br i1 %tobool1.not.i.i53, label %if.end.i.i57, label %lor.lhs.false.i.i54.if.end4.i_crit_edge

lor.lhs.false.i.i54.if.end4.i_crit_edge:          ; preds = %lor.lhs.false.i.i54
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

if.end.i.i57:                                     ; preds = %lor.lhs.false.i.i54
  %call.i.i55 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i.i56 = getelementptr i8, ptr %work, i32 -72
  %208 = ptrtoint ptr %LedPin.i.i56 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %LedPin.i.i56, align 4
  %210 = zext i32 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %209, label %if.end.i.i57.if.end4.sink.split.i_crit_edge [
    i32 2, label %sw.bb3.i.i58
    i32 1, label %if.end.i.i57.sw.epilog.sink.split.i.i60_crit_edge
  ]

if.end.i.i57.sw.epilog.sink.split.i.i60_crit_edge: ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i60

if.end.i.i57.if.end4.sink.split.i_crit_edge:      ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.sink.split.i

sw.bb3.i.i58:                                     ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i60

sw.epilog.sink.split.i.i60:                       ; preds = %sw.bb3.i.i58, %if.end.i.i57.sw.epilog.sink.split.i.i60_crit_edge
  %.sink13.i.i59 = phi i8 [ 15, %sw.bb3.i.i58 ], [ -16, %if.end.i.i57.sw.epilog.sink.split.i.i60_crit_edge ]
  %211 = and i8 %.sink13.i.i59, %call.i.i55
  br label %if.end4.sink.split.sink.split.i

if.else.i62:                                      ; preds = %sw.bb4
  %CurrLedState.i61 = getelementptr i8, ptr %work, i32 -68
  %212 = ptrtoint ptr %CurrLedState.i61 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %CurrLedState.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %213)
  %cmp2.not.i = icmp eq i32 %213, 11
  br i1 %cmp2.not.i, label %if.else.i62.if.end4.i_crit_edge, label %if.then3.i

if.else.i62.if.end4.i_crit_edge:                  ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.else.i62
  %surprise_removed.i174.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %214 = ptrtoint ptr %surprise_removed.i174.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %surprise_removed.i174.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool.not.i175.i = icmp eq i8 %215, 0
  br i1 %tobool.not.i175.i, label %lor.lhs.false.i178.i, label %if.then3.i.if.end4.i_crit_edge

if.then3.i.if.end4.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

lor.lhs.false.i178.i:                             ; preds = %if.then3.i
  %driver_stopped.i176.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %216 = ptrtoint ptr %driver_stopped.i176.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %driver_stopped.i176.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool1.not.i177.i = icmp eq i8 %217, 0
  br i1 %tobool1.not.i177.i, label %if.end.i181.i, label %lor.lhs.false.i178.i.if.end4.i_crit_edge

lor.lhs.false.i178.i.if.end4.i_crit_edge:         ; preds = %lor.lhs.false.i178.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

if.end.i181.i:                                    ; preds = %lor.lhs.false.i178.i
  %call.i179.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i180.i = getelementptr i8, ptr %work, i32 -72
  %218 = ptrtoint ptr %LedPin.i180.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %LedPin.i180.i, align 4
  %220 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %219, label %if.end.i181.i.if.end4.sink.split.i_crit_edge [
    i32 2, label %sw.bb5.i.i63
    i32 1, label %if.end.i181.i.sw.epilog.sink.split.i182.i_crit_edge
  ]

if.end.i181.i.sw.epilog.sink.split.i182.i_crit_edge: ; preds = %if.end.i181.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i182.i

if.end.i181.i.if.end4.sink.split.i_crit_edge:     ; preds = %if.end.i181.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.sink.split.i

sw.bb5.i.i63:                                     ; preds = %if.end.i181.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i182.i

sw.epilog.sink.split.i182.i:                      ; preds = %sw.bb5.i.i63, %if.end.i181.i.sw.epilog.sink.split.i182.i_crit_edge
  %.sink.i.i64 = phi i8 [ 15, %sw.bb5.i.i63 ], [ -16, %if.end.i181.i.sw.epilog.sink.split.i182.i_crit_edge ]
  %.sink21.i.i65 = phi i8 [ -128, %sw.bb5.i.i63 ], [ 8, %if.end.i181.i.sw.epilog.sink.split.i182.i_crit_edge ]
  %221 = and i8 %.sink.i.i64, %call.i179.i
  %222 = or i8 %221, %.sink21.i.i65
  br label %if.end4.sink.split.sink.split.i

if.end4.sink.split.sink.split.i:                  ; preds = %sw.epilog.sink.split.i182.i, %sw.epilog.sink.split.i.i60
  %.sink202.i = phi i8 [ %222, %sw.epilog.sink.split.i182.i ], [ %211, %sw.epilog.sink.split.i.i60 ]
  %.sink.ph.i66 = phi i8 [ 0, %sw.epilog.sink.split.i182.i ], [ 1, %sw.epilog.sink.split.i.i60 ]
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %.sink202.i) #2
  br label %if.end4.sink.split.i

if.end4.sink.split.i:                             ; preds = %if.end4.sink.split.sink.split.i, %if.end.i181.i.if.end4.sink.split.i_crit_edge, %if.end.i.i57.if.end4.sink.split.i_crit_edge
  %.sink.i67 = phi i8 [ 1, %if.end.i.i57.if.end4.sink.split.i_crit_edge ], [ 0, %if.end.i181.i.if.end4.sink.split.i_crit_edge ], [ %.sink.ph.i66, %if.end4.sink.split.sink.split.i ]
  %bLedOn.i183.i = getelementptr i8, ptr %work, i32 -64
  %223 = ptrtoint ptr %bLedOn.i183.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %.sink.i67, ptr %bLedOn.i183.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.sink.split.i, %lor.lhs.false.i178.i.if.end4.i_crit_edge, %if.then3.i.if.end4.i_crit_edge, %if.else.i62.if.end4.i_crit_edge, %lor.lhs.false.i.i54.if.end4.i_crit_edge, %if.then.i51.if.end4.i_crit_edge
  %CurrLedState5.i = getelementptr i8, ptr %work, i32 -68
  %224 = ptrtoint ptr %CurrLedState5.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %CurrLedState5.i, align 4
  %226 = zext i32 %225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %225, label %if.end4.i.sw.epilog_crit_edge [
    i32 6, label %sw.bb.i70
    i32 10, label %sw.bb41.i81
    i32 9, label %sw.bb84.i
    i32 11, label %sw.bb96.i
  ]

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb.i70:                                        ; preds = %if.end4.i
  %BlinkTimes.i68 = getelementptr i8, ptr %work, i32 -56
  %227 = ptrtoint ptr %BlinkTimes.i68 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %BlinkTimes.i68, align 4
  %dec.i69 = add i32 %228, -1
  store i32 %dec.i69, ptr %BlinkTimes.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i69)
  %cmp7.i = icmp eq i32 %dec.i69, 0
  br i1 %cmp7.i, label %if.then10.i72, label %if.else30.i

if.then10.i72:                                    ; preds = %sw.bb.i70
  %fw_state.i.i71 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %229 = ptrtoint ptr %fw_state.i.i71 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %fw_state.i.i71, align 8
  %231 = and i32 %230, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool11.not.i = icmp eq i32 %231, 0
  br i1 %tobool11.not.i, label %if.then21.i, label %if.then12.i75

if.then12.i75:                                    ; preds = %if.then10.i72
  %232 = ptrtoint ptr %CurrLedState5.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 1, ptr %CurrLedState5.i, align 4
  %233 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 1, ptr %BlinkingLedState.i47, align 4
  %bLedOn.i73 = getelementptr i8, ptr %work, i32 -64
  %234 = ptrtoint ptr %bLedOn.i73 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %bLedOn.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool15.not.i74 = icmp eq i8 %235, 0
  br i1 %tobool15.not.i74, label %if.then16.i76, label %if.then12.i75.if.end29.i_crit_edge

if.then12.i75.if.end29.i_crit_edge:               ; preds = %if.then12.i75
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29.i

if.then16.i76:                                    ; preds = %if.then12.i75
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @SwLedOn(ptr noundef %1, ptr noundef %add.ptr) #2
  br label %if.end29.i

if.then21.i:                                      ; preds = %if.then10.i72
  %236 = ptrtoint ptr %CurrLedState5.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 2, ptr %CurrLedState5.i, align 4
  %237 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 2, ptr %BlinkingLedState.i47, align 4
  %bLedOn24.i = getelementptr i8, ptr %work, i32 -64
  %238 = ptrtoint ptr %bLedOn24.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %bLedOn24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool25.not.i = icmp eq i8 %239, 0
  br i1 %tobool25.not.i, label %if.then21.i.if.end29.i_crit_edge, label %if.then26.i

if.then21.i.if.end29.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @SwLedOff(ptr noundef %1, ptr noundef %add.ptr) #2
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.then21.i.if.end29.i_crit_edge, %if.then16.i76, %if.then12.i75.if.end29.i_crit_edge
  %bLedScanBlinkInProgress.i77 = getelementptr i8, ptr %work, i32 -58
  %240 = ptrtoint ptr %bLedScanBlinkInProgress.i77 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %bLedScanBlinkInProgress.i77, align 2
  br label %sw.epilog

if.else30.i:                                      ; preds = %sw.bb.i70
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn31.i = getelementptr i8, ptr %work, i32 -64
  %241 = ptrtoint ptr %bLedOn31.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %bLedOn31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool32.not.i = icmp eq i8 %242, 0
  %..i78 = select i1 %tobool32.not.i, i32 1, i32 2
  %243 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %..i78, ptr %BlinkingLedState.i47, align 4
  %BlinkTimer.i79 = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %244 = load volatile i32, ptr @jiffies, align 128
  %add.i80 = add i32 %244, 18
  %call39.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer.i79, i32 noundef %add.i80) #2
  br label %sw.epilog

sw.bb41.i81:                                      ; preds = %if.end4.i
  %BlinkTimes42.i = getelementptr i8, ptr %work, i32 -56
  %245 = ptrtoint ptr %BlinkTimes42.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %BlinkTimes42.i, align 4
  %dec43.i = add i32 %246, -1
  store i32 %dec43.i, ptr %BlinkTimes42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec43.i)
  %cmp45.i = icmp eq i32 %dec43.i, 0
  br i1 %cmp45.i, label %if.then49.i, label %if.else71.i

if.then49.i:                                      ; preds = %sw.bb41.i81
  %fw_state.i186.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %247 = ptrtoint ptr %fw_state.i186.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %fw_state.i186.i, align 8
  %249 = and i32 %248, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool51.not.i = icmp eq i32 %249, 0
  br i1 %tobool51.not.i, label %if.then62.i82, label %if.then52.i

if.then52.i:                                      ; preds = %if.then49.i
  %250 = ptrtoint ptr %CurrLedState5.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 1, ptr %CurrLedState5.i, align 4
  %251 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 1, ptr %BlinkingLedState.i47, align 4
  %bLedOn55.i = getelementptr i8, ptr %work, i32 -64
  %252 = ptrtoint ptr %bLedOn55.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %bLedOn55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool56.not.i = icmp eq i8 %253, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %if.then52.i.if.end70.i_crit_edge

if.then52.i.if.end70.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end70.i

if.then57.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @SwLedOn(ptr noundef %1, ptr noundef %add.ptr) #2
  br label %if.end70.i

if.then62.i82:                                    ; preds = %if.then49.i
  %254 = ptrtoint ptr %CurrLedState5.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 2, ptr %CurrLedState5.i, align 4
  %255 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 2, ptr %BlinkingLedState.i47, align 4
  %bLedOn65.i = getelementptr i8, ptr %work, i32 -64
  %256 = ptrtoint ptr %bLedOn65.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %bLedOn65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool66.not.i = icmp eq i8 %257, 0
  br i1 %tobool66.not.i, label %if.then62.i82.if.end70.i_crit_edge, label %if.then67.i

if.then62.i82.if.end70.i_crit_edge:               ; preds = %if.then62.i82
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end70.i

if.then67.i:                                      ; preds = %if.then62.i82
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @SwLedOff(ptr noundef %1, ptr noundef %add.ptr) #2
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then67.i, %if.then62.i82.if.end70.i_crit_edge, %if.then57.i, %if.then52.i.if.end70.i_crit_edge
  %bLedBlinkInProgress.i83 = getelementptr i8, ptr %work, i32 -62
  %258 = ptrtoint ptr %bLedBlinkInProgress.i83 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %bLedBlinkInProgress.i83, align 2
  br label %sw.epilog

if.else71.i:                                      ; preds = %sw.bb41.i81
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn72.i = getelementptr i8, ptr %work, i32 -64
  %259 = ptrtoint ptr %bLedOn72.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %bLedOn72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool73.not.i = icmp eq i8 %260, 0
  %.172.i = select i1 %tobool73.not.i, i32 1, i32 2
  %261 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %.172.i, ptr %BlinkingLedState.i47, align 4
  %BlinkTimer79.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %262 = load volatile i32, ptr @jiffies, align 128
  %add81.i = add i32 %262, 5
  %call82.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer79.i, i32 noundef %add81.i) #2
  br label %sw.epilog

sw.bb84.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn85.i = getelementptr i8, ptr %work, i32 -64
  %263 = ptrtoint ptr %bLedOn85.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %bLedOn85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool86.not.i = icmp eq i8 %264, 0
  %.173.i = select i1 %tobool86.not.i, i32 1, i32 2
  %265 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %.173.i, ptr %BlinkingLedState.i47, align 4
  %BlinkTimer92.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %266 = load volatile i32, ptr @jiffies, align 128
  %add94.i = add i32 %266, 18
  %call95.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer92.i, i32 noundef %add94.i) #2
  br label %sw.epilog

sw.bb96.i:                                        ; preds = %if.end4.i
  %267 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %BlinkingLedState.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %268)
  %cmp98.i = icmp eq i32 %268, 1
  br i1 %cmp98.i, label %if.then99.i, label %if.then108.critedge.i

if.then99.i:                                      ; preds = %sw.bb96.i
  call void @__sanitizer_cov_trace_pc() #4
  %269 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 2, ptr %BlinkingLedState.i47, align 4
  %BlinkTimer101.i84 = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %270 = load volatile i32, ptr @jiffies, align 128
  %add103.i85 = add i32 %270, 500
  %call104.i86 = tail call i32 @mod_timer(ptr noundef %BlinkTimer101.i84, i32 noundef %add103.i85) #2
  br label %sw.epilog

if.then108.critedge.i:                            ; preds = %sw.bb96.i
  %271 = ptrtoint ptr %CurrLedState5.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 1, ptr %CurrLedState5.i, align 4
  %272 = ptrtoint ptr %BlinkingLedState.i47 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 1, ptr %BlinkingLedState.i47, align 4
  %surprise_removed.i188.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %273 = ptrtoint ptr %surprise_removed.i188.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %surprise_removed.i188.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool.not.i189.i = icmp eq i8 %274, 0
  br i1 %tobool.not.i189.i, label %lor.lhs.false.i192.i, label %if.then108.critedge.i.SwLedOn.exit201.i_crit_edge

if.then108.critedge.i.SwLedOn.exit201.i_crit_edge: ; preds = %if.then108.critedge.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %SwLedOn.exit201.i

lor.lhs.false.i192.i:                             ; preds = %if.then108.critedge.i
  %driver_stopped.i190.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %275 = ptrtoint ptr %driver_stopped.i190.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %driver_stopped.i190.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool1.not.i191.i = icmp eq i8 %276, 0
  br i1 %tobool1.not.i191.i, label %if.end.i195.i, label %lor.lhs.false.i192.i.SwLedOn.exit201.i_crit_edge

lor.lhs.false.i192.i.SwLedOn.exit201.i_crit_edge: ; preds = %lor.lhs.false.i192.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %SwLedOn.exit201.i

if.end.i195.i:                                    ; preds = %lor.lhs.false.i192.i
  %call.i193.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i194.i = getelementptr i8, ptr %work, i32 -72
  %277 = ptrtoint ptr %LedPin.i194.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %LedPin.i194.i, align 4
  %279 = zext i32 %278 to i64
  call void @__sanitizer_cov_trace_switch(i64 %279, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %278, label %if.end.i195.i.sw.epilog.i200.i_crit_edge [
    i32 2, label %sw.bb3.i196.i
    i32 1, label %if.end.i195.i.sw.epilog.sink.split.i198.i_crit_edge
  ]

if.end.i195.i.sw.epilog.sink.split.i198.i_crit_edge: ; preds = %if.end.i195.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i198.i

if.end.i195.i.sw.epilog.i200.i_crit_edge:         ; preds = %if.end.i195.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i200.i

sw.bb3.i196.i:                                    ; preds = %if.end.i195.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i198.i

sw.epilog.sink.split.i198.i:                      ; preds = %sw.bb3.i196.i, %if.end.i195.i.sw.epilog.sink.split.i198.i_crit_edge
  %.sink13.i197.i = phi i8 [ 15, %sw.bb3.i196.i ], [ -16, %if.end.i195.i.sw.epilog.sink.split.i198.i_crit_edge ]
  %280 = and i8 %.sink13.i197.i, %call.i193.i
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %280) #2
  br label %sw.epilog.i200.i

sw.epilog.i200.i:                                 ; preds = %sw.epilog.sink.split.i198.i, %if.end.i195.i.sw.epilog.i200.i_crit_edge
  %bLedOn.i199.i = getelementptr i8, ptr %work, i32 -64
  %281 = ptrtoint ptr %bLedOn.i199.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 1, ptr %bLedOn.i199.i, align 4
  br label %SwLedOn.exit201.i

SwLedOn.exit201.i:                                ; preds = %sw.epilog.i200.i, %lor.lhs.false.i192.i.SwLedOn.exit201.i_crit_edge, %if.then108.critedge.i.SwLedOn.exit201.i_crit_edge
  %bLedWPSBlinkInProgress.i87 = getelementptr i8, ptr %work, i32 -57
  %282 = ptrtoint ptr %bLedWPSBlinkInProgress.i87 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 0, ptr %bLedWPSBlinkInProgress.i87, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %BlinkingLedState.i88 = getelementptr i8, ptr %work, i32 -52
  %283 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %BlinkingLedState.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %284)
  %cmp.i89 = icmp eq i32 %284, 1
  %surprise_removed.i.i90 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %285 = ptrtoint ptr %surprise_removed.i.i90 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %surprise_removed.i.i90, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool.not.i.i91 = icmp eq i8 %286, 0
  br i1 %cmp.i89, label %if.then.i92, label %if.else.i102

if.then.i92:                                      ; preds = %sw.bb5
  br i1 %tobool.not.i.i91, label %lor.lhs.false.i.i95, label %if.then.i92.if.end.i112_crit_edge

if.then.i92.if.end.i112_crit_edge:                ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i112

lor.lhs.false.i.i95:                              ; preds = %if.then.i92
  %driver_stopped.i.i93 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %287 = ptrtoint ptr %driver_stopped.i.i93 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %driver_stopped.i.i93, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool1.not.i.i94 = icmp eq i8 %288, 0
  br i1 %tobool1.not.i.i94, label %if.end.i.i98, label %lor.lhs.false.i.i95.if.end.i112_crit_edge

lor.lhs.false.i.i95.if.end.i112_crit_edge:        ; preds = %lor.lhs.false.i.i95
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i112

if.end.i.i98:                                     ; preds = %lor.lhs.false.i.i95
  %call.i.i96 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i.i97 = getelementptr i8, ptr %work, i32 -72
  %289 = ptrtoint ptr %LedPin.i.i97 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %LedPin.i.i97, align 4
  %291 = zext i32 %290 to i64
  call void @__sanitizer_cov_trace_switch(i64 %291, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %290, label %if.end.i.i98.if.end.sink.split.i109_crit_edge [
    i32 2, label %sw.bb3.i.i99
    i32 1, label %if.end.i.i98.sw.epilog.sink.split.i.i101_crit_edge
  ]

if.end.i.i98.sw.epilog.sink.split.i.i101_crit_edge: ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i101

if.end.i.i98.if.end.sink.split.i109_crit_edge:    ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i109

sw.bb3.i.i99:                                     ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i101

sw.epilog.sink.split.i.i101:                      ; preds = %sw.bb3.i.i99, %if.end.i.i98.sw.epilog.sink.split.i.i101_crit_edge
  %.sink13.i.i100 = phi i8 [ 15, %sw.bb3.i.i99 ], [ -16, %if.end.i.i98.sw.epilog.sink.split.i.i101_crit_edge ]
  %292 = and i8 %.sink13.i.i100, %call.i.i96
  br label %if.end.sink.split.sink.split.i107

if.else.i102:                                     ; preds = %sw.bb5
  br i1 %tobool.not.i.i91, label %lor.lhs.false.i246.i, label %if.else.i102.if.end.i112_crit_edge

if.else.i102.if.end.i112_crit_edge:               ; preds = %if.else.i102
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i112

lor.lhs.false.i246.i:                             ; preds = %if.else.i102
  %driver_stopped.i244.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %293 = ptrtoint ptr %driver_stopped.i244.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %driver_stopped.i244.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool1.not.i245.i = icmp eq i8 %294, 0
  br i1 %tobool1.not.i245.i, label %if.end.i249.i, label %lor.lhs.false.i246.i.if.end.i112_crit_edge

lor.lhs.false.i246.i.if.end.i112_crit_edge:       ; preds = %lor.lhs.false.i246.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i112

if.end.i249.i:                                    ; preds = %lor.lhs.false.i246.i
  %call.i247.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i248.i = getelementptr i8, ptr %work, i32 -72
  %295 = ptrtoint ptr %LedPin.i248.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %LedPin.i248.i, align 4
  %297 = zext i32 %296 to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %296, label %if.end.i249.i.if.end.sink.split.i109_crit_edge [
    i32 2, label %sw.bb5.i.i103
    i32 1, label %if.end.i249.i.sw.epilog.sink.split.i250.i_crit_edge
  ]

if.end.i249.i.sw.epilog.sink.split.i250.i_crit_edge: ; preds = %if.end.i249.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i250.i

if.end.i249.i.if.end.sink.split.i109_crit_edge:   ; preds = %if.end.i249.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i109

sw.bb5.i.i103:                                    ; preds = %if.end.i249.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i250.i

sw.epilog.sink.split.i250.i:                      ; preds = %sw.bb5.i.i103, %if.end.i249.i.sw.epilog.sink.split.i250.i_crit_edge
  %.sink.i.i104 = phi i8 [ 15, %sw.bb5.i.i103 ], [ -16, %if.end.i249.i.sw.epilog.sink.split.i250.i_crit_edge ]
  %.sink21.i.i105 = phi i8 [ -128, %sw.bb5.i.i103 ], [ 8, %if.end.i249.i.sw.epilog.sink.split.i250.i_crit_edge ]
  %298 = and i8 %.sink.i.i104, %call.i247.i
  %299 = or i8 %298, %.sink21.i.i105
  br label %if.end.sink.split.sink.split.i107

if.end.sink.split.sink.split.i107:                ; preds = %sw.epilog.sink.split.i250.i, %sw.epilog.sink.split.i.i101
  %.sink268.i = phi i8 [ %299, %sw.epilog.sink.split.i250.i ], [ %292, %sw.epilog.sink.split.i.i101 ]
  %.sink.ph.i106 = phi i8 [ 0, %sw.epilog.sink.split.i250.i ], [ 1, %sw.epilog.sink.split.i.i101 ]
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %.sink268.i) #2
  br label %if.end.sink.split.i109

if.end.sink.split.i109:                           ; preds = %if.end.sink.split.sink.split.i107, %if.end.i249.i.if.end.sink.split.i109_crit_edge, %if.end.i.i98.if.end.sink.split.i109_crit_edge
  %.sink.i108 = phi i8 [ 1, %if.end.i.i98.if.end.sink.split.i109_crit_edge ], [ 0, %if.end.i249.i.if.end.sink.split.i109_crit_edge ], [ %.sink.ph.i106, %if.end.sink.split.sink.split.i107 ]
  %bLedOn.i251.i = getelementptr i8, ptr %work, i32 -64
  %300 = ptrtoint ptr %bLedOn.i251.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %.sink.i108, ptr %bLedOn.i251.i, align 4
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.end.sink.split.i109, %lor.lhs.false.i246.i.if.end.i112_crit_edge, %if.else.i102.if.end.i112_crit_edge, %lor.lhs.false.i.i95.if.end.i112_crit_edge, %if.then.i92.if.end.i112_crit_edge
  %bLedWPSBlinkInProgress.i110 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 10
  %301 = ptrtoint ptr %bLedWPSBlinkInProgress.i110 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %bLedWPSBlinkInProgress.i110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool.not.i111 = icmp eq i8 %302, 0
  br i1 %tobool.not.i111, label %land.lhs.true.i, label %if.end.i112.if.end7.i_crit_edge

if.end.i112.if.end7.i_crit_edge:                  ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i112
  %BlinkingLedState3.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 12
  %303 = ptrtoint ptr %BlinkingLedState3.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %BlinkingLedState3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %cmp4.i113 = icmp eq i32 %304, 0
  br i1 %cmp4.i113, label %if.then5.i115, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7.i

if.then5.i115:                                    ; preds = %land.lhs.true.i
  %305 = ptrtoint ptr %BlinkingLedState3.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 2, ptr %BlinkingLedState3.i, align 4
  %CurrLedState.i114 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 2
  %306 = ptrtoint ptr %CurrLedState.i114 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 2, ptr %CurrLedState.i114, align 4
  %307 = ptrtoint ptr %surprise_removed.i.i90 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %surprise_removed.i.i90, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool.not.i254.i = icmp eq i8 %308, 0
  br i1 %tobool.not.i254.i, label %lor.lhs.false.i257.i, label %if.then5.i115.if.end7.i_crit_edge

if.then5.i115.if.end7.i_crit_edge:                ; preds = %if.then5.i115
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7.i

lor.lhs.false.i257.i:                             ; preds = %if.then5.i115
  %driver_stopped.i255.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %309 = ptrtoint ptr %driver_stopped.i255.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %driver_stopped.i255.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool1.not.i256.i = icmp eq i8 %310, 0
  br i1 %tobool1.not.i256.i, label %if.end.i260.i, label %lor.lhs.false.i257.i.if.end7.i_crit_edge

lor.lhs.false.i257.i.if.end7.i_crit_edge:         ; preds = %lor.lhs.false.i257.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7.i

if.end.i260.i:                                    ; preds = %lor.lhs.false.i257.i
  %call.i258.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i259.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 1
  %311 = ptrtoint ptr %LedPin.i259.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %LedPin.i259.i, align 4
  %313 = zext i32 %312 to i64
  call void @__sanitizer_cov_trace_switch(i64 %313, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %312, label %if.end.i260.i.sw.epilog.i266.i_crit_edge [
    i32 2, label %sw.bb5.i261.i
    i32 1, label %if.end.i260.i.sw.epilog.sink.split.i264.i_crit_edge
  ]

if.end.i260.i.sw.epilog.sink.split.i264.i_crit_edge: ; preds = %if.end.i260.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i264.i

if.end.i260.i.sw.epilog.i266.i_crit_edge:         ; preds = %if.end.i260.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i266.i

sw.bb5.i261.i:                                    ; preds = %if.end.i260.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i264.i

sw.epilog.sink.split.i264.i:                      ; preds = %sw.bb5.i261.i, %if.end.i260.i.sw.epilog.sink.split.i264.i_crit_edge
  %.sink.i262.i = phi i8 [ 15, %sw.bb5.i261.i ], [ -16, %if.end.i260.i.sw.epilog.sink.split.i264.i_crit_edge ]
  %.sink21.i263.i = phi i8 [ -128, %sw.bb5.i261.i ], [ 8, %if.end.i260.i.sw.epilog.sink.split.i264.i_crit_edge ]
  %314 = and i8 %.sink.i262.i, %call.i258.i
  %315 = or i8 %314, %.sink21.i263.i
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %315) #2
  br label %sw.epilog.i266.i

sw.epilog.i266.i:                                 ; preds = %sw.epilog.sink.split.i264.i, %if.end.i260.i.sw.epilog.i266.i_crit_edge
  %bLedOn.i265.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 14, i32 1, i32 3
  %316 = ptrtoint ptr %bLedOn.i265.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %bLedOn.i265.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %sw.epilog.i266.i, %lor.lhs.false.i257.i.if.end7.i_crit_edge, %if.then5.i115.if.end7.i_crit_edge, %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i112.if.end7.i_crit_edge
  %CurrLedState8.i = getelementptr i8, ptr %work, i32 -68
  %317 = ptrtoint ptr %CurrLedState8.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %CurrLedState8.i, align 4
  %319 = zext i32 %318 to i64
  call void @__sanitizer_cov_trace_switch(i64 %319, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %318, label %if.end7.i.sw.epilog_crit_edge [
    i32 4, label %sw.bb.i120
    i32 8, label %sw.bb16.i
    i32 6, label %sw.bb32.i
    i32 10, label %sw.bb64.i
    i32 9, label %sw.bb99.i
    i32 11, label %sw.bb115.i
    i32 12, label %sw.bb127.i
  ]

if.end7.i.sw.epilog_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb.i120:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn.i116 = getelementptr i8, ptr %work, i32 -64
  %320 = ptrtoint ptr %bLedOn.i116 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %bLedOn.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool9.not.i = icmp eq i8 %321, 0
  %..i117 = select i1 %tobool9.not.i, i32 1, i32 2
  %322 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %..i117, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer.i118 = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %323 = load volatile i32, ptr @jiffies, align 128
  %add.i119 = add i32 %323, 100
  %call15.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer.i118, i32 noundef %add.i119) #2
  br label %sw.epilog

sw.bb16.i:                                        ; preds = %if.end7.i
  %bLedOn17.i = getelementptr i8, ptr %work, i32 -64
  %324 = ptrtoint ptr %bLedOn17.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %bLedOn17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool18.not.i = icmp eq i8 %325, 0
  br i1 %tobool18.not.i, label %if.else25.i, label %if.then19.i

if.then19.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #4
  %326 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 2, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer21.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %327 = load volatile i32, ptr @jiffies, align 128
  %add23.i = add i32 %327, 20
  %call24.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer21.i, i32 noundef %add23.i) #2
  br label %sw.epilog

if.else25.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #4
  %328 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 1, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer27.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %329 = load volatile i32, ptr @jiffies, align 128
  %add29.i = add i32 %329, 10
  %call30.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer27.i, i32 noundef %add29.i) #2
  br label %sw.epilog

sw.bb32.i:                                        ; preds = %if.end7.i
  %BlinkTimes.i121 = getelementptr i8, ptr %work, i32 -56
  %330 = ptrtoint ptr %BlinkTimes.i121 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %BlinkTimes.i121, align 4
  %dec.i122 = add i32 %331, -1
  store i32 %dec.i122, ptr %BlinkTimes.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i122)
  %cmp34.i = icmp eq i32 %dec.i122, 0
  br i1 %cmp34.i, label %if.then38.i, label %if.else51.i130

if.then38.i:                                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedNoLinkBlinkInProgress.i123 = getelementptr i8, ptr %work, i32 -61
  %332 = ptrtoint ptr %bLedNoLinkBlinkInProgress.i123 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 1, ptr %bLedNoLinkBlinkInProgress.i123, align 1
  %333 = ptrtoint ptr %CurrLedState8.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 4, ptr %CurrLedState8.i, align 4
  %bLedOn40.i = getelementptr i8, ptr %work, i32 -64
  %334 = ptrtoint ptr %bLedOn40.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %bLedOn40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool41.not.i = icmp eq i8 %335, 0
  %.235.i = select i1 %tobool41.not.i, i32 1, i32 2
  %336 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %.235.i, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer47.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %337 = load volatile i32, ptr @jiffies, align 128
  %add49.i = add i32 %337, 100
  %call50.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer47.i, i32 noundef %add49.i) #2
  %bLedScanBlinkInProgress.i124 = getelementptr i8, ptr %work, i32 -58
  %338 = ptrtoint ptr %bLedScanBlinkInProgress.i124 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 0, ptr %bLedScanBlinkInProgress.i124, align 2
  br label %sw.epilog

if.else51.i130:                                   ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn52.i125 = getelementptr i8, ptr %work, i32 -64
  %339 = ptrtoint ptr %bLedOn52.i125 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %bLedOn52.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %tobool53.not.i126 = icmp eq i8 %340, 0
  %.236.i = select i1 %tobool53.not.i126, i32 1, i32 2
  %341 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %.236.i, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer59.i127 = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %342 = load volatile i32, ptr @jiffies, align 128
  %add61.i128 = add i32 %342, 18
  %call62.i129 = tail call i32 @mod_timer(ptr noundef %BlinkTimer59.i127, i32 noundef %add61.i128) #2
  br label %sw.epilog

sw.bb64.i:                                        ; preds = %if.end7.i
  %BlinkTimes65.i = getelementptr i8, ptr %work, i32 -56
  %343 = ptrtoint ptr %BlinkTimes65.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %BlinkTimes65.i, align 4
  %dec66.i = add i32 %344, -1
  store i32 %dec66.i, ptr %BlinkTimes65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec66.i)
  %cmp68.i = icmp eq i32 %dec66.i, 0
  br i1 %cmp68.i, label %if.then72.i, label %if.else86.i

if.then72.i:                                      ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedNoLinkBlinkInProgress73.i = getelementptr i8, ptr %work, i32 -61
  %345 = ptrtoint ptr %bLedNoLinkBlinkInProgress73.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 1, ptr %bLedNoLinkBlinkInProgress73.i, align 1
  %346 = ptrtoint ptr %CurrLedState8.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 4, ptr %CurrLedState8.i, align 4
  %bLedOn75.i = getelementptr i8, ptr %work, i32 -64
  %347 = ptrtoint ptr %bLedOn75.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %bLedOn75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %348)
  %tobool76.not.i = icmp eq i8 %348, 0
  %.237.i = select i1 %tobool76.not.i, i32 1, i32 2
  %349 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %.237.i, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer82.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %350 = load volatile i32, ptr @jiffies, align 128
  %add84.i = add i32 %350, 100
  %call85.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer82.i, i32 noundef %add84.i) #2
  %bLedBlinkInProgress.i131 = getelementptr i8, ptr %work, i32 -62
  %351 = ptrtoint ptr %bLedBlinkInProgress.i131 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %bLedBlinkInProgress.i131, align 2
  br label %sw.epilog

if.else86.i:                                      ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn87.i = getelementptr i8, ptr %work, i32 -64
  %352 = ptrtoint ptr %bLedOn87.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %bLedOn87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool88.not.i = icmp eq i8 %353, 0
  %.238.i = select i1 %tobool88.not.i, i32 1, i32 2
  %354 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %.238.i, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer94.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %355 = load volatile i32, ptr @jiffies, align 128
  %add96.i = add i32 %355, 5
  %call97.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer94.i, i32 noundef %add96.i) #2
  br label %sw.epilog

sw.bb99.i:                                        ; preds = %if.end7.i
  %bLedOn100.i = getelementptr i8, ptr %work, i32 -64
  %356 = ptrtoint ptr %bLedOn100.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %bLedOn100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool101.not.i = icmp eq i8 %357, 0
  br i1 %tobool101.not.i, label %if.else108.i, label %if.then102.i

if.then102.i:                                     ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #4
  %358 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 2, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer104.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %359 = load volatile i32, ptr @jiffies, align 128
  %add106.i = add i32 %359, 20
  %call107.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer104.i, i32 noundef %add106.i) #2
  br label %sw.epilog

if.else108.i:                                     ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #4
  %360 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 1, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer110.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %361 = load volatile i32, ptr @jiffies, align 128
  %add112.i = add i32 %361, 10
  %call113.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer110.i, i32 noundef %add112.i) #2
  br label %sw.epilog

sw.bb115.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn116.i = getelementptr i8, ptr %work, i32 -64
  %362 = ptrtoint ptr %bLedOn116.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %bLedOn116.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool117.not.i = icmp eq i8 %363, 0
  %.239.i = select i1 %tobool117.not.i, i32 1, i32 2
  %364 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %.239.i, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer123.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %365 = load volatile i32, ptr @jiffies, align 128
  %add125.i = add i32 %365, 10
  %call126.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer123.i, i32 noundef %add125.i) #2
  br label %sw.epilog

sw.bb127.i:                                       ; preds = %if.end7.i
  %BlinkTimes128.i = getelementptr i8, ptr %work, i32 -56
  %366 = ptrtoint ptr %BlinkTimes128.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %BlinkTimes128.i, align 4
  %dec129.i = add i32 %367, -1
  store i32 %dec129.i, ptr %BlinkTimes128.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec129.i)
  %cmp131.i = icmp eq i32 %dec129.i, 0
  br i1 %cmp131.i, label %if.then132.i, label %sw.bb127.i.if.else148.i_crit_edge

sw.bb127.i.if.else148.i_crit_edge:                ; preds = %sw.bb127.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else148.i

if.then132.i:                                     ; preds = %sw.bb127.i
  %bLedOn133.i = getelementptr i8, ptr %work, i32 -64
  %368 = ptrtoint ptr %bLedOn133.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %bLedOn133.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %369)
  %tobool134.not.i = icmp eq i8 %369, 0
  br i1 %tobool134.not.i, label %if.then141.i, label %if.then135.i

if.then135.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #4
  %370 = ptrtoint ptr %BlinkTimes128.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 1, ptr %BlinkTimes128.i, align 4
  br label %if.else148.i

if.then141.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #4
  %371 = ptrtoint ptr %BlinkTimes128.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 10, ptr %BlinkTimes128.i, align 4
  %372 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 1, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer144.i132 = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %373 = load volatile i32, ptr @jiffies, align 128
  %add146.i133 = add i32 %373, 50
  %call147.i134 = tail call i32 @mod_timer(ptr noundef %BlinkTimer144.i132, i32 noundef %add146.i133) #2
  br label %sw.epilog

if.else148.i:                                     ; preds = %if.then135.i, %sw.bb127.i.if.else148.i_crit_edge
  %bLedOn149.i = getelementptr i8, ptr %work, i32 -64
  %374 = ptrtoint ptr %bLedOn149.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %bLedOn149.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %tobool150.not.i = icmp eq i8 %375, 0
  %.241.i = select i1 %tobool150.not.i, i32 1, i32 2
  %376 = ptrtoint ptr %BlinkingLedState.i88 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %.241.i, ptr %BlinkingLedState.i88, align 4
  %BlinkTimer156.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %377 = load volatile i32, ptr @jiffies, align 128
  %add158.i = add i32 %377, 10
  %call159.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer156.i, i32 noundef %add158.i) #2
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %BlinkingLedState.i135 = getelementptr i8, ptr %work, i32 -52
  %378 = ptrtoint ptr %BlinkingLedState.i135 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %BlinkingLedState.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %379)
  %cmp.i136 = icmp eq i32 %379, 1
  %surprise_removed.i.i137 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %380 = ptrtoint ptr %surprise_removed.i.i137 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %surprise_removed.i.i137, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool.not.i.i138 = icmp eq i8 %381, 0
  br i1 %cmp.i136, label %if.then.i139, label %if.else.i149

if.then.i139:                                     ; preds = %sw.bb6
  br i1 %tobool.not.i.i138, label %lor.lhs.false.i.i142, label %if.then.i139.if.end.i158_crit_edge

if.then.i139.if.end.i158_crit_edge:               ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i158

lor.lhs.false.i.i142:                             ; preds = %if.then.i139
  %driver_stopped.i.i140 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %382 = ptrtoint ptr %driver_stopped.i.i140 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %driver_stopped.i.i140, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool1.not.i.i141 = icmp eq i8 %383, 0
  br i1 %tobool1.not.i.i141, label %if.end.i.i145, label %lor.lhs.false.i.i142.if.end.i158_crit_edge

lor.lhs.false.i.i142.if.end.i158_crit_edge:       ; preds = %lor.lhs.false.i.i142
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i158

if.end.i.i145:                                    ; preds = %lor.lhs.false.i.i142
  %call.i.i143 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i.i144 = getelementptr i8, ptr %work, i32 -72
  %384 = ptrtoint ptr %LedPin.i.i144 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %LedPin.i.i144, align 4
  %386 = zext i32 %385 to i64
  call void @__sanitizer_cov_trace_switch(i64 %386, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %385, label %if.end.i.i145.if.end.sink.split.i156_crit_edge [
    i32 2, label %sw.bb3.i.i146
    i32 1, label %if.end.i.i145.sw.epilog.sink.split.i.i148_crit_edge
  ]

if.end.i.i145.sw.epilog.sink.split.i.i148_crit_edge: ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i148

if.end.i.i145.if.end.sink.split.i156_crit_edge:   ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i156

sw.bb3.i.i146:                                    ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i148

sw.epilog.sink.split.i.i148:                      ; preds = %sw.bb3.i.i146, %if.end.i.i145.sw.epilog.sink.split.i.i148_crit_edge
  %.sink13.i.i147 = phi i8 [ 15, %sw.bb3.i.i146 ], [ -16, %if.end.i.i145.sw.epilog.sink.split.i.i148_crit_edge ]
  %387 = and i8 %.sink13.i.i147, %call.i.i143
  br label %if.end.sink.split.sink.split.i154

if.else.i149:                                     ; preds = %sw.bb6
  br i1 %tobool.not.i.i138, label %lor.lhs.false.i92.i, label %if.else.i149.if.end.i158_crit_edge

if.else.i149.if.end.i158_crit_edge:               ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i158

lor.lhs.false.i92.i:                              ; preds = %if.else.i149
  %driver_stopped.i90.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %388 = ptrtoint ptr %driver_stopped.i90.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %driver_stopped.i90.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool1.not.i91.i = icmp eq i8 %389, 0
  br i1 %tobool1.not.i91.i, label %if.end.i95.i, label %lor.lhs.false.i92.i.if.end.i158_crit_edge

lor.lhs.false.i92.i.if.end.i158_crit_edge:        ; preds = %lor.lhs.false.i92.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i158

if.end.i95.i:                                     ; preds = %lor.lhs.false.i92.i
  %call.i93.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i94.i = getelementptr i8, ptr %work, i32 -72
  %390 = ptrtoint ptr %LedPin.i94.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %LedPin.i94.i, align 4
  %392 = zext i32 %391 to i64
  call void @__sanitizer_cov_trace_switch(i64 %392, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %391, label %if.end.i95.i.if.end.sink.split.i156_crit_edge [
    i32 2, label %sw.bb5.i.i150
    i32 1, label %if.end.i95.i.sw.epilog.sink.split.i96.i_crit_edge
  ]

if.end.i95.i.sw.epilog.sink.split.i96.i_crit_edge: ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i96.i

if.end.i95.i.if.end.sink.split.i156_crit_edge:    ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i156

sw.bb5.i.i150:                                    ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i96.i

sw.epilog.sink.split.i96.i:                       ; preds = %sw.bb5.i.i150, %if.end.i95.i.sw.epilog.sink.split.i96.i_crit_edge
  %.sink.i.i151 = phi i8 [ 15, %sw.bb5.i.i150 ], [ -16, %if.end.i95.i.sw.epilog.sink.split.i96.i_crit_edge ]
  %.sink21.i.i152 = phi i8 [ -128, %sw.bb5.i.i150 ], [ 8, %if.end.i95.i.sw.epilog.sink.split.i96.i_crit_edge ]
  %393 = and i8 %.sink.i.i151, %call.i93.i
  %394 = or i8 %393, %.sink21.i.i152
  br label %if.end.sink.split.sink.split.i154

if.end.sink.split.sink.split.i154:                ; preds = %sw.epilog.sink.split.i96.i, %sw.epilog.sink.split.i.i148
  %.sink99.i = phi i8 [ %394, %sw.epilog.sink.split.i96.i ], [ %387, %sw.epilog.sink.split.i.i148 ]
  %.sink.ph.i153 = phi i8 [ 0, %sw.epilog.sink.split.i96.i ], [ 1, %sw.epilog.sink.split.i.i148 ]
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %.sink99.i) #2
  br label %if.end.sink.split.i156

if.end.sink.split.i156:                           ; preds = %if.end.sink.split.sink.split.i154, %if.end.i95.i.if.end.sink.split.i156_crit_edge, %if.end.i.i145.if.end.sink.split.i156_crit_edge
  %.sink.i155 = phi i8 [ 1, %if.end.i.i145.if.end.sink.split.i156_crit_edge ], [ 0, %if.end.i95.i.if.end.sink.split.i156_crit_edge ], [ %.sink.ph.i153, %if.end.sink.split.sink.split.i154 ]
  %bLedOn.i97.i = getelementptr i8, ptr %work, i32 -64
  %395 = ptrtoint ptr %bLedOn.i97.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %.sink.i155, ptr %bLedOn.i97.i, align 4
  br label %if.end.i158

if.end.i158:                                      ; preds = %if.end.sink.split.i156, %lor.lhs.false.i92.i.if.end.i158_crit_edge, %if.else.i149.if.end.i158_crit_edge, %lor.lhs.false.i.i142.if.end.i158_crit_edge, %if.then.i139.if.end.i158_crit_edge
  %CurrLedState.i157 = getelementptr i8, ptr %work, i32 -68
  %396 = ptrtoint ptr %CurrLedState.i157 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %CurrLedState.i157, align 4
  %398 = zext i32 %397 to i64
  call void @__sanitizer_cov_trace_switch(i64 %398, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %397, label %if.end.i158.sw.epilog_crit_edge [
    i32 6, label %sw.bb.i162
    i32 10, label %sw.bb26.i
  ]

if.end.i158.sw.epilog_crit_edge:                  ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb.i162:                                       ; preds = %if.end.i158
  %BlinkTimes.i159 = getelementptr i8, ptr %work, i32 -56
  %399 = ptrtoint ptr %BlinkTimes.i159 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %BlinkTimes.i159, align 4
  %dec.i160 = add i32 %400, -1
  store i32 %dec.i160, ptr %BlinkTimes.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i160)
  %cmp3.i161 = icmp eq i32 %dec.i160, 0
  br i1 %cmp3.i161, label %if.then6.i165, label %if.else13.i

if.then6.i165:                                    ; preds = %sw.bb.i162
  %401 = ptrtoint ptr %CurrLedState.i157 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 1, ptr %CurrLedState.i157, align 4
  %402 = ptrtoint ptr %BlinkingLedState.i135 to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 1, ptr %BlinkingLedState.i135, align 4
  %bLedOn.i163 = getelementptr i8, ptr %work, i32 -64
  %403 = ptrtoint ptr %bLedOn.i163 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %bLedOn.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %404)
  %tobool9.not.i164 = icmp eq i8 %404, 0
  br i1 %tobool9.not.i164, label %if.then10.i168, label %if.then6.i165.if.end12.i_crit_edge

if.then6.i165.if.end12.i_crit_edge:               ; preds = %if.then6.i165
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12.i

if.then10.i168:                                   ; preds = %if.then6.i165
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer.i166 = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %405 = load volatile i32, ptr @jiffies, align 128
  %add.i167 = add i32 %405, 5
  %call11.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer.i166, i32 noundef %add.i167) #2
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i168, %if.then6.i165.if.end12.i_crit_edge
  %bLedScanBlinkInProgress.i169 = getelementptr i8, ptr %work, i32 -58
  %406 = ptrtoint ptr %bLedScanBlinkInProgress.i169 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 0, ptr %bLedScanBlinkInProgress.i169, align 2
  br label %sw.epilog

if.else13.i:                                      ; preds = %sw.bb.i162
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn14.i = getelementptr i8, ptr %work, i32 -64
  %407 = ptrtoint ptr %bLedOn14.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %bLedOn14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %408)
  %tobool15.not.i170 = icmp eq i8 %408, 0
  %..i171 = select i1 %tobool15.not.i170, i32 1, i32 2
  %409 = ptrtoint ptr %BlinkingLedState.i135 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %..i171, ptr %BlinkingLedState.i135, align 4
  %BlinkTimer21.i172 = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %410 = load volatile i32, ptr @jiffies, align 128
  %add23.i173 = add i32 %410, 18
  %call24.i174 = tail call i32 @mod_timer(ptr noundef %BlinkTimer21.i172, i32 noundef %add23.i173) #2
  br label %sw.epilog

sw.bb26.i:                                        ; preds = %if.end.i158
  %BlinkTimes27.i = getelementptr i8, ptr %work, i32 -56
  %411 = ptrtoint ptr %BlinkTimes27.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %BlinkTimes27.i, align 4
  %dec28.i = add i32 %412, -1
  store i32 %dec28.i, ptr %BlinkTimes27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec28.i)
  %cmp30.i = icmp eq i32 %dec28.i, 0
  br i1 %cmp30.i, label %if.then34.i, label %if.else45.i

if.then34.i:                                      ; preds = %sw.bb26.i
  %413 = ptrtoint ptr %CurrLedState.i157 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 1, ptr %CurrLedState.i157, align 4
  %414 = ptrtoint ptr %BlinkingLedState.i135 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 1, ptr %BlinkingLedState.i135, align 4
  %bLedOn37.i = getelementptr i8, ptr %work, i32 -64
  %415 = ptrtoint ptr %bLedOn37.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %bLedOn37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %416)
  %tobool38.not.i = icmp eq i8 %416, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.then34.i.if.end44.i_crit_edge

if.then34.i.if.end44.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #4
  %BlinkTimer40.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %417 = load volatile i32, ptr @jiffies, align 128
  %add42.i = add i32 %417, 5
  %call43.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer40.i, i32 noundef %add42.i) #2
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then39.i, %if.then34.i.if.end44.i_crit_edge
  %bLedBlinkInProgress.i175 = getelementptr i8, ptr %work, i32 -62
  %418 = ptrtoint ptr %bLedBlinkInProgress.i175 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 0, ptr %bLedBlinkInProgress.i175, align 2
  br label %sw.epilog

if.else45.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn46.i = getelementptr i8, ptr %work, i32 -64
  %419 = ptrtoint ptr %bLedOn46.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %bLedOn46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool47.not.i = icmp eq i8 %420, 0
  %.87.i = select i1 %tobool47.not.i, i32 1, i32 2
  %421 = ptrtoint ptr %BlinkingLedState.i135 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %.87.i, ptr %BlinkingLedState.i135, align 4
  %BlinkTimer53.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %422 = load volatile i32, ptr @jiffies, align 128
  %add55.i = add i32 %422, 5
  %call56.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer53.i, i32 noundef %add55.i) #2
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %BlinkingLedState.i176 = getelementptr i8, ptr %work, i32 -52
  %423 = ptrtoint ptr %BlinkingLedState.i176 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %BlinkingLedState.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %424)
  %cmp.i177 = icmp eq i32 %424, 1
  %surprise_removed.i.i178 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %425 = ptrtoint ptr %surprise_removed.i.i178 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %surprise_removed.i.i178, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %tobool.not.i.i179 = icmp eq i8 %426, 0
  br i1 %cmp.i177, label %if.then.i180, label %if.else.i190

if.then.i180:                                     ; preds = %sw.bb7
  br i1 %tobool.not.i.i179, label %lor.lhs.false.i.i183, label %if.then.i180.if.end.i199_crit_edge

if.then.i180.if.end.i199_crit_edge:               ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i199

lor.lhs.false.i.i183:                             ; preds = %if.then.i180
  %driver_stopped.i.i181 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %427 = ptrtoint ptr %driver_stopped.i.i181 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %driver_stopped.i.i181, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %428)
  %tobool1.not.i.i182 = icmp eq i8 %428, 0
  br i1 %tobool1.not.i.i182, label %if.end.i.i186, label %lor.lhs.false.i.i183.if.end.i199_crit_edge

lor.lhs.false.i.i183.if.end.i199_crit_edge:       ; preds = %lor.lhs.false.i.i183
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i199

if.end.i.i186:                                    ; preds = %lor.lhs.false.i.i183
  %call.i.i184 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i.i185 = getelementptr i8, ptr %work, i32 -72
  %429 = ptrtoint ptr %LedPin.i.i185 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %LedPin.i.i185, align 4
  %431 = zext i32 %430 to i64
  call void @__sanitizer_cov_trace_switch(i64 %431, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %430, label %if.end.i.i186.if.end.sink.split.i197_crit_edge [
    i32 2, label %sw.bb3.i.i187
    i32 1, label %if.end.i.i186.sw.epilog.sink.split.i.i189_crit_edge
  ]

if.end.i.i186.sw.epilog.sink.split.i.i189_crit_edge: ; preds = %if.end.i.i186
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i189

if.end.i.i186.if.end.sink.split.i197_crit_edge:   ; preds = %if.end.i.i186
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i197

sw.bb3.i.i187:                                    ; preds = %if.end.i.i186
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i.i189

sw.epilog.sink.split.i.i189:                      ; preds = %sw.bb3.i.i187, %if.end.i.i186.sw.epilog.sink.split.i.i189_crit_edge
  %.sink13.i.i188 = phi i8 [ 15, %sw.bb3.i.i187 ], [ -16, %if.end.i.i186.sw.epilog.sink.split.i.i189_crit_edge ]
  %432 = and i8 %.sink13.i.i188, %call.i.i184
  br label %if.end.sink.split.sink.split.i195

if.else.i190:                                     ; preds = %sw.bb7
  br i1 %tobool.not.i.i179, label %lor.lhs.false.i61.i, label %if.else.i190.if.end.i199_crit_edge

if.else.i190.if.end.i199_crit_edge:               ; preds = %if.else.i190
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i199

lor.lhs.false.i61.i:                              ; preds = %if.else.i190
  %driver_stopped.i59.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %433 = ptrtoint ptr %driver_stopped.i59.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %driver_stopped.i59.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %434)
  %tobool1.not.i60.i = icmp eq i8 %434, 0
  br i1 %tobool1.not.i60.i, label %if.end.i64.i, label %lor.lhs.false.i61.i.if.end.i199_crit_edge

lor.lhs.false.i61.i.if.end.i199_crit_edge:        ; preds = %lor.lhs.false.i61.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i199

if.end.i64.i:                                     ; preds = %lor.lhs.false.i61.i
  %call.i62.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i63.i = getelementptr i8, ptr %work, i32 -72
  %435 = ptrtoint ptr %LedPin.i63.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %LedPin.i63.i, align 4
  %437 = zext i32 %436 to i64
  call void @__sanitizer_cov_trace_switch(i64 %437, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %436, label %if.end.i64.i.if.end.sink.split.i197_crit_edge [
    i32 2, label %sw.bb5.i.i191
    i32 1, label %if.end.i64.i.sw.epilog.sink.split.i65.i_crit_edge
  ]

if.end.i64.i.sw.epilog.sink.split.i65.i_crit_edge: ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i65.i

if.end.i64.i.if.end.sink.split.i197_crit_edge:    ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i197

sw.bb5.i.i191:                                    ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i65.i

sw.epilog.sink.split.i65.i:                       ; preds = %sw.bb5.i.i191, %if.end.i64.i.sw.epilog.sink.split.i65.i_crit_edge
  %.sink.i.i192 = phi i8 [ 15, %sw.bb5.i.i191 ], [ -16, %if.end.i64.i.sw.epilog.sink.split.i65.i_crit_edge ]
  %.sink21.i.i193 = phi i8 [ -128, %sw.bb5.i.i191 ], [ 8, %if.end.i64.i.sw.epilog.sink.split.i65.i_crit_edge ]
  %438 = and i8 %.sink.i.i192, %call.i62.i
  %439 = or i8 %438, %.sink21.i.i193
  br label %if.end.sink.split.sink.split.i195

if.end.sink.split.sink.split.i195:                ; preds = %sw.epilog.sink.split.i65.i, %sw.epilog.sink.split.i.i189
  %.sink82.i = phi i8 [ %439, %sw.epilog.sink.split.i65.i ], [ %432, %sw.epilog.sink.split.i.i189 ]
  %.sink.ph.i194 = phi i8 [ 0, %sw.epilog.sink.split.i65.i ], [ 1, %sw.epilog.sink.split.i.i189 ]
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %.sink82.i) #2
  br label %if.end.sink.split.i197

if.end.sink.split.i197:                           ; preds = %if.end.sink.split.sink.split.i195, %if.end.i64.i.if.end.sink.split.i197_crit_edge, %if.end.i.i186.if.end.sink.split.i197_crit_edge
  %.sink.i196 = phi i8 [ 1, %if.end.i.i186.if.end.sink.split.i197_crit_edge ], [ 0, %if.end.i64.i.if.end.sink.split.i197_crit_edge ], [ %.sink.ph.i194, %if.end.sink.split.sink.split.i195 ]
  %bLedOn.i66.i = getelementptr i8, ptr %work, i32 -64
  %440 = ptrtoint ptr %bLedOn.i66.i to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %.sink.i196, ptr %bLedOn.i66.i, align 4
  br label %if.end.i199

if.end.i199:                                      ; preds = %if.end.sink.split.i197, %lor.lhs.false.i61.i.if.end.i199_crit_edge, %if.else.i190.if.end.i199_crit_edge, %lor.lhs.false.i.i183.if.end.i199_crit_edge, %if.then.i180.if.end.i199_crit_edge
  %CurrLedState.i198 = getelementptr i8, ptr %work, i32 -68
  %441 = ptrtoint ptr %CurrLedState.i198 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %CurrLedState.i198, align 4
  %443 = zext i32 %442 to i64
  call void @__sanitizer_cov_trace_switch(i64 %443, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %442, label %if.end.i199.sw.epilog_crit_edge [
    i32 10, label %sw.bb.i203
    i32 9, label %sw.bb22.i
  ]

if.end.i199.sw.epilog_crit_edge:                  ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb.i203:                                       ; preds = %if.end.i199
  %BlinkTimes.i200 = getelementptr i8, ptr %work, i32 -56
  %444 = ptrtoint ptr %BlinkTimes.i200 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %BlinkTimes.i200, align 4
  %dec.i201 = add i32 %445, -1
  store i32 %dec.i201, ptr %BlinkTimes.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i201)
  %cmp3.i202 = icmp eq i32 %dec.i201, 0
  br i1 %cmp3.i202, label %if.then6.i206, label %if.else12.i

if.then6.i206:                                    ; preds = %sw.bb.i203
  %446 = ptrtoint ptr %CurrLedState.i198 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 1, ptr %CurrLedState.i198, align 4
  %447 = ptrtoint ptr %BlinkingLedState.i176 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 1, ptr %BlinkingLedState.i176, align 4
  %bLedOn.i204 = getelementptr i8, ptr %work, i32 -64
  %448 = ptrtoint ptr %bLedOn.i204 to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %bLedOn.i204, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %449)
  %tobool9.not.i205 = icmp eq i8 %449, 0
  br i1 %tobool9.not.i205, label %if.then10.i207, label %if.then6.i206.if.end11.i_crit_edge

if.then6.i206.if.end11.i_crit_edge:               ; preds = %if.then6.i206
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11.i

if.then10.i207:                                   ; preds = %if.then6.i206
  %450 = ptrtoint ptr %surprise_removed.i.i178 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %surprise_removed.i.i178, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %451)
  %tobool.not.i69.i = icmp eq i8 %451, 0
  br i1 %tobool.not.i69.i, label %lor.lhs.false.i72.i, label %if.then10.i207.if.end11.i_crit_edge

if.then10.i207.if.end11.i_crit_edge:              ; preds = %if.then10.i207
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11.i

lor.lhs.false.i72.i:                              ; preds = %if.then10.i207
  %driver_stopped.i70.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %452 = ptrtoint ptr %driver_stopped.i70.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %driver_stopped.i70.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %453)
  %tobool1.not.i71.i = icmp eq i8 %453, 0
  br i1 %tobool1.not.i71.i, label %if.end.i75.i, label %lor.lhs.false.i72.i.if.end11.i_crit_edge

lor.lhs.false.i72.i.if.end11.i_crit_edge:         ; preds = %lor.lhs.false.i72.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11.i

if.end.i75.i:                                     ; preds = %lor.lhs.false.i72.i
  %call.i73.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i74.i = getelementptr i8, ptr %work, i32 -72
  %454 = ptrtoint ptr %LedPin.i74.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %LedPin.i74.i, align 4
  %456 = zext i32 %455 to i64
  call void @__sanitizer_cov_trace_switch(i64 %456, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %455, label %if.end.i75.i.sw.epilog.i80.i_crit_edge [
    i32 2, label %sw.bb3.i76.i
    i32 1, label %if.end.i75.i.sw.epilog.sink.split.i78.i_crit_edge
  ]

if.end.i75.i.sw.epilog.sink.split.i78.i_crit_edge: ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i78.i

if.end.i75.i.sw.epilog.i80.i_crit_edge:           ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.i80.i

sw.bb3.i76.i:                                     ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i78.i

sw.epilog.sink.split.i78.i:                       ; preds = %sw.bb3.i76.i, %if.end.i75.i.sw.epilog.sink.split.i78.i_crit_edge
  %.sink13.i77.i = phi i8 [ 15, %sw.bb3.i76.i ], [ -16, %if.end.i75.i.sw.epilog.sink.split.i78.i_crit_edge ]
  %457 = and i8 %.sink13.i77.i, %call.i73.i
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %457) #2
  br label %sw.epilog.i80.i

sw.epilog.i80.i:                                  ; preds = %sw.epilog.sink.split.i78.i, %if.end.i75.i.sw.epilog.i80.i_crit_edge
  %458 = ptrtoint ptr %bLedOn.i204 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 1, ptr %bLedOn.i204, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %sw.epilog.i80.i, %lor.lhs.false.i72.i.if.end11.i_crit_edge, %if.then10.i207.if.end11.i_crit_edge, %if.then6.i206.if.end11.i_crit_edge
  %bLedBlinkInProgress.i208 = getelementptr i8, ptr %work, i32 -62
  %459 = ptrtoint ptr %bLedBlinkInProgress.i208 to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 0, ptr %bLedBlinkInProgress.i208, align 2
  br label %sw.epilog

if.else12.i:                                      ; preds = %sw.bb.i203
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn13.i = getelementptr i8, ptr %work, i32 -64
  %460 = ptrtoint ptr %bLedOn13.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %bLedOn13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %461)
  %tobool14.not.i = icmp eq i8 %461, 0
  %..i209 = select i1 %tobool14.not.i, i32 1, i32 2
  %462 = ptrtoint ptr %BlinkingLedState.i176 to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %..i209, ptr %BlinkingLedState.i176, align 4
  %BlinkTimer.i210 = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %463 = load volatile i32, ptr @jiffies, align 128
  %add.i211 = add i32 %463, 5
  %call20.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer.i210, i32 noundef %add.i211) #2
  br label %sw.epilog

sw.bb22.i:                                        ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #4
  %bLedOn23.i = getelementptr i8, ptr %work, i32 -64
  %464 = ptrtoint ptr %bLedOn23.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %bLedOn23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %465)
  %tobool24.not.i = icmp eq i8 %465, 0
  %.56.i = select i1 %tobool24.not.i, i32 1, i32 2
  %466 = ptrtoint ptr %BlinkingLedState.i176 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %.56.i, ptr %BlinkingLedState.i176, align 4
  %BlinkTimer30.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %467 = load volatile i32, ptr @jiffies, align 128
  %add32.i = add i32 %467, 18
  %call33.i = tail call i32 @mod_timer(ptr noundef %BlinkTimer30.i, i32 noundef %add32.i) #2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @SwLedBlink(ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22.i, %if.else12.i, %if.end11.i, %if.end.i199.sw.epilog_crit_edge, %if.else45.i, %if.end44.i, %if.else13.i, %if.end12.i, %if.end.i158.sw.epilog_crit_edge, %if.else148.i, %if.then141.i, %sw.bb115.i, %if.else108.i, %if.then102.i, %if.else86.i, %if.then72.i, %if.else51.i130, %if.then38.i, %if.else25.i, %if.then19.i, %sw.bb.i120, %if.end7.i.sw.epilog_crit_edge, %SwLedOn.exit201.i, %if.then99.i, %sw.bb84.i, %if.else71.i, %if.end70.i, %if.else30.i, %if.end29.i, %if.end4.i.sw.epilog_crit_edge, %if.else51.i, %if.end50.i, %if.else19.i45, %if.end18.i, %if.end.i.sw.epilog_crit_edge, %if.end202.i, %sw.bb164.i, %if.else151.i, %if.end149.i, %if.else93.i, %if.end92.i, %sw.bb41.i, %sw.bb.i, %if.end31.i.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SwLedBlink(ptr noundef %pLed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pLed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pLed, align 4
  %BlinkingLedState = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 12
  %2 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %BlinkingLedState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %surprise_removed.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %surprise_removed.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %surprise_removed.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %driver_stopped.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %driver_stopped.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %driver_stopped.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 1
  %8 = ptrtoint ptr %LedPin.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %LedPin.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %9, label %if.end.i.if.end.sink.split_crit_edge [
    i32 2, label %sw.bb3.i
    i32 1, label %if.end.i.sw.epilog.sink.split.i_crit_edge
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb3.i, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.sink13.i = phi i8 [ 15, %sw.bb3.i ], [ -16, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %11 = and i8 %.sink13.i, %call.i
  br label %if.end.sink.split.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %lor.lhs.false.i123, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

lor.lhs.false.i123:                               ; preds = %if.else
  %driver_stopped.i121 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %driver_stopped.i121 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %driver_stopped.i121, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i122 = icmp eq i8 %13, 0
  br i1 %tobool1.not.i122, label %if.end.i126, label %lor.lhs.false.i123.if.end_crit_edge

lor.lhs.false.i123.if.end_crit_edge:              ; preds = %lor.lhs.false.i123
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end.i126:                                      ; preds = %lor.lhs.false.i123
  %call.i124 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i125 = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 1
  %14 = ptrtoint ptr %LedPin.i125 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %LedPin.i125, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %15, label %if.end.i126.if.end.sink.split_crit_edge [
    i32 2, label %sw.bb5.i
    i32 1, label %if.end.i126.sw.epilog.sink.split.i127_crit_edge
  ]

if.end.i126.sw.epilog.sink.split.i127_crit_edge:  ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i127

if.end.i126.if.end.sink.split_crit_edge:          ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split

sw.bb5.i:                                         ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i127

sw.epilog.sink.split.i127:                        ; preds = %sw.bb5.i, %if.end.i126.sw.epilog.sink.split.i127_crit_edge
  %.sink.i = phi i8 [ 15, %sw.bb5.i ], [ -16, %if.end.i126.sw.epilog.sink.split.i127_crit_edge ]
  %.sink21.i = phi i8 [ -128, %sw.bb5.i ], [ 8, %if.end.i126.sw.epilog.sink.split.i127_crit_edge ]
  %17 = and i8 %.sink.i, %call.i124
  %18 = or i8 %17, %.sink21.i
  br label %if.end.sink.split.sink.split

if.end.sink.split.sink.split:                     ; preds = %sw.epilog.sink.split.i127, %sw.epilog.sink.split.i
  %.sink179 = phi i8 [ %18, %sw.epilog.sink.split.i127 ], [ %11, %sw.epilog.sink.split.i ]
  %.sink.ph = phi i8 [ 0, %sw.epilog.sink.split.i127 ], [ 1, %sw.epilog.sink.split.i ]
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %.sink179) #2
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end.sink.split.sink.split, %if.end.i126.if.end.sink.split_crit_edge, %if.end.i.if.end.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.end.i.if.end.sink.split_crit_edge ], [ 0, %if.end.i126.if.end.sink.split_crit_edge ], [ %.sink.ph, %if.end.sink.split.sink.split ]
  %bLedOn.i128 = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 3
  %19 = ptrtoint ptr %bLedOn.i128 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %bLedOn.i128, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %lor.lhs.false.i123.if.end_crit_edge, %if.else.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %BlinkTimes = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 11
  %20 = ptrtoint ptr %BlinkTimes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %BlinkTimes, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %BlinkTimes, align 4
  %CurrLedState = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 2
  %22 = ptrtoint ptr %CurrLedState to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %CurrLedState, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %23, label %if.end.if.then35_crit_edge [
    i32 3, label %sw.bb
    i32 8, label %sw.bb6
    i32 9, label %sw.bb28
  ]

if.end.if.then35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then35

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp3 = icmp eq i32 %dec, 0
  br i1 %cmp3, label %sw.bb.if.then35_crit_edge, label %sw.bb64

sw.bb.if.then35_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then35

sw.bb6:                                           ; preds = %if.end
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fw_state.i, align 8
  %27 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %sw.bb6.if.else21_crit_edge, label %land.lhs.true13

sw.bb6.if.else21_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else21

land.lhs.true13:                                  ; preds = %sw.bb6
  %28 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_state.i, align 8
  %30 = trunc i32 %29 to i8
  %31 = lshr i8 %30, 3
  %32 = and i8 %31, 1
  %33 = and i32 %29, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %land.lhs.true13.if.else21_crit_edge, label %land.lhs.true13.if.then35_crit_edge

land.lhs.true13.if.then35_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then35

land.lhs.true13.if.else21_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true13.if.else21_crit_edge, %sw.bb6.if.else21_crit_edge
  %bStopBlinking.0163 = phi i8 [ %32, %land.lhs.true13.if.else21_crit_edge ], [ 0, %sw.bb6.if.else21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp ne i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bStopBlinking.0163)
  %tobool34.not = icmp eq i8 %bStopBlinking.0163, 0
  %or.cond177 = select i1 %cmp23, i1 %tobool34.not, i1 false
  br i1 %or.cond177, label %sw.bb67, label %if.else21.if.then35_crit_edge

if.else21.if.then35_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then35

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp30 = icmp eq i32 %dec, 0
  br i1 %cmp30, label %sw.bb28.if.then35_crit_edge, label %sw.bb72

sw.bb28.if.then35_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then35

if.then35:                                        ; preds = %sw.bb28.if.then35_crit_edge, %if.else21.if.then35_crit_edge, %land.lhs.true13.if.then35_crit_edge, %sw.bb.if.then35_crit_edge, %if.end.if.then35_crit_edge
  %fw_state.i131 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %fw_state.i131 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_state.i131, align 8
  %37 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool38.not = icmp eq i32 %37, 0
  br i1 %tobool38.not, label %if.then35.if.end52_crit_edge, label %land.lhs.true39

if.then35.if.end52_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

land.lhs.true39:                                  ; preds = %if.then35
  %bLedOn = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 3
  %38 = ptrtoint ptr %bLedOn to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bLedOn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool40.not = icmp eq i8 %39, 0
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true46

if.then41:                                        ; preds = %land.lhs.true39
  %surprise_removed.i132 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %40 = ptrtoint ptr %surprise_removed.i132 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %surprise_removed.i132, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i133 = icmp eq i8 %41, 0
  br i1 %tobool.not.i133, label %lor.lhs.false.i136, label %if.then41.if.end52_crit_edge

if.then41.if.end52_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

lor.lhs.false.i136:                               ; preds = %if.then41
  %driver_stopped.i134 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %42 = ptrtoint ptr %driver_stopped.i134 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %driver_stopped.i134, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool1.not.i135 = icmp eq i8 %43, 0
  br i1 %tobool1.not.i135, label %if.end.i139, label %lor.lhs.false.i136.if.end52_crit_edge

lor.lhs.false.i136.if.end52_crit_edge:            ; preds = %lor.lhs.false.i136
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

if.end.i139:                                      ; preds = %lor.lhs.false.i136
  %call.i137 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i138 = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 1
  %44 = ptrtoint ptr %LedPin.i138 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %LedPin.i138, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %45, label %if.end.i139.if.end52.sink.split_crit_edge [
    i32 2, label %sw.bb3.i140
    i32 1, label %if.end.i139.sw.epilog.sink.split.i142_crit_edge
  ]

if.end.i139.sw.epilog.sink.split.i142_crit_edge:  ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i142

if.end.i139.if.end52.sink.split_crit_edge:        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52.sink.split

sw.bb3.i140:                                      ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i142

sw.epilog.sink.split.i142:                        ; preds = %sw.bb3.i140, %if.end.i139.sw.epilog.sink.split.i142_crit_edge
  %.sink13.i141 = phi i8 [ 15, %sw.bb3.i140 ], [ -16, %if.end.i139.sw.epilog.sink.split.i142_crit_edge ]
  %47 = and i8 %.sink13.i141, %call.i137
  br label %if.end52.sink.split.sink.split

land.lhs.true46:                                  ; preds = %land.lhs.true39
  %48 = ptrtoint ptr %bLedOn to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bLedOn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool49.not = icmp eq i8 %49, 0
  br i1 %tobool49.not, label %land.lhs.true46.if.end52_crit_edge, label %if.then50

land.lhs.true46.if.end52_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

if.then50:                                        ; preds = %land.lhs.true46
  %surprise_removed.i147 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %50 = ptrtoint ptr %surprise_removed.i147 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %surprise_removed.i147, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i148 = icmp eq i8 %51, 0
  br i1 %tobool.not.i148, label %lor.lhs.false.i151, label %if.then50.if.end52_crit_edge

if.then50.if.end52_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

lor.lhs.false.i151:                               ; preds = %if.then50
  %driver_stopped.i149 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %52 = ptrtoint ptr %driver_stopped.i149 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %driver_stopped.i149, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool1.not.i150 = icmp eq i8 %53, 0
  br i1 %tobool1.not.i150, label %if.end.i154, label %lor.lhs.false.i151.if.end52_crit_edge

lor.lhs.false.i151.if.end52_crit_edge:            ; preds = %lor.lhs.false.i151
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

if.end.i154:                                      ; preds = %lor.lhs.false.i151
  %call.i152 = tail call zeroext i8 @r8712_read8(ptr noundef %1, i32 noundef 270861042) #2
  %LedPin.i153 = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 1
  %54 = ptrtoint ptr %LedPin.i153 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %LedPin.i153, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %55, label %if.end.i154.if.end52.sink.split_crit_edge [
    i32 2, label %sw.bb5.i155
    i32 1, label %if.end.i154.sw.epilog.sink.split.i158_crit_edge
  ]

if.end.i154.sw.epilog.sink.split.i158_crit_edge:  ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i158

if.end.i154.if.end52.sink.split_crit_edge:        ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52.sink.split

sw.bb5.i155:                                      ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split.i158

sw.epilog.sink.split.i158:                        ; preds = %sw.bb5.i155, %if.end.i154.sw.epilog.sink.split.i158_crit_edge
  %.sink.i156 = phi i8 [ 15, %sw.bb5.i155 ], [ -16, %if.end.i154.sw.epilog.sink.split.i158_crit_edge ]
  %.sink21.i157 = phi i8 [ -128, %sw.bb5.i155 ], [ 8, %if.end.i154.sw.epilog.sink.split.i158_crit_edge ]
  %57 = and i8 %.sink.i156, %call.i152
  %58 = or i8 %57, %.sink21.i157
  br label %if.end52.sink.split.sink.split

if.end52.sink.split.sink.split:                   ; preds = %sw.epilog.sink.split.i158, %sw.epilog.sink.split.i142
  %.sink180 = phi i8 [ %58, %sw.epilog.sink.split.i158 ], [ %47, %sw.epilog.sink.split.i142 ]
  %.sink178.ph = phi i8 [ 0, %sw.epilog.sink.split.i158 ], [ 1, %sw.epilog.sink.split.i142 ]
  tail call void @r8712_write8(ptr noundef %1, i32 noundef 270861042, i8 noundef zeroext %.sink180) #2
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %if.end52.sink.split.sink.split, %if.end.i154.if.end52.sink.split_crit_edge, %if.end.i139.if.end52.sink.split_crit_edge
  %.sink178 = phi i8 [ 1, %if.end.i139.if.end52.sink.split_crit_edge ], [ 0, %if.end.i154.if.end52.sink.split_crit_edge ], [ %.sink178.ph, %if.end52.sink.split.sink.split ]
  %59 = ptrtoint ptr %bLedOn to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink178, ptr %bLedOn, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %lor.lhs.false.i151.if.end52_crit_edge, %if.then50.if.end52_crit_edge, %land.lhs.true46.if.end52_crit_edge, %lor.lhs.false.i136.if.end52_crit_edge, %if.then41.if.end52_crit_edge, %if.then35.if.end52_crit_edge
  %60 = ptrtoint ptr %BlinkTimes to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %BlinkTimes, align 4
  %bLedBlinkInProgress = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 5
  %61 = ptrtoint ptr %bLedBlinkInProgress to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %bLedBlinkInProgress, align 2
  br label %if.end83

sw.bb64:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  %62 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %BlinkingLedState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp56175 = icmp eq i32 %63, 1
  %.176 = select i1 %cmp56175, i32 2, i32 1
  %64 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.176, ptr %BlinkingLedState, align 4
  %BlinkTimer = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %65, 10
  %call66 = tail call i32 @mod_timer(ptr noundef %BlinkTimer, i32 noundef %add) #2
  br label %if.end83

sw.bb67:                                          ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #4
  %66 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %BlinkingLedState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp56172 = icmp eq i32 %67, 1
  %.173 = select i1 %cmp56172, i32 2, i32 1
  %68 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.173, ptr %BlinkingLedState, align 4
  %BlinkTimer68 = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %add70 = add i32 %69, 20
  %call71 = tail call i32 @mod_timer(ptr noundef %BlinkTimer68, i32 noundef %add70) #2
  br label %if.end83

sw.bb72:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #4
  %70 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %BlinkingLedState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp56 = icmp eq i32 %71, 1
  %. = select i1 %cmp56, i32 2, i32 1
  %72 = ptrtoint ptr %BlinkingLedState to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %., ptr %BlinkingLedState, align 4
  %BlinkTimer73 = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %add75 = add i32 %73, 40
  %call76 = tail call i32 @mod_timer(ptr noundef %BlinkTimer73, i32 noundef %add75) #2
  br label %if.end83

if.end83:                                         ; preds = %sw.bb72, %sw.bb67, %sw.bb64, %if.end52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SwLedOn(ptr noundef %padapter, ptr nocapture noundef %pLed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %0 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %surprise_removed, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %2 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %driver_stopped, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861042) #2
  %LedPin = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 1
  %4 = ptrtoint ptr %LedPin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %LedPin, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb3
    i32 1, label %if.end.sw.epilog.sink.split_crit_edge
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %if.end.sw.epilog.sink.split_crit_edge
  %.sink13 = phi i8 [ 15, %sw.bb3 ], [ -16, %if.end.sw.epilog.sink.split_crit_edge ]
  %7 = and i8 %call, %.sink13
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861042, i8 noundef zeroext %7) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %bLedOn = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 3
  %8 = ptrtoint ptr %bLedOn to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bLedOn, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SwLedOff(ptr noundef %padapter, ptr nocapture noundef %pLed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %0 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %surprise_removed, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %2 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %driver_stopped, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861042) #2
  %LedPin = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 1
  %4 = ptrtoint ptr %LedPin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %LedPin, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb5
    i32 1, label %if.end.sw.epilog.sink.split_crit_edge
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 15, %sw.bb5 ], [ -16, %if.end.sw.epilog.sink.split_crit_edge ]
  %.sink21 = phi i8 [ -128, %sw.bb5 ], [ 8, %if.end.sw.epilog.sink.split_crit_edge ]
  %7 = and i8 %call, %.sink
  %8 = or i8 %7, %.sink21
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861042, i8 noundef zeroext %8) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %bLedOn = getelementptr inbounds %struct.LED_871x, ptr %pLed, i32 0, i32 3
  %9 = ptrtoint ptr %bLedOn to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bLedOn, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @InitLed871x.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl8712_led.c", i32 87, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @InitLed871x.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8712/rtl8712_led.c", i32 88, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
