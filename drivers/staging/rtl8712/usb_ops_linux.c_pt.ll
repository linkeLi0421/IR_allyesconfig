; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/usb_ops_linux.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/usb_ops_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.intf_priv = type { ptr, ptr, ptr, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.intf_hdl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.118, i32 }
%struct.atomic_t = type { i32 }
%union.anon.118 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.io_queue = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.intf_hdl }
%struct.recv_buf = type { %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, ptr, [8 x i16], [8 x ptr], [8 x i8], [8 x i8] }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], ptr }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, [8 x ptr], i32 }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"xmit_bh => driver_stopped or surprise_removed\0A\00", [49 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERROR: URB IS IN PROGRESS!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"r8712u: pipe error: (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.ffaddr2pipehdl = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -1073414144, i32 -1073348608, i32 -1073381376, i32 -1073610752, i32 -1073577984, i32 -1073545216, i32 -1073512448, i32 -1073643392, i32 -1073315840, i32 -1073446784], [56 x i8] zeroinitializer }, align 32
@switch.table.ffaddr2pipehdl.4 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -1073315840, i32 -1073315840, i32 -1073315840, i32 -1073610752, i32 -1073577984, i32 -1073545216, i32 -1073512448, i32 -1073643392, i32 -1073315840, i32 -1073643392], [56 x i8] zeroinitializer }, align 32
@switch.table.ffaddr2pipehdl.5 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -1073315840, i32 -1073315840, i32 -1073315840, i32 -1073610752, i32 -1073545216, i32 -1073545216, i32 -1073545216, i32 -1073643392, i32 -1073315840, i32 -1073643392], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 11]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.7 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4294967181, i64 4294967188, i64 4294967225, i64 4294967264, i64 4294967274, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.8 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 320, i32 33 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 87, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 234, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [43 x i8] c"../drivers/staging/rtl8712/usb_ops_linux.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 371, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"switch.table.ffaddr2pipehdl\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [30 x i8] c"switch.table.ffaddr2pipehdl.4\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [30 x i8] c"switch.table.ffaddr2pipehdl.5\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @init_completion.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @switch.table.ffaddr2pipehdl, ptr @switch.table.ffaddr2pipehdl.4, ptr @switch.table.ffaddr2pipehdl.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ffaddr2pipehdl to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ffaddr2pipehdl.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ffaddr2pipehdl.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_usb_init_intf_priv(ptr noundef %pintfpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #7
  %piorw_urb = getelementptr inbounds %struct.intf_priv, ptr %pintfpriv, i32 0, i32 2
  %0 = ptrtoint ptr %piorw_urb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %piorw_urb, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %io_retevt_comp = getelementptr inbounds %struct.intf_priv, ptr %pintfpriv, i32 0, i32 3
  %1 = ptrtoint ptr %io_retevt_comp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %io_retevt_comp, align 4
  %wait.i = getelementptr inbounds %struct.intf_priv, ptr %pintfpriv, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_usb_unload_intf_priv(ptr nocapture noundef readonly %pintfpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %piorw_urb = getelementptr inbounds %struct.intf_priv, ptr %pintfpriv, i32 0, i32 2
  %0 = ptrtoint ptr %piorw_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %piorw_urb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %piorw_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %piorw_urb, align 4
  tail call void @usb_free_urb(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_usb_write_mem(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %wmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %pintfpriv1 = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 3
  %2 = ptrtoint ptr %pintfpriv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pintfpriv1, align 4
  %pio_queue2 = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pio_queue2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pio_queue2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pusbdev, align 4
  %piorw_urb3 = getelementptr inbounds %struct.intf_priv, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %piorw_urb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %piorw_urb3, align 4
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %driver_stopped, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %surprise_removed, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %pnp_bstop_trx = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 11, i32 18
  %16 = ptrtoint ptr %pnp_bstop_trx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pnp_bstop_trx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %call = tail call fastcc i32 @ffaddr2pipehdl(ptr noundef %7, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 8
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 10
  %19 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %wmem, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cnt, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 28
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @usb_write_mem_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 27
  %23 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %5, ptr %context4.i, align 4
  %call10 = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 2592) #7
  %io_retevt_comp = getelementptr inbounds %struct.intf_priv, ptr %3, i32 0, i32 3
  %call11 = tail call i32 @wait_for_completion_interruptible(ptr noundef %io_retevt_comp) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ffaddr2pipehdl(ptr nocapture noundef readonly %pdvobj, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %pdvobj, i32 0, i32 5
  %0 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusbdev, align 4
  %nr_endpoint = getelementptr inbounds %struct.dvobj_priv, ptr %pdvobj, i32 0, i32 1
  %2 = ptrtoint ptr %nr_endpoint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_endpoint, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end73_crit_edge [
    i32 11, label %if.then
    i32 6, label %if.then32
    i32 4, label %if.then56
  ]

entry.if.end73_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then:                                          ; preds = %entry
  %5 = add i32 %addr, -271646720
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %7 = icmp ult i32 %6, 10
  br i1 %7, label %switch.lookup, label %if.then.if.end73_crit_edge

if.then.if.end73_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then32:                                        ; preds = %entry
  %8 = add i32 %addr, -271646720
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %switch.lookup137, label %if.then32.if.end73_crit_edge

if.then32.if.end73_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then56:                                        ; preds = %entry
  %11 = add i32 %addr, -271646720
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %13 = icmp ult i32 %12, 10
  br i1 %13, label %switch.hole_check, label %if.then56.if.end73_crit_edge

if.then56.if.end73_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.ffaddr2pipehdl, i32 0, i32 %6
  br label %if.end73.sink.split

switch.lookup137:                                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep138 = getelementptr inbounds [10 x i32], ptr @switch.table.ffaddr2pipehdl.4, i32 0, i32 %9
  br label %if.end73.sink.split

switch.hole_check:                                ; preds = %if.then56
  %switch.maskindex = trunc i32 %12 to i16
  %switch.shifted = lshr i16 943, %switch.maskindex
  %14 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %switch.lobit.not = icmp eq i16 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end73_crit_edge, label %switch.lookup141

switch.hole_check.if.end73_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

switch.lookup141:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep142 = getelementptr inbounds [10 x i32], ptr @switch.table.ffaddr2pipehdl.5, i32 0, i32 %12
  br label %if.end73.sink.split

if.end73.sink.split:                              ; preds = %switch.lookup141, %switch.lookup137, %switch.lookup
  %switch.gep142.sink = phi ptr [ %switch.gep142, %switch.lookup141 ], [ %switch.gep138, %switch.lookup137 ], [ %switch.gep, %switch.lookup ]
  %15 = ptrtoint ptr %switch.gep142.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load143 = load i32, ptr %switch.gep142.sink, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 8
  %shl.i126 = shl i32 %17, 8
  %or51 = or i32 %shl.i126, %switch.load143
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %switch.hole_check.if.end73_crit_edge, %if.then56.if.end73_crit_edge, %if.then32.if.end73_crit_edge, %if.then.if.end73_crit_edge, %entry.if.end73_crit_edge
  %pipe.0 = phi i32 [ 0, %if.then.if.end73_crit_edge ], [ 0, %if.then32.if.end73_crit_edge ], [ 0, %if.then56.if.end73_crit_edge ], [ 0, %entry.if.end73_crit_edge ], [ %or51, %if.end73.sink.split ], [ 0, %switch.hole_check.if.end73_crit_edge ]
  ret i32 %pipe.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_write_mem_complete(ptr nocapture noundef readonly %purb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pintfpriv1 = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %pintfpriv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pintfpriv1, align 4
  %adapter = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  %status = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %7, label %if.else [
    i32 0, label %entry.if.end5_crit_edge
    i32 -108, label %if.then4
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 16
  %9 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %driver_stopped, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 17
  %10 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %surprise_removed, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4, %entry.if.end5_crit_edge
  %io_retevt_comp = getelementptr inbounds %struct.intf_priv, ptr %3, i32 0, i32 3
  tail call void @complete(ptr noundef %io_retevt_comp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_usb_read_port(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %rmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pintfpriv1 = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 3
  %0 = ptrtoint ptr %pintfpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfpriv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pusbdev, align 4
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %driver_stopped, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 17
  %10 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %surprise_removed, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %pnp_bstop_trx = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 11, i32 18
  %12 = ptrtoint ptr %pnp_bstop_trx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pnp_bstop_trx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp ne i8 %13, 0
  %tobool6.not = icmp eq ptr %rmem, null
  %or.cond = or i1 %tobool6.not, %tobool4.not
  br i1 %or.cond, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  tail call void @r8712_init_recvbuf(ptr noundef %5, ptr noundef nonnull %rmem) #7
  %free_recv_skb_queue = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 6, i32 17
  %call = tail call ptr @skb_dequeue(ptr noundef %free_recv_skb_queue) #7
  %pskb = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 5
  %14 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %pskb, align 4
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then9:                                         ; preds = %if.end
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 24
  %15 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pnetdev, align 8
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %16, i32 noundef 9612, i32 noundef 2592) #7
  %17 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %pskb, align 4
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.then9.cleanup_crit_edge, label %if.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %19 to i32
  %and = and i32 %20, 511
  %sub = sub nuw nsw i32 512, %and
  %add.ptr.i = getelementptr i8, ptr %19, i32 %sub
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %22, i32 %sub
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %23 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pskb, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end15, %if.end.if.end42_crit_edge
  %call.sink106 = phi ptr [ %24, %if.end15 ], [ %call, %if.end.if.end42_crit_edge ]
  %head28 = getelementptr inbounds %struct.sk_buff, ptr %call.sink106, i32 0, i32 18
  %25 = ptrtoint ptr %head28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head28, align 8
  %phead29 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 9
  %27 = ptrtoint ptr %phead29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %phead29, align 4
  %data31 = getelementptr inbounds %struct.sk_buff, ptr %call.sink106, i32 0, i32 19
  %28 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data31, align 4
  %pdata32 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 10
  %30 = ptrtoint ptr %pdata32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %pdata32, align 4
  %tail.i102 = getelementptr inbounds %struct.sk_buff, ptr %call.sink106, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i102 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i102, align 8
  %ptail35 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 11
  %33 = ptrtoint ptr %ptail35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %ptail35, align 4
  %end.i103 = getelementptr inbounds %struct.sk_buff, ptr %call.sink106, i32 0, i32 17
  %34 = ptrtoint ptr %end.i103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i103, align 4
  %pend38 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 12
  %36 = ptrtoint ptr %pend38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %pend38, align 4
  %37 = load ptr, ptr %data31, align 4
  %pbuf41 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 13
  %38 = ptrtoint ptr %pbuf41 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %pbuf41, align 4
  %purb43 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 4
  %39 = ptrtoint ptr %purb43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %purb43, align 4
  %call44 = tail call fastcc i32 @ffaddr2pipehdl(ptr noundef %3, i32 noundef %addr), !range !19
  %dev1.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %7, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 10
  %42 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call44, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 14
  %43 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %37, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 19
  %44 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 9100, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 28
  %45 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @r8712_usb_read_port_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 27
  %46 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %rmem, ptr %context4.i, align 4
  %call46 = tail call i32 @usb_submit_urb(ptr noundef %40, i32 noundef 2592) #7
  %47 = add i32 %call46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %switch.selectcmp = icmp ult i32 %47, 2
  %48 = zext i1 %switch.selectcmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then9.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ %48, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_init_recvbuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8712_usb_read_port_complete(ptr nocapture noundef readonly %purb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %adapter = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %surprise_removed, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %driver_stopped, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then2
    i32 -22, label %if.end.sw.bb_crit_edge
    i32 -32, label %if.end.sw.bb_crit_edge71
    i32 -19, label %if.end.sw.bb_crit_edge72
    i32 -108, label %if.end.sw.bb_crit_edge73
    i32 -2, label %sw.bb24
    i32 -71, label %if.end.sw.bb29_crit_edge
    i32 -115, label %sw.bb31
  ]

if.end.sw.bb29_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end.sw.bb_crit_edge73:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge72:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge71:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  %13 = add i32 %12, -9101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9077, i32 %13)
  %14 = icmp ult i32 %13, -9077
  br i1 %14, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %ff_hwaddr = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 6, i32 15
  %15 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ff_hwaddr, align 4
  tail call void @r8712_read_port(ptr noundef %3, i32 noundef %16, i32 noundef 0, ptr noundef %1) #7
  br label %cleanup

if.else:                                          ; preds = %if.then2
  %pskb8 = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %pskb8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pskb8, align 4
  %transfer_len = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %transfer_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %12, ptr %transfer_len, align 4
  %pbuf10 = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %pbuf10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pbuf10, align 4
  %add.ptr = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %24 = and i32 %23, -16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16711680, i32 %24)
  %cmp12 = icmp eq i32 %24, -16711680
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r8712_rxcmd_event_hdl(ptr noundef %3, ptr noundef %21) #7
  %rx_skb_queue = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 6, i32 18
  tail call void @skb_queue_tail(ptr noundef %rx_skb_queue, ptr noundef %18) #7
  %ff_hwaddr14 = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 6, i32 15
  %25 = ptrtoint ptr %ff_hwaddr14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ff_hwaddr14, align 4
  tail call void @r8712_read_port(ptr noundef %3, i32 noundef %26, i32 noundef 0, ptr noundef %1) #7
  br label %cleanup

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_length, align 4
  %call = tail call ptr @skb_put(ptr noundef %18, i32 noundef %28) #7
  %rx_skb_queue17 = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 6, i32 18
  tail call void @skb_queue_tail(ptr noundef %rx_skb_queue17, ptr noundef %18) #7
  %recv_tasklet = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 6, i32 16
  tail call fastcc void @tasklet_hi_schedule(ptr noundef %recv_tasklet)
  %ff_hwaddr18 = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 6, i32 15
  %29 = ptrtoint ptr %ff_hwaddr18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ff_hwaddr18, align 4
  tail call void @r8712_read_port(ptr noundef %3, i32 noundef %30, i32 noundef 0, ptr noundef %1) #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge71, %if.end.sw.bb_crit_edge72, %if.end.sw.bb_crit_edge73
  %31 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %driver_stopped, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %suspended = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 18
  %32 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %suspended, align 2, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool25.not = icmp eq i8 %33, 0
  br i1 %tobool25.not, label %if.then26, label %sw.bb24.sw.bb29_crit_edge

sw.bb24.sw.bb29_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.then26:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %driver_stopped, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %sw.bb24.sw.bb29_crit_edge, %if.end.sw.bb29_crit_edge
  %ff_hwaddr30 = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 6, i32 15
  %35 = ptrtoint ptr %ff_hwaddr30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ff_hwaddr30, align 4
  tail call void @r8712_read_port(ptr noundef %3, i32 noundef %36, i32 noundef 0, ptr noundef %1) #7
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %3, i32 0, i32 24
  %37 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb31, %sw.bb29, %if.then26, %sw.bb, %if.else15, %if.then13, %if.then7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_usb_read_port_cancel(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %precv_buf = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6, i32 20
  %0 = ptrtoint ptr %precv_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %precv_buf, align 4
  %purb = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %purb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %purb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %purb.1 = getelementptr %struct.recv_buf, ptr %1, i32 1, i32 4
  %4 = ptrtoint ptr %purb.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %purb.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %5) #7
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %purb.2 = getelementptr %struct.recv_buf, ptr %1, i32 2, i32 4
  %6 = ptrtoint ptr %purb.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %purb.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #7
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %purb.3 = getelementptr %struct.recv_buf, ptr %1, i32 3, i32 4
  %8 = ptrtoint ptr %purb.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %purb.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %9) #7
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %purb.4 = getelementptr %struct.recv_buf, ptr %1, i32 4, i32 4
  %10 = ptrtoint ptr %purb.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %purb.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #7
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %purb.5 = getelementptr %struct.recv_buf, ptr %1, i32 5, i32 4
  %12 = ptrtoint ptr %purb.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %purb.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %13) #7
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %purb.6 = getelementptr %struct.recv_buf, ptr %1, i32 6, i32 4
  %14 = ptrtoint ptr %purb.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %purb.6, align 4
  %tobool.not.6 = icmp eq ptr %15, null
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %15) #7
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %purb.7 = getelementptr %struct.recv_buf, ptr %1, i32 7, i32 4
  %16 = ptrtoint ptr %purb.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %purb.7, align 4
  %tobool.not.7 = icmp eq ptr %17, null
  br i1 %tobool.not.7, label %if.end.6.if.end.7_crit_edge, label %if.then.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %17) #7
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6.if.end.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_xmit_bh(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2652
  %xmitpriv = getelementptr i8, ptr %t, i32 -820
  %driver_stopped = getelementptr i8, ptr %t, i32 10992
  %0 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_stopped, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr i8, ptr %t, i32 10993
  %2 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surprise_removed, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %pnetdev = getelementptr i8, ptr %t, i32 11012
  %4 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @r8712_xmitframe_complete(ptr noundef %add.ptr, ptr noundef %xmitpriv, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__tasklet_hi_schedule(ptr noundef %t) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_xmitframe_complete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_hi_schedule(ptr noundef %t) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__tasklet_hi_schedule(ptr noundef %t) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_usb_write_port(ptr nocapture noundef readonly %pintfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %wmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.intf_hdl, ptr %pintfhdl, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %xmitpriv = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 5
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pusbdev, align 4
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %driver_stopped, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %surprise_removed, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pnp_bstop_trx = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 11, i32 18
  %8 = ptrtoint ptr %pnp_bstop_trx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pnp_bstop_trx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %for.body.preheader, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false2
  %arrayidx = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 10, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %for.body.preheader.do.body7_crit_edge, label %for.inc

for.body.preheader.do.body7_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

do.body7:                                         ; preds = %for.inc.6.do.body7_crit_edge, %for.inc.5.do.body7_crit_edge, %for.inc.4.do.body7_crit_edge, %for.inc.3.do.body7_crit_edge, %for.inc.2.do.body7_crit_edge, %for.inc.1.do.body7_crit_edge, %for.inc.do.body7_crit_edge, %for.body.preheader.do.body7_crit_edge
  %i.0111.lcssa = phi i32 [ 0, %for.body.preheader.do.body7_crit_edge ], [ 1, %for.inc.do.body7_crit_edge ], [ 2, %for.inc.1.do.body7_crit_edge ], [ 3, %for.inc.2.do.body7_crit_edge ], [ 4, %for.inc.3.do.body7_crit_edge ], [ 5, %for.inc.4.do.body7_crit_edge ], [ 6, %for.inc.5.do.body7_crit_edge ], [ 7, %for.inc.6.do.body7_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %for.body.preheader.do.body7_crit_edge ], [ %arrayidx.1, %for.inc.do.body7_crit_edge ], [ %arrayidx.2, %for.inc.1.do.body7_crit_edge ], [ %arrayidx.3, %for.inc.2.do.body7_crit_edge ], [ %arrayidx.4, %for.inc.3.do.body7_crit_edge ], [ %arrayidx.5, %for.inc.4.do.body7_crit_edge ], [ %arrayidx.6, %for.inc.5.do.body7_crit_edge ], [ %arrayidx.7, %for.inc.6.do.body7_crit_edge ]
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xmitpriv) #7
  %txirp_cnt = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 5, i32 30
  %12 = ptrtoint ptr %txirp_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %txirp_cnt, align 1
  %inc = add i8 %13, 1
  store i8 %inc, ptr %txirp_cnt, align 1
  %14 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx.lcssa, align 1
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %wmem, i32 0, i32 1, i32 16
  %15 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %priority, align 4
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %16, label %sw.default [
    i8 1, label %do.body7.sw.bb_crit_edge
    i8 2, label %do.body7.sw.bb_crit_edge114
    i8 4, label %do.body7.sw.bb17_crit_edge
    i8 5, label %do.body7.sw.bb17_crit_edge115
    i8 6, label %do.body7.sw.bb19_crit_edge
    i8 7, label %do.body7.sw.bb19_crit_edge116
  ]

do.body7.sw.bb19_crit_edge116:                    ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

do.body7.sw.bb19_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

do.body7.sw.bb17_crit_edge115:                    ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

do.body7.sw.bb17_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

do.body7.sw.bb_crit_edge114:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.body7.sw.bb_crit_edge:                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %do.body7.sw.bb_crit_edge, %do.body7.sw.bb_crit_edge114
  %bkq_cnt = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 5, i32 36
  %18 = ptrtoint ptr %bkq_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bkq_cnt, align 4
  %inc16 = add i32 %19, 1
  store i32 %inc16, ptr %bkq_cnt, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.body7.sw.bb17_crit_edge, %do.body7.sw.bb17_crit_edge115
  %viq_cnt = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 5, i32 37
  %20 = ptrtoint ptr %viq_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %viq_cnt, align 8
  %inc18 = add i32 %21, 1
  store i32 %inc18, ptr %viq_cnt, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.body7.sw.bb19_crit_edge, %do.body7.sw.bb19_crit_edge116
  %voq_cnt = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 5, i32 38
  %22 = ptrtoint ptr %voq_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %voq_cnt, align 4
  %inc20 = add i32 %23, 1
  store i32 %inc20, ptr %voq_cnt, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %beq_cnt = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 5, i32 35
  %24 = ptrtoint ptr %beq_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %beq_cnt, align 8
  %inc22 = add i32 %25, 1
  store i32 %inc22, ptr %beq_cnt, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb19, %sw.bb17, %sw.bb
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmitpriv, i32 noundef %call10) #7
  %conv24 = trunc i32 %cnt to i16
  %arrayidx25 = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 8, i32 %i.0111.lcssa
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv24, ptr %arrayidx25, align 2
  %arrayidx26 = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 9, i32 %i.0111.lcssa
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx26, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool5.not.1 = icmp eq i8 %30, 0
  br i1 %tobool5.not.1, label %for.inc.do.body7_crit_edge, label %for.inc.1

for.inc.do.body7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 10, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool5.not.2 = icmp eq i8 %32, 0
  br i1 %tobool5.not.2, label %for.inc.1.do.body7_crit_edge, label %for.inc.2

for.inc.1.do.body7_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 10, i32 3
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool5.not.3 = icmp eq i8 %34, 0
  br i1 %tobool5.not.3, label %for.inc.2.do.body7_crit_edge, label %for.inc.3

for.inc.2.do.body7_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 10, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool5.not.4 = icmp eq i8 %36, 0
  br i1 %tobool5.not.4, label %for.inc.3.do.body7_crit_edge, label %for.inc.4

for.inc.3.do.body7_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 10, i32 5
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool5.not.5 = icmp eq i8 %38, 0
  br i1 %tobool5.not.5, label %for.inc.4.do.body7_crit_edge, label %for.inc.5

for.inc.4.do.body7_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 10, i32 6
  %39 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not.6 = icmp eq i8 %40, 0
  br i1 %tobool5.not.6, label %for.inc.5.do.body7_crit_edge, label %for.inc.6

for.inc.5.do.body7_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.xmit_frame, ptr %wmem, i32 0, i32 10, i32 7
  %41 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool5.not.7 = icmp eq i8 %42, 0
  br i1 %tobool5.not.7, label %for.inc.6.do.body7_crit_edge, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6.do.body7_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %sw.epilog
  %purb.0 = phi ptr [ %28, %sw.epilog ], [ null, %for.inc.6.for.end_crit_edge ]
  %ishighspeed = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %ishighspeed to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ishighspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool29.not = icmp eq i8 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp37.not = icmp eq i32 %cnt, 0
  %. = select i1 %tobool29.not, i32 63, i32 511
  %rem40 = and i32 %., %cnt
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem40)
  %cmp41 = icmp ne i32 %rem40, 0
  %not.or.cond107 = or i1 %cmp37.not, %cmp41
  %call46 = tail call fastcc i32 @ffaddr2pipehdl(ptr noundef %1, i32 noundef %addr)
  %free_xmitbuf_cnt = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 5, i32 52
  %45 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %free_xmitbuf_cnt, align 4
  %rem47 = and i32 %46, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem47)
  %cmp48 = icmp eq i32 %rem47, 0
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %purb.0, i32 0, i32 13
  %47 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %transfer_flags, align 4
  %and = and i32 %48, -129
  %masksel = select i1 %cmp48, i32 0, i32 128
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %transfer_flags, align 4
  %add = add i32 %cnt, 8
  %spec.select = select i1 %not.or.cond107, i32 %cnt, i32 %add
  %mem_addr = getelementptr inbounds %struct.xmit_frame, ptr %wmem, i32 0, i32 7
  %49 = ptrtoint ptr %mem_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem_addr, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %purb.0, i32 0, i32 8
  %51 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %purb.0, i32 0, i32 10
  %52 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call46, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %purb.0, i32 0, i32 14
  %53 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %purb.0, i32 0, i32 19
  %54 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %purb.0, i32 0, i32 28
  %55 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @usb_write_port_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %purb.0, i32 0, i32 27
  %56 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %wmem, ptr %context4.i, align 4
  %call57 = tail call i32 @usb_submit_urb(ptr noundef %purb.0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  %ret.0 = zext i1 %tobool58.not to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_write_port_complete(ptr noundef readonly %purb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pxmitbuf1 = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxmitbuf1, align 4
  %padapter2 = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %padapter2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padapter2, align 4
  %xmitpriv = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 5
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 1, i32 16
  %6 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %priority, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %7, label %sw.default [
    i8 1, label %entry.sw.bb_crit_edge
    i8 2, label %entry.sw.bb_crit_edge47
    i8 4, label %entry.sw.bb3_crit_edge
    i8 5, label %entry.sw.bb3_crit_edge48
    i8 6, label %entry.sw.bb5_crit_edge
    i8 7, label %entry.sw.bb5_crit_edge49
  ]

entry.sw.bb5_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb3_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb_crit_edge47:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge47
  %bkq_cnt = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 5, i32 36
  %9 = ptrtoint ptr %bkq_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bkq_cnt, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %bkq_cnt, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge48
  %viq_cnt = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 5, i32 37
  %11 = ptrtoint ptr %viq_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %viq_cnt, align 8
  %dec4 = add i32 %12, -1
  store i32 %dec4, ptr %viq_cnt, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge49
  %voq_cnt = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 5, i32 38
  %13 = ptrtoint ptr %voq_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %voq_cnt, align 4
  %dec6 = add i32 %14, -1
  store i32 %dec6, ptr %voq_cnt, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %beq_cnt = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 5, i32 35
  %15 = ptrtoint ptr %beq_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %beq_cnt, align 8
  %dec8 = add i32 %16, -1
  store i32 %dec8, ptr %beq_cnt, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb
  %txirp_cnt = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 5, i32 30
  %17 = ptrtoint ptr %txirp_cnt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %txirp_cnt, align 1
  %dec9 = add i8 %18, -1
  store i8 %dec9, ptr %txirp_cnt, align 1
  %arrayidx = getelementptr %struct.xmit_frame, ptr %1, i32 0, i32 9, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %cmp11 = icmp eq ptr %20, %purb
  br i1 %cmp11, label %sw.epilog.if.then_crit_edge, label %for.inc

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %sw.epilog.if.then_crit_edge
  %i.045.lcssa = phi i32 [ 0, %sw.epilog.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ]
  %arrayidx13 = getelementptr %struct.xmit_frame, ptr %1, i32 0, i32 10, i32 %i.045.lcssa
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx13, align 1
  br label %for.end

for.inc:                                          ; preds = %sw.epilog
  %arrayidx.1 = getelementptr %struct.xmit_frame, ptr %1, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1, align 4
  %cmp11.1 = icmp eq ptr %23, %purb
  br i1 %cmp11.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.xmit_frame, ptr %1, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2, align 4
  %cmp11.2 = icmp eq ptr %25, %purb
  br i1 %cmp11.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.xmit_frame, ptr %1, i32 0, i32 9, i32 3
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.3, align 4
  %cmp11.3 = icmp eq ptr %27, %purb
  br i1 %cmp11.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.xmit_frame, ptr %1, i32 0, i32 9, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.4, align 4
  %cmp11.4 = icmp eq ptr %29, %purb
  br i1 %cmp11.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.xmit_frame, ptr %1, i32 0, i32 9, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.5, align 4
  %cmp11.5 = icmp eq ptr %31, %purb
  br i1 %cmp11.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.xmit_frame, ptr %1, i32 0, i32 9, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.6, align 4
  %cmp11.6 = icmp eq ptr %33, %purb
  br i1 %cmp11.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.xmit_frame, ptr %1, i32 0, i32 9, i32 7
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.7, align 4
  %cmp11.7 = icmp eq ptr %35, %purb
  br i1 %cmp11.7, label %for.inc.6.if.then_crit_edge, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %if.then
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 17
  %36 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %surprise_removed, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %if.end15, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %status = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 12
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cond = icmp eq i32 %39, 0
  br i1 %cond, label %if.end15.sw.epilog18_crit_edge, label %sw.default16

if.end15.sw.epilog18_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog18

sw.default16:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 24
  %40 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.3, i32 noundef %39) #10
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.default16, %if.end15.sw.epilog18_crit_edge
  tail call void @r8712_free_xmitframe_ex(ptr noundef %xmitpriv, ptr noundef %1) #7
  tail call void @r8712_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %3) #7
  %state.i = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 5, i32 31, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog18.cleanup_crit_edge

sw.epilog18.cleanup_crit_edge:                    ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #9
  %xmit_tasklet = getelementptr inbounds %struct._adapter, ptr %5, i32 0, i32 5, i32 31
  tail call void @__tasklet_hi_schedule(ptr noundef %xmit_tasklet) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %sw.epilog18.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_usb_write_port_cancel(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pxmitbuf1 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 51
  %0 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxmitbuf1, align 8
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc.7.for.cond2.preheader_crit_edge, %entry
  %pxmitbuf.018 = phi ptr [ %1, %entry ], [ %incdec.ptr, %for.inc.7.for.cond2.preheader_crit_edge ]
  %i.017 = phi i32 [ 0, %entry ], [ %inc8, %for.inc.7.for.cond2.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.xmit_buf, ptr %pxmitbuf.018, i32 0, i32 4, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.cond2.preheader.for.inc_crit_edge, label %if.then

for.cond2.preheader.for.inc_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.cond2.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.018, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %5) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.018, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.018, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %9) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.018, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.018, i32 0, i32 4, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %13) #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.018, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %15, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %15) #7
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.018, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %17, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %17) #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %incdec.ptr = getelementptr %struct.xmit_buf, ptr %pxmitbuf.018, i32 1
  %inc8 = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc8, 4
  br i1 %exitcond.not, label %for.end9, label %for.inc.7.for.cond2.preheader_crit_edge

