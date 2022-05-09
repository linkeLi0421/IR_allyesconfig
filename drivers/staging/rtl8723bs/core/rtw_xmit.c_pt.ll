; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_xmit.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_xmit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }
%union.Keytype = type { [4 x i32] }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hw_xmit = type { ptr, i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.mic_data = type { i32, i32, i32, i32, i32, i32 }
%struct.pkt_file = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.ieee80211_snap_hdr = type { i8, i8, i8, [3 x i8] }
%struct.anon.101 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@_rtw_init_sta_xmit_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&psta_xmitpriv->lock\00", [43 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pxmitpriv->lock\00", [47 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&pxmitpriv->lock_sctx\00", [42 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pxmitpriv->be_pending.lock\00", [36 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pxmitpriv->bk_pending.lock\00", [36 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pxmitpriv->vi_pending.lock\00", [36 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pxmitpriv->vo_pending.lock\00", [36 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pxmitpriv->bm_pending.lock\00", [36 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&pxmitpriv->free_xmit_queue.lock\00", [63 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&pxmitpriv->free_xmitbuf_queue.lock\00", [60 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&pxmitpriv->pending_xmitbuf_queue.lock\00", [57 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&pxmitpriv->free_xframe_ext_queue.lock\00", [57 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&pxmitpriv->free_xmit_extbuf_queue.lock\00", [56 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pxmitpriv->ack_tx_mutex\00", [39 x i8] zeroinitializer }, align 32
@rtw_xmit.start = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtw_xmit.drop_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/rtl8723bs/core/rtw_xmit.c\00", [54 x i8] zeroinitializer }, align 32
@_init_txservq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&ptxservq->sta_pending.lock\00", [36 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@update_attrib.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.26, ptr @.str.32, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"update_attrib\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send eapol packet\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.rtw_get_ff_hwaddr = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 2, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4, i32 6], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 160, i64 192]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 8, i64 4, i64 7, i64 11, i64 15, i64 127]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34958]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 67, i64 68]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 34958]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 34958]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.59 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.60 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 72, i64 200]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 25, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 42, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 43, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 54, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 56, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 58, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 60, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 62, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 65, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 107, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 109, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 158, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 192, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 265, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 1940, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant [9 x i8] c"drop_cnt\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 1941, i32 13 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 2010, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 17, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 87, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [45 x i8] c"../drivers/staging/rtl8723bs/core/rtw_xmit.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 685, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [31 x i8] c"switch.table.rtw_get_ff_hwaddr\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @_rtw_init_sta_xmit_priv.__key, ptr @.str, ptr @_rtw_init_xmit_priv.__key, ptr @.str.1, ptr @_rtw_init_xmit_priv.__key.2, ptr @.str.3, ptr @_rtw_init_xmit_priv.__key.4, ptr @.str.5, ptr @_rtw_init_xmit_priv.__key.6, ptr @.str.7, ptr @_rtw_init_xmit_priv.__key.8, ptr @.str.9, ptr @_rtw_init_xmit_priv.__key.10, ptr @.str.11, ptr @_rtw_init_xmit_priv.__key.12, ptr @.str.13, ptr @_rtw_init_xmit_priv.__key.14, ptr @.str.15, ptr @_rtw_init_xmit_priv.__key.16, ptr @.str.17, ptr @_rtw_init_xmit_priv.__key.18, ptr @.str.19, ptr @_rtw_init_xmit_priv.__key.20, ptr @.str.21, ptr @_rtw_init_xmit_priv.__key.22, ptr @.str.23, ptr @_rtw_init_xmit_priv.__key.24, ptr @.str.25, ptr @rtw_xmit.start, ptr @rtw_xmit.drop_cnt, ptr @.str.26, ptr @_init_txservq.__key, ptr @.str.28, ptr @init_completion.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.rtw_get_ff_hwaddr], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_xmit_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_xmit.start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_xmit.drop_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_txservq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_get_ff_hwaddr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_init_sta_xmit_priv(ptr noundef %psta_xmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %psta_xmitpriv, i32 0, i32 356)
  tail call void @__raw_spin_lock_init(ptr noundef %psta_xmitpriv, ptr noundef nonnull @.str, ptr noundef nonnull @_rtw_init_sta_xmit_priv.__key, i16 noundef signext 3) #15
  %be_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3
  %1 = ptrtoint ptr %be_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %be_q, ptr %be_q, align 4
  %prev.i.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %be_q, ptr %prev.i.i, align 4
  %sta_pending.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %sta_pending.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %sta_pending.i, ptr %sta_pending.i, align 4
  %prev.i5.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sta_pending.i, ptr %prev.i5.i, align 4
  %lock.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #15
  %qcnt.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qcnt.i, align 4
  %bk_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4
  %6 = ptrtoint ptr %bk_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %bk_q, ptr %bk_q, align 4
  %prev.i.i8 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bk_q, ptr %prev.i.i8, align 4
  %sta_pending.i9 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %sta_pending.i9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %sta_pending.i9, ptr %sta_pending.i9, align 4
  %prev.i5.i10 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i5.i10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sta_pending.i9, ptr %prev.i5.i10, align 4
  %lock.i11 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i11, ptr noundef nonnull @.str.28, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #15
  %qcnt.i12 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %qcnt.i12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qcnt.i12, align 4
  %vi_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5
  %11 = ptrtoint ptr %vi_q to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %vi_q, ptr %vi_q, align 4
  %prev.i.i13 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vi_q, ptr %prev.i.i13, align 4
  %sta_pending.i14 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %sta_pending.i14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %sta_pending.i14, ptr %sta_pending.i14, align 4
  %prev.i5.i15 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i5.i15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sta_pending.i14, ptr %prev.i5.i15, align 4
  %lock.i16 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i16, ptr noundef nonnull @.str.28, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #15
  %qcnt.i17 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %qcnt.i17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qcnt.i17, align 4
  %vo_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6
  %16 = ptrtoint ptr %vo_q to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %vo_q, ptr %vo_q, align 4
  %prev.i.i18 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vo_q, ptr %prev.i.i18, align 4
  %sta_pending.i19 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %sta_pending.i19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %sta_pending.i19, ptr %sta_pending.i19, align 4
  %prev.i5.i20 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i5.i20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sta_pending.i19, ptr %prev.i5.i20, align 4
  %lock.i21 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i21, ptr noundef nonnull @.str.28, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #15
  %qcnt.i22 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %qcnt.i22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %qcnt.i22, align 4
  %legacy_dz = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 7
  %21 = ptrtoint ptr %legacy_dz to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %legacy_dz, ptr %legacy_dz, align 4
  %prev.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %legacy_dz, ptr %prev.i, align 4
  %apsd = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 8
  %23 = ptrtoint ptr %apsd to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %apsd, ptr %apsd, align 4
  %prev.i23 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %apsd, ptr %prev.i23, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_init_xmit_priv(ptr noundef %pxmitpriv, ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %pxmitpriv, ptr noundef nonnull @.str.1, ptr noundef nonnull @_rtw_init_xmit_priv.__key, i16 noundef signext 3) #15
  %lock_sctx = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 46
  tail call void @__raw_spin_lock_init(ptr noundef %lock_sctx, ptr noundef nonnull @.str.3, ptr noundef nonnull @_rtw_init_xmit_priv.__key.2, i16 noundef signext 3) #15
  %xmit_comp = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1
  %0 = ptrtoint ptr %xmit_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %xmit_comp, align 4
  %wait.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #15
  %terminate_xmitthread_comp = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 2
  %1 = ptrtoint ptr %terminate_xmitthread_comp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %terminate_xmitthread_comp, align 4
  %wait.i385 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i385, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #15
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 17
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %padapter, ptr %adapter, align 4
  %be_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 3
  %3 = ptrtoint ptr %be_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %be_pending, ptr %be_pending, align 4
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %be_pending, ptr %prev.i, align 4
  %lock7 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock7, ptr noundef nonnull @.str.5, ptr noundef nonnull @_rtw_init_xmit_priv.__key.4, i16 noundef signext 3) #15
  %bk_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 4
  %5 = ptrtoint ptr %bk_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %bk_pending, ptr %bk_pending, align 4
  %prev.i386 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i386 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bk_pending, ptr %prev.i386, align 4
  %lock14 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock14, ptr noundef nonnull @.str.7, ptr noundef nonnull @_rtw_init_xmit_priv.__key.6, i16 noundef signext 3) #15
  %vi_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 5
  %7 = ptrtoint ptr %vi_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %vi_pending, ptr %vi_pending, align 4
  %prev.i387 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i387 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vi_pending, ptr %prev.i387, align 4
  %lock21 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock21, ptr noundef nonnull @.str.9, ptr noundef nonnull @_rtw_init_xmit_priv.__key.8, i16 noundef signext 3) #15
  %vo_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 6
  %9 = ptrtoint ptr %vo_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %vo_pending, ptr %vo_pending, align 4
  %prev.i388 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i388 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vo_pending, ptr %prev.i388, align 4
  %lock28 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock28, ptr noundef nonnull @.str.11, ptr noundef nonnull @_rtw_init_xmit_priv.__key.10, i16 noundef signext 3) #15
  %bm_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 7
  %11 = ptrtoint ptr %bm_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %bm_pending, ptr %bm_pending, align 4
  %prev.i389 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i389 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bm_pending, ptr %prev.i389, align 4
  %lock35 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock35, ptr noundef nonnull @.str.13, ptr noundef nonnull @_rtw_init_xmit_priv.__key.12, i16 noundef signext 3) #15
  %free_xmit_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 11
  %13 = ptrtoint ptr %free_xmit_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %free_xmit_queue, ptr %free_xmit_queue, align 4
  %prev.i390 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 11, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i390 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %free_xmit_queue, ptr %prev.i390, align 4
  %lock42 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 11, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock42, ptr noundef nonnull @.str.15, ptr noundef nonnull @_rtw_init_xmit_priv.__key.14, i16 noundef signext 3) #15
  %call46 = tail call noalias ptr @vzalloc(i32 noundef 49156) #18
  %pallocated_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 8
  %15 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call46, ptr %pallocated_frame_buf, align 8
  %tobool.not = icmp eq ptr %call46, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pxmit_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 9
  %16 = ptrtoint ptr %pxmit_frame_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pxmit_frame_buf, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %call46 to i32
  %sub = add i32 %17, 3
  %div381 = and i32 %sub, -4
  %18 = inttoptr i32 %div381 to ptr
  %pxmit_frame_buf49 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 9
  %19 = ptrtoint ptr %pxmit_frame_buf49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %pxmit_frame_buf49, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %pxframe.0421 = phi ptr [ %18, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.0420 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %20 = ptrtoint ptr %pxframe.0421 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %pxframe.0421, ptr %pxframe.0421, align 4
  %prev.i391 = getelementptr inbounds %struct.list_head, ptr %pxframe.0421, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i391 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pxframe.0421, ptr %prev.i391, align 4
  %padapter51 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0421, i32 0, i32 4
  %22 = ptrtoint ptr %padapter51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %padapter, ptr %padapter51, align 4
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0421, i32 0, i32 3
  %23 = ptrtoint ptr %frame_tag to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %frame_tag, align 4
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0421, i32 0, i32 2
  %24 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pkt, align 4
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0421, i32 0, i32 5
  %25 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %buf_addr, align 4
  %pxmitbuf52 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0421, i32 0, i32 6
  %26 = ptrtoint ptr %pxmitbuf52 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %pxmitbuf52, align 4
  %27 = ptrtoint ptr %prev.i390 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i390, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pxframe.0421, ptr noundef %28, ptr noundef %free_xmit_queue) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %prev.i390 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pxframe.0421, ptr %prev.i390, align 4
  %30 = ptrtoint ptr %pxframe.0421 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %free_xmit_queue, ptr %pxframe.0421, align 4
  %31 = ptrtoint ptr %prev.i391 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev.i391, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %pxframe.0421, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.xmit_frame, ptr %pxframe.0421, i32 1
  %inc = add nuw nsw i32 %i.0420, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %free_xmitframe_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  %33 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 256, ptr %free_xmitframe_cnt, align 8
  %frag_len = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 16
  %34 = ptrtoint ptr %frag_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2346, ptr %frag_len, align 8
  %free_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31
  %35 = ptrtoint ptr %free_xmitbuf_queue to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %free_xmitbuf_queue, ptr %free_xmitbuf_queue, align 4
  %prev.i393 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i393 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %free_xmitbuf_queue, ptr %prev.i393, align 4
  %lock59 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock59, ptr noundef nonnull @.str.17, ptr noundef nonnull @_rtw_init_xmit_priv.__key.16, i16 noundef signext 3) #15
  %pending_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32
  %37 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %pending_xmitbuf_queue, ptr %pending_xmitbuf_queue, align 4
  %prev.i394 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i394 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pending_xmitbuf_queue, ptr %prev.i394, align 4
  %lock66 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock66, ptr noundef nonnull @.str.19, ptr noundef nonnull @_rtw_init_xmit_priv.__key.18, i16 noundef signext 3) #15
  %call70 = tail call noalias ptr @vzalloc(i32 noundef 1028) #18
  %pallocated_xmitbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 33
  %39 = ptrtoint ptr %pallocated_xmitbuf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call70, ptr %pallocated_xmitbuf, align 8
  %tobool72.not = icmp eq ptr %call70, null
  br i1 %tobool72.not, label %for.end.exit_crit_edge, label %if.end74

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end74:                                         ; preds = %for.end
  %40 = ptrtoint ptr %call70 to i32
  %sub77 = add i32 %40, 3
  %div78382 = and i32 %sub77, -4
  %41 = inttoptr i32 %div78382 to ptr
  %pxmitbuf80 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 34
  %42 = ptrtoint ptr %pxmitbuf80 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %pxmitbuf80, align 4
  br label %for.body84

for.body84:                                       ; preds = %list_add_tail.exit400.for.body84_crit_edge, %if.end74
  %pxmitbuf.0424 = phi ptr [ %41, %if.end74 ], [ %incdec.ptr100, %list_add_tail.exit400.for.body84_crit_edge ]
  %i.1423 = phi i32 [ 0, %if.end74 ], [ %inc102, %list_add_tail.exit400.for.body84_crit_edge ]
  %43 = ptrtoint ptr %pxmitbuf.0424 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %pxmitbuf.0424, ptr %pxmitbuf.0424, align 4
  %prev.i395 = getelementptr inbounds %struct.list_head, ptr %pxmitbuf.0424, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i395 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %pxmitbuf.0424, ptr %prev.i395, align 4
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 4
  %45 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %priv_data, align 4
  %padapter86 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 1
  %46 = ptrtoint ptr %padapter86 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %padapter, ptr %padapter86, align 4
  %buf_tag = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 5
  %47 = ptrtoint ptr %buf_tag to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %buf_tag, align 4
  %call87 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %pxmitbuf.0424, i32 noundef 20992, i8 noundef zeroext 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then89, label %for.body84.if.end94_crit_edge

for.body84.if.end94_crit_edge:                    ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then89:                                        ; preds = %for.body84
  tail call void @msleep(i32 noundef 10) #15
  %call90 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %pxmitbuf.0424, i32 noundef 20992, i8 noundef zeroext 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then89.exit_crit_edge, label %if.then89.if.end94_crit_edge

if.then89.if.end94_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then89.exit_crit_edge:                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end94:                                         ; preds = %if.then89.if.end94_crit_edge, %for.body84.if.end94_crit_edge
  %pbuf = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 3
  %48 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pbuf, align 4
  %phead = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 10
  %50 = ptrtoint ptr %phead to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %phead, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 20480
  %pend = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 13
  %51 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr, ptr %pend, align 4
  %len = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 8
  %52 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %len, align 4
  %ptail = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 12
  %53 = ptrtoint ptr %ptail to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %49, ptr %ptail, align 4
  %pdata = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 11
  %54 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %49, ptr %pdata, align 4
  %flags = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0424, i32 0, i32 6
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags, align 2
  %56 = ptrtoint ptr %prev.i393 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i393, align 4
  %call.i.i397 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitbuf.0424, ptr noundef %57, ptr noundef %free_xmitbuf_queue) #15
  br i1 %call.i.i397, label %if.end.i.i399, label %if.end94.list_add_tail.exit400_crit_edge

if.end94.list_add_tail.exit400_crit_edge:         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit400

if.end.i.i399:                                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %prev.i393 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %pxmitbuf.0424, ptr %prev.i393, align 4
  %59 = ptrtoint ptr %pxmitbuf.0424 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %free_xmitbuf_queue, ptr %pxmitbuf.0424, align 4
  %60 = ptrtoint ptr %prev.i395 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev.i395, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %pxmitbuf.0424, ptr %57, align 4
  br label %list_add_tail.exit400

list_add_tail.exit400:                            ; preds = %if.end.i.i399, %if.end94.list_add_tail.exit400_crit_edge
  %incdec.ptr100 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.0424, i32 1
  %inc102 = add nuw nsw i32 %i.1423, 1
  %exitcond437.not = icmp eq i32 %inc102, 16
  br i1 %exitcond437.not, label %for.end103, label %list_add_tail.exit400.for.body84_crit_edge

list_add_tail.exit400.for.body84_crit_edge:       ; preds = %list_add_tail.exit400
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body84

for.end103:                                       ; preds = %list_add_tail.exit400
  %free_xmitbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 35
  %62 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16, ptr %free_xmitbuf_cnt, align 8
  %free_xframe_ext_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 15
  %63 = ptrtoint ptr %free_xframe_ext_queue to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %free_xframe_ext_queue, ptr %free_xframe_ext_queue, align 4
  %prev.i401 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 15, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i401 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %free_xframe_ext_queue, ptr %prev.i401, align 4
  %lock107 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 15, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock107, ptr noundef nonnull @.str.21, ptr noundef nonnull @_rtw_init_xmit_priv.__key.20, i16 noundef signext 3) #15
  %call111 = tail call noalias ptr @vzalloc(i32 noundef 6148) #18
  %xframe_ext_alloc_addr = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 12
  %65 = ptrtoint ptr %xframe_ext_alloc_addr to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call111, ptr %xframe_ext_alloc_addr, align 8
  %tobool113.not = icmp eq ptr %call111, null
  br i1 %tobool113.not, label %if.then114, label %if.end115

if.then114:                                       ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #17
  %xframe_ext = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13
  %66 = ptrtoint ptr %xframe_ext to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %xframe_ext, align 4
  br label %exit

if.end115:                                        ; preds = %for.end103
  %67 = ptrtoint ptr %call111 to i32
  %sub118 = add i32 %67, 3
  %div119383 = and i32 %sub118, -4
  %68 = inttoptr i32 %div119383 to ptr
  %xframe_ext121 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13
  %69 = ptrtoint ptr %xframe_ext121 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %xframe_ext121, align 4
  br label %for.body125

for.body125:                                      ; preds = %list_add_tail.exit407.for.body125_crit_edge, %if.end115
  %pxframe.1427 = phi ptr [ %68, %if.end115 ], [ %incdec.ptr135, %list_add_tail.exit407.for.body125_crit_edge ]
  %i.2426 = phi i32 [ 0, %if.end115 ], [ %inc137, %list_add_tail.exit407.for.body125_crit_edge ]
  %70 = ptrtoint ptr %pxframe.1427 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %pxframe.1427, ptr %pxframe.1427, align 4
  %prev.i402 = getelementptr inbounds %struct.list_head, ptr %pxframe.1427, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i402 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %pxframe.1427, ptr %prev.i402, align 4
  %padapter127 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.1427, i32 0, i32 4
  %72 = ptrtoint ptr %padapter127 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %padapter, ptr %padapter127, align 4
  %frame_tag128 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.1427, i32 0, i32 3
  %73 = ptrtoint ptr %frame_tag128 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %frame_tag128, align 4
  %pkt129 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.1427, i32 0, i32 2
  %74 = ptrtoint ptr %pkt129 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %pkt129, align 4
  %buf_addr130 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.1427, i32 0, i32 5
  %75 = ptrtoint ptr %buf_addr130 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %buf_addr130, align 4
  %pxmitbuf131 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.1427, i32 0, i32 6
  %76 = ptrtoint ptr %pxmitbuf131 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %pxmitbuf131, align 4
  %ext_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.1427, i32 0, i32 11
  %77 = ptrtoint ptr %ext_tag to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %ext_tag, align 4
  %78 = ptrtoint ptr %prev.i401 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i401, align 4
  %call.i.i404 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxframe.1427, ptr noundef %79, ptr noundef %free_xframe_ext_queue) #15
  br i1 %call.i.i404, label %if.end.i.i406, label %for.body125.list_add_tail.exit407_crit_edge

for.body125.list_add_tail.exit407_crit_edge:      ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit407

if.end.i.i406:                                    ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %prev.i401 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %pxframe.1427, ptr %prev.i401, align 4
  %81 = ptrtoint ptr %pxframe.1427 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %free_xframe_ext_queue, ptr %pxframe.1427, align 4
  %82 = ptrtoint ptr %prev.i402 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev.i402, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %pxframe.1427, ptr %79, align 4
  br label %list_add_tail.exit407

list_add_tail.exit407:                            ; preds = %if.end.i.i406, %for.body125.list_add_tail.exit407_crit_edge
  %incdec.ptr135 = getelementptr %struct.xmit_frame, ptr %pxframe.1427, i32 1
  %inc137 = add nuw nsw i32 %i.2426, 1
  %exitcond438.not = icmp eq i32 %inc137, 32
  br i1 %exitcond438.not, label %for.end138, label %list_add_tail.exit407.for.body125_crit_edge

list_add_tail.exit407.for.body125_crit_edge:      ; preds = %list_add_tail.exit407
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body125

for.end138:                                       ; preds = %list_add_tail.exit407
  %free_xframe_ext_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 14
  %84 = ptrtoint ptr %free_xframe_ext_cnt to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 32, ptr %free_xframe_ext_cnt, align 8
  %free_xmit_extbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36
  %85 = ptrtoint ptr %free_xmit_extbuf_queue to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %free_xmit_extbuf_queue, ptr %free_xmit_extbuf_queue, align 4
  %prev.i408 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i408 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %free_xmit_extbuf_queue, ptr %prev.i408, align 4
  %lock142 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock142, ptr noundef nonnull @.str.23, ptr noundef nonnull @_rtw_init_xmit_priv.__key.22, i16 noundef signext 3) #15
  %call146 = tail call noalias ptr @vzalloc(i32 noundef 2052) #18
  %pallocated_xmit_extbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 37
  %87 = ptrtoint ptr %pallocated_xmit_extbuf to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call146, ptr %pallocated_xmit_extbuf, align 8
  %tobool148.not = icmp eq ptr %call146, null
  br i1 %tobool148.not, label %for.end138.exit_crit_edge, label %if.end150

for.end138.exit_crit_edge:                        ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end150:                                        ; preds = %for.end138
  %88 = ptrtoint ptr %call146 to i32
  %sub153 = add i32 %88, 3
  %div154384 = and i32 %sub153, -4
  %89 = inttoptr i32 %div154384 to ptr
  %pxmit_extbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 38
  %90 = ptrtoint ptr %pxmit_extbuf to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %pxmit_extbuf, align 4
  br label %for.body159

for.body159:                                      ; preds = %list_add_tail.exit414.for.body159_crit_edge, %if.end150
  %pxmitbuf.1430 = phi ptr [ %89, %if.end150 ], [ %incdec.ptr180, %list_add_tail.exit414.for.body159_crit_edge ]
  %i.3429 = phi i32 [ 0, %if.end150 ], [ %inc182, %list_add_tail.exit414.for.body159_crit_edge ]
  %91 = ptrtoint ptr %pxmitbuf.1430 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %pxmitbuf.1430, ptr %pxmitbuf.1430, align 4
  %prev.i409 = getelementptr inbounds %struct.list_head, ptr %pxmitbuf.1430, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i409 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %pxmitbuf.1430, ptr %prev.i409, align 4
  %priv_data161 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1430, i32 0, i32 4
  %93 = ptrtoint ptr %priv_data161 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %priv_data161, align 4
  %padapter162 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1430, i32 0, i32 1
  %94 = ptrtoint ptr %padapter162 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %padapter, ptr %padapter162, align 4
  %buf_tag163 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1430, i32 0, i32 5
  %95 = ptrtoint ptr %buf_tag163 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %buf_tag163, align 4
  %call164 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %pxmitbuf.1430, i32 noundef 2048, i8 noundef zeroext 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %for.body159.exit_crit_edge, label %if.end167

for.body159.exit_crit_edge:                       ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end167:                                        ; preds = %for.body159
  %pbuf168 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1430, i32 0, i32 3
  %96 = ptrtoint ptr %pbuf168 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pbuf168, align 4
  %phead169 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1430, i32 0, i32 10
  %98 = ptrtoint ptr %phead169 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %phead169, align 4
  %add.ptr171 = getelementptr i8, ptr %97, i32 1536
  %pend172 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1430, i32 0, i32 13
  %99 = ptrtoint ptr %pend172 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr171, ptr %pend172, align 4
  %len173 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1430, i32 0, i32 8
  %100 = ptrtoint ptr %len173 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %len173, align 4
  %ptail175 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1430, i32 0, i32 12
  %101 = ptrtoint ptr %ptail175 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %97, ptr %ptail175, align 4
  %pdata176 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1430, i32 0, i32 11
  %102 = ptrtoint ptr %pdata176 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %97, ptr %pdata176, align 4
  %103 = ptrtoint ptr %prev.i408 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i408, align 4
  %call.i.i411 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitbuf.1430, ptr noundef %104, ptr noundef %free_xmit_extbuf_queue) #15
  br i1 %call.i.i411, label %if.end.i.i413, label %if.end167.list_add_tail.exit414_crit_edge

if.end167.list_add_tail.exit414_crit_edge:        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit414

if.end.i.i413:                                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  %105 = ptrtoint ptr %prev.i408 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %pxmitbuf.1430, ptr %prev.i408, align 4
  %106 = ptrtoint ptr %pxmitbuf.1430 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %free_xmit_extbuf_queue, ptr %pxmitbuf.1430, align 4
  %107 = ptrtoint ptr %prev.i409 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev.i409, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %pxmitbuf.1430, ptr %104, align 4
  br label %list_add_tail.exit414

list_add_tail.exit414:                            ; preds = %if.end.i.i413, %if.end167.list_add_tail.exit414_crit_edge
  %incdec.ptr180 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.1430, i32 1
  %inc182 = add nuw nsw i32 %i.3429, 1
  %exitcond439.not = icmp eq i32 %inc182, 32
  br i1 %exitcond439.not, label %for.end183, label %list_add_tail.exit414.for.body159_crit_edge

list_add_tail.exit414.for.body159_crit_edge:      ; preds = %list_add_tail.exit414
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body159

for.end183:                                       ; preds = %list_add_tail.exit414
  %free_xmit_extbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 39
  %109 = ptrtoint ptr %free_xmit_extbuf_cnt to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 32, ptr %free_xmit_extbuf_cnt, align 8
  %arrayidx = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0
  %tobool187.not = icmp eq ptr %arrayidx, null
  br i1 %tobool187.not, label %for.end183.for.inc207_crit_edge, label %if.then188

for.end183.for.inc207_crit_edge:                  ; preds = %for.end183
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc207

if.then188:                                       ; preds = %for.end183
  %110 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i415 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i415 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %arrayidx, ptr %prev.i415, align 4
  %priv_data190 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 4
  %112 = ptrtoint ptr %priv_data190 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %priv_data190, align 4
  %padapter191 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 1
  %113 = ptrtoint ptr %padapter191 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %padapter, ptr %padapter191, align 4
  %buf_tag192 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 5
  %114 = ptrtoint ptr %buf_tag192 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 2, ptr %buf_tag192, align 4
  %call193 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef nonnull %arrayidx, i32 noundef 5632, i8 noundef zeroext 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %if.then188.exit_crit_edge, label %if.end196

if.then188.exit_crit_edge:                        ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end196:                                        ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #17
  %pbuf197 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 3
  %115 = ptrtoint ptr %pbuf197 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pbuf197, align 4
  %phead198 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 10
  %117 = ptrtoint ptr %phead198 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %phead198, align 4
  %add.ptr200 = getelementptr i8, ptr %116, i32 5120
  %pend201 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 13
  %118 = ptrtoint ptr %pend201 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr200, ptr %pend201, align 4
  %len202 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 8
  %119 = ptrtoint ptr %len202 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %len202, align 4
  %ptail204 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 12
  %120 = ptrtoint ptr %ptail204 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %116, ptr %ptail204, align 4
  %pdata205 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 11
  %121 = ptrtoint ptr %pdata205 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %116, ptr %pdata205, align 4
  %alloc_sz = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0, i32 7
  %122 = ptrtoint ptr %alloc_sz to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 5632, ptr %alloc_sz, align 4
  br label %for.inc207

for.inc207:                                       ; preds = %if.end196, %for.end183.for.inc207_crit_edge
  %arrayidx.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1
  %tobool187.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool187.not.1, label %for.inc207.for.inc207.1_crit_edge, label %if.then188.1

for.inc207.for.inc207.1_crit_edge:                ; preds = %for.inc207
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc207.1

if.then188.1:                                     ; preds = %for.inc207
  %123 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i415.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i415.1 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %arrayidx.1, ptr %prev.i415.1, align 4
  %priv_data190.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 4
  %125 = ptrtoint ptr %priv_data190.1 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %priv_data190.1, align 4
  %padapter191.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 1
  %126 = ptrtoint ptr %padapter191.1 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %padapter, ptr %padapter191.1, align 4
  %buf_tag192.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 5
  %127 = ptrtoint ptr %buf_tag192.1 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 2, ptr %buf_tag192.1, align 4
  %call193.1 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef nonnull %arrayidx.1, i32 noundef 5632, i8 noundef zeroext 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.1)
  %cmp194.1 = icmp eq i32 %call193.1, 0
  br i1 %cmp194.1, label %if.then188.1.exit_crit_edge, label %if.end196.1

if.then188.1.exit_crit_edge:                      ; preds = %if.then188.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end196.1:                                      ; preds = %if.then188.1
  call void @__sanitizer_cov_trace_pc() #17
  %pbuf197.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 3
  %128 = ptrtoint ptr %pbuf197.1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pbuf197.1, align 4
  %phead198.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 10
  %130 = ptrtoint ptr %phead198.1 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %phead198.1, align 4
  %add.ptr200.1 = getelementptr i8, ptr %129, i32 5120
  %pend201.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 13
  %131 = ptrtoint ptr %pend201.1 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %add.ptr200.1, ptr %pend201.1, align 4
  %len202.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 8
  %132 = ptrtoint ptr %len202.1 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %len202.1, align 4
  %ptail204.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 12
  %133 = ptrtoint ptr %ptail204.1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %129, ptr %ptail204.1, align 4
  %pdata205.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 11
  %134 = ptrtoint ptr %pdata205.1 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %129, ptr %pdata205.1, align 4
  %alloc_sz.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1, i32 7
  %135 = ptrtoint ptr %alloc_sz.1 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 5632, ptr %alloc_sz.1, align 4
  br label %for.inc207.1

for.inc207.1:                                     ; preds = %if.end196.1, %for.inc207.for.inc207.1_crit_edge
  %hwxmit_entry.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 26
  %136 = ptrtoint ptr %hwxmit_entry.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 4, ptr %hwxmit_entry.i, align 4
  %hwxmits1.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 25
  %137 = ptrtoint ptr %hwxmits1.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %hwxmits1.i, align 8
  %call.i = tail call ptr @_rtw_zmalloc(i32 noundef 32) #15
  %138 = ptrtoint ptr %hwxmits1.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call.i, ptr %hwxmits1.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.inc207.1.exit_crit_edge, label %if.end.i

