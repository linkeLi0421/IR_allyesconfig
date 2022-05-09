; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_ioctl_set.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i8, i32, i32, [5 x %union.Keytype], [5 x %union.Keytype], [5 x %union.Keytype], %union.pn48, %union.pn48, i32, [6 x %union.Keytype], %union.pn48, %union.pn48, i32, i32, i32, i32, i32, i32, [512 x i8], i32, %struct.arc4_ctx, %struct.arc4_ctx, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@rtw_set_802_11_ssid.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_set_802_11_ssid\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/rtl8723bs/core/rtw_ioctl_set.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"set ssid [%s] fw_state = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@rtw_set_802_11_connect.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_set_802_11_connect\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(%s)  fw_state = 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.rtw_set_802_11_disassociate = private unnamed_addr constant [28 x i8] c"rtw_set_802_11_disassociate\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 144, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [50 x i8] c"../drivers/staging/rtl8723bs/core/rtw_ioctl_set.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 249, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_validate_bssid(ptr nocapture noundef readonly %bssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bssid, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %lor.lhs.false3 [
    i8 0, label %land.lhs.true.i
    i8 -1, label %land.lhs.true.i11
  ]

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr i8, ptr %bssid, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp4.i = icmp eq i8 %4, 0
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr i8, ptr %bssid, i32 2
  %5 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp9.i = icmp eq i8 %6, 0
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true6.i.if.end_crit_edge

land.lhs.true6.i.if.end_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true11.i:                                ; preds = %land.lhs.true6.i
  %arrayidx12.i = getelementptr i8, ptr %bssid, i32 3
  %7 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp14.i = icmp eq i8 %8, 0
  br i1 %cmp14.i, label %land.lhs.true16.i, label %land.lhs.true11.i.if.end_crit_edge

land.lhs.true11.i.if.end_crit_edge:               ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true16.i:                                ; preds = %land.lhs.true11.i
  %arrayidx17.i = getelementptr i8, ptr %bssid, i32 4
  %9 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp19.i = icmp eq i8 %10, 0
  br i1 %cmp19.i, label %is_zero_mac_addr.exit, label %land.lhs.true16.i.if.end_crit_edge

land.lhs.true16.i.if.end_crit_edge:               ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

is_zero_mac_addr.exit:                            ; preds = %land.lhs.true16.i
  %arrayidx21.i = getelementptr i8, ptr %bssid, i32 5
  %11 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp23.i.not.not = icmp eq i8 %12, 0
  br i1 %cmp23.i.not.not, label %is_zero_mac_addr.exit.if.then_crit_edge, label %is_zero_mac_addr.exit.if.end_crit_edge

is_zero_mac_addr.exit.if.end_crit_edge:           ; preds = %is_zero_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

is_zero_mac_addr.exit.if.then_crit_edge:          ; preds = %is_zero_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.i11:                                ; preds = %entry
  %arrayidx2.i9 = getelementptr i8, ptr %bssid, i32 1
  %13 = ptrtoint ptr %arrayidx2.i9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp4.i10 = icmp eq i8 %14, -1
  br i1 %cmp4.i10, label %land.lhs.true6.i14, label %land.lhs.true.i11.if.end_crit_edge

land.lhs.true.i11.if.end_crit_edge:               ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true6.i14:                               ; preds = %land.lhs.true.i11
  %arrayidx7.i12 = getelementptr i8, ptr %bssid, i32 2
  %15 = ptrtoint ptr %arrayidx7.i12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp9.i13 = icmp eq i8 %16, -1
  br i1 %cmp9.i13, label %land.lhs.true11.i17, label %land.lhs.true6.i14.if.end_crit_edge

land.lhs.true6.i14.if.end_crit_edge:              ; preds = %land.lhs.true6.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true11.i17:                              ; preds = %land.lhs.true6.i14
  %arrayidx12.i15 = getelementptr i8, ptr %bssid, i32 3
  %17 = ptrtoint ptr %arrayidx12.i15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12.i15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp14.i16 = icmp eq i8 %18, -1
  br i1 %cmp14.i16, label %land.lhs.true16.i20, label %land.lhs.true11.i17.if.end_crit_edge

land.lhs.true11.i17.if.end_crit_edge:             ; preds = %land.lhs.true11.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true16.i20:                              ; preds = %land.lhs.true11.i17
  %arrayidx17.i18 = getelementptr i8, ptr %bssid, i32 4
  %19 = ptrtoint ptr %arrayidx17.i18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17.i18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp19.i19 = icmp eq i8 %20, -1
  br i1 %cmp19.i19, label %is_broadcast_mac_addr.exit, label %land.lhs.true16.i20.if.end_crit_edge

land.lhs.true16.i20.if.end_crit_edge:             ; preds = %land.lhs.true16.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

is_broadcast_mac_addr.exit:                       ; preds = %land.lhs.true16.i20
  %arrayidx21.i21 = getelementptr i8, ptr %bssid, i32 5
  %21 = ptrtoint ptr %arrayidx21.i21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21.i21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp23.i22.not = icmp eq i8 %22, -1
  br i1 %cmp23.i22.not, label %is_broadcast_mac_addr.exit.if.then_crit_edge, label %is_broadcast_mac_addr.exit.if.end_crit_edge

