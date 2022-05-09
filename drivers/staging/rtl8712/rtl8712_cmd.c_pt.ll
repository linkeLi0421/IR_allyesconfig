; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl8712_cmd.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl8712_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._cmd_callback = type { i32, ptr }
%struct.fwevent = type { i32, ptr }
%struct.atomic_t = type { i32 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cmd_obj = type { i16, i8, ptr, i32, ptr, i32, %struct.list_head }
%struct.drvint_cmd_parm = type { i32, i32, ptr }
%struct.tx_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@cmd_callback = internal constant { [77 x %struct._cmd_callback], [152 x i8] } { [77 x %struct._cmd_callback] [%struct._cmd_callback zeroinitializer, %struct._cmd_callback { i32 1, ptr null }, %struct._cmd_callback { i32 2, ptr null }, %struct._cmd_callback { i32 3, ptr null }, %struct._cmd_callback { i32 4, ptr @r8712_getbbrfreg_cmdrsp_callback }, %struct._cmd_callback { i32 5, ptr null }, %struct._cmd_callback { i32 6, ptr null }, %struct._cmd_callback { i32 7, ptr null }, %struct._cmd_callback { i32 8, ptr null }, %struct._cmd_callback { i32 9, ptr null }, %struct._cmd_callback { i32 10, ptr null }, %struct._cmd_callback { i32 11, ptr null }, %struct._cmd_callback { i32 12, ptr null }, %struct._cmd_callback { i32 13, ptr null }, %struct._cmd_callback { i32 14, ptr @r8712_joinbss_cmd_callback }, %struct._cmd_callback { i32 15, ptr @r8712_disassoc_cmd_callback }, %struct._cmd_callback { i32 16, ptr @r8712_createbss_cmd_callback }, %struct._cmd_callback { i32 17, ptr null }, %struct._cmd_callback { i32 18, ptr @r8712_survey_cmd_callback }, %struct._cmd_callback { i32 19, ptr null }, %struct._cmd_callback { i32 20, ptr null }, %struct._cmd_callback { i32 21, ptr @r8712_setstaKey_cmdrsp_callback }, %struct._cmd_callback { i32 22, ptr @r8712_setassocsta_cmdrsp_callback }, %struct._cmd_callback { i32 23, ptr null }, %struct._cmd_callback { i32 24, ptr null }, %struct._cmd_callback { i32 25, ptr null }, %struct._cmd_callback { i32 26, ptr null }, %struct._cmd_callback { i32 27, ptr null }, %struct._cmd_callback { i32 28, ptr null }, %struct._cmd_callback { i32 29, ptr null }, %struct._cmd_callback { i32 30, ptr null }, %struct._cmd_callback { i32 31, ptr null }, %struct._cmd_callback { i32 32, ptr null }, %struct._cmd_callback { i32 33, ptr null }, %struct._cmd_callback { i32 34, ptr null }, %struct._cmd_callback { i32 35, ptr null }, %struct._cmd_callback { i32 36, ptr null }, %struct._cmd_callback { i32 37, ptr null }, %struct._cmd_callback { i32 38, ptr null }, %struct._cmd_callback { i32 39, ptr null }, %struct._cmd_callback { i32 40, ptr null }, %struct._cmd_callback { i32 41, ptr null }, %struct._cmd_callback { i32 42, ptr null }, %struct._cmd_callback { i32 43, ptr null }, %struct._cmd_callback { i32 44, ptr null }, %struct._cmd_callback { i32 45, ptr null }, %struct._cmd_callback { i32 46, ptr null }, %struct._cmd_callback { i32 47, ptr null }, %struct._cmd_callback { i32 48, ptr null }, %struct._cmd_callback { i32 49, ptr null }, %struct._cmd_callback { i32 50, ptr null }, %struct._cmd_callback { i32 51, ptr null }, %struct._cmd_callback { i32 52, ptr null }, %struct._cmd_callback { i32 53, ptr null }, %struct._cmd_callback { i32 54, ptr null }, %struct._cmd_callback { i32 55, ptr null }, %struct._cmd_callback { i32 56, ptr null }, %struct._cmd_callback { i32 57, ptr null }, %struct._cmd_callback { i32 58, ptr null }, %struct._cmd_callback { i32 59, ptr null }, %struct._cmd_callback { i32 60, ptr null }, %struct._cmd_callback { i32 61, ptr null }, %struct._cmd_callback { i32 62, ptr null }, %struct._cmd_callback { i32 63, ptr null }, %struct._cmd_callback { i32 64, ptr null }, %struct._cmd_callback { i32 65, ptr null }, %struct._cmd_callback { i32 66, ptr null }, %struct._cmd_callback { i32 67, ptr null }, %struct._cmd_callback { i32 68, ptr null }, %struct._cmd_callback { i32 69, ptr null }, %struct._cmd_callback { i32 70, ptr null }, %struct._cmd_callback { i32 71, ptr null }, %struct._cmd_callback { i32 72, ptr null }, %struct._cmd_callback { i32 73, ptr null }, %struct._cmd_callback { i32 74, ptr null }, %struct._cmd_callback { i32 75, ptr null }, %struct._cmd_callback { i32 76, ptr @r8712_readtssi_cmdrsp_callback }], [152 x i8] zeroinitializer }, align 32
@wlanevents = internal constant { [26 x %struct.fwevent], [48 x i8] } { [26 x %struct.fwevent] [%struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent { i32 0, ptr @r8712_survey_event_callback }, %struct.fwevent { i32 4, ptr @r8712_surveydone_event_callback }, %struct.fwevent { i32 0, ptr @r8712_joinbss_event_callback }, %struct.fwevent { i32 12, ptr @r8712_stassoc_event_callback }, %struct.fwevent { i32 8, ptr @r8712_stadel_event_callback }, %struct.fwevent { i32 0, ptr @r8712_atimdone_event_callback }, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent { i32 0, ptr @r8712_cpwm_event_callback }, %struct.fwevent { i32 0, ptr @r8712_wpspbc_event_callback }, %struct.fwevent { i32 0, ptr @r8712_got_addbareq_event_callback }], [48 x i8] zeroinitializer }, align 32
@check_hw_pbc.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r8712u\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_hw_pbc\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/rtl8712/rtl8712_cmd.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CheckPbcGPIO - PBC is pressed !!!!\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 14, i64 43, i64 78]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 16, i64 36]
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"cmd_callback\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [41 x i8] c"../drivers/staging/rtl8712/rtl8712_cmd.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 139, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"wlanevents\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [43 x i8] c"../drivers/staging/rtl8712/rtl8712_event.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 53, i32 23 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [41 x i8] c"../drivers/staging/rtl8712/rtl8712_cmd.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 58, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @cmd_callback, ptr @wlanevents, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_callback to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlanevents to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_fw_cmd(ptr noundef %pAdapter, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270861168, i32 noundef %cmd) #4
  tail call void @msleep(i32 noundef 100) #4
  %call5 = tail call i32 @r8712_read32(ptr noundef %pAdapter, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not6.not = icmp eq i32 %call5, 0
  br i1 %tobool.not6.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %pollingcnts.07 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %pollingcnts.07, -1
  tail call void @msleep(i32 noundef 20) #4
  %call = tail call i32 @r8712_read32(ptr noundef %pAdapter, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pollingcnts.07)
  %cmp = icmp ugt i32 %pollingcnts.07, 1
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %phi.cmp = icmp ne i32 %dec, 0
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %pollingcnts.0.lcssa = phi i1 [ true, %entry.while.end_crit_edge ], [ %phi.cmp, %while.end.loopexit ]
  %. = zext i1 %pollingcnts.0.lcssa to i8
  ret i8 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_fw_cmd_data(ptr noundef %pAdapter, ptr nocapture noundef %value, i8 noundef zeroext %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag)
  %cmp = icmp eq i8 %flag, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  tail call void @r8712_write32(ptr noundef %pAdapter, i32 noundef 270861172, i32 noundef %1) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @r8712_read32(ptr noundef %pAdapter, i32 noundef 270861172) #4
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_cmd_thread(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 2
  %pwrctrlpriv = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 11
  tail call void @kernel_sigaction(i32 noundef 15, ptr noundef nonnull inttoptr (i32 2 to ptr)) #4
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 16
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 17
  %call161 = tail call i32 @wait_for_completion_interruptible(ptr noundef %cmdpriv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool.not162 = icmp eq i32 %call161, 0
  br i1 %tobool.not162, label %if.end.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %cmd_queue = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 2, i32 2
  %cmd_buf = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 2, i32 4
  %fw_state.i.i.i.i.i = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 1, i32 2
  %fw_rssi.i.i.i.i = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 6, i32 26
  %pwr_mode.i = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 11, i32 6
  %cmd_issued_cnt = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 2, i32 8
  %ishighspeed = getelementptr inbounds %struct.dvobj_priv, ptr %context, i32 0, i32 2
  %cmd_seq = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 2, i32 3
  %bSleep = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 11, i32 10
  br label %if.end

if.end:                                           ; preds = %while.cond.backedge.if.end_crit_edge, %if.end.lr.ph
  %0 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_stopped, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surprise_removed, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.while.end_crit_edge

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call i32 @r8712_register_cmd_alive(ptr noundef %context) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %_next.preheader, label %if.end5.while.cond.backedge_crit_edge

if.end5.while.cond.backedge_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

_next.preheader:                                  ; preds = %if.end5
  %call10158 = tail call ptr @r8712_dequeue_cmd(ptr noundef %cmd_queue) #4
  %tobool11.not159 = icmp eq ptr %call10158, null
  br i1 %tobool11.not159, label %_next.preheader.if.then12_crit_edge, label %_next.preheader.if.end.i_crit_edge

_next.preheader.if.end.i_crit_edge:               ; preds = %_next.preheader
  br label %if.end.i

_next.preheader.if.then12_crit_edge:              ; preds = %_next.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %_next.backedge.if.then12_crit_edge, %_next.preheader.if.then12_crit_edge
  tail call void @r8712_unregister_cmd_alive(ptr noundef %context) #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then76, %if.then59, %if.then12, %if.end5.while.cond.backedge_crit_edge
  %call = tail call i32 @wait_for_completion_interruptible(ptr noundef %cmdpriv) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.if.end_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.backedge.if.end_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %_next.backedge.if.end.i_crit_edge, %_next.preheader.if.end.i_crit_edge
  %call10160 = phi ptr [ %call10, %_next.backedge.if.end.i_crit_edge ], [ %call10158, %_next.preheader.if.end.i_crit_edge ]
  %4 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 32)
  %7 = ptrtoint ptr %call10160 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call10160, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.end.i.if.then16_crit_edge [
    i16 0, label %if.then.i.i
    i16 1, label %if.then.i54.i
    i16 2, label %sw.bb3.i
    i16 3, label %if.then.i59.i
    i16 4, label %sw.bb7.i
    i16 5, label %if.then.i69.i
    i16 43, label %sw.bb11.i
    i16 14, label %sw.bb13.i
    i16 78, label %sw.bb22.i
  ]

if.end.i.if.then16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call10160) #4
  br label %if.then16thread-pre-split

if.then.i54.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call10160) #4
  br label %if.then16thread-pre-split

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call10160) #4
  br label %_next.backedge

