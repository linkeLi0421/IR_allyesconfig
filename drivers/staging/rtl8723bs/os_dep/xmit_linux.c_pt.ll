; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/os_dep/xmit_linux.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/os_dep/xmit_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pkt_file = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.HT_caps_element = type { %union.anon.128 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.131, i32 }
%union.anon.131 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.106 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.hw_xmit = type { ptr, i32 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@rtw_mc2u_disable = external dso_local local_unnamed_addr global i32, align 4
@__const.rtw_mlcst2unicst.bc_addr = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 51]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_remainder_len(ptr nocapture noundef readonly %pfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 5
  %0 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len, align 4
  %cur_addr = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 4
  %2 = ptrtoint ptr %cur_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  %buf_start = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 3
  %5 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf_start, align 4
  %7 = ptrtoint ptr %6 to i32
  %sub.neg = sub i32 %1, %4
  %sub1 = add i32 %sub.neg, %7
  ret i32 %sub1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @_rtw_open_pktfile(ptr noundef %pktptr, ptr nocapture noundef %pfile) local_unnamed_addr #1 align 64 {
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
define dso_local i32 @_rtw_pktfile_read(ptr nocapture noundef %pfile, ptr noundef %rmem, i32 noundef %rlen) local_unnamed_addr #2 align 64 {
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_endofpktfile(ptr nocapture noundef readonly %pfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 1
  %0 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pkt_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_os_xmit_resource_alloc(ptr nocapture noundef readnone %padapter, ptr nocapture noundef writeonly %pxmitbuf, i32 noundef %alloc_sz, i8 noundef zeroext %flag) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc_sz)
  %cmp.not = icmp eq i32 %alloc_sz, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %call = tail call ptr @_rtw_zmalloc(i32 noundef %alloc_sz) #7
  %pallocated_buf = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 2
  %0 = ptrtoint ptr %pallocated_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pallocated_buf, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call to i32
  %sub = add i32 %1, 511
  %div9 = and i32 %sub, -512
  %2 = inttoptr i32 %div9 to ptr
  %pbuf = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pbuf, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.return_crit_edge ], [ 1, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_xmit_resource_free(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readonly %pxmitbuf, i32 noundef %free_sz, i8 noundef zeroext %flag) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_sz)
  %cmp.not = icmp eq i32 %free_sz, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pallocated_buf = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 2
  %0 = ptrtoint ptr %pallocated_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pallocated_buf, align 4
  tail call void @kfree(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_pkt_complete(ptr nocapture noundef readonly %padapter, ptr noundef %pkt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %2 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %pnetdev4 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %4 = ptrtoint ptr %pnetdev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev4, align 8
  %conv.i22 = zext i16 %1 to i32
  %_tx.i.i23 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i23, align 128
  %state.i.i24 = getelementptr %struct.netdev_queue, ptr %7, i32 %conv.i22, i32 13
  %8 = ptrtoint ptr %state.i.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i24, align 4
  %and1.i.i.i25 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i25)
  %tobool.i.i26.not = icmp eq i32 %and1.i.i.i25, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.i.i26.not, label %if.then.if.end9_crit_edge, label %land.lhs.true

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then
  %hwxmits = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 25
  %10 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwxmits, align 8
  %accnt = getelementptr %struct.hw_xmit, ptr %11, i32 %conv.i22, i32 1
  %12 = ptrtoint ptr %accnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %accnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %13)
  %cmp = icmp slt i32 %13, 102
  br i1 %cmp, label %land.lhs.true.if.end9.sink.split_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true.if.end9.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool.i.i26.not, label %if.else.if.end9_crit_edge, label %if.else.if.end9.sink.split_crit_edge

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9.sink.split:                               ; preds = %if.else.if.end9.sink.split_crit_edge, %land.lhs.true.if.end9.sink.split_crit_edge
  %arrayidx.i.i29 = getelementptr %struct.netdev_queue, ptr %7, i32 %conv.i22
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i29) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.then.if.end9_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %pkt, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_xmit_complete(ptr nocapture noundef readonly %padapter, ptr nocapture noundef %pxframe) local_unnamed_addr #2 align 64 {
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
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i.i, align 8
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %4 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %pnetdev4.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %6 = ptrtoint ptr %pnetdev4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pnetdev4.i, align 8
  %conv.i22.i = zext i16 %3 to i32
  %_tx.i.i23.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i23.i, align 128
  %state.i.i24.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i22.i, i32 13
  %10 = ptrtoint ptr %state.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i.i24.i, align 4
  %and1.i.i.i25.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i25.i)
  %tobool.i.i26.not.i = icmp eq i32 %and1.i.i.i25.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  br i1 %tobool.i.i26.not.i, label %if.then.i.rtw_os_pkt_complete.exit_crit_edge, label %land.lhs.true.i