is_broadcast_mac_addr.exit.if.end_crit_edge:      ; preds = %is_broadcast_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

is_broadcast_mac_addr.exit.if.then_crit_edge:     ; preds = %is_broadcast_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false3:                                   ; preds = %entry
  %.old = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.old)
  %tobool5.not.old = icmp eq i8 %.old, 0
  br i1 %tobool5.not.old, label %lor.lhs.false3.if.end_crit_edge, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %is_broadcast_mac_addr.exit.if.then_crit_edge, %is_zero_mac_addr.exit.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false3.if.end_crit_edge, %is_broadcast_mac_addr.exit.if.end_crit_edge, %land.lhs.true16.i20.if.end_crit_edge, %land.lhs.true11.i17.if.end_crit_edge, %land.lhs.true6.i14.if.end_crit_edge, %land.lhs.true.i11.if.end_crit_edge, %is_zero_mac_addr.exit.if.end_crit_edge, %land.lhs.true16.i.if.end_crit_edge, %land.lhs.true11.i.if.end_crit_edge, %land.lhs.true6.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %ret.0 = phi i8 [ 0, %if.then ], [ 1, %lor.lhs.false3.if.end_crit_edge ], [ 1, %is_broadcast_mac_addr.exit.if.end_crit_edge ], [ 1, %land.lhs.true.i11.if.end_crit_edge ], [ 1, %land.lhs.true6.i14.if.end_crit_edge ], [ 1, %land.lhs.true11.i17.if.end_crit_edge ], [ 1, %land.lhs.true16.i20.if.end_crit_edge ], [ 1, %is_zero_mac_addr.exit.if.end_crit_edge ], [ 1, %land.lhs.true.i.if.end_crit_edge ], [ 1, %land.lhs.true6.i.if.end_crit_edge ], [ 1, %land.lhs.true11.i.if.end_crit_edge ], [ 1, %land.lhs.true16.i.if.end_crit_edge ]
  ret i8 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_validate_ssid(ptr nocapture noundef readonly %ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %1)
  %cmp = icmp ult i32 %1, 33
  %spec.store.select = zext i1 %cmp to i8
  ret i8 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_do_join(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %0 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scanned_queue, align 4
  %join_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 5
  %2 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2, ptr %join_res, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %or.i = or i32 %4, 128
  store i32 %or.i, ptr %fw_state.i, align 4
  %pscanned = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13
  %5 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %pscanned, align 4
  %to_join = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %to_join, align 1
  %7 = load volatile ptr, ptr %scanned_queue, align 4
  %cmp.i.not = icmp eq ptr %7, %scanned_queue
  br i1 %cmp.i.not, label %if.then, label %if.else22

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %9, -129
  store i32 %and.i, ptr %fw_state.i, align 4
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %10 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bBusyTraffic, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %if.then.if.then13_crit_edge, label %lor.lhs.false

if.then.if.then13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.then
  %call9 = tail call zeroext i8 @rtw_to_roam(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %cmp11.not = icmp eq i8 %call9, 0
  br i1 %cmp11.not, label %if.else, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.then.if.then13_crit_edge
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  %call14 = tail call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %padapter, ptr noundef %assoc_ssid, i32 noundef 1, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call14)
  %cmp16.not = icmp eq i8 %call14, 1
  br i1 %cmp16.not, label %if.then13.cleanup75_crit_edge, label %if.then18

if.then13.cleanup75_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %to_join, align 1
  br label %cleanup75

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %to_join, align 1
  br label %cleanup75

if.else22:                                        ; preds = %entry
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %call25 = tail call i32 @rtw_select_and_join_from_scanned_queue(ptr noundef %mlmepriv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 1
  br i1 %cmp26, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %to_join, align 1
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %15, 650
  %call.i = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %add.i) #5
  br label %cleanup75

if.else30:                                        ; preds = %if.else22
  %16 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_state.i, align 4
  %and.i119 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i.not = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i.not, label %if.else45, label %if.then34

if.then34:                                        ; preds = %if.else30
  %18 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 64, ptr %fw_state.i, align 4
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 36, i32 1
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 36, i32 3
  %assoc_ssid37 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  %19 = call ptr @memcpy(ptr %ssid, ptr %assoc_ssid37, i32 36)
  tail call void @rtw_update_registrypriv_dev_network(ptr noundef %padapter) #5
  tail call void @rtw_generate_random_ibss(ptr noundef %mac_address) #5
  %call38 = tail call zeroext i8 @rtw_createbss_cmd(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call38)
  %cmp40.not = icmp eq i8 %call38, 1
  br i1 %cmp40.not, label %if.end43, label %if.then34.cleanup75_crit_edge

if.then34.cleanup75_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

if.end43:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %to_join, align 1
  br label %cleanup75

if.else45:                                        ; preds = %if.else30
  %and.i121 = and i32 %17, -129
  %21 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i121, ptr %fw_state.i, align 4
  %bBusyTraffic47 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %22 = ptrtoint ptr %bBusyTraffic47 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bBusyTraffic47, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp50 = icmp eq i8 %23, 0
  br i1 %cmp50, label %if.else45.if.then57_crit_edge, label %lor.lhs.false52

if.else45.if.then57_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57

lor.lhs.false52:                                  ; preds = %if.else45
  %call53 = tail call zeroext i8 @rtw_to_roam(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call53)
  %cmp55.not = icmp eq i8 %call53, 0
  br i1 %cmp55.not, label %if.else66, label %lor.lhs.false52.if.then57_crit_edge

lor.lhs.false52.if.then57_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false52.if.then57_crit_edge, %if.else45.if.then57_crit_edge
  %assoc_ssid58 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  %call59 = tail call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %padapter, ptr noundef %assoc_ssid58, i32 noundef 1, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call59)
  %cmp61.not = icmp eq i8 %call59, 1
  br i1 %cmp61.not, label %if.then57.cleanup75_crit_edge, label %if.then63