for.inc207.1.exit_crit_edge:                      ; preds = %for.inc207.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end.i:                                         ; preds = %for.inc207.1
  %139 = ptrtoint ptr %hwxmit_entry.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %hwxmit_entry.i, align 4
  %141 = zext i8 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values)
  switch i8 %140, label %if.end.i.if.end213_crit_edge [
    i8 5, label %if.then9.i
    i8 4, label %if.then22.i
  ]

if.end.i.if.end213_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end213

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %bm_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 7
  %142 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %bm_pending.i, ptr %call.i, align 4
  %vo_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 6
  %arrayidx10.i = getelementptr %struct.hw_xmit, ptr %call.i, i32 1
  %143 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %vo_pending.i, ptr %arrayidx10.i, align 4
  %vi_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %arrayidx12.i = getelementptr %struct.hw_xmit, ptr %call.i, i32 2
  %144 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %vi_pending.i, ptr %arrayidx12.i, align 4
  %bk_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  %arrayidx14.i = getelementptr %struct.hw_xmit, ptr %call.i, i32 3
  %145 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %bk_pending.i, ptr %arrayidx14.i, align 4
  %be_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  br label %cleanup.sink.split.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %vo_pending23.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 6
  %146 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %vo_pending23.i, ptr %call.i, align 4
  %vi_pending26.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %arrayidx27.i = getelementptr %struct.hw_xmit, ptr %call.i, i32 1
  %147 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %vi_pending26.i, ptr %arrayidx27.i, align 4
  %be_pending29.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  %arrayidx30.i = getelementptr %struct.hw_xmit, ptr %call.i, i32 2
  %148 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %be_pending29.i, ptr %arrayidx30.i, align 4
  %bk_pending32.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then22.i, %if.then9.i
  %.sink.i = phi i32 [ 4, %if.then9.i ], [ 3, %if.then22.i ]
  %be_pending.sink.i = phi ptr [ %be_pending.i, %if.then9.i ], [ %bk_pending32.i, %if.then22.i ]
  %arrayidx16.i = getelementptr %struct.hw_xmit, ptr %call.i, i32 %.sink.i
  %149 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %be_pending.sink.i, ptr %arrayidx16.i, align 4
  br label %if.end213

if.end213:                                        ; preds = %cleanup.sink.split.i, %if.end.i.if.end213_crit_edge
  %hwxmit_entry = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 26
  %150 = ptrtoint ptr %hwxmit_entry to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %hwxmit_entry, align 4
  %conv = zext i8 %151 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp4.i.not = icmp eq i8 %151, 0
  br i1 %cmp4.i.not, label %if.end213.rtw_init_hwxmits.exit_crit_edge, label %for.body.i.preheader

if.end213.rtw_init_hwxmits.exit_crit_edge:        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_init_hwxmits.exit

for.body.i.preheader:                             ; preds = %if.end213
  %hwxmits = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 25
  %152 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hwxmits, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %phwxmit.addr.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %153, %for.body.i.preheader ]
  %accnt.i = getelementptr inbounds %struct.hw_xmit, ptr %phwxmit.addr.05.i, i32 0, i32 1
  %154 = ptrtoint ptr %accnt.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %accnt.i, align 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %incdec.ptr.i = getelementptr %struct.hw_xmit, ptr %phwxmit.addr.05.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.body.i.rtw_init_hwxmits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.rtw_init_hwxmits.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_init_hwxmits.exit

rtw_init_hwxmits.exit:                            ; preds = %for.body.i.rtw_init_hwxmits.exit_crit_edge, %if.end213.rtw_init_hwxmits.exit_crit_edge
  %arrayidx219 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 27, i32 0
  %155 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %arrayidx219, align 1
  %arrayidx219.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 27, i32 1
  %156 = ptrtoint ptr %arrayidx219.1 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %arrayidx219.1, align 1
  %arrayidx219.2 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 27, i32 2
  %157 = ptrtoint ptr %arrayidx219.2 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 2, ptr %arrayidx219.2, align 1
  %arrayidx219.3 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 27, i32 3
  %158 = ptrtoint ptr %arrayidx219.3 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 3, ptr %arrayidx219.3, align 1
  %ack_tx = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 42
  %159 = ptrtoint ptr %ack_tx to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %ack_tx, align 8
  %ack_tx_mutex = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43
  tail call void @__mutex_init(ptr noundef %ack_tx_mutex, ptr noundef nonnull @.str.25, ptr noundef nonnull @_rtw_init_xmit_priv.__key.24) #15
  %ack_tx_ops = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44
  %timeout_ms1.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44, i32 1
  %160 = ptrtoint ptr %timeout_ms1.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %timeout_ms1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %161 = load volatile i32, ptr @jiffies, align 128
  %162 = ptrtoint ptr %ack_tx_ops to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %ack_tx_ops, align 4
  %done.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44, i32 3
  %163 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #15
  %status.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44, i32 2
  %164 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 -1, ptr %status.i, align 4
  %call226 = tail call i32 @rtw_hal_init_xmit_priv(ptr noundef %padapter) #15
  br label %exit

exit:                                             ; preds = %rtw_init_hwxmits.exit, %for.inc207.1.exit_crit_edge, %if.then188.1.exit_crit_edge, %if.then188.exit_crit_edge, %for.body159.exit_crit_edge, %for.end138.exit_crit_edge, %if.then114, %if.then89.exit_crit_edge, %for.end.exit_crit_edge, %if.then
  %res.0 = phi i32 [ 1, %rtw_init_hwxmits.exit ], [ 0, %if.then114 ], [ 0, %if.then ], [ 0, %for.end.exit_crit_edge ], [ 0, %for.end138.exit_crit_edge ], [ 0, %for.inc207.1.exit_crit_edge ], [ 0, %if.then188.1.exit_crit_edge ], [ 0, %if.then188.exit_crit_edge ], [ 0, %for.body159.exit_crit_edge ], [ 0, %if.then89.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_os_xmit_resource_alloc(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_alloc_hwxmits(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwxmit_entry = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 26
  %0 = ptrtoint ptr %hwxmit_entry to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 4, ptr %hwxmit_entry, align 4
  %hwxmits1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 25
  %1 = ptrtoint ptr %hwxmits1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %hwxmits1, align 8
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 32) #15
  %2 = ptrtoint ptr %hwxmits1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %hwxmits1, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %hwxmit_entry to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hwxmit_entry, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %4, label %if.end.cleanup_crit_edge [
    i8 5, label %if.then9
    i8 4, label %if.then22
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bm_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 7
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bm_pending, ptr %call, align 4
  %vo_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 6
  %arrayidx10 = getelementptr %struct.hw_xmit, ptr %call, i32 1
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vo_pending, ptr %arrayidx10, align 4
  %vi_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %arrayidx12 = getelementptr %struct.hw_xmit, ptr %call, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vi_pending, ptr %arrayidx12, align 4
  %bk_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  %arrayidx14 = getelementptr %struct.hw_xmit, ptr %call, i32 3
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bk_pending, ptr %arrayidx14, align 4
  %be_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  br label %cleanup.sink.split

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %vo_pending23 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 6
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vo_pending23, ptr %call, align 4
  %vi_pending26 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %arrayidx27 = getelementptr %struct.hw_xmit, ptr %call, i32 1
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vi_pending26, ptr %arrayidx27, align 4
  %be_pending29 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  %arrayidx30 = getelementptr %struct.hw_xmit, ptr %call, i32 2
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %be_pending29, ptr %arrayidx30, align 4
  %bk_pending32 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then22, %if.then9
  %.sink = phi i32 [ 4, %if.then9 ], [ 3, %if.then22 ]
  %be_pending.sink = phi ptr [ %be_pending, %if.then9 ], [ %bk_pending32, %if.then22 ]
  %arrayidx16 = getelementptr %struct.hw_xmit, ptr %call, i32 %.sink
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %be_pending.sink, ptr %arrayidx16, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @rtw_init_hwxmits(ptr nocapture noundef writeonly %phwxmit, i32 noundef %entry1) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry1)
  %cmp4 = icmp sgt i32 %entry1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %phwxmit.addr.05 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %phwxmit, %entry.for.body_crit_edge ]
  %accnt = getelementptr inbounds %struct.hw_xmit, ptr %phwxmit.addr.05, i32 0, i32 1
  %0 = ptrtoint ptr %accnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %accnt, align 4
  %inc = add nuw nsw i32 %i.06, 1
  %incdec.ptr = getelementptr %struct.hw_xmit, ptr %phwxmit.addr.05, i32 1
  %exitcond.not = icmp eq i32 %inc, %entry1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sctx_init(ptr noundef %sctx, i32 noundef %timeout_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_ms1 = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %timeout_ms1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeout_ms, ptr %timeout_ms1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %sctx, align 4
  %done = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 3
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #15
  %status = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_init_xmit_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_xmit_priv(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 17
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %pxmit_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 9
  %2 = ptrtoint ptr %pxmit_frame_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxmit_frame_buf, align 4
  %pxmitbuf1 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 34
  %4 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxmitbuf1, align 4
  tail call void @rtw_hal_free_xmit_priv(ptr noundef %1) #15
  %6 = ptrtoint ptr %pxmit_frame_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pxmit_frame_buf, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pxmitframe.076 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.075 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @rtw_os_xmit_complete(ptr noundef %1, ptr noundef %pxmitframe.076) #15
  %incdec.ptr = getelementptr %struct.xmit_frame, ptr %pxmitframe.076, i32 1
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body5.preheader:                              ; preds = %for.body
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %5, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6 = getelementptr %struct.xmit_buf, ptr %5, i32 1
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.1 = getelementptr %struct.xmit_buf, ptr %5, i32 2
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.1, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.2 = getelementptr %struct.xmit_buf, ptr %5, i32 3
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.2, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.3 = getelementptr %struct.xmit_buf, ptr %5, i32 4
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.3, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.4 = getelementptr %struct.xmit_buf, ptr %5, i32 5
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.4, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.5 = getelementptr %struct.xmit_buf, ptr %5, i32 6
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.5, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.6 = getelementptr %struct.xmit_buf, ptr %5, i32 7
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.6, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.7 = getelementptr %struct.xmit_buf, ptr %5, i32 8
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.7, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.8 = getelementptr %struct.xmit_buf, ptr %5, i32 9
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.8, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.9 = getelementptr %struct.xmit_buf, ptr %5, i32 10
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.9, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.10 = getelementptr %struct.xmit_buf, ptr %5, i32 11
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.10, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.11 = getelementptr %struct.xmit_buf, ptr %5, i32 12
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.11, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.12 = getelementptr %struct.xmit_buf, ptr %5, i32 13
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.12, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.13 = getelementptr %struct.xmit_buf, ptr %5, i32 14
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.13, i32 noundef 20992, i8 noundef zeroext 1) #15
  %incdec.ptr6.14 = getelementptr %struct.xmit_buf, ptr %5, i32 15
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.14, i32 noundef 20992, i8 noundef zeroext 1) #15
  %pallocated_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 8
  %8 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pallocated_frame_buf, align 8
  tail call void @vfree(ptr noundef %9) #15
  %pallocated_xmitbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 33
  %10 = ptrtoint ptr %pallocated_xmitbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pallocated_xmitbuf, align 8
  tail call void @vfree(ptr noundef %11) #15
  %xframe_ext = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13
  %12 = ptrtoint ptr %xframe_ext to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xframe_ext, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %for.body5.preheader.if.end19_crit_edge, label %for.body5.preheader.for.body14_crit_edge

for.body5.preheader.for.body14_crit_edge:         ; preds = %for.body5.preheader
  br label %for.body14

for.body5.preheader.if.end19_crit_edge:           ; preds = %for.body5.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body5.preheader.for.body14_crit_edge
  %pxmitframe.180 = phi ptr [ %incdec.ptr15, %for.body14.for.body14_crit_edge ], [ %13, %for.body5.preheader.for.body14_crit_edge ]
  %i.279 = phi i32 [ %inc17, %for.body14.for.body14_crit_edge ], [ 0, %for.body5.preheader.for.body14_crit_edge ]
  tail call void @rtw_os_xmit_complete(ptr noundef %1, ptr noundef %pxmitframe.180) #15
  %incdec.ptr15 = getelementptr %struct.xmit_frame, ptr %pxmitframe.180, i32 1
  %inc17 = add nuw nsw i32 %i.279, 1
  %exitcond85.not = icmp eq i32 %inc17, 32
  br i1 %exitcond85.not, label %for.body14.if.end19_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body14

for.body14.if.end19_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end19:                                         ; preds = %for.body14.if.end19_crit_edge, %for.body5.preheader.if.end19_crit_edge
  %xframe_ext_alloc_addr = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 12
  %14 = ptrtoint ptr %xframe_ext_alloc_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xframe_ext_alloc_addr, align 8
  tail call void @vfree(ptr noundef %15) #15
  %pxmit_extbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 38
  %16 = ptrtoint ptr %pxmit_extbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pxmit_extbuf, align 4
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %if.end19
  %pxmitbuf.182 = phi ptr [ %17, %if.end19 ], [ %incdec.ptr23, %for.body22.for.body22_crit_edge ]
  %i.381 = phi i32 [ 0, %if.end19 ], [ %inc25, %for.body22.for.body22_crit_edge ]
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %pxmitbuf.182, i32 noundef 2048, i8 noundef zeroext 1) #15
  %incdec.ptr23 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.182, i32 1
  %inc25 = add nuw nsw i32 %i.381, 1
  %exitcond86.not = icmp eq i32 %inc25, 32
  br i1 %exitcond86.not, label %for.end26, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body22

for.end26:                                        ; preds = %for.body22
  %pallocated_xmit_extbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 37
  %18 = ptrtoint ptr %pallocated_xmit_extbuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pallocated_xmit_extbuf, align 8
  tail call void @vfree(ptr noundef %19) #15
  %arrayidx = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 0
  %tobool30.not = icmp eq ptr %arrayidx, null
  br i1 %tobool30.not, label %for.end26.for.inc33_crit_edge, label %if.then31

for.end26.for.inc33_crit_edge:                    ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc33

if.then31:                                        ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef nonnull %arrayidx, i32 noundef 5632, i8 noundef zeroext 1) #15
  br label %for.inc33

for.inc33:                                        ; preds = %if.then31, %for.end26.for.inc33_crit_edge
  %arrayidx.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 1
  %tobool30.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool30.not.1, label %for.inc33.for.inc33.1_crit_edge, label %if.then31.1

for.inc33.for.inc33.1_crit_edge:                  ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc33.1

if.then31.1:                                      ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef nonnull %arrayidx.1, i32 noundef 5632, i8 noundef zeroext 1) #15
  br label %for.inc33.1

for.inc33.1:                                      ; preds = %if.then31.1, %for.inc33.for.inc33.1_crit_edge
  %hwxmits.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 25
  %20 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwxmits.i, align 8
  tail call void @kfree(ptr noundef %21) #15
  %ack_tx_mutex = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43
  tail call void @mutex_destroy(ptr noundef %ack_tx_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc33.1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_free_xmit_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_xmit_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_xmit_resource_free(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_hwxmits(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwxmits = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 25
  %0 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwxmits, align 8
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @query_ra_short_GI(ptr nocapture noundef readonly %psta) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bw_mode = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 31
  %0 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bw_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cond = icmp eq i8 %1, 1
  %sgi_40m3 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 9
  %sgi_20m1 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 8
  %sgi.0.in = select i1 %cond, ptr %sgi_40m3, ptr %sgi_20m1
  %2 = ptrtoint ptr %sgi.0.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %sgi.0 = load i8, ptr %sgi.0.in, align 1
  ret i8 %sgi.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @qos_acm(i8 noundef zeroext %acm_mask, i8 noundef zeroext %priority) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %priority to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %priority, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.bb_crit_edge
    i8 3, label %entry.sw.bb_crit_edge20
    i8 7, label %entry.sw.bb9_crit_edge
    i8 6, label %entry.sw.bb9_crit_edge21
    i8 4, label %entry.sw.bb3_crit_edge
    i8 5, label %entry.sw.bb3_crit_edge22
  ]

entry.sw.bb3_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3

entry.sw.bb9_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge20
  %1 = and i8 %acm_mask, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i8 %priority, i8 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge22
  %2 = and i8 %acm_mask, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool6.not = icmp eq i8 %2, 0
  %spec.select18 = select i1 %tobool6.not, i8 %priority, i8 0
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge21
  %3 = and i8 %acm_mask, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool12.not = icmp eq i8 %3, 0
  %spec.select19 = select i1 %tobool12.not, i8 %priority, i8 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %priority.addr.0 = phi i8 [ %priority, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select18, %sw.bb3 ], [ %spec.select19, %sw.bb9 ]
  ret i8 %priority.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_make_wlanhdr(ptr noundef %padapter, ptr noundef %hdr, ptr noundef %pattrib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %subtype = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 1
  %0 = call ptr @memset(ptr %hdr, i32 0, i32 64)
  %1 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subtype, align 1
  %conv2 = zext i8 %2 to i16
  %3 = shl nuw i16 %conv2, 8
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %hdr, align 2
  %5 = load i8, ptr %subtype, align 1
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup224_crit_edge, label %if.then

entry.cleanup224_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup224

if.then:                                          ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %9 = or i16 %3, 1
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %hdr, align 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %11 = call ptr @memcpy(ptr %addr1, ptr %mac_address.i, i32 6)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %src = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 21
  %12 = call ptr @memcpy(ptr %addr2, ptr %src, i32 6)
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %dst = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 20
  %13 = call ptr @memcpy(ptr %addr3, ptr %dst, i32 6)
  %14 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  br label %if.end69

if.else:                                          ; preds = %if.then
  %and.i314 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i314)
  %tobool.not.i315.not = icmp eq i32 %and.i314, 0
  br i1 %tobool.not.i315.not, label %if.else43, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %16 = or i16 %3, 2
  %17 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %hdr, align 2
  %addr129 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %dst31 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 20
  %18 = call ptr @memcpy(ptr %addr129, ptr %dst31, i32 6)
  %addr233 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %mac_address.i317 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %19 = call ptr @memcpy(ptr %addr233, ptr %mac_address.i317, i32 6)
  %addr336 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %src38 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 21
  %20 = call ptr @memcpy(ptr %addr336, ptr %src38, i32 6)
  %qos_en = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %21 = ptrtoint ptr %qos_en to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %qos_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool40.not = icmp eq i8 %22, 0
  br label %if.end69

if.else43:                                        ; preds = %if.else
  %23 = and i32 %8, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.else43.cleanup224_crit_edge, label %if.then50

if.else43.cleanup224_crit_edge:                   ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup224

if.then50:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #17
  %addr151 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %dst53 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 20
  %25 = call ptr @memcpy(ptr %addr151, ptr %dst53, i32 6)
  %addr255 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %src57 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 21
  %26 = call ptr @memcpy(ptr %addr255, ptr %src57, i32 6)
  %addr359 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %mac_address.i326 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %27 = call ptr @memcpy(ptr %addr359, ptr %mac_address.i326, i32 6)
  %qos_en62 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %28 = ptrtoint ptr %qos_en62 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %qos_en62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool63.not = icmp eq i8 %29, 0
  br label %if.end69

if.end69:                                         ; preds = %if.then50, %if.then25, %if.then10
  %tobool82.not = phi i1 [ %tobool20.not, %if.then10 ], [ %tobool40.not, %if.then25 ], [ %tobool63.not, %if.then50 ]
  %mdata = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 33
  %30 = ptrtoint ptr %mdata to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mdata, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool70.not = icmp eq i8 %31, 0
  br i1 %tobool70.not, label %if.end69.if.end75_crit_edge, label %if.then71

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hdr, align 2
  %34 = or i16 %33, 32
  store i16 %34, ptr %hdr, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end69.if.end75_crit_edge
  %encrypt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %35 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool76.not = icmp eq i8 %36, 0
  br i1 %tobool76.not, label %if.end75.if.end81_crit_edge, label %if.then77

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hdr, align 2
  %39 = or i16 %38, 64
  store i16 %39, ptr %hdr, align 2
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end75.if.end81_crit_edge
  br i1 %tobool82.not, label %if.end81.if.end112_crit_edge, label %if.then83

if.end81.if.end112_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

if.then83:                                        ; preds = %if.end81
  %hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 7
  %40 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hdrlen, align 2
  %conv84 = zext i16 %41 to i32
  %add.ptr = getelementptr i8, ptr %hdr, i32 %conv84
  %add.ptr85 = getelementptr i8, ptr %add.ptr, i32 -2
  %priority = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %42 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %priority, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool86.not = icmp eq i8 %43, 0
  br i1 %tobool86.not, label %if.then83.if.end96_crit_edge, label %if.then87

if.then83.if.end96_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #17
  %44 = and i8 %43, 15
  %conv91 = zext i8 %44 to i16
  %45 = shl nuw nsw i16 %conv91, 8
  %46 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr85, align 2
  %or94 = or i16 %47, %45
  store i16 %or94, ptr %add.ptr85, align 2
  br label %if.end96

if.end96:                                         ; preds = %if.then87, %if.then83.if.end96_crit_edge
  %eosp = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 38
  %48 = ptrtoint ptr %eosp to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %eosp, align 4
  %50 = shl i8 %49, 4
  %51 = and i8 %50, 16
  %conv99 = zext i8 %51 to i16
  %52 = shl nuw nsw i16 %conv99, 8
  %53 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr85, align 2
  %or102 = or i16 %52, %54
  store i16 %or102, ptr %add.ptr85, align 2
  %ack_policy = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 17
  %55 = ptrtoint ptr %ack_policy to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ack_policy, align 1
  %57 = shl i8 %56, 5
  %58 = and i8 %57, 96
  %conv107 = zext i8 %58 to i16
  %59 = shl nuw nsw i16 %conv107, 8
  %or110 = or i16 %59, %or102
  store i16 %or110, ptr %add.ptr85, align 2
  br label %if.end112

if.end112:                                        ; preds = %if.end96, %if.end81.if.end112_crit_edge
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ra = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %call114 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #15
  %psta115 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 45
  %60 = ptrtoint ptr %psta115 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %psta115, align 4
  %cmp116.not = icmp ne ptr %61, %call114
  %tobool120.not = icmp eq ptr %call114, null
  %or.cond = or i1 %tobool120.not, %cmp116.not
  br i1 %or.cond, label %if.end112.cleanup224_crit_edge, label %if.end122

if.end112.cleanup224_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup224

if.end122:                                        ; preds = %if.end112
  %state = getelementptr inbounds %struct.sta_info, ptr %call114, i32 0, i32 8
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state, align 8
  %and123 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end122.cleanup224_crit_edge, label %if.then128

if.end122.cleanup224_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup224

if.then128:                                       ; preds = %if.end122
  %priority129 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %64 = ptrtoint ptr %priority129 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %priority129, align 2
  %idxprom = zext i8 %65 to i32
  %arrayidx = getelementptr %struct.sta_info, ptr %call114, i32 0, i32 4, i32 9, i32 %idxprom
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx, align 2
  %inc = add i16 %67, 1
  store i16 %inc, ptr %arrayidx, align 2
  %68 = load i8, ptr %priority129, align 2
  %idxprom133 = zext i8 %68 to i32
  %arrayidx134 = getelementptr %struct.sta_info, ptr %call114, i32 0, i32 4, i32 9, i32 %idxprom133
  %69 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx134, align 2
  %71 = and i16 %70, 4095
  store i16 %71, ptr %arrayidx134, align 2
  %72 = load i8, ptr %priority129, align 2
  %idxprom141 = zext i8 %72 to i32
  %arrayidx142 = getelementptr %struct.sta_info, ptr %call114, i32 0, i32 4, i32 9, i32 %idxprom141
  %73 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx142, align 2
  %seqnum = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 5
  %75 = ptrtoint ptr %seqnum to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %seqnum, align 2
  %76 = ptrtoint ptr %hdr to i32
  %add = add i32 %76, 22
  %77 = inttoptr i32 %add to ptr
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %77, align 2
  %80 = and i16 %79, 3840
  %shl148 = shl i16 %74, 4
  %81 = tail call i16 @llvm.bswap.i16(i16 %shl148)
  %or152308 = or i16 %80, %81
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %or152308, ptr %77, align 2
  %ht_en = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 26
  %83 = ptrtoint ptr %ht_en to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ht_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool158.not = icmp eq i8 %84, 0
  br i1 %tobool158.not, label %if.then128.if.end171_crit_edge, label %land.lhs.true

if.then128.if.end171_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end171

land.lhs.true:                                    ; preds = %if.then128
  %ampdu_enable = getelementptr inbounds %struct.sta_info, ptr %call114, i32 0, i32 38, i32 1
  %85 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ampdu_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool160.not = icmp eq i8 %86, 0
  br i1 %tobool160.not, label %land.lhs.true.if.end171_crit_edge, label %if.then161

land.lhs.true.if.end171_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end171

if.then161:                                       ; preds = %land.lhs.true
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %call114, i32 0, i32 38, i32 10
  %87 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %agg_enable_bitmap, align 8
  %conv163 = zext i8 %88 to i32
  %89 = ptrtoint ptr %priority129 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %priority129, align 2
  %conv165 = zext i8 %90 to i32
  %shl166 = shl nuw i32 1, %conv165
  %and167 = and i32 %shl166, %conv163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.then161.if.end171_crit_edge, label %if.then169

if.then161.if.end171_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end171

if.then169:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #17
  %ampdu_en = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 31
  %91 = ptrtoint ptr %ampdu_en to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %ampdu_en, align 1
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.then161.if.end171_crit_edge, %land.lhs.true.if.end171_crit_edge, %if.then128.if.end171_crit_edge
  %ampdu_en172 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 31
  %92 = ptrtoint ptr %ampdu_en172 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ampdu_en172, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %cmp174 = icmp eq i8 %93, 1
  br i1 %cmp174, label %if.then176, label %if.end171.cleanup224_crit_edge

if.end171.cleanup224_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup224

if.then176:                                       ; preds = %if.end171
  %94 = ptrtoint ptr %priority129 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %priority129, align 2
  %96 = and i8 %95, 15
  %and179 = zext i8 %96 to i32
  %arrayidx180 = getelementptr %struct.sta_info, ptr %call114, i32 0, i32 37, i32 %and179
  %97 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx180, align 2
  %99 = ptrtoint ptr %seqnum to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %seqnum, align 2
  %conv182 = zext i16 %100 to i32
  %conv183 = zext i16 %98 to i32
  %sub = sub nsw i32 %conv182, %conv183
  %and184 = and i32 %sub, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %cmp185.not = icmp eq i32 %and184, 0
  br i1 %cmp185.not, label %if.else189, label %if.then176.cleanup224.sink.split_crit_edge

if.then176.cleanup224.sink.split_crit_edge:       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup224.sink.split

if.else189:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #17
  %add209 = add i16 %100, 1
  %and210 = and i16 %add209, 4095
  %101 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %and210, ptr %arrayidx180, align 2
  br label %cleanup224.sink.split

cleanup224.sink.split:                            ; preds = %if.else189, %if.then176.cleanup224.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then176.cleanup224.sink.split_crit_edge ], [ 1, %if.else189 ]
  %102 = ptrtoint ptr %ampdu_en172 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink, ptr %ampdu_en172, align 1
  br label %cleanup224

cleanup224:                                       ; preds = %cleanup224.sink.split, %if.end171.cleanup224_crit_edge, %if.end122.cleanup224_crit_edge, %if.end112.cleanup224_crit_edge, %if.else43.cleanup224_crit_edge, %entry.cleanup224_crit_edge
  %retval.1 = phi i32 [ 1, %entry.cleanup224_crit_edge ], [ 1, %if.end171.cleanup224_crit_edge ], [ 0, %if.end112.cleanup224_crit_edge ], [ 0, %if.end122.cleanup224_crit_edge ], [ 0, %if.else43.cleanup224_crit_edge ], [ 1, %cleanup224.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_txframes_pending(ptr noundef %padapter) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %be_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %be_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %be_pending, align 4
  %cmp.i.not = icmp eq ptr %1, %be_pending
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %bk_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  %2 = ptrtoint ptr %bk_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bk_pending, align 4
  %cmp.i14.not = icmp eq ptr %3, %bk_pending
  br i1 %cmp.i14.not, label %lor.lhs.false4, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %vi_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %4 = ptrtoint ptr %vi_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vi_pending, align 4
  %cmp.i16.not = icmp eq ptr %5, %vi_pending
  br i1 %cmp.i16.not, label %lor.rhs, label %lor.lhs.false4.lor.end_crit_edge

lor.lhs.false4.lor.end_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  %vo_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 6
  %6 = ptrtoint ptr %vo_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %vo_pending, align 4
  %cmp.i18 = icmp ne ptr %7, %vo_pending
  %phi.cast = zext i1 %cmp.i18 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %8 = phi i32 [ 1, %lor.lhs.false4.lor.end_crit_edge ], [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_calculate_wlan_pkt_size_by_attribue(ptr nocapture noundef readonly %pattrib) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 7
  %0 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdrlen, align 2
  %iv_len = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %2 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iv_len, align 2
  %pktlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 8
  %4 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pktlen, align 4
  %encrypt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %6 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %encrypt, align 1
  %bswenc = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 2
  %8 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %icv_len = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 13
  %10 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %icv_len, align 1
  %conv8 = zext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv8, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  %conv = zext i16 %1 to i32
  %conv1 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 8
  %add2 = add nuw nsw i32 %add, %conv1
  %add3 = add i32 %add2, %5
  %add6 = add i32 %add3, 8
  %spec.select = select i1 %cmp, i32 %add6, i32 %add3
  %add9 = add i32 %cond, %spec.select
  ret i32 %add9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmitframe_coalesce(ptr noundef %padapter, ptr noundef %pkt, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  %mic.i = alloca [8 x i8], align 8
  %micdata.i = alloca %struct.mic_data, align 4
  %priority.i = alloca [4 x i8], align 4
  %null_key.i = alloca [16 x i8], align 1
  %pktfile = alloca %struct.pkt_file, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pktfile) #15
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %0 = call ptr @memset(ptr %pktfile, i32 255, i32 24)
  %1 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ra, align 1
  %3 = and i8 %2, 1
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_addr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrib = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %call2 = tail call i32 @rtw_make_wlanhdr(ptr noundef %padapter, ptr noundef %add.ptr, ptr noundef %attrib)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @_rtw_open_pktfile(ptr noundef %pkt, ptr noundef nonnull %pktfile) #15
  %pkt_hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %pkt_hdrlen to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pkt_hdrlen, align 4
  %conv6 = zext i16 %7 to i32
  %call7 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef null, i32 noundef %conv6) #15
  %frag_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 16
  %8 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frag_len, align 8
  %sub = add i32 %9, -4
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %icv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool44.not = icmp eq i8 %3, 0
  %iv = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14
  %ether_type = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 4
  %bswenc = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 2
  %pktlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 8
  %icv = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 15
  br label %while.cond

while.cond:                                       ; preds = %if.end94, %if.end5
  %frg_inx.0 = phi i32 [ 0, %if.end5 ], [ %inc, %if.end94 ]
  %mem_start.0 = phi ptr [ %add.ptr, %if.end5 ], [ %add.ptr99, %if.end94 ]
  %10 = ptrtoint ptr %mem_start.0 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mem_start.0, align 2
  %12 = or i16 %11, 4
  store i16 %12, ptr %mem_start.0, align 2
  %13 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hdrlen, align 2
  %conv10 = zext i16 %14 to i32
  %add.ptr11 = getelementptr i8, ptr %mem_start.0, i32 %conv10
  %sub14 = sub i32 %sub, %conv10
  %15 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iv_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %while.cond.if.end26_crit_edge, label %if.then16

while.cond.if.end26_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then16:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %conv19 = zext i8 %16 to i32
  %17 = call ptr @memcpy(ptr %add.ptr11, ptr %iv, i32 %conv19)
  %18 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iv_len, align 2
  %conv21 = zext i8 %19 to i32
  %add.ptr22 = getelementptr i8, ptr %add.ptr11, i32 %conv21
  %sub25 = sub i32 %sub14, %conv21
  br label %if.end26

if.end26:                                         ; preds = %if.then16, %while.cond.if.end26_crit_edge
  %mpdu_len.0 = phi i32 [ %sub25, %if.then16 ], [ %sub14, %while.cond.if.end26_crit_edge ]
  %pframe.0 = phi ptr [ %add.ptr22, %if.then16 ], [ %add.ptr11, %while.cond.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frg_inx.0)
  %cmp27 = icmp eq i32 %frg_inx.0, 0
  br i1 %cmp27, label %if.then29, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ether_type, align 4
  %22 = ptrtoint ptr %pframe.0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -86, ptr %pframe.0, align 1
  %ssap.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 1
  %23 = ptrtoint ptr %ssap.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -86, ptr %ssap.i, align 1
  %ctrl.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 2
  %24 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32457, i16 %21)
  %switch.selectcmp.case1.i = icmp eq i16 %21, -32457
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %21)
  %switch.selectcmp.case2.i = icmp eq i16 %21, -32525
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %oui5.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 3
  %25 = ptrtoint ptr %oui5.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %oui5.i, align 1
  %arrayidx9.i = getelementptr %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx9.i, align 1
  %27 = select i1 %switch.selectcmp.i, i8 -8, i8 0
  %arrayidx12.i = getelementptr %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx12.i, align 1
  %add.ptr.i = getelementptr i8, ptr %pframe.0, i32 6
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %21, ptr %add.ptr.i, align 2
  %add.ptr31 = getelementptr i8, ptr %pframe.0, i32 8
  %sub32 = add i32 %mpdu_len.0, -8
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end26.if.end33_crit_edge
  %mpdu_len.1 = phi i32 [ %sub32, %if.then29 ], [ %mpdu_len.0, %if.end26.if.end33_crit_edge ]
  %llc_sz.0 = phi i32 [ 8, %if.then29 ], [ 0, %if.end26.if.end33_crit_edge ]
  %pframe.1 = phi ptr [ %add.ptr31, %if.then29 ], [ %pframe.0, %if.end26.if.end33_crit_edge ]
  %30 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %icv_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp35.not = icmp eq i8 %31, 0
  br i1 %cmp35.not, label %if.end33.if.end43_crit_edge, label %land.lhs.true

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool38.not = icmp eq i8 %33, 0
  %narrow = select i1 %tobool38.not, i8 0, i8 %31
  %sub42 = zext i8 %narrow to i32
  %spec.select = sub i32 %mpdu_len.1, %sub42
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true, %if.end33.if.end43_crit_edge
  %mpdu_len.2 = phi i32 [ %mpdu_len.1, %if.end33.if.end43_crit_edge ], [ %spec.select, %land.lhs.true ]
  br i1 %tobool44.not, label %if.end43.if.end48_crit_edge, label %if.then45

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pktlen, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  %mpdu_len.2.sink = phi i32 [ %35, %if.then45 ], [ %mpdu_len.2, %if.end43.if.end48_crit_edge ]
  %call47 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef %pframe.1, i32 noundef %mpdu_len.2.sink) #15
  %add.ptr49 = getelementptr i8, ptr %pframe.1, i32 %call47
  %36 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %icv_len, align 1
  %conv51 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp52.not = icmp eq i8 %37, 0
  br i1 %cmp52.not, label %if.end48.if.end65_crit_edge, label %land.lhs.true54

