; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_io.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.io_queue = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.intf_hdl }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@r8712_alloc_io_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pio_queue->lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [40 x i8] c"../drivers/staging/rtl8712/rtl871x_io.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 109, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @r8712_alloc_io_queue.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_alloc_io_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_alloc_io_queue(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 184) #6
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_ioreqs = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %free_ioreqs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %free_ioreqs, ptr %free_ioreqs, align 4
  %prev.i = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %free_ioreqs, ptr %prev.i, align 8
  %processing = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %processing, ptr %processing, align 4
  %prev.i46 = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %processing, ptr %prev.i46, align 8
  %pending = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i47 = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pending, ptr %prev.i47, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str, ptr noundef nonnull @r8712_alloc_io_queue.__key, i16 noundef signext 3) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2848, i32 noundef 292) #6
  %pallocated_free_ioreqs_buf = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %pallocated_free_ioreqs_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %pallocated_free_ioreqs_buf, align 8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.if.then19_crit_edge, label %if.end5

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then19

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 4
  %free_ioreqs_buf = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 4
  %9 = ptrtoint ptr %free_ioreqs_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %free_ioreqs_buf, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i48 = getelementptr i8, ptr %call7.i.i, i32 8
  %11 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %prev.i48, align 8
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %13, ptr noundef %free_ioreqs) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %prev.i, align 8
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %free_ioreqs, ptr %add.ptr, align 4
  %16 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i48, align 8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %add.ptr, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr i8, ptr %call7.i.i, i32 40
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %incdec.ptr, ptr %incdec.ptr, align 8
  %prev.i48.1 = getelementptr i8, ptr %call7.i.i, i32 44
  %19 = ptrtoint ptr %prev.i48.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %incdec.ptr, ptr %prev.i48.1, align 4
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 8
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr, ptr noundef %21, ptr noundef %free_ioreqs) #3
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add_tail.exit.list_add_tail.exit.1_crit_edge

list_add_tail.exit.list_add_tail.exit.1_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.1

if.end.i.i.1:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %incdec.ptr, ptr %prev.i, align 8
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %free_ioreqs, ptr %incdec.ptr, align 8
  %24 = ptrtoint ptr %prev.i48.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i48.1, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %incdec.ptr, ptr %21, align 4
  br label %list_add_tail.exit.1

list_add_tail.exit.1:                             ; preds = %if.end.i.i.1, %list_add_tail.exit.list_add_tail.exit.1_crit_edge
  %incdec.ptr.1 = getelementptr i8, ptr %call7.i.i, i32 76
  %26 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %incdec.ptr.1, ptr %incdec.ptr.1, align 4
  %prev.i48.2 = getelementptr i8, ptr %call7.i.i, i32 80
  %27 = ptrtoint ptr %prev.i48.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %incdec.ptr.1, ptr %prev.i48.2, align 8
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 8
  %call.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr.1, ptr noundef %29, ptr noundef %free_ioreqs) #3
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge

list_add_tail.exit.1.list_add_tail.exit.2_crit_edge: ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.2

if.end.i.i.2:                                     ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %incdec.ptr.1, ptr %prev.i, align 8
  %31 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %free_ioreqs, ptr %incdec.ptr.1, align 4
  %32 = ptrtoint ptr %prev.i48.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev.i48.2, align 8
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %incdec.ptr.1, ptr %29, align 4
  br label %list_add_tail.exit.2

list_add_tail.exit.2:                             ; preds = %if.end.i.i.2, %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge
  %incdec.ptr.2 = getelementptr i8, ptr %call7.i.i, i32 112
  %34 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %incdec.ptr.2, ptr %incdec.ptr.2, align 8
  %prev.i48.3 = getelementptr i8, ptr %call7.i.i, i32 116
  %35 = ptrtoint ptr %prev.i48.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %incdec.ptr.2, ptr %prev.i48.3, align 4
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i, align 8
  %call.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr.2, ptr noundef %37, ptr noundef %free_ioreqs) #3
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge

list_add_tail.exit.2.list_add_tail.exit.3_crit_edge: ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.3

if.end.i.i.3:                                     ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %incdec.ptr.2, ptr %prev.i, align 8
  %39 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %free_ioreqs, ptr %incdec.ptr.2, align 8
  %40 = ptrtoint ptr %prev.i48.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i48.3, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %incdec.ptr.2, ptr %37, align 4
  br label %list_add_tail.exit.3

