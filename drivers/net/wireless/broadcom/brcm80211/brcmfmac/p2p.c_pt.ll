; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.brcmf_cfg80211_info = type { ptr, ptr, %struct.brcmf_p2p_info, ptr, ptr, %struct.mutex, ptr, %struct.brcmf_cfg80211_connect_info, %struct.brcmf_pmk_list_le, i32, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, %struct.escan_info, %struct.timer_list, %struct.work_struct, %struct.list_head, %struct.brcmf_cfg80211_vif_event, %struct.completion, %struct.brcmu_d11inf, %struct.brcmf_assoclist_le, %struct.brcmf_cfg80211_wowl, ptr, [8 x i8] }
%struct.brcmf_p2p_info = type { ptr, i32, [6 x i8], [6 x i8], [6 x i8], [4 x %struct.p2p_bss], %struct.timer_list, i8, %struct.ieee80211_channel, i32, i8, %struct.completion, %struct.afx_hdl, i32, i32, %struct.completion, i8, i8, i8, i8 }
%struct.p2p_bss = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.afx_hdl = type { %struct.work_struct, %struct.completion, i8, i32, i8, i16, i16, [6 x i8] }
%struct.brcmf_cfg80211_connect_info = type { ptr, i32, ptr, i32 }
%struct.brcmf_pmk_list_le = type { i32, [16 x %struct.brcmf_pmksa] }
%struct.brcmf_pmksa = type { [6 x i8], [16 x i8] }
%struct.escan_info = type { i32, ptr, ptr, ptr, ptr }
%struct.brcmf_cfg80211_vif_event = type { %struct.wait_queue_head, %struct.spinlock, i8, ptr }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmf_assoclist_le = type { i32, [128 x [6 x i8]] }
%struct.brcmf_cfg80211_wowl = type { i8, i32, ptr, ptr, %struct.wait_queue_head, i8, i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.brcmf_p2p_disc_st_le = type { i8, i16, i16 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.brcmf_cfg80211_vif = type { ptr, %struct.wireless_dev, %struct.brcmf_cfg80211_profile, i32, %struct.vif_saved_ie, %struct.list_head, i16, i8, i32, i32, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.122, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.122 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.123 }
%union.anon.123 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.brcmf_cfg80211_profile = type { [6 x i8], %struct.brcmf_cfg80211_security, [6 x %struct.brcmf_wsec_key], i32, i16, i8 }
%struct.brcmf_cfg80211_security = type { i32, i32, i32, i32 }
%struct.brcmf_wsec_key = type { i32, i32, [32 x i8], [18 x i32], i32, i32, [3 x i32], i32, i32, %struct.anon.130, [2 x i32], [6 x i8] }
%struct.anon.130 = type { i32, i16 }
%struct.vif_saved_ie = type { [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], i32, i32, i32, i32, i32 }
%struct.brcmu_chan = type { i16, i8, i8, i8, i32, i32 }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.39 }
%union.anon.39 = type { [4 x i32] }
%struct.brcmf_bss_info_le = type { i32, i32, [6 x i8], i16, i16, i8, [32 x i8], %struct.anon.131, i16, i16, i8, i16, i8, i8, i32, i8, [1 x i32], i8, [3 x i8], [16 x i8], i16, i32, i16 }
%struct.anon.131 = type { i32, [16 x i8] }
%struct.brcmf_event_msg = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.brcmf_rx_mgmt_data = type { i16, i16, i32, i32, i32 }
%struct.brcmf_p2p_pub_act_frame = type { i8, i8, [3 x i8], i8, i8, i8, [1 x i8] }
%struct.brcmf_p2psd_gas_pub_act_frame = type { i8, i8, i8, [1 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.138, [16 x i8] }
%struct.anon.138 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.brcmf_p2p_action_frame = type { i8, [3 x i8], i8, i8, i8, [1 x i8] }
%struct.brcmf_fil_af_params_le = type { i32, i32, [6 x i8], [2 x i8], %struct.brcmf_fil_action_frame_le }
%struct.brcmf_fil_action_frame_le = type { [6 x i8], i16, i32, [1800 x i8] }
%struct.brcmf_fil_p2p_if_le = type { [6 x i8], i16, i16 }
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.124 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.brcmf_p2p_scan_le = type { i8, [3 x i8], %union.anon.165 }
%union.anon.165 = type { %struct.brcmf_escan_params_le }
%struct.brcmf_escan_params_le = type { i32, i16, i16, %struct.brcmf_scan_params_le }
%struct.brcmf_scan_params_le = type { %struct.brcmf_ssid_le, [6 x i8], i8, i8, i32, i32, i32, i32, i32, [1 x i16] }
%struct.brcmf_ssid_le = type { i32, [32 x i8] }

@__func__.brcmf_p2p_scan_prep = private unnamed_addr constant [20 x i8] c"brcmf_p2p_scan_prep\00", align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"P2P: GO_NEG_PHASE status cleared\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_remain_on_channel = private unnamed_addr constant [28 x i8] c"brcmf_p2p_remain_on_channel\00", align 1
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Enter, channel: %d, duration ms (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_notify_listen_complete = private unnamed_addr constant [33 x i8] c"brcmf_p2p_notify_listen_complete\00", align 1
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Listen DONE, wake up wait_next_af\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_scan_finding_common_channel = private unnamed_addr constant [38 x i8] c"brcmf_p2p_scan_finding_common_channel\00", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ACTION FRAME SCAN Done\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ACTION FRAME SCAN : Peer %pM found, channel : %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_notify_action_frame_rx = private unnamed_addr constant [33 x i8] c"brcmf_p2p_notify_action_frame_rx\00", align 1
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Event data to small. Ignore\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ifp->vif->mgmt_rx_reg %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"GON request: Peer found, channel=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"We got a right next frame! (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@brcmf_p2p_notify_action_frame_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.brcmf_p2p_notify_action_frame_rx, ptr @.str.11, i32 1461, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: No memory available for action frame\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_p2p_notify_action_frame_rx._entry_ptr = internal global ptr @brcmf_p2p_notify_action_frame_rx._entry, section ".printk_index", align 4
@__func__.brcmf_p2p_notify_action_tx_complete = private unnamed_addr constant [36 x i8] c"brcmf_p2p_notify_action_tx_complete\00", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enter: event %s, status=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ACTION_FRAME_OFF_CHAN_COMPLETE\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ACTION_FRAME_COMPLETE\00", [42 x i8] zeroinitializer }, align 32
@brcmf_p2p_send_action_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.11, i32 1766, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: P2P Public action frame, unknown subtype.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"brcmf_p2p_send_action_frame\00", [36 x i8] zeroinitializer }, align 32
@brcmf_p2p_send_action_frame._entry_ptr = internal global ptr @brcmf_p2p_send_action_frame._entry, section ".printk_index", align 4
@brcmf_p2p_send_action_frame._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.11, i32 1788, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Unknown action type: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@brcmf_p2p_send_action_frame._entry_ptr.21 = internal global ptr @brcmf_p2p_send_action_frame._entry.19, section ".printk_index", align 4
@brcmf_p2p_send_action_frame._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.11, i32 1797, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Unknown Frame: category 0x%x, action 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@brcmf_p2p_send_action_frame._entry_ptr.24 = internal global ptr @brcmf_p2p_send_action_frame._entry.22, section ".printk_index", align 4
@brcmf_p2p_send_action_frame._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.11, i32 1835, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Couldn't find peer's channel.\0A\00", [61 x i8] zeroinitializer }, align 32
@brcmf_p2p_send_action_frame._entry_ptr.27 = internal global ptr @brcmf_p2p_send_action_frame._entry.25, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@brcmf_p2p_send_action_frame._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.11, i32 1867, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Failed to send Action Frame(retry %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@brcmf_p2p_send_action_frame._entry_ptr.30 = internal global ptr @brcmf_p2p_send_action_frame._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Wait more time! actual af time:%d, calculated extra listen:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_notify_rx_mgmt_p2p_probereq = private unnamed_addr constant [38 x i8] c"brcmf_p2p_notify_rx_mgmt_p2p_probereq\00", align 1
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enter: event %d reason %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PROBE REQUEST: Peer found, channel=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Filtering P2P probe_req in GO-NEG phase\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vif->mgmt_rx_reg %04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mgmt_frame_len (%d) , e->datalen (%d), chanspec (%04x), freq (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_ifchange = private unnamed_addr constant [19 x i8] c"brcmf_p2p_ifchange\00", align 1
@brcmf_p2p_ifchange._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.brcmf_p2p_ifchange, ptr @.str.11, i32 2059, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: vif for P2PAPI_BSSCFG_PRIMARY does not exist\0A\00", [46 x i8] zeroinitializer }, align 32
@brcmf_p2p_ifchange._entry_ptr = internal global ptr @brcmf_p2p_ifchange._entry, section ".printk_index", align 4
@brcmf_p2p_ifchange._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.brcmf_p2p_ifchange, ptr @.str.11, i32 2065, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: vif for P2PAPI_BSSCFG_CONNECTION does not exist\0A\00", [43 x i8] zeroinitializer }, align 32
@brcmf_p2p_ifchange._entry_ptr.40 = internal global ptr @brcmf_p2p_ifchange._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2p_ifupd\00", [22 x i8] zeroinitializer }, align 32
@brcmf_p2p_ifchange._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.brcmf_p2p_ifchange, ptr @.str.11, i32 2083, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: p2p_ifupd FAILED, err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmf_p2p_ifchange._entry_ptr.44 = internal global ptr @brcmf_p2p_ifchange._entry.42, section ".printk_index", align 4
@brcmf_p2p_ifchange._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.brcmf_p2p_ifchange, ptr @.str.11, i32 2091, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: No BRCMF_E_IF_CHANGE event received\0A\00", [55 x i8] zeroinitializer }, align 32
@brcmf_p2p_ifchange._entry_ptr.47 = internal global ptr @brcmf_p2p_ifchange._entry.45, section ".printk_index", align 4
@__func__.brcmf_p2p_add_vif = private unnamed_addr constant [18 x i8] c"brcmf_p2p_add_vif\00", align 1
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"adding vif \22%s\22 (type=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"request p2p interface failed\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmf_p2p_add_vif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.brcmf_p2p_add_vif, ptr @.str.11, i32 2324, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: timeout occurred\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmf_p2p_add_vif._entry_ptr = internal global ptr @brcmf_p2p_add_vif._entry, section ".printk_index", align 4
@brcmf_p2p_add_vif._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.brcmf_p2p_add_vif, ptr @.str.11, i32 2332, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: no if pointer provided\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_p2p_add_vif._entry_ptr.53 = internal global ptr @brcmf_p2p_add_vif._entry.51, section ".printk_index", align 4
@brcmf_p2p_add_vif._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @__func__.brcmf_p2p_add_vif, ptr @.str.11, i32 2341, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Registering netdevice failed\0A\00", [62 x i8] zeroinitializer }, align 32
@brcmf_p2p_add_vif._entry_ptr.56 = internal global ptr @brcmf_p2p_add_vif._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"roam_off\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_del_vif = private unnamed_addr constant [18 x i8] c"brcmf_p2p_del_vif\00", align 1
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"delete P2P vif\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_ifp_removed = private unnamed_addr constant [22 x i8] c"brcmf_p2p_ifp_removed\00", align 1
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"P2P: device interface removed\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_p2p_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.11, i32 2515, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: P2P device creation failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmf_p2p_attach\00", [47 x i8] zeroinitializer }, align 32
@brcmf_p2p_attach._entry_ptr = internal global ptr @brcmf_p2p_attach._entry, section ".printk_index", align 4
@__func__.brcmf_p2p_scan_is_p2p_request = private unnamed_addr constant [30 x i8] c"brcmf_p2p_scan_is_p2p_request\00", align 1
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"comparing ssid \22%s\22\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIRECT-\00", [24 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_find_listen_channel = private unnamed_addr constant [30 x i8] c"brcmf_p2p_find_listen_channel\00", align 1
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Found my Listen Channel %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_enable_discovery = private unnamed_addr constant [27 x i8] c"brcmf_p2p_enable_discovery\00", align 1
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enter\0A\00", [25 x i8] zeroinitializer }, align 32
@brcmf_p2p_enable_discovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.brcmf_p2p_enable_discovery, ptr @.str.11, i32 593, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: P2P config device not available\0A\00", [59 x i8] zeroinitializer }, align 32
@brcmf_p2p_enable_discovery._entry_ptr = internal global ptr @brcmf_p2p_enable_discovery._entry, section ".printk_index", align 4
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"P2P config device already configured\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2p_disc\00", [23 x i8] zeroinitializer }, align 32
@brcmf_p2p_enable_discovery._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.brcmf_p2p_enable_discovery, ptr @.str.11, i32 607, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: set p2p_disc error\0A\00", [40 x i8] zeroinitializer }, align 32
@brcmf_p2p_enable_discovery._entry_ptr.71 = internal global ptr @brcmf_p2p_enable_discovery._entry.69, section ".printk_index", align 4
@brcmf_p2p_enable_discovery._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @__func__.brcmf_p2p_enable_discovery, ptr @.str.11, i32 613, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: unable to set WL_P2P_DISC_ST_SCAN\0A\00", [57 x i8] zeroinitializer }, align 32
@brcmf_p2p_enable_discovery._entry_ptr.74 = internal global ptr @brcmf_p2p_enable_discovery._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wsec\00", [27 x i8] zeroinitializer }, align 32
@brcmf_p2p_enable_discovery._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @__func__.brcmf_p2p_enable_discovery, ptr @.str.11, i32 625, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: wsec error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@brcmf_p2p_enable_discovery._entry_ptr.78 = internal global ptr @brcmf_p2p_enable_discovery._entry.76, section ".printk_index", align 4
@__func__.brcmf_p2p_run_escan = private unnamed_addr constant [20 x i8] c"brcmf_p2p_run_escan\00", align 1
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"P2P SEARCH PHASE START\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Already a GO. Do SEARCH Only\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"P2P SCAN STATE START\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d: chan=%d, channel spec=%x\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmf_p2p_run_escan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @__func__.brcmf_p2p_run_escan, ptr @.str.11, i32 840, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: error (%d)\0A\00", [16 x i8] zeroinitializer }, align 32
@brcmf_p2p_run_escan._entry_ptr = internal global ptr @brcmf_p2p_run_escan._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@brcmf_p2p_escan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.11, i32 666, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: no vif for bss type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcmf_p2p_escan\00", [16 x i8] zeroinitializer }, align 32
@brcmf_p2p_escan._entry_ptr = internal global ptr @brcmf_p2p_escan._entry, section ".printk_index", align 4
@brcmf_p2p_escan._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.11, i32 694, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:  invalid search state %d\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmf_p2p_escan._entry_ptr.88 = internal global ptr @brcmf_p2p_escan._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nprobes # %d, active_time %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2p_scan\00", [23 x i8] zeroinitializer }, align 32
@brcmf_p2p_discover_listen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.11, i32 940, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Discovery is not set, so we have nothing to do\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcmf_p2p_discover_listen\00", [38 x i8] zeroinitializer }, align 32
@brcmf_p2p_discover_listen._entry_ptr = internal global ptr @brcmf_p2p_discover_listen._entry, section ".printk_index", align 4
@brcmf_p2p_discover_listen._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.11, i32 946, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Previous LISTEN is not completed yet\0A\00", [54 x i8] zeroinitializer }, align 32
@brcmf_p2p_discover_listen._entry_ptr.95 = internal global ptr @brcmf_p2p_discover_listen._entry.93, section ".printk_index", align 4
@__func__.brcmf_p2p_set_discover_state = private unnamed_addr constant [29 x i8] c"brcmf_p2p_set_discover_state\00", align 1
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2p_state\00", [22 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_print_actframe = private unnamed_addr constant [25 x i8] c"brcmf_p2p_print_actframe\00", align 1
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s P2P Group Owner Negotiation Req Frame\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s P2P Group Owner Negotiation Rsp Frame\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s P2P Group Owner Negotiation Confirm Frame\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s P2P Invitation Request  Frame\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s P2P Invitation Response Frame\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s P2P Device Discoverability Request Frame\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s P2P Device Discoverability Response Frame\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s P2P Provision Discovery Request Frame\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s P2P Provision Discovery Response Frame\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Unknown P2P Public Action Frame\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s P2P Notice of Absence Frame\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s P2P Presence Request Frame\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s P2P Presence Response Frame\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s P2P Discoverability Request Frame\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Unknown P2P Action Frame\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s P2P GAS Initial Request\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s P2P GAS Initial Response\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s P2P GAS Comback Request\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s P2P GAS Comback Response\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s Unknown P2P GAS Frame\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Po\9A\00", [28 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_gon_req_collision = private unnamed_addr constant [28 x i8] c"brcmf_p2p_gon_req_collision\00", align 1
@.str.120 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GO Negotiation Request COLLISION !!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Block transmit gon req !!!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Drop received gon req !!!\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_stop_wait_next_action_frame = private unnamed_addr constant [38 x i8] c"brcmf_p2p_stop_wait_next_action_frame\00", align 1
@.str.123 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*** Wake UP ** abort actframe iovar\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"*** Wake UP ** abort listen for next af frame\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_abort_action_frame = private unnamed_addr constant [29 x i8] c"brcmf_p2p_abort_action_frame\00", align 1
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"actframe_abort\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" aborting action frame has failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_pub_af_tx = private unnamed_addr constant [20 x i8] c"brcmf_p2p_pub_af_tx\00", align 1
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"P2P: GO_NEG_PHASE status set\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmf_p2p_pub_af_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @__func__.brcmf_p2p_pub_af_tx, ptr @.str.11, i32 1694, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Unknown p2p pub act frame subtype: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@brcmf_p2p_pub_af_tx._entry_ptr = internal global ptr @brcmf_p2p_pub_af_tx._entry, section ".printk_index", align 4
@__func__.brcmf_p2p_af_searching_channel = private unnamed_addr constant [31 x i8] c"brcmf_p2p_af_searching_channel\00", align 1
@.str.129 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Scheduling action frame for sending.. (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Scheduling listen peer, channel=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Completed search/listen peer_chan=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.brcmf_p2p_check_dwell_overflow = private unnamed_addr constant [31 x i8] c"brcmf_p2p_check_dwell_overflow\00", align 1
@.str.132 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Action frame TX retry time over dwell time!\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_tx_action_frame = private unnamed_addr constant [26 x i8] c"brcmf_p2p_tx_action_frame\00", align 1
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"actframe\00", [23 x i8] zeroinitializer }, align 32
@brcmf_p2p_tx_action_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @__func__.brcmf_p2p_tx_action_frame, ptr @.str.11, i32 1565, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:  sending action frame has failed\0A\00", [58 x i8] zeroinitializer }, align 32
@brcmf_p2p_tx_action_frame._entry_ptr = internal global ptr @brcmf_p2p_tx_action_frame._entry, section ".printk_index", align 4
@.str.135 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Waiting for %s tx completion event\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"off-channel\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"on-channel\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TX action frame operation is success\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TX action frame operation has failed\0A\00", [58 x i8] zeroinitializer }, align 32
@brcmf_p2p_create_p2pdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.11, i32 2166, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: could not create discovery vif\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcmf_p2p_create_p2pdev\00", [40 x i8] zeroinitializer }, align 32
@brcmf_p2p_create_p2pdev._entry_ptr = internal global ptr @brcmf_p2p_create_p2pdev._entry, section ".printk_index", align 4
@brcmf_p2p_create_p2pdev._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.11, i32 2174, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: discovery vif must be different from primary interface\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_p2p_create_p2pdev._entry_ptr.144 = internal global ptr @brcmf_p2p_create_p2pdev._entry.142, section ".printk_index", align 4
@brcmf_p2p_create_p2pdev._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.141, ptr @.str.11, i32 2188, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@brcmf_p2p_create_p2pdev._entry_ptr.146 = internal global ptr @brcmf_p2p_create_p2pdev._entry.145, section ".printk_index", align 4
@brcmf_p2p_create_p2pdev._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.141, ptr @.str.11, i32 2200, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@brcmf_p2p_create_p2pdev._entry_ptr.148 = internal global ptr @brcmf_p2p_create_p2pdev._entry.147, section ".printk_index", align 4
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p2p_dev\00", [24 x i8] zeroinitializer }, align 32
@brcmf_p2p_create_p2pdev._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.141, ptr @.str.11, i32 2214, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: retrieving discover bsscfg index failed\0A\00", [51 x i8] zeroinitializer }, align 32
@brcmf_p2p_create_p2pdev._entry_ptr.152 = internal global ptr @brcmf_p2p_create_p2pdev._entry.150, section ".printk_index", align 4
@brcmf_p2p_create_p2pdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.153 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&p2p->afx_hdl.afx_work)\00", [54 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apsta\00", [26 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"p2p_da_override\00", [16 x i8] zeroinitializer }, align 32
@brcmf_p2p_set_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.11, i32 448, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: failed to update device address ret %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcmf_p2p_set_firmware\00", [41 x i8] zeroinitializer }, align 32
@brcmf_p2p_set_firmware._entry_ptr = internal global ptr @brcmf_p2p_set_firmware._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@brcmf_p2p_afx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.11, i32 1136, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ERROR occurred! value is (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcmf_p2p_afx_handler\00", [42 x i8] zeroinitializer }, align 32
@brcmf_p2p_afx_handler._entry_ptr = internal global ptr @brcmf_p2p_afx_handler._entry, section ".printk_index", align 4
@__func__.brcmf_p2p_act_frm_search = private unnamed_addr constant [25 x i8] c"brcmf_p2p_act_frm_search\00", align 1
@brcmf_p2p_act_frm_search._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @__func__.brcmf_p2p_act_frm_search, ptr @.str.11, i32 1080, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: channel list allocation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@brcmf_p2p_act_frm_search._entry_ptr = internal global ptr @brcmf_p2p_act_frm_search._entry, section ".printk_index", align 4
@__func__.brcmf_p2p_get_conn_idx = private unnamed_addr constant [23 x i8] c"brcmf_p2p_get_conn_idx\00", align 1
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Multi p2p not supported\00", [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2p_ifadd\00", [22 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2p_ifdis\00", [22 x i8] zeroinitializer }, align 32
@__func__.brcmf_p2p_deinit_discovery = private unnamed_addr constant [27 x i8] c"brcmf_p2p_deinit_discovery\00", align 1
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2p_ifdel\00", [22 x i8] zeroinitializer }, align 32
@switch.table.brcmf_p2p_print_actframe = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.97, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], [60 x i8] zeroinitializer }, align 32
@switch.table.brcmf_p2p_print_actframe.166 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], [16 x i8] zeroinitializer }, align 32
@switch.table.brcmf_p2p_print_actframe.167 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], [16 x i8] zeroinitializer }, align 32
@switch.table.brcmf_p2p_escan = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 100, i32 40, i32 40], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 6, i64 11]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.169 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.170 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.171 = internal global [5 x i64] [i64 3, i64 32, i64 16777216, i64 100663296, i64 184549376]
@__sancov_gen_cov_switch_values.172 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 909, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 984, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1018, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1025, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1238, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1261, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1406, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1413, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1430, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1451, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1461, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1500, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1766, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1788, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1796, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1835, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1866, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1891, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1948, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1962, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1974, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1979, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1993, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2059, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2065, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2080, i32 43 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2083, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2091, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2279, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2314, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2324, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2332, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2341, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2348, i32 31 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2376, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2438, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2515, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 522, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 523, i32 15 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 873, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 590, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 593, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 599, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 605, i32 42 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 607, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 613, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 623, i32 43 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 625, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 808, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 812, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 815, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 830, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 840, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 666, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 694, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 740, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 754, i32 44 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 940, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 946, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 548, i32 39 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 323, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 327, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 331, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 335, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 339, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 343, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 347, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 351, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 355, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 359, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 367, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 371, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 375, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 379, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 383, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 391, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 395, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 399, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 403, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 407, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 234, i32 28 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1348, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1356, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1371, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1308, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1321, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1284, i32 44 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1287, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1627, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1693, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1172, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1184, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1206, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1706, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1562, i32 44 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1565, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1579, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1586, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1589, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2166, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2174, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2188, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2200, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2212, i32 41 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2214, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2221, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 435, i32 31 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 445, i32 38 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 448, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 87, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1136, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1080, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2244, i32 5 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2117, i32 38 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2130, i32 39 }
@___asan_gen_.667 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.668 = private constant [58 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 2140, i32 39 }
@___asan_gen_.670 = private unnamed_addr constant [38 x i8] c"switch.table.brcmf_p2p_print_actframe\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [42 x i8] c"switch.table.brcmf_p2p_print_actframe.166\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [42 x i8] c"switch.table.brcmf_p2p_print_actframe.167\00", align 1
@___asan_gen_.673 = private unnamed_addr constant [29 x i8] c"switch.table.brcmf_p2p_escan\00", align 1
@llvm.compiler.used = appending global [202 x ptr] [ptr @brcmf_p2p_act_frm_search._entry, ptr @brcmf_p2p_act_frm_search._entry_ptr, ptr @brcmf_p2p_add_vif._entry, ptr @brcmf_p2p_add_vif._entry.51, ptr @brcmf_p2p_add_vif._entry.54, ptr @brcmf_p2p_add_vif._entry_ptr, ptr @brcmf_p2p_add_vif._entry_ptr.53, ptr @brcmf_p2p_add_vif._entry_ptr.56, ptr @brcmf_p2p_afx_handler._entry, ptr @brcmf_p2p_afx_handler._entry_ptr, ptr @brcmf_p2p_attach._entry, ptr @brcmf_p2p_attach._entry_ptr, ptr @brcmf_p2p_create_p2pdev._entry, ptr @brcmf_p2p_create_p2pdev._entry.142, ptr @brcmf_p2p_create_p2pdev._entry.145, ptr @brcmf_p2p_create_p2pdev._entry.147, ptr @brcmf_p2p_create_p2pdev._entry.150, ptr @brcmf_p2p_create_p2pdev._entry_ptr, ptr @brcmf_p2p_create_p2pdev._entry_ptr.144, ptr @brcmf_p2p_create_p2pdev._entry_ptr.146, ptr @brcmf_p2p_create_p2pdev._entry_ptr.148, ptr @brcmf_p2p_create_p2pdev._entry_ptr.152, ptr @brcmf_p2p_discover_listen._entry, ptr @brcmf_p2p_discover_listen._entry.93, ptr @brcmf_p2p_discover_listen._entry_ptr, ptr @brcmf_p2p_discover_listen._entry_ptr.95, ptr @brcmf_p2p_enable_discovery._entry, ptr @brcmf_p2p_enable_discovery._entry.69, ptr @brcmf_p2p_enable_discovery._entry.72, ptr @brcmf_p2p_enable_discovery._entry.76, ptr @brcmf_p2p_enable_discovery._entry_ptr, ptr @brcmf_p2p_enable_discovery._entry_ptr.71, ptr @brcmf_p2p_enable_discovery._entry_ptr.74, ptr @brcmf_p2p_enable_discovery._entry_ptr.78, ptr @brcmf_p2p_escan._entry, ptr @brcmf_p2p_escan._entry.86, ptr @brcmf_p2p_escan._entry_ptr, ptr @brcmf_p2p_escan._entry_ptr.88, ptr @brcmf_p2p_ifchange._entry, ptr @brcmf_p2p_ifchange._entry.38, ptr @brcmf_p2p_ifchange._entry.42, ptr @brcmf_p2p_ifchange._entry.45, ptr @brcmf_p2p_ifchange._entry_ptr, ptr @brcmf_p2p_ifchange._entry_ptr.40, ptr @brcmf_p2p_ifchange._entry_ptr.44, ptr @brcmf_p2p_ifchange._entry_ptr.47, ptr @brcmf_p2p_notify_action_frame_rx._entry, ptr @brcmf_p2p_notify_action_frame_rx._entry_ptr, ptr @brcmf_p2p_pub_af_tx._entry, ptr @brcmf_p2p_pub_af_tx._entry_ptr, ptr @brcmf_p2p_run_escan._entry, ptr @brcmf_p2p_run_escan._entry_ptr, ptr @brcmf_p2p_send_action_frame._entry, ptr @brcmf_p2p_send_action_frame._entry.19, ptr @brcmf_p2p_send_action_frame._entry.22, ptr @brcmf_p2p_send_action_frame._entry.25, ptr @brcmf_p2p_send_action_frame._entry.28, ptr @brcmf_p2p_send_action_frame._entry_ptr, ptr @brcmf_p2p_send_action_frame._entry_ptr.21, ptr @brcmf_p2p_send_action_frame._entry_ptr.24, ptr @brcmf_p2p_send_action_frame._entry_ptr.27, ptr @brcmf_p2p_send_action_frame._entry_ptr.30, ptr @brcmf_p2p_set_firmware._entry, ptr @brcmf_p2p_set_firmware._entry_ptr, ptr @brcmf_p2p_tx_action_frame._entry, ptr @brcmf_p2p_tx_action_frame._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.149, ptr @.str.151, ptr @brcmf_p2p_create_p2pdev.__key, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @init_completion.__key, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @switch.table.brcmf_p2p_print_actframe, ptr @switch.table.brcmf_p2p_print_actframe.166, ptr @switch.table.brcmf_p2p_print_actframe.167, ptr @switch.table.brcmf_p2p_escan], section "llvm.metadata"
@0 = internal global [169 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_notify_action_frame_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_send_action_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_send_action_frame._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_send_action_frame._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_send_action_frame._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_send_action_frame._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_ifchange._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_ifchange._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_ifchange._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_ifchange._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_add_vif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_add_vif._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_add_vif._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_enable_discovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_enable_discovery._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_enable_discovery._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_enable_discovery._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_run_escan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_escan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_escan._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_discover_listen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_discover_listen._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_pub_af_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_tx_action_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_create_p2pdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_create_p2pdev._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_create_p2pdev._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_create_p2pdev._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_create_p2pdev._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_create_p2pdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_set_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_afx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_act_frm_search._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcmf_p2p_print_actframe to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcmf_p2p_print_actframe.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcmf_p2p_print_actframe.167 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcmf_p2p_escan to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_scan_prep(ptr noundef readonly %wiphy, ptr nocapture noundef readonly %request, ptr nocapture noundef readnone %vif) local_unnamed_addr #0 align 64 {
entry:
  %channel_ie.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_to_cfg.exit, !prof !359

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

wiphy_to_cfg.exit:                                ; preds = %entry
  %config.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 4
  %p2p1 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request, align 8
  %n_ssids.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %4 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_ssids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18.i = icmp sgt i32 %5, 0
  br i1 %cmp18.i, label %wiphy_to_cfg.exit.for.body.i_crit_edge, label %wiphy_to_cfg.exit.cleanup_crit_edge

wiphy_to_cfg.exit.cleanup_crit_edge:              ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wiphy_to_cfg.exit.for.body.i_crit_edge:           ; preds = %wiphy_to_cfg.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %wiphy_to_cfg.exit.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %wiphy_to_cfg.exit.for.body.i_crit_edge ]
  %ssid_len.i = getelementptr %struct.cfg80211_ssid, ptr %3, i32 %i.019.i, i32 1
  %6 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssid_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp2.not.i = icmp eq i8 %7, 7
  br i1 %cmp2.not.i, label %do.body.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.cfg80211_ssid, ptr %3, i32 %i.019.i
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_scan_is_p2p_request, ptr noundef nonnull @.str.62, ptr noundef %arrayidx.i) #10
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.63, ptr noundef dereferenceable(7) %arrayidx.i, i32 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then, label %do.body.i.for.inc.i_crit_edge

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %8 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_ssids.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then:                                          ; preds = %do.body.i
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 4
  %10 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ie, align 8
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 5
  %12 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ie_len, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %channel_ie.i) #10
  %14 = call ptr @memset(ptr %channel_ie.i, i32 255, i32 5)
  %call.i = call i32 @cfg80211_get_p2p_attr(ptr noundef %11, i32 noundef %13, i32 noundef 6, ptr noundef nonnull %channel_ie.i, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i20 = icmp slt i32 %call.i, 0
  br i1 %cmp.i20, label %if.then.brcmf_p2p_find_listen_channel.exit.thread_crit_edge, label %if.end.i

if.then.brcmf_p2p_find_listen_channel.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_find_listen_channel.exit.thread

if.end.i:                                         ; preds = %if.then
  %15 = getelementptr inbounds [5 x i8], ptr %channel_ie.i, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.end.i.brcmf_p2p_find_listen_channel.exit.thread_crit_edge [
    i8 1, label %if.end.i.brcmf_p2p_find_listen_channel.exit_crit_edge
    i8 6, label %if.end.i.brcmf_p2p_find_listen_channel.exit_crit_edge25
    i8 11, label %if.end.i.brcmf_p2p_find_listen_channel.exit_crit_edge26
  ]

if.end.i.brcmf_p2p_find_listen_channel.exit_crit_edge26: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_find_listen_channel.exit

if.end.i.brcmf_p2p_find_listen_channel.exit_crit_edge25: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_find_listen_channel.exit

if.end.i.brcmf_p2p_find_listen_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_find_listen_channel.exit

if.end.i.brcmf_p2p_find_listen_channel.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_find_listen_channel.exit.thread

brcmf_p2p_find_listen_channel.exit.thread:        ; preds = %if.end.i.brcmf_p2p_find_listen_channel.exit.thread_crit_edge, %if.then.brcmf_p2p_find_listen_channel.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -1, %if.end.i.brcmf_p2p_find_listen_channel.exit.thread_crit_edge ], [ %call.i, %if.then.brcmf_p2p_find_listen_channel.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %channel_ie.i) #10
  br label %cleanup