if.end48.if.end65_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

land.lhs.true54:                                  ; preds = %if.end48
  %38 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool57.not = icmp eq i8 %39, 0
  br i1 %tobool57.not, label %land.lhs.true54.if.end65_crit_edge, label %if.then58

land.lhs.true54.if.end65_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.then58:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #17
  %40 = call ptr @memcpy(ptr %add.ptr49, ptr %icv, i32 %conv51)
  %41 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %icv_len, align 1
  %conv63 = zext i8 %42 to i32
  %add.ptr64 = getelementptr i8, ptr %add.ptr49, i32 %conv63
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %land.lhs.true54.if.end65_crit_edge, %if.end48.if.end65_crit_edge
  %pframe.2 = phi ptr [ %add.ptr64, %if.then58 ], [ %add.ptr49, %land.lhs.true54.if.end65_crit_edge ], [ %add.ptr49, %if.end48.if.end65_crit_edge ]
  %inc = add i32 %frg_inx.0, 1
  br i1 %tobool44.not, label %lor.lhs.false, label %if.end65.if.then70_crit_edge

if.end65.if.then70_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then70

lor.lhs.false:                                    ; preds = %if.end65
  %call67 = call i32 @rtw_endofpktfile(ptr noundef nonnull %pktfile) #15
  %cmp68 = icmp eq i32 %call67, 1
  br i1 %cmp68, label %lor.lhs.false.if.then70_crit_edge, label %if.end94

lor.lhs.false.if.then70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false.if.then70_crit_edge, %if.end65.if.then70_crit_edge
  %mem_start.0.lcssa = phi ptr [ %mem_start.0, %lor.lhs.false.if.then70_crit_edge ], [ %add.ptr, %if.end65.if.then70_crit_edge ]
  %conv71 = trunc i32 %inc to i8
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %43 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv71, ptr %nr_frags, align 4
  %44 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hdrlen, align 2
  %conv73 = zext i16 %45 to i32
  %46 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %iv_len, align 2
  %conv75 = zext i8 %47 to i32
  %conv77 = and i32 %inc, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv77)
  %cmp78 = icmp eq i32 %conv77, 1
  %spec.select195 = select i1 %cmp78, i32 %llc_sz.0, i32 0
  %48 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool83.not = icmp eq i8 %49, 0
  br i1 %tobool83.not, label %if.then70.cond.end88_crit_edge, label %cond.true84

if.then70.cond.end88_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end88

cond.true84:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %icv_len, align 1
  %conv86 = zext i8 %51 to i32
  br label %cond.end88

cond.end88:                                       ; preds = %cond.true84, %if.then70.cond.end88_crit_edge
  %cond89 = phi i32 [ %conv86, %cond.true84 ], [ 0, %if.then70.cond.end88_crit_edge ]
  %add = add i32 %call47, %spec.select195
  %add80 = add i32 %add, %conv73
  %add90 = add i32 %add80, %conv75
  %add91 = add i32 %add90, %cond89
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %52 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add91, ptr %last_txcmdsz, align 4
  %53 = ptrtoint ptr %mem_start.0.lcssa to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mem_start.0.lcssa, align 2
  %55 = and i16 %54, -5
  store i16 %55, ptr %mem_start.0.lcssa, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic.i) #15
  %56 = ptrtoint ptr %mic.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 -1, ptr %mic.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %micdata.i) #15
  %57 = call ptr @memset(ptr %micdata.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priority.i) #15
  %58 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %priority.i, align 4
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %59 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %cmp.i = icmp eq i8 %60, 2
  br i1 %cmp.i, label %if.then.i, label %cond.end88.if.end108_crit_edge

cond.end88.if.end108_crit_edge:                   ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

if.then.i:                                        ; preds = %cond.end88
  %61 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ra, align 1
  %63 = and i8 %62, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %null_key.i) #15
  %64 = call ptr @memset(ptr %null_key.i, i32 0, i32 16)
  %65 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf_addr, align 4
  %add.ptr.i196 = getelementptr i8, ptr %66, i32 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  %dot118021XGrpKeyid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7
  %67 = ptrtoint ptr %dot118021XGrpKeyid.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dot118021XGrpKeyid.i, align 4
  %arrayidx.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 9, i32 %68
  %bcmp164.i = call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx.i, ptr noundef nonnull dereferenceable(16) %null_key.i, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp164.i)
  %tobool7.not.i = icmp eq i32 %bcmp164.i, 0
  br i1 %tobool7.not.i, label %if.then3.i.xmitframe_addmic.exit_crit_edge, label %if.then3.i.if.end21.i_crit_edge

if.then3.i.if.end21.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then3.i.xmitframe_addmic.exit_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xmitframe_addmic.exit

if.else.i:                                        ; preds = %if.then.i
  %dot11tkiptxmickey.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 48
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %dot11tkiptxmickey.i, ptr noundef nonnull dereferenceable(16) %null_key.i, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool16.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool16.not.i, label %if.else.i.xmitframe_addmic.exit_crit_edge, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.else.i.xmitframe_addmic.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xmitframe_addmic.exit

if.end21.i:                                       ; preds = %if.else.i.if.end21.i_crit_edge, %if.then3.i.if.end21.i_crit_edge
  %dot11tkiptxmickey.sink.i = phi ptr [ %arrayidx.i, %if.then3.i.if.end21.i_crit_edge ], [ %dot11tkiptxmickey.i, %if.else.i.if.end21.i_crit_edge ]
  call void @rtw_secmicsetkey(ptr noundef nonnull %micdata.i, ptr noundef %dot11tkiptxmickey.sink.i) #15
  %arrayidx22.i = getelementptr i8, ptr %66, i32 41
  %69 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx22.i, align 1
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool24.not.i = icmp eq i8 %71, 0
  %..i = select i1 %tobool24.not.i, i32 44, i32 56
  %.176.i = select i1 %tobool24.not.i, i32 56, i32 64
  %arrayidx37.i = getelementptr i8, ptr %66, i32 %..i
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %arrayidx37.i, i32 noundef 6) #15
  %72 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx22.i, align 1
  %74 = and i8 %73, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool41.not.i = icmp eq i8 %74, 0
  %.173.i = select i1 %tobool41.not.i, i32 50, i32 %.176.i
  %arrayidx43.i = getelementptr i8, ptr %66, i32 %.173.i
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %arrayidx43.i, i32 noundef 6) #15
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %75 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %qos_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool48.not.i = icmp eq i8 %76, 0
  br i1 %tobool48.not.i, label %if.end21.i.if.end53.i_crit_edge, label %if.then49.i

if.end21.i.if.end53.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i

if.then49.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %priority51.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %77 = ptrtoint ptr %priority51.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %priority51.i, align 2
  %79 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %priority.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %if.end21.i.if.end53.i_crit_edge
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef nonnull %priority.i, i32 noundef 4) #15
  %80 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp56169.not.i = icmp eq i8 %81, 0
  br i1 %cmp56169.not.i, label %if.end53.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end53.i.for.end.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end53.i
  %conv55168.i = zext i8 %81 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv55172.i = phi i32 [ %conv55168.i, %for.body.lr.ph.i ], [ %conv55.i, %for.inc.i.for.body.i_crit_edge ]
  %payload.0171.i = phi ptr [ %add.ptr.i196, %for.body.lr.ph.i ], [ %payload.1.i, %for.inc.i.for.body.i_crit_edge ]
  %curfragnum.0170.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add62.i, %for.inc.i.for.body.i_crit_edge ]
  %82 = ptrtoint ptr %payload.0171.i to i32
  %sub.i = add i32 %82, -1
  %or.i = or i32 %sub.i, 3
  %add.i = add i32 %or.i, 1
  %83 = inttoptr i32 %add.i to ptr
  %84 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %hdrlen, align 2
  %conv58.i = zext i16 %85 to i32
  %add.ptr59.i = getelementptr i8, ptr %83, i32 %conv58.i
  %86 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %iv_len, align 2
  %conv60.i = zext i8 %87 to i32
  %add.ptr61.i = getelementptr i8, ptr %add.ptr59.i, i32 %conv60.i
  %add62.i = add nuw nsw i32 %curfragnum.0170.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add62.i, i32 %conv55172.i)
  %cmp65.i = icmp eq i32 %add62.i, %conv55172.i
  br i1 %cmp65.i, label %if.then67.i, label %if.else79.i

if.then67.i:                                      ; preds = %for.body.i
  %88 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %last_txcmdsz, align 4
  %90 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool75.not.i = icmp eq i8 %91, 0
  br i1 %tobool75.not.i, label %if.then67.i.cond.end.i_crit_edge, label %cond.true.i

if.then67.i.cond.end.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #17
  %92 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %icv_len, align 1
  %conv76.i = zext i8 %93 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then67.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv76.i, %cond.true.i ], [ 0, %if.then67.i.cond.end.i_crit_edge ]
  %94 = add nuw nsw i32 %conv60.i, %conv58.i
  %95 = add nuw nsw i32 %94, %cond.i
  %sub77.i = sub i32 %89, %95
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %add.ptr61.i, i32 noundef %sub77.i) #15
  %add.ptr78.i = getelementptr i8, ptr %add.ptr61.i, i32 %sub77.i
  br label %for.inc.i

if.else79.i:                                      ; preds = %for.body.i
  %96 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %frag_len, align 8
  %98 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool88.not.i = icmp eq i8 %99, 0
  br i1 %tobool88.not.i, label %if.else79.i.cond.end93.i_crit_edge, label %cond.true89.i

if.else79.i.cond.end93.i_crit_edge:               ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end93.i

cond.true89.i:                                    ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #17
  %100 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %icv_len, align 1
  %conv91.i = zext i8 %101 to i32
  br label %cond.end93.i

cond.end93.i:                                     ; preds = %cond.true89.i, %if.else79.i.cond.end93.i_crit_edge
  %cond94.i = phi i32 [ %conv91.i, %cond.true89.i ], [ 0, %if.else79.i.cond.end93.i_crit_edge ]
  %102 = add nuw nsw i32 %conv60.i, %conv58.i
  %103 = add nuw nsw i32 %102, %cond94.i
  %sub95.i = sub i32 %97, %103
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %add.ptr61.i, i32 noundef %sub95.i) #15
  %add.ptr96.i = getelementptr i8, ptr %add.ptr61.i, i32 %sub95.i
  %104 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %icv_len, align 1
  %conv98.i = zext i8 %105 to i32
  %add.ptr99.i = getelementptr i8, ptr %add.ptr96.i, i32 %conv98.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end93.i, %cond.end.i
  %payload.1.i = phi ptr [ %add.ptr78.i, %cond.end.i ], [ %add.ptr99.i, %cond.end93.i ]
  %106 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %nr_frags, align 4
  %conv55.i = zext i8 %107 to i32
  %cmp56.i = icmp ult i32 %add62.i, %conv55.i
  br i1 %cmp56.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end53.i.for.end.i_crit_edge
  %payload.0.lcssa.i = phi ptr [ %add.ptr.i196, %if.end53.i.for.end.i_crit_edge ], [ %payload.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @rtw_secgetmic(ptr noundef nonnull %micdata.i, ptr noundef nonnull %mic.i) #15
  %108 = ptrtoint ptr %mic.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %mic.i, align 8
  %110 = ptrtoint ptr %payload.0.lcssa.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 %109, ptr %payload.0.lcssa.i, align 1
  %111 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %last_txcmdsz, align 4
  %add104.i = add i32 %112, 8
  store i32 %add104.i, ptr %last_txcmdsz, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %null_key.i) #15
  br label %if.end108

xmitframe_addmic.exit:                            ; preds = %if.else.i.xmitframe_addmic.exit_crit_edge, %if.then3.i.xmitframe_addmic.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %null_key.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %micdata.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic.i) #15
  br label %cleanup

if.end94:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %113 = ptrtoint ptr %pframe.2 to i32
  %sub95 = add i32 %113, -1
  %or96 = or i32 %sub95, 3
  %add97 = add i32 %or96, 1
  %114 = inttoptr i32 %add97 to ptr
  %add.ptr99 = getelementptr i8, ptr %114, i32 40
  %115 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %hdrlen, align 2
  %conv103 = zext i16 %116 to i32
  %117 = call ptr @memcpy(ptr %add.ptr99, ptr %add.ptr, i32 %conv103)
  br label %while.cond

if.end108:                                        ; preds = %for.end.i, %cond.end88.if.end108_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %micdata.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic.i) #15
  %118 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i197 = icmp eq i8 %119, 0
  br i1 %tobool.not.i197, label %if.end108.xmitframe_swencrypt.exit_crit_edge, label %if.then.i199

if.end108.xmitframe_swencrypt.exit_crit_edge:     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %xmitframe_swencrypt.exit

if.then.i199:                                     ; preds = %if.end108
  %120 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %encrypt.i, align 1
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %121, label %if.then.i199.xmitframe_swencrypt.exit_crit_edge [
    i8 1, label %if.then.i199.sw.bb.i_crit_edge
    i8 5, label %if.then.i199.sw.bb.i_crit_edge210
    i8 2, label %sw.bb1.i
    i8 4, label %sw.bb2.i
  ]

if.then.i199.sw.bb.i_crit_edge210:                ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.then.i199.sw.bb.i_crit_edge:                   ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.then.i199.xmitframe_swencrypt.exit_crit_edge:  ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #17
  br label %xmitframe_swencrypt.exit

sw.bb.i:                                          ; preds = %if.then.i199.sw.bb.i_crit_edge, %if.then.i199.sw.bb.i_crit_edge210
  call void @rtw_wep_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #15
  br label %xmitframe_swencrypt.exit

sw.bb1.i:                                         ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 @rtw_tkip_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #15
  br label %xmitframe_swencrypt.exit

sw.bb2.i:                                         ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i = call i32 @rtw_aes_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #15
  br label %xmitframe_swencrypt.exit

xmitframe_swencrypt.exit:                         ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then.i199.xmitframe_swencrypt.exit_crit_edge, %if.end108.xmitframe_swencrypt.exit_crit_edge
  br i1 %tobool44.not, label %if.then112, label %if.else113

if.then112:                                       ; preds = %xmitframe_swencrypt.exit
  %123 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %124)
  %cmp.not.i = icmp eq i8 %124, 1
  %sz.0.in.i = select i1 %cmp.not.i, ptr %last_txcmdsz, ptr %frag_len
  %125 = ptrtoint ptr %sz.0.in.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %sz.0.i = load i32, ptr %sz.0.in.i, align 4
  %cur_wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %126 = ptrtoint ptr %cur_wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %cur_wireless_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %127)
  %cmp3.i = icmp ult i8 %127, 8
  br i1 %cmp3.i, label %if.then112.if.then6.i_crit_edge, label %lor.lhs.false.i

if.then112.if.then6.i_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.then112
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %128 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i203 = icmp eq i8 %129, 0
  br i1 %tobool.not.i203, label %while.body.i, label %lor.lhs.false.i.if.then6.i_crit_edge

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.then112.if.then6.i_crit_edge
  %rts_thresh.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 13
  %130 = ptrtoint ptr %rts_thresh.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %rts_thresh.i, align 4
  %conv8.i = zext i16 %131 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.i, i32 %conv8.i)
  %cmp9.i = icmp ugt i32 %sz.0.i, %conv8.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else12.i

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %vcs_mode.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %132 = ptrtoint ptr %vcs_mode.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %vcs_mode.i, align 1
  br label %if.end97.i

if.else12.i:                                      ; preds = %if.then6.i
  %rtsen.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 46
  %133 = ptrtoint ptr %rtsen.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %rtsen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool13.not.i = icmp eq i8 %134, 0
  br i1 %tobool13.not.i, label %if.else16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #17
  %vcs_mode15.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %135 = ptrtoint ptr %vcs_mode15.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %vcs_mode15.i, align 1
  br label %if.end97.i

if.else16.i:                                      ; preds = %if.else12.i
  %cts2self.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 47
  %136 = ptrtoint ptr %cts2self.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %cts2self.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool17.not.i = icmp eq i8 %137, 0
  %vcs_mode21.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  br i1 %tobool17.not.i, label %if.else20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #17
  %138 = ptrtoint ptr %vcs_mode21.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 2, ptr %vcs_mode21.i, align 1
  br label %if.end97.i

if.else20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #17
  %139 = ptrtoint ptr %vcs_mode21.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %vcs_mode21.i, align 1
  br label %if.end97.i

while.body.i:                                     ; preds = %lor.lhs.false.i
  %assoc_AP_vendor.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 14
  %140 = ptrtoint ptr %assoc_AP_vendor.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %assoc_AP_vendor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %141)
  %cmp27.i = icmp eq i8 %141, 5
  br i1 %cmp27.i, label %land.lhs.true.i, label %while.body.i.if.end37.i_crit_edge

while.body.i.if.end37.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %ampdu_en.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 31
  %142 = ptrtoint ptr %ampdu_en.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ampdu_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %143)
  %cmp30.i = icmp eq i8 %143, 1
  br i1 %cmp30.i, label %land.lhs.true32.i, label %land.lhs.true.i.if.end37.i_crit_edge

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

land.lhs.true32.i:                                ; preds = %land.lhs.true.i
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %144 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dot11PrivacyAlgrthm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %145)
  %cmp33.i = icmp eq i32 %145, 4
  br i1 %cmp33.i, label %if.then35.i, label %land.lhs.true32.i.if.end37.i_crit_edge

land.lhs.true32.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

if.then35.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #17
  %vcs_mode36.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %146 = ptrtoint ptr %vcs_mode36.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 2, ptr %vcs_mode36.i, align 1
  br label %if.end97.i

if.end37.i:                                       ; preds = %land.lhs.true32.i.if.end37.i_crit_edge, %land.lhs.true.i.if.end37.i_crit_edge, %while.body.i.if.end37.i_crit_edge
  %rtsen38.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 46
  %147 = ptrtoint ptr %rtsen38.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %rtsen38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool40.not.i = icmp eq i8 %148, 0
  br i1 %tobool40.not.i, label %lor.lhs.false41.i, label %if.then48.i

lor.lhs.false41.i:                                ; preds = %if.end37.i
  %cts2self42.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 47
  %149 = ptrtoint ptr %cts2self42.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %cts2self42.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool44.not.i = icmp eq i8 %150, 0
  br i1 %tobool44.not.i, label %if.end57.i, label %if.then53.i

if.then48.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  %vcs_mode49.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %151 = ptrtoint ptr %vcs_mode49.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %vcs_mode49.i, align 1
  br label %if.end97.i

if.then53.i:                                      ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #17
  %vcs_mode54.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %152 = ptrtoint ptr %vcs_mode54.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 2, ptr %vcs_mode54.i, align 1
  br label %if.end97.i

if.end57.i:                                       ; preds = %lor.lhs.false41.i
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %153 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %ht_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool58.not.i = icmp eq i8 %154, 0
  br i1 %tobool58.not.i, label %if.end57.i.if.end80.i_crit_edge, label %if.then59.i

if.end57.i.if.end80.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80.i

if.then59.i:                                      ; preds = %if.end57.i
  %HT_protection.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 23
  %155 = ptrtoint ptr %HT_protection.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %HT_protection.i, align 1
  %cur_bwmode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %157 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %cur_bwmode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool61.not.i = icmp ne i8 %158, 0
  %159 = and i8 %156, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %159)
  %switch140.i = icmp eq i8 %159, 2
  %or.cond141.i = select i1 %tobool61.not.i, i1 %switch140.i, i1 false
  br i1 %or.cond141.i, label %if.then59.i.cleanup.i204_crit_edge, label %lor.lhs.false70.i

if.then59.i.cleanup.i204_crit_edge:               ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i204

lor.lhs.false70.i:                                ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool72.not.i = icmp eq i8 %158, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %156)
  %cmp75.i = icmp eq i8 %156, 3
  %or.cond.i = select i1 %tobool72.not.i, i1 %cmp75.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false70.i.cleanup.i204_crit_edge, label %lor.lhs.false70.i.if.end80.i_crit_edge

lor.lhs.false70.i.if.end80.i_crit_edge:           ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80.i

lor.lhs.false70.i.cleanup.i204_crit_edge:         ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i204

cleanup.i204:                                     ; preds = %lor.lhs.false70.i.cleanup.i204_crit_edge, %if.then59.i.cleanup.i204_crit_edge
  %vcs_mode78.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %160 = ptrtoint ptr %vcs_mode78.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %vcs_mode78.i, align 1
  br label %if.end97.i

if.end80.i:                                       ; preds = %lor.lhs.false70.i.if.end80.i_crit_edge, %if.end57.i.if.end80.i_crit_edge
  %rts_thresh82.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 13
  %161 = ptrtoint ptr %rts_thresh82.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %rts_thresh82.i, align 4
  %conv83.i = zext i16 %162 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.i, i32 %conv83.i)
  %cmp84.i = icmp ugt i32 %sz.0.i, %conv83.i
  br i1 %cmp84.i, label %if.then86.i, label %if.end88.i

if.then86.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #17
  %vcs_mode87.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %163 = ptrtoint ptr %vcs_mode87.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %vcs_mode87.i, align 1
  br label %if.end97.i

if.end88.i:                                       ; preds = %if.end80.i
  %ampdu_en89.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 31
  %164 = ptrtoint ptr %ampdu_en89.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %ampdu_en89.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %165)
  %cmp91.i = icmp eq i8 %165, 1
  %vcs_mode94.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  br i1 %cmp91.i, label %if.then93.i, label %if.end95.i

if.then93.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #17
  %166 = ptrtoint ptr %vcs_mode94.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %vcs_mode94.i, align 1
  br label %if.end97.i

if.end95.i:                                       ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #17
  %167 = ptrtoint ptr %vcs_mode94.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %vcs_mode94.i, align 1
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end95.i, %if.then93.i, %if.then86.i, %cleanup.i204, %if.then53.i, %if.then48.i, %if.then35.i, %if.else20.i, %if.then18.i, %if.then14.i, %if.then11.i
  %driver_vcs_en.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 59
  %168 = ptrtoint ptr %driver_vcs_en.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %driver_vcs_en.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %169)
  %cmp99.i = icmp eq i8 %169, 1
  br i1 %cmp99.i, label %if.then101.i, label %if.end97.i.cleanup_crit_edge

if.end97.i.cleanup_crit_edge:                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then101.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #17
  %driver_vcs_type.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 60
  %170 = ptrtoint ptr %driver_vcs_type.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %driver_vcs_type.i, align 1
  %vcs_mode102.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %172 = ptrtoint ptr %vcs_mode102.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %vcs_mode102.i, align 1
  br label %cleanup

if.else113:                                       ; preds = %xmitframe_swencrypt.exit
  call void @__sanitizer_cov_trace_pc() #17
  %vcs_mode = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %173 = ptrtoint ptr %vcs_mode to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %vcs_mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else113, %if.then101.i, %if.end97.i.cleanup_crit_edge, %xmitframe_addmic.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.else113 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %xmitframe_addmic.exit ], [ 1, %if.end97.i.cleanup_crit_edge ], [ 1, %if.then101.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pktfile) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_open_pktfile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_pktfile_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rtw_put_snap(ptr nocapture noundef writeonly %data, i16 noundef zeroext %h_proto) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -86, ptr %data, align 1
  %ssap = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %ssap to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -86, ptr %ssap, align 1
  %ctrl = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32457, i16 %h_proto)
  %switch.selectcmp.case1 = icmp eq i16 %h_proto, -32457
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %h_proto)
  %switch.selectcmp.case2 = icmp eq i16 %h_proto, -32525
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %oui5 = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %oui5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %oui5, align 1
  %arrayidx9 = getelementptr %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx9, align 1
  %5 = select i1 %switch.selectcmp, i8 -8, i8 0
  %arrayidx12 = getelementptr %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx12, align 1
  %add.ptr = getelementptr i8, ptr %data, i32 6
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %h_proto, ptr %add.ptr, align 2
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_endofpktfile(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xmitframe_swencrypt(ptr noundef %padapter, ptr noundef %pxmitframe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bswenc = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %encrypt, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %3, label %if.then.if.end_crit_edge [
    i8 1, label %if.then.sw.bb_crit_edge
    i8 5, label %if.then.sw.bb_crit_edge1
    i8 2, label %sw.bb1
    i8 4, label %sw.bb2
  ]

if.then.sw.bb_crit_edge1:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge1
  tail call void @rtw_wep_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #15
  br label %if.end

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @rtw_tkip_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #15
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 @rtw_aes_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #15
  br label %if.end

if.end:                                           ; preds = %sw.bb2, %sw.bb1, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_mgmt_xmitframe_coalesce(ptr noundef %padapter, ptr nocapture noundef readnone %pkt, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  %MME = alloca [18 x i8], align 1
  %mic = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %0 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ra, align 1
  %2 = and i8 %1, 1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %MME) #15
  %3 = getelementptr inbounds [18 x i8], ptr %MME, i32 0, i32 2
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %4 = call ptr @memset(ptr %MME, i32 255, i32 18)
  %5 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf_addr, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 40
  %pktlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pktlen, align 4
  %add = add i32 %8, 20
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef %add) #15
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr, align 2
  %11 = lshr i16 %10, 8
  %12 = and i16 %11, 252
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup217_crit_edge, label %if.end

entry.cleanup217_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217

if.end:                                           ; preds = %entry
  %security_key_mutex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %security_key_mutex) #15
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i, align 4
  %15 = and i32 %14, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %.not = icmp eq i32 %15, 9
  br i1 %.not, label %if.end8, label %if.end.cleanup217.sink.split_crit_edge

if.end.cleanup217.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

if.end8:                                          ; preds = %if.end
  %binstallBIPkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 28
  %16 = ptrtoint ptr %binstallBIPkey to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %binstallBIPkey, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %if.end8.cleanup217.sink.split_crit_edge, label %if.end11

if.end8.cleanup217.sink.split_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool12.not = icmp eq i8 %2, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mic) #15
  %18 = call ptr @memset(ptr %mic, i32 255, i32 16)
  %19 = call ptr @memset(ptr %MME, i32 0, i32 18)
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr, align 2
  %22 = lshr i16 %21, 8
  %23 = trunc i16 %22 to i8
  %trunc = and i8 %23, -4
  %24 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %trunc, label %if.then13.cleanup.thread_crit_edge [
    i8 -64, label %if.then13.if.end23_crit_edge
    i8 -96, label %if.then13.if.end23_crit_edge347
  ]

if.then13.if.end23_crit_edge347:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then13.cleanup.thread_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.end23:                                         ; preds = %if.then13.if.end23_crit_edge, %if.then13.if.end23_crit_edge347
  %add.ptr24 = getelementptr i8, ptr %6, i32 64
  %25 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pktlen, align 4
  %add.ptr26 = getelementptr i8, ptr %add.ptr, i32 %26
  %dot11wBIPKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 13
  %27 = ptrtoint ptr %dot11wBIPKeyid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dot11wBIPKeyid, align 8
  %conv28 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %MME to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv28, ptr %MME, align 1
  %mgnt_80211w_IPN = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 5
  %30 = call ptr @memcpy(ptr %3, ptr %mgnt_80211w_IPN, i32 6)
  %31 = ptrtoint ptr %mgnt_80211w_IPN to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mgnt_80211w_IPN, align 8
  %inc = add i64 %32, 1
  store i64 %inc, ptr %mgnt_80211w_IPN, align 8
  %call33 = call ptr @rtw_set_ie(ptr noundef %add.ptr26, i32 noundef 76, i32 noundef 16, ptr noundef nonnull %MME, ptr noundef %pktlen) #15
  %33 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pktlen, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %last_txcmdsz, align 4
  %sub = add i32 %34, -24
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr, align 2
  %38 = and i16 %37, -57
  %39 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %call1, align 2
  %add.ptr45 = getelementptr i8, ptr %call1, i32 2
  %addr1 = getelementptr i8, ptr %6, i32 44
  %40 = call ptr @memcpy(ptr %add.ptr45, ptr %addr1, i32 18)
  %add.ptr47 = getelementptr i8, ptr %call1, i32 20
  %41 = call ptr @memcpy(ptr %add.ptr47, ptr %add.ptr24, i32 %sub)
  %42 = ptrtoint ptr %dot11wBIPKeyid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dot11wBIPKeyid, align 8
  %arrayidx51 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 14, i32 %43
  %add53 = add i32 %34, -4
  %call55 = call i32 @omac1_aes_128(ptr noundef %arrayidx51, ptr noundef nonnull %call1, i32 noundef %add53, ptr noundef nonnull %mic) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %cleanup, label %if.end23.cleanup.thread_crit_edge

