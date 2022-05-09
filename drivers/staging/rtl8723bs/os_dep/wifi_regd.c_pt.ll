; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/os_dep/wifi_regd.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/os_dep/wifi_regd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
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
%struct.HT_caps_element = type { %union.anon.128 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.131, i32 }
%union.anon.131 = type { ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
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
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@rtw_regdom_rd = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [2 x %struct.ieee80211_reg_rule] }, [44 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [2 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 2, [3 x i8] c"99\00", i32 0, [2 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }] }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"rtw_regdom_rd\00", align 1
@___asan_gen_.3 = private constant [48 x i8] c"../drivers/staging/rtl8723bs/os_dep/wifi_regd.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 36, i32 41 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @rtw_regdom_rd], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_regdom_rd to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_regd_init(ptr noundef %wiphy, ptr noundef %reg_notifier) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_notifier1.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 54
  %0 = ptrtoint ptr %reg_notifier1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %reg_notifier, ptr %reg_notifier1.i, align 8
  %regulatory_flags.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 12
  %1 = ptrtoint ptr %regulatory_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regulatory_flags.i, align 4
  %or.i = and i32 %2, -8
  %and.i = or i32 %or.i, 1
  store i32 %and.i, ptr %regulatory_flags.i, align 4
  tail call void @wiphy_apply_custom_regulatory(ptr noundef %wiphy, ptr noundef nonnull @rtw_regdom_rd) #2
  tail call fastcc void @_rtw_reg_apply_flags(ptr noundef %wiphy) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_reg_notifier(ptr noundef %wiphy, ptr nocapture noundef readnone %request) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_rtw_reg_apply_flags(ptr noundef %wiphy) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_apply_custom_regulatory(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtw_reg_apply_flags(ptr noundef %wiphy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !11

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #2, !srcloc !12
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %max_chan_nums2 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 11
  %2 = ptrtoint ptr %max_chan_nums2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_chan_nums2, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %wiphy_priv.exit.for.inc10_crit_edge, label %for.cond3.preheader

wiphy_priv.exit.for.inc10_crit_edge:              ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10

for.cond3.preheader:                              ; preds = %wiphy_priv.exit
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp454.not = icmp eq i32 %7, 0
  br i1 %cmp454.not, label %for.cond3.preheader.for.inc10_crit_edge, label %for.cond3.preheader.for.body5_crit_edge

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.cond3.preheader.for.inc10_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %j.055 = phi i32 [ %inc, %for.inc.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %arrayidx6 = getelementptr %struct.ieee80211_channel, ptr %9, i32 %j.055
  %tobool7.not = icmp eq ptr %arrayidx6, null
  br i1 %tobool7.not, label %for.body5.for.inc_crit_edge, label %if.then8

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then8:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #4
  %flags = getelementptr %struct.ieee80211_channel, ptr %9, i32 %j.055, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body5.for.inc_crit_edge
  %inc = add nuw i32 %j.055, 1
  %11 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_channels, align 4
  %cmp4 = icmp ult i32 %inc, %12
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc10_crit_edge

for.inc.for.inc10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body5

for.inc10:                                        ; preds = %for.inc.for.inc10_crit_edge, %for.cond3.preheader.for.inc10_crit_edge, %wiphy_priv.exit.for.inc10_crit_edge
  %arrayidx.1 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %14, null
  br i1 %tobool.not.1, label %for.inc10.for.inc10.1_crit_edge, label %for.cond3.preheader.1

for.inc10.for.inc10.1_crit_edge:                  ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.1

for.cond3.preheader.1:                            ; preds = %for.inc10
  %n_channels.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %n_channels.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_channels.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp454.not.1 = icmp eq i32 %16, 0
  br i1 %cmp454.not.1, label %for.cond3.preheader.1.for.inc10.1_crit_edge, label %for.cond3.preheader.1.for.body5.1_crit_edge

for.cond3.preheader.1.for.body5.1_crit_edge:      ; preds = %for.cond3.preheader.1
  br label %for.body5.1

for.cond3.preheader.1.for.inc10.1_crit_edge:      ; preds = %for.cond3.preheader.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.1

for.body5.1:                                      ; preds = %for.inc.1.for.body5.1_crit_edge, %for.cond3.preheader.1.for.body5.1_crit_edge
  %j.055.1 = phi i32 [ %inc.1, %for.inc.1.for.body5.1_crit_edge ], [ 0, %for.cond3.preheader.1.for.body5.1_crit_edge ]
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %arrayidx6.1 = getelementptr %struct.ieee80211_channel, ptr %18, i32 %j.055.1
  %tobool7.not.1 = icmp eq ptr %arrayidx6.1, null
  br i1 %tobool7.not.1, label %for.body5.1.for.inc.1_crit_edge, label %if.then8.1

for.body5.1.for.inc.1_crit_edge:                  ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.1

if.then8.1:                                       ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #4
  %flags.1 = getelementptr %struct.ieee80211_channel, ptr %18, i32 %j.055.1, i32 4
  %19 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %flags.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %for.body5.1.for.inc.1_crit_edge
  %inc.1 = add nuw i32 %j.055.1, 1
  %20 = ptrtoint ptr %n_channels.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_channels.1, align 4
  %cmp4.1 = icmp ult i32 %inc.1, %21
  br i1 %cmp4.1, label %for.inc.1.for.body5.1_crit_edge, label %for.inc.1.for.inc10.1_crit_edge

for.inc.1.for.inc10.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.1

for.inc.1.for.body5.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body5.1

for.inc10.1:                                      ; preds = %for.inc.1.for.inc10.1_crit_edge, %for.cond3.preheader.1.for.inc10.1_crit_edge, %for.inc10.for.inc10.1_crit_edge
  %arrayidx.2 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %23, null
  br i1 %tobool.not.2, label %for.inc10.1.for.inc10.2_crit_edge, label %for.cond3.preheader.2

for.inc10.1.for.inc10.2_crit_edge:                ; preds = %for.inc10.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.2

for.cond3.preheader.2:                            ; preds = %for.inc10.1
  %n_channels.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %n_channels.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_channels.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp454.not.2 = icmp eq i32 %25, 0
  br i1 %cmp454.not.2, label %for.cond3.preheader.2.for.inc10.2_crit_edge, label %for.cond3.preheader.2.for.body5.2_crit_edge

for.cond3.preheader.2.for.body5.2_crit_edge:      ; preds = %for.cond3.preheader.2
  br label %for.body5.2

for.cond3.preheader.2.for.inc10.2_crit_edge:      ; preds = %for.cond3.preheader.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.2

for.body5.2:                                      ; preds = %for.inc.2.for.body5.2_crit_edge, %for.cond3.preheader.2.for.body5.2_crit_edge
  %j.055.2 = phi i32 [ %inc.2, %for.inc.2.for.body5.2_crit_edge ], [ 0, %for.cond3.preheader.2.for.body5.2_crit_edge ]
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %arrayidx6.2 = getelementptr %struct.ieee80211_channel, ptr %27, i32 %j.055.2
  %tobool7.not.2 = icmp eq ptr %arrayidx6.2, null
  br i1 %tobool7.not.2, label %for.body5.2.for.inc.2_crit_edge, label %if.then8.2

for.body5.2.for.inc.2_crit_edge:                  ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.2

if.then8.2:                                       ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #4
  %flags.2 = getelementptr %struct.ieee80211_channel, ptr %27, i32 %j.055.2, i32 4
  %28 = ptrtoint ptr %flags.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %flags.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then8.2, %for.body5.2.for.inc.2_crit_edge
  %inc.2 = add nuw i32 %j.055.2, 1
  %29 = ptrtoint ptr %n_channels.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_channels.2, align 4
  %cmp4.2 = icmp ult i32 %inc.2, %30
  br i1 %cmp4.2, label %for.inc.2.for.body5.2_crit_edge, label %for.inc.2.for.inc10.2_crit_edge

for.inc.2.for.inc10.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.2

for.inc.2.for.body5.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body5.2

for.inc10.2:                                      ; preds = %for.inc.2.for.inc10.2_crit_edge, %for.cond3.preheader.2.for.inc10.2_crit_edge, %for.inc10.1.for.inc10.2_crit_edge
  %arrayidx.3 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %32, null
  br i1 %tobool.not.3, label %for.inc10.2.for.inc10.3_crit_edge, label %for.cond3.preheader.3

for.inc10.2.for.inc10.3_crit_edge:                ; preds = %for.inc10.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.3

for.cond3.preheader.3:                            ; preds = %for.inc10.2
  %n_channels.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %n_channels.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_channels.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp454.not.3 = icmp eq i32 %34, 0
  br i1 %cmp454.not.3, label %for.cond3.preheader.3.for.inc10.3_crit_edge, label %for.cond3.preheader.3.for.body5.3_crit_edge

for.cond3.preheader.3.for.body5.3_crit_edge:      ; preds = %for.cond3.preheader.3
  br label %for.body5.3

for.cond3.preheader.3.for.inc10.3_crit_edge:      ; preds = %for.cond3.preheader.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.3

for.body5.3:                                      ; preds = %for.inc.3.for.body5.3_crit_edge, %for.cond3.preheader.3.for.body5.3_crit_edge
  %j.055.3 = phi i32 [ %inc.3, %for.inc.3.for.body5.3_crit_edge ], [ 0, %for.cond3.preheader.3.for.body5.3_crit_edge ]
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %arrayidx6.3 = getelementptr %struct.ieee80211_channel, ptr %36, i32 %j.055.3
  %tobool7.not.3 = icmp eq ptr %arrayidx6.3, null
  br i1 %tobool7.not.3, label %for.body5.3.for.inc.3_crit_edge, label %if.then8.3

for.body5.3.for.inc.3_crit_edge:                  ; preds = %for.body5.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.3

if.then8.3:                                       ; preds = %for.body5.3
  call void @__sanitizer_cov_trace_pc() #4
  %flags.3 = getelementptr %struct.ieee80211_channel, ptr %36, i32 %j.055.3, i32 4
  %37 = ptrtoint ptr %flags.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %flags.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then8.3, %for.body5.3.for.inc.3_crit_edge
  %inc.3 = add nuw i32 %j.055.3, 1
  %38 = ptrtoint ptr %n_channels.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels.3, align 4
  %cmp4.3 = icmp ult i32 %inc.3, %39
  br i1 %cmp4.3, label %for.inc.3.for.body5.3_crit_edge, label %for.inc.3.for.inc10.3_crit_edge

for.inc.3.for.inc10.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.3

for.inc.3.for.body5.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body5.3

for.inc10.3:                                      ; preds = %for.inc.3.for.inc10.3_crit_edge, %for.cond3.preheader.3.for.inc10.3_crit_edge, %for.inc10.2.for.inc10.3_crit_edge
  %arrayidx.4 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 4
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %41, null
  br i1 %tobool.not.4, label %for.inc10.3.for.inc10.4_crit_edge, label %for.cond3.preheader.4

for.inc10.3.for.inc10.4_crit_edge:                ; preds = %for.inc10.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.4

for.cond3.preheader.4:                            ; preds = %for.inc10.3
  %n_channels.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %n_channels.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_channels.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp454.not.4 = icmp eq i32 %43, 0
  br i1 %cmp454.not.4, label %for.cond3.preheader.4.for.inc10.4_crit_edge, label %for.cond3.preheader.4.for.body5.4_crit_edge

for.cond3.preheader.4.for.body5.4_crit_edge:      ; preds = %for.cond3.preheader.4
  br label %for.body5.4

for.cond3.preheader.4.for.inc10.4_crit_edge:      ; preds = %for.cond3.preheader.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.4

for.body5.4:                                      ; preds = %for.inc.4.for.body5.4_crit_edge, %for.cond3.preheader.4.for.body5.4_crit_edge
  %j.055.4 = phi i32 [ %inc.4, %for.inc.4.for.body5.4_crit_edge ], [ 0, %for.cond3.preheader.4.for.body5.4_crit_edge ]
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %arrayidx6.4 = getelementptr %struct.ieee80211_channel, ptr %45, i32 %j.055.4
  %tobool7.not.4 = icmp eq ptr %arrayidx6.4, null
  br i1 %tobool7.not.4, label %for.body5.4.for.inc.4_crit_edge, label %if.then8.4

for.body5.4.for.inc.4_crit_edge:                  ; preds = %for.body5.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.4

if.then8.4:                                       ; preds = %for.body5.4
  call void @__sanitizer_cov_trace_pc() #4
  %flags.4 = getelementptr %struct.ieee80211_channel, ptr %45, i32 %j.055.4, i32 4
  %46 = ptrtoint ptr %flags.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %flags.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then8.4, %for.body5.4.for.inc.4_crit_edge
  %inc.4 = add nuw i32 %j.055.4, 1
  %47 = ptrtoint ptr %n_channels.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_channels.4, align 4
  %cmp4.4 = icmp ult i32 %inc.4, %48
  br i1 %cmp4.4, label %for.inc.4.for.body5.4_crit_edge, label %for.inc.4.for.inc10.4_crit_edge

for.inc.4.for.inc10.4_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.4

for.inc.4.for.body5.4_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body5.4

for.inc10.4:                                      ; preds = %for.inc.4.for.inc10.4_crit_edge, %for.cond3.preheader.4.for.inc10.4_crit_edge, %for.inc10.3.for.inc10.4_crit_edge
  %arrayidx.5 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 5
  %49 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %50, null
  br i1 %tobool.not.5, label %for.inc10.4.for.inc10.5_crit_edge, label %for.cond3.preheader.5

for.inc10.4.for.inc10.5_crit_edge:                ; preds = %for.inc10.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.5

for.cond3.preheader.5:                            ; preds = %for.inc10.4
  %n_channels.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %n_channels.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_channels.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp454.not.5 = icmp eq i32 %52, 0
  br i1 %cmp454.not.5, label %for.cond3.preheader.5.for.inc10.5_crit_edge, label %for.cond3.preheader.5.for.body5.5_crit_edge

for.cond3.preheader.5.for.body5.5_crit_edge:      ; preds = %for.cond3.preheader.5
  br label %for.body5.5

for.cond3.preheader.5.for.inc10.5_crit_edge:      ; preds = %for.cond3.preheader.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.5

for.body5.5:                                      ; preds = %for.inc.5.for.body5.5_crit_edge, %for.cond3.preheader.5.for.body5.5_crit_edge
  %j.055.5 = phi i32 [ %inc.5, %for.inc.5.for.body5.5_crit_edge ], [ 0, %for.cond3.preheader.5.for.body5.5_crit_edge ]
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %arrayidx6.5 = getelementptr %struct.ieee80211_channel, ptr %54, i32 %j.055.5
  %tobool7.not.5 = icmp eq ptr %arrayidx6.5, null
  br i1 %tobool7.not.5, label %for.body5.5.for.inc.5_crit_edge, label %if.then8.5

for.body5.5.for.inc.5_crit_edge:                  ; preds = %for.body5.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.5

if.then8.5:                                       ; preds = %for.body5.5
  call void @__sanitizer_cov_trace_pc() #4
  %flags.5 = getelementptr %struct.ieee80211_channel, ptr %54, i32 %j.055.5, i32 4
  %55 = ptrtoint ptr %flags.5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %flags.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then8.5, %for.body5.5.for.inc.5_crit_edge
  %inc.5 = add nuw i32 %j.055.5, 1
  %56 = ptrtoint ptr %n_channels.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_channels.5, align 4
  %cmp4.5 = icmp ult i32 %inc.5, %57
  br i1 %cmp4.5, label %for.inc.5.for.body5.5_crit_edge, label %for.inc.5.for.inc10.5_crit_edge

for.inc.5.for.inc10.5_crit_edge:                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc10.5

for.inc.5.for.body5.5_crit_edge:                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body5.5

for.inc10.5:                                      ; preds = %for.inc.5.for.inc10.5_crit_edge, %for.cond3.preheader.5.for.inc10.5_crit_edge, %for.inc10.4.for.inc10.5_crit_edge
  %channel_set1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 12
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1458.not = icmp eq i8 %3, 0
  br i1 %cmp1458.not, label %for.inc10.5.for.end34_crit_edge, label %for.inc10.5.for.body16_crit_edge

for.inc10.5.for.body16_crit_edge:                 ; preds = %for.inc10.5
  br label %for.body16

for.inc10.5.for.end34_crit_edge:                  ; preds = %for.inc10.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end34

for.body16:                                       ; preds = %for.inc32.for.body16_crit_edge, %for.inc10.5.for.body16_crit_edge
  %i.159 = phi i32 [ %inc33, %for.inc32.for.body16_crit_edge ], [ 0, %for.inc10.5.for.body16_crit_edge ]
  %arrayidx17 = getelementptr %struct.rt_channel_info, ptr %channel_set1, i32 %i.159
  %58 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx17, align 4
  %conv19 = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %59)
  %cmp.i = icmp eq i8 %59, 14
  br i1 %cmp.i, label %for.body16.rtw_ieee80211_channel_to_frequency.exit_crit_edge, label %if.else.i

for.body16.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #4
  br label %rtw_ieee80211_channel_to_frequency.exit

if.else.i:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %59)
  %cmp1.i = icmp ult i8 %59, 14
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge

if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %rtw_ieee80211_channel_to_frequency.exit

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  %mul.i = mul nuw nsw i32 %conv19, 5
  %add.i = add nuw nsw i32 %mul.i, 2407
  br label %rtw_ieee80211_channel_to_frequency.exit

rtw_ieee80211_channel_to_frequency.exit:          ; preds = %if.then2.i, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge, %for.body16.rtw_ieee80211_channel_to_frequency.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then2.i ], [ 2484, %for.body16.rtw_ieee80211_channel_to_frequency.exit_crit_edge ], [ 0, %if.else.i.rtw_ieee80211_channel_to_frequency.exit_crit_edge ]
  %mul.i53 = mul nuw nsw i32 %retval.0.i, 1000
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef nonnull %wiphy, i32 noundef %mul.i53) #2
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %rtw_ieee80211_channel_to_frequency.exit.for.inc32_crit_edge, label %if.then23