brcmf_p2p_find_listen_channel.exit:               ; preds = %if.end.i.brcmf_p2p_find_listen_channel.exit_crit_edge, %if.end.i.brcmf_p2p_find_listen_channel.exit_crit_edge25, %if.end.i.brcmf_p2p_find_listen_channel.exit_crit_edge26
  %conv.i = zext i8 %17 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_find_listen_channel, ptr noundef nonnull @.str.64, i32 noundef %conv.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %channel_ie.i) #10
  %conv = zext i8 %17 to i16
  %my_listen_chan = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 12, i32 5
  %19 = ptrtoint ptr %my_listen_chan to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %my_listen_chan, align 2
  %status = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 1
  call void @_clear_bit(i32 noundef 8, ptr noundef %status) #10
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_scan_prep, ptr noundef nonnull @.str) #10
  %call5 = call fastcc i32 @brcmf_p2p_enable_discovery(ptr noundef %p2p1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %brcmf_p2p_find_listen_channel.exit.cleanup_crit_edge

brcmf_p2p_find_listen_channel.exit.cleanup_crit_edge: ; preds = %brcmf_p2p_find_listen_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %brcmf_p2p_find_listen_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %run = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 20, i32 4
  %20 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @brcmf_p2p_run_escan, ptr %run, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %brcmf_p2p_find_listen_channel.exit.cleanup_crit_edge, %brcmf_p2p_find_listen_channel.exit.thread, %for.inc.i.cleanup_crit_edge, %wiphy_to_cfg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %brcmf_p2p_find_listen_channel.exit.cleanup_crit_edge ], [ 0, %if.end7 ], [ %retval.0.i.ph, %brcmf_p2p_find_listen_channel.exit.thread ], [ 0, %wiphy_to_cfg.exit.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_p2p_enable_discovery(ptr noundef %p2p) unnamed_addr #0 align 64 {
entry:
  %discover_state.i = alloca %struct.brcmf_p2p_disc_st_le, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p, align 4
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pub, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery, ptr noundef nonnull @.str.65) #10
  %bss_idx = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 5
  %arrayidx = getelementptr %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end5, label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery) #14
  br label %exit

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not = icmp eq i32 %and1.i, 0
  br i1 %tobool8.not, label %if.end13, label %do.body10

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery, ptr noundef nonnull @.str.67) #10
  br label %exit

if.end13:                                         ; preds = %if.end
  %10 = ptrtoint ptr %bss_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bss_idx, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call17 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str.68, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end22, label %if.end27

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy23 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %wiphy23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy23, align 4
  %dev24 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery) #14
  br label %exit

if.end27:                                         ; preds = %if.end13
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %discover_state.i) #10
  %20 = ptrtoint ptr %discover_state.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 255, ptr %discover_state.i, align 2
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_set_discover_state, ptr noundef nonnull @.str.65) #10
  %chspec.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 1
  %21 = ptrtoint ptr %chspec.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %chspec.i, align 2
  %dwell.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 2
  %22 = ptrtoint ptr %dwell.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %dwell.i, align 2
  %call.i = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %19, ptr noundef nonnull @.str.96, ptr noundef nonnull %discover_state.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %discover_state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp33 = icmp slt i32 %call.i, 0
  br i1 %cmp33, label %do.end38, label %if.end43

do.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy39 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %wiphy39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy39, align 4
  %dev40 = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery) #14
  br label %exit

if.end43:                                         ; preds = %if.end27
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %17, align 4
  %call45 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %26, ptr noundef nonnull @.str.75, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end51, label %if.end56

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy52 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %wiphy52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy52, align 4
  %dev53 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery, i32 noundef %call45) #14
  br label %exit

if.end56:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 0, ptr noundef %status) #10
  br label %exit

exit:                                             ; preds = %if.end56, %do.end51, %do.end38, %do.end22, %do.body10, %do.end5
  %ret.0 = phi i32 [ 0, %do.body10 ], [ %call17, %do.end22 ], [ %call.i, %do.end38 ], [ %call45, %do.end51 ], [ %call45, %if.end56 ], [ -1, %do.end5 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_p2p_run_escan(ptr nocapture noundef readonly %cfg, ptr nocapture noundef readnone %ifp, ptr noundef readonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p1 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 10
  %0 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pub, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_run_escan, ptr noundef nonnull @.str.65) #10
  %tobool.not = icmp eq ptr %request, null
  br i1 %tobool.not, label %entry.do.end76_crit_edge, label %if.end

entry.do.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

if.end:                                           ; preds = %entry
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 2
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end80_crit_edge, label %if.then3

if.end.if.end80_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then3:                                         ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 2) #10
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.then3.do.end76_crit_edge, label %if.end7.i.i, !prof !359

if.then3.do.end76_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

if.end7.i.i:                                      ; preds = %if.then3
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #15
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.do.end76_crit_edge, label %if.end7

if.end7.i.i.do.end76_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

if.end7:                                          ; preds = %if.end7.i.i
  %arrayidx = getelementptr %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %dev.0 = phi ptr [ %10, %if.then10 ], [ null, %if.end7.if.end11_crit_edge ]
  %11 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp = icmp eq i32 %12, 3
  br i1 %cmp, label %land.lhs.true, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end11
  %channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 22
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp14 = icmp eq i16 %16, 1
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true16:                                  ; preds = %land.lhs.true
  %arrayidx18 = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18, align 4
  %hw_value19 = getelementptr inbounds %struct.ieee80211_channel, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %hw_value19 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hw_value19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %20)
  %cmp21 = icmp eq i16 %20, 6
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true16.if.else_crit_edge

land.lhs.true16.if.else_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true23:                                  ; preds = %land.lhs.true16
  %arrayidx25 = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx25, align 4
  %hw_value26 = getelementptr inbounds %struct.ieee80211_channel, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %hw_value26 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_value26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %24)
  %cmp28 = icmp eq i16 %24, 11
  br i1 %cmp28, label %land.lhs.true23.if.end49_crit_edge, label %land.lhs.true23.if.else_crit_edge

land.lhs.true23.if.else_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true23.if.end49_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.else:                                          ; preds = %land.lhs.true23.if.else_crit_edge, %land.lhs.true16.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end11.if.else_crit_edge
  %cmp34.not = icmp eq ptr %dev.0, null
  br i1 %cmp34.not, label %if.else.do.body45_crit_edge, label %land.lhs.true36

if.else.do.body45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

land.lhs.true36:                                  ; preds = %if.else
  %iftype = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %26)
  %cmp38 = icmp eq i32 %26, 9
  br i1 %cmp38, label %land.lhs.true36.if.end49_crit_edge, label %land.lhs.true36.do.body45_crit_edge

land.lhs.true36.do.body45_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

land.lhs.true36.if.end49_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.body45:                                        ; preds = %land.lhs.true36.do.body45_crit_edge, %if.else.do.body45_crit_edge
  br label %if.end49

if.end49:                                         ; preds = %do.body45, %land.lhs.true36.if.end49_crit_edge, %land.lhs.true23.if.end49_crit_edge
  %.str.80.sink = phi ptr [ @.str.81, %do.body45 ], [ @.str.79, %land.lhs.true23.if.end49_crit_edge ], [ @.str.80, %land.lhs.true36.if.end49_crit_edge ]
  %search_state.0 = phi i32 [ 0, %do.body45 ], [ 2, %land.lhs.true23.if.end49_crit_edge ], [ 2, %land.lhs.true36.if.end49_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_run_escan, ptr noundef nonnull %.str.80.sink) #10
  %27 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp51131.not = icmp eq i32 %28, 0
  br i1 %cmp51131.not, label %if.end49.exit_crit_edge, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  br label %for.body

if.end49.exit_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end49.for.body_crit_edge
  %num_nodfs.0133 = phi i32 [ %num_nodfs.1, %cleanup.for.body_crit_edge ], [ 0, %if.end49.for.body_crit_edge ]
  %i.0132 = phi i32 [ %inc68, %cleanup.for.body_crit_edge ], [ 0, %if.end49.for.body_crit_edge ]
  %arrayidx54 = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 22, i32 %i.0132
  %29 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx54, align 4
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and = and i32 %32, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.end57, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %p2p1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p2p1, align 4
  %d11inf = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %34, i32 0, i32 26
  %call59 = tail call zeroext i16 @channel_to_chanspec(ptr noundef %d11inf, ptr noundef %30) #10
  %arrayidx60 = getelementptr i16, ptr %call8.i.i, i32 %i.0132
  %35 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %call59, ptr %arrayidx60, align 2
  %hw_value62 = getelementptr inbounds %struct.ieee80211_channel, ptr %30, i32 0, i32 3
  %36 = ptrtoint ptr %hw_value62 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hw_value62, align 2
  %conv63 = zext i16 %37 to i32
  %conv65 = zext i16 %call59 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_run_escan, ptr noundef nonnull @.str.82, i32 noundef %num_nodfs.0133, i32 noundef %conv63, i32 noundef %conv65) #10
  %inc = add i32 %num_nodfs.0133, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %for.body.cleanup_crit_edge
  %num_nodfs.1 = phi i32 [ %inc, %if.end57 ], [ %num_nodfs.0133, %for.body.cleanup_crit_edge ]
  %inc68 = add nuw i32 %i.0132, 1
  %38 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels, align 8
  %cmp51 = icmp ult i32 %inc68, %39
  br i1 %cmp51, label %cleanup.for.body_crit_edge, label %cleanup.exit_crit_edge

cleanup.exit_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

exit:                                             ; preds = %cleanup.exit_crit_edge, %if.end49.exit_crit_edge
  %num_nodfs.0.lcssa = phi i32 [ 0, %if.end49.exit_crit_edge ], [ %num_nodfs.1, %cleanup.exit_crit_edge ]
  %call69 = tail call fastcc i32 @brcmf_p2p_escan(ptr noundef %p2p1, i32 noundef %num_nodfs.0.lcssa, ptr noundef nonnull %call8.i.i, i32 noundef %search_state.0)
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool71.not = icmp eq i32 %call69, 0
  br i1 %tobool71.not, label %exit.if.end80_crit_edge, label %exit.do.end76_crit_edge

exit.do.end76_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

exit.if.end80_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

do.end76:                                         ; preds = %exit.do.end76_crit_edge, %if.end7.i.i.do.end76_crit_edge, %if.then3.do.end76_crit_edge, %entry.do.end76_crit_edge
  %err.0126 = phi i32 [ %call69, %exit.do.end76_crit_edge ], [ -12, %if.end7.i.i.do.end76_crit_edge ], [ -22, %entry.do.end76_crit_edge ], [ -12, %if.then3.do.end76_crit_edge ]
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy, align 4
  %dev77 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev77, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.brcmf_p2p_run_escan, i32 noundef %err.0126) #14
  br label %if.end80