if.end23.cleanup.thread_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end23.cleanup.thread_crit_edge, %if.then13.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic) #15
  br label %cleanup217.sink.split

cleanup:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr59 = getelementptr i8, ptr %call33, i32 -8
  %44 = ptrtoint ptr %mic to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %mic, align 8
  %46 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %add.ptr59, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic) #15
  br label %cleanup217.sink.split

if.else:                                          ; preds = %if.end11
  %trunc346 = trunc i16 %12 to i8
  %47 = add i8 %trunc346, 96
  %48 = call i8 @llvm.fshl.i8(i8 %47, i8 %47, i8 4)
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %48, label %if.else.cleanup217.sink.split_crit_edge [
    i8 2, label %if.else.if.then77_crit_edge
    i8 0, label %if.else.if.then77_crit_edge348
    i8 8, label %if.else.if.then77_crit_edge349
    i8 3, label %if.else.if.then77_crit_edge350
  ]

if.else.if.then77_crit_edge350:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

if.else.if.then77_crit_edge349:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

if.else.if.then77_crit_edge348:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

if.else.if.then77_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

if.else.cleanup217.sink.split_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

if.then77:                                        ; preds = %if.else.if.then77_crit_edge, %if.else.if.then77_crit_edge348, %if.else.if.then77_crit_edge349, %if.else.if.then77_crit_edge350
  %psta78 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 45
  %50 = ptrtoint ptr %psta78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %psta78, align 4
  %tobool79.not = icmp eq ptr %51, null
  br i1 %tobool79.not, label %if.end86, label %if.then77.if.end89_crit_edge

if.then77.if.end89_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.end86:                                         ; preds = %if.then77
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call85 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #15
  %tobool87.not = icmp eq ptr %call85, null
  br i1 %tobool87.not, label %if.end86.cleanup217.sink.split_crit_edge, label %if.end86.if.end89_crit_edge

if.end86.if.end89_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.end86.cleanup217.sink.split_crit_edge:         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

if.end89:                                         ; preds = %if.end86.if.end89_crit_edge, %if.then77.if.end89_crit_edge
  %psta.0345 = phi ptr [ %call85, %if.end86.if.end89_crit_edge ], [ %51, %if.then77.if.end89_crit_edge ]
  %state = getelementptr inbounds %struct.sta_info, ptr %psta.0345, i32 0, i32 8
  %52 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state, align 8
  %and90 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.cleanup217.sink.split_crit_edge, label %lor.lhs.false92

if.end89.cleanup217.sink.split_crit_edge:         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

lor.lhs.false92:                                  ; preds = %if.end89
  %54 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buf_addr, align 4
  %tobool94.not = icmp eq ptr %55, null
  br i1 %tobool94.not, label %lor.lhs.false92.cleanup217.sink.split_crit_edge, label %if.end96

lor.lhs.false92.cleanup217.sink.split_crit_edge:  ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

if.end96:                                         ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_const_cmp2(i16 208, i16 %12)
  %cmp98 = icmp eq i16 %12, 208
  br i1 %cmp98, label %land.lhs.true100, label %if.end96.if.end126_crit_edge

if.end96.if.end126_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126

land.lhs.true100:                                 ; preds = %if.end96
  %arrayidx101 = getelementptr i8, ptr %6, i32 64
  %56 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx101, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %57, label %land.lhs.true100.if.end126_crit_edge [
    i8 4, label %land.lhs.true100.cleanup217.sink.split_crit_edge
    i8 7, label %land.lhs.true100.cleanup217.sink.split_crit_edge351
    i8 11, label %land.lhs.true100.cleanup217.sink.split_crit_edge352
    i8 15, label %land.lhs.true100.cleanup217.sink.split_crit_edge353
    i8 127, label %land.lhs.true100.cleanup217.sink.split_crit_edge354
  ]

land.lhs.true100.cleanup217.sink.split_crit_edge354: ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

land.lhs.true100.cleanup217.sink.split_crit_edge353: ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

land.lhs.true100.cleanup217.sink.split_crit_edge352: ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

land.lhs.true100.cleanup217.sink.split_crit_edge351: ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

land.lhs.true100.cleanup217.sink.split_crit_edge: ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

land.lhs.true100.if.end126_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126

if.end126:                                        ; preds = %land.lhs.true100.if.end126_crit_edge, %if.end96.if.end126_crit_edge
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %59 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp128.not = icmp eq i8 %60, 0
  br i1 %cmp128.not, label %if.end126.if.end134_crit_edge, label %if.then130

if.end126.if.end134_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  %dot118021x_UncstKey = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 49
  %dot118021x_UncstKey132 = getelementptr inbounds %struct.sta_info, ptr %psta.0345, i32 0, i32 17
  %61 = call ptr @memcpy(ptr %dot118021x_UncstKey, ptr %dot118021x_UncstKey132, i32 16)
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %if.end126.if.end134_crit_edge
  %62 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pktlen, align 4
  %64 = call ptr @memcpy(ptr %call1, ptr %add.ptr, i32 %63)
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %65 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hdrlen, align 2
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %67 = ptrtoint ptr %iv_len to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 8, ptr %iv_len, align 2
  %icv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  %68 = ptrtoint ptr %icv_len to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 8, ptr %icv_len, align 1
  %69 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cond231 = icmp eq i8 %70, 4
  br i1 %cond231, label %do.body, label %if.end134.cleanup217.sink.split_crit_edge

if.end134.cleanup217.sink.split_crit_edge:        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup217.sink.split

do.body:                                          ; preds = %if.end134
  %conv136 = zext i16 %66 to i32
  %add.ptr137 = getelementptr i8, ptr %add.ptr, i32 %conv136
  %dot11wtxpn = getelementptr inbounds %struct.sta_info, ptr %psta.0345, i32 0, i32 19
  %TSC0 = getelementptr inbounds %struct.anon.101, ptr %dot11wtxpn, i32 0, i32 7
  %71 = ptrtoint ptr %TSC0 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %TSC0, align 1
  %iv = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14
  %73 = ptrtoint ptr %iv to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %iv, align 4
  %TSC1 = getelementptr inbounds %struct.anon.101, ptr %dot11wtxpn, i32 0, i32 6
  %74 = ptrtoint ptr %TSC1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %TSC1, align 2
  %arrayidx143 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 1
  %76 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx143, align 1
  %arrayidx145 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 2
  %77 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx145, align 2
  %arrayidx147 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 3
  %78 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 32, ptr %arrayidx147, align 1
  %TSC2 = getelementptr inbounds %struct.anon.101, ptr %dot11wtxpn, i32 0, i32 5
  %79 = ptrtoint ptr %TSC2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %TSC2, align 1
  %arrayidx150 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 4
  %81 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx150, align 4
  %TSC3 = getelementptr inbounds %struct.anon.101, ptr %dot11wtxpn, i32 0, i32 4
  %82 = ptrtoint ptr %TSC3 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %TSC3, align 4
  %arrayidx153 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 5
  %84 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx153, align 1
  %TSC4 = getelementptr inbounds %struct.anon.101, ptr %dot11wtxpn, i32 0, i32 3
  %85 = ptrtoint ptr %TSC4 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %TSC4, align 1
  %arrayidx156 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 6
  %87 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx156, align 2
  %TSC5 = getelementptr inbounds %struct.anon.101, ptr %dot11wtxpn, i32 0, i32 2
  %88 = ptrtoint ptr %TSC5 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %TSC5, align 2
  %arrayidx159 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 7
  %90 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx159, align 1
  %91 = ptrtoint ptr %dot11wtxpn to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %dot11wtxpn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %92)
  %cmp161 = icmp eq i64 %92, 281474976710655
  %add164 = add i64 %92, 1
  %spec.select = select i1 %cmp161, i64 0, i64 %add164
  %93 = ptrtoint ptr %dot11wtxpn to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %spec.select, ptr %dot11wtxpn, align 8
  %94 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %iv_len, align 2
  %conv169 = zext i8 %95 to i32
  %96 = call ptr @memcpy(ptr %add.ptr137, ptr %iv, i32 %conv169)
  %97 = load i8, ptr %iv_len, align 2
  %conv171 = zext i8 %97 to i32
  %add.ptr172 = getelementptr i8, ptr %add.ptr137, i32 %conv171
  %98 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %hdrlen, align 2
  %conv174 = zext i16 %99 to i32
  %add.ptr175 = getelementptr i8, ptr %call1, i32 %conv174
  %100 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pktlen, align 4
  %sub179 = sub i32 %101, %conv174
  %102 = call ptr @memcpy(ptr %add.ptr172, ptr %add.ptr175, i32 %sub179)
  %103 = load i32, ptr %pktlen, align 4
  %104 = load i16, ptr %hdrlen, align 2
  %conv182 = zext i16 %104 to i32
  %sub183 = sub i32 %103, %conv182
  %add.ptr184 = getelementptr i8, ptr %add.ptr172, i32 %sub183
  %105 = load i8, ptr %iv_len, align 2
  %conv186 = zext i8 %105 to i32
  %add188 = add i32 %103, %conv186
  store i32 %add188, ptr %pktlen, align 4
  %106 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %icv_len, align 1
  %conv190 = zext i8 %107 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp191.not = icmp eq i8 %107, 0
  br i1 %cmp191.not, label %do.body.if.end203_crit_edge, label %land.lhs.true193

do.body.if.end203_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end203

land.lhs.true193:                                 ; preds = %do.body
  %bswenc = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 2
  %108 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool195.not = icmp eq i8 %109, 0
  br i1 %tobool195.not, label %land.lhs.true193.if.end203_crit_edge, label %if.then196

land.lhs.true193.if.end203_crit_edge:             ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end203

if.then196:                                       ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #17
  %icv = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 15
  %110 = call ptr @memcpy(ptr %add.ptr184, ptr %icv, i32 %conv190)
  br label %if.end203

if.end203:                                        ; preds = %if.then196, %land.lhs.true193.if.end203_crit_edge, %do.body.if.end203_crit_edge
  %111 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %icv_len, align 1
  %conv205 = zext i8 %112 to i32
  %113 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pktlen, align 4
  %add207 = add i32 %114, %conv205
  store i32 %add207, ptr %pktlen, align 4
  %last_txcmdsz209 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %115 = ptrtoint ptr %last_txcmdsz209 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add207, ptr %last_txcmdsz209, align 4
  %116 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr, align 2
  %118 = or i16 %117, 64
  store i16 %118, ptr %add.ptr, align 2
  tail call fastcc void @xmitframe_swencrypt(ptr noundef %padapter, ptr noundef %pxmitframe)
  br label %cleanup217.sink.split

cleanup217.sink.split:                            ; preds = %if.end203, %if.end134.cleanup217.sink.split_crit_edge, %land.lhs.true100.cleanup217.sink.split_crit_edge, %land.lhs.true100.cleanup217.sink.split_crit_edge351, %land.lhs.true100.cleanup217.sink.split_crit_edge352, %land.lhs.true100.cleanup217.sink.split_crit_edge353, %land.lhs.true100.cleanup217.sink.split_crit_edge354, %lor.lhs.false92.cleanup217.sink.split_crit_edge, %if.end89.cleanup217.sink.split_crit_edge, %if.end86.cleanup217.sink.split_crit_edge, %if.else.cleanup217.sink.split_crit_edge, %cleanup, %cleanup.thread, %if.end8.cleanup217.sink.split_crit_edge, %if.end.cleanup217.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %cleanup ], [ 1, %if.else.cleanup217.sink.split_crit_edge ], [ 1, %if.end203 ], [ 1, %if.end8.cleanup217.sink.split_crit_edge ], [ 1, %if.end.cleanup217.sink.split_crit_edge ], [ 0, %cleanup.thread ], [ 0, %land.lhs.true100.cleanup217.sink.split_crit_edge ], [ 0, %land.lhs.true100.cleanup217.sink.split_crit_edge351 ], [ 0, %land.lhs.true100.cleanup217.sink.split_crit_edge352 ], [ 0, %land.lhs.true100.cleanup217.sink.split_crit_edge353 ], [ 0, %land.lhs.true100.cleanup217.sink.split_crit_edge354 ], [ 0, %if.end134.cleanup217.sink.split_crit_edge ], [ 0, %if.end89.cleanup217.sink.split_crit_edge ], [ 0, %lor.lhs.false92.cleanup217.sink.split_crit_edge ], [ 0, %if.end86.cleanup217.sink.split_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %security_key_mutex) #15
  call void @kfree(ptr noundef nonnull %call1) #15
  br label %cleanup217

cleanup217:                                       ; preds = %cleanup217.sink.split, %entry.cleanup217_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup217_crit_edge ], [ %retval.0.ph, %cleanup217.sink.split ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %MME) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_set_ie(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omac1_aes_128(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_update_protection(ptr nocapture noundef %padapter, ptr noundef %ie, i32 noundef %ie_len) local_unnamed_addr #0 align 64 {
entry:
  %erp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %erp_len) #15
  %0 = ptrtoint ptr %erp_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %erp_len, align 4, !annotation !75
  %vcs_setting = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 18
  %1 = ptrtoint ptr %vcs_setting to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vcs_setting, align 8
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %2, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vcs = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 19
  %4 = ptrtoint ptr %vcs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %vcs, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call = call ptr @rtw_get_ie(ptr noundef %ie, i32 noundef 42, ptr noundef nonnull %erp_len, i32 noundef %ie_len) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %vcs2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 19
  %5 = ptrtoint ptr %vcs2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vcs2, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  %add.ptr = getelementptr i8, ptr %call, i32 2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.else12, label %if.then5

if.then5:                                         ; preds = %if.else
  %vcs_type = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 12
  %9 = ptrtoint ptr %vcs_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vcs_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  %vcs9 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 19
  br i1 %cmp, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %vcs9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %vcs9, align 1
  br label %sw.epilog

if.else10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %vcs9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %vcs9, align 1
  br label %sw.epilog

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %vcs13 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 19
  %13 = ptrtoint ptr %vcs13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %vcs13, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else12, %if.else10, %if.then8, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erp_len) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_count_tx_stats(ptr nocapture noundef %padapter, ptr nocapture noundef readonly %pxmitframe, i32 noundef %sz) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 3
  %0 = ptrtoint ptr %frame_tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame_tag, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then:                                          ; preds = %entry
  %agg_num = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 8
  %2 = ptrtoint ptr %agg_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %agg_num, align 1
  %conv = zext i8 %3 to i32
  %LinkDetectInfo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34
  %4 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %LinkDetectInfo, align 4
  %add = add i32 %5, %conv
  store i32 %add, ptr %LinkDetectInfo, align 4
  %conv1 = zext i8 %3 to i64
  %tx_pkts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 22
  %6 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_pkts, align 8
  %add2 = add i64 %7, %conv1
  store i64 %add2, ptr %tx_pkts, align 8
  %conv3 = sext i32 %sz to i64
  %tx_bytes = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 21
  %8 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_bytes, align 8
  %add4 = add i64 %9, %conv3
  store i64 %add4, ptr %tx_bytes, align 8
  %psta5 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 45
  %10 = ptrtoint ptr %psta5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %psta5, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then.if.end13_crit_edge, label %if.then6

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %tx_pkts8 = getelementptr inbounds %struct.sta_info, ptr %11, i32 0, i32 34, i32 18
  %12 = ptrtoint ptr %tx_pkts8 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_pkts8, align 8
  %add9 = add i64 %13, %conv1
  store i64 %add9, ptr %tx_pkts8, align 8
  %tx_bytes11 = getelementptr inbounds %struct.sta_info, ptr %11, i32 0, i32 34, i32 19
  %14 = ptrtoint ptr %tx_bytes11 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_bytes11, align 8
  %add12 = add i64 %15, %conv3
  store i64 %add12, ptr %tx_bytes11, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__rtw_alloc_cmdxmitframe(ptr noundef %pxmitpriv, i32 noundef %buf_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmit_queue.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 11, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %0 = ptrtoint ptr %free_xmit_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmit_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %free_xmit_queue.i
  br i1 %cmp.i.not.i, label %if.end.thread.i, label %if.else.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %if.else.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  %free_xmitframe_cnt.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  %10 = ptrtoint ptr %free_xmitframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmitframe_cnt.i, align 8
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %free_xmitframe_cnt.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buf_addr.i.i, align 4
  %pxmitbuf.i.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %pxmitbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pxmitbuf.i.i, align 4
  %attrib.i.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 1
  %14 = call ptr @memset(ptr %attrib.i.i, i32 0, i32 152)
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %frame_tag.i.i, align 4
  %pg_num.i.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %pg_num.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %pg_num.i.i, align 4
  %agg_num.i.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %agg_num.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %agg_num.i.i, align 1
  %ack_report.i.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %ack_report.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ack_report.i.i, align 2
  %arrayidx.i = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %if.then3, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %priv_data.i = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type, i32 4
  %19 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %priv_data.i, align 4
  %len.i = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type, i32 8
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %len.i, align 4
  %phead.i = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type, i32 10
  %21 = ptrtoint ptr %phead.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phead.i, align 4
  %ptail.i = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type, i32 12
  %23 = ptrtoint ptr %ptail.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %ptail.i, align 4
  %pdata.i = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type, i32 11
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %pdata.i, align 4
  %agg_num.i = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type, i32 16
  %25 = ptrtoint ptr %agg_num.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %agg_num.i, align 1
  %pg_num.i = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type, i32 15
  %26 = ptrtoint ptr %pg_num.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %pg_num.i, align 4
  %sctx.i = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type, i32 9
  %27 = ptrtoint ptr %sctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sctx.i, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %if.then.i.if.end5_crit_edge, label %rtw_sctx_done_err.exit.i

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

rtw_sctx_done_err.exit.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %status1.i.i = getelementptr inbounds %struct.submit_ctx, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %status1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %status1.i.i, align 4
  %30 = ptrtoint ptr %sctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sctx.i, align 4
  %done.i.i = getelementptr inbounds %struct.submit_ctx, ptr %31, i32 0, i32 3
  tail call void @complete(ptr noundef %done.i.i) #15
  %32 = ptrtoint ptr %sctx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %sctx.i, align 4
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 @rtw_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef nonnull %1)
  br label %cleanup

if.end5:                                          ; preds = %rtw_sctx_done_err.exit.i, %if.then.i.if.end5_crit_edge
  %33 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %frame_tag.i.i, align 4
  %34 = ptrtoint ptr %pxmitbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx.i, ptr %pxmitbuf.i.i, align 4
  %pbuf = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 40, i32 %buf_type, i32 3
  %35 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pbuf, align 4
  %37 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %buf_addr.i.i, align 4
  %38 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %priv_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.end.i.cleanup_crit_edge, %if.end.thread.i
  %retval.0 = phi ptr [ %1, %if.end5 ], [ null, %if.then3 ], [ null, %if.end.thread.i ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_xmitframe(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmit_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 11
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 11, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %0 = ptrtoint ptr %free_xmit_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmit_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %free_xmit_queue
  br i1 %cmp.i.not, label %if.end.thread, label %if.else

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  br label %rtw_init_xmitframe.exit

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %free_xmitframe_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  %10 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmitframe_cnt, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %free_xmitframe_cnt, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.rtw_init_xmitframe.exit_crit_edge, label %if.then.i

if.end.rtw_init_xmitframe.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_init_xmitframe.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buf_addr.i, align 4
  %pxmitbuf.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %pxmitbuf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pxmitbuf.i, align 4
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 1
  %14 = call ptr @memset(ptr %attrib.i, i32 0, i32 152)
  %frame_tag.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %frame_tag.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %frame_tag.i, align 4
  %pg_num.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %pg_num.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %pg_num.i, align 4
  %agg_num.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %agg_num.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %agg_num.i, align 1
  %ack_report.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %ack_report.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ack_report.i, align 2
  br label %rtw_init_xmitframe.exit

rtw_init_xmitframe.exit:                          ; preds = %if.then.i, %if.end.rtw_init_xmitframe.exit_crit_edge, %if.end.thread
  %pxframe.012 = phi ptr [ null, %if.end.thread ], [ null, %if.end.rtw_init_xmitframe.exit_crit_edge ], [ %1, %if.then.i ]
  ret ptr %pxframe.012
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 17
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %tobool.not = icmp eq ptr %pxmitframe, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %entry
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 2
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pkt, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %alloc_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 10
  %5 = ptrtoint ptr %alloc_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_addr, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %6) #15
  br label %check_pkt_complete

if.end9:                                          ; preds = %if.end5
  %ext_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 11
  %7 = ptrtoint ptr %ext_tag to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ext_tag, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %8, label %if.end9.if.end19_crit_edge [
    i8 0, label %if.then11
    i8 1, label %if.then16
  ]

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %free_xmit_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 11
  br label %if.end19

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %free_xframe_ext_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 15
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then11, %if.end9.if.end19_crit_edge
  %queue.0 = phi ptr [ %free_xmit_queue, %if.then11 ], [ %free_xframe_ext_queue, %if.then16 ], [ null, %if.end9.if.end19_crit_edge ]
  %lock = getelementptr inbounds %struct.__queue, ptr %queue.0, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitframe) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_del_init.exit_crit_edge

if.end19.list_del_init.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pxmitframe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end19.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %pxmitframe, ptr %pxmitframe, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pxmitframe, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queue.0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i58 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitframe, ptr noundef %19, ptr noundef %queue.0) #15
  br i1 %call.i.i58, label %if.end.i.i59, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i59:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pxmitframe, ptr %prev.i, align 4
  %21 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %queue.0, ptr %pxmitframe, align 4
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %pxmitframe, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i59, %list_del_init.exit.list_add_tail.exit_crit_edge
  %24 = ptrtoint ptr %ext_tag to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ext_tag, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %25, label %list_add_tail.exit.if.end34_crit_edge [
    i8 0, label %if.then25
    i8 1, label %if.then31
  ]

list_add_tail.exit.if.end34_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then25:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %free_xmitframe_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  br label %if.end34.sink.split

if.then31:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %free_xframe_ext_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 14
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then31, %if.then25
  %free_xframe_ext_cnt.sink60 = phi ptr [ %free_xframe_ext_cnt, %if.then31 ], [ %free_xmitframe_cnt, %if.then25 ]
  %27 = ptrtoint ptr %free_xframe_ext_cnt.sink60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %free_xframe_ext_cnt.sink60, align 8
  %inc32 = add i32 %28, 1
  store i32 %inc32, ptr %free_xframe_ext_cnt.sink60, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %list_add_tail.exit.if.end34_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  br label %check_pkt_complete

check_pkt_complete:                               ; preds = %if.end34, %if.then7
  br i1 %tobool1.not, label %check_pkt_complete.exit_crit_edge, label %if.then37

check_pkt_complete.exit_crit_edge:                ; preds = %check_pkt_complete
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.then37:                                        ; preds = %check_pkt_complete
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtw_os_pkt_complete(ptr noundef %1, ptr noundef nonnull %3) #15
  br label %exit