if.then57.cleanup75_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

if.then63:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %to_join, align 1
  br label %cleanup75

if.else66:                                        ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %to_join, align 1
  br label %cleanup75

cleanup75:                                        ; preds = %if.else66, %if.then63, %if.then57.cleanup75_crit_edge, %if.end43, %if.then34.cleanup75_crit_edge, %if.then28, %if.else, %if.then18, %if.then13.cleanup75_crit_edge
  %retval.0 = phi i8 [ %call14, %if.then18 ], [ 1, %if.then13.cleanup75_crit_edge ], [ 0, %if.else ], [ 1, %if.then28 ], [ %call59, %if.then63 ], [ 1, %if.then57.cleanup75_crit_edge ], [ 0, %if.else66 ], [ 1, %if.end43 ], [ 0, %if.then34.cleanup75_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_to_roam(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_sitesurvey_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_select_and_join_from_scanned_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_update_registrypriv_dev_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_generate_random_ibss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_createbss_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_ssid(ptr noundef %padapter, ptr noundef %ssid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %cur_network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_set_802_11_ssid.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_set_802_11_ssid, %if.then)) #5
          to label %do.end7 [label %if.then], !srcloc !22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 8
  %ssid4 = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %ssid, i32 0, i32 1
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_set_802_11_ssid.__UNIQUE_ID_ddebug345, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %ssid4, i32 noundef %3) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 27
  %4 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %do.end7.exit_crit_edge, label %if.end10

do.end7.exit_crit_edge:                           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end10:                                         ; preds = %do.end7
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #5
  %fw_state.i133 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %fw_state.i133 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_state.i133, align 4
  %and.i = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.else, label %if.end10.handle_tkip_countermeasure_crit_edge

if.end10.handle_tkip_countermeasure_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_tkip_countermeasure

if.else:                                          ; preds = %if.end10
  %and.i135 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool.not.i136.not = icmp eq i32 %and.i135, 0
  br i1 %tobool.not.i136.not, label %if.end20, label %if.else.release_mlme_lock_crit_edge

if.else.release_mlme_lock_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_mlme_lock

if.end20:                                         ; preds = %if.else
  %and.i139 = and i32 %7, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool.not.i140.not = icmp eq i32 %and.i139, 0
  br i1 %tobool.not.i140.not, label %if.end20.handle_tkip_countermeasure_crit_edge, label %if.then24

if.end20.handle_tkip_countermeasure_crit_edge:    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_tkip_countermeasure

if.then24:                                        ; preds = %if.end20
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  %8 = ptrtoint ptr %assoc_ssid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %assoc_ssid, align 4
  %10 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp26 = icmp eq i32 %9, %11
  br i1 %cmp26, label %land.lhs.true, label %if.then24.if.else60_crit_edge

if.then24.if.else60_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else60

land.lhs.true:                                    ; preds = %if.then24
  %ssid29 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18, i32 1
  %ssid30 = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %ssid, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr %ssid29, ptr %ssid30, i32 %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool34.not = icmp eq i32 %bcmp, 0
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true.if.else60_crit_edge

land.lhs.true.if.else60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else60

if.then35:                                        ; preds = %land.lhs.true
  %12 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp37 = icmp eq i32 %12, 0
  br i1 %cmp37, label %if.then39, label %if.else57

if.then39:                                        ; preds = %if.then35
  %call40 = tail call i32 @rtw_is_same_ibss(ptr noundef %padapter, ptr noundef %cur_network) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.then39.release_mlme_lock_crit_edge

if.then39.release_mlme_lock_crit_edge:            ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_mlme_lock

if.then43:                                        ; preds = %if.then39
  %call44 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext true) #5
  %13 = ptrtoint ptr %fw_state.i133 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i133, align 4
  %and.i147 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147)
  %tobool.not.i148.not = icmp eq i32 %and.i147, 0
  br i1 %tobool.not.i148.not, label %if.then43.if.end49_crit_edge, label %if.then48

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then43.if.end49_crit_edge
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #5
  %15 = ptrtoint ptr %fw_state.i133 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_state.i133, align 4
  %and.i151 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151)
  %tobool.not.i152.not = icmp eq i32 %and.i151, 0
  br i1 %tobool.not.i152.not, label %if.end49.handle_tkip_countermeasure_crit_edge, label %if.then53

if.end49.handle_tkip_countermeasure_crit_edge:    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_tkip_countermeasure

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %and.i155 = and i32 %16, -97
  %or.i = or i32 %and.i155, 32
  %17 = ptrtoint ptr %fw_state.i133 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %fw_state.i133, align 4
  br label %handle_tkip_countermeasure