if.end80:                                         ; preds = %do.end76, %exit.if.end80_crit_edge, %if.end.if.end80_crit_edge
  %err.0127 = phi i32 [ %err.0126, %do.end76 ], [ 0, %exit.if.end80_crit_edge ], [ 0, %if.end.if.end80_crit_edge ]
  ret i32 %err.0127
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_remain_on_channel(ptr noundef readonly %wiphy, ptr noundef %wdev, ptr noundef %channel, i32 noundef %duration, ptr nocapture noundef writeonly %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_to_cfg.exit, !prof !359

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

wiphy_to_cfg.exit:                                ; preds = %entry
  %config.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 4
  %p2p1 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %3, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #10
  %conv3 = and i32 %call.i, 65535
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_remain_on_channel, ptr noundef nonnull @.str.1, i32 noundef %conv3, i32 noundef %duration) #10
  %call4 = tail call fastcc i32 @brcmf_p2p_enable_discovery(ptr noundef %p2p1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %wiphy_to_cfg.exit.exit_crit_edge

wiphy_to_cfg.exit.exit_crit_edge:                 ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %wiphy_to_cfg.exit
  %conv = trunc i32 %call.i to i16
  %call5 = tail call fastcc i32 @brcmf_p2p_discover_listen(ptr noundef %p2p1, i16 noundef zeroext %conv, i32 noundef %duration)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %remain_on_channel = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 8
  %4 = call ptr @memcpy(ptr %remain_on_channel, ptr %channel, i32 56)
  %remain_on_channel_cookie = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 9
  %5 = ptrtoint ptr %remain_on_channel_cookie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %remain_on_channel_cookie, align 4
  %conv9 = zext i32 %6 to i64
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv9, ptr %cookie, align 8
  tail call void @cfg80211_ready_on_channel(ptr noundef %wdev, i64 noundef %conv9, ptr noundef %channel, i32 noundef %duration, i32 noundef 3264) #10
  br label %exit

exit:                                             ; preds = %if.end8, %if.end.exit_crit_edge, %wiphy_to_cfg.exit.exit_crit_edge
  %err.0 = phi i32 [ %call4, %wiphy_to_cfg.exit.exit_crit_edge ], [ %call5, %if.end.exit_crit_edge ], [ 0, %if.end8 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_p2p_discover_listen(ptr noundef %p2p, i16 noundef zeroext %channel, i32 noundef %duration) unnamed_addr #0 align 64 {
entry:
  %discover_state.i = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %ch = alloca %struct.brcmu_chan, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p, align 4
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pub, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ch) #10
  %4 = call ptr @memset(ptr %ch, i32 255, i32 16)
  %arrayidx = getelementptr %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92) #14
  br label %exit

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status, align 4
  %11 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end15, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy11 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %wiphy11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy11, align 4
  %dev12 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92) #14
  br label %exit

if.end15:                                         ; preds = %if.end
  %conv = trunc i16 %channel to i8
  %chnum = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 1
  %14 = ptrtoint ptr %chnum to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %chnum, align 2
  %bw = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %15 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bw, align 4
  %encchspec = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 26, i32 1
  %16 = ptrtoint ptr %encchspec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %encchspec, align 4
  call void %17(ptr noundef nonnull %ch) #10
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %20 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ch, align 4
  %conv17 = trunc i32 %duration to i16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %discover_state.i) #10
  %22 = ptrtoint ptr %discover_state.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 511, ptr %discover_state.i, align 2
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_set_discover_state, ptr noundef nonnull @.str.65) #10
  %23 = call i16 @llvm.bswap.i16(i16 %21) #10
  %chspec.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 1
  %24 = ptrtoint ptr %chspec.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %chspec.i, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %conv17) #10
  %dwell.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 2
  %26 = ptrtoint ptr %dwell.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %dwell.i, align 2
  %call.i = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %19, ptr noundef nonnull @.str.96, ptr noundef nonnull %discover_state.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %discover_state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.then20, label %if.end15.exit_crit_edge

if.end15.exit_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 9, ptr noundef %status) #10
  %remain_on_channel_cookie = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 9
  %27 = ptrtoint ptr %remain_on_channel_cookie to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %remain_on_channel_cookie, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %remain_on_channel_cookie, align 4
  br label %exit

exit:                                             ; preds = %if.then20, %if.end15.exit_crit_edge, %do.end10, %do.end
  %err.0 = phi i32 [ 0, %do.end10 ], [ %call.i, %if.end15.exit_crit_edge ], [ 0, %if.then20 ], [ -1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ch) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ready_on_channel(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_notify_listen_complete(ptr nocapture noundef readonly %ifp, ptr nocapture readnone %e, ptr nocapture readnone %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_notify_listen_complete, ptr noundef nonnull @.str.2) #10
  %status = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %status) #10
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_notify_listen_complete, ptr noundef nonnull @.str.3) #10
  %wait_next_af = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 15
  tail call void @complete(ptr noundef %wait_next_af) #10
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %vif = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 1
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif, align 4
  %wdev = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 1
  %remain_on_channel_cookie = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 9
  %6 = ptrtoint ptr %remain_on_channel_cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %remain_on_channel_cookie, align 4
  %conv = zext i32 %7 to i64
  %remain_on_channel = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 8
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %wdev, i64 noundef %conv, ptr noundef %remain_on_channel, i32 noundef 3264) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_p2p_cancel_remain_on_channel(ptr noundef %ifp) local_unnamed_addr #0 align 64 {
entry:
  %discover_state.i = alloca %struct.brcmf_p2p_disc_st_le, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ifp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %discover_state.i) #10
  %0 = ptrtoint ptr %discover_state.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 255, ptr %discover_state.i, align 2
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_set_discover_state, ptr noundef nonnull @.str.65) #10
  %chspec.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 1
  %1 = ptrtoint ptr %chspec.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %chspec.i, align 2
  %dwell.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 2
  %2 = ptrtoint ptr %dwell.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %dwell.i, align 2
  %call.i = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef nonnull %ifp, ptr noundef nonnull @.str.96, ptr noundef nonnull %discover_state.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %discover_state.i) #10
  %call1 = call i32 @brcmf_p2p_notify_listen_complete(ptr noundef nonnull %ifp, ptr undef, ptr undef)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_p2p_scan_finding_common_channel(ptr noundef %cfg, ptr noundef %bi) local_unnamed_addr #0 align 64 {
entry:
  %ch = alloca %struct.brcmu_chan, align 4
  %p2p_dev_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ch) #10
  %0 = call ptr @memset(ptr %ch, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %p2p_dev_addr) #10
  %1 = getelementptr inbounds [6 x i8], ptr %p2p_dev_addr, i32 0, i32 4
  %status = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %bi, null
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %if.end
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_scan_finding_common_channel, ptr noundef nonnull @.str.4) #10
  %peer_chan = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 3
  %5 = ptrtoint ptr %peer_chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %peer_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp4 = icmp eq i32 %6, -1
  br i1 %cmp4, label %if.then5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %act_frm_scan = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 1
  tail call void @complete(ptr noundef %act_frm_scan) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ie_offset = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %bi, i32 0, i32 20
  %7 = ptrtoint ptr %ie_offset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ie_offset, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %bi, i32 %conv
  %10 = call ptr @memset(ptr %p2p_dev_addr, i32 0, i32 6)
  %ie_length = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %bi, i32 0, i32 21
  %11 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ie_length, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %call9 = call i32 @cfg80211_get_p2p_attr(ptr noundef %add.ptr, i32 noundef %13, i32 noundef 13, ptr noundef nonnull %p2p_dev_addr, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end16, label %if.end7.land.lhs.true_crit_edge

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end16:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ie_length, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %call15 = call i32 @cfg80211_get_p2p_attr(ptr noundef %add.ptr, i32 noundef %16, i32 noundef 3, ptr noundef nonnull %p2p_dev_addr, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp17 = icmp sgt i32 %call15, -1
  br i1 %cmp17, label %if.end16.land.lhs.true_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.land.lhs.true_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge
  %tx_dst_addr = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 7
  %17 = ptrtoint ptr %p2p_dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %p2p_dev_addr, align 4
  %19 = ptrtoint ptr %tx_dst_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_dst_addr, align 4
  %xor.i = xor i32 %20, %18
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %1, align 4
  %add.ptr1.i = getelementptr %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 7, i32 4
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %24, %22
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then23, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true
  %ctl_ch = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %bi, i32 0, i32 15
  %25 = ptrtoint ptr %ctl_ch to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctl_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool24.not = icmp eq i8 %26, 0
  br i1 %tobool24.not, label %if.then25, label %if.then23.if.end27_crit_edge

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %chanspec = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %bi, i32 0, i32 8
  %27 = ptrtoint ptr %chanspec to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %chanspec, align 4
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %30 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %ch, align 4
  %decchspec = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 26, i32 2
  %31 = ptrtoint ptr %decchspec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %decchspec, align 4
  call void %32(ptr noundef nonnull %ch) #10
  %control_ch_num = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 2
  %33 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %control_ch_num, align 1
  %35 = ptrtoint ptr %ctl_ch to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %ctl_ch, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then23.if.end27_crit_edge
  %36 = ptrtoint ptr %ctl_ch to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ctl_ch, align 4
  %conv29 = zext i8 %37 to i32
  %peer_chan30 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 3
  %38 = ptrtoint ptr %peer_chan30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv29, ptr %peer_chan30, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_scan_finding_common_channel, ptr noundef nonnull @.str.5, ptr noundef %tx_dst_addr, i32 noundef %conv29) #10
  %act_frm_scan37 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 1
  call void @complete(ptr noundef %act_frm_scan37) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %land.lhs.true.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %39 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %p2p_dev_addr) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ch) #10
  ret i1 %39
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_get_p2p_attr(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_notify_action_frame_rx(ptr noundef %ifp, ptr nocapture noundef readonly %e, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %ch = alloca %struct.brcmu_chan, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %p2p2 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2
  %datalen = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 6
  %4 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %datalen, align 4
  %sub = add i32 %5, -16
  %add.ptr = getelementptr %struct.brcmf_rx_mgmt_data, ptr %data, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ch) #10
  %6 = call ptr @memset(ptr %ch, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ult i32 %5, 16
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_p2p_notify_action_frame_rx, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %chanspec = getelementptr inbounds %struct.brcmf_rx_mgmt_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %chanspec to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %chanspec, align 2
  %9 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %ch, align 4
  %decchspec = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 26, i32 2
  %10 = ptrtoint ptr %decchspec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %decchspec, align 4
  call void %11(ptr noundef nonnull %ch) #10
  %vif = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 1
  %12 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vif, align 4
  %mgmt_rx_reg = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %mgmt_rx_reg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mgmt_rx_reg, align 4
  %conv = zext i16 %15 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_notify_action_frame_rx, ptr noundef nonnull @.str.7, i32 noundef %conv) #10
  %16 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vif, align 4
  %mgmt_rx_reg9 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %mgmt_rx_reg9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mgmt_rx_reg9, align 4
  %20 = and i16 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp12 = icmp eq i16 %20, 0
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call fastcc void @brcmf_p2p_print_actframe(i1 noundef zeroext false, ptr noundef %add.ptr, i32 noundef %sub)
  %cmp.i = icmp eq ptr %add.ptr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp1.i = icmp ult i32 %sub, 8
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.end15.if.else_crit_edge, label %if.end3.i

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end3.i:                                        ; preds = %if.end15
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp4.i = icmp eq i8 %22, 4
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end3.i.if.else_crit_edge

if.end3.i.if.else_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end3.i
  %action.i = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %add.ptr, i32 0, i32 1
  %23 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %24)
  %cmp7.i = icmp eq i8 %24, 9
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %oui_type.i = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %add.ptr, i32 0, i32 3
  %25 = ptrtoint ptr %oui_type.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %oui_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %26)
  %cmp11.i = icmp eq i8 %26, 9
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true9.i.if.else_crit_edge

land.lhs.true9.i.if.else_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true13.i:                                ; preds = %land.lhs.true9.i
  %oui.i = getelementptr %struct.brcmf_rx_mgmt_data, ptr %data, i32 1, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(3) %oui.i, ptr noundef nonnull dereferenceable(3) @.str.119, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp14.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp14.i, label %if.then16, label %land.lhs.true13.i.if.else_crit_edge

land.lhs.true13.i.if.else_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true13.i
  %subtype = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %add.ptr, i32 0, i32 4
  %27 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %subtype, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.168)
  switch i8 %28, label %if.then16.if.end59_crit_edge [
    i8 0, label %land.lhs.true
    i8 8, label %if.then16.if.then44_crit_edge
    i8 2, label %if.then16.if.then44_crit_edge181
  ]

if.then16.if.then44_crit_edge181:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then16.if.then44_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then16.if.end59_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

land.lhs.true:                                    ; preds = %if.then16
  %addr = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 7
  %30 = ptrtoint ptr %p2p2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p2p2, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_gon_req_collision, ptr noundef nonnull @.str.2) #10
  %status.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %status.i, align 4
  %34 = and i32 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end59_crit_edge, label %lor.lhs.false.i

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %gon_req_action.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 16
  %35 = ptrtoint ptr %gon_req_action.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %gon_req_action.i, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool2.not.i = icmp eq i8 %36, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end59_crit_edge, label %do.body3.i

lor.lhs.false.i.if.end59_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

do.body3.i:                                       ; preds = %lor.lhs.false.i
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_gon_req_collision, ptr noundef nonnull @.str.120) #10
  %arrayidx.i = getelementptr %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 5, i32 1
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %mac_addr.i = getelementptr inbounds %struct.brcmf_if, ptr %40, i32 0, i32 8
  %call7.i = call i32 @memcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %mac_addr.i, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i164 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i164, label %do.body9.i, label %if.then22

do.body9.i:                                       ; preds = %do.body3.i
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_gon_req_collision, ptr noundef nonnull @.str.121) #10
  %block_gon_req_tx.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 17
  %41 = ptrtoint ptr %block_gon_req_tx.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %block_gon_req_tx.i, align 1
  %call13.i = call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %status.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %do.body9.i.if.end16.i_crit_edge, label %if.then15.i

do.body9.i.if.end16.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then15.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  %act_frm_scan.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 12, i32 1
  call void @complete(ptr noundef %act_frm_scan.i) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %do.body9.i.if.end16.i_crit_edge
  %call18.i = call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %status.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end59_crit_edge, label %if.then20.i

if.end16.i.if.end59_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @brcmf_p2p_stop_wait_next_action_frame(ptr noundef %31) #10
  br label %if.end59

if.then22:                                        ; preds = %do.body3.i
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_gon_req_collision, ptr noundef nonnull @.str.122) #10
  %42 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %status.i, align 4
  %44 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  br i1 %tobool.not, label %if.then22.cleanup_crit_edge, label %land.lhs.true24

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true24:                                  ; preds = %if.then22
  %tx_dst_addr = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 12, i32 7
  %45 = ptrtoint ptr %tx_dst_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_dst_addr, align 4
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %48, %46
  %add.ptr.i = getelementptr %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 12, i32 7, i32 4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.brcmf_event_msg, ptr %e, i32 0, i32 7, i32 4
  %51 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %52, %50
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i166 = icmp eq i32 %or.i, 0
  br i1 %cmp.i166, label %if.then30, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  %control_ch_num = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 2
  %53 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %control_ch_num, align 1
  %conv31 = zext i8 %54 to i32
  %peer_chan = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 12, i32 3
  %55 = ptrtoint ptr %peer_chan to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv31, ptr %peer_chan, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_notify_action_frame_rx, ptr noundef nonnull @.str.8, i32 noundef %conv31) #10
  %act_frm_scan = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 12, i32 1
  call void @complete(ptr noundef %act_frm_scan) #10
  br label %cleanup

if.then44:                                        ; preds = %if.then16.if.then44_crit_edge, %if.then16.if.then44_crit_edge181
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp39 = icmp eq i8 %28, 2
  call void @brcmf_set_mpc(ptr noundef %ifp, i32 noundef 1) #10
  br i1 %cmp39, label %do.body50, label %if.then44.if.end59_crit_edge

if.then44.if.end59_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

do.body50:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_notify_action_frame_rx, ptr noundef nonnull @.str) #10
  %status53 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 1
  call void @_clear_bit(i32 noundef 8, ptr noundef %status53) #10
  br label %if.end59

if.else:                                          ; preds = %land.lhs.true13.i.if.else_crit_edge, %land.lhs.true9.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end3.i.if.else_crit_edge, %if.end15.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp1.i168 = icmp ult i32 %sub, 3
  %or.cond.i169 = or i1 %cmp.i, %cmp1.i168
  br i1 %or.cond.i169, label %if.else.if.end59_crit_edge, label %if.end3.i170

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.end3.i170:                                     ; preds = %if.else
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %57)
  %cmp4.not.i = icmp eq i8 %57, 4
  br i1 %cmp4.not.i, label %brcmf_p2p_is_gas_action.exit, label %if.end3.i170.if.end59_crit_edge

if.end3.i170.if.end59_crit_edge:                  ; preds = %if.end3.i170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

brcmf_p2p_is_gas_action.exit:                     ; preds = %if.end3.i170
  %action.i171 = getelementptr inbounds %struct.brcmf_p2psd_gas_pub_act_frame, ptr %add.ptr, i32 0, i32 1
  %58 = ptrtoint ptr %action.i171 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %action.i171, align 1
  %.off.i = add i8 %59, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 4
  br i1 %switch.i, label %if.then56, label %brcmf_p2p_is_gas_action.exit.if.end59_crit_edge

brcmf_p2p_is_gas_action.exit.if.end59_crit_edge:  ; preds = %brcmf_p2p_is_gas_action.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then56:                                        ; preds = %brcmf_p2p_is_gas_action.exit
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %action.i171 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %action.i171, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %brcmf_p2p_is_gas_action.exit.if.end59_crit_edge, %if.end3.i170.if.end59_crit_edge, %if.else.if.end59_crit_edge, %do.body50, %if.then44.if.end59_crit_edge, %if.then20.i, %if.end16.i.if.end59_crit_edge, %lor.lhs.false.i.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge, %if.then16.if.end59_crit_edge
  %action.0 = phi i8 [ 2, %do.body50 ], [ %28, %if.then44.if.end59_crit_edge ], [ %61, %if.then56 ], [ -1, %brcmf_p2p_is_gas_action.exit.if.end59_crit_edge ], [ 0, %if.end16.i.if.end59_crit_edge ], [ 0, %if.then20.i ], [ 0, %land.lhs.true.if.end59_crit_edge ], [ 0, %lor.lhs.false.i.if.end59_crit_edge ], [ -1, %if.else.if.end59_crit_edge ], [ -1, %if.end3.i170.if.end59_crit_edge ], [ %28, %if.then16.if.end59_crit_edge ]
  %status60 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %status60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %status60, align 4
  %64 = and i32 %63, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool62.not = icmp eq i32 %64, 0
  br i1 %tobool62.not, label %if.end59.if.end74_crit_edge, label %land.lhs.true63

if.end59.if.end74_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

land.lhs.true63:                                  ; preds = %if.end59
  %next_af_subtype = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 10
  %65 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %next_af_subtype, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %action.0)
  %cmp66 = icmp eq i8 %66, %action.0
  br i1 %cmp66, label %do.body69, label %land.lhs.true63.if.end74_crit_edge

land.lhs.true63.if.end74_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

do.body69:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  %conv65 = zext i8 %action.0 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_notify_action_frame_rx, ptr noundef nonnull @.str.9, i32 noundef %conv65) #10
  call void @_clear_bit(i32 noundef 12, ptr noundef %status60) #10
  call fastcc void @brcmf_p2p_stop_wait_next_action_frame(ptr noundef %3)
  br label %if.end74

if.end74:                                         ; preds = %do.body69, %land.lhs.true63.if.end74_crit_edge, %if.end59.if.end74_crit_edge
  %add = add i32 %5, 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool76.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool76.not, label %do.end81, label %if.end84

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %68, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.brcmf_p2p_notify_action_frame_rx) #14
  br label %cleanup

if.end84:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %da = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call9.i.i, i32 0, i32 2
  %mac_addr = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 8
  %69 = call ptr @memcpy(ptr %da, ptr %mac_addr, i32 6)
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call9.i.i, i32 0, i32 4
  %call88 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %ifp, i32 noundef 23, ptr noundef %bssid, i32 noundef 6) #10
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call9.i.i, i32 0, i32 3
  %addr90 = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 7
  %70 = call ptr @memcpy(ptr %sa, ptr %addr90, i32 6)
  %71 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -12288, ptr %call9.i.i, align 128
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call9.i.i, i32 0, i32 6
  %72 = call ptr @memcpy(ptr %u, ptr %add.ptr, i32 %sub)
  %control_ch_num93 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 2
  %73 = ptrtoint ptr %control_ch_num93 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %control_ch_num93, align 1
  %conv94 = zext i8 %74 to i32
  %band = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 3
  %75 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp96 = icmp ne i8 %76, 0
  %cond = zext i1 %cmp96 to i32
  %call.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv94, i32 noundef %cond) #10
  %77 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vif, align 4
  %wdev100 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %78, i32 0, i32 1
  %79 = urem i32 %call.i, 1000
  %mul.i = sub i32 %call.i, %79
  %call.i173 = call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %wdev100, i32 noundef %mul.i, i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef %add, i32 noundef 0) #10
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %do.end81, %if.then30, %land.lhs.true24.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ 0, %if.end84 ], [ -12, %do.end81 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %land.lhs.true24.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ch) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_p2p_print_actframe(i1 noundef zeroext %tx, ptr noundef readonly %frame, i32 noundef %frame_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %frame, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %frame_len)
  %cmp = icmp ult i32 %frame_len, 3
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %frame_len)
  %cmp1.i = icmp ult i32 %frame_len, 8
  br i1 %cmp1.i, label %if.else, label %if.end3.i

if.end3.i:                                        ; preds = %if.end
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %frame, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp4.i = icmp eq i8 %1, 4
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end3.i.if.end3.i183_crit_edge

if.end3.i.if.end3.i183_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i183

land.lhs.true.i:                                  ; preds = %if.end3.i
  %action.i = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %frame, i32 0, i32 1
  %2 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp7.i = icmp eq i8 %3, 9
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.end3.i183thread-pre-split_crit_edge

land.lhs.true.i.if.end3.i183thread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i183thread-pre-split

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %oui_type.i = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %frame, i32 0, i32 3
  %4 = ptrtoint ptr %oui_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %oui_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %cmp11.i = icmp eq i8 %5, 9
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true9.i.if.end3.i183thread-pre-split_crit_edge

land.lhs.true9.i.if.end3.i183thread-pre-split_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i183thread-pre-split

land.lhs.true13.i:                                ; preds = %land.lhs.true9.i
  %oui.i = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %frame, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %oui.i, ptr noundef nonnull dereferenceable(3) @.str.119, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp14.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp14.i, label %if.then1, label %land.lhs.true13.i.if.end3.i183thread-pre-split_crit_edge

land.lhs.true13.i.if.end3.i183thread-pre-split_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i183thread-pre-split

if.then1:                                         ; preds = %land.lhs.true13.i
  %subtype = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %frame, i32 0, i32 4
  %6 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %subtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %8 = icmp ult i8 %7, 9
  br i1 %8, label %switch.lookup, label %if.then1.cleanup.sink.split_crit_edge