if.then.i.rtw_os_pkt_complete.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_os_pkt_complete.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %hwxmits.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 25
  %12 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwxmits.i, align 8
  %accnt.i = getelementptr %struct.hw_xmit, ptr %13, i32 %conv.i22.i, i32 1
  %14 = ptrtoint ptr %accnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %accnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %15)
  %cmp.i = icmp slt i32 %15, 102
  br i1 %cmp.i, label %land.lhs.true.i.if.end9.sink.split.i_crit_edge, label %land.lhs.true.i.rtw_os_pkt_complete.exit_crit_edge

land.lhs.true.i.rtw_os_pkt_complete.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_os_pkt_complete.exit

land.lhs.true.i.if.end9.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split.i

if.else.i:                                        ; preds = %if.then
  br i1 %tobool.i.i26.not.i, label %if.else.i.rtw_os_pkt_complete.exit_crit_edge, label %if.else.i.if.end9.sink.split.i_crit_edge

if.else.i.if.end9.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split.i

if.else.i.rtw_os_pkt_complete.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_os_pkt_complete.exit

if.end9.sink.split.i:                             ; preds = %if.else.i.if.end9.sink.split.i_crit_edge, %land.lhs.true.i.if.end9.sink.split.i_crit_edge
  %arrayidx.i.i29.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i22.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i29.i) #7
  br label %rtw_os_pkt_complete.exit

rtw_os_pkt_complete.exit:                         ; preds = %if.end9.sink.split.i, %if.else.i.rtw_os_pkt_complete.exit_crit_edge, %land.lhs.true.i.rtw_os_pkt_complete.exit_crit_edge, %if.then.i.rtw_os_pkt_complete.exit_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %rtw_os_pkt_complete.exit, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pkt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_xmit_schedule(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending_xmitbuf_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 32
  %0 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_xmitbuf_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %pending_xmitbuf_queue
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %xmit_comp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 1
  tail call void @complete(ptr noundef %xmit_comp) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_xmit_entry(ptr noundef %pkt, ptr nocapture noundef readonly %pnetdev) local_unnamed_addr #2 align 64 {
entry:
  %pkt.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pkt, ptr %pkt.addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %pnetdev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @rtw_if_up(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.drop_packet_crit_edge, label %if.end

entry.drop_packet_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop_packet

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pkt.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pkt.addr, align 4
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queue_mapping.i.i, align 8
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 14, i32 48
  %7 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %hwxmits.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 9, i32 25
  %9 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwxmits.i, align 8
  %idxprom.i = zext i16 %6 to i32
  %accnt.i = getelementptr %struct.hw_xmit, ptr %10, i32 %idxprom.i, i32 1
  %11 = ptrtoint ptr %accnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %accnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %12)
  %cmp.i = icmp sgt i32 %12, 102
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.rtw_check_xmit_resource.exit_crit_edge

if.then.i.rtw_check_xmit_resource.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_check_xmit_resource.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %pnetdev.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 41
  %13 = ptrtoint ptr %pnetdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pnetdev.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %16, i32 %idxprom.i, i32 13
  br label %if.end11.sink.split.i

if.else.i:                                        ; preds = %if.end
  %free_xmitframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 9, i32 10
  %17 = ptrtoint ptr %free_xmitframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_xmitframe_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp2.i = icmp ult i32 %18, 5
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.rtw_check_xmit_resource.exit_crit_edge

if.else.i.rtw_check_xmit_resource.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_check_xmit_resource.exit

if.then3.i:                                       ; preds = %if.else.i
  %pnetdev4.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 41
  %19 = ptrtoint ptr %pnetdev4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pnetdev4.i, align 8
  %conv.i = zext i16 %6 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %22, i32 %conv.i, i32 13
  %23 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then3.i.if.end11.sink.split.i_crit_edge, label %if.then3.i.rtw_check_xmit_resource.exit_crit_edge

if.then3.i.rtw_check_xmit_resource.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_check_xmit_resource.exit

if.then3.i.if.end11.sink.split.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %if.then3.i.if.end11.sink.split.i_crit_edge, %if.then1.i
  %state.i.sink.i = phi ptr [ %state.i.i.i, %if.then1.i ], [ %state.i.i, %if.then3.i.if.end11.sink.split.i_crit_edge ]
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.sink.i) #7
  br label %rtw_check_xmit_resource.exit