if.else57:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %call58 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %handle_tkip_countermeasure

if.else60:                                        ; preds = %land.lhs.true.if.else60_crit_edge, %if.then24.if.else60_crit_edge
  %call61 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext true) #5
  %18 = ptrtoint ptr %fw_state.i133 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_state.i133, align 4
  %and.i158 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158)
  %tobool.not.i159.not = icmp eq i32 %and.i158, 0
  br i1 %tobool.not.i159.not, label %if.else60.if.end66_crit_edge, label %if.then65

if.else60.if.end66_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then65:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.else60.if.end66_crit_edge
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #5
  %20 = ptrtoint ptr %fw_state.i133 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_state.i133, align 4
  %and.i162 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool.not.i163.not = icmp eq i32 %and.i162, 0
  br i1 %tobool.not.i163.not, label %if.end66.handle_tkip_countermeasure_crit_edge, label %if.then70

if.end66.handle_tkip_countermeasure_crit_edge:    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_tkip_countermeasure

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %and.i166 = and i32 %21, -97
  %or.i168 = or i32 %and.i166, 32
  %22 = ptrtoint ptr %fw_state.i133 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i168, ptr %fw_state.i133, align 4
  br label %handle_tkip_countermeasure

handle_tkip_countermeasure:                       ; preds = %if.then70, %if.end66.handle_tkip_countermeasure_crit_edge, %if.else57, %if.then53, %if.end49.handle_tkip_countermeasure_crit_edge, %if.end20.handle_tkip_countermeasure_crit_edge, %if.end10.handle_tkip_countermeasure_crit_edge
  %call74 = tail call zeroext i8 @rtw_handle_tkip_countermeasure(ptr noundef %padapter, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call74)
  %cmp76 = icmp eq i8 %call74, 0
  br i1 %cmp76, label %handle_tkip_countermeasure.release_mlme_lock_crit_edge, label %if.end79

handle_tkip_countermeasure.release_mlme_lock_crit_edge: ; preds = %handle_tkip_countermeasure
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_mlme_lock

if.end79:                                         ; preds = %handle_tkip_countermeasure
  %23 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp.i = icmp ugt i32 %24, 32
  br i1 %cmp.i, label %if.end79.release_mlme_lock_crit_edge, label %if.end85

if.end79.release_mlme_lock_crit_edge:             ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_mlme_lock

if.end85:                                         ; preds = %if.end79
  %assoc_ssid86 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  %25 = call ptr @memcpy(ptr %assoc_ssid86, ptr %ssid, i32 36)
  %assoc_by_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %26 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %assoc_by_bssid, align 4
  %27 = ptrtoint ptr %fw_state.i133 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_state.i133, align 4
  %and.i170 = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i170)
  %tobool.not.i171.not = icmp eq i32 %and.i170, 0
  br i1 %tobool.not.i171.not, label %if.else91, label %if.then90

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %to_join = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %to_join, align 1
  br label %release_mlme_lock

if.else91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %call92 = tail call zeroext i8 @rtw_do_join(ptr noundef %padapter)
  br label %release_mlme_lock