if.then.i59.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call10160) #4
  br label %_next.backedge

sw.bb7.i:                                         ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i)
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i.i, align 4
  %rsp.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call10160, i32 0, i32 4
  %11 = ptrtoint ptr %rsp.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rsp.i.i, align 4
  %tobool.not.i61.i = icmp eq ptr %12, null
  br i1 %tobool.not.i61.i, label %sw.bb7.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb7.i.if.end.i.i_crit_edge:                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb7.i
  %rspsz.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call10160, i32 0, i32 5
  %13 = ptrtoint ptr %rspsz.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rspsz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i62.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i62.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = call ptr @memcpy(ptr %12, ptr %val.i.i, i32 %14)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i62.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %sw.bb7.i.if.end.i.i_crit_edge
  %16 = ptrtoint ptr %call10160 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %call10160, align 4
  %idxprom.i63.i = zext i16 %17 to i32
  %callback.i64.i = getelementptr [77 x %struct._cmd_callback], ptr @cmd_callback, i32 0, i32 %idxprom.i63.i, i32 1
  %18 = ptrtoint ptr %callback.i64.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %callback.i64.i, align 4
  %tobool3.not.i.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.else.i65.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call10160) #4
  br label %read_rfreg_hdl.exit.i

if.else.i65.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %19(ptr noundef %context, ptr noundef nonnull %call10160) #4
  br label %read_rfreg_hdl.exit.i