if.then1.cleanup.sink.split_crit_edge:            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %frame_len)
  %cmp1.i180.not = icmp eq i32 %frame_len, 7
  br i1 %cmp1.i180.not, label %if.else.if.end3.i183thread-pre-split_crit_edge, label %if.else.if.end3.i193_crit_edge

if.else.if.end3.i193_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i193

if.else.if.end3.i183thread-pre-split_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i183thread-pre-split

if.end3.i183thread-pre-split:                     ; preds = %if.else.if.end3.i183thread-pre-split_crit_edge, %land.lhs.true13.i.if.end3.i183thread-pre-split_crit_edge, %land.lhs.true9.i.if.end3.i183thread-pre-split_crit_edge, %land.lhs.true.i.if.end3.i183thread-pre-split_crit_edge
  %9 = ptrtoint ptr %frame to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %frame, align 1
  br label %if.end3.i183

if.end3.i183:                                     ; preds = %if.end3.i183thread-pre-split, %if.end3.i.if.end3.i183_crit_edge
  %10 = phi i8 [ %.pr, %if.end3.i183thread-pre-split ], [ %1, %if.end3.i.if.end3.i183_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %10)
  %cmp4.i182 = icmp eq i8 %10, 127
  br i1 %cmp4.i182, label %land.lhs.true.i185, label %if.end3.i183.if.end3.i193_crit_edge

if.end3.i183.if.end3.i193_crit_edge:              ; preds = %if.end3.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i193

land.lhs.true.i185:                               ; preds = %if.end3.i183
  %type.i = getelementptr inbounds %struct.brcmf_p2p_action_frame, ptr %frame, i32 0, i32 2
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %12)
  %cmp7.i184 = icmp eq i8 %12, 9
  br i1 %cmp7.i184, label %land.lhs.true9.i188, label %land.lhs.true.i185.if.end3.i193_crit_edge

land.lhs.true.i185.if.end3.i193_crit_edge:        ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i193

land.lhs.true9.i188:                              ; preds = %land.lhs.true.i185
  %oui.i186 = getelementptr inbounds %struct.brcmf_p2p_action_frame, ptr %frame, i32 0, i32 1
  %bcmp.i187 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %oui.i186, ptr noundef nonnull dereferenceable(3) @.str.119, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i187)
  %cmp10.i = icmp eq i32 %bcmp.i187, 0
  br i1 %cmp10.i, label %if.then67, label %land.lhs.true9.i188.if.end3.i193_crit_edge

land.lhs.true9.i188.if.end3.i193_crit_edge:       ; preds = %land.lhs.true9.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i193

if.then67:                                        ; preds = %land.lhs.true9.i188
  %subtype68 = getelementptr inbounds %struct.brcmf_p2p_action_frame, ptr %frame, i32 0, i32 3
  %13 = ptrtoint ptr %subtype68 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %subtype68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %15 = icmp ult i8 %14, 4
  br i1 %15, label %switch.lookup200, label %if.then67.cleanup.sink.split_crit_edge

if.then67.cleanup.sink.split_crit_edge:           ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end3.i193:                                     ; preds = %land.lhs.true9.i188.if.end3.i193_crit_edge, %land.lhs.true.i185.if.end3.i193_crit_edge, %if.end3.i183.if.end3.i193_crit_edge, %if.else.if.end3.i193_crit_edge
  %16 = ptrtoint ptr %frame to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %frame, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp4.not.i = icmp eq i8 %17, 4
  br i1 %cmp4.not.i, label %brcmf_p2p_is_gas_action.exit, label %if.end3.i193.cleanup_crit_edge

if.end3.i193.cleanup_crit_edge:                   ; preds = %if.end3.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

brcmf_p2p_is_gas_action.exit:                     ; preds = %if.end3.i193
  %action.i194 = getelementptr inbounds %struct.brcmf_p2psd_gas_pub_act_frame, ptr %frame, i32 0, i32 1
  %18 = ptrtoint ptr %action.i194 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %action.i194, align 1
  %.off.i = add i8 %19, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 4
  br i1 %switch.i, label %if.then108, label %brcmf_p2p_is_gas_action.exit.cleanup_crit_edge

brcmf_p2p_is_gas_action.exit.cleanup_crit_edge:   ; preds = %brcmf_p2p_is_gas_action.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then108:                                       ; preds = %brcmf_p2p_is_gas_action.exit
  %20 = ptrtoint ptr %action.i194 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %action.i194, align 1
  %switch.tableidx = add i8 %21, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %22 = icmp ult i8 %switch.tableidx, 4
  br i1 %22, label %switch.lookup203, label %if.then108.cleanup.sink.split_crit_edge

if.then108.cleanup.sink.split_crit_edge:          ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %23 = sext i8 %7 to i32
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.brcmf_p2p_print_actframe, i32 0, i32 %23
  br label %cleanup.sink.split.sink.split

switch.lookup200:                                 ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %24 = sext i8 %14 to i32
  %switch.gep201 = getelementptr inbounds [4 x ptr], ptr @switch.table.brcmf_p2p_print_actframe.166, i32 0, i32 %24
  br label %cleanup.sink.split.sink.split

switch.lookup203:                                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %25 = sext i8 %switch.tableidx to i32
  %switch.gep204 = getelementptr inbounds [4 x ptr], ptr @switch.table.brcmf_p2p_print_actframe.167, i32 0, i32 %25
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %switch.lookup203, %switch.lookup200, %switch.lookup
  %switch.gep204.sink = phi ptr [ %switch.gep204, %switch.lookup203 ], [ %switch.gep201, %switch.lookup200 ], [ %switch.gep, %switch.lookup ]
  %26 = ptrtoint ptr %switch.gep204.sink to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load205 = load ptr, ptr %switch.gep204.sink, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then108.cleanup.sink.split_crit_edge, %if.then67.cleanup.sink.split_crit_edge, %if.then1.cleanup.sink.split_crit_edge
  %.str.108.sink = phi ptr [ @.str.108, %if.then1.cleanup.sink.split_crit_edge ], [ @.str.113, %if.then67.cleanup.sink.split_crit_edge ], [ @.str.118, %if.then108.cleanup.sink.split_crit_edge ], [ %switch.load205, %cleanup.sink.split.sink.split ]
  %cond63 = select i1 %tx, ptr @.str.98, ptr @.str.99
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_print_actframe, ptr noundef nonnull %.str.108.sink, ptr noundef nonnull %cond63) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %brcmf_p2p_is_gas_action.exit.cleanup_crit_edge, %if.end3.i193.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_set_mpc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_p2p_stop_wait_next_action_frame(ptr noundef %cfg) unnamed_addr #0 align 64 {
entry:
  %int_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bss_idx = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %bss_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bss_idx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %status = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status, align 4
  %12 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_stop_wait_next_action_frame, ptr noundef nonnull @.str.123) #10
  %af_sent_channel = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 13
  %13 = ptrtoint ptr %af_sent_channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %af_sent_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %do.body.if.end25_crit_edge, label %if.then10

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then10:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_val.i) #10
  %15 = ptrtoint ptr %int_val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %int_val.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_abort_action_frame, ptr noundef nonnull @.str.2) #10
  %arrayidx.i = getelementptr %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call.i = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %19, ptr noundef nonnull @.str.125, ptr noundef nonnull %int_val.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %brcmf_p2p_abort_action_frame.exit.thread, label %if.then13

brcmf_p2p_abort_action_frame.exit.thread:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_val.i) #10
  br label %if.end25

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_abort_action_frame, ptr noundef nonnull @.str.126, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_val.i) #10
  %call14 = call i32 @brcmf_notify_escan_complete(ptr noundef %cfg, ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true) #10
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %entry.if.else_crit_edge
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %status, align 4
  %22 = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  br i1 %tobool18.not, label %if.else.if.end25_crit_edge, label %do.body20

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_stop_wait_next_action_frame, ptr noundef nonnull @.str.124) #10
  %call23 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %cfg, ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true) #10
  br label %if.end25

if.end25:                                         ; preds = %do.body20, %if.else.if.end25_crit_edge, %if.then13, %brcmf_p2p_abort_action_frame.exit.thread, %do.body.if.end25_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_notify_action_tx_complete(ptr nocapture noundef readonly %ifp, ptr nocapture noundef readonly %e, ptr nocapture noundef readnone %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %event_code = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 2
  %4 = ptrtoint ptr %event_code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %5)
  %cmp = icmp eq i32 %5, 70
  %cond = select i1 %cmp, ptr @.str.15, ptr @.str.16
  %status = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 3
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_notify_action_tx_complete, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond, i32 noundef %7) #10
  %status2 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status2, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %event_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %12)
  %cmp4 = icmp eq i32 %12, 60
  br i1 %cmp4, label %if.then5, label %if.else15

if.then5:                                         ; preds = %if.end
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status2) #10
  %wait_for_offchan_complete = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 19
  %15 = ptrtoint ptr %wait_for_offchan_complete to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wait_for_offchan_complete, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.then11, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %send_af_done = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 11
  tail call void @complete(ptr noundef %send_af_done) #10
  br label %cleanup

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 7, ptr noundef %status2) #10
  tail call fastcc void @brcmf_p2p_stop_wait_next_action_frame(ptr noundef %3)
  br label %cleanup

if.else15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %send_af_done16 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 11
  tail call void @complete(ptr noundef %send_af_done16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %if.else, %if.then11, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_p2p_send_action_frame(ptr noundef %cfg, ptr noundef %ndev, ptr noundef %af_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p1 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 10
  %0 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pub, align 4
  %dwell_time = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 1
  %2 = ptrtoint ptr %dwell_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dwell_time, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %action_frame3 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4
  %len = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %data = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4, i32 3
  %conv = zext i16 %7 to i32
  tail call fastcc void @brcmf_p2p_print_actframe(i1 noundef zeroext true, ptr noundef %data, i32 noundef %conv)
  %8 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -939524096, ptr %dwell_time, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 4
  %arrayidx7 = getelementptr %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  %next_af_subtype = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 10
  %13 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %next_af_subtype, align 4
  %gon_req_action = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 16
  %14 = ptrtoint ptr %gon_req_action to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %gon_req_action, align 4
  %cmp.i338 = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp1.i = icmp ult i16 %7, 8
  %or.cond.i = or i1 %cmp.i338, %cmp1.i
  br i1 %or.cond.i, label %entry.if.else_crit_edge, label %if.end3.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end3.i:                                        ; preds = %entry
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp4.i = icmp eq i8 %16, 4
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end3.i.if.else_crit_edge

if.end3.i.if.else_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end3.i
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %18)
  %cmp7.i = icmp eq i8 %18, 9
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %oui_type.i = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4, i32 3, i32 5
  %19 = ptrtoint ptr %oui_type.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %oui_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %20)
  %cmp11.i = icmp eq i8 %20, 9
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true9.i.if.else_crit_edge

land.lhs.true9.i.if.else_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true13.i:                                ; preds = %land.lhs.true9.i
  %oui.i = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4, i32 3, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %oui.i, ptr noundef nonnull dereferenceable(3) @.str.119, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp14.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp14.i, label %if.then, label %land.lhs.true13.i.if.else_crit_edge

land.lhs.true13.i.if.else_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true13.i
  %subtype.i = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4, i32 3, i32 6
  %21 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %subtype.i, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %22, label %do.end [
    i8 0, label %do.body.i
    i8 1, label %sw.bb6.i
    i8 2, label %do.body14.i
    i8 3, label %sw.bb21.i
    i8 4, label %sw.bb29.i
    i8 5, label %sw.bb32.i
    i8 6, label %sw.bb40.i
    i8 7, label %sw.bb43.i
    i8 8, label %sw.bb56.i
  ]

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_pub_af_tx, ptr noundef nonnull @.str.127) #10
  %status.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 1
  tail call void @_set_bit(i32 noundef 8, ptr noundef %status.i) #10
  %24 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %subtype.i, align 1
  %add.i = add i8 %25, 1
  %26 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %add.i, ptr %next_af_subtype, align 4
  %27 = ptrtoint ptr %gon_req_action to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %gon_req_action, align 4
  %28 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1878982656, ptr %dwell_time, align 4
  br label %if.end74

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %next_af_subtype, align 4
  %30 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1878982656, ptr %dwell_time, align 4
  br label %if.end74

do.body14.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_pub_af_tx, ptr noundef nonnull @.str) #10
  %status17.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 1
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %status17.i) #10
  %31 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1677721600, ptr %dwell_time, align 4
  br label %if.end74

sw.bb21.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %next_af_subtype, align 4
  %33 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1878982656, ptr %dwell_time, align 4
  br label %if.end74

sw.bb29.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1677721600, ptr %dwell_time, align 4
  br label %if.end74

sw.bb32.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %next_af_subtype, align 4
  %36 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -402456576, ptr %dwell_time, align 4
  br label %if.end74

sw.bb40.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1677721600, ptr %dwell_time, align 4
  br label %if.end74

sw.bb43.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #10
  %sub.i = add i16 %40, -8
  %elts.i = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4, i32 3, i32 8
  %conv46.i = zext i16 %sub.i to i32
  %call.i = tail call i32 @cfg80211_get_p2p_attr(ptr noundef %elts.i, i32 noundef %conv46.i, i32 noundef 15, ptr noundef null, i32 noundef 0) #10
  %call.i.lobit = lshr i32 %call.i, 31
  %41 = trunc i32 %call.i.lobit to i8
  %42 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %subtype.i, align 1
  %add52.i = add i8 %43, 1
  %44 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %add52.i, ptr %next_af_subtype, align 4
  %45 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1878982656, ptr %dwell_time, align 4
  br label %if.end74

sw.bb56.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %next_af_subtype, align 4
  %47 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1878982656, ptr %dwell_time, align 4
  br label %if.end74

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pub, align 4
  %conv.i = zext i8 %22 to i32
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %51, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.brcmf_p2p_pub_af_tx, i32 noundef %conv.i) #14
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #14
  br label %if.end74

if.else:                                          ; preds = %land.lhs.true13.i.if.else_crit_edge, %land.lhs.true9.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end3.i.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp1.i344 = icmp ult i16 %7, 3
  %or.cond.i345 = or i1 %cmp.i338, %cmp1.i344
  br i1 %or.cond.i345, label %if.else.if.else55_crit_edge, label %if.end3.i346

if.else.if.else55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else55

if.end3.i346:                                     ; preds = %if.else
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %cmp4.not.i = icmp eq i8 %55, 4
  br i1 %cmp4.not.i, label %brcmf_p2p_is_gas_action.exit, label %if.end3.i346.if.else55_crit_edge

if.end3.i346.if.else55_crit_edge:                 ; preds = %if.end3.i346
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else55

brcmf_p2p_is_gas_action.exit:                     ; preds = %if.end3.i346
  %56 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx7, align 1
  %.off.i = add i8 %57, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 4
  br i1 %switch.i, label %if.then21, label %brcmf_p2p_is_gas_action.exit.if.else55_crit_edge

brcmf_p2p_is_gas_action.exit.if.else55_crit_edge: ; preds = %brcmf_p2p_is_gas_action.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else55

if.then21:                                        ; preds = %brcmf_p2p_is_gas_action.exit
  %58 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.170)
  switch i8 %12, label %do.end47 [
    i8 10, label %if.then21.if.then27_crit_edge
    i8 12, label %if.then21.if.then27_crit_edge435
    i8 11, label %if.then21.if.then41_crit_edge
    i8 13, label %if.then21.if.then41_crit_edge436
  ]

if.then21.if.then41_crit_edge436:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.then21.if.then41_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.then21.if.then27_crit_edge435:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then21.if.then27_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %if.then21.if.then27_crit_edge, %if.then21.if.then27_crit_edge435
  %add = add nuw nsw i8 %12, 1
  %59 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %add, ptr %next_af_subtype, align 4
  %60 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1878982656, ptr %dwell_time, align 4
  br label %if.end74

if.then41:                                        ; preds = %if.then21.if.then41_crit_edge, %if.then21.if.then41_crit_edge436
  %61 = ptrtoint ptr %dwell_time to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1677721600, ptr %dwell_time, align 4
  br label %if.end74

do.end47:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %conv22 = zext i8 %12 to i32
  %wiphy48 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %wiphy48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wiphy48, align 4
  %dev49 = getelementptr inbounds %struct.wiphy, ptr %63, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %conv22) #14
  br label %exit.thread

if.else55:                                        ; preds = %brcmf_p2p_is_gas_action.exit.if.else55_crit_edge, %if.end3.i346.if.else55_crit_edge, %if.else.if.else55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %7)
  %cmp1.i350 = icmp ult i16 %7, 7
  %or.cond.i351 = or i1 %cmp.i338, %cmp1.i350
  br i1 %or.cond.i351, label %if.else55.do.end65_crit_edge, label %if.end3.i353

if.else55.do.end65_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

if.end3.i353:                                     ; preds = %if.else55
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %65)
  %cmp4.i352 = icmp eq i8 %65, 127
  br i1 %cmp4.i352, label %land.lhs.true.i355, label %if.end3.i353.do.end65_crit_edge

if.end3.i353.do.end65_crit_edge:                  ; preds = %if.end3.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

land.lhs.true.i355:                               ; preds = %if.end3.i353
  %type.i = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4, i32 3, i32 4
  %66 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %67)
  %cmp7.i354 = icmp eq i8 %67, 9
  br i1 %cmp7.i354, label %land.lhs.true9.i358, label %land.lhs.true.i355.do.end65_crit_edge

land.lhs.true.i355.do.end65_crit_edge:            ; preds = %land.lhs.true.i355
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

land.lhs.true9.i358:                              ; preds = %land.lhs.true.i355
  %bcmp.i357 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %arrayidx7, ptr noundef nonnull dereferenceable(3) @.str.119, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i357)
  %cmp10.i = icmp eq i32 %bcmp.i357, 0
  br i1 %cmp10.i, label %land.lhs.true9.i358.if.end74_crit_edge, label %land.lhs.true9.i358.do.end65_crit_edge

land.lhs.true9.i358.do.end65_crit_edge:           ; preds = %land.lhs.true9.i358
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

land.lhs.true9.i358.if.end74_crit_edge:           ; preds = %land.lhs.true9.i358
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

do.end65:                                         ; preds = %land.lhs.true9.i358.do.end65_crit_edge, %land.lhs.true.i355.do.end65_crit_edge, %if.end3.i353.do.end65_crit_edge, %if.else55.do.end65_crit_edge
  %wiphy66 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %wiphy66 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wiphy66, align 4
  %dev67 = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 56
  %conv68 = zext i8 %10 to i32
  %conv69 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, i32 noundef %conv68, i32 noundef %conv69) #14
  br label %cleanup

if.end74:                                         ; preds = %land.lhs.true9.i358.if.end74_crit_edge, %if.then41, %if.then27, %do.end, %sw.bb56.i, %sw.bb43.i, %sw.bb40.i, %sw.bb32.i, %sw.bb29.i, %sw.bb21.i, %do.body14.i, %sw.bb6.i, %do.body.i
  %tobool171.not = phi i1 [ false, %do.body.i ], [ false, %sw.bb6.i ], [ true, %do.body14.i ], [ false, %sw.bb21.i ], [ true, %sw.bb29.i ], [ false, %sw.bb32.i ], [ true, %sw.bb40.i ], [ false, %sw.bb43.i ], [ true, %sw.bb56.i ], [ true, %land.lhs.true9.i358.if.end74_crit_edge ], [ true, %if.then41 ], [ true, %if.then27 ], [ false, %do.end ]
  %config_af_params.sroa.9.2 = phi i8 [ 1, %do.body.i ], [ 0, %sw.bb6.i ], [ 0, %do.body14.i ], [ 1, %sw.bb21.i ], [ 0, %sw.bb29.i ], [ 1, %sw.bb32.i ], [ 0, %sw.bb40.i ], [ %41, %sw.bb43.i ], [ 0, %sw.bb56.i ], [ 0, %land.lhs.true9.i358.if.end74_crit_edge ], [ 0, %if.then41 ], [ 1, %if.then27 ], [ 0, %do.end ]
  %cmp87 = phi i1 [ true, %do.body.i ], [ false, %sw.bb6.i ], [ false, %do.body14.i ], [ false, %sw.bb21.i ], [ false, %sw.bb29.i ], [ false, %sw.bb32.i ], [ false, %sw.bb40.i ], [ true, %sw.bb43.i ], [ false, %sw.bb56.i ], [ false, %land.lhs.true9.i358.if.end74_crit_edge ], [ false, %if.then41 ], [ false, %if.then27 ], [ false, %do.end ]
  %config_af_params.sroa.0.1 = phi i32 [ 0, %do.body.i ], [ -1, %sw.bb6.i ], [ 1, %do.body14.i ], [ -1, %sw.bb21.i ], [ -1, %sw.bb29.i ], [ -1, %sw.bb32.i ], [ -1, %sw.bb40.i ], [ 0, %sw.bb43.i ], [ -1, %sw.bb56.i ], [ -1, %land.lhs.true9.i358.if.end74_crit_edge ], [ -1, %if.then41 ], [ -1, %if.then27 ], [ -1, %do.end ]
  %bss_idx = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5
  %70 = ptrtoint ptr %bss_idx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bss_idx, align 4
  %sme_state = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %sme_state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %sme_state, align 4
  %74 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool77.not = icmp eq i32 %74, 0
  br i1 %tobool77.not, label %if.end74.if.end79_crit_edge, label %if.then78

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end74.if.end79_crit_edge
  %scan_status = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 9
  %75 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %scan_status, align 4
  %and1.i335 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i335)
  %tobool81.not = icmp eq i32 %and1.i335, 0
  br i1 %tobool81.not, label %if.end79.if.end83_crit_edge, label %if.then82

if.end79.if.end83_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_abort_scanning(ptr noundef %cfg) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end79.if.end83_crit_edge
  %tx_dst_addr = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 7
  %77 = call ptr @memcpy(ptr %tx_dst_addr, ptr %action_frame3, i32 6)
  br i1 %cmp87, label %if.then89, label %if.end83.if.end90_crit_edge

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then89:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_set_mpc(ptr noundef %add.ptr.i, i32 noundef 0) #10
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end83.if.end90_crit_edge
  %78 = ptrtoint ptr %next_af_subtype to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %next_af_subtype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %79)
  %cmp93.not = icmp eq i8 %79, -1
  br i1 %cmp93.not, label %if.end90.if.end96_crit_edge, label %if.then95

