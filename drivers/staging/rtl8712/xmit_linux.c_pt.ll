; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/xmit_linux.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/xmit_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pkt_file = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], ptr }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, [8 x ptr], i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.119, i32 }
%union.anon.119 = type { ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, ptr, [8 x i16], [8 x ptr], [8 x i8], [8 x i8] }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pxmitbuf->pxmit_urb[i] == NULL\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34958]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../drivers/staging/rtl8712/xmit_linux.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 121, i32 34 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @_r8712_open_pktfile(ptr noundef %pktptr, ptr nocapture noundef %pfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfile to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pktptr, ptr %pfile, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %pktptr, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %buf_start = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 3
  %3 = ptrtoint ptr %buf_start to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %buf_start, align 4
  %cur_addr = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 4
  %4 = ptrtoint ptr %cur_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %cur_addr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %pktptr, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %buf_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 5
  %7 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf_len, align 4
  %pkt_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 1
  %8 = ptrtoint ptr %pkt_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %pkt_len, align 4
  %cur_buffer = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 2
  %9 = ptrtoint ptr %cur_buffer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %2, ptr %cur_buffer, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_r8712_pktfile_read(ptr nocapture noundef %pfile, ptr noundef %rmem, i32 noundef %rlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_len.i = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 5
  %0 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len.i, align 4
  %cur_addr.i = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 4
  %2 = ptrtoint ptr %cur_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_addr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %buf_start.i = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 3
  %5 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf_start.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %sub.neg.i = sub i32 %1, %4
  %sub1.i = add i32 %sub.neg.i, %7
  %8 = tail call i32 @llvm.umin.i32(i32 %sub1.i, i32 %rlen)
  %tobool.not = icmp eq ptr %rmem, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %pfile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pfile, align 4
  %pkt_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 1
  %11 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pkt_len, align 4
  %sub = sub i32 %1, %12
  %call1 = tail call i32 @skb_copy_bits(ptr noundef %10, i32 noundef %sub, ptr noundef nonnull %rmem, i32 noundef %8) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %cur_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %8
  store ptr %add.ptr, ptr %cur_addr.i, align 4
  %pkt_len2 = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 1
  %15 = ptrtoint ptr %pkt_len2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pkt_len2, align 4
  %sub3 = sub i32 %16, %8
  store i32 %sub3, ptr %pkt_len2, align 4
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r8712_endofpktfile(ptr nocapture noundef readonly %pfile) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 1
  %0 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pkt_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_set_qos(ptr nocapture noundef %ppktfile, ptr nocapture noundef %pattrib) local_unnamed_addr #1 align 64 {
entry:
  %etherhdr = alloca %struct.ethhdr, align 1
  %ip_hdr = alloca %struct.iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %etherhdr) #7
  %0 = call ptr @memset(ptr %etherhdr, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ip_hdr) #7
  %1 = call ptr @memset(ptr %ip_hdr, i32 255, i32 20)
  %2 = ptrtoint ptr %ppktfile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppktfile, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %buf_start.i = getelementptr inbounds %struct.pkt_file, ptr %ppktfile, i32 0, i32 3
  %6 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %buf_start.i, align 4
  %cur_addr.i = getelementptr inbounds %struct.pkt_file, ptr %ppktfile, i32 0, i32 4
  %7 = ptrtoint ptr %cur_addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %cur_addr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %buf_len.i = getelementptr inbounds %struct.pkt_file, ptr %ppktfile, i32 0, i32 5
  %10 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buf_len.i, align 4
  %pkt_len.i = getelementptr inbounds %struct.pkt_file, ptr %ppktfile, i32 0, i32 1
  %11 = ptrtoint ptr %pkt_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %pkt_len.i, align 4
  %cur_buffer.i = getelementptr inbounds %struct.pkt_file, ptr %ppktfile, i32 0, i32 2
  %12 = ptrtoint ptr %cur_buffer.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %cur_buffer.i, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %9, i32 14) #7
  %call1.i = call i32 @skb_copy_bits(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %etherhdr, i32 noundef %13) #7
  %14 = ptrtoint ptr %cur_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %13
  store ptr %add.ptr.i, ptr %cur_addr.i, align 4
  %16 = ptrtoint ptr %pkt_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pkt_len.i, align 4
  %sub3.i = sub i32 %17, %13
  store i32 %sub3.i, ptr %pkt_len.i, align 4
  %ether_type = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 5
  %18 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ether_type, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i16 %19, label %entry.if.end10_crit_edge [
    i16 2048, label %if.then
    i16 -30578, label %if.then9
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = getelementptr inbounds %struct.iphdr, ptr %ip_hdr, i32 0, i32 1
  %22 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_len.i, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  %25 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf_start.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %sub.neg.i.i23 = sub i32 %23, %24
  %sub1.i.i24 = add i32 %sub.neg.i.i23, %27
  %28 = call i32 @llvm.umin.i32(i32 %sub1.i.i24, i32 20) #7
  %29 = ptrtoint ptr %ppktfile to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ppktfile, align 4
  %sub.i26 = sub i32 %23, %sub3.i
  %call1.i27 = call i32 @skb_copy_bits(ptr noundef %30, i32 noundef %sub.i26, ptr noundef nonnull %ip_hdr, i32 noundef %28) #7
  %31 = ptrtoint ptr %cur_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_addr.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %32, i32 %28
  store ptr %add.ptr.i28, ptr %cur_addr.i, align 4
  %33 = ptrtoint ptr %pkt_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pkt_len.i, align 4
  %sub3.i30 = sub i32 %34, %28
  store i32 %sub3.i30, ptr %pkt_len.i, align 4
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %21, align 1
  %37 = lshr i8 %36, 5
  br label %if.end10

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then, %entry.if.end10_crit_edge
  %UserPriority.0.off0 = phi i8 [ %37, %if.then ], [ 7, %if.then9 ], [ 0, %entry.if.end10_crit_edge ]
  %priority = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %38 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %UserPriority.0.off0, ptr %priority, align 4
  %hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 9
  %39 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 26, ptr %hdrlen, align 1
  %subtype = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 1
  %40 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -120, ptr %subtype, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ip_hdr) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %etherhdr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_SetFilter(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -13800
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %add.ptr, i32 noundef 279) #7
  %0 = and i8 %call, -2
  tail call void @r8712_write8(ptr noundef %add.ptr, i32 noundef 279, i8 noundef zeroext %0) #7
  %lock_rx_ff0_filter = getelementptr i8, ptr %work, i32 48
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock_rx_ff0_filter) #7
  %blnEnableRxFF0Filter = getelementptr i8, ptr %work, i32 44
  %1 = ptrtoint ptr %blnEnableRxFF0Filter to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %blnEnableRxFF0Filter, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_rx_ff0_filter, i32 noundef %call6) #7
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %entry
  tail call void @msleep(i32 noundef 100) #7
  %2 = ptrtoint ptr %blnEnableRxFF0Filter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %blnEnableRxFF0Filter, align 4
  %cmp14 = icmp eq i8 %3, 1
  br i1 %cmp14, label %do.body10.do.body10_crit_edge, label %do.end16

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r8712_write8(ptr noundef %add.ptr, i32 noundef 279, i8 noundef zeroext %call) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_xmit_resource_alloc(ptr nocapture noundef readonly %padapter, ptr nocapture noundef writeonly %pxmitbuf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %arrayidx = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end.6.if.then_crit_edge, %if.end.5.if.then_crit_edge, %if.end.4.if.then_crit_edge, %if.end.3.if.then_crit_edge, %if.end.2.if.then_crit_edge, %if.end.1.if.then_crit_edge, %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 24
  %1 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call) #7
  %call.1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %arrayidx.1 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.1, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.1:                                         ; preds = %if.end
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.1) #7
  %call.2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %arrayidx.2 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.2, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %if.end.1.if.then_crit_edge, label %if.end.2