release_mlme_lock:                                ; preds = %if.else91, %if.then90, %if.end79.release_mlme_lock_crit_edge, %handle_tkip_countermeasure.release_mlme_lock_crit_edge, %if.then39.release_mlme_lock_crit_edge, %if.else.release_mlme_lock_crit_edge
  %status.0 = phi i8 [ 1, %if.then90 ], [ %call92, %if.else91 ], [ 1, %if.else.release_mlme_lock_crit_edge ], [ 1, %if.then39.release_mlme_lock_crit_edge ], [ 0, %handle_tkip_countermeasure.release_mlme_lock_crit_edge ], [ 0, %if.end79.release_mlme_lock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #5
  br label %exit

exit:                                             ; preds = %release_mlme_lock, %do.end7.exit_crit_edge
  %status.1 = phi i8 [ %status.0, %release_mlme_lock ], [ 0, %do.end7.exit_crit_edge ]
  ret i8 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_is_same_ibss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_assoc_resources(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_handle_tkip_countermeasure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_connect(ptr noundef %padapter, ptr noundef readonly %bssid, ptr noundef readonly %ssid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %tobool.not = icmp eq ptr %ssid, null
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %lor.lhs.false

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp.i = icmp ugt i32 %1, 32
  br i1 %cmp.i, label %lor.lhs.false.if.end.thread_crit_edge, label %if.end

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq ptr %bssid, null
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.end.lor.lhs.false3_crit_edge

if.end.lor.lhs.false3_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end.thread:                                    ; preds = %lor.lhs.false.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %tobool2.not116 = icmp eq ptr %bssid, null
  br i1 %tobool2.not116, label %if.end.thread.exit_crit_edge, label %if.end.thread.lor.lhs.false3_crit_edge

if.end.thread.lor.lhs.false3_crit_edge:           ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false3

if.end.thread.exit_crit_edge:                     ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

lor.lhs.false3:                                   ; preds = %if.end.thread.lor.lhs.false3_crit_edge, %if.end.lor.lhs.false3_crit_edge
  %ssid_valid.0.off0118 = phi i1 [ false, %if.end.thread.lor.lhs.false3_crit_edge ], [ true, %if.end.lor.lhs.false3_crit_edge ]
  %2 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bssid, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %3, label %lor.lhs.false3.i [
    i8 0, label %land.lhs.true.i.i
    i8 -1, label %land.lhs.true.i11.i
  ]

land.lhs.true.i.i:                                ; preds = %lor.lhs.false3
  %arrayidx2.i.i = getelementptr i8, ptr %bssid, i32 1
  %5 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp4.i.i = icmp eq i8 %6, 0
  br i1 %cmp4.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.if.end13_crit_edge

land.lhs.true.i.i.if.end13_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %bssid, i32 2
  %7 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9.i.i = icmp eq i8 %8, 0
  br i1 %cmp9.i.i, label %land.lhs.true11.i.i, label %land.lhs.true6.i.i.if.end13_crit_edge

land.lhs.true6.i.i.if.end13_crit_edge:            ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true11.i.i:                              ; preds = %land.lhs.true6.i.i
  %arrayidx12.i.i = getelementptr i8, ptr %bssid, i32 3
  %9 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp14.i.i = icmp eq i8 %10, 0
  br i1 %cmp14.i.i, label %land.lhs.true16.i.i, label %land.lhs.true11.i.i.if.end13_crit_edge

land.lhs.true11.i.i.if.end13_crit_edge:           ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true16.i.i:                              ; preds = %land.lhs.true11.i.i
  %arrayidx17.i.i = getelementptr i8, ptr %bssid, i32 4
  %11 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx17.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp19.i.i = icmp eq i8 %12, 0
  br i1 %cmp19.i.i, label %is_zero_mac_addr.exit.i, label %land.lhs.true16.i.i.if.end13_crit_edge

land.lhs.true16.i.i.if.end13_crit_edge:           ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

is_zero_mac_addr.exit.i:                          ; preds = %land.lhs.true16.i.i
  %arrayidx21.i.i = getelementptr i8, ptr %bssid, i32 5
  %13 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx21.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp23.i.not.not.i = icmp ne i8 %14, 0
  %brmerge = or i1 %ssid_valid.0.off0118, %cmp23.i.not.not.i
  %not.cmp23.i.not.not.i = xor i1 %cmp23.i.not.not.i, true
  br i1 %brmerge, label %is_zero_mac_addr.exit.i.if.end13_crit_edge, label %is_zero_mac_addr.exit.i.exit_crit_edge

is_zero_mac_addr.exit.i.exit_crit_edge:           ; preds = %is_zero_mac_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

is_zero_mac_addr.exit.i.if.end13_crit_edge:       ; preds = %is_zero_mac_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true.i11.i:                              ; preds = %lor.lhs.false3
  %arrayidx2.i9.i = getelementptr i8, ptr %bssid, i32 1
  %15 = ptrtoint ptr %arrayidx2.i9.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp4.i10.i = icmp eq i8 %16, -1
  br i1 %cmp4.i10.i, label %land.lhs.true6.i14.i, label %land.lhs.true.i11.i.if.end13_crit_edge

land.lhs.true.i11.i.if.end13_crit_edge:           ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true6.i14.i:                             ; preds = %land.lhs.true.i11.i
  %arrayidx7.i12.i = getelementptr i8, ptr %bssid, i32 2
  %17 = ptrtoint ptr %arrayidx7.i12.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.i12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp9.i13.i = icmp eq i8 %18, -1
  br i1 %cmp9.i13.i, label %land.lhs.true11.i17.i, label %land.lhs.true6.i14.i.if.end13_crit_edge

land.lhs.true6.i14.i.if.end13_crit_edge:          ; preds = %land.lhs.true6.i14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true11.i17.i:                            ; preds = %land.lhs.true6.i14.i
  %arrayidx12.i15.i = getelementptr i8, ptr %bssid, i32 3
  %19 = ptrtoint ptr %arrayidx12.i15.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx12.i15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp14.i16.i = icmp eq i8 %20, -1
  br i1 %cmp14.i16.i, label %land.lhs.true16.i20.i, label %land.lhs.true11.i17.i.if.end13_crit_edge

land.lhs.true11.i17.i.if.end13_crit_edge:         ; preds = %land.lhs.true11.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true16.i20.i:                            ; preds = %land.lhs.true11.i17.i
  %arrayidx17.i18.i = getelementptr i8, ptr %bssid, i32 4
  %21 = ptrtoint ptr %arrayidx17.i18.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx17.i18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp19.i19.i = icmp eq i8 %22, -1
  br i1 %cmp19.i19.i, label %is_broadcast_mac_addr.exit.i, label %land.lhs.true16.i20.i.if.end13_crit_edge

land.lhs.true16.i20.i.if.end13_crit_edge:         ; preds = %land.lhs.true16.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

is_broadcast_mac_addr.exit.i:                     ; preds = %land.lhs.true16.i20.i
  %arrayidx21.i21.i = getelementptr i8, ptr %bssid, i32 5
  %23 = ptrtoint ptr %arrayidx21.i21.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx21.i21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp23.i22.not.i = icmp ne i8 %24, -1
  %brmerge111 = or i1 %ssid_valid.0.off0118, %cmp23.i22.not.i
  %not.cmp23.i22.not.i = xor i1 %cmp23.i22.not.i, true
  br i1 %brmerge111, label %is_broadcast_mac_addr.exit.i.if.end13_crit_edge, label %is_broadcast_mac_addr.exit.i.exit_crit_edge

is_broadcast_mac_addr.exit.i.exit_crit_edge:      ; preds = %is_broadcast_mac_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

is_broadcast_mac_addr.exit.i.if.end13_crit_edge:  ; preds = %is_broadcast_mac_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false3
  %.old.i = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.old.i)
  %tobool5.not.old.i = icmp eq i8 %.old.i, 0
  %brmerge113 = or i1 %ssid_valid.0.off0118, %tobool5.not.old.i
  %not.tobool5.not.old.i = xor i1 %tobool5.not.old.i, true
  br i1 %brmerge113, label %lor.lhs.false3.i.if.end13_crit_edge, label %lor.lhs.false3.i.exit_crit_edge

lor.lhs.false3.i.exit_crit_edge:                  ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

lor.lhs.false3.i.if.end13_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %lor.lhs.false3.i.if.end13_crit_edge, %is_broadcast_mac_addr.exit.i.if.end13_crit_edge, %land.lhs.true16.i20.i.if.end13_crit_edge, %land.lhs.true11.i17.i.if.end13_crit_edge, %land.lhs.true6.i14.i.if.end13_crit_edge, %land.lhs.true.i11.i.if.end13_crit_edge, %is_zero_mac_addr.exit.i.if.end13_crit_edge, %land.lhs.true16.i.i.if.end13_crit_edge, %land.lhs.true11.i.i.if.end13_crit_edge, %land.lhs.true6.i.i.if.end13_crit_edge, %land.lhs.true.i.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %tobool2.not120 = phi i1 [ false, %land.lhs.true16.i.i.if.end13_crit_edge ], [ false, %land.lhs.true11.i.i.if.end13_crit_edge ], [ false, %land.lhs.true6.i.i.if.end13_crit_edge ], [ false, %land.lhs.true.i.i.if.end13_crit_edge ], [ false, %is_zero_mac_addr.exit.i.if.end13_crit_edge ], [ false, %land.lhs.true16.i20.i.if.end13_crit_edge ], [ false, %land.lhs.true11.i17.i.if.end13_crit_edge ], [ false, %land.lhs.true6.i14.i.if.end13_crit_edge ], [ false, %land.lhs.true.i11.i.if.end13_crit_edge ], [ false, %is_broadcast_mac_addr.exit.i.if.end13_crit_edge ], [ false, %lor.lhs.false3.i.if.end13_crit_edge ], [ true, %if.end.if.end13_crit_edge ]
  %ssid_valid.0.off0117 = phi i1 [ %ssid_valid.0.off0118, %land.lhs.true16.i.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %land.lhs.true11.i.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %land.lhs.true6.i.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %land.lhs.true.i.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %is_zero_mac_addr.exit.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %land.lhs.true16.i20.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %land.lhs.true11.i17.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %land.lhs.true6.i14.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %land.lhs.true.i11.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %is_broadcast_mac_addr.exit.i.if.end13_crit_edge ], [ %ssid_valid.0.off0118, %lor.lhs.false3.i.if.end13_crit_edge ], [ true, %if.end.if.end13_crit_edge ]
  %bssid_valid.0.off0109 = phi i1 [ false, %land.lhs.true16.i.i.if.end13_crit_edge ], [ false, %land.lhs.true11.i.i.if.end13_crit_edge ], [ false, %land.lhs.true6.i.i.if.end13_crit_edge ], [ false, %land.lhs.true.i.i.if.end13_crit_edge ], [ %not.cmp23.i.not.not.i, %is_zero_mac_addr.exit.i.if.end13_crit_edge ], [ false, %land.lhs.true16.i20.i.if.end13_crit_edge ], [ false, %land.lhs.true11.i17.i.if.end13_crit_edge ], [ false, %land.lhs.true6.i14.i.if.end13_crit_edge ], [ false, %land.lhs.true.i11.i.if.end13_crit_edge ], [ %not.cmp23.i22.not.i, %is_broadcast_mac_addr.exit.i.if.end13_crit_edge ], [ %not.tobool5.not.old.i, %lor.lhs.false3.i.if.end13_crit_edge ], [ true, %if.end.if.end13_crit_edge ]
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 27
  %25 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp15 = icmp eq i8 %26, 0
  br i1 %cmp15, label %if.end13.exit_crit_edge, label %if.end18

if.end13.exit_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end18:                                         ; preds = %if.end13
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_set_802_11_connect.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_set_802_11_connect, %if.then24)) #5
          to label %do.end29 [label %if.then24], !srcloc !22

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %27 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pnetdev, align 8
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fw_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_set_802_11_connect.__UNIQUE_ID_ddebug346, ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %28, i32 noundef %30) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %if.end18
  %fw_state.i96 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %fw_state.i96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw_state.i96, align 4
  %33 = and i32 %32, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %33)
  %.not = icmp eq i32 %33, 128
  br i1 %.not, label %do.end29.release_mlme_lock_crit_edge, label %handle_tkip_countermeasure