for.inc.7.for.cond2.preheader_crit_edge:          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader

for.end9:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_usbctrl_vendorreq(ptr nocapture noundef readonly %pintfpriv, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef %pdata, i16 noundef zeroext %len, i8 noundef zeroext %requesttype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pintfpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pintfpriv, align 4
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pusbdev, align 4
  %conv = zext i16 %len to i32
  %add = add nuw nsw i32 %conv, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call9.i, i32 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %requesttype)
  %cmp = icmp eq i8 %requesttype, 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  br i1 %cmp, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = or i32 %shl.i, -2147483648
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %pdata, i32 %conv)
  %call1143 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or8, i8 noundef zeroext %request, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %add.ptr, i16 noundef zeroext %len, i32 noundef 500) #7
  br label %if.end20

if.end10:                                         ; preds = %if.end
  %or6 = or i32 %shl.i, -2147483520
  %call11 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or6, i8 noundef zeroext %request, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %add.ptr, i16 noundef zeroext %len, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp sgt i32 %call11, 0
  %7 = and i1 %cmp, %cmp12
  br i1 %7, label %if.then18, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %pdata, ptr %add.ptr, i32 %call11)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end10.if.end20_crit_edge, %if.end10.thread
  %call1145 = phi i32 [ %call1143, %if.end10.thread ], [ %call11, %if.end10.if.end20_crit_edge ], [ %call11, %if.then18 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1145, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_read_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_rxcmd_event_hdl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_xmitframe_ex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_xmitbuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/usb_ops_linux.c", i32 320, i32 33}
!2 = !{ptr @init_completion.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../include/linux/completion.h", i32 87, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/rtl8712/usb_ops_linux.c", i32 234, i32 34}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/rtl8712/usb_ops_linux.c", i32 371, i32 5}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i8 0, i8 2}
!19 = !{i32 -1073741824, i32 1}
