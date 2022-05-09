; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/os_dep/recv_linux.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/os_dep/recv_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.6 }
%union.anon.6 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.recv_frame_hdr = type { %struct.list_head, ptr, ptr, ptr, i8, i32, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rx_pkt_attrib = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, [2 x i32], %struct.phy_info }
%struct.phy_info = type { i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.128, i32 }
%struct.atomic_t = type { i32 }
%union.anon.128 = type { ptr }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.signal_stat = type { i8, i8, i32, i32 }
%union.recv_frame = type { %union.anon }
%union.anon = type { %struct.recv_frame_hdr }
%struct.recv_buf = type { %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.sk_buff = type { %union.anon.0, %union.anon.108, %union.anon.109, [48 x i8], %union.anon.110, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.112, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.108 = type { ptr }
%union.anon.109 = type { i64 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { i32, ptr }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.114, i32, i32, i32, i16, i16, %union.anon.116, i32, %union.anon.117, %union.anon.118, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.114 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i16, i64, i64, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], [16 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, %struct.timer_list, i16, i32, i8, i8, i32, i64, i8, [9 x i32], [9 x i32], i32, i8, i8, i8, i8, i8, i16, i8 }
%struct.rt_channel_info = type { i8, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type <{ i8, i16, i16, i16 }>
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.125 }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i8, i32, i32, [5 x %union.Keytype], [5 x %union.Keytype], [5 x %union.Keytype], %union.pn48, %union.pn48, i32, [6 x %union.Keytype], %union.pn48, %union.pn48, i32, i32, i32, i32, i32, i32, [512 x i8], i32, %struct.arc4_ctx, %struct.arc4_ctx, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }>
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i16, [512 x i8], i8, i8, i8, i8, i32, [17 x i8], [50 x i8] }
%struct.hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.rtw_wdev_priv = type { ptr, ptr, ptr, %struct.spinlock, ptr, [17 x i8], i8, i8, %struct.rtw_wdev_invit_info, %struct.rtw_wdev_nego_info, i8, i8, i8 }
%struct.rtw_wdev_invit_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.rtw_wdev_nego_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }

@rfc1042_header = external dso_local constant [6 x i8], align 1
@bridge_tunnel_header = external dso_local constant [6 x i8], align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_init_recv_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(&preorder_ctrl->reordering_ctrl_timer)\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [49 x i8] c"../drivers/staging/rtl8723bs/os_dep/recv_linux.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 226, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @rtw_init_recv_timer.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_recv_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_free_recvframe(ptr nocapture noundef %precvframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 1
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #4
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pkt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_os_recv_resource_alloc(ptr nocapture noundef readnone %padapter, ptr nocapture noundef writeonly %precvframe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 1
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pkt, align 4
  %pkt_newalloc = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 2
  %1 = ptrtoint ptr %pkt_newalloc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %pkt_newalloc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_recv_resource_free(ptr nocapture noundef readonly %precvpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %precv_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 5
  %0 = ptrtoint ptr %precv_frame_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %precv_frame_buf, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %precvframe.08 = phi ptr [ %1, %entry ], [ %incdec.ptr, %if.end.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %pkt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe.08, i32 0, i32 1
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %3, i32 noundef 1) #4
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pkt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %incdec.ptr = getelementptr %union.recv_frame, ptr %precvframe.08, i32 1
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_recvbuf_resource_free(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readonly %precvbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pskb = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 11
  %0 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pskb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_os_alloc_msdu_pkt(ptr nocapture noundef readonly %prframe, i16 noundef zeroext %nSubframe_Length, ptr nocapture noundef readonly %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %nSubframe_Length to i32
  %add = add nuw nsw i32 %conv, 12
  %call = tail call ptr @_rtw_skb_alloc(i32 noundef %add) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 12
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %pdata, i32 14
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef %conv) #4
  %4 = call ptr @memcpy(ptr %call.i, ptr %add.ptr, i32 %conv)
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %arrayidx = getelementptr i8, ptr %6, i32 6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp = icmp ugt i32 %10, 7
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #7
  %bcmp.fr = freeze i32 %bcmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.fr)
  %tobool7.not.not = icmp eq i32 %bcmp.fr, 0
  br i1 %tobool7.not.not, label %switch.early.test, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

switch.early.test:                                ; preds = %land.lhs.true
  %11 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %switch.early.test.if.then19_crit_edge [
    i16 -32457, label %switch.early.test.lor.lhs.false_crit_edge
    i16 -32525, label %switch.early.test.lor.lhs.false_crit_edge58
  ]

switch.early.test.lor.lhs.false_crit_edge58:      ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

switch.early.test.lor.lhs.false_crit_edge:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

switch.early.test.if.then19_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

lor.lhs.false:                                    ; preds = %switch.early.test.lor.lhs.false_crit_edge, %switch.early.test.lor.lhs.false_crit_edge58, %land.lhs.true.lor.lhs.false_crit_edge
  %bcmp56 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp56)
  %tobool18.not = icmp eq i32 %bcmp56, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %switch.early.test.if.then19_crit_edge
  %call20 = tail call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 6) #4
  br label %cleanup.sink.split

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end.if.else_crit_edge
  %conv26 = trunc i32 %10 to i16
  %call27 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 2) #4
  %12 = ptrtoint ptr %call27 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %conv26, ptr %call27, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then19
  %call21 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 6) #4
  %src = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 6, i32 24
  %13 = call ptr @memcpy(ptr %call21, ptr %src, i32 6)
  %call22 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 6) #4
  %dst = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 6, i32 23
  %14 = call ptr @memcpy(ptr %call22, ptr %dst, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_skb_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_recv_indicate_pkt(ptr noundef %padapter, ptr noundef %pkt, ptr noundef %pattrib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pkt, null
  br i1 %tobool.not, label %entry.cleanup42_crit_edge, label %if.then

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.then:                                          ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.then.if.end35_crit_edge, label %if.then1

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then1:                                         ; preds = %if.then
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %dst = getelementptr inbounds %struct.rx_pkt_attrib, ptr %pattrib, i32 0, i32 23
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst, ptr noundef dereferenceable(6) %mac_addr.i, i32 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %if.then1.if.end35_crit_edge, label %if.then8

if.then1.if.end35_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then8:                                         ; preds = %if.then1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dst, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #4
  %call12 = tail call ptr @skb_clone(ptr noundef nonnull %pkt, i32 noundef 2592) #4
  br label %if.end

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %dst) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  %pskb2.0 = phi ptr [ %call12, %if.then10 ], [ null, %if.else ]
  %psta.0 = phi ptr [ %call11, %if.then10 ], [ %call15, %if.else ]
  %tobool16.not = icmp eq ptr %psta.0, null
  br i1 %tobool16.not, label %if.end.if.end35_crit_edge, label %if.then17

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then17:                                        ; preds = %if.end
  %pnetdev18 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %6 = ptrtoint ptr %pnetdev18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pnetdev18, align 8
  %8 = getelementptr inbounds %struct.anon, ptr %pkt, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %call19 = tail call zeroext i16 @rtw_recv_select_queue(ptr noundef nonnull %pkt) #4
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 10
  %10 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call19, ptr %queue_mapping1.i, align 8
  %call20 = tail call i32 @_rtw_xmit_entry(ptr noundef nonnull %pkt, ptr noundef %7) #4
  %tobool22.not = icmp eq ptr %pskb2.0, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %if.then17.cleanup42_crit_edge, label %if.then17.if.end35_crit_edge

if.then17.if.end35_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then17.cleanup42_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end35:                                         ; preds = %if.then17.if.end35_crit_edge, %if.end.if.end35_crit_edge, %if.then1.if.end35_crit_edge, %if.then.if.end35_crit_edge
  %pkt.addr.3 = phi ptr [ %pkt, %if.then.if.end35_crit_edge ], [ %pskb2.0, %if.then17.if.end35_crit_edge ], [ %pkt, %if.end.if.end35_crit_edge ], [ %pkt, %if.then1.if.end35_crit_edge ]
  %pnetdev36 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %11 = ptrtoint ptr %pnetdev36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pnetdev36, align 8
  %call37 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %pkt.addr.3, ptr noundef %12) #4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %pkt.addr.3, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %call37, ptr %protocol, align 8
  %14 = ptrtoint ptr %pnetdev36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pnetdev36, align 8
  %16 = getelementptr inbounds %struct.anon, ptr %pkt.addr.3, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %16, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %pkt.addr.3, i32 0, i32 15
  %18 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %19 = load ptr, ptr %pnetdev36, align 8
  %call40 = tail call i32 @_rtw_netif_rx(ptr noundef %19, ptr noundef nonnull %pkt.addr.3) #4
  br label %cleanup42