do.end29.release_mlme_lock_crit_edge:             ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_mlme_lock

handle_tkip_countermeasure:                       ; preds = %do.end29
  %call40 = tail call zeroext i8 @rtw_handle_tkip_countermeasure(ptr noundef %padapter, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call40)
  %cmp42 = icmp eq i8 %call40, 0
  br i1 %cmp42, label %handle_tkip_countermeasure.release_mlme_lock_crit_edge, label %if.end45

handle_tkip_countermeasure.release_mlme_lock_crit_edge: ; preds = %handle_tkip_countermeasure
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_mlme_lock

if.end45:                                         ; preds = %handle_tkip_countermeasure
  %ssid_valid.0.off0.not = xor i1 %ssid_valid.0.off0117, true
  %brmerge94 = or i1 %tobool.not, %ssid_valid.0.off0.not
  %assoc_ssid52 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  br i1 %brmerge94, label %if.else51, label %if.then50

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %34 = call ptr @memcpy(ptr %assoc_ssid52, ptr %ssid, i32 36)
  br label %if.end53

if.else51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %35 = call ptr @memset(ptr %assoc_ssid52, i32 0, i32 36)
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then50
  %brmerge95 = or i1 %tobool2.not120, %bssid_valid.0.off0109
  br i1 %brmerge95, label %if.end53.if.end61_crit_edge, label %if.then58

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %assoc_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 19
  %36 = call ptr @memcpy(ptr %assoc_bssid, ptr %bssid, i32 6)
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end53.if.end61_crit_edge
  %.sink = phi i32 [ 1, %if.then58 ], [ 0, %if.end53.if.end61_crit_edge ]
  %37 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %37, align 4
  %39 = ptrtoint ptr %fw_state.i96 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fw_state.i96, align 4
  %and.i102 = and i32 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i103.not = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103.not, label %if.else66, label %if.then65

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %to_join = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %to_join, align 1
  br label %release_mlme_lock