if.end90.if.end96_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 1
  tail call void @_set_bit(i32 noundef 12, ptr noundef %status) #10
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end90.if.end96_crit_edge
  %af_sent_channel = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 13
  %80 = ptrtoint ptr %af_sent_channel to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %af_sent_channel, align 4
  %status97 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 1
  tail call void @_set_bit(i32 noundef 10, ptr noundef %status97) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %config_af_params.sroa.9.2)
  %tobool99.not = icmp eq i8 %config_af_params.sroa.9.2, 0
  br i1 %tobool99.not, label %if.end96.if.end135_crit_edge, label %land.lhs.true

if.end96.if.end135_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

land.lhs.true:                                    ; preds = %if.end96
  %81 = ptrtoint ptr %af_params to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %af_params, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %82, label %land.lhs.true.if.end135_crit_edge [
    i32 16777216, label %land.lhs.true.land.lhs.true111_crit_edge
    i32 100663296, label %land.lhs.true.land.lhs.true111_crit_edge437
    i32 184549376, label %land.lhs.true.land.lhs.true111_crit_edge438
  ]

land.lhs.true.land.lhs.true111_crit_edge438:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true111

land.lhs.true.land.lhs.true111_crit_edge437:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true111

land.lhs.true.land.lhs.true111_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true111

land.lhs.true.if.end135_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

land.lhs.true111:                                 ; preds = %land.lhs.true.land.lhs.true111_crit_edge, %land.lhs.true.land.lhs.true111_crit_edge437, %land.lhs.true.land.lhs.true111_crit_edge438
  %arrayidx113 = getelementptr %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5, i32 1
  %84 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx113, align 4
  %probe_req_ie_len = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %85, i32 0, i32 4, i32 5
  %86 = ptrtoint ptr %probe_req_ie_len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %probe_req_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool115.not = icmp eq i32 %87, 0
  br i1 %tobool115.not, label %land.lhs.true111.if.end135_crit_edge, label %if.then116

land.lhs.true111.if.end135_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then116:                                       ; preds = %land.lhs.true111
  %88 = tail call i32 @llvm.bswap.i32(i32 %82)
  %conv119 = trunc i32 %88 to i16
  %peer_listen_chan = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 6
  %89 = ptrtoint ptr %peer_listen_chan to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv119, ptr %peer_listen_chan, align 4
  %afx_hdl1.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_af_searching_channel, ptr noundef nonnull @.str.2) #10
  %90 = ptrtoint ptr %bss_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bss_idx, align 4
  %act_frm_scan.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 1
  %92 = ptrtoint ptr %act_frm_scan.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %act_frm_scan.i, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %status97) #10
  %is_active.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 2
  %93 = ptrtoint ptr %is_active.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %is_active.i, align 4
  %peer_chan.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 3
  %94 = ptrtoint ptr %peer_chan.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %peer_chan.i, align 4
  %is_listen.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 4
  %my_listen_chan.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 5
  %sme_state.i = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %91, i32 0, i32 3
  br label %while.body.i

land.rhsthread-pre-split.i:                       ; preds = %if.end43.i
  %95 = ptrtoint ptr %peer_chan.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr.i = load i32, ptr %peer_chan.i, align 4
  %cmp3.i = icmp eq i32 %.pr.i, -1
  br i1 %cmp3.i, label %land.rhsthread-pre-split.i.while.body.i_crit_edge, label %land.rhsthread-pre-split.i.brcmf_p2p_af_searching_channel.exit_crit_edge

land.rhsthread-pre-split.i.brcmf_p2p_af_searching_channel.exit_crit_edge: ; preds = %land.rhsthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_af_searching_channel.exit

land.rhsthread-pre-split.i.while.body.i_crit_edge: ; preds = %land.rhsthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i:                                     ; preds = %land.rhsthread-pre-split.i.while.body.i_crit_edge, %if.then116
  %retry.082.i406 = phi i32 [ 0, %if.then116 ], [ %inc.i, %land.rhsthread-pre-split.i.while.body.i_crit_edge ]
  %96 = ptrtoint ptr %is_listen.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %is_listen.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_af_searching_channel, ptr noundef nonnull @.str.129, i32 noundef %retry.082.i406) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %97 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %97, ptr noundef %afx_hdl1.i) #10
  %call9.i = tail call i32 @wait_for_completion_timeout(ptr noundef %act_frm_scan.i, i32 noundef 45) #10
  %98 = ptrtoint ptr %peer_chan.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %peer_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp11.not.i = icmp eq i32 %99, -1
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %while.body.i.brcmf_p2p_af_searching_channel.exit_crit_edge

while.body.i.brcmf_p2p_af_searching_channel.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_af_searching_channel.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %100 = ptrtoint ptr %status97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %status97, align 4
  %102 = and i32 %101, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i = icmp eq i32 %102, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.brcmf_p2p_af_searching_channel.exit_crit_edge, label %if.end.i361

lor.lhs.false.i.brcmf_p2p_af_searching_channel.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_af_searching_channel.exit

if.end.i361:                                      ; preds = %lor.lhs.false.i
  %103 = ptrtoint ptr %my_listen_chan.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %my_listen_chan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool14.not.i = icmp eq i16 %104, 0
  br i1 %tobool14.not.i, label %if.end.i361.if.end26.i_crit_edge, label %do.body16.i

if.end.i361.if.end26.i_crit_edge:                 ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

do.body16.i:                                      ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i362 = zext i16 %104 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_af_searching_channel, ptr noundef nonnull @.str.130, i32 noundef %conv.i362) #10
  %105 = ptrtoint ptr %is_listen.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %is_listen.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %106 = load ptr, ptr @system_wq, align 4
  %call.i.i81.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %106, ptr noundef %afx_hdl1.i) #10
  %call25.i = tail call i32 @wait_for_completion_timeout(ptr noundef %act_frm_scan.i, i32 noundef 45) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body16.i, %if.end.i361.if.end26.i_crit_edge
  %107 = ptrtoint ptr %peer_chan.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %peer_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %cmp28.not.i = icmp eq i32 %108, -1
  br i1 %cmp28.not.i, label %lor.lhs.false30.i, label %if.end26.i.brcmf_p2p_af_searching_channel.exit_crit_edge

if.end26.i.brcmf_p2p_af_searching_channel.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_af_searching_channel.exit

lor.lhs.false30.i:                                ; preds = %if.end26.i
  %109 = ptrtoint ptr %status97 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %status97, align 4
  %111 = and i32 %110, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool33.not.i = icmp eq i32 %111, 0
  br i1 %tobool33.not.i, label %lor.lhs.false30.i.brcmf_p2p_af_searching_channel.exit_crit_edge, label %if.end35.i

lor.lhs.false30.i.brcmf_p2p_af_searching_channel.exit_crit_edge: ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_af_searching_channel.exit

if.end35.i:                                       ; preds = %lor.lhs.false30.i
  %inc.i = add nuw nsw i32 %retry.082.i406, 1
  %112 = ptrtoint ptr %sme_state.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %sme_state.i, align 4
  %114 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool37.not.i = icmp eq i32 %114, 0
  br i1 %tobool37.not.i, label %lor.lhs.false38.i, label %if.end35.i.if.then42.i_crit_edge

if.end35.i.if.then42.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

lor.lhs.false38.i:                                ; preds = %if.end35.i
  %115 = ptrtoint ptr %sme_state.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %sme_state.i, align 4
  %117 = and i32 %116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool41.not.i = icmp eq i32 %117, 0
  br i1 %tobool41.not.i, label %lor.lhs.false38.i.if.end43.i_crit_edge, label %lor.lhs.false38.i.if.then42.i_crit_edge

lor.lhs.false38.i.if.then42.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

lor.lhs.false38.i.if.end43.i_crit_edge:           ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then42.i:                                      ; preds = %lor.lhs.false38.i.if.then42.i_crit_edge, %if.end35.i.if.then42.i_crit_edge
  tail call void @msleep(i32 noundef 200) #10
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %lor.lhs.false38.i.if.end43.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %if.end43.i.brcmf_p2p_af_searching_channel.exit_crit_edge, label %land.rhsthread-pre-split.i

if.end43.i.brcmf_p2p_af_searching_channel.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_af_searching_channel.exit

brcmf_p2p_af_searching_channel.exit:              ; preds = %if.end43.i.brcmf_p2p_af_searching_channel.exit_crit_edge, %lor.lhs.false30.i.brcmf_p2p_af_searching_channel.exit_crit_edge, %if.end26.i.brcmf_p2p_af_searching_channel.exit_crit_edge, %lor.lhs.false.i.brcmf_p2p_af_searching_channel.exit_crit_edge, %while.body.i.brcmf_p2p_af_searching_channel.exit_crit_edge, %land.rhsthread-pre-split.i.brcmf_p2p_af_searching_channel.exit_crit_edge
  %118 = ptrtoint ptr %peer_chan.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %peer_chan.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_af_searching_channel, ptr noundef nonnull @.str.131, i32 noundef %119) #10
  %120 = ptrtoint ptr %is_active.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %is_active.i, align 4
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %status97) #10
  %121 = ptrtoint ptr %peer_chan.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %peer_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %122)
  %cmp121 = icmp eq i32 %122, -1
  br i1 %cmp121, label %do.end127, label %if.end132

do.end127:                                        ; preds = %brcmf_p2p_af_searching_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy128 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %123 = ptrtoint ptr %wiphy128 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wiphy128, align 4
  %dev129 = getelementptr inbounds %struct.wiphy, ptr %124, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev129, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18) #14
  br label %exit.thread

if.end132:                                        ; preds = %brcmf_p2p_af_searching_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call133 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %cfg, ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %125 = ptrtoint ptr %peer_chan.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %peer_chan.i, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %128 = ptrtoint ptr %af_params to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %af_params, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.end132, %land.lhs.true111.if.end135_crit_edge, %land.lhs.true.if.end135_crit_edge, %if.end96.if.end135_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %129 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %4)
  %tobool.not.i363 = icmp ult i32 %4, 16777216
  br i1 %tobool.not.i363, label %if.end135.brcmf_p2p_check_dwell_overflow.exit_crit_edge, label %land.lhs.true.i368

if.end135.brcmf_p2p_check_dwell_overflow.exit_crit_edge: ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_check_dwell_overflow.exit

land.lhs.true.i368:                               ; preds = %if.end135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %sub.i364 = sub i32 %130, %129
  %call.i365 = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i364) #10
  %and1.i366 = and i32 %4, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i365, i32 %and1.i366)
  %cmp.i367 = icmp ugt i32 %call.i365, %and1.i366
  br i1 %cmp.i367, label %brcmf_p2p_check_dwell_overflow.exit.thread, label %land.lhs.true.i368.brcmf_p2p_check_dwell_overflow.exit_crit_edge

land.lhs.true.i368.brcmf_p2p_check_dwell_overflow.exit_crit_edge: ; preds = %land.lhs.true.i368
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_check_dwell_overflow.exit

brcmf_p2p_check_dwell_overflow.exit.thread:       ; preds = %land.lhs.true.i368
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_check_dwell_overflow, ptr noundef nonnull @.str.132) #10
  br label %do.end159

brcmf_p2p_check_dwell_overflow.exit:              ; preds = %land.lhs.true.i368.brcmf_p2p_check_dwell_overflow.exit_crit_edge, %if.end135.brcmf_p2p_check_dwell_overflow.exit_crit_edge
  %block_gon_req_tx = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 17
  %131 = ptrtoint ptr %block_gon_req_tx to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %block_gon_req_tx, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool137.not407.not = icmp eq i8 %132, 0
  br i1 %tobool137.not407.not, label %while.body.lr.ph, label %brcmf_p2p_check_dwell_overflow.exit.do.end159_crit_edge

brcmf_p2p_check_dwell_overflow.exit.do.end159_crit_edge: ; preds = %brcmf_p2p_check_dwell_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end159

while.body.lr.ph:                                 ; preds = %brcmf_p2p_check_dwell_overflow.exit
  %send_af_done.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 11
  %subtype.i373 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %af_params, i32 0, i32 4, i32 3, i32 5
  %arrayidx.i = getelementptr %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5, i32 2
  %arrayidx5.i = getelementptr %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5, i32 1
  %af_tx_sent_jiffies.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 14
  %center_freq.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 8, i32 1
  %wait_for_offchan_complete.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 19
  %and1.i384 = and i32 %4, 16777215
  br label %while.body

while.body:                                       ; preds = %brcmf_p2p_check_dwell_overflow.exit389.while.body_crit_edge, %while.body.lr.ph
  %tx_retry.0409 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %brcmf_p2p_check_dwell_overflow.exit389.while.body_crit_edge ]
  %133 = ptrtoint ptr %af_params to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %af_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool145.not = icmp eq i32 %134, 0
  br i1 %tobool145.not, label %while.body.if.end147_crit_edge, label %if.then146

while.body.if.end147_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then146:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 40) #10
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %while.body.if.end147_crit_edge
  %135 = ptrtoint ptr %p2p1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %p2p1, align 4
  %pub.i371 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %136, i32 0, i32 10
  %137 = ptrtoint ptr %pub.i371 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pub.i371, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_tx_action_frame, ptr noundef nonnull @.str.2) #10
  %139 = ptrtoint ptr %send_af_done.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %send_af_done.i, align 4
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status97) #10
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %status97) #10
  %140 = ptrtoint ptr %subtype.i373 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %subtype.i373, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %141)
  %cmp.i374 = icmp eq i8 %141, 2
  %vif.0.in.i = select i1 %cmp.i374, ptr %arrayidx.i, ptr %arrayidx5.i
  %142 = ptrtoint ptr %vif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %vif.0.i = load ptr, ptr %vif.0.in.i, align 4
  %143 = ptrtoint ptr %vif.0.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %vif.0.i, align 4
  %call.i375 = tail call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %144, ptr noundef nonnull @.str.133, ptr noundef %af_params, i32 noundef 1828) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i375)
  %tobool.not.i376 = icmp eq i32 %call.i375, 0
  br i1 %tobool.not.i376, label %if.end14.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i377 = getelementptr inbounds %struct.brcmf_pub, ptr %138, i32 0, i32 2
  %145 = ptrtoint ptr %wiphy.i377 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wiphy.i377, align 4
  %dev.i378 = getelementptr inbounds %struct.wiphy, ptr %146, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i378, ptr noundef nonnull @.str.134, ptr noundef nonnull @__func__.brcmf_p2p_tx_action_frame) #14
  br label %brcmf_p2p_tx_action_frame.exit

if.end14.i:                                       ; preds = %if.end147
  %147 = ptrtoint ptr %af_params to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %af_params, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #10
  %150 = ptrtoint ptr %af_sent_channel to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %af_sent_channel, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %151 = load volatile i32, ptr @jiffies, align 128
  %152 = ptrtoint ptr %af_tx_sent_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %af_tx_sent_jiffies.i, align 4
  %153 = ptrtoint ptr %status97 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %status97, align 4
  %155 = and i32 %154, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool17.not.i = icmp eq i32 %155, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.else23.i_crit_edge, label %land.lhs.true.i379

if.end14.i.if.else23.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else23.i

land.lhs.true.i379:                               ; preds = %if.end14.i
  %156 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %center_freq.i, align 4
  %mul.i.i = mul i32 %157, 1000
  %call.i.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %call.i.i)
  %cmp20.i = icmp eq i32 %149, %call.i.i
  br i1 %cmp20.i, label %land.lhs.true.i379.do.body26.i_crit_edge, label %land.lhs.true.i379.if.else23.i_crit_edge

land.lhs.true.i379.if.else23.i_crit_edge:         ; preds = %land.lhs.true.i379
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else23.i

land.lhs.true.i379.do.body26.i_crit_edge:         ; preds = %land.lhs.true.i379
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

if.else23.i:                                      ; preds = %land.lhs.true.i379.if.else23.i_crit_edge, %if.end14.i.if.else23.i_crit_edge
  br label %do.body26.i

do.body26.i:                                      ; preds = %if.else23.i, %land.lhs.true.i379.do.body26.i_crit_edge
  %tobool28.not.i = phi ptr [ @.str.137, %land.lhs.true.i379.do.body26.i_crit_edge ], [ @.str.136, %if.else23.i ]
  %.sink.i = phi i8 [ 0, %land.lhs.true.i379.do.body26.i_crit_edge ], [ 1, %if.else23.i ]
  %158 = ptrtoint ptr %wait_for_offchan_complete.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %.sink.i, ptr %wait_for_offchan_complete.i, align 1
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_tx_action_frame, ptr noundef nonnull @.str.135, ptr noundef nonnull %tobool28.not.i) #10
  %call34.i = tail call i32 @wait_for_completion_timeout(ptr noundef %send_af_done.i, i32 noundef 200) #10
  %159 = ptrtoint ptr %status97 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %status97, align 4
  %161 = and i32 %160, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool37.not.i380 = icmp eq i32 %161, 0
  %.str.139..str.138.i = select i1 %tobool37.not.i380, ptr @.str.139, ptr @.str.138
  %..i = select i1 %tobool37.not.i380, i32 -5, i32 0
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_tx_action_frame, ptr noundef nonnull %.str.139..str.138.i) #10
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status97) #10
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %status97) #10
  br label %brcmf_p2p_tx_action_frame.exit

brcmf_p2p_tx_action_frame.exit:                   ; preds = %do.body26.i, %do.end11.i
  %err.1.i = phi i32 [ 1, %do.end11.i ], [ %..i, %do.body26.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool149.not = icmp eq i32 %err.1.i, 0
  %inc = add nuw nsw i32 %tx_retry.0409, 1
  br i1 %tobool.not.i363, label %brcmf_p2p_tx_action_frame.exit.brcmf_p2p_check_dwell_overflow.exit389_crit_edge, label %land.lhs.true.i386

brcmf_p2p_tx_action_frame.exit.brcmf_p2p_check_dwell_overflow.exit389_crit_edge: ; preds = %brcmf_p2p_tx_action_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_check_dwell_overflow.exit389

land.lhs.true.i386:                               ; preds = %brcmf_p2p_tx_action_frame.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %162 = load volatile i32, ptr @jiffies, align 128
  %sub.i382 = sub i32 %162, %129
  %call.i383 = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i382) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i383, i32 %and1.i384)
  %cmp.i385 = icmp ugt i32 %call.i383, %and1.i384
  br i1 %cmp.i385, label %brcmf_p2p_check_dwell_overflow.exit389.thread, label %land.lhs.true.i386.brcmf_p2p_check_dwell_overflow.exit389_crit_edge

land.lhs.true.i386.brcmf_p2p_check_dwell_overflow.exit389_crit_edge: ; preds = %land.lhs.true.i386
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_check_dwell_overflow.exit389

brcmf_p2p_check_dwell_overflow.exit389.thread:    ; preds = %land.lhs.true.i386
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_check_dwell_overflow, ptr noundef nonnull @.str.132) #10
  br i1 %tobool149.not, label %brcmf_p2p_check_dwell_overflow.exit389.thread.land.lhs.true169_crit_edge, label %brcmf_p2p_check_dwell_overflow.exit389.thread.do.end159_crit_edge

brcmf_p2p_check_dwell_overflow.exit389.thread.do.end159_crit_edge: ; preds = %brcmf_p2p_check_dwell_overflow.exit389.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end159

brcmf_p2p_check_dwell_overflow.exit389.thread.land.lhs.true169_crit_edge: ; preds = %brcmf_p2p_check_dwell_overflow.exit389.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true169

brcmf_p2p_check_dwell_overflow.exit389:           ; preds = %land.lhs.true.i386.brcmf_p2p_check_dwell_overflow.exit389_crit_edge, %brcmf_p2p_tx_action_frame.exit.brcmf_p2p_check_dwell_overflow.exit389_crit_edge
  %163 = ptrtoint ptr %block_gon_req_tx to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %block_gon_req_tx, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool137.not = icmp ne i8 %164, 0
  %brmerge = select i1 %tobool137.not, i1 true, i1 %tobool149.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tx_retry.0409)
  %cmp141 = icmp ugt i32 %tx_retry.0409, 3
  %or.cond.not = select i1 %brmerge, i1 true, i1 %cmp141
  br i1 %or.cond.not, label %while.end, label %brcmf_p2p_check_dwell_overflow.exit389.while.body_crit_edge

brcmf_p2p_check_dwell_overflow.exit389.while.body_crit_edge: ; preds = %brcmf_p2p_check_dwell_overflow.exit389
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %brcmf_p2p_check_dwell_overflow.exit389
  br i1 %tobool149.not, label %while.end.land.lhs.true169_crit_edge, label %while.end.do.end159_crit_edge

while.end.do.end159_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end159

while.end.land.lhs.true169_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true169

do.end159:                                        ; preds = %while.end.do.end159_crit_edge, %brcmf_p2p_check_dwell_overflow.exit389.thread.do.end159_crit_edge, %brcmf_p2p_check_dwell_overflow.exit.do.end159_crit_edge, %brcmf_p2p_check_dwell_overflow.exit.thread
  %tx_retry.0.lcssa425 = phi i32 [ %inc, %while.end.do.end159_crit_edge ], [ %inc, %brcmf_p2p_check_dwell_overflow.exit389.thread.do.end159_crit_edge ], [ 0, %brcmf_p2p_check_dwell_overflow.exit.do.end159_crit_edge ], [ 0, %brcmf_p2p_check_dwell_overflow.exit.thread ]
  %wiphy160 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %165 = ptrtoint ptr %wiphy160 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %wiphy160, align 4
  %dev161 = getelementptr inbounds %struct.wiphy, ptr %166, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev161, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.18, i32 noundef %tx_retry.0.lcssa425) #14
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %status97) #10
  br label %exit.thread

exit.thread:                                      ; preds = %do.end159, %do.end127, %do.end47
  %config_af_params.sroa.0.2.ph = phi i32 [ -1, %do.end47 ], [ %config_af_params.sroa.0.1, %do.end127 ], [ %config_af_params.sroa.0.1, %do.end159 ]
  %status166402 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 1
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %status166402) #10
  br label %if.end215

land.lhs.true169:                                 ; preds = %while.end.land.lhs.true169_crit_edge, %brcmf_p2p_check_dwell_overflow.exit389.thread.land.lhs.true169_crit_edge
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %status97) #10
  br i1 %tobool171.not, label %land.lhs.true169.if.end215_crit_edge, label %land.lhs.true173

land.lhs.true169.if.end215_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215

land.lhs.true173:                                 ; preds = %land.lhs.true169
  %167 = ptrtoint ptr %block_gon_req_tx to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %block_gon_req_tx, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool175.not = icmp eq i8 %168, 0
  br i1 %tobool175.not, label %land.lhs.true176, label %land.lhs.true173.if.end215_crit_edge