read_rfreg_hdl.exit.i:                            ; preds = %if.else.i65.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i)
  br label %_next.backedge

if.then.i69.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call10160) #4
  br label %_next.backedge

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call10160) #4
  br label %_next.backedge

sw.bb13.i:                                        ; preds = %if.end.i
  tail call void @r8712_joinbss_reset(ptr noundef %context) #4
  %20 = ptrtoint ptr %pwr_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %sw.bb13.i.if.then16thread-pre-split_crit_edge, label %if.then15.i

sw.bb13.i.if.then16thread-pre-split_crit_edge:    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16thread-pre-split

if.then15.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %pwr_mode.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pwr_mode.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %pwrctrlpriv, i32 noundef 0) #4
  tail call void @r8712_set_rpwm(ptr noundef %context, i8 noundef zeroext 12) #4
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #4
  br label %if.then16thread-pre-split

sw.bb22.i:                                        ; preds = %if.end.i
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %call10160, i32 0, i32 2
  %23 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parmbuf.i, align 4
  %tobool.not.i72.i = icmp eq ptr %24, null
  br i1 %tobool.not.i72.i, label %sw.bb22.i.r871x_internal_cmd_hdl.exit.i_crit_edge, label %if.end.i73.i

sw.bb22.i.r871x_internal_cmd_hdl.exit.i_crit_edge: ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %r871x_internal_cmd_hdl.exit.i