if.else66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %call67 = tail call zeroext i8 @rtw_do_join(ptr noundef %padapter)
  br label %release_mlme_lock

release_mlme_lock:                                ; preds = %if.else66, %if.then65, %handle_tkip_countermeasure.release_mlme_lock_crit_edge, %do.end29.release_mlme_lock_crit_edge
  %status.0 = phi i8 [ 1, %if.then65 ], [ %call67, %if.else66 ], [ 0, %handle_tkip_countermeasure.release_mlme_lock_crit_edge ], [ 1, %do.end29.release_mlme_lock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #5
  br label %exit

exit:                                             ; preds = %release_mlme_lock, %if.end13.exit_crit_edge, %lor.lhs.false3.i.exit_crit_edge, %is_broadcast_mac_addr.exit.i.exit_crit_edge, %is_zero_mac_addr.exit.i.exit_crit_edge, %if.end.thread.exit_crit_edge
  %status.1 = phi i8 [ %status.0, %release_mlme_lock ], [ 0, %if.end13.exit_crit_edge ], [ 0, %is_zero_mac_addr.exit.i.exit_crit_edge ], [ 0, %is_broadcast_mac_addr.exit.i.exit_crit_edge ], [ 0, %lor.lhs.false3.i.exit_crit_edge ], [ 0, %if.end.thread.exit_crit_edge ]
  ret i8 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_infrastructure_mode(ptr noundef %padapter, i32 noundef %networktype) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %infrastructure_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 8
  %0 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %infrastructure_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %networktype)
  %cmp.not = icmp eq i32 %1, %networktype
  br i1 %cmp.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp2 = icmp eq i32 %1, 4
  br i1 %cmp2, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %join_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 5
  %2 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %join_res, align 4
  tail call void @stop_ap_mode(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #5
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %infrastructure_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.if.end8_crit_edge

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %call7 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext true) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %lor.lhs.false.if.end8_crit_edge
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %9 = and i32 %8, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end8.if.end15_crit_edge, label %if.then14

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end8.if.end15_crit_edge
  %11 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %infrastructure_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch = icmp ult i32 %12, 2
  br i1 %switch, label %if.then19, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  %13 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i, align 4
  %and.i63 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i64.not = icmp eq i32 %and.i63, 0
  br i1 %tobool.not.i64.not, label %if.then19.if.end24_crit_edge, label %if.then22

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then19.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %15 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %networktype, ptr %infrastructure_mode, align 4
  %16 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fw_state.i, align 4
  %17 = zext i32 %networktype to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %networktype, label %if.end24.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 4, label %sw.bb26
  ]

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %fw_state.i, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %fw_state.i, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %fw_state.i, align 4
  tail call void @start_ap_mode(ptr noundef %padapter) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb25, %sw.bb, %if.end24.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #5
  br label %if.end29