list_add_tail.exit.3:                             ; preds = %if.end.i.i.3, %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge
  %incdec.ptr.3 = getelementptr i8, ptr %call7.i.i, i32 148
  %42 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %incdec.ptr.3, ptr %incdec.ptr.3, align 4
  %prev.i48.4 = getelementptr i8, ptr %call7.i.i, i32 152
  %43 = ptrtoint ptr %prev.i48.4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %incdec.ptr.3, ptr %prev.i48.4, align 8
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 8
  %call.i.i.4 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr.3, ptr noundef %45, ptr noundef %free_ioreqs) #3
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge

list_add_tail.exit.3.list_add_tail.exit.4_crit_edge: ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.4

if.end.i.i.4:                                     ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %incdec.ptr.3, ptr %prev.i, align 8
  %47 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %free_ioreqs, ptr %incdec.ptr.3, align 4
  %48 = ptrtoint ptr %prev.i48.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev.i48.4, align 8
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %incdec.ptr.3, ptr %45, align 4
  br label %list_add_tail.exit.4

list_add_tail.exit.4:                             ; preds = %if.end.i.i.4, %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge
  %incdec.ptr.4 = getelementptr i8, ptr %call7.i.i, i32 184
  %50 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %incdec.ptr.4, ptr %incdec.ptr.4, align 8
  %prev.i48.5 = getelementptr i8, ptr %call7.i.i, i32 188
  %51 = ptrtoint ptr %prev.i48.5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %incdec.ptr.4, ptr %prev.i48.5, align 4
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i, align 8
  %call.i.i.5 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr.4, ptr noundef %53, ptr noundef %free_ioreqs) #3
  br i1 %call.i.i.5, label %if.end.i.i.5, label %list_add_tail.exit.4.list_add_tail.exit.5_crit_edge

list_add_tail.exit.4.list_add_tail.exit.5_crit_edge: ; preds = %list_add_tail.exit.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.5

if.end.i.i.5:                                     ; preds = %list_add_tail.exit.4
  call void @__sanitizer_cov_trace_pc() #5
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %incdec.ptr.4, ptr %prev.i, align 8
  %55 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %free_ioreqs, ptr %incdec.ptr.4, align 8
  %56 = ptrtoint ptr %prev.i48.5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev.i48.5, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %incdec.ptr.4, ptr %53, align 4
  br label %list_add_tail.exit.5

list_add_tail.exit.5:                             ; preds = %if.end.i.i.5, %list_add_tail.exit.4.list_add_tail.exit.5_crit_edge
  %incdec.ptr.5 = getelementptr i8, ptr %call7.i.i, i32 220
  %58 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %incdec.ptr.5, ptr %incdec.ptr.5, align 4
  %prev.i48.6 = getelementptr i8, ptr %call7.i.i, i32 224
  %59 = ptrtoint ptr %prev.i48.6 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %incdec.ptr.5, ptr %prev.i48.6, align 8
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i, align 8
  %call.i.i.6 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr.5, ptr noundef %61, ptr noundef %free_ioreqs) #3
  br i1 %call.i.i.6, label %if.end.i.i.6, label %list_add_tail.exit.5.list_add_tail.exit.6_crit_edge

list_add_tail.exit.5.list_add_tail.exit.6_crit_edge: ; preds = %list_add_tail.exit.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.6

if.end.i.i.6:                                     ; preds = %list_add_tail.exit.5
  call void @__sanitizer_cov_trace_pc() #5
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %incdec.ptr.5, ptr %prev.i, align 8
  %63 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %free_ioreqs, ptr %incdec.ptr.5, align 4
  %64 = ptrtoint ptr %prev.i48.6 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev.i48.6, align 8
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %incdec.ptr.5, ptr %61, align 4
  br label %list_add_tail.exit.6

list_add_tail.exit.6:                             ; preds = %if.end.i.i.6, %list_add_tail.exit.5.list_add_tail.exit.6_crit_edge
  %incdec.ptr.6 = getelementptr i8, ptr %call7.i.i, i32 256
  %66 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %incdec.ptr.6, ptr %incdec.ptr.6, align 8
  %prev.i48.7 = getelementptr i8, ptr %call7.i.i, i32 260
  %67 = ptrtoint ptr %prev.i48.7 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %incdec.ptr.6, ptr %prev.i48.7, align 4
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i, align 8
  %call.i.i.7 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr.6, ptr noundef %69, ptr noundef %free_ioreqs) #3
  br i1 %call.i.i.7, label %if.end.i.i.7, label %list_add_tail.exit.6.list_add_tail.exit.7_crit_edge