exit:                                             ; preds = %if.then37, %check_pkt_complete.exit_crit_edge, %entry.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_xmitbuf_ext(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmit_extbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %0 = ptrtoint ptr %free_xmit_extbuf_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmit_extbuf_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %free_xmit_extbuf_queue
  br i1 %cmp.i.not, label %entry.if.end16_crit_edge, label %if.else

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %if.then10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then10:                                        ; preds = %if.end
  %free_xmit_extbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 39
  %10 = ptrtoint ptr %free_xmit_extbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmit_extbuf_cnt, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %free_xmit_extbuf_cnt, align 8
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %priv_data, align 4
  %len = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %len, align 4
  %phead11 = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %phead11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phead11, align 4
  %ptail = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %ptail to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %ptail, align 4
  %pdata = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %pdata, align 4
  %agg_num = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %agg_num to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %agg_num, align 1
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sctx, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %if.then10.if.end16_crit_edge, label %rtw_sctx_done_err.exit

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

rtw_sctx_done_err.exit:                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %status1.i = getelementptr inbounds %struct.submit_ctx, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %status1.i, align 4
  %22 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sctx, align 4
  %done.i = getelementptr inbounds %struct.submit_ctx, ptr %23, i32 0, i32 3
  tail call void @complete(ptr noundef %done.i) #15
  %24 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sctx, align 4
  br label %if.end16

if.end16:                                         ; preds = %rtw_sctx_done_err.exit, %if.then10.if.end16_crit_edge, %if.end.if.end16_crit_edge, %entry.if.end16_crit_edge
  %pxmitbuf.034 = phi ptr [ %1, %if.then10.if.end16_crit_edge ], [ %1, %rtw_sctx_done_err.exit ], [ null, %if.end.if.end16_crit_edge ], [ null, %entry.if.end16_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #15
  ret ptr %pxmitbuf.034
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sctx_done_err(ptr nocapture noundef %sctx, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %status1 = getelementptr inbounds %struct.submit_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %status1, align 4
  %3 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sctx, align 4
  %done = getelementptr inbounds %struct.submit_ctx, ptr %4, i32 0, i32 3
  tail call void @complete(ptr noundef %done) #15
  %5 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sctx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_xmitbuf_ext(ptr noundef %pxmitpriv, ptr noundef %pxmitbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pxmitbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body1:                                         ; preds = %entry
  %free_xmit_extbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitbuf) #15
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_del_init.exit_crit_edge

do.body1.list_del_init.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxmitbuf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body1.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pxmitbuf, ptr %pxmitbuf, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pxmitbuf, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitbuf, ptr noundef %9, ptr noundef %free_xmit_extbuf_queue) #15
  br i1 %call.i.i14, label %if.end.i.i15, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i15:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pxmitbuf, ptr %prev.i, align 4
  %11 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_xmit_extbuf_queue, ptr %pxmitbuf, align 4
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pxmitbuf, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i15, %list_del_init.exit.list_add_tail.exit_crit_edge
  %free_xmit_extbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 39
  %14 = ptrtoint ptr %free_xmit_extbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_xmit_extbuf_cnt, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %free_xmit_extbuf_cnt, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %list_add_tail.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_xmitbuf(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %0 = ptrtoint ptr %free_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmitbuf_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %free_xmitbuf_queue
  br i1 %cmp.i.not, label %entry.if.end16_crit_edge, label %if.else

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %if.then10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then10:                                        ; preds = %if.end
  %free_xmitbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 35
  %10 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmitbuf_cnt, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %free_xmitbuf_cnt, align 8
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %priv_data, align 4
  %len = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %len, align 4
  %phead11 = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %phead11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phead11, align 4
  %ptail = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %ptail to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %ptail, align 4
  %pdata = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %pdata, align 4
  %agg_num = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %agg_num to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %agg_num, align 1
  %pg_num = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %pg_num to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %pg_num, align 4
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sctx, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %if.then10.if.end16_crit_edge, label %rtw_sctx_done_err.exit

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

rtw_sctx_done_err.exit:                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %status1.i = getelementptr inbounds %struct.submit_ctx, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %status1.i, align 4
  %23 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sctx, align 4
  %done.i = getelementptr inbounds %struct.submit_ctx, ptr %24, i32 0, i32 3
  tail call void @complete(ptr noundef %done.i) #15
  %25 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %sctx, align 4
  br label %if.end16

if.end16:                                         ; preds = %rtw_sctx_done_err.exit, %if.then10.if.end16_crit_edge, %if.end.if.end16_crit_edge, %entry.if.end16_crit_edge
  %pxmitbuf.035 = phi ptr [ %1, %if.then10.if.end16_crit_edge ], [ %1, %rtw_sctx_done_err.exit ], [ null, %if.end.if.end16_crit_edge ], [ null, %entry.if.end16_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #15
  ret ptr %pxmitbuf.035
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_xmitbuf(ptr noundef %pxmitpriv, ptr noundef %pxmitbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31
  %tobool.not = icmp eq ptr %pxmitbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 9
  %0 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %rtw_sctx_done_err.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

rtw_sctx_done_err.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %status1.i = getelementptr inbounds %struct.submit_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %status1.i, align 4
  %3 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sctx, align 4
  %done.i = getelementptr inbounds %struct.submit_ctx, ptr %4, i32 0, i32 3
  tail call void @complete(ptr noundef %done.i) #15
  %5 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sctx, align 4
  br label %if.end4

if.end4:                                          ; preds = %rtw_sctx_done_err.exit, %if.end.if.end4_crit_edge
  %buf_tag = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 5
  %6 = ptrtoint ptr %buf_tag to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buf_tag, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %7, label %do.body13 [
    i16 2, label %if.end4.cleanup_crit_edge
    i16 1, label %do.body1.i
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body1.i:                                       ; preds = %if.end4
  %free_xmit_extbuf_queue.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36
  %lock.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitbuf) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body1.i.list_del_init.exit.i_crit_edge

do.body1.i.list_del_init.exit.i_crit_edge:        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pxmitbuf, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.body1.i.list_del_init.exit.i_crit_edge
  %15 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pxmitbuf, ptr %pxmitbuf, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pxmitbuf, ptr %prev.i3.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitbuf, ptr noundef %18, ptr noundef %free_xmit_extbuf_queue.i) #15
  br i1 %call.i.i14.i, label %if.end.i.i15.i, label %list_del_init.exit.i.rtw_free_xmitbuf_ext.exit_crit_edge

list_del_init.exit.i.rtw_free_xmitbuf_ext.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_free_xmitbuf_ext.exit

if.end.i.i15.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pxmitbuf, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_xmit_extbuf_queue.i, ptr %pxmitbuf, align 4
  %21 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %pxmitbuf, ptr %18, align 4
  br label %rtw_free_xmitbuf_ext.exit

rtw_free_xmitbuf_ext.exit:                        ; preds = %if.end.i.i15.i, %list_del_init.exit.i.rtw_free_xmitbuf_ext.exit_crit_edge
  %free_xmit_extbuf_cnt.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 39
  %23 = ptrtoint ptr %free_xmit_extbuf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %free_xmit_extbuf_cnt.i, align 8
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %free_xmit_extbuf_cnt.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #15
  br label %cleanup

do.body13:                                        ; preds = %if.end4
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 1
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitbuf) #15
  br i1 %call.i.i, label %if.end.i.i, label %do.body13.list_del_init.exit_crit_edge

do.body13.list_del_init.exit_crit_edge:           ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i38 = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i38, align 4
  %27 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pxmitbuf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body13.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %pxmitbuf, ptr %pxmitbuf, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pxmitbuf, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i39 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitbuf, ptr noundef %34, ptr noundef %free_xmitbuf_queue) #15
  br i1 %call.i.i39, label %if.end.i.i40, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i40:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pxmitbuf, ptr %prev.i, align 4
  %36 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %free_xmitbuf_queue, ptr %pxmitbuf, align 4
  %37 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i3.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %pxmitbuf, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i40, %list_del_init.exit.list_add_tail.exit_crit_edge
  %free_xmitbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 35
  %39 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %free_xmitbuf_cnt, align 8
  %inc = add i32 %40, 1
  store i32 %inc, ptr %free_xmitbuf_cnt, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #15
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %rtw_free_xmitbuf_ext.exit, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ 1, %rtw_free_xmitbuf_ext.exit ], [ 1, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_xmitframe_ext(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xframe_ext_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 15
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %0 = ptrtoint ptr %free_xframe_ext_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xframe_ext_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %free_xframe_ext_queue
  br i1 %cmp.i.not, label %if.end.thread, label %if.else

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  br label %rtw_init_xmitframe.exit

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %free_xframe_ext_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 14
  %10 = ptrtoint ptr %free_xframe_ext_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xframe_ext_cnt, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %free_xframe_ext_cnt, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.rtw_init_xmitframe.exit_crit_edge, label %if.then.i

if.end.rtw_init_xmitframe.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_init_xmitframe.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buf_addr.i, align 4
  %pxmitbuf.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %pxmitbuf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pxmitbuf.i, align 4
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 1
  %14 = call ptr @memset(ptr %attrib.i, i32 0, i32 152)
  %frame_tag.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %frame_tag.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %frame_tag.i, align 4
  %pg_num.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %pg_num.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %pg_num.i, align 4
  %agg_num.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %agg_num.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %agg_num.i, align 1
  %ack_report.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %ack_report.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ack_report.i, align 2
  br label %rtw_init_xmitframe.exit

rtw_init_xmitframe.exit:                          ; preds = %if.then.i, %if.end.rtw_init_xmitframe.exit_crit_edge, %if.end.thread
  %pxframe.013 = phi ptr [ null, %if.end.thread ], [ null, %if.end.rtw_init_xmitframe.exit_crit_edge ], [ %1, %if.then.i ]
  ret ptr %pxframe.013
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_xmitframe_once(ptr nocapture noundef readonly %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 196) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  %sub = add i32 %0, 3
  %div11 = and i32 %sub, -4
  %1 = inttoptr i32 %div11 to ptr
  %alloc_addr1 = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %alloc_addr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %alloc_addr1, align 4
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 17
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  %padapter = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %padapter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %padapter, align 4
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %frame_tag to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %frame_tag, align 4
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pkt, align 4
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %buf_addr, align 4
  %pxmitbuf = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pxmitbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div11)
  %tobool.not.i = icmp eq i32 %div11, 0
  br i1 %tobool.not.i, label %if.end.exit_crit_edge, label %if.then.i

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %buf_addr, align 4
  %11 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pxmitbuf, align 4
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 1
  %12 = call ptr @memset(ptr %attrib.i, i32 0, i32 152)
  %13 = ptrtoint ptr %frame_tag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %frame_tag, align 4
  %pg_num.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %pg_num.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %pg_num.i, align 4
  %agg_num.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %agg_num.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %agg_num.i, align 1
  %ack_report.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %ack_report.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ack_report.i, align 2
  br label %exit

exit:                                             ; preds = %if.then.i, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %pxframe.0 = phi ptr [ null, %entry.exit_crit_edge ], [ null, %if.end.exit_crit_edge ], [ %1, %if.then.i ]
  ret ptr %pxframe.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_pkt_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_xmitframe_queue(ptr noundef %pxmitpriv, ptr noundef %pframequeue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %pframequeue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %0 = ptrtoint ptr %pframequeue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pframequeue, align 4
  %cmp.i.not13 = icmp eq ptr %1, %pframequeue
  br i1 %cmp.i.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %plist.014 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %plist.014 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %plist.014, align 4
  %call4 = tail call i32 @rtw_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef %plist.014)
  %cmp.i.not = icmp eq ptr %tmp.0, %pframequeue
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_xmit_classifier(ptr noundef %padapter, ptr noundef %pxmitframe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmit_classifier(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwxmits = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 25
  %0 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwxmits, align 8
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #15
  %psta1 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 45
  %2 = ptrtoint ptr %psta1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psta1, align 4
  %cmp.not = icmp ne ptr %3, %call
  %tobool.not = icmp eq ptr %call, null
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %6 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %priority, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %7, label %sw.default.i [
    i8 1, label %if.end6.sw.bb.i_crit_edge
    i8 2, label %if.end6.sw.bb.i_crit_edge41
    i8 4, label %if.end6.sw.bb1.i_crit_edge
    i8 5, label %if.end6.sw.bb1.i_crit_edge42
    i8 6, label %if.end6.sw.bb3.i_crit_edge
    i8 7, label %if.end6.sw.bb3.i_crit_edge43
  ]

if.end6.sw.bb3.i_crit_edge43:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i

if.end6.sw.bb3.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i

if.end6.sw.bb1.i_crit_edge42:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end6.sw.bb1.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end6.sw.bb.i_crit_edge41:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end6.sw.bb.i_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end6.sw.bb.i_crit_edge, %if.end6.sw.bb.i_crit_edge41
  %bk_q.i = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 4
  br label %rtw_get_sta_pending.exit

sw.bb1.i:                                         ; preds = %if.end6.sw.bb1.i_crit_edge, %if.end6.sw.bb1.i_crit_edge42
  %vi_q.i = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 5
  br label %rtw_get_sta_pending.exit

sw.bb3.i:                                         ; preds = %if.end6.sw.bb3.i_crit_edge, %if.end6.sw.bb3.i_crit_edge43
  %vo_q.i = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 6
  br label %rtw_get_sta_pending.exit

sw.default.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %be_q.i = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 3
  br label %rtw_get_sta_pending.exit

rtw_get_sta_pending.exit:                         ; preds = %sw.default.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %.sink.i = phi i32 [ 2, %sw.default.i ], [ 0, %sw.bb3.i ], [ 1, %sw.bb1.i ], [ 3, %sw.bb.i ]
  %ptxservq.0.i = phi ptr [ %be_q.i, %sw.default.i ], [ %vo_q.i, %sw.bb3.i ], [ %vi_q.i, %sw.bb1.i ], [ %bk_q.i, %sw.bb.i ]
  %9 = ptrtoint ptr %ptxservq.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %ptxservq.0.i, align 4
  %cmp.i.not = icmp eq ptr %10, %ptxservq.0.i
  br i1 %cmp.i.not, label %if.then10, label %rtw_get_sta_pending.exit.if.end13_crit_edge

rtw_get_sta_pending.exit.if.end13_crit_edge:      ; preds = %rtw_get_sta_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then10:                                        ; preds = %rtw_get_sta_pending.exit
  %arrayidx = getelementptr %struct.hw_xmit, ptr %1, i32 %.sink.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ptxservq.0.i, ptr noundef %14, ptr noundef %12) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.if.end13_crit_edge

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ptxservq.0.i, ptr %prev.i, align 4
  %16 = ptrtoint ptr %ptxservq.0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %ptxservq.0.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ptxservq.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %ptxservq.0.i, ptr %14, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end.i.i, %if.then10.if.end13_crit_edge, %rtw_get_sta_pending.exit.if.end13_crit_edge
  %sta_pending = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i, i32 0, i32 1
  %prev.i35 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i35, align 4
  %call.i.i36 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitframe, ptr noundef %20, ptr noundef %sta_pending) #15
  br i1 %call.i.i36, label %if.end.i.i38, label %if.end13.list_add_tail.exit39_crit_edge

if.end13.list_add_tail.exit39_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit39

if.end.i.i38:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pxmitframe, ptr %prev.i35, align 4
  %22 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sta_pending, ptr %pxmitframe, align 4
  %prev3.i.i37 = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i37, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %pxmitframe, ptr %20, align 4
  br label %list_add_tail.exit39

list_add_tail.exit39:                             ; preds = %if.end.i.i38, %if.end13.list_add_tail.exit39_crit_edge
  %qcnt = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qcnt, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %qcnt, align 4
  %accnt = getelementptr %struct.hw_xmit, ptr %1, i32 %.sink.i, i32 1
  %27 = ptrtoint ptr %accnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %accnt, align 4
  %inc17 = add i32 %28, 1
  store i32 %inc17, ptr %accnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit39, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 1, %list_add_tail.exit39 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @rtw_get_sta_pending(ptr nocapture readnone %padapter, ptr noundef readnone %psta, i32 noundef %up, ptr nocapture noundef writeonly %ac) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %up to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %up, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge13
    i32 4, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge14
    i32 6, label %entry.sw.bb3_crit_edge
    i32 7, label %entry.sw.bb3_crit_edge15
  ]

entry.sw.bb3_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge14
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge15
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %be_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %.sink = phi i8 [ 2, %sw.default ], [ 0, %sw.bb3 ], [ 1, %sw.bb1 ], [ 3, %sw.bb ]
  %ptxservq.0 = phi ptr [ %be_q, %sw.default ], [ %vo_q, %sw.bb3 ], [ %vi_q, %sw.bb1 ], [ %bk_q, %sw.bb ]
  %1 = ptrtoint ptr %ac to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %.sink, ptr %ac, align 1
  ret ptr %ptxservq.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_get_ff_hwaddr(ptr nocapture noundef readonly %pxmitframe) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %qsel = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 36
  %0 = ptrtoint ptr %qsel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qsel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %1)
  %2 = icmp ult i8 %1, 18
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = sext i8 %1 to i32
  %switch.gep = getelementptr inbounds [18 x i32], ptr @switch.table.rtw_get_ff_hwaddr, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %addr.0 = phi i32 [ %switch.load, %switch.lookup ], [ 5, %entry.sw.epilog_crit_edge ]
  ret i32 %addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmit(ptr noundef %padapter, ptr nocapture noundef readonly %ppkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %0 = load i32, ptr @rtw_xmit.start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  store i32 %1, ptr @rtw_xmit.start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %free_xmit_queue.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 11
  %lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 11, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %2 = ptrtoint ptr %free_xmit_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free_xmit_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %free_xmit_queue.i
  br i1 %cmp.i.not.i, label %if.end.thread.i, label %if.else.i

if.end.thread.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  br label %rtw_alloc_xmitframe.exit

if.else.i:                                        ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %if.else.i.if.end.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i.i, align 4
  %free_xmitframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 10
  %12 = ptrtoint ptr %free_xmitframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_xmitframe_cnt.i, align 8
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %free_xmitframe_cnt.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.rtw_alloc_xmitframe.exit_crit_edge, label %if.then.i.i

if.end.i.rtw_alloc_xmitframe.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_alloc_xmitframe.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %buf_addr.i.i, align 4
  %pxmitbuf.i.i = getelementptr inbounds %struct.xmit_frame, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %pxmitbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pxmitbuf.i.i, align 4
  %attrib.i.i = getelementptr inbounds %struct.xmit_frame, ptr %3, i32 0, i32 1
  %16 = call ptr @memset(ptr %attrib.i.i, i32 0, i32 152)
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %frame_tag.i.i, align 4
  %pg_num.i.i = getelementptr inbounds %struct.xmit_frame, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %pg_num.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pg_num.i.i, align 4
  %agg_num.i.i = getelementptr inbounds %struct.xmit_frame, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %agg_num.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %agg_num.i.i, align 1
  %ack_report.i.i = getelementptr inbounds %struct.xmit_frame, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %ack_report.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ack_report.i.i, align 2
  br label %rtw_alloc_xmitframe.exit

rtw_alloc_xmitframe.exit:                         ; preds = %if.then.i.i, %if.end.i.rtw_alloc_xmitframe.exit_crit_edge, %if.end.thread.i
  %pxframe.012.i = phi ptr [ null, %if.end.thread.i ], [ null, %if.end.i.rtw_alloc_xmitframe.exit_crit_edge ], [ %3, %if.then.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = load i32, ptr @rtw_xmit.start, align 4
  %sub = sub i32 %21, %22
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %call1)
  %cmp2 = icmp ugt i32 %call1, 2000
  br i1 %cmp2, label %if.then3, label %rtw_alloc_xmitframe.exit.if.end4_crit_edge

rtw_alloc_xmitframe.exit.if.end4_crit_edge:       ; preds = %rtw_alloc_xmitframe.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %rtw_alloc_xmitframe.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  store i32 %23, ptr @rtw_xmit.start, align 4
  store i32 0, ptr @rtw_xmit.drop_cnt, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %rtw_alloc_xmitframe.exit.if.end4_crit_edge
  %tobool.not = icmp eq ptr %pxframe.012.i, null
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %24 = load i32, ptr @rtw_xmit.drop_cnt, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr @rtw_xmit.drop_cnt, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %25 = ptrtoint ptr %ppkt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ppkt, align 4
  %attrib = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.012.i, i32 0, i32 1
  %call7 = tail call fastcc i32 @update_attrib(ptr noundef %padapter, ptr noundef %26, ptr noundef %attrib)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %pxframe.012.i)
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %27 = ptrtoint ptr %ppkt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ppkt, align 4
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.012.i, i32 0, i32 2
  %29 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %pkt, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.012.i, i32 0, i32 1, i32 16
  %30 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %priority.i, align 2
  %qsel1.i = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.012.i, i32 0, i32 1, i32 36
  %32 = ptrtoint ptr %qsel1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %qsel1.i, align 2
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #15
  %call13 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef nonnull %pxframe.012.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #15
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 @rtw_hal_xmit(ptr noundef %padapter, ptr noundef nonnull %pxframe.012.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  %. = zext i1 %cmp20 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end11.cleanup_crit_edge, %if.then9, %if.then5
  %retval.0 = phi i32 [ -1, %if.then9 ], [ -1, %if.then5 ], [ %., %if.end17 ], [ 1, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_attrib(ptr noundef %padapter, ptr noundef %pkt, ptr noundef %pattrib) unnamed_addr #0 align 64 {
entry:
  %etherhdr.i274 = alloca %struct.ethhdr, align 1
  %ip_hdr.i275 = alloca %struct.iphdr, align 4
  %etherhdr.i = alloca %struct.ethhdr, align 1
  %ip_hdr.i = alloca %struct.iphdr, align 4
  %pktfile = alloca %struct.pkt_file, align 4
  %etherhdr = alloca %struct.ethhdr, align 1
  %tmp = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pktfile) #15
  %0 = getelementptr inbounds %struct.pkt_file, ptr %pktfile, i32 0, i32 1
  %1 = call ptr @memset(ptr %pktfile, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %etherhdr) #15
  %2 = getelementptr inbounds %struct.ethhdr, ptr %etherhdr, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ethhdr, ptr %etherhdr, i32 0, i32 2
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %4 = call ptr @memset(ptr %etherhdr, i32 255, i32 14)
  call void @_rtw_open_pktfile(ptr noundef %pkt, ptr noundef nonnull %pktfile) #15
  %call = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %etherhdr, i32 noundef 14) #15
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %3, align 1
  %ether_type = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 4
  %7 = ptrtoint ptr %ether_type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %ether_type, align 4
  %dst = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 20
  %8 = call ptr @memcpy(ptr %dst, ptr %etherhdr, i32 6)
  %src = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 21
  %9 = call ptr @memcpy(ptr %src, ptr %2, i32 6)
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_state.i, align 4
  %12 = and i32 %11, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ra = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %14 = call ptr @memcpy(ptr %ra, ptr %etherhdr, i32 6)
  %ta = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 22
  %15 = call ptr @memcpy(ptr %ta, ptr %2, i32 6)
  br label %if.end32

if.else:                                          ; preds = %entry
  %16 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.else20, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %ra13 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %17 = call ptr @memcpy(ptr %ra13, ptr %mac_address.i, i32 6)
  %ta16 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 22
  %18 = call ptr @memcpy(ptr %ta16, ptr %2, i32 6)
  br label %if.end32

if.else20:                                        ; preds = %if.else
  %19 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.else20.if.end32_crit_edge, label %if.then23

if.else20.if.end32_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #17
  %ra24 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %20 = call ptr @memcpy(ptr %ra24, ptr %etherhdr, i32 6)
  %ta28 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 22
  %mac_address.i260 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %21 = call ptr @memcpy(ptr %ta28, ptr %mac_address.i260, i32 6)
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %if.else20.if.end32_crit_edge, %if.then12, %if.then
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %pktlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 8
  %24 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pktlen, align 4
  %25 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %6, label %if.end32.if.end94_crit_edge [
    i16 2048, label %if.then36
    i16 -30578, label %do.body83
  ]

if.end32.if.end94_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then36:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #15
  %26 = getelementptr inbounds [24 x i8], ptr %tmp, i32 0, i32 9
  %27 = getelementptr inbounds [24 x i8], ptr %tmp, i32 0, i32 21
  %28 = getelementptr inbounds [24 x i8], ptr %tmp, i32 0, i32 23
  %29 = call ptr @memset(ptr %tmp, i32 255, i32 24)
  %call37 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %tmp, i32 noundef 24) #15
  %dhcp_pkt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 3
  %30 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dhcp_pkt, align 1
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %32)
  %cmp39 = icmp ugt i32 %32, 282
  br i1 %cmp39, label %if.then41, label %if.then36.if.end69_crit_edge

if.then36.if.end69_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then41:                                        ; preds = %if.then36
  %33 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %34)
  %cmp44 = icmp eq i16 %34, 2048
  br i1 %cmp44, label %if.then46, label %if.then41.if.end69_crit_edge

if.then41.if.end69_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then46:                                        ; preds = %if.then41
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %27, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %36, label %if.then46.if.end69_crit_edge [
    i8 68, label %land.lhs.true
    i8 67, label %land.lhs.true60
  ]

if.then46.if.end69_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

land.lhs.true:                                    ; preds = %if.then46
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %39)
  %cmp53 = icmp eq i8 %39, 67
  br i1 %cmp53, label %land.lhs.true.if.then65_crit_edge, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

land.lhs.true.if.then65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65

land.lhs.true60:                                  ; preds = %if.then46
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %41)
  %cmp63 = icmp eq i8 %41, 68
  br i1 %cmp63, label %land.lhs.true60.if.then65_crit_edge, label %land.lhs.true60.if.end69_crit_edge

land.lhs.true60.if.end69_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

land.lhs.true60.if.then65_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65

if.then65:                                        ; preds = %land.lhs.true60.if.then65_crit_edge, %land.lhs.true.if.then65_crit_edge
  %42 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %dhcp_pkt, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %land.lhs.true60.if.end69_crit_edge, %land.lhs.true.if.end69_crit_edge, %if.then46.if.end69_crit_edge, %if.then41.if.end69_crit_edge, %if.then36.if.end69_crit_edge
  %icmp_pkt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 50
  %43 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp72 = icmp eq i8 %44, 1
  %spec.store.select = zext i1 %cmp72 to i8
  %45 = ptrtoint ptr %icmp_pkt to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.store.select, ptr %icmp_pkt, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #15
  br label %if.end94

do.body83:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_attrib.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_attrib, %if.then89)) #15
          to label %if.end94 [label %if.then89], !srcloc !76

if.then89:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #17
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %46 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pnetdev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @update_attrib.__UNIQUE_ID_ddebug345, ptr noundef %47, ptr noundef nonnull @.str.32) #15
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %do.body83, %if.end69, %if.end32.if.end94_crit_edge
  %48 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %49)
  %cmp97 = icmp eq i16 %49, -30578
  br i1 %cmp97, label %if.end94.if.then104_crit_edge, label %lor.lhs.false99

if.end94.if.then104_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

lor.lhs.false99:                                  ; preds = %if.end94
  %dhcp_pkt100 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 3
  %50 = ptrtoint ptr %dhcp_pkt100 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dhcp_pkt100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp102 = icmp eq i8 %51, 1
  br i1 %cmp102, label %lor.lhs.false99.if.then104_crit_edge, label %lor.lhs.false99.if.end105_crit_edge

lor.lhs.false99.if.end105_crit_edge:              ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

lor.lhs.false99.if.then104_crit_edge:             ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

if.then104:                                       ; preds = %lor.lhs.false99.if.then104_crit_edge, %if.end94.if.then104_crit_edge
  call void @rtw_set_scan_deny(ptr noundef %padapter, i32 noundef 3000) #15
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %lor.lhs.false99.if.end105_crit_edge
  %icmp_pkt106 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 50
  %52 = ptrtoint ptr %icmp_pkt106 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %icmp_pkt106, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp108 = icmp eq i8 %53, 1
  br i1 %cmp108, label %if.end105.if.end120.sink.split_crit_edge, label %if.else112

if.end105.if.end120.sink.split_crit_edge:         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120.sink.split

if.else112:                                       ; preds = %if.end105
  %dhcp_pkt113 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 3
  %54 = ptrtoint ptr %dhcp_pkt113 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dhcp_pkt113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp115 = icmp eq i8 %55, 1
  br i1 %cmp115, label %if.else112.if.end120.sink.split_crit_edge, label %if.else112.if.end120_crit_edge

if.else112.if.end120_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

if.else112.if.end120.sink.split_crit_edge:        ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120.sink.split

if.end120.sink.split:                             ; preds = %if.else112.if.end120.sink.split_crit_edge, %if.end105.if.end120.sink.split_crit_edge
  %.sink = phi i8 [ 5, %if.end105.if.end120.sink.split_crit_edge ], [ 4, %if.else112.if.end120.sink.split_crit_edge ]
  %call118 = call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext %.sink, i8 noundef zeroext 1) #15
  br label %if.end120

if.end120:                                        ; preds = %if.end120.sink.split, %if.else112.if.end120_crit_edge
  %ra121 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %56 = ptrtoint ptr %ra121 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ra121, align 1
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool124.not = icmp eq i8 %58, 0
  br i1 %tobool124.not, label %if.else127, label %if.end142

if.else127:                                       ; preds = %if.end120
  %call130 = call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra121) #15
  %tobool131.not = icmp eq ptr %call130, null
  br i1 %tobool131.not, label %if.else127.cleanup_crit_edge, label %if.else133

if.else127.cleanup_crit_edge:                     ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else133:                                       ; preds = %if.else127
  %59 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fw_state.i, align 4
  %and.i262 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i262)
  %tobool.not.i263.not = icmp eq i32 %and.i262, 0
  br i1 %tobool.not.i263.not, label %if.else133.if.end145_crit_edge, label %land.lhs.true137

if.else133.if.end145_crit_edge:                   ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

land.lhs.true137:                                 ; preds = %if.else133
  %state = getelementptr inbounds %struct.sta_info, ptr %call130, i32 0, i32 8
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state, align 8
  %and = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool138.not = icmp eq i32 %and, 0
  br i1 %tobool138.not, label %land.lhs.true137.cleanup_crit_edge, label %land.lhs.true137.if.end145_crit_edge

land.lhs.true137.if.end145_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

land.lhs.true137.cleanup_crit_edge:               ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end142:                                        ; preds = %if.end120
  %call126 = call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #15
  %tobool143.not = icmp eq ptr %call126, null
  br i1 %tobool143.not, label %if.end142.cleanup_crit_edge, label %if.end142.if.end145_crit_edge

if.end142.if.end145_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end145:                                        ; preds = %if.end142.if.end145_crit_edge, %land.lhs.true137.if.end145_crit_edge, %if.else133.if.end145_crit_edge
  %psta.0293 = phi ptr [ %call126, %if.end142.if.end145_crit_edge ], [ %call130, %land.lhs.true137.if.end145_crit_edge ], [ %call130, %if.else133.if.end145_crit_edge ]
  %state146 = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 8
  %63 = ptrtoint ptr %state146 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state146, align 8
  %and147 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end145.cleanup_crit_edge, label %if.end150

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end150:                                        ; preds = %if.end145
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %65 = ptrtoint ptr %ra121 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ra121, align 1
  %67 = and i8 %66, 1
  %dot118021x_UncstKey.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 49
  %dot11tkiptxmickey.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 48
  %mac_id.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 10
  %68 = call ptr @memset(ptr %dot11tkiptxmickey.i, i32 0, i32 32)
  %69 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mac_id.i, align 8
  %conv.i = trunc i32 %70 to i8
  %mac_id3.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 18
  %71 = ptrtoint ptr %mac_id3.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i, ptr %mac_id3.i, align 4
  %ieee8021x_blocked.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 13
  %72 = ptrtoint ptr %ieee8021x_blocked.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ieee8021x_blocked.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i = icmp eq i32 %73, 1
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %if.end150
  %encrypt.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %74 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %encrypt.i, align 1
  %75 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %76)
  %cmp6.not.i = icmp eq i16 %76, -30578
  br i1 %cmp6.not.i, label %if.then.i.if.end55.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end55.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %77 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fw_state.i, align 4
  %79 = and i32 %78, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp9.i = icmp eq i32 %79, 0
  br i1 %cmp9.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end55.i_crit_edge

land.lhs.true.i.if.end55.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.i:                                        ; preds = %if.end150
  %80 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %securitypriv.i, align 8
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %81, label %do.body.i.do.end.i_crit_edge [
    i32 0, label %do.body.i.sw.bb.i_crit_edge
    i32 1, label %do.body.i.sw.bb.i_crit_edge296
    i32 3, label %do.body.i.sw.bb.i_crit_edge297
    i32 2, label %sw.bb14.i
    i32 4, label %sw.bb22.i
  ]

do.body.i.sw.bb.i_crit_edge297:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

do.body.i.sw.bb.i_crit_edge296:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

do.body.i.sw.bb.i_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

sw.bb.i:                                          ; preds = %do.body.i.sw.bb.i_crit_edge, %do.body.i.sw.bb.i_crit_edge296, %do.body.i.sw.bb.i_crit_edge297
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %do.endthread-pre-split.i

sw.bb14.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i265 = icmp eq i8 %67, 0
  br i1 %tobool.not.i265, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #17
  %dot118021XGrpPrivacy.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  br label %do.endthread-pre-split.i

if.else18.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #17
  %dot118021XPrivacy.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 14
  br label %do.endthread-pre-split.i

sw.bb22.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %dot11PrivacyAlgrthm23.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %do.endthread-pre-split.i

do.endthread-pre-split.i:                         ; preds = %sw.bb22.i, %if.else18.i, %if.then15.i, %sw.bb.i
  %.sink.in.i = phi ptr [ %dot11PrivacyAlgrthm.i, %sw.bb.i ], [ %dot11PrivacyAlgrthm23.i, %sw.bb22.i ], [ %dot118021XPrivacy.i, %if.else18.i ], [ %dot118021XGrpPrivacy.i, %if.then15.i ]
  %83 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %conv12.i = trunc i32 %.sink.i to i8
  %encrypt13.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %84 = ptrtoint ptr %encrypt13.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv12.i, ptr %encrypt13.i, align 1
  %85 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr.i = load i32, ptr %securitypriv.i, align 8
  br label %do.end.i

do.end.i:                                         ; preds = %do.endthread-pre-split.i, %do.body.i.do.end.i_crit_edge
  %86 = phi i32 [ %.pr.i, %do.endthread-pre-split.i ], [ %81, %do.body.i.do.end.i_crit_edge ]
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %86, label %do.end.i.sw.epilog38.i_crit_edge [
    i32 0, label %do.end.i.sw.bb27.i_crit_edge
    i32 1, label %do.end.i.sw.bb27.i_crit_edge298
    i32 3, label %do.end.i.sw.bb27.i_crit_edge299
    i32 2, label %sw.bb29.i
  ]

do.end.i.sw.bb27.i_crit_edge299:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27.i

do.end.i.sw.bb27.i_crit_edge298:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27.i

do.end.i.sw.bb27.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27.i

do.end.i.sw.epilog38.i_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog38.i

sw.bb27.i:                                        ; preds = %do.end.i.sw.bb27.i_crit_edge, %do.end.i.sw.bb27.i_crit_edge298, %do.end.i.sw.bb27.i_crit_edge299
  %dot11PrivacyKeyIndex.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 2
  %88 = ptrtoint ptr %dot11PrivacyKeyIndex.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dot11PrivacyKeyIndex.i, align 8
  %conv28.i = trunc i32 %89 to i8
  br label %sw.epilog38.i

sw.bb29.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool30.not.i = icmp eq i8 %67, 0
  br i1 %tobool30.not.i, label %sw.bb29.i.sw.epilog38.i_crit_edge, label %if.then31.i

sw.bb29.i.sw.epilog38.i_crit_edge:                ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog38.i

if.then31.i:                                      ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #17
  %dot118021XGrpKeyid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7
  %90 = ptrtoint ptr %dot118021XGrpKeyid.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dot118021XGrpKeyid.i, align 4
  %conv32.i = trunc i32 %91 to i8
  br label %sw.epilog38.i

sw.epilog38.i:                                    ; preds = %if.then31.i, %sw.bb29.i.sw.epilog38.i_crit_edge, %sw.bb27.i, %do.end.i.sw.epilog38.i_crit_edge
  %conv32.sink.i = phi i8 [ %conv32.i, %if.then31.i ], [ %conv28.i, %sw.bb27.i ], [ 0, %sw.bb29.i.sw.epilog38.i_crit_edge ], [ 0, %do.end.i.sw.epilog38.i_crit_edge ]
  %key_idx33.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 24
  %92 = ptrtoint ptr %key_idx33.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv32.sink.i, ptr %key_idx33.i, align 2
  %encrypt39.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %93 = ptrtoint ptr %encrypt39.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %encrypt39.i, align 1
  %95 = zext i8 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %94, label %sw.epilog38.i.if.end55.i_crit_edge [
    i8 1, label %sw.epilog38.i.land.lhs.true47.i_crit_edge
    i8 5, label %sw.epilog38.i.land.lhs.true47.i_crit_edge300
  ]

sw.epilog38.i.land.lhs.true47.i_crit_edge300:     ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true47.i

sw.epilog38.i.land.lhs.true47.i_crit_edge:        ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true47.i

sw.epilog38.i.if.end55.i_crit_edge:               ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i

land.lhs.true47.i:                                ; preds = %sw.epilog38.i.land.lhs.true47.i_crit_edge, %sw.epilog38.i.land.lhs.true47.i_crit_edge300
  %96 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %97)
  %cmp50.i = icmp eq i16 %97, -30578
  br i1 %cmp50.i, label %if.then52.i, label %land.lhs.true47.i.if.end55.i_crit_edge

land.lhs.true47.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i

if.then52.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %encrypt39.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %encrypt39.i, align 1
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %land.lhs.true47.i.if.end55.i_crit_edge, %sw.epilog38.i.if.end55.i_crit_edge, %land.lhs.true.i.if.end55.i_crit_edge, %if.then.i.if.end55.i_crit_edge
  %encrypt56.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %99 = ptrtoint ptr %encrypt56.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %encrypt56.i, align 1
  %101 = zext i8 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %100, label %sw.default285.i [
    i8 1, label %if.end55.i.sw.bb58.i_crit_edge
    i8 5, label %if.end55.i.sw.bb58.i_crit_edge301
    i8 2, label %sw.bb78.i
    i8 4, label %sw.bb190.i
  ]

if.end55.i.sw.bb58.i_crit_edge301:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb58.i

if.end55.i.sw.bb58.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb58.i