rtw_check_xmit_resource.exit:                     ; preds = %if.end11.sink.split.i, %if.then3.i.rtw_check_xmit_resource.exit_crit_edge, %if.else.i.rtw_check_xmit_resource.exit_crit_edge, %if.then.i.rtw_check_xmit_resource.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtw_mc2u_disable to i32))
  %25 = load i32, ptr @rtw_mc2u_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %land.lhs.true, label %rtw_check_xmit_resource.exit.if.end49_crit_edge

rtw_check_xmit_resource.exit.if.end49_crit_edge:  ; preds = %rtw_check_xmit_resource.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true:                                    ; preds = %rtw_check_xmit_resource.exit
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_state.i, align 4
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp3.not = icmp eq i32 %28, 0
  br i1 %cmp3.not, label %land.lhs.true.if.end49_crit_edge, label %land.lhs.true4

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true4:                                   ; preds = %land.lhs.true
  %29 = ptrtoint ptr %pkt.addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pkt.addr, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i8 %34, label %land.lhs.true4.if.end49_crit_edge [
    i8 1, label %land.lhs.true7
    i8 51, label %land.lhs.true24
  ]

land.lhs.true4.if.end49_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %arrayidx9 = getelementptr i8, ptr %32, i32 1
  %36 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp11 = icmp eq i8 %37, 0
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true7.if.end49_crit_edge

land.lhs.true7.if.end49_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %arrayidx15 = getelementptr i8, ptr %32, i32 2
  %38 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %39)
  %cmp17 = icmp eq i8 %39, 94
  br i1 %cmp17, label %land.lhs.true13.land.lhs.true36_crit_edge, label %land.lhs.true13.if.end49_crit_edge

land.lhs.true13.if.end49_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true13.land.lhs.true36_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36

land.lhs.true24:                                  ; preds = %land.lhs.true4
  %arrayidx26 = getelementptr i8, ptr %32, i32 1
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %41)
  %cmp28 = icmp eq i8 %41, 51
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true24.if.end49_crit_edge

land.lhs.true24.if.end49_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true30:                                  ; preds = %land.lhs.true24
  %arrayidx32 = getelementptr i8, ptr %32, i32 2
  %42 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp34.not = icmp eq i8 %43, -1
  br i1 %cmp34.not, label %land.lhs.true30.if.end49_crit_edge, label %land.lhs.true30.land.lhs.true36_crit_edge

land.lhs.true30.land.lhs.true36_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36

land.lhs.true30.if.end49_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true36:                                  ; preds = %land.lhs.true30.land.lhs.true36_crit_edge, %land.lhs.true13.land.lhs.true36_crit_edge
  %44 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp38 = icmp eq i8 %45, 0
  br i1 %cmp38, label %if.then40, label %land.lhs.true36.if.end49_crit_edge