if.end.i73.i:                                     ; preds = %sw.bb22.i
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cond.i.i = icmp eq i32 %26, 1
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.end.i73.i.sw.epilog.i.i_crit_edge

if.end.i73.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.i73.i
  tail call fastcc void @check_hw_pbc(ptr noundef %context) #4
  %27 = ptrtoint ptr %fw_state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_state.i.i.i.i.i, align 8
  %29 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %if.then.i.i.i.i

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb.i.i
  tail call void @r8712_write32(ptr noundef %context, i32 noundef 270861168, i32 noundef -201326591) #4
  tail call void @msleep(i32 noundef 100) #4
  %call115.i.i.i.i = tail call i32 @r8712_read32(ptr noundef %context, i32 noundef 270861168) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i.i.i.i)
  %tobool2.not16.not.i.i.i.i = icmp eq i32 %call115.i.i.i.i, 0
  br i1 %tobool2.not16.not.i.i.i.i, label %if.then.i.i.i.i.if.then4.i.i.i.i_crit_edge, label %if.then.i.i.i.i.while.body.i.i.i.i_crit_edge

if.then.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i
  br label %while.body.i.i.i.i

if.then.i.i.i.i.if.then4.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.then.i.i.i.i.while.body.i.i.i.i_crit_edge
  %pollingcnts.017.i.i.i.i = phi i32 [ %dec.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 50, %if.then.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %dec.i.i.i.i = add nsw i32 %pollingcnts.017.i.i.i.i, -1
  tail call void @msleep(i32 noundef 20) #4
  %call1.i.i.i.i = tail call i32 @r8712_read32(ptr noundef %context, i32 noundef 270861168) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp ne i32 %call1.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %dec.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %tobool2.not.i.i.i.i, i1 %cmp.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, label %while.end.i.i.i.i

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %phi.cmp.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i.i, label %while.end.i.i.i.i.if.end.i.i.i.i_crit_edge, label %while.end.i.i.i.i.if.then4.i.i.i.i_crit_edge

while.end.i.i.i.i.if.then4.i.i.i.i_crit_edge:     ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4.i.i.i.i

while.end.i.i.i.i.if.end.i.i.i.i_crit_edge:       ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %while.end.i.i.i.i.if.then4.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.then4.i.i.i.i_crit_edge
  %call5.i.i.i.i = tail call i32 @r8712_read32(ptr noundef %context, i32 noundef 270861172) #4
  %phi.bo.i.i.i.i = lshr i32 %call5.i.i.i.i, 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then4.i.i.i.i, %while.end.i.i.i.i.if.end.i.i.i.i_crit_edge
  %val32.0.i.i.i.i = phi i32 [ %phi.bo.i.i.i.i, %if.then4.i.i.i.i ], [ 0, %while.end.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  %call6.i.i.i.i = tail call i32 @r8712_signal_scale_mapping(i32 noundef %val32.0.i.i.i.i) #4
  %conv.i.i.i.i = trunc i32 %call6.i.i.i.i to i8
  %30 = ptrtoint ptr %fw_rssi.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i.i.i.i, ptr %fw_rssi.i.i.i.i, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end.i.i.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge, %if.end.i73.i.sw.epilog.i.i_crit_edge
  %pbuf1.i.i = getelementptr inbounds %struct.drvint_cmd_parm, ptr %24, i32 0, i32 2
  %31 = ptrtoint ptr %pbuf1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pbuf1.i.i, align 4
  tail call void @kfree(ptr noundef %32) #4
  br label %r871x_internal_cmd_hdl.exit.i

r871x_internal_cmd_hdl.exit.i:                    ; preds = %sw.epilog.i.i, %sw.bb22.i.r871x_internal_cmd_hdl.exit.i_crit_edge
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call10160) #4
  br label %_next.backedge

_next.backedge:                                   ; preds = %if.end72._next.backedge_crit_edge, %r871x_internal_cmd_hdl.exit.i, %sw.bb11.i, %if.then.i69.i, %read_rfreg_hdl.exit.i, %if.then.i59.i, %sw.bb3.i
  %call10 = tail call ptr @r8712_dequeue_cmd(ptr noundef %cmd_queue) #4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %_next.backedge.if.then12_crit_edge, label %_next.backedge.if.end.i_crit_edge

_next.backedge.if.end.i_crit_edge:                ; preds = %_next.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

_next.backedge.if.then12_crit_edge:               ; preds = %_next.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then16thread-pre-split:                        ; preds = %if.then15.i, %sw.bb13.i.if.then16thread-pre-split_crit_edge, %if.then.i54.i, %if.then.i.i
  %33 = ptrtoint ptr %call10160 to i32
  call void @__asan_load2_noabort(i32 %33)
  %.pr = load i16, ptr %call10160, align 4
  br label %if.then16

if.then16:                                        ; preds = %if.then16thread-pre-split, %if.end.i.if.then16_crit_edge
  %34 = phi i16 [ %.pr, %if.then16thread-pre-split ], [ %8, %if.end.i.if.then16_crit_edge ]
  %35 = ptrtoint ptr %cmd_issued_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmd_issued_cnt, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %cmd_issued_cnt, align 4
  %cmdsz18 = getelementptr inbounds %struct.cmd_obj, ptr %call10160, i32 0, i32 3
  %37 = ptrtoint ptr %cmdsz18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cmdsz18, align 4
  %sub = add i32 %38, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %add19 = add i32 %or, 41
  %sub20 = add i32 %or, 9
  %and = and i32 %sub20, 65528
  %39 = tail call i32 @llvm.bswap.i32(i32 %and)
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %5, align 4
  %or21 = or i32 %39, %41
  store i32 %or21, ptr %5, align 4
  %42 = ptrtoint ptr %ishighspeed to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ishighspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool22.not = icmp eq i8 %43, 0
  br i1 %tobool22.not, label %if.end30, label %if.then23

if.then23:                                        ; preds = %if.then16
  %rem = and i32 %add19, 504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.then23.if.end38_crit_edge, label %if.then23.if.else35_crit_edge

if.then23.if.else35_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else35

if.then23.if.end38_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end30:                                         ; preds = %if.then16
  %rem26 = and i32 %add19, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem26)
  %cmp27.not = icmp eq i32 %rem26, 0
  br i1 %cmp27.not, label %if.end30.if.end38_crit_edge, label %if.end30.if.else35_crit_edge