sw.bb58.i:                                        ; preds = %if.end55.i.sw.bb58.i_crit_edge, %if.end55.i.sw.bb58.i_crit_edge301
  %iv_len.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %102 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 4, ptr %iv_len.i, align 2
  %icv_len.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 13
  %103 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 4, ptr %icv_len.i, align 1
  %dot11txpn.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 18
  %TSC0.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn.i, i32 0, i32 7
  %104 = ptrtoint ptr %TSC0.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %TSC0.i, align 1
  %iv.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14
  %106 = ptrtoint ptr %iv.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %iv.i, align 4
  %TSC1.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn.i, i32 0, i32 6
  %107 = ptrtoint ptr %TSC1.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %TSC1.i, align 2
  %arrayidx62.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 1
  %109 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx62.i, align 1
  %TSC2.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn.i, i32 0, i32 5
  %110 = ptrtoint ptr %TSC2.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %TSC2.i, align 1
  %arrayidx65.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 2
  %112 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx65.i, align 2
  %key_idx66.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 24
  %113 = ptrtoint ptr %key_idx66.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %key_idx66.i, align 2
  %115 = shl i8 %114, 6
  %arrayidx70.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 3
  %116 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx70.i, align 1
  %117 = ptrtoint ptr %dot11txpn.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %dot11txpn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %118)
  %cmp72.i = icmp eq i64 %118, 16777215
  %add.i = add i64 %118, 1
  %spec.select.i = select i1 %cmp72.i, i64 0, i64 %add.i
  %119 = ptrtoint ptr %dot11txpn.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %spec.select.i, ptr %dot11txpn.i, align 8
  br label %sw.epilog288.i

sw.bb78.i:                                        ; preds = %if.end55.i
  %iv_len79.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %120 = ptrtoint ptr %iv_len79.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 8, ptr %iv_len79.i, align 2
  %icv_len80.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 13
  %121 = ptrtoint ptr %icv_len80.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 4, ptr %icv_len80.i, align 1
  %busetkipkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 29
  %122 = ptrtoint ptr %busetkipkey.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %busetkipkey.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp82.i = icmp eq i8 %123, 0
  br i1 %cmp82.i, label %sw.bb78.i.cleanup_crit_edge, label %if.end85.i

sw.bb78.i.cleanup_crit_edge:                      ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end85.i:                                       ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool86.not.i = icmp eq i8 %67, 0
  %dot11txpn139.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 18
  %TSC1140.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn139.i, i32 0, i32 6
  %124 = ptrtoint ptr %TSC1140.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %TSC1140.i, align 2
  %iv141.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14
  %126 = ptrtoint ptr %iv141.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %iv141.i, align 4
  %127 = load i8, ptr %TSC1140.i, align 2
  %128 = and i8 %127, 95
  %129 = or i8 %128, 32
  %arrayidx150.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 1
  %130 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %arrayidx150.i, align 1
  %TSC0152.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn139.i, i32 0, i32 7
  %131 = ptrtoint ptr %TSC0152.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %TSC0152.i, align 1
  %arrayidx154.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 2
  %133 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx154.i, align 2
  br i1 %tobool86.not.i, label %if.end85.i.if.end185.i_crit_edge, label %do.body88.i

if.end85.i.if.end185.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185.i

do.body88.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #17
  %key_idx104.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 24
  %134 = ptrtoint ptr %key_idx104.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %key_idx104.i, align 2
  %136 = shl i8 %135, 6
  %137 = or i8 %136, 32
  br label %if.end185.i

if.end185.i:                                      ; preds = %do.body88.i, %if.end85.i.if.end185.i_crit_edge
  %.sink458.i = phi i8 [ %137, %do.body88.i ], [ 32, %if.end85.i.if.end185.i_crit_edge ]
  %arrayidx156.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 3
  %138 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %.sink458.i, ptr %arrayidx156.i, align 1
  %TSC2158.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn139.i, i32 0, i32 5
  %139 = ptrtoint ptr %TSC2158.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %TSC2158.i, align 1
  %arrayidx160.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 4
  %141 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %arrayidx160.i, align 4
  %TSC3162.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn139.i, i32 0, i32 4
  %142 = ptrtoint ptr %TSC3162.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %TSC3162.i, align 4
  %arrayidx164.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 5
  %144 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %arrayidx164.i, align 1
  %TSC4166.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn139.i, i32 0, i32 3
  %145 = ptrtoint ptr %TSC4166.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %TSC4166.i, align 1
  %arrayidx168.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 6
  %147 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %arrayidx168.i, align 2
  %TSC5170.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn139.i, i32 0, i32 2
  %148 = ptrtoint ptr %TSC5170.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %TSC5170.i, align 2
  %arrayidx172.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 7
  %150 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx172.i, align 1
  %151 = ptrtoint ptr %dot11txpn139.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %dot11txpn139.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %152)
  %cmp174.i = icmp eq i64 %152, 281474976710655
  %add179.i = add i64 %152, 1
  %spec.select448.i = select i1 %cmp174.i, i64 0, i64 %add179.i
  %153 = ptrtoint ptr %dot11txpn139.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %spec.select448.i, ptr %dot11txpn139.i, align 8
  %dot11tkiptxmickey188.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 15
  %154 = call ptr @memcpy(ptr %dot11tkiptxmickey.i, ptr %dot11tkiptxmickey188.i, i32 16)
  br label %sw.epilog288.i

sw.bb190.i:                                       ; preds = %if.end55.i
  %iv_len191.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %155 = ptrtoint ptr %iv_len191.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 8, ptr %iv_len191.i, align 2
  %icv_len192.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 13
  %156 = ptrtoint ptr %icv_len192.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 8, ptr %icv_len192.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool193.not.i = icmp eq i8 %67, 0
  %dot11txpn244.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 18
  %TSC0245.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 7
  %157 = ptrtoint ptr %TSC0245.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %TSC0245.i, align 1
  %iv246.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14
  %159 = ptrtoint ptr %iv246.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %iv246.i, align 4
  %TSC1249.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 6
  %160 = ptrtoint ptr %TSC1249.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %TSC1249.i, align 2
  %arrayidx251.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 1
  %162 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %arrayidx251.i, align 1
  %arrayidx253.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 2
  %163 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %arrayidx253.i, align 2
  br i1 %tobool193.not.i, label %do.body243.i, label %do.body195.i

do.body195.i:                                     ; preds = %sw.bb190.i
  call void @__sanitizer_cov_trace_pc() #17
  %key_idx206.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 24
  %164 = ptrtoint ptr %key_idx206.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %key_idx206.i, align 2
  %166 = shl i8 %165, 6
  %167 = or i8 %166, 32
  %arrayidx213.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 3
  %168 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %arrayidx213.i, align 1
  %TSC2215.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 5
  %169 = ptrtoint ptr %TSC2215.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %TSC2215.i, align 1
  %arrayidx217.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 4
  %171 = ptrtoint ptr %arrayidx217.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %arrayidx217.i, align 4
  %TSC3219.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 4
  %172 = ptrtoint ptr %TSC3219.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %TSC3219.i, align 4
  %arrayidx221.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 5
  %174 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx221.i, align 1
  %TSC4223.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 3
  %175 = ptrtoint ptr %TSC4223.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %TSC4223.i, align 1
  %arrayidx225.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 6
  %177 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx225.i, align 2
  %TSC5227.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 2
  %178 = ptrtoint ptr %TSC5227.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %TSC5227.i, align 2
  %arrayidx229.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 7
  %180 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx229.i, align 1
  %181 = ptrtoint ptr %dot11txpn244.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %dot11txpn244.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %182)
  %cmp231.i = icmp eq i64 %182, 281474976710655
  %add236.i = add i64 %182, 1
  %spec.select449.i = select i1 %cmp231.i, i64 0, i64 %add236.i
  %183 = ptrtoint ptr %dot11txpn244.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %spec.select449.i, ptr %dot11txpn244.i, align 8
  br label %sw.epilog288.i

do.body243.i:                                     ; preds = %sw.bb190.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx255.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 3
  %184 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 32, ptr %arrayidx255.i, align 1
  %TSC2257.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 5
  %185 = ptrtoint ptr %TSC2257.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %TSC2257.i, align 1
  %arrayidx259.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 4
  %187 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %arrayidx259.i, align 4
  %TSC3261.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 4
  %188 = ptrtoint ptr %TSC3261.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %TSC3261.i, align 4
  %arrayidx263.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 5
  %190 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %arrayidx263.i, align 1
  %TSC4265.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 3
  %191 = ptrtoint ptr %TSC4265.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %TSC4265.i, align 1
  %arrayidx267.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 6
  %193 = ptrtoint ptr %arrayidx267.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %arrayidx267.i, align 2
  %TSC5269.i = getelementptr inbounds %struct.anon.101, ptr %dot11txpn244.i, i32 0, i32 2
  %194 = ptrtoint ptr %TSC5269.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %TSC5269.i, align 2
  %arrayidx271.i = getelementptr %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14, i32 7
  %196 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %arrayidx271.i, align 1
  %197 = ptrtoint ptr %dot11txpn244.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %dot11txpn244.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %198)
  %cmp273.i = icmp eq i64 %198, 281474976710655
  %add278.i = add i64 %198, 1
  %spec.select450.i = select i1 %cmp273.i, i64 0, i64 %add278.i
  %199 = ptrtoint ptr %dot11txpn244.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %spec.select450.i, ptr %dot11txpn244.i, align 8
  br label %sw.epilog288.i

sw.default285.i:                                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #17
  %iv_len286.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %200 = ptrtoint ptr %iv_len286.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %iv_len286.i, align 2
  %icv_len287.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 13
  %201 = ptrtoint ptr %icv_len287.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %icv_len287.i, align 1
  br label %sw.epilog288.i

sw.epilog288.i:                                   ; preds = %sw.default285.i, %do.body243.i, %do.body195.i, %if.end185.i, %sw.bb58.i
  %202 = ptrtoint ptr %encrypt56.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %encrypt56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %cmp291.not.i = icmp eq i8 %203, 0
  br i1 %cmp291.not.i, label %sw.epilog288.i.if.else308.i_crit_edge, label %land.lhs.true302.i

sw.epilog288.i.if.else308.i_crit_edge:            ; preds = %sw.epilog288.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else308.i

land.lhs.true302.i:                               ; preds = %sw.epilog288.i
  %dot118021x_UncstKey296.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 17
  %204 = call ptr @memcpy(ptr %dot118021x_UncstKey.i, ptr %dot118021x_UncstKey296.i, i32 16)
  %sw_encrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 32
  %205 = ptrtoint ptr %sw_encrypt.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %sw_encrypt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool304.not.i = icmp eq i32 %206, 0
  br i1 %tobool304.not.i, label %lor.lhs.false305.i, label %land.lhs.true302.i.if.end155_crit_edge

land.lhs.true302.i.if.end155_crit_edge:           ; preds = %land.lhs.true302.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155

lor.lhs.false305.i:                               ; preds = %land.lhs.true302.i
  %hw_decrypted.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 34
  %207 = ptrtoint ptr %hw_decrypted.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %hw_decrypted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool306.not.i = icmp eq i32 %208, 0
  br i1 %tobool306.not.i, label %lor.lhs.false305.i.if.end155_crit_edge, label %lor.lhs.false305.i.if.else308.i_crit_edge

lor.lhs.false305.i.if.else308.i_crit_edge:        ; preds = %lor.lhs.false305.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else308.i

lor.lhs.false305.i.if.end155_crit_edge:           ; preds = %lor.lhs.false305.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155

if.else308.i:                                     ; preds = %lor.lhs.false305.i.if.else308.i_crit_edge, %sw.epilog288.i.if.else308.i_crit_edge
  br label %if.end155

if.end155:                                        ; preds = %if.else308.i, %lor.lhs.false305.i.if.end155_crit_edge, %land.lhs.true302.i.if.end155_crit_edge
  %.sink453.i = phi i8 [ 0, %if.else308.i ], [ 1, %lor.lhs.false305.i.if.end155_crit_edge ], [ 1, %land.lhs.true302.i.if.end155_crit_edge ]
  %bswenc.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 2
  %209 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %.sink453.i, ptr %bswenc.i, align 2
  %rtsen.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 26
  %210 = ptrtoint ptr %rtsen.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %rtsen.i, align 1
  %rtsen1.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 46
  %212 = ptrtoint ptr %rtsen1.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %rtsen1.i, align 4
  %cts2self.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 25
  %213 = ptrtoint ptr %cts2self.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %cts2self.i, align 4
  %cts2self2.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 47
  %215 = ptrtoint ptr %cts2self2.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %cts2self2.i, align 1
  %mdata.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 33
  %216 = ptrtoint ptr %mdata.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %mdata.i, align 1
  %eosp.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 38
  %217 = ptrtoint ptr %eosp.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %eosp.i, align 4
  %triggered.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 35
  %218 = ptrtoint ptr %triggered.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %triggered.i, align 1
  %ampdu_spacing.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 32
  %219 = ptrtoint ptr %ampdu_spacing.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %ampdu_spacing.i, align 2
  %qos_option.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 11
  %220 = ptrtoint ptr %qos_option.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %qos_option.i, align 4
  %conv.i266 = trunc i32 %221 to i8
  %qos_en.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %222 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv.i266, ptr %qos_en.i, align 1
  %raid.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 27
  %223 = ptrtoint ptr %raid.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %raid.i, align 2
  %raid3.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 27
  %225 = ptrtoint ptr %raid3.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %raid3.i, align 1
  %cur_bwmode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %226 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %cur_bwmode.i, align 1
  %bw_mode.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 31
  %228 = ptrtoint ptr %bw_mode.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %bw_mode.i, align 1
  %230 = call i8 @llvm.umin.i8(i8 %227, i8 %229) #15
  %231 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 28
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %230, ptr %231, align 2
  %233 = ptrtoint ptr %bw_mode.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %bw_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %234)
  %cond.i.i = icmp eq i8 %234, 1
  %sgi_40m3.i.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 38, i32 9
  %sgi_20m1.i.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 38, i32 8
  %sgi.0.in.i.i = select i1 %cond.i.i, ptr %sgi_40m3.i.i, ptr %sgi_20m1.i.i
  %235 = ptrtoint ptr %sgi.0.in.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %sgi.0.i.i = load i8, ptr %sgi.0.in.i.i, align 1
  %sgi.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 30
  %236 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %sgi.0.i.i, ptr %sgi.i, align 4
  %ldpc.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 32
  %237 = ptrtoint ptr %ldpc.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %ldpc.i, align 2
  %ldpc10.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 43
  %239 = ptrtoint ptr %ldpc10.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %ldpc10.i, align 1
  %stbc.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 33
  %240 = ptrtoint ptr %stbc.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %stbc.i, align 1
  %stbc11.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 44
  %242 = ptrtoint ptr %stbc11.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %stbc11.i, align 2
  %htpriv.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 38
  %243 = ptrtoint ptr %htpriv.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %htpriv.i, align 8
  %ht_en.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 26
  %245 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %244, ptr %ht_en.i, align 4
  %ch_offset.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 38, i32 7
  %246 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %ch_offset.i, align 1
  %ch_offset13.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 29
  %248 = ptrtoint ptr %ch_offset13.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %ch_offset13.i, align 1
  %ampdu_en.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 31
  %249 = ptrtoint ptr %ampdu_en.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 0, ptr %ampdu_en.i, align 1
  %driver_ampdu_spacing.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 61
  %250 = ptrtoint ptr %driver_ampdu_spacing.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %driver_ampdu_spacing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %251)
  %cmp15.not.i = icmp eq i8 %251, -1
  br i1 %cmp15.not.i, label %if.else20.i, label %if.end155.update_attrib_phy_info.exit_crit_edge

if.end155.update_attrib_phy_info.exit_crit_edge:  ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_attrib_phy_info.exit

if.else20.i:                                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  %rx_ampdu_min_spacing.i = getelementptr inbounds %struct.sta_info, ptr %psta.0293, i32 0, i32 38, i32 6
  %252 = ptrtoint ptr %rx_ampdu_min_spacing.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %rx_ampdu_min_spacing.i, align 4
  br label %update_attrib_phy_info.exit

update_attrib_phy_info.exit:                      ; preds = %if.else20.i, %if.end155.update_attrib_phy_info.exit_crit_edge
  %storemerge.i = phi i8 [ %253, %if.else20.i ], [ %251, %if.end155.update_attrib_phy_info.exit_crit_edge ]
  %254 = ptrtoint ptr %ampdu_spacing.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %storemerge.i, ptr %ampdu_spacing.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 41
  %255 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %retry_ctrl.i, align 1
  %psta156 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 45
  %256 = ptrtoint ptr %psta156 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %psta.0293, ptr %psta156, align 4
  %pctrl = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 34
  %257 = ptrtoint ptr %pctrl to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %pctrl, align 4
  %ack_policy = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 17
  %258 = ptrtoint ptr %ack_policy to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %ack_policy, align 1
  %pkt_hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 6
  %259 = ptrtoint ptr %pkt_hdrlen to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 14, ptr %pkt_hdrlen, align 4
  %hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 7
  %260 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 24, ptr %hdrlen, align 2
  %subtype = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 1
  %261 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 8, ptr %subtype, align 1
  %priority = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %262 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %priority, align 2
  %263 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %fw_state.i, align 4
  %and.i268 = and i32 %264, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.not.i269.not = icmp eq i32 %and.i268, 0
  br i1 %tobool.not.i269.not, label %if.else163, label %if.then159

if.then159:                                       ; preds = %update_attrib_phy_info.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i266)
  %tobool160.not = icmp eq i8 %conv.i266, 0
  br i1 %tobool160.not, label %if.then159.cleanup_crit_edge, label %if.then161

if.then159.cleanup_crit_edge:                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then161:                                       ; preds = %if.then159
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %etherhdr.i) #15
  %265 = call ptr @memset(ptr %etherhdr.i, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ip_hdr.i) #15
  %266 = call ptr @memset(ptr %ip_hdr.i, i32 255, i32 20)
  %267 = ptrtoint ptr %pktfile to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pktfile, align 4
  call void @_rtw_open_pktfile(ptr noundef %268, ptr noundef nonnull %pktfile) #15
  %call.i = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %etherhdr.i, i32 noundef 14) #15
  %269 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %270)
  %cmp.i272 = icmp eq i16 %270, 2048
  br i1 %cmp.i272, label %if.then.i273, label %if.then161.set_qos.exit_crit_edge

if.then161.set_qos.exit_crit_edge:                ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_qos.exit

if.then.i273:                                     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #17
  %271 = getelementptr inbounds %struct.iphdr, ptr %ip_hdr.i, i32 0, i32 1
  %call2.i = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %ip_hdr.i, i32 noundef 20) #15
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %271, align 1
  %274 = lshr i8 %273, 5
  br label %set_qos.exit

set_qos.exit:                                     ; preds = %if.then.i273, %if.then161.set_qos.exit_crit_edge
  %UserPriority.0.i = phi i8 [ %274, %if.then.i273 ], [ 0, %if.then161.set_qos.exit_crit_edge ]
  %275 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %UserPriority.0.i, ptr %priority, align 2
  %276 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 26, ptr %hdrlen, align 2
  %277 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 -120, ptr %subtype, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ip_hdr.i) #15
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %etherhdr.i) #15
  br label %cleanup

if.else163:                                       ; preds = %update_attrib_phy_info.exit
  %278 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool164.not = icmp eq i32 %279, 0
  br i1 %tobool164.not, label %if.else163.cleanup_crit_edge, label %if.then165

if.else163.cleanup_crit_edge:                     ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then165:                                       ; preds = %if.else163
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %etherhdr.i274) #15
  %280 = call ptr @memset(ptr %etherhdr.i274, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ip_hdr.i275) #15
  %281 = call ptr @memset(ptr %ip_hdr.i275, i32 255, i32 20)
  %282 = ptrtoint ptr %pktfile to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %pktfile, align 4
  call void @_rtw_open_pktfile(ptr noundef %283, ptr noundef nonnull %pktfile) #15
  %call.i276 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %etherhdr.i274, i32 noundef 14) #15
  %284 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %285)
  %cmp.i278 = icmp eq i16 %285, 2048
  br i1 %cmp.i278, label %if.then.i280, label %if.then165.set_qos.exit285_crit_edge

if.then165.set_qos.exit285_crit_edge:             ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_qos.exit285

if.then.i280:                                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #17
  %286 = getelementptr inbounds %struct.iphdr, ptr %ip_hdr.i275, i32 0, i32 1
  %call2.i279 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %ip_hdr.i275, i32 noundef 20) #15
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %286, align 1
  %289 = lshr i8 %288, 5
  br label %set_qos.exit285

set_qos.exit285:                                  ; preds = %if.then.i280, %if.then165.set_qos.exit285_crit_edge
  %UserPriority.0.i281 = phi i8 [ %289, %if.then.i280 ], [ 0, %if.then165.set_qos.exit285_crit_edge ]
  %290 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %UserPriority.0.i281, ptr %priority, align 2
  %291 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 26, ptr %hdrlen, align 2
  %292 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 -120, ptr %subtype, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ip_hdr.i275) #15
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %etherhdr.i274) #15
  %acm_mask = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 36
  %293 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %acm_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %cmp167.not = icmp eq i8 %294, 0
  br i1 %cmp167.not, label %set_qos.exit285.cleanup_crit_edge, label %if.then169

set_qos.exit285.cleanup_crit_edge:                ; preds = %set_qos.exit285
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then169:                                       ; preds = %set_qos.exit285
  %trunc = trunc i8 %UserPriority.0.i281 to i3
  %295 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %295, ptr @__sancov_gen_cov_switch_values.52)
  switch i3 %trunc, label %if.then169.qos_acm.exit_crit_edge [
    i3 0, label %if.then169.sw.bb.i288_crit_edge
    i3 3, label %if.then169.sw.bb.i288_crit_edge302
    i3 -1, label %if.then169.sw.bb9.i_crit_edge
    i3 -2, label %if.then169.sw.bb9.i_crit_edge303
    i3 -4, label %if.then169.sw.bb3.i_crit_edge
    i3 -3, label %if.then169.sw.bb3.i_crit_edge304
  ]

if.then169.sw.bb3.i_crit_edge304:                 ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i

if.then169.sw.bb3.i_crit_edge:                    ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i

if.then169.sw.bb9.i_crit_edge303:                 ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9.i

if.then169.sw.bb9.i_crit_edge:                    ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9.i

if.then169.sw.bb.i288_crit_edge302:               ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i288

if.then169.sw.bb.i288_crit_edge:                  ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i288

if.then169.qos_acm.exit_crit_edge:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  br label %qos_acm.exit

sw.bb.i288:                                       ; preds = %if.then169.sw.bb.i288_crit_edge, %if.then169.sw.bb.i288_crit_edge302
  %296 = and i8 %294, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool.not.i286 = icmp eq i8 %296, 0
  %spec.select.i287 = select i1 %tobool.not.i286, i8 %UserPriority.0.i281, i8 1
  br label %qos_acm.exit

sw.bb3.i:                                         ; preds = %if.then169.sw.bb3.i_crit_edge, %if.then169.sw.bb3.i_crit_edge304
  %297 = and i8 %294, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool6.not.i = icmp eq i8 %297, 0
  %spec.select18.i = select i1 %tobool6.not.i, i8 %UserPriority.0.i281, i8 0
  br label %qos_acm.exit

sw.bb9.i:                                         ; preds = %if.then169.sw.bb9.i_crit_edge, %if.then169.sw.bb9.i_crit_edge303
  %298 = and i8 %294, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool12.not.i = icmp eq i8 %298, 0
  %spec.select19.i = select i1 %tobool12.not.i, i8 %UserPriority.0.i281, i8 5
  br label %qos_acm.exit

qos_acm.exit:                                     ; preds = %sw.bb9.i, %sw.bb3.i, %sw.bb.i288, %if.then169.qos_acm.exit_crit_edge
  %priority.addr.0.i = phi i8 [ %UserPriority.0.i281, %if.then169.qos_acm.exit_crit_edge ], [ %spec.select.i287, %sw.bb.i288 ], [ %spec.select18.i, %sw.bb3.i ], [ %spec.select19.i, %sw.bb9.i ]
  %299 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %priority.addr.0.i, ptr %priority, align 2
  br label %cleanup

cleanup:                                          ; preds = %qos_acm.exit, %set_qos.exit285.cleanup_crit_edge, %if.else163.cleanup_crit_edge, %set_qos.exit, %if.then159.cleanup_crit_edge, %sw.bb78.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end145.cleanup_crit_edge, %if.end142.cleanup_crit_edge, %land.lhs.true137.cleanup_crit_edge, %if.else127.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end145.cleanup_crit_edge ], [ 1, %set_qos.exit ], [ 1, %if.then159.cleanup_crit_edge ], [ 1, %qos_acm.exit ], [ 1, %set_qos.exit285.cleanup_crit_edge ], [ 1, %if.else163.cleanup_crit_edge ], [ 0, %if.else127.cleanup_crit_edge ], [ 0, %land.lhs.true137.cleanup_crit_edge ], [ 0, %if.end142.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %sw.bb78.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %etherhdr) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pktfile) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %0 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ra, align 1
  %2 = and i8 %1, 1
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call5 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #15
  %psta6 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 45
  %6 = ptrtoint ptr %psta6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psta6, align 4
  %cmp7.not = icmp ne ptr %7, %call5
  %tobool.not = icmp eq ptr %call5, null
  %or.cond175 = or i1 %tobool.not, %cmp7.not
  br i1 %or.cond175, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %triggered = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 35
  %10 = ptrtoint ptr %triggered to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %triggered, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp15 = icmp eq i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool18.not = icmp eq i8 %2, 0
  br i1 %cmp15, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end14
  br i1 %tobool18.not, label %if.then17.cleanup_crit_edge, label %land.lhs.true

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then17
  %padapter.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 4
  %12 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %padapter.i, align 4
  %hiq_filter.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 14, i32 72
  %14 = ptrtoint ptr %hiq_filter.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hiq_filter.i, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %15, label %do.end.i [
    i8 1, label %if.then.i
    i8 0, label %land.lhs.true.if.then21_crit_edge
    i8 2, label %land.lhs.true.cleanup_crit_edge
  ]

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

if.then.i:                                        ; preds = %land.lhs.true
  %ether_type.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ether_type.i, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %18, label %lor.lhs.false10.i [
    i16 2054, label %if.then.i.if.then21_crit_edge
    i16 -30578, label %if.then.i.if.then21_crit_edge197
  ]

if.then.i.if.then21_crit_edge197:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

if.then.i.if.then21_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

lor.lhs.false10.i:                                ; preds = %if.then.i
  %dhcp_pkt.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %dhcp_pkt.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dhcp_pkt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i176 = icmp eq i8 %21, 0
  br i1 %tobool.not.i176, label %lor.lhs.false10.i.cleanup_crit_edge, label %lor.lhs.false10.i.if.then21_crit_edge

lor.lhs.false10.i.if.then21_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

lor.lhs.false10.i.cleanup_crit_edge:              ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 2010, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.then21:                                        ; preds = %lor.lhs.false10.i.if.then21_crit_edge, %if.then.i.if.then21_crit_edge, %if.then.i.if.then21_crit_edge197, %land.lhs.true.if.then21_crit_edge
  %qsel = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 36
  %22 = ptrtoint ptr %qsel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 17, ptr %qsel, align 2
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  br i1 %tobool18.not, label %if.end50, label %if.then25

if.then25:                                        ; preds = %if.end23
  %lock = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 6, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %sta_dz_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %23 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sta_dz_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool26.not = icmp eq i16 %24, 0
  br i1 %tobool26.not, label %if.then25.if.end47_crit_edge, label %if.then27

if.then25.if.end47_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then27:                                        ; preds = %if.then25
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pxmitframe) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then27.list_del_init.exit_crit_edge

if.then27.list_del_init.exit_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pxmitframe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then27.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %pxmitframe, ptr %pxmitframe, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pxmitframe, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 6, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i177 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitframe, ptr noundef %34, ptr noundef %sleep_q) #15
  br i1 %call.i.i177, label %if.end.i.i178, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i178:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pxmitframe, ptr %prev.i, align 4
  %36 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %sleep_q, ptr %pxmitframe, align 4
  %37 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i3.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %pxmitframe, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i178, %list_del_init.exit.list_add_tail.exit_crit_edge
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 7
  %39 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sleepq_len, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %sleepq_len, align 4
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %41 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tim_bitmap, align 2
  %43 = and i16 %42, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool33.not = icmp eq i16 %43, 0
  %44 = or i16 %42, 1
  %45 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %tim_bitmap, align 2
  %46 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sta_dz_bitmap, align 4
  %48 = or i16 %47, 1
  store i16 %48, ptr %sta_dz_bitmap, align 4
  br i1 %tobool33.not, label %if.then44, label %if.else

if.then44:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 1) #15
  br label %if.end47

if.else:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call45 = tail call zeroext i8 @chk_bmc_sleepq_cmd(ptr noundef %padapter) #15
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then44, %if.then25.if.end47_crit_edge
  %ret.0 = phi i32 [ 0, %if.then25.if.end47_crit_edge ], [ 1, %if.else ], [ 1, %if.then44 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  br label %cleanup

if.end50:                                         ; preds = %if.end23
  %sleep_q51 = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 6
  %lock52 = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 6, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock52) #15
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state, align 8
  %and54 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end50.if.end117_crit_edge, label %if.then56

if.end50.if.end117_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

if.then56:                                        ; preds = %if.end50
  %sta_dz_bitmap57 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %51 = ptrtoint ptr %sta_dz_bitmap57 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sta_dz_bitmap57, align 4
  %conv58 = zext i16 %52 to i32
  %aid = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 9
  %53 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %aid, align 4
  %shl = shl nuw i32 1, %54
  %and59 = and i32 %shl, %conv58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then56.if.end117_crit_edge, label %if.then61

if.then56.if.end117_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

if.then61:                                        ; preds = %if.then56
  %call.i.i179 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pxmitframe) #15
  br i1 %call.i.i179, label %if.end.i.i182, label %if.then61.list_del_init.exit184_crit_edge

if.then61.list_del_init.exit184_crit_edge:        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit184

if.end.i.i182:                                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i180 = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i180 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i180, align 4
  %57 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pxmitframe, align 4
  %prev1.i.i.i181 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i181, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del_init.exit184

list_del_init.exit184:                            ; preds = %if.end.i.i182, %if.then61.list_del_init.exit184_crit_edge
  %61 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %pxmitframe, ptr %pxmitframe, align 4
  %prev.i3.i183 = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i3.i183 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %pxmitframe, ptr %prev.i3.i183, align 4
  %prev.i185 = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 6, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i185, align 4
  %call.i.i186 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitframe, ptr noundef %64, ptr noundef %sleep_q51) #15
  br i1 %call.i.i186, label %if.end.i.i188, label %list_del_init.exit184.list_add_tail.exit189_crit_edge

list_del_init.exit184.list_add_tail.exit189_crit_edge: ; preds = %list_del_init.exit184
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit189

if.end.i.i188:                                    ; preds = %list_del_init.exit184
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %pxmitframe, ptr %prev.i185, align 4
  %66 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %sleep_q51, ptr %pxmitframe, align 4
  %67 = ptrtoint ptr %prev.i3.i183 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev.i3.i183, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %pxmitframe, ptr %64, align 4
  br label %list_add_tail.exit189

list_add_tail.exit189:                            ; preds = %if.end.i.i188, %list_del_init.exit184.list_add_tail.exit189_crit_edge
  %sleepq_len66 = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 7
  %69 = ptrtoint ptr %sleepq_len66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sleepq_len66, align 4
  %inc67 = add i32 %70, 1
  store i32 %inc67, ptr %sleepq_len66, align 4
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %71 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %priority, align 2
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %72, label %sw.default [
    i8 1, label %list_add_tail.exit189.sw.bb_crit_edge
    i8 2, label %list_add_tail.exit189.sw.bb_crit_edge198
    i8 4, label %list_add_tail.exit189.sw.bb72_crit_edge
    i8 5, label %list_add_tail.exit189.sw.bb72_crit_edge199
    i8 6, label %list_add_tail.exit189.sw.bb76_crit_edge
    i8 7, label %list_add_tail.exit189.sw.bb76_crit_edge200
  ]