if.end.1.if.then_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.2:                                         ; preds = %if.end.1
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.2) #7
  %call.3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %arrayidx.3 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.3, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %if.end.2.if.then_crit_edge, label %if.end.3

if.end.2.if.then_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.3:                                         ; preds = %if.end.2
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.3) #7
  %call.4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %arrayidx.4 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.4, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool.not.4, label %if.end.3.if.then_crit_edge, label %if.end.4

if.end.3.if.then_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.4:                                         ; preds = %if.end.3
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.4) #7
  %call.5 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %arrayidx.5 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 5
  %7 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.5, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %call.5, null
  br i1 %tobool.not.5, label %if.end.4.if.then_crit_edge, label %if.end.5

if.end.4.if.then_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.5:                                         ; preds = %if.end.4
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.5) #7
  %call.6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %arrayidx.6 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.6, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %call.6, null
  br i1 %tobool.not.6, label %if.end.5.if.then_crit_edge, label %if.end.6

if.end.5.if.then_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.6:                                         ; preds = %if.end.5
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.6) #7
  %call.7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %arrayidx.7 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.7, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %call.7, null
  br i1 %tobool.not.7, label %if.end.6.if.then_crit_edge, label %if.end.7

if.end.6.if.then_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.7:                                         ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.end.7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_not_leak(ptr noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_xmit_resource_free(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readonly %pxmitbuf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %3) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 1
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
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %7) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %9) #7
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %11) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %13) #7
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %15) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %17, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %17) #7
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_free_urb(ptr noundef %19) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %21, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %21) #7
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.5, align 4
  tail call void @usb_free_urb(ptr noundef %23) #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %25, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %25) #7
  %26 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.6, align 4
  tail call void @usb_free_urb(ptr noundef %27) #7
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %29, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %29) #7
  %30 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.7, align 4
  tail call void @usb_free_urb(ptr noundef %31) #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_xmit_complete(ptr nocapture noundef readnone %padapter, ptr nocapture noundef %pxframe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxframe, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pkt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_xmit_entry(ptr noundef %pkt, ptr noundef %netdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %xmitpriv1 = getelementptr i8, ptr %netdev, i32 4136
  %call2 = tail call i32 @r8712_if_up(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @r8712_alloc_xmitframe(ptr noundef %xmitpriv1) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end20_crit_edge, label %if.end6

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end6:                                          ; preds = %if.end
  %attrib = getelementptr inbounds %struct.xmit_frame, ptr %call3, i32 0, i32 1
  %call7 = tail call i32 @r8712_update_attrib(ptr noundef %add.ptr.i, ptr noundef %pkt, ptr noundef %attrib) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then19

if.end10:                                         ; preds = %if.end6
  %LedControlHandler = getelementptr i8, ptr %netdev, i32 14860
  %0 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %LedControlHandler, align 4
  tail call void %1(ptr noundef %add.ptr.i, i32 noundef 4) #7
  %pkt11 = getelementptr inbounds %struct.xmit_frame, ptr %call3, i32 0, i32 2
  %2 = ptrtoint ptr %pkt11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pkt, ptr %pkt11, align 4
  %call12 = tail call i32 @r8712_pre_xmit(ptr noundef %add.ptr.i, ptr noundef nonnull %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef %pkt, i32 noundef 1) #7
  %3 = ptrtoint ptr %pkt11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pkt11, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %tx_pkts = getelementptr i8, ptr %netdev, i32 4936
  %4 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_pkts, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %tx_pkts, align 8
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call3, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %last_txcmdsz, align 2
  %conv = zext i16 %7 to i32
  %tx_bytes = getelementptr i8, ptr %netdev, i32 4932
  %8 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %9, %conv
  store i32 %add, ptr %tx_bytes, align 4
  br label %cleanup

if.then19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r8712_free_xmitframe(ptr noundef %xmitpriv1, ptr noundef nonnull %call3) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  %tx_drop = getelementptr i8, ptr %netdev, i32 4944
  %10 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_drop, align 8
  %inc21 = add i32 %11, 1
  store i32 %inc21, ptr %tx_drop, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %pkt, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_if_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_alloc_xmitframe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_update_attrib(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_pre_xmit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_xmitframe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/xmit_linux.c", i32 121, i32 34}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