land.lhs.true36.if.end49_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then40:                                        ; preds = %land.lhs.true36
  %free_xmitframe_cnt = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 9, i32 10
  %46 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %free_xmitframe_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %47)
  %cmp41 = icmp ugt i32 %47, 64
  br i1 %cmp41, label %if.then43, label %if.then40.if.end49_crit_edge

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then43:                                        ; preds = %if.then40
  %call44 = tail call fastcc i32 @rtw_mlcst2unicst(ptr noundef %2, ptr noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end49_crit_edge, label %if.then43.exit_crit_edge

if.then43.exit_crit_edge:                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end49:                                         ; preds = %if.then43.if.end49_crit_edge, %if.then40.if.end49_crit_edge, %land.lhs.true36.if.end49_crit_edge, %land.lhs.true30.if.end49_crit_edge, %land.lhs.true24.if.end49_crit_edge, %land.lhs.true13.if.end49_crit_edge, %land.lhs.true7.if.end49_crit_edge, %land.lhs.true4.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %rtw_check_xmit_resource.exit.if.end49_crit_edge
  %call50 = call i32 @rtw_xmit(ptr noundef %2, ptr noundef nonnull %pkt.addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.drop_packet_crit_edge, label %if.end49.exit_crit_edge

if.end49.exit_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end49.drop_packet_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop_packet

drop_packet:                                      ; preds = %if.end49.drop_packet_crit_edge, %entry.drop_packet_crit_edge
  %tx_drop = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 9, i32 23
  %48 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %tx_drop, align 8
  %inc = add i64 %49, 1
  store i64 %inc, ptr %tx_drop, align 8
  %50 = ptrtoint ptr %pkt.addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pkt.addr, align 4
  call void @__dev_kfree_skb_any(ptr noundef %51, i32 noundef 1) #7
  br label %exit

exit:                                             ; preds = %drop_packet, %if.end49.exit_crit_edge, %if.then43.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_if_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_mlcst2unicst(ptr noundef %padapter, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %newskb = alloca ptr, align 4
  %chk_alive_list = alloca [32 x i8], align 1
  %null_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newskb) #7
  %0 = ptrtoint ptr %newskb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %newskb, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %chk_alive_list) #7
  %1 = call ptr @memset(ptr %chk_alive_list, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %null_addr) #7
  %2 = call ptr @memset(ptr %null_addr, i32 0, i32 6)
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #7
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  %3 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %plist.085 = load ptr, ptr %asoc_list, align 4
  %cmp.i.not86 = icmp eq ptr %plist.085, %asoc_list
  br i1 %cmp.i.not86, label %for.end.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #7
  br label %for.end49

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %plist.088 = phi ptr [ %plist.0, %if.end.for.body_crit_edge ], [ %plist.085, %entry.for.body_crit_edge ]
  %chk_alive_num.087 = phi i8 [ %chk_alive_num.1, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %plist.088, i32 -2840
  %call1 = tail call i32 @rtw_stainfo_offset(ptr noundef %stapriv, ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1)
  %4 = icmp ult i32 %call1, 32
  br i1 %4, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %call1 to i8
  %inc = add i8 %chk_alive_num.087, 1
  %idxprom = zext i8 %chk_alive_num.087 to i32
  %arrayidx = getelementptr [32 x i8], ptr %chk_alive_list, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %chk_alive_num.1 = phi i8 [ %inc, %if.then ], [ %chk_alive_num.087, %for.body.if.end_crit_edge ]
  %6 = ptrtoint ptr %plist.088 to i32
  call void @__asan_load4_noabort(i32 %6)
  %plist.0 = load ptr, ptr %plist.088, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %asoc_list
  br i1 %cmp.i.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #7
  %conv6 = zext i8 %chk_alive_num.1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %chk_alive_num.1)
  %cmp789.not = icmp eq i8 %chk_alive_num.1, 0
  br i1 %cmp789.not, label %for.end.for.end49_crit_edge, label %for.body9.lr.ph

for.end.for.end49_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end49

for.body9.lr.ph:                                  ; preds = %for.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tx_drop = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 23
  br label %for.body9

for.body9:                                        ; preds = %for.inc47.for.body9_crit_edge, %for.body9.lr.ph
  %i.090 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc48, %for.inc47.for.body9_crit_edge ]
  %arrayidx10 = getelementptr [32 x i8], ptr %chk_alive_list, i32 0, i32 %i.090
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %8 to i32
  %call12 = call ptr @rtw_get_stainfo_by_offset(ptr noundef %stapriv, i32 noundef %conv11) #7
  %state = getelementptr inbounds %struct.sta_info, ptr %call12, i32 0, i32 8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.body9.for.inc47_crit_edge, label %if.end15