list_add_tail.exit189.sw.bb76_crit_edge200:       ; preds = %list_add_tail.exit189
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76

list_add_tail.exit189.sw.bb76_crit_edge:          ; preds = %list_add_tail.exit189
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76

list_add_tail.exit189.sw.bb72_crit_edge199:       ; preds = %list_add_tail.exit189
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb72

list_add_tail.exit189.sw.bb72_crit_edge:          ; preds = %list_add_tail.exit189
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb72

list_add_tail.exit189.sw.bb_crit_edge198:         ; preds = %list_add_tail.exit189
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

list_add_tail.exit189.sw.bb_crit_edge:            ; preds = %list_add_tail.exit189
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.bb:                                            ; preds = %list_add_tail.exit189.sw.bb_crit_edge, %list_add_tail.exit189.sw.bb_crit_edge198
  %uapsd_bk = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 64
  br label %sw.epilog

sw.bb72:                                          ; preds = %list_add_tail.exit189.sw.bb72_crit_edge, %list_add_tail.exit189.sw.bb72_crit_edge199
  %uapsd_vi = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 66
  br label %sw.epilog

sw.bb76:                                          ; preds = %list_add_tail.exit189.sw.bb76_crit_edge, %list_add_tail.exit189.sw.bb76_crit_edge200
  %uapsd_vo = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 67
  br label %sw.epilog

sw.default:                                       ; preds = %list_add_tail.exit189
  call void @__sanitizer_cov_trace_pc() #17
  %uapsd_be = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 65
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb76, %sw.bb72, %sw.bb
  %wmmps_ac.0.in.in = phi ptr [ %uapsd_be, %sw.default ], [ %uapsd_vo, %sw.bb76 ], [ %uapsd_vi, %sw.bb72 ], [ %uapsd_bk, %sw.bb ]
  %74 = ptrtoint ptr %wmmps_ac.0.in.in to i32
  call void @__asan_load1_noabort(i32 %74)
  %wmmps_ac.0.in = load i8, ptr %wmmps_ac.0.in.in, align 1
  %wmmps_ac.0 = and i8 %wmmps_ac.0.in, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0)
  %tobool84.not = icmp eq i8 %wmmps_ac.0, 0
  br i1 %tobool84.not, label %if.end87, label %lor.lhs.false

if.end87:                                         ; preds = %sw.epilog
  %has_legacy_ac = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 68
  %75 = ptrtoint ptr %has_legacy_ac to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %has_legacy_ac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool89.not = icmp eq i8 %76, 0
  br i1 %tobool89.not, label %if.end87.if.end117_crit_edge, label %if.end87.if.then97_crit_edge

if.end87.if.then97_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then97

if.end87.if.end117_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

lor.lhs.false:                                    ; preds = %sw.epilog
  %sleepq_ac_len = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 69
  %77 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sleepq_ac_len, align 8
  %inc86 = add i32 %78, 1
  store i32 %inc86, ptr %sleepq_ac_len, align 8
  %has_legacy_ac191 = getelementptr inbounds %struct.sta_info, ptr %call5, i32 0, i32 68
  %79 = ptrtoint ptr %has_legacy_ac191 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %has_legacy_ac191, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool93.not.not = icmp eq i8 %80, 0
  br i1 %tobool93.not.not, label %lor.lhs.false.if.then97_crit_edge, label %lor.lhs.false.if.end117_crit_edge

lor.lhs.false.if.end117_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

lor.lhs.false.if.then97_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then97

if.then97:                                        ; preds = %lor.lhs.false.if.then97_crit_edge, %if.end87.if.then97_crit_edge
  %tim_bitmap98 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %81 = ptrtoint ptr %tim_bitmap98 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %tim_bitmap98, align 2
  %conv99 = zext i16 %82 to i32
  %83 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %aid, align 4
  %shl101 = shl nuw i32 1, %84
  %and102 = and i32 %shl101, %conv99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %85 = trunc i32 %shl101 to i16
  %conv111 = or i16 %82, %85
  %86 = ptrtoint ptr %tim_bitmap98 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv111, ptr %tim_bitmap98, align 2
  br i1 %tobool103.not, label %if.then113, label %if.then97.if.end117_crit_edge

if.then97.if.end117_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

if.then113:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 1) #15
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %if.then97.if.end117_crit_edge, %lor.lhs.false.if.end117_crit_edge, %if.end87.if.end117_crit_edge, %if.then56.if.end117_crit_edge, %if.end50.if.end117_crit_edge
  %ret.2 = phi i32 [ 0, %if.end50.if.end117_crit_edge ], [ 0, %if.then56.if.end117_crit_edge ], [ 1, %if.then97.if.end117_crit_edge ], [ 1, %if.then113 ], [ 1, %lor.lhs.false.if.end117_crit_edge ], [ 1, %if.end87.if.end117_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock52) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end47, %if.then21, %do.end.i, %lor.lhs.false10.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end47 ], [ %ret.2, %if.end117 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %lor.lhs.false10.i.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xmitframe_hiq_filter(ptr nocapture noundef readonly %xmitframe) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %padapter = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe, i32 0, i32 4
  %0 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapter, align 4
  %hiq_filter = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 72
  %2 = ptrtoint ptr %hiq_filter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hiq_filter, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %3, label %do.end [
    i8 1, label %if.then
    i8 0, label %entry.if.end44_crit_edge
    i8 2, label %if.end44.fold.split
  ]

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then:                                          ; preds = %entry
  %ether_type = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ether_type, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %6, label %lor.lhs.false10 [
    i16 2054, label %if.then.if.then12_crit_edge
    i16 -30578, label %if.then.if.then12_crit_edge52
  ]

if.then.if.then12_crit_edge52:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

lor.lhs.false10:                                  ; preds = %if.then
  %dhcp_pkt = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dhcp_pkt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false10.if.end44_crit_edge, label %lor.lhs.false10.if.then12_crit_edge

lor.lhs.false10.if.then12_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

lor.lhs.false10.if.end44_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then12:                                        ; preds = %lor.lhs.false10.if.then12_crit_edge, %if.then.if.then12_crit_edge, %if.then.if.then12_crit_edge52
  br label %if.end44

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 2010, i32 noundef 9, ptr noundef null) #15
  br label %if.end44

if.end44.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.end44:                                         ; preds = %if.end44.fold.split, %do.end, %if.then12, %lor.lhs.false10.if.end44_crit_edge, %entry.if.end44_crit_edge
  %allow.1.off0 = phi i1 [ false, %do.end ], [ true, %if.then12 ], [ false, %lor.lhs.false10.if.end44_crit_edge ], [ true, %entry.if.end44_crit_edge ], [ false, %if.end44.fold.split ]
  ret i1 %allow.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_beacon(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @chk_bmc_sleepq_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_sta_xmit(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #15
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #15
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %or = or i32 %1, 4
  store i32 %or, ptr %state, align 8
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %2 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aid, align 4
  %shl = shl nuw i32 1, %3
  %sta_dz_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %4 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sta_dz_bitmap, align 4
  %6 = trunc i32 %shl to i16
  %conv2 = or i16 %5, %6
  store i16 %conv2, ptr %sta_dz_bitmap, align 4
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6
  %sta_pending = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6, i32 1
  %hwxmits.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 25
  %7 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwxmits.i, align 8
  %9 = ptrtoint ptr %sta_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sta_pending, align 4
  %cmp.i.not17.i = icmp eq ptr %10, %sta_pending
  br i1 %cmp.i.not17.i, label %entry.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge, label %for.body.lr.ph.i

entry.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %vi_q.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5
  %bk_q.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4
  %be_q.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %plist.018.i = phi ptr [ %10, %for.body.lr.ph.i ], [ %tmp.019.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %plist.018.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.019.i = load ptr, ptr %plist.018.i, align 4
  %triggered.i = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i, i32 0, i32 1, i32 35
  %12 = ptrtoint ptr %triggered.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %triggered.i, align 1
  %call4.i = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.018.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %priority.i, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %14, label %sw.default.i.i [
    i8 1, label %if.then.i.rtw_get_sta_pending.exit.i_crit_edge
    i8 2, label %if.then.i.rtw_get_sta_pending.exit.i_crit_edge179
    i8 4, label %if.then.i.sw.bb1.i.i_crit_edge
    i8 5, label %if.then.i.sw.bb1.i.i_crit_edge180
    i8 6, label %if.then.i.sw.bb3.i.i_crit_edge
    i8 7, label %if.then.i.sw.bb3.i.i_crit_edge181
  ]

if.then.i.sw.bb3.i.i_crit_edge181:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i

if.then.i.sw.bb3.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i

if.then.i.sw.bb1.i.i_crit_edge180:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i

if.then.i.sw.bb1.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i

if.then.i.rtw_get_sta_pending.exit.i_crit_edge179: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i

if.then.i.rtw_get_sta_pending.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i

sw.bb1.i.i:                                       ; preds = %if.then.i.sw.bb1.i.i_crit_edge, %if.then.i.sw.bb1.i.i_crit_edge180
  br label %rtw_get_sta_pending.exit.i

sw.bb3.i.i:                                       ; preds = %if.then.i.sw.bb3.i.i_crit_edge, %if.then.i.sw.bb3.i.i_crit_edge181
  br label %rtw_get_sta_pending.exit.i

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i

rtw_get_sta_pending.exit.i:                       ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %if.then.i.rtw_get_sta_pending.exit.i_crit_edge, %if.then.i.rtw_get_sta_pending.exit.i_crit_edge179
  %.sink.i.i = phi i32 [ 2, %sw.default.i.i ], [ 0, %sw.bb3.i.i ], [ 1, %sw.bb1.i.i ], [ 3, %if.then.i.rtw_get_sta_pending.exit.i_crit_edge ], [ 3, %if.then.i.rtw_get_sta_pending.exit.i_crit_edge179 ]
  %ptxservq.0.i.i = phi ptr [ %be_q.i.i, %sw.default.i.i ], [ %vo_q, %sw.bb3.i.i ], [ %vi_q.i.i, %sw.bb1.i.i ], [ %bk_q.i.i, %if.then.i.rtw_get_sta_pending.exit.i_crit_edge ], [ %bk_q.i.i, %if.then.i.rtw_get_sta_pending.exit.i_crit_edge179 ]
  %qcnt.i = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qcnt.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %qcnt.i, align 4
  %accnt.i = getelementptr %struct.hw_xmit, ptr %8, i32 %.sink.i.i, i32 1
  %18 = ptrtoint ptr %accnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %accnt.i, align 4
  %dec6.i = add i32 %19, -1
  store i32 %dec6.i, ptr %accnt.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %rtw_get_sta_pending.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %tmp.019.i, %sta_pending
  br i1 %cmp.i.not.i, label %for.inc.i.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit

dequeue_xmitframes_to_sleeping_queue.exit:        ; preds = %for.inc.i.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge, %entry.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vo_q) #15
  br i1 %call.i.i, label %if.end.i.i, label %dequeue_xmitframes_to_sleeping_queue.exit.list_del_init.exit_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit.list_del_init.exit_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %dequeue_xmitframes_to_sleeping_queue.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %vo_q to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vo_q, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %dequeue_xmitframes_to_sleeping_queue.exit.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %vo_q to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %vo_q, ptr %vo_q, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vo_q, ptr %prev.i3.i, align 4
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5
  %sta_pending4 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5, i32 1
  %28 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hwxmits.i, align 8
  %30 = ptrtoint ptr %sta_pending4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sta_pending4, align 4
  %cmp.i.not17.i44 = icmp eq ptr %31, %sta_pending4
  br i1 %cmp.i.not17.i44, label %list_del_init.exit.dequeue_xmitframes_to_sleeping_queue.exit70_crit_edge, label %for.body.lr.ph.i49

list_del_init.exit.dequeue_xmitframes_to_sleeping_queue.exit70_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit70

for.body.lr.ph.i49:                               ; preds = %list_del_init.exit
  %bk_q.i.i47 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4
  %be_q.i.i48 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3
  br label %for.body.i55

for.body.i55:                                     ; preds = %for.inc.i69.for.body.i55_crit_edge, %for.body.lr.ph.i49
  %plist.018.i50 = phi ptr [ %31, %for.body.lr.ph.i49 ], [ %tmp.019.i51, %for.inc.i69.for.body.i55_crit_edge ]
  %32 = ptrtoint ptr %plist.018.i50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp.019.i51 = load ptr, ptr %plist.018.i50, align 4
  %triggered.i52 = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i50, i32 0, i32 1, i32 35
  %33 = ptrtoint ptr %triggered.i52 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %triggered.i52, align 1
  %call4.i53 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.018.i50) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i53)
  %cmp.i54 = icmp eq i32 %call4.i53, 1
  br i1 %cmp.i54, label %if.then.i57, label %for.body.i55.for.inc.i69_crit_edge

for.body.i55.for.inc.i69_crit_edge:               ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i69

if.then.i57:                                      ; preds = %for.body.i55
  %priority.i56 = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i50, i32 0, i32 1, i32 16
  %34 = ptrtoint ptr %priority.i56 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priority.i56, align 2
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %35, label %sw.default.i.i60 [
    i8 1, label %if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge
    i8 2, label %if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge182
    i8 4, label %if.then.i57.sw.bb1.i.i58_crit_edge
    i8 5, label %if.then.i57.sw.bb1.i.i58_crit_edge183
    i8 6, label %if.then.i57.sw.bb3.i.i59_crit_edge
    i8 7, label %if.then.i57.sw.bb3.i.i59_crit_edge184
  ]

if.then.i57.sw.bb3.i.i59_crit_edge184:            ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i59

if.then.i57.sw.bb3.i.i59_crit_edge:               ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i59

if.then.i57.sw.bb1.i.i58_crit_edge183:            ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i58

if.then.i57.sw.bb1.i.i58_crit_edge:               ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i58

if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge182: ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i67

if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge: ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i67

sw.bb1.i.i58:                                     ; preds = %if.then.i57.sw.bb1.i.i58_crit_edge, %if.then.i57.sw.bb1.i.i58_crit_edge183
  br label %rtw_get_sta_pending.exit.i67

sw.bb3.i.i59:                                     ; preds = %if.then.i57.sw.bb3.i.i59_crit_edge, %if.then.i57.sw.bb3.i.i59_crit_edge184
  br label %rtw_get_sta_pending.exit.i67

sw.default.i.i60:                                 ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i67

rtw_get_sta_pending.exit.i67:                     ; preds = %sw.default.i.i60, %sw.bb3.i.i59, %sw.bb1.i.i58, %if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge, %if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge182
  %.sink.i.i61 = phi i32 [ 2, %sw.default.i.i60 ], [ 0, %sw.bb3.i.i59 ], [ 1, %sw.bb1.i.i58 ], [ 3, %if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge ], [ 3, %if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge182 ]
  %ptxservq.0.i.i62 = phi ptr [ %be_q.i.i48, %sw.default.i.i60 ], [ %vo_q, %sw.bb3.i.i59 ], [ %vi_q, %sw.bb1.i.i58 ], [ %bk_q.i.i47, %if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge ], [ %bk_q.i.i47, %if.then.i57.rtw_get_sta_pending.exit.i67_crit_edge182 ]
  %qcnt.i63 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i62, i32 0, i32 2
  %37 = ptrtoint ptr %qcnt.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qcnt.i63, align 4
  %dec.i64 = add i32 %38, -1
  store i32 %dec.i64, ptr %qcnt.i63, align 4
  %accnt.i65 = getelementptr %struct.hw_xmit, ptr %29, i32 %.sink.i.i61, i32 1
  %39 = ptrtoint ptr %accnt.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %accnt.i65, align 4
  %dec6.i66 = add i32 %40, -1
  store i32 %dec6.i66, ptr %accnt.i65, align 4
  br label %for.inc.i69

for.inc.i69:                                      ; preds = %rtw_get_sta_pending.exit.i67, %for.body.i55.for.inc.i69_crit_edge
  %cmp.i.not.i68 = icmp eq ptr %tmp.019.i51, %sta_pending4
  br i1 %cmp.i.not.i68, label %for.inc.i69.dequeue_xmitframes_to_sleeping_queue.exit70_crit_edge, label %for.inc.i69.for.body.i55_crit_edge

for.inc.i69.for.body.i55_crit_edge:               ; preds = %for.inc.i69
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i55

for.inc.i69.dequeue_xmitframes_to_sleeping_queue.exit70_crit_edge: ; preds = %for.inc.i69
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit70

dequeue_xmitframes_to_sleeping_queue.exit70:      ; preds = %for.inc.i69.dequeue_xmitframes_to_sleeping_queue.exit70_crit_edge, %list_del_init.exit.dequeue_xmitframes_to_sleeping_queue.exit70_crit_edge
  %call.i.i71 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vi_q) #15
  br i1 %call.i.i71, label %if.end.i.i74, label %dequeue_xmitframes_to_sleeping_queue.exit70.list_del_init.exit76_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit70.list_del_init.exit76_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit70
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit76

if.end.i.i74:                                     ; preds = %dequeue_xmitframes_to_sleeping_queue.exit70
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i72 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i72, align 4
  %43 = ptrtoint ptr %vi_q to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vi_q, align 4
  %prev1.i.i.i73 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i73, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit76

list_del_init.exit76:                             ; preds = %if.end.i.i74, %dequeue_xmitframes_to_sleeping_queue.exit70.list_del_init.exit76_crit_edge
  %47 = ptrtoint ptr %vi_q to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %vi_q, ptr %vi_q, align 4
  %prev.i3.i75 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i75 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %vi_q, ptr %prev.i3.i75, align 4
  %be_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3
  %sta_pending7 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3, i32 1
  %49 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hwxmits.i, align 8
  %51 = ptrtoint ptr %sta_pending7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sta_pending7, align 4
  %cmp.i.not17.i78 = icmp eq ptr %52, %sta_pending7
  br i1 %cmp.i.not17.i78, label %list_del_init.exit76.dequeue_xmitframes_to_sleeping_queue.exit104_crit_edge, label %for.body.lr.ph.i83

list_del_init.exit76.dequeue_xmitframes_to_sleeping_queue.exit104_crit_edge: ; preds = %list_del_init.exit76
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit104

for.body.lr.ph.i83:                               ; preds = %list_del_init.exit76
  %bk_q.i.i81 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4
  br label %for.body.i89

for.body.i89:                                     ; preds = %for.inc.i103.for.body.i89_crit_edge, %for.body.lr.ph.i83
  %plist.018.i84 = phi ptr [ %52, %for.body.lr.ph.i83 ], [ %tmp.019.i85, %for.inc.i103.for.body.i89_crit_edge ]
  %53 = ptrtoint ptr %plist.018.i84 to i32
  call void @__asan_load4_noabort(i32 %53)
  %tmp.019.i85 = load ptr, ptr %plist.018.i84, align 4
  %triggered.i86 = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i84, i32 0, i32 1, i32 35
  %54 = ptrtoint ptr %triggered.i86 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %triggered.i86, align 1
  %call4.i87 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.018.i84) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i87)
  %cmp.i88 = icmp eq i32 %call4.i87, 1
  br i1 %cmp.i88, label %if.then.i91, label %for.body.i89.for.inc.i103_crit_edge

for.body.i89.for.inc.i103_crit_edge:              ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i103

if.then.i91:                                      ; preds = %for.body.i89
  %priority.i90 = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i84, i32 0, i32 1, i32 16
  %55 = ptrtoint ptr %priority.i90 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %priority.i90, align 2
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %56, label %sw.default.i.i94 [
    i8 1, label %if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge
    i8 2, label %if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge185
    i8 4, label %if.then.i91.sw.bb1.i.i92_crit_edge
    i8 5, label %if.then.i91.sw.bb1.i.i92_crit_edge186
    i8 6, label %if.then.i91.sw.bb3.i.i93_crit_edge
    i8 7, label %if.then.i91.sw.bb3.i.i93_crit_edge187
  ]

if.then.i91.sw.bb3.i.i93_crit_edge187:            ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i93

if.then.i91.sw.bb3.i.i93_crit_edge:               ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i93

if.then.i91.sw.bb1.i.i92_crit_edge186:            ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i92

if.then.i91.sw.bb1.i.i92_crit_edge:               ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i92

if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge185: ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i101

if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge: ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i101

sw.bb1.i.i92:                                     ; preds = %if.then.i91.sw.bb1.i.i92_crit_edge, %if.then.i91.sw.bb1.i.i92_crit_edge186
  br label %rtw_get_sta_pending.exit.i101

sw.bb3.i.i93:                                     ; preds = %if.then.i91.sw.bb3.i.i93_crit_edge, %if.then.i91.sw.bb3.i.i93_crit_edge187
  br label %rtw_get_sta_pending.exit.i101

sw.default.i.i94:                                 ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i101

rtw_get_sta_pending.exit.i101:                    ; preds = %sw.default.i.i94, %sw.bb3.i.i93, %sw.bb1.i.i92, %if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge, %if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge185
  %.sink.i.i95 = phi i32 [ 2, %sw.default.i.i94 ], [ 0, %sw.bb3.i.i93 ], [ 1, %sw.bb1.i.i92 ], [ 3, %if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge ], [ 3, %if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge185 ]
  %ptxservq.0.i.i96 = phi ptr [ %be_q, %sw.default.i.i94 ], [ %vo_q, %sw.bb3.i.i93 ], [ %vi_q, %sw.bb1.i.i92 ], [ %bk_q.i.i81, %if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge ], [ %bk_q.i.i81, %if.then.i91.rtw_get_sta_pending.exit.i101_crit_edge185 ]
  %qcnt.i97 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i96, i32 0, i32 2
  %58 = ptrtoint ptr %qcnt.i97 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qcnt.i97, align 4
  %dec.i98 = add i32 %59, -1
  store i32 %dec.i98, ptr %qcnt.i97, align 4
  %accnt.i99 = getelementptr %struct.hw_xmit, ptr %50, i32 %.sink.i.i95, i32 1
  %60 = ptrtoint ptr %accnt.i99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %accnt.i99, align 4
  %dec6.i100 = add i32 %61, -1
  store i32 %dec6.i100, ptr %accnt.i99, align 4
  br label %for.inc.i103

for.inc.i103:                                     ; preds = %rtw_get_sta_pending.exit.i101, %for.body.i89.for.inc.i103_crit_edge
  %cmp.i.not.i102 = icmp eq ptr %tmp.019.i85, %sta_pending7
  br i1 %cmp.i.not.i102, label %for.inc.i103.dequeue_xmitframes_to_sleeping_queue.exit104_crit_edge, label %for.inc.i103.for.body.i89_crit_edge

for.inc.i103.for.body.i89_crit_edge:              ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i89

for.inc.i103.dequeue_xmitframes_to_sleeping_queue.exit104_crit_edge: ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit104

dequeue_xmitframes_to_sleeping_queue.exit104:     ; preds = %for.inc.i103.dequeue_xmitframes_to_sleeping_queue.exit104_crit_edge, %list_del_init.exit76.dequeue_xmitframes_to_sleeping_queue.exit104_crit_edge
  %call.i.i105 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %be_q) #15
  br i1 %call.i.i105, label %if.end.i.i108, label %dequeue_xmitframes_to_sleeping_queue.exit104.list_del_init.exit110_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit104.list_del_init.exit110_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit104
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit110

if.end.i.i108:                                    ; preds = %dequeue_xmitframes_to_sleeping_queue.exit104
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i106 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i106, align 4
  %64 = ptrtoint ptr %be_q to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %be_q, align 4
  %prev1.i.i.i107 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i107, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del_init.exit110

list_del_init.exit110:                            ; preds = %if.end.i.i108, %dequeue_xmitframes_to_sleeping_queue.exit104.list_del_init.exit110_crit_edge
  %68 = ptrtoint ptr %be_q to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %be_q, ptr %be_q, align 4
  %prev.i3.i109 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i3.i109 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %be_q, ptr %prev.i3.i109, align 4
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4
  %sta_pending10 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4, i32 1
  %70 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hwxmits.i, align 8
  %72 = ptrtoint ptr %sta_pending10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sta_pending10, align 4
  %cmp.i.not17.i112 = icmp eq ptr %73, %sta_pending10
  br i1 %cmp.i.not17.i112, label %list_del_init.exit110.dequeue_xmitframes_to_sleeping_queue.exit138_crit_edge, label %list_del_init.exit110.for.body.i123_crit_edge

list_del_init.exit110.for.body.i123_crit_edge:    ; preds = %list_del_init.exit110
  br label %for.body.i123

list_del_init.exit110.dequeue_xmitframes_to_sleeping_queue.exit138_crit_edge: ; preds = %list_del_init.exit110
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit138

for.body.i123:                                    ; preds = %for.inc.i137.for.body.i123_crit_edge, %list_del_init.exit110.for.body.i123_crit_edge
  %plist.018.i118 = phi ptr [ %tmp.019.i119, %for.inc.i137.for.body.i123_crit_edge ], [ %73, %list_del_init.exit110.for.body.i123_crit_edge ]
  %74 = ptrtoint ptr %plist.018.i118 to i32
  call void @__asan_load4_noabort(i32 %74)
  %tmp.019.i119 = load ptr, ptr %plist.018.i118, align 4
  %triggered.i120 = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i118, i32 0, i32 1, i32 35
  %75 = ptrtoint ptr %triggered.i120 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %triggered.i120, align 1
  %call4.i121 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.018.i118) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i121)
  %cmp.i122 = icmp eq i32 %call4.i121, 1
  br i1 %cmp.i122, label %if.then.i125, label %for.body.i123.for.inc.i137_crit_edge

for.body.i123.for.inc.i137_crit_edge:             ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i137

if.then.i125:                                     ; preds = %for.body.i123
  %priority.i124 = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i118, i32 0, i32 1, i32 16
  %76 = ptrtoint ptr %priority.i124 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %priority.i124, align 2
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %77, label %sw.default.i.i128 [
    i8 1, label %if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge
    i8 2, label %if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge188
    i8 4, label %if.then.i125.sw.bb1.i.i126_crit_edge
    i8 5, label %if.then.i125.sw.bb1.i.i126_crit_edge189
    i8 6, label %if.then.i125.sw.bb3.i.i127_crit_edge
    i8 7, label %if.then.i125.sw.bb3.i.i127_crit_edge190
  ]

if.then.i125.sw.bb3.i.i127_crit_edge190:          ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i127

if.then.i125.sw.bb3.i.i127_crit_edge:             ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i127

if.then.i125.sw.bb1.i.i126_crit_edge189:          ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i126

if.then.i125.sw.bb1.i.i126_crit_edge:             ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i126

if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge188: ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i135

if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge: ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i135

sw.bb1.i.i126:                                    ; preds = %if.then.i125.sw.bb1.i.i126_crit_edge, %if.then.i125.sw.bb1.i.i126_crit_edge189
  br label %rtw_get_sta_pending.exit.i135

sw.bb3.i.i127:                                    ; preds = %if.then.i125.sw.bb3.i.i127_crit_edge, %if.then.i125.sw.bb3.i.i127_crit_edge190
  br label %rtw_get_sta_pending.exit.i135

sw.default.i.i128:                                ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i135

rtw_get_sta_pending.exit.i135:                    ; preds = %sw.default.i.i128, %sw.bb3.i.i127, %sw.bb1.i.i126, %if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge, %if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge188
  %.sink.i.i129 = phi i32 [ 2, %sw.default.i.i128 ], [ 0, %sw.bb3.i.i127 ], [ 1, %sw.bb1.i.i126 ], [ 3, %if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge ], [ 3, %if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge188 ]
  %ptxservq.0.i.i130 = phi ptr [ %be_q, %sw.default.i.i128 ], [ %vo_q, %sw.bb3.i.i127 ], [ %vi_q, %sw.bb1.i.i126 ], [ %bk_q, %if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge ], [ %bk_q, %if.then.i125.rtw_get_sta_pending.exit.i135_crit_edge188 ]
  %qcnt.i131 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i130, i32 0, i32 2
  %79 = ptrtoint ptr %qcnt.i131 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qcnt.i131, align 4
  %dec.i132 = add i32 %80, -1
  store i32 %dec.i132, ptr %qcnt.i131, align 4
  %accnt.i133 = getelementptr %struct.hw_xmit, ptr %71, i32 %.sink.i.i129, i32 1
  %81 = ptrtoint ptr %accnt.i133 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %accnt.i133, align 4
  %dec6.i134 = add i32 %82, -1
  store i32 %dec6.i134, ptr %accnt.i133, align 4
  br label %for.inc.i137

for.inc.i137:                                     ; preds = %rtw_get_sta_pending.exit.i135, %for.body.i123.for.inc.i137_crit_edge
  %cmp.i.not.i136 = icmp eq ptr %tmp.019.i119, %sta_pending10
  br i1 %cmp.i.not.i136, label %for.inc.i137.dequeue_xmitframes_to_sleeping_queue.exit138_crit_edge, label %for.inc.i137.for.body.i123_crit_edge

for.inc.i137.for.body.i123_crit_edge:             ; preds = %for.inc.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i123

for.inc.i137.dequeue_xmitframes_to_sleeping_queue.exit138_crit_edge: ; preds = %for.inc.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit138

dequeue_xmitframes_to_sleeping_queue.exit138:     ; preds = %for.inc.i137.dequeue_xmitframes_to_sleeping_queue.exit138_crit_edge, %list_del_init.exit110.dequeue_xmitframes_to_sleeping_queue.exit138_crit_edge
  %call.i.i139 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bk_q) #15
  br i1 %call.i.i139, label %if.end.i.i142, label %dequeue_xmitframes_to_sleeping_queue.exit138.list_del_init.exit144_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit138.list_del_init.exit144_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit138
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit144

if.end.i.i142:                                    ; preds = %dequeue_xmitframes_to_sleeping_queue.exit138
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i140 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i140 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i140, align 4
  %85 = ptrtoint ptr %bk_q to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bk_q, align 4
  %prev1.i.i.i141 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i141 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i141, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del_init.exit144

list_del_init.exit144:                            ; preds = %if.end.i.i142, %dequeue_xmitframes_to_sleeping_queue.exit138.list_del_init.exit144_crit_edge
  %89 = ptrtoint ptr %bk_q to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %bk_q, ptr %bk_q, align 4
  %prev.i3.i143 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i3.i143 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %bk_q, ptr %prev.i3.i143, align 4
  %be_q14 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 3
  %sta_pending15 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 3, i32 1
  %91 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hwxmits.i, align 8
  %93 = ptrtoint ptr %sta_pending15 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sta_pending15, align 4
  %cmp.i.not17.i146 = icmp eq ptr %94, %sta_pending15
  br i1 %cmp.i.not17.i146, label %list_del_init.exit144.dequeue_xmitframes_to_sleeping_queue.exit172_crit_edge, label %for.body.lr.ph.i151

list_del_init.exit144.dequeue_xmitframes_to_sleeping_queue.exit172_crit_edge: ; preds = %list_del_init.exit144
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit172

for.body.lr.ph.i151:                              ; preds = %list_del_init.exit144
  %vo_q.i.i147 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 6
  %vi_q.i.i148 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 5
  %bk_q.i.i149 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 4
  br label %for.body.i157