land.lhs.true173.if.end215_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215

land.lhs.true176:                                 ; preds = %land.lhs.true173
  %169 = ptrtoint ptr %status97 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %status97, align 4
  %171 = and i32 %170, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool179.not = icmp eq i32 %171, 0
  br i1 %tobool179.not, label %land.lhs.true176.if.end215_crit_edge, label %land.lhs.true180

land.lhs.true176.if.end215_crit_edge:             ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215

land.lhs.true180:                                 ; preds = %land.lhs.true176
  %172 = ptrtoint ptr %af_sent_channel to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %af_sent_channel, align 4
  %my_listen_chan = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 12, i32 5
  %174 = ptrtoint ptr %my_listen_chan to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %my_listen_chan, align 2
  %conv182 = zext i16 %175 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %conv182)
  %cmp183 = icmp eq i32 %173, %conv182
  br i1 %cmp183, label %if.then185, label %land.lhs.true180.if.end215_crit_edge

land.lhs.true180.if.end215_crit_edge:             ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215

if.then185:                                       ; preds = %land.lhs.true180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %176 = load volatile i32, ptr @jiffies, align 128
  %af_tx_sent_jiffies = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 14
  %177 = ptrtoint ptr %af_tx_sent_jiffies to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %af_tx_sent_jiffies, align 4
  %sub = sub i32 %176, %178
  %call186 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #10
  %179 = ptrtoint ptr %dwell_time to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dwell_time, align 4
  %181 = tail call i32 @llvm.bswap.i32(i32 %180)
  %182 = tail call i32 @llvm.usub.sat.i32(i32 %181, i32 %call186)
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %182)
  %cmp195 = icmp sgt i32 %182, 50
  br i1 %cmp195, label %if.then197, label %if.then185.if.end215_crit_edge

if.then185.if.end215_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215

if.then197:                                       ; preds = %if.then185
  tail call void @_set_bit(i32 noundef 11, ptr noundef %status97) #10
  %183 = ptrtoint ptr %dwell_time to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %dwell_time, align 4
  %185 = tail call i32 @llvm.bswap.i32(i32 %184)
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.31, i32 noundef %185, i32 noundef %182) #10
  %add203 = add nuw i32 %182, 100
  %186 = ptrtoint ptr %af_sent_channel to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %af_sent_channel, align 4
  %conv205 = trunc i32 %187 to i16
  %call206 = tail call fastcc i32 @brcmf_p2p_discover_listen(ptr noundef %p2p1, i16 noundef zeroext %conv205, i32 noundef %add203)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.else.i, label %if.then197.if.end212_crit_edge

if.then197.if.end212_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

if.else.i:                                        ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #12
  %add209 = add nuw i32 %182, 200
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add209) #10
  %wait_next_af = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 15
  %call211 = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_next_af, i32 noundef %call2.i) #10
  br label %if.end212

if.end212:                                        ; preds = %if.else.i, %if.then197.if.end212_crit_edge
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %status97) #10
  br label %if.end215

if.end215:                                        ; preds = %if.end212, %if.then185.if.end215_crit_edge, %land.lhs.true180.if.end215_crit_edge, %land.lhs.true176.if.end215_crit_edge, %land.lhs.true173.if.end215_crit_edge, %land.lhs.true169.if.end215_crit_edge, %exit.thread
  %status166405 = phi ptr [ %status166402, %exit.thread ], [ %status97, %if.then185.if.end215_crit_edge ], [ %status97, %if.end212 ], [ %status97, %land.lhs.true180.if.end215_crit_edge ], [ %status97, %land.lhs.true176.if.end215_crit_edge ], [ %status97, %land.lhs.true173.if.end215_crit_edge ], [ %status97, %land.lhs.true169.if.end215_crit_edge ]
  %ack.1.off0404 = phi i1 [ false, %exit.thread ], [ true, %if.then185.if.end215_crit_edge ], [ true, %if.end212 ], [ true, %land.lhs.true180.if.end215_crit_edge ], [ true, %land.lhs.true176.if.end215_crit_edge ], [ true, %land.lhs.true173.if.end215_crit_edge ], [ true, %land.lhs.true169.if.end215_crit_edge ]
  %config_af_params.sroa.0.2403 = phi i32 [ %config_af_params.sroa.0.2.ph, %exit.thread ], [ %config_af_params.sroa.0.1, %if.then185.if.end215_crit_edge ], [ %config_af_params.sroa.0.1, %if.end212 ], [ %config_af_params.sroa.0.1, %land.lhs.true180.if.end215_crit_edge ], [ %config_af_params.sroa.0.1, %land.lhs.true176.if.end215_crit_edge ], [ %config_af_params.sroa.0.1, %land.lhs.true173.if.end215_crit_edge ], [ %config_af_params.sroa.0.1, %land.lhs.true169.if.end215_crit_edge ]
  %block_gon_req_tx216 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 17
  %188 = ptrtoint ptr %block_gon_req_tx216 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %block_gon_req_tx216, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool217.not = icmp eq i8 %189, 0
  br i1 %tobool217.not, label %if.end215.if.end220_crit_edge, label %if.then218

if.end215.if.end220_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

if.then218:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #12
  %190 = ptrtoint ptr %block_gon_req_tx216 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %block_gon_req_tx216, align 1
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %if.end215.if.end220_crit_edge
  %ack.2.off0 = phi i1 [ true, %if.then218 ], [ %ack.1.off0404, %if.end215.if.end220_crit_edge ]
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %status166405) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %config_af_params.sroa.0.2403)
  %cmp223 = icmp eq i32 %config_af_params.sroa.0.2403, 1
  br i1 %cmp223, label %if.then225, label %if.end220.cleanup_crit_edge

if.end220.cleanup_crit_edge:                      ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then225:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @brcmf_set_mpc(ptr noundef %add.ptr.i, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then225, %if.end220.cleanup_crit_edge, %do.end65
  %retval.0 = phi i1 [ false, %do.end65 ], [ %ack.2.off0, %if.then225 ], [ %ack.2.off0, %if.end220.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_abort_scanning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_notify_escan_complete(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_notify_rx_mgmt_p2p_probereq(ptr nocapture noundef readonly %ifp, ptr nocapture noundef readonly %e, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %ch = alloca %struct.brcmu_chan, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %vif3 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 1
  %4 = ptrtoint ptr %vif3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ch) #10
  %6 = call ptr @memset(ptr %ch, i32 255, i32 16)
  %event_code = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 2
  %7 = ptrtoint ptr %event_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event_code, align 4
  %reason = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 4
  %9 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reason, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_notify_rx_mgmt_p2p_probereq, ptr noundef nonnull @.str.32, i32 noundef %8, i32 noundef %10) #10
  %datalen = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 6
  %11 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp ult i32 %12, 16
  br i1 %cmp, label %do.body4, label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_p2p_notify_rx_mgmt_p2p_probereq, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %chanspec = getelementptr inbounds %struct.brcmf_rx_mgmt_data, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %chanspec to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %chanspec, align 2
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %ch, align 4
  %decchspec = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 26, i32 2
  %16 = ptrtoint ptr %decchspec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %decchspec, align 4
  call void %17(ptr noundef nonnull %ch) #10
  %status = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %status, align 4
  %20 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %tx_dst_addr = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 12, i32 7
  %addr = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 7
  %21 = ptrtoint ptr %tx_dst_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_dst_addr, align 4
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %24, %22
  %add.ptr.i = getelementptr %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 12, i32 7, i32 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.brcmf_event_msg, ptr %e, i32 0, i32 7, i32 4
  %27 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %28, %26
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then9, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %control_ch_num = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 2
  %29 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %control_ch_num, align 1
  %conv = zext i8 %30 to i32
  %peer_chan = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 12, i32 3
  %31 = ptrtoint ptr %peer_chan to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %peer_chan, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_notify_rx_mgmt_p2p_probereq, ptr noundef nonnull @.str.33, i32 noundef %conv) #10
  %act_frm_scan = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 2, i32 12, i32 1
  call void @complete(ptr noundef %act_frm_scan) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %bsscfgidx = getelementptr inbounds %struct.brcmf_event_msg, ptr %e, i32 0, i32 10
  %32 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bsscfgidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp16 = icmp eq i8 %33, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %status, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool22.not = icmp eq i32 %36, 0
  br i1 %tobool22.not, label %do.body28, label %do.body24

do.body24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_notify_rx_mgmt_p2p_probereq, ptr noundef nonnull @.str.34) #10
  br label %cleanup

do.body28:                                        ; preds = %if.end19
  %mgmt_rx_reg = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 6
  %37 = ptrtoint ptr %mgmt_rx_reg to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mgmt_rx_reg, align 4
  %conv29 = zext i16 %38 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_notify_rx_mgmt_p2p_probereq, ptr noundef nonnull @.str.35, i32 noundef %conv29) #10
  %39 = ptrtoint ptr %mgmt_rx_reg to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mgmt_rx_reg, align 4
  %41 = and i16 %40, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp35 = icmp eq i16 %41, 0
  br i1 %cmp35, label %do.body28.cleanup_crit_edge, label %if.end38

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.brcmf_rx_mgmt_data, ptr %data, i32 1
  %42 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %datalen, align 4
  %sub = add i32 %43, -16
  %control_ch_num40 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 2
  %44 = ptrtoint ptr %control_ch_num40 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %control_ch_num40, align 1
  %conv41 = zext i8 %45 to i32
  %band = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 3
  %46 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp43 = icmp ne i8 %47, 0
  %cond = zext i1 %cmp43 to i32
  %call.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv41, i32 noundef %cond) #10
  %div.i = udiv i32 %call.i, 1000
  %wdev = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 1
  %mul.i = mul nuw i32 %div.i, 1000
  %call.i82 = call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %wdev, i32 noundef %mul.i, i32 noundef 0, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 0) #10
  %48 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %datalen, align 4
  %50 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ch, align 4
  %conv50 = zext i16 %51 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_notify_rx_mgmt_p2p_probereq, ptr noundef nonnull @.str.36, i32 noundef %sub, i32 noundef %49, i32 noundef %conv50, i32 noundef %div.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.body28.cleanup_crit_edge, %do.body24, %if.end14.cleanup_crit_edge, %do.body4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ch) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_ifchange(ptr noundef %cfg, i32 noundef %if_type) local_unnamed_addr #0 align 64 {
entry:
  %if_request = alloca %struct.brcmf_fil_p2p_if_le, align 2
  %chanspec = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p1 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 10
  %0 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pub, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %if_request) #10
  %2 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, ptr %if_request, i32 0, i32 1
  %3 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, ptr %if_request, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %chanspec) #10
  %4 = ptrtoint ptr %chanspec to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %chanspec, align 2, !annotation !362
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_ifchange, ptr noundef nonnull @.str.2) #10
  %bss_idx = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %bss_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bss_idx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end6, label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.brcmf_p2p_ifchange) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %call = tail call i32 @brcmf_notify_escan_complete(ptr noundef %cfg, ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %arrayidx10 = getelementptr %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx10, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %do.end17, label %if.end22

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy18 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %wiphy18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy18, align 4
  %dev19 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.brcmf_p2p_ifchange) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  tail call void @brcmf_set_mpc(ptr noundef %16, i32 noundef 0) #10
  call fastcc void @brcmf_p2p_get_current_chanspec(ptr noundef %p2p1, ptr noundef nonnull %chanspec)
  %conv = trunc i32 %if_type to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %2, align 2
  %19 = ptrtoint ptr %chanspec to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %chanspec, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %3, align 2
  %conn_int_addr = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 3
  %23 = call ptr @memcpy(ptr %if_request, ptr %conn_int_addr, i32 6)
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %cfg, ptr noundef nonnull %12) #10
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %12, align 4
  %call26 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %25, ptr noundef nonnull @.str.41, ptr noundef nonnull %if_request, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end37, label %do.end32

do.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy33 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %wiphy33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy33, align 4
  %dev34 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.brcmf_p2p_ifchange, i32 noundef %call26) #14
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %cfg, ptr noundef null) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end22
  %call39 = call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %cfg, i8 noundef zeroext 3, i32 noundef 150) #10
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %cfg, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.end45, label %if.end50

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy46 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %wiphy46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy46, align 4
  %dev47 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.brcmf_p2p_ifchange) #14
  br label %cleanup

if.end50:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %12, align 4
  %call52 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %31, i32 noundef 158, i32 noundef 20) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end45, %do.end32, %do.end17, %do.end6
  %retval.0 = phi i32 [ %call26, %do.end32 ], [ %call52, %if.end50 ], [ -5, %do.end45 ], [ -1, %do.end17 ], [ -1, %do.end6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %chanspec) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %if_request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_p2p_get_current_chanspec(ptr nocapture noundef readonly %p2p, ptr nocapture noundef writeonly %chanspec) unnamed_addr #0 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 1
  %ch = alloca %struct.brcmu_chan, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #10
  %0 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ch) #10
  %1 = call ptr @memset(ptr %ch, i32 255, i32 16)
  %bss_idx = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 5
  %2 = ptrtoint ptr %bss_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bss_idx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call i32 @brcmf_fil_cmd_data_get(ptr noundef %5, i32 noundef 23, ptr noundef nonnull %mac_addr, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2048) #16
  %cmp3.not = icmp eq ptr %call7.i.i, null
  br i1 %cmp3.not, label %if.then.if.end10_crit_edge, label %if.then4

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then4:                                         ; preds = %if.then
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 524288, ptr %call7.i.i, align 8
  %call5 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %5, i32 noundef 136, ptr noundef nonnull %call7.i.i, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %chanspec8 = getelementptr i8, ptr %call7.i.i, i32 76
  %8 = ptrtoint ptr %chanspec8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chanspec8, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %chanspec to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %chanspec, align 2
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %chnum = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 1
  %12 = ptrtoint ptr %chnum to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 11, ptr %chnum, align 2
  %bw = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %13 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bw, align 4
  %14 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p2p, align 4
  %encchspec = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %15, i32 0, i32 26, i32 1
  %16 = ptrtoint ptr %encchspec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %encchspec, align 4
  call void %17(ptr noundef nonnull %ch) #10
  %18 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ch, align 4
  %20 = ptrtoint ptr %chanspec to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %chanspec, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ch) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_cfg80211_arm_vif_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_cfg80211_wait_vif_event(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_p2p_add_vif(ptr noundef readonly %wiphy, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %type, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  %if_request.i = alloca %struct.brcmf_fil_p2p_if_le, align 2
  %chanspec.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_to_cfg.exit, !prof !359

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

wiphy_to_cfg.exit:                                ; preds = %entry
  %config.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 4
  %pub.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pub.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pub.i, align 4
  %call.i = tail call ptr @brcmf_get_ifp(ptr noundef %3, i32 noundef 0) #10
  %ndev.i = getelementptr inbounds %struct.brcmf_if, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  %6 = ptrtoint ptr %pub.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pub.i, align 4
  %call3 = tail call zeroext i1 @brcmf_cfg80211_vif_event_armed(ptr noundef %1) #10
  br i1 %call3, label %wiphy_to_cfg.exit.cleanup_crit_edge, label %do.body

wiphy_to_cfg.exit.cleanup_crit_edge:              ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %wiphy_to_cfg.exit
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_add_vif, ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %type) #10
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %type, label %do.body.cleanup_crit_edge [
    i32 8, label %do.body.sw.epilog_crit_edge
    i32 9, label %sw.bb5
    i32 10, label %sw.bb6
  ]

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %p2p = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2
  %macaddr = getelementptr inbounds %struct.vif_params, ptr %params, i32 0, i32 2
  %call7 = tail call fastcc ptr @brcmf_p2p_create_p2pdev(ptr noundef %p2p, ptr noundef %macaddr)
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %do.body.sw.epilog_crit_edge
  %cmp79 = phi i1 [ true, %sw.bb5 ], [ false, %do.body.sw.epilog_crit_edge ]
  %iftype.0 = phi i16 [ 256, %sw.bb5 ], [ 0, %do.body.sw.epilog_crit_edge ]
  %call9 = tail call ptr @brcmf_alloc_vif(ptr noundef %1, i32 noundef %type) #10
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %sw.epilog
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %1, ptr noundef %call9) #10
  %9 = ptrtoint ptr %pub.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pub.i, align 4
  %call.i.i = tail call ptr @brcmf_get_ifp(ptr noundef %10, i32 noundef 0) #10
  %ndev.i.i = getelementptr inbounds %struct.brcmf_if, ptr %call.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 2304
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %if.end12.do.body30_crit_edge, label %for.body.preheader.i

if.end12.do.body30_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

for.body.preheader.i:                             ; preds = %if.end12
  %arrayidx.i = getelementptr %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 5, i32 2
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %if.then14, label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.inc.i
  %call5.i = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef nonnull %add.ptr.i.i, i32 noundef 5) #10
  br i1 %call5.i, label %if.then18, label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_get_conn_idx, ptr noundef nonnull @.str.162) #10
  br label %do.body30

for.inc.i:                                        ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 5, i32 3
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool2.not.1.i = icmp eq ptr %16, null
  br i1 %tobool2.not.1.i, label %land.lhs.true.i, label %for.inc.i.do.body30_crit_edge

for.inc.i.do.body30_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

if.then14:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %conn_int_addr = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 3
  br label %if.end27

if.then18:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %conn2_int_addr = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 4
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %if.then14
  %retval.0.i133.ph = phi i32 [ 2, %if.then14 ], [ 3, %if.then18 ]
  %p2p_intf_addr.0.ph = phi ptr [ %conn_int_addr, %if.then14 ], [ %conn2_int_addr, %if.then18 ]
  %p2p25 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %if_request.i) #10
  %17 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, ptr %if_request.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, ptr %if_request.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %chanspec.i) #10
  %19 = ptrtoint ptr %chanspec.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %chanspec.i, align 2, !annotation !362
  call fastcc void @brcmf_p2p_get_current_chanspec(ptr noundef %p2p25, ptr noundef nonnull %chanspec.i) #10
  %20 = call ptr @memcpy(ptr %if_request.i, ptr %p2p_intf_addr.0.ph, i32 6)
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %iftype.0, ptr %17, align 2
  %22 = ptrtoint ptr %chanspec.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %chanspec.i, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #10
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %18, align 2
  %call.i131 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.163, ptr noundef nonnull %if_request.i, i32 noundef 10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %chanspec.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %if_request.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool28.not = icmp eq i32 %call.i131, 0
  br i1 %tobool28.not, label %if.end33, label %if.end27.do.body30_crit_edge

if.end27.do.body30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

do.body30:                                        ; preds = %if.end27.do.body30_crit_edge, %for.inc.i.do.body30_crit_edge, %do.body.i, %if.end12.do.body30_crit_edge
  %err.1147 = phi i32 [ %call.i131, %if.end27.do.body30_crit_edge ], [ -22, %do.body.i ], [ -22, %if.end12.do.body30_crit_edge ], [ -22, %for.inc.i.do.body30_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_add_vif, ptr noundef nonnull @.str.49) #10
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %1, ptr noundef null) #10
  br label %fail

if.end33:                                         ; preds = %if.end27
  %call35 = call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %1, i8 noundef zeroext 1, i32 noundef 150) #10
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy42 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %wiphy42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy42, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.brcmf_p2p_add_vif) #14
  br label %fail

if.end45:                                         ; preds = %if.end33
  %28 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call9, align 4
  %tobool47.not = icmp eq ptr %29, null
  br i1 %tobool47.not, label %do.end52, label %if.end57

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy53 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %wiphy53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wiphy53, align 4
  %dev54 = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.brcmf_p2p_add_vif) #14
  br label %fail

if.end57:                                         ; preds = %if.end45
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev, align 4
  %call60 = call ptr @strncpy(ptr noundef %33, ptr noundef %name, i32 noundef 15)
  %34 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev, align 4
  %name_assign_type62 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 34
  %36 = ptrtoint ptr %name_assign_type62 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %name_assign_type, ptr %name_assign_type62, align 1
  %call63 = call i32 @brcmf_net_attach(ptr noundef nonnull %29, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end75, label %do.end69

do.end69:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy70 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %37 = ptrtoint ptr %wiphy70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy70, align 4
  %dev71 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.brcmf_p2p_add_vif) #14
  %39 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev, align 4
  call void @free_netdev(ptr noundef %40) #10
  br label %fail

if.end75:                                         ; preds = %if.end57
  %arrayidx = getelementptr %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 5, i32 %retval.0.i133.ph
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9, ptr %arrayidx, align 4
  %call78 = call i32 @brcmf_fil_iovar_int_set(ptr noundef nonnull %29, ptr noundef nonnull @.str.57, i32 noundef 1) #10
  br i1 %cmp79, label %if.then80, label %if.end75.if.end82_crit_edge

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %call81 = call i32 @brcmf_fil_cmd_int_set(ptr noundef nonnull %29, i32 noundef 158, i32 noundef 20) #10
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end75.if.end82_crit_edge
  %vif83 = getelementptr inbounds %struct.brcmf_if, ptr %29, i32 0, i32 1
  %42 = ptrtoint ptr %vif83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vif83, align 4
  %wdev = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %43, i32 0, i32 1
  br label %cleanup

fail:                                             ; preds = %do.end69, %do.end52, %do.end41, %do.body30
  %err.2 = phi i32 [ %err.1147, %do.body30 ], [ %call63, %do.end69 ], [ -2, %do.end52 ], [ -5, %do.end41 ]
  call void @brcmf_free_vif(ptr noundef %call9) #10
  %44 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end82, %sw.epilog.cleanup_crit_edge, %sw.bb6, %do.body.cleanup_crit_edge, %wiphy_to_cfg.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %sw.bb6 ], [ %44, %fail ], [ %wdev, %if.end82 ], [ %call9, %sw.epilog.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %wiphy_to_cfg.exit.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_cfg80211_vif_event_armed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @brcmf_p2p_create_p2pdev(ptr noundef %p2p, ptr noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  %bsscfgidx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p, align 4
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pub, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bsscfgidx) #10
  %4 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bsscfgidx, align 4, !annotation !362
  %bss_idx = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 5
  %arrayidx = getelementptr %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @brcmf_alloc_vif(ptr noundef %1, i32 noundef 10) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy6 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy6, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %bss_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bss_idx, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool13.not = icmp eq ptr %addr, null
  br i1 %tobool13.not, label %if.end9.if.end5.i_crit_edge, label %land.lhs.true

if.end9.if.end5.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true:                                    ; preds = %if.end9
  %mac_addr = getelementptr inbounds %struct.brcmf_if, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %15 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %16, %14
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.brcmf_if, ptr %12, i32 0, i32 8, i32 4
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %20, %18
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i1 = icmp eq i32 %or.i, 0
  br i1 %cmp.i1, label %do.end19, label %lor.lhs.false.i

do.end19:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy20 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %wiphy20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy20, align 4
  %dev21 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.141) #14
  br label %fail

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %or.i.i = or i32 %24, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.end5.i_crit_edge, label %if.else10.thread.i