if.end30.if.else35_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else35

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.else35:                                        ; preds = %if.end30.if.else35_crit_edge, %if.then23.if.else35_crit_edge
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.end30.if.end38_crit_edge, %if.then23.if.end38_crit_edge
  %.sink = phi i32 [ 8192, %if.else35 ], [ 10240, %if.then23.if.end38_crit_edge ], [ 10240, %if.end30.if.end38_crit_edge ]
  %tobool31.not153 = phi i1 [ true, %if.else35 ], [ false, %if.then23.if.end38_crit_edge ], [ false, %if.end30.if.end38_crit_edge ]
  %or37 = or i32 %or21, %.sink
  %or40 = or i32 %or37, 140
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or40, ptr %5, align 4
  %txdw1 = getelementptr inbounds %struct.tx_desc, ptr %5, i32 0, i32 1
  %45 = ptrtoint ptr %txdw1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %txdw1, align 4
  %or41 = or i32 %46, 1245184
  store i32 %or41, ptr %txdw1, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 8
  %and42 = and i32 %add, 65528
  %47 = ptrtoint ptr %call10160 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %call10160, align 4
  %conv = zext i16 %48 to i32
  %shl = shl nuw i32 %conv, 16
  %or44 = or i32 %shl, %and42
  %49 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cmd_seq, align 4
  %conv45 = zext i8 %50 to i32
  %shl46 = shl nuw i32 %conv45, 24
  %or47 = or i32 %or44, %shl46
  %51 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %add.ptr, align 4
  %add.ptr48 = getelementptr i32, ptr %5, i32 10
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call10160, i32 0, i32 2
  %53 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parmbuf, align 4
  %55 = ptrtoint ptr %cmdsz18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmdsz18, align 4
  %57 = call ptr @memcpy(ptr %add.ptr48, ptr %54, i32 %56)
  %add52 = add i32 %or, 49
  %58 = select i1 %tobool31.not153, i32 %add19, i32 %add52
  tail call void @r8712_write_mem(ptr noundef %context, i32 noundef 272171008, i32 noundef %58, ptr noundef %5) #4
  %59 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cmd_seq, align 4
  %inc55 = add i8 %60, 1
  store i8 %inc55, ptr %cmd_seq, align 4
  %61 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %34, label %if.end38.if.end72_crit_edge [
    i16 16, label %if.then59
    i16 36, label %if.then67
  ]