for.body.i157:                                    ; preds = %for.inc.i171.for.body.i157_crit_edge, %for.body.lr.ph.i151
  %plist.018.i152 = phi ptr [ %94, %for.body.lr.ph.i151 ], [ %tmp.019.i153, %for.inc.i171.for.body.i157_crit_edge ]
  %95 = ptrtoint ptr %plist.018.i152 to i32
  call void @__asan_load4_noabort(i32 %95)
  %tmp.019.i153 = load ptr, ptr %plist.018.i152, align 4
  %triggered.i154 = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i152, i32 0, i32 1, i32 35
  %96 = ptrtoint ptr %triggered.i154 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %triggered.i154, align 1
  %call4.i155 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.018.i152) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i155)
  %cmp.i156 = icmp eq i32 %call4.i155, 1
  br i1 %cmp.i156, label %if.then.i159, label %for.body.i157.for.inc.i171_crit_edge

for.body.i157.for.inc.i171_crit_edge:             ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i171

if.then.i159:                                     ; preds = %for.body.i157
  %priority.i158 = getelementptr inbounds %struct.xmit_frame, ptr %plist.018.i152, i32 0, i32 1, i32 16
  %97 = ptrtoint ptr %priority.i158 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %priority.i158, align 2
  %99 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %98, label %sw.default.i.i162 [
    i8 1, label %if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge
    i8 2, label %if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge191
    i8 4, label %if.then.i159.sw.bb1.i.i160_crit_edge
    i8 5, label %if.then.i159.sw.bb1.i.i160_crit_edge192
    i8 6, label %if.then.i159.sw.bb3.i.i161_crit_edge
    i8 7, label %if.then.i159.sw.bb3.i.i161_crit_edge193
  ]

if.then.i159.sw.bb3.i.i161_crit_edge193:          ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i161

if.then.i159.sw.bb3.i.i161_crit_edge:             ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i.i161

if.then.i159.sw.bb1.i.i160_crit_edge192:          ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i160

if.then.i159.sw.bb1.i.i160_crit_edge:             ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i.i160

if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge191: ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i169

if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge: ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i169

sw.bb1.i.i160:                                    ; preds = %if.then.i159.sw.bb1.i.i160_crit_edge, %if.then.i159.sw.bb1.i.i160_crit_edge192
  br label %rtw_get_sta_pending.exit.i169

sw.bb3.i.i161:                                    ; preds = %if.then.i159.sw.bb3.i.i161_crit_edge, %if.then.i159.sw.bb3.i.i161_crit_edge193
  br label %rtw_get_sta_pending.exit.i169

sw.default.i.i162:                                ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_get_sta_pending.exit.i169

rtw_get_sta_pending.exit.i169:                    ; preds = %sw.default.i.i162, %sw.bb3.i.i161, %sw.bb1.i.i160, %if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge, %if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge191
  %.sink.i.i163 = phi i32 [ 2, %sw.default.i.i162 ], [ 0, %sw.bb3.i.i161 ], [ 1, %sw.bb1.i.i160 ], [ 3, %if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge ], [ 3, %if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge191 ]
  %ptxservq.0.i.i164 = phi ptr [ %be_q14, %sw.default.i.i162 ], [ %vo_q.i.i147, %sw.bb3.i.i161 ], [ %vi_q.i.i148, %sw.bb1.i.i160 ], [ %bk_q.i.i149, %if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge ], [ %bk_q.i.i149, %if.then.i159.rtw_get_sta_pending.exit.i169_crit_edge191 ]
  %qcnt.i165 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i164, i32 0, i32 2
  %100 = ptrtoint ptr %qcnt.i165 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %qcnt.i165, align 4
  %dec.i166 = add i32 %101, -1
  store i32 %dec.i166, ptr %qcnt.i165, align 4
  %accnt.i167 = getelementptr %struct.hw_xmit, ptr %92, i32 %.sink.i.i163, i32 1
  %102 = ptrtoint ptr %accnt.i167 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %accnt.i167, align 4
  %dec6.i168 = add i32 %103, -1
  store i32 %dec6.i168, ptr %accnt.i167, align 4
  br label %for.inc.i171

for.inc.i171:                                     ; preds = %rtw_get_sta_pending.exit.i169, %for.body.i157.for.inc.i171_crit_edge
  %cmp.i.not.i170 = icmp eq ptr %tmp.019.i153, %sta_pending15
  br i1 %cmp.i.not.i170, label %for.inc.i171.dequeue_xmitframes_to_sleeping_queue.exit172_crit_edge, label %for.inc.i171.for.body.i157_crit_edge

for.inc.i171.for.body.i157_crit_edge:             ; preds = %for.inc.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i157

for.inc.i171.dequeue_xmitframes_to_sleeping_queue.exit172_crit_edge: ; preds = %for.inc.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_xmitframes_to_sleeping_queue.exit172

dequeue_xmitframes_to_sleeping_queue.exit172:     ; preds = %for.inc.i171.dequeue_xmitframes_to_sleeping_queue.exit172_crit_edge, %list_del_init.exit144.dequeue_xmitframes_to_sleeping_queue.exit172_crit_edge
  %call.i.i173 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %be_q14) #15
  br i1 %call.i.i173, label %if.end.i.i176, label %dequeue_xmitframes_to_sleeping_queue.exit172.list_del_init.exit178_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit172.list_del_init.exit178_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit172
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit178

if.end.i.i176:                                    ; preds = %dequeue_xmitframes_to_sleeping_queue.exit172
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i174 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 3, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i174, align 4
  %106 = ptrtoint ptr %be_q14 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %be_q14, align 4
  %prev1.i.i.i175 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i175, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %list_del_init.exit178

list_del_init.exit178:                            ; preds = %if.end.i.i176, %dequeue_xmitframes_to_sleeping_queue.exit172.list_del_init.exit178_crit_edge
  %110 = ptrtoint ptr %be_q14 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %be_q14, ptr %be_q14, align 4
  %prev.i3.i177 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 4, i32 3, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i3.i177 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %be_q14, ptr %prev.i3.i177, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wakeup_sta_to_xmit(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #15
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #15
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6
  %0 = ptrtoint ptr %sleep_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleep_q, align 4
  %cmp.i.not217 = icmp eq ptr %1, %sleep_q
  br i1 %cmp.i.not217, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %uapsd_vo = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 67
  %uapsd_vi = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 66
  %uapsd_bk = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 64
  %uapsd_be = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 65
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %sleepq_ac_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 69
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.body.lr.ph
  %xmitframe_plist.0218 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.0222, %if.end40.for.body_crit_edge ]
  %2 = ptrtoint ptr %xmitframe_plist.0218 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0222 = load ptr, ptr %xmitframe_plist.0218, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xmitframe_plist.0218) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.0218, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %xmitframe_plist.0218 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xmitframe_plist.0218, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %xmitframe_plist.0218 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %xmitframe_plist.0218, ptr %xmitframe_plist.0218, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.0218, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %xmitframe_plist.0218, ptr %prev.i3.i, align 4
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0218, i32 0, i32 1, i32 16
  %11 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %priority, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %12, label %sw.default [
    i8 1, label %list_del_init.exit.sw.epilog_crit_edge
    i8 2, label %list_del_init.exit.sw.epilog_crit_edge234
    i8 4, label %list_del_init.exit.sw.bb7_crit_edge
    i8 5, label %list_del_init.exit.sw.bb7_crit_edge235
    i8 6, label %list_del_init.exit.sw.bb11_crit_edge
    i8 7, label %list_del_init.exit.sw.bb11_crit_edge236
  ]

list_del_init.exit.sw.bb11_crit_edge236:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

list_del_init.exit.sw.bb11_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

list_del_init.exit.sw.bb7_crit_edge235:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

list_del_init.exit.sw.bb7_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

list_del_init.exit.sw.epilog_crit_edge234:        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

list_del_init.exit.sw.epilog_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb7:                                           ; preds = %list_del_init.exit.sw.bb7_crit_edge, %list_del_init.exit.sw.bb7_crit_edge235
  br label %sw.epilog

sw.bb11:                                          ; preds = %list_del_init.exit.sw.bb11_crit_edge, %list_del_init.exit.sw.bb11_crit_edge236
  br label %sw.epilog

sw.default:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb7, %list_del_init.exit.sw.epilog_crit_edge, %list_del_init.exit.sw.epilog_crit_edge234
  %wmmps_ac.0.in.in = phi ptr [ %uapsd_be, %sw.default ], [ %uapsd_vo, %sw.bb11 ], [ %uapsd_vi, %sw.bb7 ], [ %uapsd_bk, %list_del_init.exit.sw.epilog_crit_edge ], [ %uapsd_bk, %list_del_init.exit.sw.epilog_crit_edge234 ]
  %14 = ptrtoint ptr %wmmps_ac.0.in.in to i32
  call void @__asan_load1_noabort(i32 %14)
  %wmmps_ac.0.in = load i8, ptr %wmmps_ac.0.in.in, align 1
  %wmmps_ac.0 = and i8 %wmmps_ac.0.in, 2
  %15 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sleepq_len, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %sleepq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp ne i32 %dec, 0
  %spec.select230 = zext i1 %cmp.not to i8
  %17 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0218, i32 0, i32 1, i32 33
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.select230, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0)
  %tobool24.not = icmp eq i8 %wmmps_ac.0, 0
  br i1 %tobool24.not, label %sw.epilog.if.end40_crit_edge, label %if.then25

sw.epilog.if.end40_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then25:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sleepq_ac_len, align 8
  %dec26 = add i32 %20, -1
  store i32 %dec26, ptr %sleepq_ac_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec26)
  %cmp28.not = icmp eq i32 %dec26, 0
  %not.cmp28.not = xor i1 %cmp28.not, true
  %. = zext i1 %not.cmp28.not to i8
  %.233 = zext i1 %cmp28.not to i8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %., ptr %17, align 1
  %eosp = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0218, i32 0, i32 1, i32 38
  %22 = ptrtoint ptr %eosp to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.233, ptr %eosp, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then25, %sw.epilog.if.end40_crit_edge
  %triggered = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0218, i32 0, i32 1, i32 35
  %23 = ptrtoint ptr %triggered to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %triggered, align 1
  %call42 = tail call i32 @rtw_hal_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %xmitframe_plist.0218) #15
  %cmp.i.not = icmp eq ptr %tmp.0222, %sleep_q
  br i1 %cmp.i.not, label %if.end40.for.end_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end40.for.end_crit_edge, %entry.for.end_crit_edge
  %sleepq_len44 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %24 = ptrtoint ptr %sleepq_len44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sleepq_len44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp45 = icmp eq i32 %25, 0
  br i1 %cmp45, label %if.then47, label %for.end.if.end78_crit_edge

for.end.if.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.then47:                                        ; preds = %for.end
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %26 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tim_bitmap, align 2
  %conv48 = zext i16 %27 to i32
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %28 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aid, align 4
  %shl = shl nuw i32 1, %29
  %and49 = and i32 %shl, %conv48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp ne i32 %and49, 0
  %spec.select = zext i1 %tobool50.not to i8
  %30 = trunc i32 %shl to i16
  %31 = xor i16 %30, -1
  %conv58 = and i16 %27, %31
  %32 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv58, ptr %tim_bitmap, align 2
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 8
  %and59 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then47.if.end63_crit_edge, label %if.then61

if.then47.if.end63_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then61:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  %xor = xor i32 %34, 4
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %xor, ptr %state, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then47.if.end63_crit_edge
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 8
  %and65 = and i32 %37, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end71_crit_edge, label %if.then67

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %expire_to = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 17
  %38 = ptrtoint ptr %expire_to to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %expire_to, align 4
  %expire_to68 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 41
  %40 = ptrtoint ptr %expire_to68 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %expire_to68, align 8
  %xor70 = xor i32 %37, 1024
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %xor70, ptr %state, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end63.if.end71_crit_edge
  %42 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %aid, align 4
  %shl73 = shl nuw i32 1, %43
  %sta_dz_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %44 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sta_dz_bitmap, align 4
  %46 = trunc i32 %shl73 to i16
  %47 = xor i16 %46, -1
  %conv77 = and i16 %45, %47
  store i16 %conv77, ptr %sta_dz_bitmap, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end71, %for.end.if.end78_crit_edge
  %update_mask.1 = phi i8 [ %spec.select, %if.end71 ], [ 0, %for.end.if.end78_crit_edge ]
  %tobool79.not = icmp eq ptr %call, null
  br i1 %tobool79.not, label %if.end78._exit_crit_edge, label %if.end81

if.end78._exit_crit_edge:                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %_exit

if.end81:                                         ; preds = %if.end78
  %sta_dz_bitmap82 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %48 = ptrtoint ptr %sta_dz_bitmap82 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sta_dz_bitmap82, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %49)
  %cmp85 = icmp ult i16 %49, 2
  br i1 %cmp85, label %if.then87, label %if.end81._exit_crit_edge

if.end81._exit_crit_edge:                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %_exit

if.then87:                                        ; preds = %if.end81
  %sleep_q88 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 6
  %50 = ptrtoint ptr %sleep_q88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sleep_q88, align 4
  %cmp.i206.not224 = icmp eq ptr %51, %sleep_q88
  br i1 %cmp.i206.not224, label %if.then87.for.end118_crit_edge, label %for.body96.lr.ph

if.then87.for.end118_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end118

for.body96.lr.ph:                                 ; preds = %if.then87
  %sleepq_len101 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 7
  br label %for.body96

for.body96:                                       ; preds = %list_del_init.exit213.for.body96_crit_edge, %for.body96.lr.ph
  %xmitframe_plist.1225 = phi ptr [ %51, %for.body96.lr.ph ], [ %tmp.1228, %list_del_init.exit213.for.body96_crit_edge ]
  %52 = ptrtoint ptr %xmitframe_plist.1225 to i32
  call void @__asan_load4_noabort(i32 %52)
  %tmp.1228 = load ptr, ptr %xmitframe_plist.1225, align 4
  %call.i.i208 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xmitframe_plist.1225) #15
  br i1 %call.i.i208, label %if.end.i.i211, label %for.body96.list_del_init.exit213_crit_edge

for.body96.list_del_init.exit213_crit_edge:       ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit213

if.end.i.i211:                                    ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i209 = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.1225, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i209 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i209, align 4
  %55 = ptrtoint ptr %xmitframe_plist.1225 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xmitframe_plist.1225, align 4
  %prev1.i.i.i210 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i210 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i210, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del_init.exit213

list_del_init.exit213:                            ; preds = %if.end.i.i211, %for.body96.list_del_init.exit213_crit_edge
  %59 = ptrtoint ptr %xmitframe_plist.1225 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %xmitframe_plist.1225, ptr %xmitframe_plist.1225, align 4
  %prev.i3.i212 = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.1225, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i3.i212 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %xmitframe_plist.1225, ptr %prev.i3.i212, align 4
  %61 = ptrtoint ptr %sleepq_len101 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sleepq_len101, align 4
  %dec102 = add i32 %62, -1
  store i32 %dec102, ptr %sleepq_len101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec102)
  %cmp104.not = icmp ne i32 %dec102, 0
  %spec.select232 = zext i1 %cmp104.not to i8
  %63 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.1225, i32 0, i32 1, i32 33
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %spec.select232, ptr %63, align 1
  %triggered114 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.1225, i32 0, i32 1, i32 35
  %65 = ptrtoint ptr %triggered114 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %triggered114, align 1
  %call115 = tail call i32 @rtw_hal_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %xmitframe_plist.1225) #15
  %cmp.i206.not = icmp eq ptr %tmp.1228, %sleep_q88
  br i1 %cmp.i206.not, label %list_del_init.exit213.for.end118_crit_edge, label %list_del_init.exit213.for.body96_crit_edge

list_del_init.exit213.for.body96_crit_edge:       ; preds = %list_del_init.exit213
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body96

list_del_init.exit213.for.end118_crit_edge:       ; preds = %list_del_init.exit213
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end118

for.end118:                                       ; preds = %list_del_init.exit213.for.end118_crit_edge, %if.then87.for.end118_crit_edge
  %sleepq_len119 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 7
  %66 = ptrtoint ptr %sleepq_len119 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sleepq_len119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp120 = icmp eq i32 %67, 0
  br i1 %cmp120, label %if.then122, label %for.end118._exit_crit_edge

for.end118._exit_crit_edge:                       ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #17
  br label %_exit

if.then122:                                       ; preds = %for.end118
  %tim_bitmap123 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %68 = ptrtoint ptr %tim_bitmap123 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %tim_bitmap123, align 2
  %70 = and i16 %69, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool126.not = icmp eq i16 %70, 0
  %71 = and i16 %69, -2
  %72 = ptrtoint ptr %tim_bitmap123 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %tim_bitmap123, align 2
  %73 = ptrtoint ptr %sta_dz_bitmap82 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %sta_dz_bitmap82, align 4
  %75 = and i16 %74, -2
  store i16 %75, ptr %sta_dz_bitmap82, align 4
  br i1 %tobool126.not, label %if.then122._exit_crit_edge, label %_exit.thread

if.then122._exit_crit_edge:                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #17
  br label %_exit

_exit.thread:                                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #15
  br label %if.then143

_exit:                                            ; preds = %if.then122._exit_crit_edge, %for.end118._exit_crit_edge, %if.end81._exit_crit_edge, %if.end78._exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %update_mask.1)
  %tobool142.not = icmp eq i8 %update_mask.1, 0
  br i1 %tobool142.not, label %_exit.if.end144_crit_edge, label %_exit.if.then143_crit_edge

_exit.if.then143_crit_edge:                       ; preds = %_exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then143

_exit.if.end144_crit_edge:                        ; preds = %_exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end144

if.then143:                                       ; preds = %_exit.if.then143_crit_edge, %_exit.thread
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 1) #15
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %_exit.if.end144_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_xmitframe_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xmit_delivery_enabled_frames(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #15
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6
  %0 = ptrtoint ptr %sleep_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleep_q, align 4
  %cmp.i.not73 = icmp eq ptr %1, %sleep_q
  br i1 %cmp.i.not73, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %uapsd_vo = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 67
  %uapsd_vi = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 66
  %uapsd_bk = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 64
  %uapsd_be = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 65
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %sleepq_ac_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 69
  %has_legacy_ac = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 68
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %xmitframe_plist.074 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.077, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %xmitframe_plist.074 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.077 = load ptr, ptr %xmitframe_plist.074, align 4
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.074, i32 0, i32 1, i32 16
  %3 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priority, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %4, label %sw.default [
    i8 1, label %for.body.sw.epilog_crit_edge
    i8 2, label %for.body.sw.epilog_crit_edge80
    i8 4, label %for.body.sw.bb6_crit_edge
    i8 5, label %for.body.sw.bb6_crit_edge81
    i8 6, label %for.body.sw.bb10_crit_edge
    i8 7, label %for.body.sw.bb10_crit_edge82
  ]

for.body.sw.bb10_crit_edge82:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10

for.body.sw.bb10_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10

for.body.sw.bb6_crit_edge81:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6

for.body.sw.bb6_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6

for.body.sw.epilog_crit_edge80:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body.sw.bb6_crit_edge, %for.body.sw.bb6_crit_edge81
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body.sw.bb10_crit_edge, %for.body.sw.bb10_crit_edge82
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb6, %for.body.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge80
  %wmmps_ac.0.in.in = phi ptr [ %uapsd_be, %sw.default ], [ %uapsd_vo, %sw.bb10 ], [ %uapsd_vi, %sw.bb6 ], [ %uapsd_bk, %for.body.sw.epilog_crit_edge ], [ %uapsd_bk, %for.body.sw.epilog_crit_edge80 ]
  %6 = ptrtoint ptr %wmmps_ac.0.in.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %wmmps_ac.0.in = load i8, ptr %wmmps_ac.0.in.in, align 1
  %wmmps_ac.0 = and i8 %wmmps_ac.0.in, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0)
  %tobool18.not = icmp eq i8 %wmmps_ac.0, 0
  br i1 %tobool18.not, label %sw.epilog.for.inc_crit_edge, label %if.end

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %sw.epilog
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xmitframe_plist.074) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.074, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %xmitframe_plist.074 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xmitframe_plist.074, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %xmitframe_plist.074 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %xmitframe_plist.074, ptr %xmitframe_plist.074, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.074, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %xmitframe_plist.074, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sleepq_len, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %sleepq_len, align 4
  %17 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sleepq_ac_len, align 8
  %dec19 = add i32 %18, -1
  store i32 %dec19, ptr %sleepq_ac_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec19)
  %cmp.not = icmp eq i32 %dec19, 0
  %not.cmp.not = xor i1 %cmp.not, true
  %spec.select = zext i1 %not.cmp.not to i8
  %spec.select79 = zext i1 %cmp.not to i8
  %19 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.074, i32 0, i32 1, i32 33
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select, ptr %19, align 1
  %21 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.074, i32 0, i32 1, i32 38
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select79, ptr %21, align 4
  %triggered = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.074, i32 0, i32 1, i32 35
  %23 = ptrtoint ptr %triggered to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %triggered, align 1
  %call31 = tail call i32 @rtw_hal_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %xmitframe_plist.074) #15
  %24 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sleepq_ac_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp33 = icmp eq i32 %25, 0
  br i1 %cmp33, label %land.lhs.true, label %list_del_init.exit.for.inc_crit_edge

list_del_init.exit.for.inc_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %list_del_init.exit
  %26 = ptrtoint ptr %has_legacy_ac to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_legacy_ac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool35.not = icmp eq i8 %27, 0
  br i1 %tobool35.not, label %if.then39, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aid, align 4
  %shl = shl nuw i32 1, %29
  %30 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tim_bitmap, align 2
  %32 = trunc i32 %shl to i16
  %33 = xor i16 %32, -1
  %conv42 = and i16 %31, %33
  store i16 %conv42, ptr %tim_bitmap, align 2
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 1) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %land.lhs.true.for.inc_crit_edge, %list_del_init.exit.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.077, %sleep_q
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enqueue_pending_xmitbuf(ptr noundef %pxmitpriv, ptr noundef %pxmitbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 17
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %pending_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pxmitbuf) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxmitbuf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %pxmitbuf, ptr %pxmitbuf, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pxmitbuf, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitbuf, ptr noundef %11, ptr noundef %pending_xmitbuf_queue) #15
  br i1 %call.i.i7, label %if.end.i.i8, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i8:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pxmitbuf, ptr %prev.i, align 4
  %13 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pending_xmitbuf_queue, ptr %pxmitbuf, align 4
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pxmitbuf, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i8, %list_del_init.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  %xmit_comp = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 1
  tail call void @complete(ptr noundef %xmit_comp) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enqueue_pending_xmitbuf_to_head(ptr noundef %pxmitpriv, ptr noundef %pxmitbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pxmitbuf) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxmitbuf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pxmitbuf, ptr %pxmitbuf, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pxmitbuf, ptr %prev.i3.i, align 4
  %8 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pending_xmitbuf_queue, align 4
  %call.i.i6 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitbuf, ptr noundef %pending_xmitbuf_queue, ptr noundef %9) #15
  br i1 %call.i.i6, label %if.end.i.i7, label %list_del_init.exit.list_add.exit_crit_edge

list_del_init.exit.list_add.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i7:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pxmitbuf, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %pxmitbuf, align 4
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending_xmitbuf_queue, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pxmitbuf, ptr %pending_xmitbuf_queue, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i7, %list_del_init.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dequeue_pending_xmitbuf(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %0 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_xmitbuf_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %pending_xmitbuf_queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %pxmitbuf.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %1, %list_del_init.exit ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  ret ptr %pxmitbuf.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dequeue_pending_xmitbuf_under_survey(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %0 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_xmitbuf_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %pending_xmitbuf_queue
  br i1 %cmp.i.not, label %entry.if.end18_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %plist.0 = phi ptr [ %3, %if.end.do.body_crit_edge ], [ %pending_xmitbuf_queue, %entry.do.body_crit_edge ]
  %2 = ptrtoint ptr %plist.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.0, align 4
  %cmp = icmp eq ptr %3, %pending_xmitbuf_queue
  br i1 %cmp, label %do.body.if.end18_crit_edge, label %if.end

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end:                                           ; preds = %do.body
  %pbuf = getelementptr inbounds %struct.xmit_buf, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pbuf, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 40
  %6 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr4, align 2
  %8 = lshr i16 %7, 8
  %9 = trunc i16 %8 to i8
  %trunc = and i8 %9, -4
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %trunc, label %if.end.do.body_crit_edge [
    i8 64, label %if.end.if.then16_crit_edge
    i8 72, label %if.end.if.then16_crit_edge36
    i8 -56, label %if.end.if.then16_crit_edge37
  ]

if.end.if.then16_crit_edge37:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

if.end.if.then16_crit_edge36:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge36, %if.end.if.then16_crit_edge37
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then16.list_del_init.exit_crit_edge

if.then16.list_del_init.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then16.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %3, ptr %prev.i3.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %list_del_init.exit, %do.body.if.end18_crit_edge, %entry.if.end18_crit_edge
  %pxmitbuf.2 = phi ptr [ null, %entry.if.end18_crit_edge ], [ %3, %list_del_init.exit ], [ null, %do.body.if.end18_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  ret ptr %pxmitbuf.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @check_pending_xmitbuf(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %0 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_xmitbuf_queue, align 4
  %cmp.i.not = icmp ne ptr %1, %pending_xmitbuf_queue
  %spec.select = zext i1 %cmp.i.not to i32
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmit_thread(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_sigaction(i32 noundef 15, ptr noundef nonnull inttoptr (i32 2 to ptr)) #15
  br label %do.body

do.body:                                          ; preds = %flush_signals_thread.exit.do.body_crit_edge, %entry
  %call = tail call i32 @rtw_hal_xmit_thread_handler(ptr noundef %context) #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %do.body.if.then.i_crit_edge, !prof !77

do.body.if.then.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

signal_pending.exit.i:                            ; preds = %do.body
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %signal_pending.exit.i.flush_signals_thread.exit_crit_edge, label %signal_pending.exit.i.if.then.i_crit_edge

signal_pending.exit.i.if.then.i_crit_edge:        ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

signal_pending.exit.i.flush_signals_thread.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %flush_signals_thread.exit

if.then.i:                                        ; preds = %signal_pending.exit.i.if.then.i_crit_edge, %do.body.if.then.i_crit_edge
  tail call void @flush_signals(ptr noundef %3) #15
  br label %flush_signals_thread.exit

flush_signals_thread.exit:                        ; preds = %if.then.i, %signal_pending.exit.i.flush_signals_thread.exit_crit_edge
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %flush_signals_thread.exit.do.body_crit_edge, label %do.end

flush_signals_thread.exit.do.body_crit_edge:      ; preds = %flush_signals_thread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %flush_signals_thread.exit
  call void @__sanitizer_cov_trace_pc() #17
  %terminate_xmitthread_comp = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 9, i32 2
  tail call void @complete(ptr noundef %terminate_xmitthread_comp) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_xmit_thread_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_sctx_wait(ptr noundef %sctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_ms = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %if.else.i

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #15
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %entry.cond.end_crit_edge
  %cond = phi i32 [ 2147483647, %entry.cond.end_crit_edge ], [ %call2.i, %if.else.i ]
  %done = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 3
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %cond) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cond.end.if.end.thread_crit_edge, label %if.end

cond.end.if.end.thread_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %status4 = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 2
  %2 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %phi.cmp = icmp eq i32 %3, 0
  %spec.select = zext i1 %phi.cmp to i32
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %cond.end.if.end.thread_crit_edge
  %4 = phi i32 [ 0, %cond.end.if.end.thread_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sctx_done(ptr nocapture noundef %sctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rtw_sctx_done_err.exit_crit_edge, label %if.then.i

entry.rtw_sctx_done_err.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_sctx_done_err.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %status1.i = getelementptr inbounds %struct.submit_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status1.i, align 4
  %3 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sctx, align 4
  %done.i = getelementptr inbounds %struct.submit_ctx, ptr %4, i32 0, i32 3
  tail call void @complete(ptr noundef %done.i) #15
  %5 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sctx, align 4
  br label %rtw_sctx_done_err.exit

rtw_sctx_done_err.exit:                           ; preds = %if.then.i, %entry.rtw_sctx_done_err.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ack_tx_wait(ptr noundef %pxmitpriv, i32 noundef %timeout_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_tx_ops = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %ack_tx_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %ack_tx_ops, align 4
  %timeout_ms1 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44, i32 1
  %2 = ptrtoint ptr %timeout_ms1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout_ms, ptr %timeout_ms1, align 4
  %status = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44, i32 2
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_ms)
  %tobool.not.i = icmp eq i32 %timeout_ms, 0
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %if.else.i.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #15
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.else.i.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ 2147483647, %entry.cond.end.i_crit_edge ], [ %call2.i.i, %if.else.i.i ]
  %done.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44, i32 3
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef %cond.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %cond.end.i.rtw_sctx_wait.exit_crit_edge, label %if.end.i

cond.end.i.rtw_sctx_wait.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtw_sctx_wait.exit

if.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp.i = icmp eq i32 %5, 0
  %spec.select.i = zext i1 %phi.cmp.i to i32
  br label %rtw_sctx_wait.exit

rtw_sctx_wait.exit:                               ; preds = %if.end.i, %cond.end.i.rtw_sctx_wait.exit_crit_edge
  %6 = phi i32 [ 0, %cond.end.i.rtw_sctx_wait.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ack_tx_done(ptr noundef %pxmitpriv, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_tx_ops = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44
  %ack_tx = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 42
  %0 = ptrtoint ptr %ack_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ack_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tobool.not.i = icmp eq ptr %ack_tx_ops, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %status1.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44, i32 2
  %2 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %status1.i, align 4
  %done.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 44, i32 3
  tail call void @complete(ptr noundef %done.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_secmicsetkey(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_secmicappend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_secgetmic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wep_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_tkip_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_aes_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_scan_deny(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46, !48, !50, !52, !53, !55, !56, !58, !60, !62, !63, !64}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @_rtw_init_sta_xmit_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 25, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_rtw_init_xmit_priv.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 42, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_rtw_init_xmit_priv.__key.2, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 43, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_rtw_init_xmit_priv.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 54, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @_rtw_init_xmit_priv.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 56, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @_rtw_init_xmit_priv.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 58, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @_rtw_init_xmit_priv.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 60, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @_rtw_init_xmit_priv.__key.12, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 62, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @_rtw_init_xmit_priv.__key.14, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 65, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @_rtw_init_xmit_priv.__key.16, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 107, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @_rtw_init_xmit_priv.__key.18, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 109, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @_rtw_init_xmit_priv.__key.20, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 158, i32 2}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @_rtw_init_xmit_priv.__key.22, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 192, i32 2}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @_rtw_init_xmit_priv.__key.24, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 265, i32 2}
!41 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rtw_xmit.start, !43, !"start", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 1940, i32 23}
!44 = !{ptr @rtw_xmit.drop_cnt, !45, !"drop_cnt", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 1941, i32 13}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 2010, i32 3}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 2496, i32 15}
!50 = !{ptr @_init_txservq.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 17, i32 2}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @init_completion.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/completion.h", i32 87, i32 2}
!55 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"P802_1H_OUI", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 10, i32 11}
!58 = distinct !{null, !59, !"RFC1042_OUI", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 11, i32 11}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8723bs/core/rtw_xmit.c", i32 685, i32 3}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @update_attrib.__UNIQUE_ID_ddebug345, !61, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i64 2148856791, i64 2148856796, i64 2148856809, i64 2148856853, i64 2148856887, i64 2148856908}
!77 = !{!"branch_weights", i32 2000, i32 1}