lor.lhs.false.i.if.end5.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.else10.thread.i:                               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr1169.i = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %dev_addr1169.i, ptr %addr, i32 6)
  br label %brcmf_p2p_generate_bss_mac.exit

if.end5.i:                                        ; preds = %lor.lhs.false.i.if.end5.i_crit_edge, %if.end9.if.end5.i_crit_edge
  %mac_addr.i = getelementptr inbounds %struct.brcmf_if, ptr %12, i32 0, i32 8
  %28 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mac_addr.i, align 4
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool2.not.i = icmp eq i8 %30, 0
  %dev_addr11.i = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 2
  br i1 %tobool2.not.i, label %if.else10.i, label %if.end13.i

if.else10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = call ptr @memcpy(ptr %dev_addr11.i, ptr %mac_addr.i, i32 6)
  %32 = ptrtoint ptr %dev_addr11.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dev_addr11.i, align 4
  %34 = or i8 %33, 2
  store i8 %34, ptr %dev_addr11.i, align 4
  br label %brcmf_p2p_generate_bss_mac.exit

if.end13.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @get_random_bytes(ptr noundef %dev_addr11.i, i32 noundef 6) #10
  %35 = ptrtoint ptr %dev_addr11.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dev_addr11.i, align 1
  %37 = and i8 %36, -4
  %38 = or i8 %37, 2
  store i8 %38, ptr %dev_addr11.i, align 1
  br label %brcmf_p2p_generate_bss_mac.exit

brcmf_p2p_generate_bss_mac.exit:                  ; preds = %if.end13.i, %if.else10.i, %if.else10.thread.i
  %conn_int_addr.i = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 3
  %dev_addr22.i = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %conn_int_addr.i, ptr %dev_addr22.i, i32 6)
  %40 = ptrtoint ptr %conn_int_addr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %conn_int_addr.i, align 2
  %42 = or i8 %41, 2
  store i8 %42, ptr %conn_int_addr.i, align 2
  %arrayidx30.i = getelementptr %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx30.i, align 2
  %45 = xor i8 %44, -128
  store i8 %45, ptr %arrayidx30.i, align 2
  %conn2_int_addr.i = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 4
  %46 = call ptr @memcpy(ptr %conn2_int_addr.i, ptr %dev_addr22.i, i32 6)
  %47 = ptrtoint ptr %conn2_int_addr.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %conn2_int_addr.i, align 4
  %49 = or i8 %48, 2
  store i8 %49, ptr %conn2_int_addr.i, align 4
  %arrayidx42.i = getelementptr %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 4, i32 4
  %50 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx42.i, align 4
  %52 = xor i8 %51, -112
  store i8 %52, ptr %arrayidx42.i, align 4
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %12, align 4
  %call.i = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %12, i32 noundef 3, i32 noundef 1) #10
  %call2.i = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %12, ptr noundef nonnull @.str.154, i32 noundef 1) #10
  %call3.i = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %12, i32 noundef 2, i32 noundef 1) #10
  %call4.i = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %12, ptr noundef nonnull @.str.68, i32 noundef 0) #10
  %call5.i = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %12, ptr noundef nonnull @.str.155, ptr noundef %dev_addr22.i, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i2 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i2, label %brcmf_p2p_generate_bss_mac.exit.brcmf_p2p_set_firmware.exit_crit_edge, label %do.end.i

brcmf_p2p_generate_bss_mac.exit.brcmf_p2p_set_firmware.exit_crit_edge: ; preds = %brcmf_p2p_generate_bss_mac.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_set_firmware.exit

do.end.i:                                         ; preds = %brcmf_p2p_generate_bss_mac.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157, i32 noundef %call5.i) #14
  br label %brcmf_p2p_set_firmware.exit

brcmf_p2p_set_firmware.exit:                      ; preds = %do.end.i, %brcmf_p2p_generate_bss_mac.exit.brcmf_p2p_set_firmware.exit_crit_edge
  %57 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %p2p, align 4
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %58, ptr noundef %call2) #10
  tail call void @brcmf_fweh_p2pdev_setup(ptr noundef %12, i1 noundef zeroext true) #10
  %call28 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %12, ptr noundef nonnull @.str.68, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.end33, label %if.end39

do.end33:                                         ; preds = %brcmf_p2p_set_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy34 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %59 = ptrtoint ptr %wiphy34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wiphy34, align 4
  %dev35 = getelementptr inbounds %struct.wiphy, ptr %60, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.141) #14
  tail call void @brcmf_fweh_p2pdev_setup(ptr noundef %12, i1 noundef zeroext false) #10
  %61 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %p2p, align 4
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %62, ptr noundef null) #10
  br label %fail

if.end39:                                         ; preds = %brcmf_p2p_set_firmware.exit
  %63 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %p2p, align 4
  %call42 = tail call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %64, i8 noundef zeroext 1, i32 noundef 150) #10
  %65 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %p2p, align 4
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %66, ptr noundef null) #10
  tail call void @brcmf_fweh_p2pdev_setup(ptr noundef %12, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool44.not = icmp eq i32 %call42, 0
  br i1 %tobool44.not, label %do.end49, label %if.end54

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy50 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %67 = ptrtoint ptr %wiphy50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wiphy50, align 4
  %dev51 = getelementptr inbounds %struct.wiphy, ptr %68, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.141) #14
  br label %fail

if.end54:                                         ; preds = %if.end39
  %69 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call2, align 4
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call2, ptr %arrayidx, align 4
  %mac_addr59 = getelementptr inbounds %struct.brcmf_if, ptr %70, i32 0, i32 8
  %72 = call ptr @memcpy(ptr %mac_addr59, ptr %dev_addr22.i, i32 6)
  %wdev = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %call2, i32 0, i32 1
  %address = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %call2, i32 0, i32 1, i32 12
  %73 = call ptr @memcpy(ptr %address, ptr %dev_addr22.i, i32 6)
  %call65 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %12, ptr noundef nonnull @.str.149, ptr noundef nonnull %bsscfgidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end71, label %if.end76

do.end71:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy72 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %74 = ptrtoint ptr %wiphy72 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wiphy72, align 4
  %dev73 = getelementptr inbounds %struct.wiphy, ptr %75, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.141) #14
  br label %fail

if.end76:                                         ; preds = %if.end54
  %bsscfgidx77 = getelementptr inbounds %struct.brcmf_if, ptr %70, i32 0, i32 7
  %76 = ptrtoint ptr %bsscfgidx77 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bsscfgidx77, align 4
  %78 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bsscfgidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp78.not = icmp eq i32 %77, %79
  br i1 %cmp78.not, label %if.end76.if.end96_crit_edge, label %do.end90, !prof !363

if.end76.if.end96_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.end90:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2218, i32 noundef 9, ptr noundef null) #10
  br label %if.end96

if.end96:                                         ; preds = %do.end90, %if.end76.if.end96_crit_edge
  %send_af_done = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 11
  %80 = ptrtoint ptr %send_af_done to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %send_af_done, align 4
  %wait.i = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #10
  %afx_hdl = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 12
  call void @__init_work(ptr noundef %afx_hdl, i32 noundef 0) #10
  %81 = ptrtoint ptr %afx_hdl to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -64, ptr %afx_hdl, align 4
  %lockdep_map = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 12, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.153, ptr noundef nonnull @brcmf_p2p_create_p2pdev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry110 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 12, i32 0, i32 1
  %82 = ptrtoint ptr %entry110 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %entry110, ptr %entry110, align 4
  %prev.i = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 12, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %entry110, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 12, i32 0, i32 2
  %84 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @brcmf_p2p_afx_handler, ptr %func, align 4
  %act_frm_scan = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 12, i32 1
  %85 = ptrtoint ptr %act_frm_scan to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %act_frm_scan, align 4
  %wait.i3 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 12, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i3, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #10
  %wait_next_af = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 15
  %86 = ptrtoint ptr %wait_next_af to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %wait_next_af, align 4
  %wait.i4 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 15, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i4, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #10
  br label %cleanup

fail:                                             ; preds = %do.end71, %do.end49, %do.end33, %do.end19
  %err.0 = phi i32 [ -22, %do.end19 ], [ %call28, %do.end33 ], [ %call65, %do.end71 ], [ -5, %do.end49 ]
  call void @brcmf_free_vif(ptr noundef %call2) #10
  %87 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end96, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %do.end ], [ %87, %fail ], [ %wdev, %if.end96 ], [ inttoptr (i32 -28 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bsscfgidx) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_alloc_vif(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_net_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_free_vif(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_del_vif(ptr noundef readonly %wiphy, ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  %discover_state.i.i68 = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %discover_state.i.i = alloca %struct.brcmf_p2p_disc_st_le, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_to_cfg.exit, !prof !359

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

wiphy_to_cfg.exit:                                ; preds = %entry
  %config.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_del_vif, ptr noundef nonnull @.str.58) #10
  %add.ptr = getelementptr i8, ptr %wdev, i32 -4
  %iftype3 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %2 = ptrtoint ptr %iftype3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype3, align 4
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %1, ptr noundef %add.ptr) #10
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %3, label %wiphy_to_cfg.exit.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 9, label %sw.bb5
    i32 10, label %sw.bb10
  ]

wiphy_to_cfg.exit.cleanup_crit_edge:              ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sme_state = getelementptr i8, ptr %wdev, i32 1980
  %5 = ptrtoint ptr %sme_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sme_state, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  br label %sw.epilog

sw.bb5:                                           ; preds = %wiphy_to_cfg.exit
  %8 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i.i, label %do.body4.i.i.i.i, label %brcmf_p2p_disable_p2p_if.exit, !prof !359

do.body4.i.i.i.i:                                 ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

brcmf_p2p_disable_p2p_if.exit:                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %config.i.i.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 1, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i.i.i, align 4
  %pub.i.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pub.i.i, align 4
  %call.i.i = tail call ptr @brcmf_get_ifp(ptr noundef %13, i32 noundef 0) #10
  %ndev.i.i = getelementptr inbounds %struct.brcmf_if, ptr %call.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 2304
  %netdev.i = getelementptr i8, ptr %wdev, i32 16
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr.i, align 64
  %call4.i = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.164, ptr noundef %19, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool7.not = icmp eq i32 %call4.i, 0
  br label %sw.epilog

sw.bb10:                                          ; preds = %wiphy_to_cfg.exit
  %arrayidx = getelementptr %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %sw.bb10.cleanup_crit_edge, label %if.end14

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end14.if.end27.thread_crit_edge, label %if.end.i

if.end14.if.end27.thread_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.thread

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %discover_state.i.i) #10
  %24 = ptrtoint ptr %discover_state.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 255, ptr %discover_state.i.i, align 2
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_set_discover_state, ptr noundef nonnull @.str.65) #10
  %chspec.i.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %chspec.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %chspec.i.i, align 2
  %dwell.i.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %dwell.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %dwell.i.i, align 2
  %call.i.i67 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef nonnull %23, ptr noundef nonnull @.str.96, ptr noundef nonnull %discover_state.i.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %discover_state.i.i) #10
  %call1.i = call i32 @brcmf_p2p_notify_listen_complete(ptr noundef nonnull %23, ptr undef, ptr undef) #10
  br label %if.end27.thread

sw.epilog:                                        ; preds = %brcmf_p2p_disable_p2p_if.exit, %sw.bb
  %wait_for_disable.0.off0 = phi i1 [ %tobool.not, %sw.bb ], [ %tobool7.not, %brcmf_p2p_disable_p2p_if.exit ]
  %status = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 1
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %status) #10
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_del_vif, ptr noundef nonnull @.str) #10
  br i1 %wait_for_disable.0.off0, label %if.then20, label %sw.epilog.if.then24_crit_edge

sw.epilog.if.then24_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %vif_disabled = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 25
  %call22 = tail call i32 @wait_for_completion_timeout(ptr noundef %vif_disabled, i32 noundef 50) #10
  br label %if.then24

if.end27.thread:                                  ; preds = %if.end.i, %if.end14.if.end27.thread_crit_edge
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_deinit_discovery, ptr noundef nonnull @.str.65) #10
  %bss_idx.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %discover_state.i.i68) #10
  %31 = ptrtoint ptr %discover_state.i.i68 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 255, ptr %discover_state.i.i68, align 2
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_set_discover_state, ptr noundef nonnull @.str.65) #10
  %chspec.i.i69 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i.i68, i32 0, i32 1
  %32 = ptrtoint ptr %chspec.i.i69 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %chspec.i.i69, align 2
  %dwell.i.i70 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i.i68, i32 0, i32 2
  %33 = ptrtoint ptr %dwell.i.i70 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %dwell.i.i70, align 2
  %call.i.i71 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %30, ptr noundef nonnull @.str.96, ptr noundef nonnull %discover_state.i.i68, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %discover_state.i.i68) #10
  %34 = ptrtoint ptr %bss_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bss_idx.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call6.i = call i32 @brcmf_fil_iovar_int_set(ptr noundef %37, ptr noundef nonnull @.str.68, i32 noundef 0) #10
  %status.c = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 1
  call void @_clear_bit(i32 noundef 8, ptr noundef %status.c) #10
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_del_vif, ptr noundef nonnull @.str) #10
  br label %if.then29

if.then24:                                        ; preds = %if.then20, %sw.epilog.if.then24_crit_edge
  %call25 = tail call i32 @brcmf_vif_clear_mgmt_ies(ptr noundef %add.ptr) #10
  %38 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i.i.i73 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i.i73, label %do.body4.i.i.i.i74, label %if.end27, !prof !359

do.body4.i.i.i.i74:                               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

if.end27:                                         ; preds = %if.then24
  %config.i.i.i75 = getelementptr inbounds %struct.wiphy, ptr %39, i32 1, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %config.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %config.i.i.i75, align 4
  %pub.i.i76 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %pub.i.i76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pub.i.i76, align 4
  %call.i.i77 = tail call ptr @brcmf_get_ifp(ptr noundef %43, i32 noundef 0) #10
  %ndev.i.i78 = getelementptr inbounds %struct.brcmf_if, ptr %call.i.i77, i32 0, i32 2
  %44 = ptrtoint ptr %ndev.i.i78 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev.i.i78, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %45, i32 2304
  %netdev.i80 = getelementptr i8, ptr %wdev, i32 16
  %46 = ptrtoint ptr %netdev.i80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev.i80, align 4
  %dev_addr.i81 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 86
  %48 = ptrtoint ptr %dev_addr.i81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_addr.i81, align 64
  %call4.i82 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %add.ptr.i.i79, ptr noundef nonnull @.str.165, ptr noundef %49, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i82)
  %tobool28.not = icmp eq i32 %call4.i82, 0
  br i1 %tobool28.not, label %if.end27.if.then29_crit_edge, label %if.end27.if.end35_crit_edge

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %if.end27.if.then29_crit_edge, %if.end27.thread
  %cmp.not8590 = phi i1 [ true, %if.end27.thread ], [ false, %if.end27.if.then29_crit_edge ]
  %call31 = call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %1, i8 noundef zeroext 2, i32 noundef 150) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %. = select i1 %tobool32.not, i32 -5, i32 0
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end27.if.end35_crit_edge
  %cmp.not8589 = phi i1 [ false, %if.end27.if.end35_crit_edge ], [ %cmp.not8590, %if.then29 ]
  %err.1 = phi i32 [ %call4.i82, %if.end27.if.end35_crit_edge ], [ %., %if.then29 ]
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  call void @brcmf_remove_interface(ptr noundef %51, i1 noundef zeroext true) #10
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %1, ptr noundef null) #10
  br i1 %cmp.not8589, label %if.end35.cleanup_crit_edge, label %if.then38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx40 = getelementptr %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 5, i32 2
  %52 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end35.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %wiphy_to_cfg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb10.cleanup_crit_edge ], [ -524, %wiphy_to_cfg.exit.cleanup_crit_edge ], [ %err.1, %if.then38 ], [ %err.1, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_vif_clear_mgmt_ies(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_remove_interface(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_p2p_ifp_removed(ptr nocapture noundef readonly %ifp, i1 noundef zeroext %locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_p2p_ifp_removed, ptr noundef nonnull @.str.59) #10
  %vif1 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 1
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 4
  %wdev = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %wdev_to_cfg.exit, !prof !359

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

wdev_to_cfg.exit:                                 ; preds = %entry
  %config.i.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i, align 4
  %arrayidx = getelementptr %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 2, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  br i1 %locked, label %if.else, label %if.then

if.then:                                          ; preds = %wdev_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_lock() #10
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  tail call void @mutex_lock_nested(ptr noundef %8, i32 noundef 0) #10
  tail call void @cfg80211_unregister_wdev(ptr noundef %wdev) #10
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %10) #10
  tail call void @rtnl_unlock() #10
  br label %if.end

if.else:                                          ; preds = %wdev_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfg80211_unregister_wdev(ptr noundef %wdev) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @brcmf_free_vif(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_start_device(ptr noundef readonly %wiphy, ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_to_cfg.exit, !prof !359

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

wiphy_to_cfg.exit:                                ; preds = %entry
  %config.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 4
  %p2p1 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2
  %usr_sync = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %usr_sync, i32 noundef 0) #10
  %call2 = tail call fastcc i32 @brcmf_p2p_enable_discovery(ptr noundef %p2p1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %wiphy_to_cfg.exit.if.end_crit_edge

wiphy_to_cfg.exit.if.end_crit_edge:               ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sme_state = getelementptr i8, ptr %wdev, i32 1980
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sme_state) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %wiphy_to_cfg.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %usr_sync) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_p2p_stop_device(ptr noundef readonly %wiphy, ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  %discover_state.i = alloca %struct.brcmf_p2p_disc_st_le, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_to_cfg.exit, !prof !359

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

wiphy_to_cfg.exit:                                ; preds = %entry
  %config.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 4
  %add.ptr = getelementptr i8, ptr %wdev, i32 -4
  %arrayidx = getelementptr %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 2, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %3, %add.ptr
  br i1 %cmp, label %if.then, label %wiphy_to_cfg.exit.if.end_crit_edge

wiphy_to_cfg.exit.if.end_crit_edge:               ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %usr_sync = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %usr_sync, i32 noundef 0) #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %discover_state.i) #10
  %6 = ptrtoint ptr %discover_state.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 255, ptr %discover_state.i, align 2
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_set_discover_state, ptr noundef nonnull @.str.65) #10
  %chspec.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 1
  %7 = ptrtoint ptr %chspec.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %chspec.i, align 2
  %dwell.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 2
  %8 = ptrtoint ptr %dwell.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %dwell.i, align 2
  %call.i = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %5, ptr noundef nonnull @.str.96, ptr noundef nonnull %discover_state.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %discover_state.i) #10
  call void @brcmf_abort_scanning(ptr noundef %1) #10
  %sme_state = getelementptr i8, ptr %wdev, i32 1980
  call void @_clear_bit(i32 noundef 0, ptr noundef %sme_state) #10
  call void @mutex_unlock(ptr noundef %usr_sync) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %wiphy_to_cfg.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_attach(ptr noundef %cfg, i1 noundef zeroext %p2pdev_forced) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 10
  %0 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pub, align 4
  %p2p1 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2
  %2 = ptrtoint ptr %p2p1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cfg, ptr %p2p1, align 4
  %call = tail call ptr @brcmf_get_ifp(ptr noundef %1, i32 noundef 0) #10
  %vif = getelementptr inbounds %struct.brcmf_if, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vif, align 4
  %bss_idx = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %bss_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %bss_idx, align 4
  br i1 %p2pdev_forced, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = tail call fastcc ptr @brcmf_p2p_create_p2pdev(ptr noundef %p2p1, ptr noundef null)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #14
  %8 = ptrtoint ptr %call5 to i32
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %p2pdev_dynamically = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 2, i32 18
  %9 = ptrtoint ptr %p2pdev_dynamically to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %p2pdev_dynamically, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.end, %if.then.if.end12_crit_edge
  %err.0 = phi i32 [ %8, %do.end ], [ 0, %if.then.if.end12_crit_edge ], [ 0, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_p2p_detach(ptr nocapture noundef %p2p) local_unnamed_addr #0 align 64 {
entry:
  %discover_state.i.i7 = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %discover_state.i.i = alloca %struct.brcmf_p2p_disc_st_le, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.brcmf_p2p_cancel_remain_on_channel.exit_crit_edge, label %if.end.i

if.then.brcmf_p2p_cancel_remain_on_channel.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_p2p_cancel_remain_on_channel.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %discover_state.i.i) #10
  %4 = ptrtoint ptr %discover_state.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 255, ptr %discover_state.i.i, align 2
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_set_discover_state, ptr noundef nonnull @.str.65) #10
  %chspec.i.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %chspec.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %chspec.i.i, align 2
  %dwell.i.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %dwell.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %dwell.i.i, align 2
  %call.i.i = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.96, ptr noundef nonnull %discover_state.i.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %discover_state.i.i) #10
  %call1.i = call i32 @brcmf_p2p_notify_listen_complete(ptr noundef nonnull %3, ptr undef, ptr undef) #10
  br label %brcmf_p2p_cancel_remain_on_channel.exit

brcmf_p2p_cancel_remain_on_channel.exit:          ; preds = %if.end.i, %if.then.brcmf_p2p_cancel_remain_on_channel.exit_crit_edge
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_deinit_discovery, ptr noundef nonnull @.str.65) #10
  %bss_idx.i = getelementptr inbounds %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %discover_state.i.i7) #10
  %11 = ptrtoint ptr %discover_state.i.i7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 255, ptr %discover_state.i.i7, align 2
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_set_discover_state, ptr noundef nonnull @.str.65) #10
  %chspec.i.i8 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i.i7, i32 0, i32 1
  %12 = ptrtoint ptr %chspec.i.i8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %chspec.i.i8, align 2
  %dwell.i.i9 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i.i7, i32 0, i32 2
  %13 = ptrtoint ptr %dwell.i.i9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %dwell.i.i9, align 2
  %call.i.i10 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %10, ptr noundef nonnull @.str.96, ptr noundef nonnull %discover_state.i.i7, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %discover_state.i.i7) #10
  %14 = ptrtoint ptr %bss_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bss_idx.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call6.i = call i32 @brcmf_fil_iovar_int_set(ptr noundef %17, ptr noundef nonnull @.str.68, i32 noundef 0) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  call void @brcmf_remove_interface(ptr noundef %19, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %brcmf_p2p_cancel_remain_on_channel.exit, %entry.if.end_crit_edge
  %20 = call ptr @memset(ptr %p2p, i32 0, i32 420)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_bsscfg_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @channel_to_chanspec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_p2p_escan(ptr nocapture noundef readonly %p2p, i32 noundef %num_chans, ptr nocapture noundef readonly %chanspecs, i32 noundef %search_state) unnamed_addr #0 align 64 {
entry:
  %discover_state.i = alloca %struct.brcmf_p2p_disc_st_le, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p, align 4
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pub, align 4
  %mul = shl i32 %num_chans, 1
  %add = add i32 %mul, 76
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.brcmf_p2p_info, ptr %p2p, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 1) #14
  br label %exit