if.end38.if.end72_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then59:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %res = getelementptr inbounds %struct.cmd_obj, ptr %call10160, i32 0, i32 1
  %62 = ptrtoint ptr %res to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %res, align 2
  tail call void @r8712_createbss_cmd_callback(ptr noundef %context, ptr noundef nonnull %call10160) #4
  br label %while.cond.backedge

if.then67:                                        ; preds = %if.end38
  %63 = ptrtoint ptr %bSleep to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bSleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool69.not = icmp eq i32 %64, 0
  br i1 %tobool69.not, label %if.then67.if.end72_crit_edge, label %if.then70

if.then67.if.end72_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then70:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_lock_nested(ptr noundef %pwrctrlpriv, i32 noundef 0) #4
  tail call void @r8712_set_rpwm(ptr noundef %context, i8 noundef zeroext 2) #4
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then67.if.end72_crit_edge, %if.end38.if.end72_crit_edge
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call10160) #4
  %65 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %cmd_queue, align 4
  %cmp.i.not = icmp eq ptr %66, %cmd_queue
  br i1 %cmp.i.not, label %if.then76, label %if.end72._next.backedge_crit_edge

if.end72._next.backedge_crit_edge:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %_next.backedge

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @r8712_unregister_cmd_alive(ptr noundef %context) #4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %cmd_queue81 = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 2, i32 2
  %call82163 = tail call ptr @r8712_dequeue_cmd(ptr noundef %cmd_queue81) #4
  %tobool83.not164 = icmp eq ptr %call82163, null
  br i1 %tobool83.not164, label %while.end.do.end_crit_edge, label %while.end.if.end85_crit_edge