list_add_tail.exit.6.list_add_tail.exit.7_crit_edge: ; preds = %list_add_tail.exit.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit.7

if.end.i.i.7:                                     ; preds = %list_add_tail.exit.6
  call void @__sanitizer_cov_trace_pc() #5
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %incdec.ptr.6, ptr %prev.i, align 8
  %71 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %free_ioreqs, ptr %incdec.ptr.6, align 8
  %72 = ptrtoint ptr %prev.i48.7 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev.i48.7, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %incdec.ptr.6, ptr %69, align 4
  br label %list_add_tail.exit.7

list_add_tail.exit.7:                             ; preds = %if.end.i.i.7, %list_add_tail.exit.6.list_add_tail.exit.7_crit_edge
  %intf = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 6
  %74 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %intf, align 4
  %adapter1.i = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 6, i32 1
  %75 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %adapter, ptr %adapter1.i, align 8
  %intf_dev.i = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 6, i32 2
  %76 = ptrtoint ptr %intf_dev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %adapter, ptr %intf_dev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 2592, i32 noundef 68) #6
  %pintfpriv.i.i = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 6, i32 3
  %78 = ptrtoint ptr %pintfpriv.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i.i, ptr %pintfpriv.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %list_add_tail.exit.7.alloc_io_queue_fail_crit_edge, label %if.end.i.i50

list_add_tail.exit.7.alloc_io_queue_fail_crit_edge: ; preds = %list_add_tail.exit.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %alloc_io_queue_fail

if.end.i.i50:                                     ; preds = %list_add_tail.exit.7
  %79 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %adapter, ptr %adapter1.i, align 8
  tail call void @r8712_usb_set_intf_option(ptr noundef %intf) #3
  tail call void @r8712_usb_set_intf_funs(ptr noundef %intf) #3
  %io_ops.i.i = getelementptr inbounds %struct.io_queue, ptr %call7.i, i32 0, i32 6, i32 8
  tail call void @r8712_usb_set_intf_ops(ptr noundef %io_ops.i.i) #3
  %80 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %adapter, ptr %call7.i.i.i, align 8
  %call1.i.i = tail call i32 @r8712_usb_init_intf_priv(ptr noundef nonnull %call7.i.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i50.alloc_io_queue_fail_crit_edge, label %if.end.i.i50.cleanup_crit_edge

if.end.i.i50.cleanup_crit_edge:                   ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i50.alloc_io_queue_fail_crit_edge:       ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %alloc_io_queue_fail

alloc_io_queue_fail:                              ; preds = %if.end.i.i50.alloc_io_queue_fail_crit_edge, %list_add_tail.exit.7.alloc_io_queue_fail_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i) #3
  br label %if.then19

if.then19:                                        ; preds = %alloc_io_queue_fail, %if.end.if.then19_crit_edge
  %81 = ptrtoint ptr %pallocated_free_ioreqs_buf to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pallocated_free_ioreqs_buf, align 8
  tail call void @kfree(ptr noundef %82) #3
  tail call void @kfree(ptr noundef nonnull %call7.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end.i.i50.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi ptr [ %call7.i, %if.end.i.i50.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then19 ]
  %retval.0 = phi i32 [ 1, %if.end.i.i50.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then19 ]
  %pio_queue22 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %83 = ptrtoint ptr %pio_queue22 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %.sink, ptr %pio_queue22, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_io_queue(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_queue1 = getelementptr inbounds %struct._adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pio_queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pio_queue1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pallocated_free_ioreqs_buf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pallocated_free_ioreqs_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pallocated_free_ioreqs_buf, align 4
  tail call void @kfree(ptr noundef %3) #3
  %4 = ptrtoint ptr %pio_queue1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pio_queue1, align 4
  %intf = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6
  %pintfpriv.i = getelementptr inbounds %struct.io_queue, ptr %1, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %pintfpriv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pintfpriv.i, align 4
  tail call void @r8712_usb_unload_intf_priv(ptr noundef %6) #3
  tail call void @kfree(ptr noundef %6) #3
  %7 = call ptr @memset(ptr %intf, i32 0, i32 108)
  tail call void @kfree(ptr noundef nonnull %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_usb_set_intf_option(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_usb_set_intf_funs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_usb_set_intf_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_usb_init_intf_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_usb_unload_intf_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @r8712_alloc_io_queue.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_io.c", i32 109, i32 2}
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