if.end6:                                          ; preds = %if.end
  %8 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2
  %9 = zext i32 %search_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %search_state, label %do.end11 [
    i32 2, label %if.end6.sw.epilog_crit_edge
    i32 0, label %sw.bb
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %params_le = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3
  %10 = ptrtoint ptr %params_le to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 117440512, ptr %params_le, align 4
  %SSID = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %SSID, ptr @.str.63, i32 7)
  br label %sw.epilog

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy12 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %wiphy12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy12, align 4
  %dev13 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, i32 noundef %search_state) #14
  br label %exit

sw.epilog:                                        ; preds = %sw.bb, %if.end6.sw.epilog_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %conv = trunc i32 %search_state to i8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %discover_state.i) #10
  %16 = ptrtoint ptr %discover_state.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %discover_state.i, align 2
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_set_discover_state, ptr noundef nonnull @.str.65) #10
  %17 = ptrtoint ptr %discover_state.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %discover_state.i, align 2
  %chspec.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 1
  %18 = ptrtoint ptr %chspec.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %chspec.i, align 2
  %dwell.i = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %discover_state.i, i32 0, i32 2
  %19 = ptrtoint ptr %dwell.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %dwell.i, align 2
  %call.i = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %15, ptr noundef nonnull @.str.96, ptr noundef nonnull %discover_state.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %discover_state.i) #10
  %20 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 69, ptr %call9.i.i, align 128
  %bss_type17 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %bss_type17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %bss_type17, align 2
  %scan_type = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %scan_type, align 1
  %bssid = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 1
  %23 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  %home_time = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 7
  %24 = ptrtoint ptr %home_time to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1006632960, ptr %home_time, align 4
  %switch.tableidx = add i32 %num_chans, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %25 = icmp ult i32 %switch.tableidx, 3
  br i1 %25, label %switch.lookup, label %if.else27

if.else27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p2p, align 4
  %call29 = call zeroext i1 @brcmf_get_vif_state_any(ptr noundef %27, i32 noundef 2) #10
  %. = select i1 %call29, i32 -1, i32 80
  br label %if.end34

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.brcmf_p2p_escan, i32 0, i32 %switch.tableidx
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end34

if.end34:                                         ; preds = %switch.lookup, %if.else27
  %active.0 = phi i32 [ %., %if.else27 ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_chans)
  %cmp35 = icmp eq i32 %num_chans, 1
  %div39.lhs.trunc = trunc i32 %active.0 to i8
  %div395 = sdiv i8 %div39.lhs.trunc, 30
  %active.1 = select i1 %cmp35, i32 200, i32 %active.0
  %29 = call i8 @llvm.smax.i8(i8 %div395, i8 1)
  %30 = zext i8 %29 to i32
  %31 = select i1 %cmp35, i32 10, i32 %30
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.89, i32 noundef %31, i32 noundef %active.1) #10
  %32 = call i32 @llvm.bswap.i32(i32 %active.1)
  %active_time = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 5
  %33 = ptrtoint ptr %active_time to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %active_time, align 4
  %34 = shl nuw nsw i32 %31, 24
  %nprobes48 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %nprobes48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %nprobes48, align 8
  %passive_time = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %passive_time to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %passive_time, align 64
  %and = and i32 %num_chans, 65535
  %37 = call i32 @llvm.bswap.i32(i32 %and)
  %channel_num = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %channel_num to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %channel_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_chans)
  %cmp496.not = icmp eq i32 %num_chans, 0
  br i1 %cmp496.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end34.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %arrayidx51 = getelementptr i16, ptr %chanspecs, i32 %i.07
  %39 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx51, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %arrayidx52 = getelementptr %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3, i32 9, i32 %i.07
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx52, align 2
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %num_chans
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end34.for.end_crit_edge
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16777216, ptr %8, align 4
  %action = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %action to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 256, ptr %action, align 8
  %sync_id = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 2
  %45 = ptrtoint ptr %sync_id to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 13330, ptr %sync_id, align 2
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %5, align 4
  %call54 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %47, ptr noundef nonnull @.str.90, ptr noundef nonnull %call9.i.i, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %for.end.exit_crit_edge

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %p2p to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %p2p, align 4
  %scan_status = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %49, i32 0, i32 9
  call void @_set_bit(i32 noundef 0, ptr noundef %scan_status) #10
  br label %exit

exit:                                             ; preds = %if.then56, %for.end.exit_crit_edge, %do.end11, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ %call54, %for.end.exit_crit_edge ], [ 0, %if.then56 ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_get_vif_state_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_bsscfg_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_p2pdev_setup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_p2p_afx_handler(ptr noundef %work) #0 align 64 {
entry:
  %ch.i = alloca %struct.brcmu_chan, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -232
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 4
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pub, align 4
  %is_active = getelementptr inbounds %struct.afx_hdl, ptr %work, i32 0, i32 2
  %4 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_active, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_listen = getelementptr inbounds %struct.afx_hdl, ptr %work, i32 0, i32 4
  %6 = ptrtoint ptr %is_listen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_listen, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %my_listen_chan = getelementptr inbounds %struct.afx_hdl, ptr %work, i32 0, i32 5
  %8 = ptrtoint ptr %my_listen_chan to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %my_listen_chan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool5.not = icmp eq i16 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @prandom_u32() #10
  %rem = urem i32 %call, 3
  %10 = mul nuw nsw i32 %rem, 100
  %mul = add nuw nsw i32 %10, 100
  %call8 = tail call fastcc i32 @brcmf_p2p_discover_listen(ptr noundef %add.ptr3, i16 noundef zeroext %9, i32 noundef %mul)
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %peer_listen_chan = getelementptr inbounds %struct.afx_hdl, ptr %work, i32 0, i32 6
  %11 = ptrtoint ptr %peer_listen_chan to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %peer_listen_chan, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ch.i) #10
  %13 = call ptr @memset(ptr %ch.i, i32 255, i32 16)
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_p2p_act_frm_search, ptr noundef nonnull @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  %..i = select i1 %tobool.not.i, i32 3, i32 2
  %14 = shl nuw nsw i32 %..i, 1
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #15
  %cmp.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.i, label %do.end5.i, label %if.end8.i

do.end5.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.161, ptr noundef nonnull @__func__.brcmf_p2p_act_frm_search) #14
  br label %brcmf_p2p_act_frm_search.exit

if.end8.i:                                        ; preds = %if.else
  %bw.i = getelementptr inbounds %struct.brcmu_chan, ptr %ch.i, i32 0, i32 4
  %17 = ptrtoint ptr %bw.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %bw.i, align 4
  br i1 %tobool.not.i, label %if.else14.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i16 %12 to i8
  %chnum.i = getelementptr inbounds %struct.brcmu_chan, ptr %ch.i, i32 0, i32 1
  %18 = ptrtoint ptr %chnum.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %chnum.i, align 2
  %19 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr3, align 4
  %encchspec.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 26, i32 1
  %21 = ptrtoint ptr %encchspec.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %encchspec.i, align 4
  call void %22(ptr noundef nonnull %ch.i) #10
  %23 = ptrtoint ptr %ch.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ch.i, align 4
  %25 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %call8.i.i.i, align 128
  %arrayidx.i.1 = getelementptr i16, ptr %call8.i.i.i, i32 1
  %26 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %24, ptr %arrayidx.i.1, align 2
  br label %if.end33.i

if.else14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %chnum15.i = getelementptr inbounds %struct.brcmu_chan, ptr %ch.i, i32 0, i32 1
  %27 = ptrtoint ptr %chnum15.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %chnum15.i, align 2
  %28 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr3, align 4
  %encchspec18.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %29, i32 0, i32 26, i32 1
  %30 = ptrtoint ptr %encchspec18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %encchspec18.i, align 4
  call void %31(ptr noundef nonnull %ch.i) #10
  %32 = ptrtoint ptr %ch.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ch.i, align 4
  %34 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %call8.i.i.i, align 128
  %35 = ptrtoint ptr %chnum15.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %chnum15.i, align 2
  %36 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr3, align 4
  %encchspec24.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %37, i32 0, i32 26, i32 1
  %38 = ptrtoint ptr %encchspec24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %encchspec24.i, align 4
  call void %39(ptr noundef nonnull %ch.i) #10
  %40 = ptrtoint ptr %ch.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ch.i, align 4
  %arrayidx26.i = getelementptr i16, ptr %call8.i.i.i, i32 1
  %42 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx26.i, align 2
  %43 = ptrtoint ptr %chnum15.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 11, ptr %chnum15.i, align 2
  %44 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr3, align 4
  %encchspec30.i = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %45, i32 0, i32 26, i32 1
  %46 = ptrtoint ptr %encchspec30.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %encchspec30.i, align 4
  call void %47(ptr noundef nonnull %ch.i) #10
  %48 = ptrtoint ptr %ch.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ch.i, align 4
  %arrayidx32.i = getelementptr i16, ptr %call8.i.i.i, i32 2
  %50 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %arrayidx32.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else14.i, %if.then10.i
  %call34.i = call fastcc i32 @brcmf_p2p_escan(ptr noundef %add.ptr3, i32 noundef %..i, ptr noundef nonnull %call8.i.i.i, i32 noundef 2) #10
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %brcmf_p2p_act_frm_search.exit

brcmf_p2p_act_frm_search.exit:                    ; preds = %if.end33.i, %do.end5.i
  %err.0.i = phi i32 [ -12, %do.end5.i ], [ %call34.i, %if.end33.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ch.i) #10
  br label %if.end10

if.end10:                                         ; preds = %brcmf_p2p_act_frm_search.exit, %if.then6
  %err.0 = phi i32 [ %call8, %if.then6 ], [ %err.0.i, %brcmf_p2p_act_frm_search.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool11.not = icmp eq i32 %err.0, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %do.end

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end10
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %51 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, i32 noundef %err.0) #14
  %status = getelementptr i8, ptr %work, i32 -228
  %53 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %status, align 4
  %55 = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool17.not = icmp eq i32 %55, 0
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %if.then18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %act_frm_scan = getelementptr inbounds %struct.afx_hdl, ptr %work, i32 0, i32 1
  call void @complete(ptr noundef %act_frm_scan) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.end.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_feat_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !126, !128, !129, !131, !132, !134, !135, !136, !138, !140, !142, !143, !144, !146, !147, !148, !150, !152, !153, !154, !156, !158, !160, !162, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !192, !194, !196, !197, !198, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !250, !252, !254, !256, !258, !260, !261, !263, !264, !265, !267, !269, !271, !273, !275, !276, !278, !280, !282, !283, !284, !286, !287, !288, !290, !292, !294, !295, !296, !297, !299, !300, !301, !303, !304, !306, !307, !309, !311, !312, !313, !315, !316, !318, !320, !322, !323, !324, !325, !327, !328, !330, !331, !332, !333, !335, !337, !338, !339, !341, !342, !344, !346, !348}
!llvm.module.flags = !{!350, !351, !352, !353, !354, !355, !356, !357}
!llvm.ident = !{!358}

!0 = !{ptr @__func__.brcmf_p2p_scan_prep, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 909, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.brcmf_p2p_remain_on_channel, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 984, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.brcmf_p2p_notify_listen_complete, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1018, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1025, i32 4}
!11 = !{ptr @__func__.brcmf_p2p_scan_finding_common_channel, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1238, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1261, i32 3}
!16 = !{ptr @__func__.brcmf_p2p_notify_action_frame_rx, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1406, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1413, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1430, i32 5}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1451, i32 3}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1461, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @brcmf_p2p_notify_action_frame_rx._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @brcmf_p2p_notify_action_frame_rx._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__func__.brcmf_p2p_notify_action_tx_complete, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1500, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1766, i32 4}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @brcmf_p2p_send_action_frame._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @brcmf_p2p_send_action_frame._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1788, i32 4}
!44 = !{ptr @brcmf_p2p_send_action_frame._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @brcmf_p2p_send_action_frame._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1796, i32 3}
!48 = !{ptr @brcmf_p2p_send_action_frame._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @brcmf_p2p_send_action_frame._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1835, i32 4}
!52 = !{ptr @brcmf_p2p_send_action_frame._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @brcmf_p2p_send_action_frame._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1866, i32 3}
!56 = !{ptr @brcmf_p2p_send_action_frame._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @brcmf_p2p_send_action_frame._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1891, i32 4}
!60 = !{ptr @__func__.brcmf_p2p_notify_rx_mgmt_p2p_probereq, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1948, i32 2}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1962, i32 3}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1974, i32 3}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1979, i32 2}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1993, i32 2}
!71 = !{ptr @__func__.brcmf_p2p_ifchange, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2055, i32 2}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2059, i32 3}
!75 = !{ptr @brcmf_p2p_ifchange._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @brcmf_p2p_ifchange._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2065, i32 3}
!79 = !{ptr @brcmf_p2p_ifchange._entry.38, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @brcmf_p2p_ifchange._entry_ptr.40, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2080, i32 43}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2083, i32 3}
!85 = !{ptr @brcmf_p2p_ifchange._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @brcmf_p2p_ifchange._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2091, i32 3}
!89 = !{ptr @brcmf_p2p_ifchange._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @brcmf_p2p_ifchange._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @__func__.brcmf_p2p_add_vif, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2279, i32 2}
!93 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2314, i32 3}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2324, i32 3}
!98 = !{ptr @brcmf_p2p_add_vif._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @brcmf_p2p_add_vif._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2332, i32 3}
!102 = !{ptr @brcmf_p2p_add_vif._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @brcmf_p2p_add_vif._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2341, i32 3}
!106 = !{ptr @brcmf_p2p_add_vif._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @brcmf_p2p_add_vif._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2348, i32 31}
!110 = !{ptr @__func__.brcmf_p2p_del_vif, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2376, i32 2}
!112 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @__func__.brcmf_p2p_ifp_removed, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2438, i32 2}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2515, i32 4}
!118 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @brcmf_p2p_attach._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @brcmf_p2p_attach._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @__func__.brcmf_p2p_scan_is_p2p_request, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 522, i32 3}
!123 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 523, i32 15}
!126 = !{ptr @__func__.brcmf_p2p_find_listen_channel, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 873, i32 3}
!128 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__func__.brcmf_p2p_enable_discovery, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 590, i32 2}
!131 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 593, i32 3}
!134 = !{ptr @brcmf_p2p_enable_discovery._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @brcmf_p2p_enable_discovery._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 599, i32 3}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 605, i32 42}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 607, i32 3}
!142 = !{ptr @brcmf_p2p_enable_discovery._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @brcmf_p2p_enable_discovery._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 613, i32 3}
!146 = !{ptr @brcmf_p2p_enable_discovery._entry.72, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @brcmf_p2p_enable_discovery._entry_ptr.74, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 623, i32 43}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 625, i32 3}
!152 = !{ptr @brcmf_p2p_enable_discovery._entry.76, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @brcmf_p2p_enable_discovery._entry_ptr.78, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @__func__.brcmf_p2p_run_escan, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 785, i32 2}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 808, i32 4}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 812, i32 4}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 815, i32 4}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 830, i32 4}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 840, i32 3}
!166 = !{ptr @brcmf_p2p_run_escan._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @brcmf_p2p_run_escan._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 666, i32 3}
!170 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @brcmf_p2p_escan._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @brcmf_p2p_escan._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 694, i32 3}
!175 = !{ptr @brcmf_p2p_escan._entry.86, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @brcmf_p2p_escan._entry_ptr.88, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 740, i32 2}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 754, i32 44}
!181 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 940, i32 3}
!183 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @brcmf_p2p_discover_listen._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @brcmf_p2p_discover_listen._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 946, i32 3}
!188 = !{ptr @brcmf_p2p_discover_listen._entry.93, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @brcmf_p2p_discover_listen._entry_ptr.95, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @__func__.brcmf_p2p_set_discover_state, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 543, i32 2}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 548, i32 39}
!194 = !{ptr @__func__.brcmf_p2p_print_actframe, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 323, i32 4}
!196 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.100, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 327, i32 4}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 331, i32 4}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 335, i32 4}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 339, i32 4}
!207 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 343, i32 4}
!209 = !{ptr @.str.105, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 347, i32 4}
!211 = !{ptr @.str.106, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 351, i32 4}
!213 = !{ptr @.str.107, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 355, i32 4}
!215 = !{ptr @.str.108, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 359, i32 4}
!217 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 367, i32 4}
!219 = !{ptr @.str.110, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 371, i32 4}
!221 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 375, i32 4}
!223 = !{ptr @.str.112, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 379, i32 4}
!225 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 383, i32 4}
!227 = !{ptr @.str.114, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 391, i32 4}
!229 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 395, i32 4}
!231 = !{ptr @.str.116, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 399, i32 4}
!233 = !{ptr @.str.117, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 403, i32 4}
!235 = !{ptr @.str.118, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 407, i32 4}
!237 = !{ptr @.str.119, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 234, i32 28}
!239 = !{ptr @__func__.brcmf_p2p_gon_req_collision, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1342, i32 2}
!241 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1348, i32 2}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1356, i32 3}
!245 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1371, i32 2}
!247 = !{ptr @__func__.brcmf_p2p_stop_wait_next_action_frame, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1308, i32 3}
!249 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1321, i32 3}
!252 = !{ptr @__func__.brcmf_p2p_abort_action_frame, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1281, i32 2}
!254 = !{ptr @.str.125, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1284, i32 44}
!256 = !{ptr @.str.126, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1287, i32 3}
!258 = !{ptr @__func__.brcmf_p2p_pub_af_tx, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1627, i32 3}
!260 = !{ptr @.str.127, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1693, i32 3}
!263 = !{ptr @brcmf_p2p_pub_af_tx._entry, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @brcmf_p2p_pub_af_tx._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @__func__.brcmf_p2p_af_searching_channel, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1156, i32 2}
!267 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1172, i32 3}
!269 = !{ptr @.str.130, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1184, i32 4}
!271 = !{ptr @.str.131, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1206, i32 2}
!273 = !{ptr @__func__.brcmf_p2p_check_dwell_overflow, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1706, i32 3}
!275 = !{ptr @.str.132, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @__func__.brcmf_p2p_tx_action_frame, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1549, i32 2}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1562, i32 44}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1565, i32 3}
!282 = !{ptr @brcmf_p2p_tx_action_frame._entry, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @brcmf_p2p_tx_action_frame._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1579, i32 2}
!286 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.137, !285, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1586, i32 3}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1589, i32 3}
!292 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2166, i32 3}
!294 = !{ptr @.str.141, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @brcmf_p2p_create_p2pdev._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @brcmf_p2p_create_p2pdev._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.143, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2174, i32 3}
!299 = !{ptr @brcmf_p2p_create_p2pdev._entry.142, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @brcmf_p2p_create_p2pdev._entry_ptr.144, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @brcmf_p2p_create_p2pdev._entry.145, !302, !"_entry", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2188, i32 3}
!303 = !{ptr @brcmf_p2p_create_p2pdev._entry_ptr.146, !302, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @brcmf_p2p_create_p2pdev._entry.147, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2200, i32 3}
!306 = !{ptr @brcmf_p2p_create_p2pdev._entry_ptr.148, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.149, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2212, i32 41}
!309 = !{ptr @.str.151, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2214, i32 3}
!311 = !{ptr @brcmf_p2p_create_p2pdev._entry.150, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @brcmf_p2p_create_p2pdev._entry_ptr.152, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @brcmf_p2p_create_p2pdev.__key, !314, !"__key", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2221, i32 2}
!315 = !{ptr @.str.153, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.154, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 435, i32 31}
!318 = !{ptr @.str.155, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 445, i32 38}
!320 = !{ptr @.str.156, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 448, i32 3}
!322 = !{ptr @.str.157, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @brcmf_p2p_set_firmware._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @brcmf_p2p_set_firmware._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @init_completion.__key, !326, !"__key", i1 false, i1 false}
!326 = !{!"../include/linux/completion.h", i32 87, i32 2}
!327 = !{ptr @.str.158, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.159, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1136, i32 3}
!330 = !{ptr @.str.160, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @brcmf_p2p_afx_handler._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @brcmf_p2p_afx_handler._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @__func__.brcmf_p2p_act_frm_search, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1071, i32 2}
!335 = !{ptr @.str.161, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 1080, i32 3}
!337 = !{ptr @brcmf_p2p_act_frm_search._entry, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @brcmf_p2p_act_frm_search._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @__func__.brcmf_p2p_get_conn_idx, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2244, i32 5}
!341 = !{ptr @.str.162, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.163, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2117, i32 38}
!344 = !{ptr @.str.164, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2130, i32 39}
!346 = !{ptr @__func__.brcmf_p2p_deinit_discovery, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 564, i32 2}
!348 = !{ptr @.str.165, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c", i32 2140, i32 39}
!350 = !{i32 1, !"wchar_size", i32 2}
!351 = !{i32 1, !"min_enum_size", i32 4}
!352 = !{i32 8, !"branch-target-enforcement", i32 0}
!353 = !{i32 8, !"sign-return-address", i32 0}
!354 = !{i32 8, !"sign-return-address-all", i32 0}
!355 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!356 = !{i32 7, !"uwtable", i32 1}
!357 = !{i32 7, !"frame-pointer", i32 2}
!358 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!359 = !{!"branch_weights", i32 1, i32 2000}
!360 = !{i64 2157077367, i64 2157077855, i64 2157077404, i64 2157077460, i64 2157077494, i64 2157077518, i64 2157077559, i64 2157077580, i64 2157077608, i64 2157077642}
!361 = !{i8 0, i8 2}
!362 = !{!"auto-init"}
!363 = !{!"branch_weights", i32 2000, i32 1}