while.end.if.end85_crit_edge:                     ; preds = %while.end
  br label %if.end85

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end85:                                         ; preds = %if.end85.if.end85_crit_edge, %while.end.if.end85_crit_edge
  %call82165 = phi ptr [ %call82, %if.end85.if.end85_crit_edge ], [ %call82163, %while.end.if.end85_crit_edge ]
  tail call void @r8712_free_cmd_obj(ptr noundef nonnull %call82165) #4
  %call82 = tail call ptr @r8712_dequeue_cmd(ptr noundef %cmd_queue81) #4
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.end85.do.end_crit_edge, label %if.end85.if.end85_crit_edge

if.end85.if.end85_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.end85.do.end_crit_edge:                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end85.do.end_crit_edge, %while.end.do.end_crit_edge
  %terminate_cmdthread_comp = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 2, i32 1
  tail call void @complete(ptr noundef %terminate_cmdthread_comp) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_register_cmd_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_dequeue_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_unregister_cmd_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write_mem(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_set_rpwm(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_cmd_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_event_handle(ptr noundef %padapter, ptr noundef %peventbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %peventbuf, null
  br i1 %tobool.not, label %entry._abort_event__crit_edge, label %if.end

entry._abort_event__crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_abort_event_

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %peventbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peventbuf, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr i32 %2, 24
  %conv2 = and i32 %shr, 127
  %event_seq = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %event_seq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %event_seq, align 4
  %conv8 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv8)
  %cmp.not = icmp eq i32 %conv2, %conv8
  br i1 %cmp.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = trunc i32 %shr to i8
  %6 = add i8 %5, 1
  %conv13 = and i8 %6, 127
  %7 = ptrtoint ptr %event_seq to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %event_seq, align 4
  br label %_abort_event_

if.end15:                                         ; preds = %if.end
  %shr3 = lshr i32 %2, 16
  %conv16 = and i32 %shr3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %conv16)
  %cmp17 = icmp ugt i32 %conv16, 25
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %8 = trunc i32 %shr to i8
  %9 = add i8 %8, 1
  %conv23 = and i8 %9, 127
  %10 = ptrtoint ptr %event_seq to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv23, ptr %event_seq, align 4
  br label %_abort_event_

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv16)
  %cmp26 = icmp eq i32 %conv16, 8
  %conv28 = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 884, i32 %conv28)
  %cmp29 = icmp ugt i32 %conv28, 884
  %or.cond = select i1 %cmp26, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %11 = trunc i32 %shr to i8
  %12 = add i8 %11, 1
  %conv35 = and i8 %12, 127
  %13 = ptrtoint ptr %event_seq to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv35, ptr %event_seq, align 4
  br label %_abort_event_

if.end38:                                         ; preds = %if.else
  %arrayidx = getelementptr [26 x %struct.fwevent], ptr @wlanevents, i32 0, i32 %conv16
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool39.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv28)
  %cmp45.not = icmp eq i32 %15, %conv28
  %or.cond113 = select i1 %tobool39.not, i1 true, i1 %cmp45.not
  br i1 %or.cond113, label %if.else53, label %if.then47

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %16 = trunc i32 %shr to i8
  %17 = add i8 %16, 1
  %conv51 = and i8 %17, 127
  %18 = ptrtoint ptr %event_seq to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv51, ptr %event_seq, align 4
  br label %_abort_event_