cleanup42:                                        ; preds = %if.end35, %if.then17.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_recv_select_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_xmit_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_netif_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_handle_tkip_mic_err(ptr noundef %padapter, i8 noundef zeroext %bgroup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %last_mic_err_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 44
  %0 = ptrtoint ptr %last_mic_err_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_mic_err_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %last_mic_err_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %last_mic_err_time, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %sub = sub i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %sub)
  %cmp3 = icmp ult i32 %sub, 6000
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %btkip_countermeasure = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 45
  %4 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %btkip_countermeasure, align 8
  %5 = ptrtoint ptr %last_mic_err_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %last_mic_err_time, align 4
  %btkip_countermeasure_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 47
  %6 = ptrtoint ptr %btkip_countermeasure_time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %btkip_countermeasure_time, align 4
  br label %if.end8

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %last_mic_err_time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_mic_err_time, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then4, %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bgroup)
  %tobool.not = icmp eq i8 %bgroup, 0
  %. = zext i1 %tobool.not to i32
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %9 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pnetdev, align 8
  %assoc_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 19
  tail call void @cfg80211_michael_mic_failure(ptr noundef %10, ptr noundef %assoc_bssid, i32 noundef %., i32 noundef -1, ptr noundef null, i32 noundef 2592) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_recv_indicatepkt(ptr noundef %padapter, ptr noundef %precv_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 1
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %attrib = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %2 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %data, align 4
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 7
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %6
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %tail.i, align 8
  %8 = load i32, ptr %len, align 4
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %len2, align 4
  tail call void @rtw_os_recv_indicate_pkt(ptr noundef %padapter, ptr noundef nonnull %1, ptr noundef %attrib)
  %10 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pkt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  %call4 = tail call i32 @rtw_free_recvframe(ptr noundef %precv_frame, ptr noundef %free_recv_queue) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_recvframe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_init_recv_timer(ptr noundef %preorder_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reordering_ctrl_timer = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %reordering_ctrl_timer, ptr noundef nonnull @rtw_reordering_ctrl_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @rtw_init_recv_timer.__key) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_reordering_ctrl_timeout_handler(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @rtw_init_recv_timer.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/os_dep/recv_linux.c", i32 226, i32 2}
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