rtw_ieee80211_channel_to_frequency.exit.for.inc32_crit_edge: ; preds = %rtw_ieee80211_channel_to_frequency.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc32

if.then23:                                        ; preds = %rtw_ieee80211_channel_to_frequency.exit
  call void @__sanitizer_cov_trace_pc() #4
  %ScanType = getelementptr %struct.rt_channel_info, ptr %channel_set1, i32 %i.159, i32 1
  %60 = ptrtoint ptr %ScanType to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ScanType, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp25 = icmp eq i32 %61, 0
  %flags28 = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i, i32 0, i32 4
  %. = select i1 %cmp25, i32 2, i32 0
  %62 = ptrtoint ptr %flags28 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %., ptr %flags28, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %if.then23, %rtw_ieee80211_channel_to_frequency.exit.for.inc32_crit_edge
  %inc33 = add nuw nsw i32 %i.159, 1
  %exitcond.not = icmp eq i32 %inc33, %conv
  br i1 %exitcond.not, label %for.inc32.for.end34_crit_edge, label %for.inc32.for.body16_crit_edge

for.inc32.for.body16_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body16

for.inc32.for.end34_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end34

for.end34:                                        ; preds = %for.inc32.for.end34_crit_edge, %for.inc10.5.for.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @rtw_regdom_rd, !1, !"rtw_regdom_rd", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/os_dep/wifi_regd.c", i32 36, i32 41}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2157126960, i64 2157127448, i64 2157126997, i64 2157127053, i64 2157127087, i64 2157127111, i64 2157127152, i64 2157127173, i64 2157127201, i64 2157127235}