if.else53:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28)
  %cmp55 = icmp ne i32 %conv28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %conv16)
  %cmp59.not = icmp eq i32 %conv16, 24
  %or.cond114 = select i1 %cmp55, i1 true, i1 %cmp59.not
  br i1 %or.cond114, label %if.end68, label %if.then61

if.then61:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #6
  %19 = trunc i32 %shr to i8
  %20 = add i8 %19, 1
  %conv65 = and i8 %20, 127
  %21 = ptrtoint ptr %event_seq to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv65, ptr %event_seq, align 4
  br label %_abort_event_

if.end68:                                         ; preds = %if.else53
  %inc = add i8 %4, 1
  %22 = tail call i8 @llvm.smax.i8(i8 %inc, i8 0)
  %23 = ptrtoint ptr %event_seq to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %event_seq, align 4
  %24 = lshr i32 8372479, %conv16
  %25 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool80.not.not = icmp eq i32 %25, 0
  br i1 %tobool80.not.not, label %if.then81, label %if.end68.if.end82_crit_edge

if.end68.if.end82_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.then81:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %event_callback79 = getelementptr [26 x %struct.fwevent], ptr @wlanevents, i32 0, i32 %conv16, i32 1
  %26 = ptrtoint ptr %event_callback79 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %event_callback79, align 4
  %add.ptr = getelementptr i32, ptr %peventbuf, i32 2
  tail call void %27(ptr noundef %padapter, ptr noundef %add.ptr) #4
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end68.if.end82_crit_edge
  %evt_done_cnt = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %evt_done_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %evt_done_cnt, align 4
  %inc83 = add i32 %29, 1
  store i32 %inc83, ptr %evt_done_cnt, align 4
  br label %_abort_event_

_abort_event_:                                    ; preds = %if.end82, %if.then61, %if.then47, %if.then31, %if.then19, %if.then10, %entry._abort_event__crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_joinbss_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_hw_pbc(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861041, i8 noundef zeroext 8) #4
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861038) #4
  %0 = and i8 %call, -17
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270861038, i8 noundef zeroext %0) #4
  %call2 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270861036) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2)
  %cmp = icmp eq i8 %call2, -1
  %1 = and i8 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_hw_pbc.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_hw_pbc, %if.then13)) #4
          to label %do.end16 [label %if.then13], !srcloc !20

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 24
  %2 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @check_hw_pbc.__UNIQUE_ID_ddebug346, ptr noundef %3, ptr noundef nonnull @.str.3) #4
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body8
  %pid = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 28
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp17 = icmp eq i32 %5, 0
  br i1 %cmp17, label %do.end16.cleanup_crit_edge, label %if.end20

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call ptr @find_vpid(i32 noundef %5) #4
  %call23 = tail call i32 @kill_pid(ptr noundef %call22, i32 noundef 10, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_signal_scale_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_getbbrfreg_cmdrsp_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_joinbss_cmd_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_disassoc_cmd_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_createbss_cmd_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_survey_cmd_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_setstaKey_cmdrsp_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_setassocsta_cmdrsp_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_readtssi_cmdrsp_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_survey_event_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_surveydone_event_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_joinbss_event_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_stassoc_event_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_stadel_event_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_atimdone_event_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_cpwm_event_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_wpspbc_event_callback(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_got_addbareq_event_callback(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl8712_cmd.c", i32 58, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @check_hw_pbc.__UNIQUE_ID_ddebug346, !1, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!6 = !{ptr @cmd_callback, !7, !"cmd_callback", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/rtl8712_cmd.h", i32 139, i32 29}
!8 = !{ptr @wlanevents, !9, !"wlanevents", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8712/rtl8712_event.h", i32 53, i32 23}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{i64 2148701875, i64 2148701880, i64 2148701893, i64 2148701937, i64 2148701971, i64 2148701992}