for.body9.for.inc47_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

if.end15:                                         ; preds = %for.body9
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %call12, i32 0, i32 12
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %arrayidx16 = getelementptr i8, ptr %12, i32 6
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr, ptr noundef dereferenceable(6) %arrayidx16, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool18.not = icmp eq i32 %bcmp, 0
  br i1 %tobool18.not, label %if.end15.for.inc47_crit_edge, label %lor.lhs.false

if.end15.for.inc47_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

lor.lhs.false:                                    ; preds = %if.end15
  %bcmp83 = call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr, ptr noundef nonnull dereferenceable(6) %null_addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp83)
  %tobool23.not = icmp eq i32 %bcmp83, 0
  br i1 %tobool23.not, label %lor.lhs.false.for.inc47_crit_edge, label %lor.lhs.false24

lor.lhs.false.for.inc47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %bcmp84 = call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr, ptr noundef nonnull dereferenceable(6) @__const.rtw_mlcst2unicst.bc_addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp84)
  %tobool29.not = icmp eq i32 %bcmp84, 0
  br i1 %tobool29.not, label %lor.lhs.false24.for.inc47_crit_edge, label %if.end31

lor.lhs.false24.for.inc47_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

if.end31:                                         ; preds = %lor.lhs.false24
  %call32 = call ptr @_rtw_skb_copy(ptr noundef %skb) #7
  %13 = ptrtoint ptr %newskb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %newskb, align 4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end31
  %data35 = getelementptr inbounds %struct.sk_buff, ptr %call32, i32 0, i32 19
  %14 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data35, align 4
  %16 = call ptr @memcpy(ptr %15, ptr %hwaddr, i32 6)
  %call38 = call i32 @rtw_xmit(ptr noundef %padapter, ptr noundef nonnull %newskb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.then34.for.inc47_crit_edge

if.then34.for.inc47_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

if.then41:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tx_drop, align 8
  %inc42 = add i64 %18, 1
  store i64 %inc42, ptr %tx_drop, align 8
  %19 = ptrtoint ptr %newskb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %newskb, align 4
  call void @__dev_kfree_skb_any(ptr noundef %20, i32 noundef 1) #7
  br label %for.inc47

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_drop, align 8
  %inc45 = add i64 %22, 1
  store i64 %inc45, ptr %tx_drop, align 8
  br label %cleanup

for.inc47:                                        ; preds = %if.then41, %if.then34.for.inc47_crit_edge, %lor.lhs.false24.for.inc47_crit_edge, %lor.lhs.false.for.inc47_crit_edge, %if.end15.for.inc47_crit_edge, %for.body9.for.inc47_crit_edge
  %inc48 = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc48, %conv6
  br i1 %exitcond.not, label %for.inc47.for.end49_crit_edge, label %for.inc47.for.body9_crit_edge

for.inc47.for.body9_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.inc47.for.end49_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end49

for.end49:                                        ; preds = %for.inc47.for.end49_crit_edge, %for.end.for.end49_crit_edge, %for.end.thread
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end49, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %for.end49 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %null_addr) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %chk_alive_list) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newskb) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_xmit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmit_entry(ptr noundef %pkt, ptr nocapture noundef readonly %pnetdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pkt, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @_rtw_xmit_entry(ptr noundef nonnull %pkt, ptr noundef %pnetdev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_stainfo_offset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo_by_offset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_skb_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