if.end29:                                         ; preds = %sw.epilog, %entry.if.end29_crit_edge
  ret i8 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_ap_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_ap_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_disassociate(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #5
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext true) #5
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #5
  %call2 = tail call zeroext i8 @rtw_free_assoc_resources_cmd(ptr noundef %padapter) #5
  %call3 = tail call i32 @_rtw_pwr_wakeup(ptr noundef %padapter, i32 noundef 2000, ptr noundef nonnull @__func__.rtw_set_802_11_disassociate) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #5
  ret i8 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_free_assoc_resources_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_pwr_wakeup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_bssid_list_scan(ptr noundef %padapter, ptr noundef %pssid, i32 noundef %ssid_max_num) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 27
  %0 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %3, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %4 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bBusyTraffic, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.else, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %call11 = tail call zeroext i1 @rtw_is_scan_deny(ptr noundef nonnull %padapter) #5
  br i1 %call11, label %if.else.cleanup_crit_edge, label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #5
  %call14 = tail call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef nonnull %padapter, ptr noundef %pssid, i32 noundef %ssid_max_num, ptr noundef null, i32 noundef 0) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.else.cleanup_crit_edge ], [ %call14, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_is_scan_deny(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_authentication_mode(ptr noundef %padapter, i32 noundef %authmode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %ndisauthtype = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 35
  %0 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %authmode, ptr %ndisauthtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %authmode)
  %cmp = icmp ugt i32 %authmode, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %securitypriv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @rtw_set_auth(ptr noundef %padapter, ptr noundef %securitypriv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2 = icmp eq i32 %call, 1
  %. = zext i1 %cmp2 to i8
  ret i8 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_auth(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_802_11_add_wep(ptr noundef %padapter, ptr nocapture noundef readonly %wep) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %key_index = getelementptr inbounds %struct.ndis_802_11_wep, ptr %wep, i32 0, i32 1
  %0 = ptrtoint ptr %key_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_index, align 4
  %and = and i32 %1, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %key_length = getelementptr inbounds %struct.ndis_802_11_wep, ptr %wep, i32 0, i32 2
  %2 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 13
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %switch.selectcmp26 = icmp eq i32 %3, 5
  %switch.select27 = select i1 %switch.selectcmp26, i32 1, i32 %switch.select
  %dot11PrivacyAlgrthm3 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %dot11PrivacyAlgrthm3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.select27, ptr %dot11PrivacyAlgrthm3, align 4
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 %and
  %key_material = getelementptr inbounds %struct.ndis_802_11_wep, ptr %wep, i32 0, i32 3
  %5 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_length, align 4
  %7 = call ptr @memcpy(ptr %arrayidx, ptr %key_material, i32 %6)
  %8 = load i32, ptr %key_length, align 4
  %arrayidx7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 4, i32 %and
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx7, align 4
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 2
  %10 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %dot11PrivacyKeyIndex, align 8
  %call = tail call i32 @rtw_set_key(ptr noundef %padapter, ptr noundef %securitypriv, i32 noundef %and, i8 noundef zeroext 1, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp ne i32 %call, 0
  %spec.select = zext i1 %cmp8 to i8
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %ret.0 = phi i8 [ 0, %entry.exit_crit_edge ], [ %spec.select, %if.end ]
  ret i8 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_key(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rtw_get_cur_max_rate(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %2 = and i32 %1, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %call4 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address.i) #5
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call zeroext i8 @query_ra_short_GI(ptr noundef nonnull %call4) #5
  %wireless_mode = getelementptr inbounds %struct.sta_info, ptr %call4, i32 0, i32 30
  %4 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wireless_mode, align 4
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.end6.while.cond_crit_edge, label %if.then9

if.end6.while.cond_crit_edge:                     ; preds = %if.end6
  br label %while.cond

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %bw_mode = getelementptr inbounds %struct.sta_info, ptr %call4, i32 0, i32 31
  %7 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bw_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp11 = icmp eq i8 %8, 1
  %conv13 = zext i1 %cmp11 to i8
  %mcs = getelementptr inbounds %struct.sta_info, ptr %call4, i32 0, i32 38, i32 15, i32 2
  %call14 = tail call zeroext i16 @rtw_mcs_rate(i8 noundef zeroext %conv13, i8 noundef zeroext %call7, ptr noundef %mcs) #5
  br label %cleanup

while.cond:                                       ; preds = %while.body, %if.end6.while.cond_crit_edge
  %i.0 = phi i32 [ %inc, %while.body ], [ 0, %if.end6.while.cond_crit_edge ]
  %max_rate.0 = phi i16 [ %14, %while.body ], [ 0, %if.end6.while.cond_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 9, i32 %i.0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %10, label %while.body [
    i8 0, label %while.cond.while.end_crit_edge
    i8 -1, label %while.cond.while.end_crit_edge63
  ]

while.cond.while.end_crit_edge63:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %12 = and i8 %10, 127
  %13 = zext i8 %12 to i16
  %14 = tail call i16 @llvm.umax.i16(i16 %max_rate.0, i16 %13)
  %inc = add i32 %i.0, 1
  br label %while.cond

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge63
  %div = mul i16 %max_rate.0, 5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %if.end.cleanup_crit_edge ], [ %call14, %if.then9 ], [ %div, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @query_ra_short_GI(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_mcs_rate(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_ioctl_set.c", i32 144, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtw_set_802_11_ssid.__UNIQUE_ID_ddebug345, !1, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_ioctl_set.c", i32 249, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtw_set_802_11_connect.__UNIQUE_ID_ddebug346, !7, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!10 = !{ptr @__func__.rtw_set_802_11_disassociate, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/core/rtw_ioctl_set.c", i32 360, i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
!22 = !{i64 2148805630, i64 2148805635, i64 2148805648, i64 2148805692, i64 2148805726, i64 2148805747}
