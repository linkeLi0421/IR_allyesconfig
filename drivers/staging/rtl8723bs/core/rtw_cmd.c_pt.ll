; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_cmd.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cmd_hdl = type { i32, ptr }
%struct._cmd_callback = type { i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drvextra_cmd_parm = type { i32, i32, i32, ptr }
%struct.cmd_obj = type { ptr, i16, i8, ptr, i32, ptr, i32, ptr, %struct.list_head }
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
%struct.sitesurvey_parm = type { i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.setdatarate_parm = type { i8, [13 x i8] }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.set_stakey_parm = type { [6 x i8], i8, i8, [16 x i8] }
%struct.addBaReq_parm = type { i32, [6 x i8] }
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.btinfo = type { i8, i8, i16, i8, i8, i8, i8 }

@rtw_init_cmd_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&pcmdpriv->cmd_queue.lock\00", [38 x i8] zeroinitializer }, align 32
@rtw_init_cmd_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&pcmdpriv->sctx_mutex\00", [42 x i8] zeroinitializer }, align 32
@rtw_cmd_thread.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_cmd_thread\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/rtl8723bs/core/rtw_cmd.c\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s(%s) wait_for_completion_interruptible(&pcmdpriv->cmd_queue_comp) return != 0, break\0A\00", [40 x i8] zeroinitializer }, align 32
@rtw_cmd_thread.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw_cmd_thread.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(%s) stop_req:%u, break\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw_cmd_thread.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wlancmds = internal constant { [64 x %struct.cmd_hdl], [128 x i8] } { [64 x %struct.cmd_hdl] [%struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl { i32 872, ptr @join_cmd_hdl }, %struct.cmd_hdl { i32 4, ptr @disconnect_hdl }, %struct.cmd_hdl { i32 872, ptr @createbss_hdl }, %struct.cmd_hdl { i32 4, ptr @setopmode_hdl }, %struct.cmd_hdl { i32 740, ptr @sitesurvey_cmd_hdl }, %struct.cmd_hdl { i32 4, ptr @setauth_hdl }, %struct.cmd_hdl { i32 20, ptr @setkey_hdl }, %struct.cmd_hdl { i32 24, ptr @set_stakey_hdl }, %struct.cmd_hdl { i32 6, ptr null }, %struct.cmd_hdl { i32 6, ptr null }, %struct.cmd_hdl { i32 8, ptr null }, %struct.cmd_hdl { i32 13, ptr null }, %struct.cmd_hdl { i32 4, ptr null }, %struct.cmd_hdl { i32 14, ptr null }, %struct.cmd_hdl { i32 4, ptr null }, %struct.cmd_hdl { i32 56, ptr null }, %struct.cmd_hdl { i32 4, ptr null }, %struct.cmd_hdl { i32 2, ptr null }, %struct.cmd_hdl { i32 4, ptr null }, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl { i32 12, ptr @add_ba_hdl }, %struct.cmd_hdl { i32 3, ptr @set_ch_hdl }, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl { i32 872, ptr @tx_beacon_hdl }, %struct.cmd_hdl { i32 0, ptr @mlme_evt_hdl }, %struct.cmd_hdl { i32 0, ptr @rtw_drvextra_cmd_hdl }, %struct.cmd_hdl { i32 0, ptr @h2c_msg_hdl }, %struct.cmd_hdl { i32 1, ptr @set_chplan_hdl }, %struct.cmd_hdl { i32 1, ptr @set_csa_hdl }, %struct.cmd_hdl { i32 7, ptr @tdls_hdl }, %struct.cmd_hdl { i32 0, ptr @chk_bmc_sleepq_hdl }, %struct.cmd_hdl { i32 8, ptr @run_in_thread_hdl }], [128 x i8] zeroinitializer }, align 32
@rtw_cmd_thread.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.10, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(%s) pcmd->sctx\0A\00", [45 x i8] zeroinitializer }, align 32
@rtw_cmd_callback = internal constant { [64 x %struct._cmd_callback], [128 x i8] } { [64 x %struct._cmd_callback] [%struct._cmd_callback zeroinitializer, %struct._cmd_callback { i32 1, ptr null }, %struct._cmd_callback { i32 2, ptr @rtw_getbbrfreg_cmdrsp_callback }, %struct._cmd_callback { i32 3, ptr null }, %struct._cmd_callback { i32 4, ptr @rtw_getbbrfreg_cmdrsp_callback }, %struct._cmd_callback { i32 5, ptr null }, %struct._cmd_callback { i32 6, ptr null }, %struct._cmd_callback { i32 7, ptr null }, %struct._cmd_callback { i32 8, ptr null }, %struct._cmd_callback { i32 9, ptr null }, %struct._cmd_callback { i32 10, ptr null }, %struct._cmd_callback { i32 11, ptr null }, %struct._cmd_callback { i32 12, ptr null }, %struct._cmd_callback { i32 13, ptr null }, %struct._cmd_callback { i32 14, ptr @rtw_joinbss_cmd_callback }, %struct._cmd_callback { i32 15, ptr @rtw_disassoc_cmd_callback }, %struct._cmd_callback { i32 16, ptr @rtw_createbss_cmd_callback }, %struct._cmd_callback { i32 17, ptr null }, %struct._cmd_callback { i32 18, ptr @rtw_survey_cmd_callback }, %struct._cmd_callback { i32 19, ptr null }, %struct._cmd_callback { i32 20, ptr null }, %struct._cmd_callback { i32 21, ptr @rtw_setstaKey_cmdrsp_callback }, %struct._cmd_callback { i32 22, ptr @rtw_setassocsta_cmdrsp_callback }, %struct._cmd_callback { i32 23, ptr null }, %struct._cmd_callback { i32 24, ptr null }, %struct._cmd_callback { i32 25, ptr null }, %struct._cmd_callback { i32 26, ptr null }, %struct._cmd_callback { i32 27, ptr null }, %struct._cmd_callback { i32 28, ptr null }, %struct._cmd_callback { i32 29, ptr null }, %struct._cmd_callback { i32 30, ptr null }, %struct._cmd_callback { i32 31, ptr null }, %struct._cmd_callback { i32 32, ptr null }, %struct._cmd_callback { i32 33, ptr null }, %struct._cmd_callback { i32 34, ptr null }, %struct._cmd_callback { i32 35, ptr null }, %struct._cmd_callback { i32 36, ptr null }, %struct._cmd_callback { i32 37, ptr null }, %struct._cmd_callback { i32 38, ptr null }, %struct._cmd_callback { i32 39, ptr null }, %struct._cmd_callback { i32 40, ptr null }, %struct._cmd_callback { i32 41, ptr null }, %struct._cmd_callback { i32 42, ptr null }, %struct._cmd_callback { i32 43, ptr null }, %struct._cmd_callback { i32 44, ptr null }, %struct._cmd_callback { i32 45, ptr null }, %struct._cmd_callback { i32 46, ptr null }, %struct._cmd_callback { i32 47, ptr null }, %struct._cmd_callback { i32 48, ptr null }, %struct._cmd_callback { i32 49, ptr null }, %struct._cmd_callback { i32 50, ptr null }, %struct._cmd_callback { i32 51, ptr null }, %struct._cmd_callback { i32 52, ptr null }, %struct._cmd_callback { i32 53, ptr null }, %struct._cmd_callback { i32 54, ptr null }, %struct._cmd_callback { i32 55, ptr null }, %struct._cmd_callback { i32 56, ptr null }, %struct._cmd_callback { i32 57, ptr null }, %struct._cmd_callback { i32 58, ptr null }, %struct._cmd_callback { i32 59, ptr null }, %struct._cmd_callback { i32 60, ptr null }, %struct._cmd_callback { i32 61, ptr null }, %struct._cmd_callback { i32 62, ptr null }, %struct._cmd_callback { i32 63, ptr null }], [128 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_clearstakey_cmd.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.11, ptr @.str.6, ptr @.str.12, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_clearstakey_cmd\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clear key for addr:%pM, camid:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TRAFFIC_IDLE\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TRAFFIC_BUSY\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NON_LINKED\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LPS_CTRL_SCAN\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LPS_CTRL_JOINBSS\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LPS_CTRL_DISCONNECT\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LPS_CTRL_SPECIAL_PACKET\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LPS_CTRL_LEAVE\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LPS_CTRL_TRAFFIC_BUSY\00", [42 x i8] zeroinitializer }, align 32
@g_wait_hiq_empty = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@_init_workitem.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(work_completion)(pwork)\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.30 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.31 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 4, i64 5, i64 9, i64 11, i64 13, i64 14, i64 15, i64 16, i64 18, i64 19]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 35, i64 39]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 170, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 198, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 400, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 407, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 415, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"wlancmds\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 87, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 473, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"rtw_cmd_callback\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 12, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 968, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1293, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1296, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1308, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1374, i32 24 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1378, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1390, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1396, i32 23 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1399, i32 23 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1402, i32 23 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"g_wait_hiq_empty\00", align 1
@___asan_gen_.112 = private constant [44 x i8] c"../drivers/staging/rtl8723bs/core/rtw_cmd.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1584, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 87, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [59 x i8] c"../drivers/staging/rtl8723bs/include/osdep_service_linux.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 65, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @rtw_init_cmd_priv.__key, ptr @.str, ptr @rtw_init_cmd_priv.__key.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @wlancmds, ptr @.str.10, ptr @rtw_cmd_callback, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @g_wait_hiq_empty, ptr @init_completion.__key, ptr @.str.22, ptr @_init_workitem.__key, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_cmd_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_cmd_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlancmds to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_cmd_callback to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_wait_hiq_empty to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_workitem.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_cmd_priv(ptr noundef %pcmdpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcmdpriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pcmdpriv, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %pcmdpriv, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #5
  %terminate_cmdthread_comp = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 1
  %1 = ptrtoint ptr %terminate_cmdthread_comp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %terminate_cmdthread_comp, align 4
  %wait.i39 = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i39, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #5
  %cmd_queue = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2
  %2 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %cmd_queue, ptr %cmd_queue, align 4
  %prev.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd_queue, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @rtw_init_cmd_priv.__key, i16 noundef signext 3) #5
  %cmd_seq = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %cmd_seq, align 4
  %call2 = tail call ptr @_rtw_zmalloc(i32 noundef 1536) #5
  %cmd_allocated_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 5
  %5 = ptrtoint ptr %cmd_allocated_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %cmd_allocated_buf, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call2, i32 512
  %6 = ptrtoint ptr %call2 to i32
  %and = and i32 %6, 511
  %idx.neg = sub nsw i32 0, %and
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %cmd_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 4
  %7 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr6, ptr %cmd_buf, align 4
  %call7 = tail call ptr @_rtw_zmalloc(i32 noundef 516) #5
  %rsp_allocated_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 7
  %8 = ptrtoint ptr %rsp_allocated_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %rsp_allocated_buf, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end.exit_crit_edge, label %if.end11

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr13 = getelementptr i8, ptr %call7, i32 4
  %9 = ptrtoint ptr %call7 to i32
  %and15 = and i32 %9, 3
  %idx.neg16 = sub nsw i32 0, %and15
  %add.ptr17 = getelementptr i8, ptr %add.ptr13, i32 %idx.neg16
  %rsp_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 6
  %10 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr17, ptr %rsp_buf, align 4
  %cmd_issued_cnt = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 8
  %11 = ptrtoint ptr %cmd_issued_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cmd_issued_cnt, align 4
  %cmd_done_cnt = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 9
  %12 = ptrtoint ptr %cmd_done_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cmd_done_cnt, align 4
  %rsp_cnt = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 10
  %13 = ptrtoint ptr %rsp_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rsp_cnt, align 4
  %sctx_mutex = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %sctx_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtw_init_cmd_priv.__key.1) #5
  br label %exit

exit:                                             ; preds = %if.end11, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %res.0 = phi i32 [ 0, %if.end11 ], [ -12, %entry.exit_crit_edge ], [ -12, %if.end.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_evt_priv(ptr noundef %pevtpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %event_seq = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq, i32 noundef 4) #5
  %0 = ptrtoint ptr %event_seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %event_seq, align 4
  %evt_done_cnt = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 6
  %1 = ptrtoint ptr %evt_done_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %evt_done_cnt, align 4
  tail call void @__init_work(ptr noundef %pevtpriv, i32 noundef 0) #5
  %2 = ptrtoint ptr %pevtpriv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %pevtpriv, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %pevtpriv, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @_init_workitem.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry1.i = getelementptr inbounds %struct.work_struct, ptr %pevtpriv, i32 0, i32 1
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry1.i, ptr %entry1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %pevtpriv, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry1.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %pevtpriv, i32 0, i32 2
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @c2h_wk_callback, ptr %func.i, align 4
  %c2h_wk_alive = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 1
  %6 = ptrtoint ptr %c2h_wk_alive to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %c2h_wk_alive, align 4
  %call = tail call ptr @rtw_cbuf_alloc(i32 noundef 11) #5
  %c2h_queue = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 2
  %7 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %c2h_queue, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c2h_wk_callback(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -5636
  %call = tail call ptr @rtw_hal_c2h_id_filter_ccx(ptr noundef %add.ptr3) #5
  %c2h_wk_alive = getelementptr inbounds %struct.evt_priv, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %c2h_wk_alive to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %c2h_wk_alive, align 4
  %c2h_queue = getelementptr inbounds %struct.evt_priv, ptr %work, i32 0, i32 2
  %1 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c2h_queue, align 4
  %call448 = tail call zeroext i1 @rtw_cbuf_empty(ptr noundef %2) #5
  br i1 %call448, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cmdpriv.i = getelementptr i8, ptr %work, i32 -300
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c2h_queue, align 4
  %call6 = tail call ptr @rtw_cbuf_pop(ptr noundef %4) #5
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @c2h_evt_clear(ptr noundef %add.ptr3) #5
  br label %if.end13

if.else:                                          ; preds = %while.body
  %call7 = tail call ptr @_rtw_malloc(i32 noundef 16) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else.if.end13_crit_edge, label %if.then9

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %if.else
  %call10 = tail call i32 @c2h_evt_read_88xx(ptr noundef %add.ptr3, ptr noundef nonnull %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 1
  br i1 %cmp.not, label %if.then9.if.end13_crit_edge, label %if.then11

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end4.i, %if.then3.i, %if.else24.while.cond.backedge_crit_edge, %if.then22, %if.then18, %if.end13.while.cond.backedge_crit_edge, %if.then11
  %5 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c2h_queue, align 4
  %call4 = tail call zeroext i1 @rtw_cbuf_empty(ptr noundef %6) #5
  br i1 %call4, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %if.else.if.end13_crit_edge, %if.then
  %c2h_evt.0 = phi ptr [ %call6, %if.then ], [ %call7, %if.then9.if.end13_crit_edge ], [ null, %if.else.if.end13_crit_edge ]
  %cmp14 = icmp eq ptr %c2h_evt.0, %work
  br i1 %cmp14, label %if.end13.while.cond.backedge_crit_edge, label %if.end16

if.end13.while.cond.backedge_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end16:                                         ; preds = %if.end13
  %call17 = tail call zeroext i1 @rtw_hal_c2h_valid(ptr noundef %add.ptr3, ptr noundef %c2h_evt.0) #5
  br i1 %call17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %c2h_evt.0) #5
  br label %while.cond.backedge

if.end19:                                         ; preds = %if.end16
  %call20 = tail call i32 %call(ptr noundef %c2h_evt.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 @rtw_hal_c2h_handler(ptr noundef %add.ptr3, ptr noundef %c2h_evt.0) #5
  tail call void @kfree(ptr noundef %c2h_evt.0) #5
  br label %while.cond.backedge

if.else24:                                        ; preds = %if.end19
  %call.i = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else24.while.cond.backedge_crit_edge, label %if.end.i

if.else24.while.cond.backedge_crit_edge:          ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end.i:                                         ; preds = %if.else24
  %call1.i = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %while.cond.backedge

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %call1.i, align 4
  %type.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1.i, i32 0, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type.i, align 4
  %tobool5.not.i = icmp eq ptr %c2h_evt.0, null
  %cond.i = select i1 %tobool5.not.i, i32 0, i32 16
  %size.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1.i, i32 0, i32 2
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i, ptr %size.i, align 4
  %pbuf.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1.i, i32 0, i32 3
  %10 = ptrtoint ptr %pbuf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %c2h_evt.0, ptr %pbuf.i, align 4
  %list.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.i, ptr %prev.i.i, align 4
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 57, ptr %cmdcode.i, align 4
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1.i, ptr %parmbuf.i, align 4
  %cmdsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %cmdsz.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %cmdsz.i, align 4
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rsp.i, align 4
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rspsz.i, align 4
  %call6.i = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv.i, ptr noundef nonnull %call.i) #5
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %18 = ptrtoint ptr %c2h_wk_alive to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %c2h_wk_alive, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_cbuf_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_evt_priv(ptr noundef %pevtpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %pevtpriv) #5
  %c2h_wk_alive = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 1
  %0 = ptrtoint ptr %c2h_wk_alive to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c2h_wk_alive, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not15 = icmp eq i8 %1, 0
  br i1 %tobool.not15, label %entry.while.cond1.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond1.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.body.while.cond1.preheader_crit_edge, %entry.while.cond1.preheader_crit_edge
  %c2h_queue = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 2
  %2 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c2h_queue, align 4
  %call16 = tail call zeroext i1 @rtw_cbuf_empty(ptr noundef %3) #5
  br i1 %call16, label %while.cond1.preheader.while.end6_crit_edge, label %while.cond1.preheader.while.body2_crit_edge

while.cond1.preheader.while.body2_crit_edge:      ; preds = %while.cond1.preheader
  br label %while.body2

while.cond1.preheader.while.end6_crit_edge:       ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end6

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 10) #5
  %4 = ptrtoint ptr %c2h_wk_alive to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %c2h_wk_alive, align 4, !range !69
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %while.body.while.cond1.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.cond1.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond1.preheader

while.body2:                                      ; preds = %if.end.while.body2_crit_edge, %while.cond1.preheader.while.body2_crit_edge
  %6 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2h_queue, align 4
  %call4 = tail call ptr @rtw_cbuf_pop(ptr noundef %7) #5
  %tobool5.not = icmp eq ptr %call4, null
  %cmp.not = icmp eq ptr %call4, %pevtpriv
  %or.cond = or i1 %tobool5.not, %cmp.not
  br i1 %or.cond, label %while.body2.if.end_crit_edge, label %if.then

while.body2.if.end_crit_edge:                     ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body2.if.end_crit_edge
  %8 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c2h_queue, align 4
  %call = tail call zeroext i1 @rtw_cbuf_empty(ptr noundef %9) #5
  br i1 %call, label %if.end.while.end6_crit_edge, label %if.end.while.body2_crit_edge

if.end.while.body2_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body2

if.end.while.end6_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end6

while.end6:                                       ; preds = %if.end.while.end6_crit_edge, %while.cond1.preheader.while.end6_crit_edge
  %10 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c2h_queue, align 4
  tail call void @kfree(ptr noundef %11) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_cbuf_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_cbuf_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_cmd_priv(ptr noundef %pcmdpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pcmdpriv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cmd_allocated_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_allocated_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_allocated_buf, align 4
  tail call void @kfree(ptr noundef %1) #5
  %rsp_allocated_buf = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 7
  %2 = ptrtoint ptr %rsp_allocated_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp_allocated_buf, align 4
  tail call void @kfree(ptr noundef %3) #5
  %sctx_mutex = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 14
  tail call void @mutex_destroy(ptr noundef %sctx_mutex) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_enqueue_cmd(ptr noundef %queue, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %obj, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %do.body1

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.__queue, ptr %queue, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %list = getelementptr inbounds %struct.cmd_obj, ptr %obj, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %1, ptr noundef %queue) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_add_tail.exit_crit_edge

do.body1.list_add_tail.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cmd_obj, ptr %obj, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body1.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  br label %exit

exit:                                             ; preds = %list_add_tail.exit, %entry.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_rtw_dequeue_cmd(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %queue, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -28
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
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

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %obj.0 = phi ptr [ %add.ptr, %list_del_init.exit ], [ null, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret ptr %obj.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_evt_priv(ptr noundef %pevtpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_rtw_free_evt_priv(ptr noundef %pevtpriv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_cmd_priv(ptr noundef %pcmdpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pcmdpriv, null
  br i1 %tobool.not.i, label %entry._rtw_free_cmd_priv.exit_crit_edge, label %if.then.i

entry._rtw_free_cmd_priv.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtw_free_cmd_priv.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cmd_allocated_buf.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_allocated_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_allocated_buf.i, align 4
  tail call void @kfree(ptr noundef %1) #5
  %rsp_allocated_buf.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 7
  %2 = ptrtoint ptr %rsp_allocated_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp_allocated_buf.i, align 4
  tail call void @kfree(ptr noundef %3) #5
  %sctx_mutex.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 14
  tail call void @mutex_destroy(ptr noundef %sctx_mutex.i) #5
  br label %_rtw_free_cmd_priv.exit

_rtw_free_cmd_priv.exit:                          ; preds = %if.then.i, %entry._rtw_free_cmd_priv.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_cmd_filter(ptr noundef %pcmdpriv, ptr nocapture noundef readonly %cmd_obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %padapter = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 13
  %0 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapter, align 4
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 1
  %4 = ptrtoint ptr %cmdcode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmdcode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %5)
  %cmp = icmp eq i16 %5, 59
  br i1 %cmp, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %cmdthd_running = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #5
  %6 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp ne i32 %7, 0
  %spec.select = zext i1 %tobool3.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_enqueue_cmd(ptr noundef %pcmdpriv, ptr noundef %cmd_obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmd_obj, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %padapter1 = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 13
  %0 = ptrtoint ptr %padapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapter1, align 4
  %2 = ptrtoint ptr %cmd_obj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cmd_obj, align 4
  %3 = load ptr, ptr %padapter1, align 4
  %hw_init_completed.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_init_completed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.rtw_cmd_filter.exit_crit_edge

if.end.rtw_cmd_filter.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_cmd_filter.exit

land.lhs.true.i:                                  ; preds = %if.end
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmdcode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %7)
  %cmp.i = icmp eq i16 %7, 59
  br i1 %cmp.i, label %land.lhs.true.i.rtw_cmd_filter.exit_crit_edge, label %land.lhs.true.i.if.then3_crit_edge

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

land.lhs.true.i.rtw_cmd_filter.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_cmd_filter.exit

rtw_cmd_filter.exit:                              ; preds = %land.lhs.true.i.rtw_cmd_filter.exit_crit_edge, %if.end.rtw_cmd_filter.exit_crit_edge
  %cmdthd_running.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running.i, i32 noundef 4) #5
  %8 = ptrtoint ptr %cmdthd_running.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cmdthd_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i.not = icmp eq i32 %9, 0
  br i1 %tobool3.not.i.not, label %rtw_cmd_filter.exit.if.then3_crit_edge, label %do.body1.i

rtw_cmd_filter.exit.if.then3_crit_edge:           ; preds = %rtw_cmd_filter.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %rtw_cmd_filter.exit.if.then3_crit_edge, %land.lhs.true.i.if.then3_crit_edge
  %cmdcode.i18 = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 1
  %10 = ptrtoint ptr %cmdcode.i18 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cmdcode.i18, align 4
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.then.i [
    i16 14, label %if.then3.if.end.i_crit_edge
    i16 16, label %if.then3.if.end.i_crit_edge24
  ]

if.then3.if.end.i_crit_edge24:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 3
  %13 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %14) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then3.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge24
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 5
  %15 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i19 = icmp eq ptr %16, null
  br i1 %tobool.not.i19, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 6
  %17 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.not.i = icmp eq i32 %18, 0
  br i1 %cmp7.not.i, label %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.rtw_free_cmd_obj.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %16) #5
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %cmd_obj) #5
  br label %exit

do.body1.i:                                       ; preds = %rtw_cmd_filter.exit
  %cmd_queue = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %list.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i21 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %20, ptr noundef %cmd_queue) #5
  br i1 %call.i.i.i21, label %if.end.i.i.i, label %do.body1.i._rtw_enqueue_cmd.exit_crit_edge

do.body1.i._rtw_enqueue_cmd.exit_crit_edge:       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtw_enqueue_cmd.exit

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list.i, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cmd_queue, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list.i, ptr %20, align 4
  br label %_rtw_enqueue_cmd.exit

_rtw_enqueue_cmd.exit:                            ; preds = %if.end.i.i.i, %do.body1.i._rtw_enqueue_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #5
  tail call void @complete(ptr noundef %pcmdpriv) #5
  br label %exit

exit:                                             ; preds = %_rtw_enqueue_cmd.exit, %rtw_free_cmd_obj.exit, %entry.exit_crit_edge
  %res.0 = phi i32 [ 0, %rtw_free_cmd_obj.exit ], [ 1, %_rtw_enqueue_cmd.exit ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_cmd_obj(ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %0 = ptrtoint ptr %cmdcode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmdcode, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %1, label %if.then [
    i16 14, label %entry.if.end_crit_edge
    i16 16, label %entry.if.end_crit_edge19
  ]

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %3 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge19
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rsp, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 6
  %7 = ptrtoint ptr %rspsz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rspsz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %6) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_dequeue_cmd(ptr noundef %pcmdpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_queue = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %0 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cmd_queue, align 4
  %cmp.i.not.i = icmp eq ptr %1, %cmd_queue
  br i1 %cmp.i.not.i, label %entry._rtw_dequeue_cmd.exit_crit_edge, label %if.else.i

entry._rtw_dequeue_cmd.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtw_dequeue_cmd.exit

if.else.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -28
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_del_init.exit.i_crit_edge

if.else.i.list_del_init.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
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
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.else.i.list_del_init.exit.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  br label %_rtw_dequeue_cmd.exit

_rtw_dequeue_cmd.exit:                            ; preds = %list_del_init.exit.i, %entry._rtw_dequeue_cmd.exit_crit_edge
  %obj.0.i = phi ptr [ %add.ptr.i, %list_del_init.exit.i ], [ null, %entry._rtw_dequeue_cmd.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #5
  ret ptr %obj.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_stop_cmd_thread(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdThread = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 31
  %0 = ptrtoint ptr %cmdThread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdThread, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %cmdthd_running = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #5
  %2 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %stop_req = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6, i32 12
  %4 = ptrtoint ptr %stop_req to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stop_req, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %stop_req to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stop_req, align 8
  tail call void @complete(ptr noundef %cmdpriv) #5
  %terminate_cmdthread_comp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6, i32 1
  tail call void @wait_for_completion(ptr noundef %terminate_cmdthread_comp) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_cmd_thread(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6
  tail call void @kernel_sigaction(i32 noundef 15, ptr noundef nonnull inttoptr (i32 2 to ptr)) #5
  %cmd_buf = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buf, align 4
  %stop_req = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 12
  %2 = ptrtoint ptr %stop_req to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stop_req, align 4
  %cmdthd_running = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmdthd_running, i32 noundef 4) #5
  %3 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %cmdthd_running, align 4
  %terminate_cmdthread_comp = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 1
  tail call void @complete(ptr noundef %terminate_cmdthread_comp) #5
  %call365 = tail call i32 @wait_for_completion_interruptible(ptr noundef %cmdpriv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365)
  %tobool.not366 = icmp eq i32 %call365, 0
  br i1 %tobool.not366, label %if.end10.lr.ph, label %entry.do.body1_crit_edge

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1

if.end10.lr.ph:                                   ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 21
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 22
  %cmd_queue = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 2
  %lock.i.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 2, i32 1
  %padapter.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 13
  %cmd_issued_cnt = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 8
  %cmd_seq = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 3
  %pnetdev149 = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 41
  br label %if.end10

do.body1:                                         ; preds = %while.cond.backedge.do.body1_crit_edge, %entry.do.body1_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_cmd_thread, %if.then6)) #5
          to label %while.end [label %if.then6], !srcloc !70

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 41
  %4 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_cmd_thread.__UNIQUE_ID_ddebug345, ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %5) #5
  br label %while.end

if.end10:                                         ; preds = %while.cond.backedge.if.end10_crit_edge, %if.end10.lr.ph
  %6 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end10.do.body15_crit_edge

if.end10.do.body15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

lor.lhs.false:                                    ; preds = %if.end10
  %8 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end36, label %lor.lhs.false.do.body15_crit_edge

lor.lhs.false.do.body15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

do.body15:                                        ; preds = %lor.lhs.false.do.body15_crit_edge, %if.end10.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_cmd_thread, %if.then27)) #5
          to label %while.end [label %if.then27], !srcloc !70

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %pnetdev149 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pnetdev149, align 8
  %12 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bDriverStopped, align 4
  %14 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bSurpriseRemoved, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_cmd_thread.__UNIQUE_ID_ddebug346, ptr noundef %11, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %13, i32 noundef %15, i32 noundef 410) #5
  br label %while.end

if.end36:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %stop_req to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stop_req, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool38.not = icmp eq i8 %17, 0
  br i1 %tobool38.not, label %if.end64, label %do.body41

do.body41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_cmd_thread, %if.then53)) #5
          to label %while.end [label %if.then53], !srcloc !70

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %pnetdev149 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pnetdev149, align 8
  %20 = ptrtoint ptr %stop_req to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stop_req, align 4
  %conv = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_cmd_thread.__UNIQUE_ID_ddebug347, ptr noundef %19, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef %19, i32 noundef %conv) #5
  br label %while.end

if.end64:                                         ; preds = %if.end36
  %22 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cmd_queue, align 4
  %cmp.i.not = icmp eq ptr %23, %cmd_queue
  br i1 %cmp.i.not, label %if.end64.while.cond.backedge_crit_edge, label %if.end68

if.end64.while.cond.backedge_crit_edge:           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end68:                                         ; preds = %if.end64
  %call69 = tail call i32 @rtw_register_cmd_alive(ptr noundef %context) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call69)
  %cmp.not = icmp eq i32 %call69, 1
  br i1 %cmp.not, label %_next.preheader, label %if.end68.while.cond.backedge_crit_edge

if.end68.while.cond.backedge_crit_edge:           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

_next.preheader:                                  ; preds = %if.end68
  %24 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool74.not359 = icmp eq i32 %25, 0
  br i1 %tobool74.not359, label %_next.preheader.lor.lhs.false75_crit_edge, label %_next.preheader.do.body80_crit_edge

_next.preheader.do.body80_crit_edge:              ; preds = %_next.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body80

_next.preheader.lor.lhs.false75_crit_edge:        ; preds = %_next.preheader
  br label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %flush_signals_thread.exit.lor.lhs.false75_crit_edge, %_next.preheader.lor.lhs.false75_crit_edge
  %26 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool77.not = icmp eq i32 %27, 0
  br i1 %tobool77.not, label %if.end101, label %lor.lhs.false75.do.body80_crit_edge

lor.lhs.false75.do.body80_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body80

do.body80:                                        ; preds = %flush_signals_thread.exit.do.body80_crit_edge, %lor.lhs.false75.do.body80_crit_edge, %_next.preheader.do.body80_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_cmd_thread, %if.then92)) #5
          to label %while.end [label %if.then92], !srcloc !70

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %pnetdev149 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pnetdev149, align 8
  %30 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bDriverStopped, align 4
  %32 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bSurpriseRemoved, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_cmd_thread.__UNIQUE_ID_ddebug348, ptr noundef %29, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %31, i32 noundef %33, i32 noundef 433) #5
  br label %while.end

if.end101:                                        ; preds = %lor.lhs.false75
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #5
  %34 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %cmd_queue, align 4
  %cmp.i.not.i.i = icmp eq ptr %35, %cmd_queue
  br i1 %cmp.i.not.i.i, label %rtw_dequeue_cmd.exit.thread, label %if.else.i.i

rtw_dequeue_cmd.exit.thread:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #5
  br label %if.then104

if.else.i.i:                                      ; preds = %if.end101
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 -28
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.i.rtw_dequeue_cmd.exit_crit_edge

if.else.i.i.rtw_dequeue_cmd.exit_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_dequeue_cmd.exit

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %rtw_dequeue_cmd.exit

rtw_dequeue_cmd.exit:                             ; preds = %if.end.i.i.i.i, %if.else.i.i.rtw_dequeue_cmd.exit_crit_edge
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %35, ptr %35, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %35, ptr %prev.i3.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #5
  %tobool103.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool103.not, label %rtw_dequeue_cmd.exit.if.then104_crit_edge, label %if.end105

rtw_dequeue_cmd.exit.if.then104_crit_edge:        ; preds = %rtw_dequeue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then104

if.then104:                                       ; preds = %rtw_dequeue_cmd.exit.if.then104_crit_edge, %rtw_dequeue_cmd.exit.thread
  tail call void @rtw_unregister_cmd_alive(ptr noundef %context) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then104, %if.end68.while.cond.backedge_crit_edge, %if.end64.while.cond.backedge_crit_edge
  %call = tail call i32 @wait_for_completion_interruptible(ptr noundef %cmdpriv) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.if.end10_crit_edge, label %while.cond.backedge.do.body1_crit_edge

while.cond.backedge.do.body1_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1

while.cond.backedge.if.end10_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end105:                                        ; preds = %rtw_dequeue_cmd.exit
  %44 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %padapter.i, align 4
  %hw_init_completed.i = getelementptr inbounds %struct.adapter, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hw_init_completed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end105.rtw_cmd_filter.exit_crit_edge

if.end105.rtw_cmd_filter.exit_crit_edge:          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_cmd_filter.exit

land.lhs.true.i:                                  ; preds = %if.end105
  %cmdcode.i = getelementptr i8, ptr %35, i32 -24
  %48 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cmdcode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %49)
  %cmp.i290 = icmp eq i16 %49, 59
  br i1 %cmp.i290, label %land.lhs.true.i.rtw_cmd_filter.exit_crit_edge, label %land.lhs.true.i.if.then109_crit_edge

land.lhs.true.i.if.then109_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then109

land.lhs.true.i.rtw_cmd_filter.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_cmd_filter.exit

rtw_cmd_filter.exit:                              ; preds = %land.lhs.true.i.rtw_cmd_filter.exit_crit_edge, %if.end105.rtw_cmd_filter.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #5
  %50 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool3.not.i.not = icmp eq i32 %51, 0
  br i1 %tobool3.not.i.not, label %rtw_cmd_filter.exit.if.then109_crit_edge, label %if.end110

rtw_cmd_filter.exit.if.then109_crit_edge:         ; preds = %rtw_cmd_filter.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then109

if.then109:                                       ; preds = %rtw_cmd_filter.exit.if.then109_crit_edge, %land.lhs.true.i.if.then109_crit_edge
  %res = getelementptr i8, ptr %35, i32 -22
  %52 = ptrtoint ptr %res to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %res, align 2
  br label %post_process

if.end110:                                        ; preds = %rtw_cmd_filter.exit
  %53 = ptrtoint ptr %cmd_issued_cnt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd_issued_cnt, align 4
  %inc = add i32 %54, 1
  store i32 %inc, ptr %cmd_issued_cnt, align 4
  %cmdsz = getelementptr i8, ptr %35, i32 -16
  %55 = ptrtoint ptr %cmdsz to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmdsz, align 4
  %sub = add i32 %56, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  store i32 %add, ptr %cmdsz, align 4
  %parmbuf = getelementptr i8, ptr %35, i32 -20
  %57 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parmbuf, align 4
  %59 = call ptr @memcpy(ptr %1, ptr %58, i32 %add)
  %cmdcode = getelementptr i8, ptr %35, i32 -24
  %60 = ptrtoint ptr %cmdcode to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %cmdcode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %61)
  %cmp114 = icmp ult i16 %61, 64
  br i1 %cmp114, label %if.then116, label %if.else

if.then116:                                       ; preds = %if.end110
  %conv113 = zext i16 %61 to i32
  %h2cfuns = getelementptr [64 x %struct.cmd_hdl], ptr @wlancmds, i32 0, i32 %conv113, i32 1
  %62 = ptrtoint ptr %h2cfuns to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %h2cfuns, align 4
  %tobool118.not = icmp eq ptr %63, null
  br i1 %tobool118.not, label %if.then116.if.end123_crit_edge, label %if.then119

if.then116.if.end123_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

if.then119:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i.i, align 4
  %call121 = tail call zeroext i8 %63(ptr noundef %65, ptr noundef %1) #5
  %res122 = getelementptr i8, ptr %35, i32 -22
  %66 = ptrtoint ptr %res122 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %call121, ptr %res122, align 2
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %if.then116.if.end123_crit_edge
  %67 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cmd_seq, align 4
  %inc124 = add i8 %68, 1
  store i8 %inc124, ptr %cmd_seq, align 4
  br label %post_process

if.else:                                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %res125 = getelementptr i8, ptr %35, i32 -22
  %69 = ptrtoint ptr %res125 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 4, ptr %res125, align 2
  br label %post_process

post_process:                                     ; preds = %if.else, %if.end123, %if.then109
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i.i, align 4
  %sctx_mutex = getelementptr inbounds %struct.adapter, ptr %71, i32 0, i32 6, i32 14
  %call129 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sctx_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp eq i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %post_process.if.end172_crit_edge

post_process.if.end172_crit_edge:                 ; preds = %post_process
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end172

if.then132:                                       ; preds = %post_process
  %sctx = getelementptr i8, ptr %35, i32 -4
  %72 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sctx, align 4
  %tobool133.not = icmp eq ptr %73, null
  br i1 %tobool133.not, label %if.then132.if.end168_crit_edge, label %do.body136

if.then132.if.end168_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

do.body136:                                       ; preds = %if.then132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_cmd_thread, %if.then148)) #5
          to label %do.end158 [label %if.then148], !srcloc !70

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %pnetdev149 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pnetdev149, align 8
  %76 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i.i, align 4
  %pnetdev151 = getelementptr inbounds %struct.adapter, ptr %77, i32 0, i32 41
  %78 = ptrtoint ptr %pnetdev151 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pnetdev151, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_cmd_thread.__UNIQUE_ID_ddebug349, ptr noundef %75, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, ptr noundef %79) #5
  br label %do.end158

do.end158:                                        ; preds = %if.then148, %do.body136
  %res159 = getelementptr i8, ptr %35, i32 -22
  %80 = ptrtoint ptr %res159 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %res159, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp161 = icmp eq i8 %81, 0
  br i1 %cmp161, label %if.then163, label %if.else165

if.then163:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_sctx_done(ptr noundef %sctx) #5
  br label %if.end168

if.else165:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_sctx_done_err(ptr noundef %sctx, i32 noundef 11) #5
  br label %if.end168

if.end168:                                        ; preds = %if.else165, %if.then163, %if.then132.if.end168_crit_edge
  %82 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i.i, align 4
  %sctx_mutex171 = getelementptr inbounds %struct.adapter, ptr %83, i32 0, i32 6, i32 14
  tail call void @mutex_unlock(ptr noundef %sctx_mutex171) #5
  br label %if.end172

if.end172:                                        ; preds = %if.end168, %post_process.if.end172_crit_edge
  %cmdcode173 = getelementptr i8, ptr %35, i32 -24
  %84 = ptrtoint ptr %cmdcode173 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %cmdcode173, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %85)
  %cmp175 = icmp ult i16 %85, 64
  br i1 %cmp175, label %if.then177, label %if.then.i296

if.then177:                                       ; preds = %if.end172
  %conv174 = zext i16 %85 to i32
  %callback = getelementptr [64 x %struct._cmd_callback], ptr @rtw_cmd_callback, i32 0, i32 %conv174, i32 1
  %86 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %callback, align 4
  %tobool181.not = icmp eq ptr %87, null
  br i1 %tobool181.not, label %if.then182, label %if.else183

if.then182:                                       ; preds = %if.then177
  %88 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %85, label %if.then.i [
    i16 14, label %if.then182.if.end.i_crit_edge
    i16 16, label %if.then182.if.end.i_crit_edge386
  ]

if.then182.if.end.i_crit_edge386:                 ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then182.if.end.i_crit_edge:                    ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #7
  %parmbuf.i = getelementptr i8, ptr %35, i32 -20
  %89 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %90) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then182.if.end.i_crit_edge, %if.then182.if.end.i_crit_edge386
  %rsp.i = getelementptr i8, ptr %35, i32 -12
  %91 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i293 = icmp eq ptr %92, null
  br i1 %tobool.not.i293, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr i8, ptr %35, i32 -8
  %93 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp7.not.i = icmp eq i32 %94, 0
  br i1 %cmp7.not.i, label %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.rtw_free_cmd_obj.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %92) #5
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %add.ptr.i.i) #5
  br label %if.end187

if.else183:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void %87(ptr noundef %96, ptr noundef nonnull %add.ptr.i.i) #5
  br label %if.end187

if.then.i296:                                     ; preds = %if.end172
  %parmbuf.i295 = getelementptr i8, ptr %35, i32 -20
  %97 = ptrtoint ptr %parmbuf.i295 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %parmbuf.i295, align 4
  tail call void @kfree(ptr noundef %98) #5
  %rsp.i297 = getelementptr i8, ptr %35, i32 -12
  %99 = ptrtoint ptr %rsp.i297 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rsp.i297, align 4
  %tobool.not.i298 = icmp eq ptr %100, null
  br i1 %tobool.not.i298, label %if.then.i296.rtw_free_cmd_obj.exit304_crit_edge, label %if.then6.i302

if.then.i296.rtw_free_cmd_obj.exit304_crit_edge:  ; preds = %if.then.i296
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit304

if.then6.i302:                                    ; preds = %if.then.i296
  %rspsz.i300 = getelementptr i8, ptr %35, i32 -8
  %101 = ptrtoint ptr %rspsz.i300 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rspsz.i300, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp7.not.i301 = icmp eq i32 %102, 0
  br i1 %cmp7.not.i301, label %if.then6.i302.rtw_free_cmd_obj.exit304_crit_edge, label %if.then9.i303

if.then6.i302.rtw_free_cmd_obj.exit304_crit_edge: ; preds = %if.then6.i302
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit304

if.then9.i303:                                    ; preds = %if.then6.i302
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %100) #5
  br label %rtw_free_cmd_obj.exit304

rtw_free_cmd_obj.exit304:                         ; preds = %if.then9.i303, %if.then6.i302.rtw_free_cmd_obj.exit304_crit_edge, %if.then.i296.rtw_free_cmd_obj.exit304_crit_edge
  tail call void @kfree(ptr noundef nonnull %add.ptr.i.i) #5
  br label %if.end187

if.end187:                                        ; preds = %rtw_free_cmd_obj.exit304, %if.else183, %rtw_free_cmd_obj.exit
  %103 = tail call i32 @llvm.read_register.i32(metadata !59) #5
  %and.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %stack.i.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %108, align 4
  %111 = and i32 %110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end187.if.then.i306_crit_edge, !prof !71

if.end187.if.then.i306_crit_edge:                 ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i306

signal_pending.exit.i:                            ; preds = %if.end187
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %108, align 4
  %and1.i.i.i.i.i.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i305 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i305, label %signal_pending.exit.i.flush_signals_thread.exit_crit_edge, label %signal_pending.exit.i.if.then.i306_crit_edge

signal_pending.exit.i.if.then.i306_crit_edge:     ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i306

signal_pending.exit.i.flush_signals_thread.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %flush_signals_thread.exit

if.then.i306:                                     ; preds = %signal_pending.exit.i.if.then.i306_crit_edge, %if.end187.if.then.i306_crit_edge
  tail call void @flush_signals(ptr noundef %106) #5
  br label %flush_signals_thread.exit

flush_signals_thread.exit:                        ; preds = %if.then.i306, %signal_pending.exit.i.flush_signals_thread.exit_crit_edge
  %114 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bDriverStopped, align 4
  %tobool74.not = icmp eq i32 %115, 0
  br i1 %tobool74.not, label %flush_signals_thread.exit.lor.lhs.false75_crit_edge, label %flush_signals_thread.exit.do.body80_crit_edge

flush_signals_thread.exit.do.body80_crit_edge:    ; preds = %flush_signals_thread.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body80

flush_signals_thread.exit.lor.lhs.false75_crit_edge: ; preds = %flush_signals_thread.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false75

while.end:                                        ; preds = %if.then92, %do.body80, %if.then53, %do.body41, %if.then27, %do.body15, %if.then6, %do.body1
  %cmd_queue.i308 = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 2
  %lock.i.i309 = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 2, i32 1
  %call2.i.i310367 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i309) #5
  %116 = ptrtoint ptr %cmd_queue.i308 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %cmd_queue.i308, align 4
  %cmp.i.not.i.i311368 = icmp eq ptr %117, %cmd_queue.i308
  br i1 %cmp.i.not.i.i311368, label %while.end.rtw_dequeue_cmd.exit321.thread_crit_edge, label %while.end.if.else.i.i314_crit_edge

while.end.if.else.i.i314_crit_edge:               ; preds = %while.end
  br label %if.else.i.i314

while.end.rtw_dequeue_cmd.exit321.thread_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_dequeue_cmd.exit321.thread

rtw_dequeue_cmd.exit321.thread:                   ; preds = %rtw_free_cmd_obj.exit332.rtw_dequeue_cmd.exit321.thread_crit_edge, %while.end.rtw_dequeue_cmd.exit321.thread_crit_edge
  %call2.i.i310.lcssa = phi i32 [ %call2.i.i310367, %while.end.rtw_dequeue_cmd.exit321.thread_crit_edge ], [ %call2.i.i310, %rtw_free_cmd_obj.exit332.rtw_dequeue_cmd.exit321.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i309, i32 noundef %call2.i.i310.lcssa) #5
  br label %if.then191

if.else.i.i314:                                   ; preds = %rtw_free_cmd_obj.exit332.if.else.i.i314_crit_edge, %while.end.if.else.i.i314_crit_edge
  %118 = phi ptr [ %146, %rtw_free_cmd_obj.exit332.if.else.i.i314_crit_edge ], [ %117, %while.end.if.else.i.i314_crit_edge ]
  %call2.i.i310369 = phi i32 [ %call2.i.i310, %rtw_free_cmd_obj.exit332.if.else.i.i314_crit_edge ], [ %call2.i.i310367, %while.end.if.else.i.i314_crit_edge ]
  %add.ptr.i.i312 = getelementptr i8, ptr %118, i32 -28
  %call.i.i.i.i313 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %118) #5
  br i1 %call.i.i.i.i313, label %if.end.i.i.i.i317, label %if.else.i.i314.rtw_dequeue_cmd.exit321_crit_edge

if.else.i.i314.rtw_dequeue_cmd.exit321_crit_edge: ; preds = %if.else.i.i314
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_dequeue_cmd.exit321

if.end.i.i.i.i317:                                ; preds = %if.else.i.i314
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i315 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i.i.i.i315 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i.i.i.i315, align 4
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %118, align 4
  %prev1.i.i.i.i.i316 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev1.i.i.i.i.i316 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev1.i.i.i.i.i316, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %122, ptr %120, align 4
  br label %rtw_dequeue_cmd.exit321

rtw_dequeue_cmd.exit321:                          ; preds = %if.end.i.i.i.i317, %if.else.i.i314.rtw_dequeue_cmd.exit321_crit_edge
  %125 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %118, ptr %118, align 4
  %prev.i3.i.i.i318 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i3.i.i.i318 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %118, ptr %prev.i3.i.i.i318, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i309, i32 noundef %call2.i.i310369) #5
  %tobool190.not = icmp eq ptr %add.ptr.i.i312, null
  br i1 %tobool190.not, label %rtw_dequeue_cmd.exit321.if.then191_crit_edge, label %if.end192

rtw_dequeue_cmd.exit321.if.then191_crit_edge:     ; preds = %rtw_dequeue_cmd.exit321
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then191

if.then191:                                       ; preds = %rtw_dequeue_cmd.exit321.if.then191_crit_edge, %rtw_dequeue_cmd.exit321.thread
  tail call void @rtw_unregister_cmd_alive(ptr noundef %context) #5
  tail call void @complete(ptr noundef %terminate_cmdthread_comp) #5
  %call.i.i289 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmdthd_running, i32 noundef 4) #5
  %127 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 0, ptr %cmdthd_running, align 4
  ret i32 0

if.end192:                                        ; preds = %rtw_dequeue_cmd.exit321
  %cmdcode193 = getelementptr i8, ptr %118, i32 -24
  %128 = ptrtoint ptr %cmdcode193 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %cmdcode193, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 57, i16 %129)
  %cmp195 = icmp eq i16 %129, 57
  br i1 %cmp195, label %if.then197, label %if.end192.if.end205_crit_edge

if.end192.if.end205_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end205

if.then197:                                       ; preds = %if.end192
  %parmbuf198 = getelementptr i8, ptr %118, i32 -20
  %130 = ptrtoint ptr %parmbuf198 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %parmbuf198, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pbuf, align 4
  %tobool199.not = icmp eq ptr %133, null
  br i1 %tobool199.not, label %if.then197.if.end205thread-pre-split_crit_edge, label %land.lhs.true

if.then197.if.end205thread-pre-split_crit_edge:   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end205thread-pre-split

land.lhs.true:                                    ; preds = %if.then197
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %131, i32 0, i32 2
  %134 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp200 = icmp sgt i32 %135, 0
  br i1 %cmp200, label %if.then202, label %land.lhs.true.if.end205thread-pre-split_crit_edge

land.lhs.true.if.end205thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end205thread-pre-split

if.then202:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %133) #5
  br label %if.end205thread-pre-split

if.end205thread-pre-split:                        ; preds = %if.then202, %land.lhs.true.if.end205thread-pre-split_crit_edge, %if.then197.if.end205thread-pre-split_crit_edge
  %136 = ptrtoint ptr %cmdcode193 to i32
  call void @__asan_load2_noabort(i32 %136)
  %.pr = load i16, ptr %cmdcode193, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.end205thread-pre-split, %if.end192.if.end205_crit_edge
  %137 = phi i16 [ %.pr, %if.end205thread-pre-split ], [ %129, %if.end192.if.end205_crit_edge ]
  %138 = zext i16 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %137, label %if.then.i324 [
    i16 14, label %if.end205.if.end.i327_crit_edge
    i16 16, label %if.end205.if.end.i327_crit_edge387
  ]

if.end205.if.end.i327_crit_edge387:               ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i327

if.end205.if.end.i327_crit_edge:                  ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i327

if.then.i324:                                     ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  %parmbuf.i323 = getelementptr i8, ptr %118, i32 -20
  %139 = ptrtoint ptr %parmbuf.i323 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %parmbuf.i323, align 4
  tail call void @kfree(ptr noundef %140) #5
  br label %if.end.i327

if.end.i327:                                      ; preds = %if.then.i324, %if.end205.if.end.i327_crit_edge, %if.end205.if.end.i327_crit_edge387
  %rsp.i325 = getelementptr i8, ptr %118, i32 -12
  %141 = ptrtoint ptr %rsp.i325 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rsp.i325, align 4
  %tobool.not.i326 = icmp eq ptr %142, null
  br i1 %tobool.not.i326, label %if.end.i327.rtw_free_cmd_obj.exit332_crit_edge, label %if.then6.i330

if.end.i327.rtw_free_cmd_obj.exit332_crit_edge:   ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit332

if.then6.i330:                                    ; preds = %if.end.i327
  %rspsz.i328 = getelementptr i8, ptr %118, i32 -8
  %143 = ptrtoint ptr %rspsz.i328 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rspsz.i328, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp7.not.i329 = icmp eq i32 %144, 0
  br i1 %cmp7.not.i329, label %if.then6.i330.rtw_free_cmd_obj.exit332_crit_edge, label %if.then9.i331

if.then6.i330.rtw_free_cmd_obj.exit332_crit_edge: ; preds = %if.then6.i330
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit332

if.then9.i331:                                    ; preds = %if.then6.i330
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %142) #5
  br label %rtw_free_cmd_obj.exit332

rtw_free_cmd_obj.exit332:                         ; preds = %if.then9.i331, %if.then6.i330.rtw_free_cmd_obj.exit332_crit_edge, %if.end.i327.rtw_free_cmd_obj.exit332_crit_edge
  tail call void @kfree(ptr noundef nonnull %add.ptr.i.i312) #5
  %call2.i.i310 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i309) #5
  %145 = ptrtoint ptr %cmd_queue.i308 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %cmd_queue.i308, align 4
  %cmp.i.not.i.i311 = icmp eq ptr %146, %cmd_queue.i308
  br i1 %cmp.i.not.i.i311, label %rtw_free_cmd_obj.exit332.rtw_dequeue_cmd.exit321.thread_crit_edge, label %rtw_free_cmd_obj.exit332.if.else.i.i314_crit_edge

rtw_free_cmd_obj.exit332.if.else.i.i314_crit_edge: ; preds = %rtw_free_cmd_obj.exit332
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i314

rtw_free_cmd_obj.exit332.rtw_dequeue_cmd.exit321.thread_crit_edge: ; preds = %rtw_free_cmd_obj.exit332
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_dequeue_cmd.exit321.thread
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_register_cmd_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_unregister_cmd_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sctx_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sctx_done_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %padapter, ptr noundef readonly %ssid, i32 noundef %ssid_num, ptr noundef readonly %ch, i32 noundef %ch_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call3.i = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %if.end

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %call3.i, align 4
  %type.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call3.i, i32 0, i32 1
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type.i, align 4
  %size.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call3.i, i32 0, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %size.i, align 4
  %pbuf.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call3.i, i32 0, i32 3
  %5 = ptrtoint ptr %pbuf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pbuf.i, align 4
  %list.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list.i, ptr %prev.i.i, align 4
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 57, ptr %cmdcode.i, align 4
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3.i, ptr %parmbuf.i, align 4
  %cmdsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %cmdsz.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %cmdsz.i, align 4
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rsp.i, align 4
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rspsz.i, align 4
  %call7.i = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call.i) #5
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %if.then5.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @_rtw_zmalloc(i32 noundef 740) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call2) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  tail call void @rtw_free_network_queue(ptr noundef %padapter, i8 noundef zeroext 0) #5
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call2, i32 0, i32 8
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call2, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call2, i32 0, i32 1
  %15 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 18, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call2, i32 0, i32 3
  %16 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call2, i32 0, i32 4
  %17 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 740, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call2, i32 0, i32 5
  %18 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call2, i32 0, i32 6
  %19 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rspsz, align 4
  %scan_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 38
  %20 = ptrtoint ptr %scan_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_mode, align 4
  %22 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call6, align 4
  %tobool11.not = icmp ne ptr %ssid, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ssid_num)
  %cmp105 = icmp sgt i32 %ssid_num, 0
  %or.cond111 = and i1 %tobool11.not, %cmp105
  br i1 %or.cond111, label %for.body.lr.ph, label %if.end9.if.end22_crit_edge

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.body.lr.ph:                                   ; preds = %if.end9
  %ssid_num19 = getelementptr inbounds %struct.sitesurvey_parm, ptr %call6, i32 0, i32 1
  %23 = add nsw i32 %ssid_num, -1
  %umin = call i32 @llvm.umin.i32(i32 %23, i32 8)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ndis_802_11_ssid, ptr %ssid, i32 %i.0106
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14.not = icmp eq i32 %25, 0
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.then15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17 = getelementptr %struct.sitesurvey_parm, ptr %call6, i32 0, i32 3, i32 %i.0106
  %26 = call ptr @memcpy(ptr %arrayidx17, ptr %arrayidx, i32 36)
  %27 = ptrtoint ptr %ssid_num19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ssid_num19, align 4
  %inc = add i8 %28, 1
  store i8 %inc, ptr %ssid_num19, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body.for.inc_crit_edge
  %inc21 = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %i.0106, %umin
  br i1 %exitcond.not, label %for.inc.if.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  %tobool23.not = icmp ne ptr %ch, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch_num)
  %cmp27108 = icmp sgt i32 %ch_num, 0
  %or.cond112 = and i1 %tobool23.not, %cmp27108
  br i1 %or.cond112, label %for.body31.lr.ph, label %if.end22.if.end46_crit_edge

if.end22.if.end46_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

for.body31.lr.ph:                                 ; preds = %if.end22
  %ch_num40 = getelementptr inbounds %struct.sitesurvey_parm, ptr %call6, i32 0, i32 2
  %29 = add nsw i32 %ch_num, -1
  %umin113 = call i32 @llvm.umin.i32(i32 %29, i32 50)
  br label %for.body31

for.body31:                                       ; preds = %for.inc43.for.body31_crit_edge, %for.body31.lr.ph
  %i25.0109 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc44, %for.inc43.for.body31_crit_edge ]
  %arrayidx32 = getelementptr %struct.rtw_ieee80211_channel, ptr %ch, i32 %i25.0109
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool33.not = icmp eq i16 %31, 0
  br i1 %tobool33.not, label %for.body31.for.inc43_crit_edge, label %land.lhs.true

for.body31.for.inc43_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc43

land.lhs.true:                                    ; preds = %for.body31
  %flags = getelementptr %struct.rtw_ieee80211_channel, ptr %ch, i32 %i25.0109, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true.for.inc43_crit_edge

land.lhs.true.for.inc43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc43

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx38 = getelementptr %struct.sitesurvey_parm, ptr %call6, i32 0, i32 4, i32 %i25.0109
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %arrayidx32, align 4
  %36 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %arrayidx38, align 4
  %37 = ptrtoint ptr %ch_num40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ch_num40, align 1
  %inc41 = add i8 %38, 1
  store i8 %inc41, ptr %ch_num40, align 1
  br label %for.inc43

for.inc43:                                        ; preds = %if.then36, %land.lhs.true.for.inc43_crit_edge, %for.body31.for.inc43_crit_edge
  %inc44 = add nuw nsw i32 %i25.0109, 1
  %exitcond114.not = icmp eq i32 %i25.0109, %umin113
  br i1 %exitcond114.not, label %for.inc43.if.end46_crit_edge, label %for.inc43.for.body31_crit_edge

for.inc43.for.body31_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body31

for.inc43.if.end46_crit_edge:                     ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.end46:                                         ; preds = %for.inc43.if.end46_crit_edge, %if.end22.if.end46_crit_edge
  %39 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fw_state.i, align 4
  %or.i = or i32 %40, 2048
  store i32 %or.i, ptr %fw_state.i, align 4
  %bScanInProcess.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %bScanInProcess.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %bScanInProcess.i, align 4
  %call47 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call2)
  %conv48 = trunc i32 %call47 to i8
  %conv49 = and i32 %call47, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv49)
  %cmp50 = icmp eq i32 %conv49, 1
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %scan_start_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27
  %43 = ptrtoint ptr %scan_start_time to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %scan_start_time, align 4
  %scan_to_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %44 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %44, 800
  %call.i100 = tail call i32 @mod_timer(ptr noundef %scan_to_timer, i32 noundef %add.i) #5
  br label %cleanup

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fw_state.i, align 4
  %and.i102 = and i32 %46, -2049
  store i32 %and.i102, ptr %fw_state.i, align 4
  %47 = ptrtoint ptr %bScanInProcess.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %bScanInProcess.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then52, %if.then8, %if.end.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ], [ %conv48, %if.else ], [ %conv48, %if.then52 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext %lps_ctrl_type, i8 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enqueue)
  %tobool.not = icmp eq i8 %enqueue, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.exit_crit_edge, label %if.end

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %if.then
  %call3 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %call3, align 4
  %conv = zext i8 %lps_ctrl_type to i32
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call3, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %type, align 4
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call3, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pbuf, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call7 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv8 = trunc i32 %call7 to i8
  br label %exit

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lps_ctrl_wk_hdl(ptr noundef %padapter, i8 noundef zeroext %lps_ctrl_type)
  br label %exit

exit:                                             ; preds = %if.else, %if.end6, %if.then5, %if.then.exit_crit_edge
  %res.0 = phi i8 [ %conv8, %if.end6 ], [ 0, %if.then5 ], [ 1, %if.else ], [ 0, %if.then.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_network_queue(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_setdatarate_cmd(ptr noundef %padapter, ptr nocapture noundef readonly %rateset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 14) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 27, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 14, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rspsz, align 4
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %call1, align 1
  %datarates = getelementptr inbounds %struct.setdatarate_parm, ptr %call1, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %datarates, ptr %rateset, i32 13)
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %do.body, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %do.body ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_getbbrfreg_cmdrsp_callback(ptr nocapture readnone %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %0 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %1) #5
  tail call void @kfree(ptr noundef %pcmd) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_createbss_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 36
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev_network, ptr %parmbuf, align 4
  %ie_length.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 36, i32 11
  %4 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ie_length.i, align 1
  %add.i = add i32 %5, 104
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 4
  %9 = ptrtoint ptr %dev_network to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %add.i, ptr %dev_network, align 1
  %call3 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call3 to i8
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_startbss_cmd(ptr noundef %padapter, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %sctx = alloca %struct.submit_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sctx) #5
  %0 = call ptr @memset(ptr %sctx, i32 255, i32 68)
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @start_bss_network(ptr noundef %padapter) #5
  br label %exit

if.else:                                          ; preds = %entry
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.else.exit_crit_edge, label %if.end

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %if.else
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %and3 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %4 = call ptr @memset(ptr %parmbuf, i32 0, i32 16)
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sctx6 = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %sctx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sctx, ptr %sctx6, align 4
  call void @rtw_sctx_init(ptr noundef nonnull %sctx, i32 noundef 2000) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %call8 = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp ne i32 %call8, 1
  %brmerge = or i1 %tobool4.not, %cmp
  %not.cmp = xor i1 %cmp, true
  %.mux = zext i1 %not.cmp to i32
  br i1 %brmerge, label %if.end7.exit_crit_edge, label %if.then11

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then11:                                        ; preds = %if.end7
  %call12 = call i32 @rtw_sctx_wait(ptr noundef nonnull %sctx) #5
  %sctx_mutex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6, i32 14
  %call13 = call i32 @mutex_lock_interruptible_nested(ptr noundef %sctx_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.then11.exit_crit_edge

if.then11.exit_crit_edge:                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then15:                                        ; preds = %if.then11
  %status = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 2
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp16 = icmp eq i32 %7, -1
  br i1 %cmp16, label %if.then17, label %if.then15.if.end19_crit_edge

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %sctx18 = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %sctx18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sctx18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then15.if.end19_crit_edge
  call void @mutex_unlock(ptr noundef %sctx_mutex) #5
  br label %exit

exit:                                             ; preds = %if.end19, %if.then11.exit_crit_edge, %if.end7.exit_crit_edge, %if.else.exit_crit_edge, %if.then
  %res.0 = phi i32 [ 1, %if.then ], [ 1, %if.end19 ], [ 1, %if.then11.exit_crit_edge ], [ %.mux, %if.end7.exit_crit_edge ], [ 0, %if.else.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sctx) #5
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_bss_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sctx_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_sctx_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_joinbss_cmd(ptr noundef %padapter, ptr noundef %pnetwork) local_unnamed_addr #0 align 64 {
entry:
  %tmp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %network = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6
  %infrastructure_mode = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %infrastructure_mode, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_len) #5
  %2 = ptrtoint ptr %tmp_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp_len, align 4, !annotation !72
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %4, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %if.end
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %if.then2.if.end5_crit_edge [
    i32 0, label %if.then2.if.end5.sink.split_crit_edge
    i32 1, label %sw.bb3
  ]

if.then2.if.end5.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.sink.split

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

sw.bb3:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %sw.bb3, %if.then2.if.end5.sink.split_crit_edge
  %.sink = phi i32 [ 8, %sw.bb3 ], [ 32, %if.then2.if.end5.sink.split_crit_edge ]
  %or.i = or i32 %4, %.sink
  %6 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %fw_state.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.then2.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %sec_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 37
  %7 = call ptr @memset(ptr %sec_bss, i32 0, i32 872)
  %ie_length.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %8 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ie_length.i, align 1
  %add.i = add i32 %9, 104
  %10 = call ptr @memcpy(ptr %sec_bss, ptr %network, i32 %add.i)
  %ie_length = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 37, i32 11
  %11 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ie_length, align 1
  %conv = trunc i32 %12 to i8
  %authenticator_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 42
  %13 = ptrtoint ptr %authenticator_ie to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %authenticator_ie, align 4
  %sub = add i32 %12, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub)
  %cmp10 = icmp ult i32 %sub, 255
  %arrayidx14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 42, i32 1
  %arrayidx15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 37, i32 12, i32 12
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %14 = call ptr @memcpy(ptr %arrayidx14, ptr %arrayidx15, i32 %sub)
  br label %if.end22

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %15 = call ptr @memcpy(ptr %arrayidx14, ptr %arrayidx15, i32 255)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then12
  %16 = ptrtoint ptr %ie_length to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %ie_length, align 1
  %assoc_by_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %17 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %assoc_by_bssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not = icmp eq i32 %18, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.if.end29_crit_edge

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %assoc_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 19
  %mac_address = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 1
  %19 = call ptr @memcpy(ptr %assoc_bssid, ptr %mac_address, i32 6)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22.if.end29_crit_edge
  %ies31 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12
  %ies33 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 37, i32 12
  %20 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ie_length.i, align 4
  %call37 = tail call i32 @rtw_restruct_sec_ie(ptr noundef %padapter, ptr noundef %ies31, ptr noundef %ies33, i32 noundef %21) #5
  %22 = ptrtoint ptr %ie_length to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %call37, ptr %ie_length, align 1
  %23 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %qospriv, align 4
  %wmm_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 29
  %24 = ptrtoint ptr %wmm_enable to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wmm_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool39.not = icmp eq i8 %25, 0
  br i1 %tobool39.not, label %if.end29.if.end59_crit_edge, label %if.then40

if.end29.if.end59_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then40:                                        ; preds = %if.end29
  %26 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ie_length.i, align 4
  %call49 = tail call i32 @rtw_restruct_wmm_ie(ptr noundef %padapter, ptr noundef %ies31, ptr noundef %ies33, i32 noundef %27, i32 noundef %call37) #5
  %28 = ptrtoint ptr %tmp_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call49, ptr %tmp_len, align 4
  %29 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %ie_length, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %call49)
  %cmp51.not = icmp eq i32 %30, %call49
  br i1 %cmp51.not, label %if.then40.if.end59.sink.split_crit_edge, label %if.then53

if.then40.if.end59.sink.split_crit_edge:          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.sink.split

if.then53:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %ie_length to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %call49, ptr %ie_length, align 1
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.then53, %if.then40.if.end59.sink.split_crit_edge
  %.sink188 = phi i32 [ 1, %if.then53 ], [ 0, %if.then40.if.end59.sink.split_crit_edge ]
  %32 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink188, ptr %qospriv, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.end29.if.end59_crit_edge
  %33 = ptrtoint ptr %htpriv to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %htpriv, align 4
  %arrayidx62 = getelementptr %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12, i32 12
  %34 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ie_length.i, align 4
  %sub65 = add i32 %35, -12
  %call66 = call ptr @rtw_get_ie(ptr noundef %arrayidx62, i32 noundef 45, ptr noundef nonnull %tmp_len, i32 noundef %sub65) #5
  %ht_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 37
  %36 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ht_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool68.not = icmp eq i8 %37, 0
  %tobool69.not = icmp eq ptr %call66, null
  %or.cond = select i1 %tobool68.not, i1 true, i1 %tobool69.not
  br i1 %or.cond, label %if.end59.if.end104_crit_edge, label %land.lhs.true70

if.end59.if.end104_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

land.lhs.true70:                                  ; preds = %if.end59
  %38 = ptrtoint ptr %tmp_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tmp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp71.not = icmp eq i32 %39, 0
  br i1 %cmp71.not, label %land.lhs.true70.if.end104_crit_edge, label %if.then73

land.lhs.true70.if.end104_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then73:                                        ; preds = %land.lhs.true70
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %40 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %41, label %if.then87 [
    i32 1, label %if.then73.if.end104_crit_edge
    i32 5, label %if.then73.if.end104_crit_edge189
    i32 2, label %if.then73.if.end104_crit_edge190
  ]

if.then73.if.end104_crit_edge190:                 ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then73.if.end104_crit_edge189:                 ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then73.if.end104_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then87:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  call void @rtw_ht_use_default_setting(ptr noundef %padapter) #5
  %arrayidx89 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 37, i32 12, i32 12
  call void @rtw_build_wmm_ie_ht(ptr noundef %padapter, ptr noundef %arrayidx89, ptr noundef %ie_length) #5
  %43 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ie_length.i, align 4
  %sub98 = add i32 %44, -12
  %ds_config = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 7, i32 3
  %45 = ptrtoint ptr %ds_config to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ds_config, align 4
  %conv101 = trunc i32 %46 to i8
  %call102 = call i32 @rtw_restructure_ht_ie(ptr noundef %padapter, ptr noundef %arrayidx62, ptr noundef %ies33, i32 noundef %sub98, ptr noundef %ie_length, i8 noundef zeroext %conv101) #5
  br label %if.end104

if.end104:                                        ; preds = %if.then87, %if.then73.if.end104_crit_edge, %if.then73.if.end104_crit_edge189, %if.then73.if.end104_crit_edge190, %land.lhs.true70.if.end104_crit_edge, %if.end59.if.end104_crit_edge
  call void @rtw_append_exented_cap(ptr noundef %padapter, ptr noundef %ies33, ptr noundef %ie_length) #5
  %47 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ie_length.i, align 4
  %call112 = call zeroext i8 @check_assoc_AP(ptr noundef %ies31, i32 noundef %48) #5
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 14
  %49 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call112, ptr %assoc_AP_vendor, align 2
  %50 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %ie_length, align 1
  %add.i187 = add i32 %51, 104
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %52 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i187, ptr %cmdsz, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %53 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %55 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 14, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %56 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %sec_bss, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %57 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %58 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %rspsz, align 4
  %call114 = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv115 = trunc i32 %call114 to i8
  br label %exit

exit:                                             ; preds = %if.end104, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv115, %if.end104 ], [ 0, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_len) #5
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_restruct_sec_ie(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_restruct_wmm_ie(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ht_use_default_setting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_build_wmm_ie_ht(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_restructure_ht_ie(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_append_exented_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @check_assoc_AP(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef %deauth_timeout_ms, i1 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 4) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %deauth_timeout_ms, ptr %call, align 4
  br i1 %enqueue, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

do.body:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call5, i32 0, i32 8
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call5, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call5, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 15, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call5, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call5, i32 0, i32 4
  %5 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call5, i32 0, i32 5
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call5, i32 0, i32 6
  %7 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rspsz, align 4
  %call9 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv1, ptr noundef nonnull %call5)
  %conv = trunc i32 %call9 to i8
  br label %exit

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call zeroext i8 @disconnect_hdl(ptr noundef %padapter, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %cmp.not = icmp eq i8 %call10, 0
  %spec.select = zext i1 %cmp.not to i8
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

exit:                                             ; preds = %if.else, %do.body, %if.then7, %entry.exit_crit_edge
  %res.1 = phi i8 [ %conv, %do.body ], [ 0, %if.then7 ], [ %spec.select, %if.else ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @disconnect_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_setopmode_cmd(ptr noundef %padapter, i32 noundef %networktype, i1 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 4) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %conv = trunc i32 %networktype to i8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %call, align 1
  br i1 %enqueue, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call3, i32 0, i32 8
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call3, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 17, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call3, i32 0, i32 5
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call3, i32 0, i32 6
  %7 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rspsz, align 4
  %call7 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call3)
  %conv8 = trunc i32 %call7 to i8
  br label %exit

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call zeroext i8 @setopmode_hdl(ptr noundef %padapter, ptr noundef nonnull %call) #5
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

exit:                                             ; preds = %if.else, %do.body, %if.then5, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv8, %do.body ], [ 0, %if.then5 ], [ 1, %if.else ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @setopmode_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_setstakey_cmd(ptr noundef %padapter, ptr nocapture noundef readonly %sta, i8 noundef zeroext %unicast_key, i1 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 24) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 12
  %0 = call ptr @memcpy(ptr %call, ptr %hwaddr, i32 6)
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_state.i, align 4
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.body, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %if.end15.sink.split

do.body:                                          ; preds = %if.end
  %4 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %securitypriv, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %do.body.if.end15_crit_edge [
    i32 0, label %do.body.sw.bb_crit_edge
    i32 1, label %do.body.sw.bb_crit_edge76
    i32 3, label %do.body.sw.bb_crit_edge77
    i32 2, label %sw.bb8
    i32 4, label %sw.bb11
  ]

do.body.sw.bb_crit_edge77:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.body.sw.bb_crit_edge76:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.body.sw.bb_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

sw.bb:                                            ; preds = %do.body.sw.bb_crit_edge, %do.body.sw.bb_crit_edge76, %do.body.sw.bb_crit_edge77
  %dot11PrivacyAlgrthm5 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %if.end15.sink.split

sw.bb8:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dot118021XPrivacy = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 14
  br label %if.end15.sink.split

sw.bb11:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dot11PrivacyAlgrthm12 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %sw.bb11, %sw.bb8, %sw.bb, %if.then4
  %dot11PrivacyAlgrthm5.sink = phi ptr [ %dot11PrivacyAlgrthm5, %sw.bb ], [ %dot118021XPrivacy, %sw.bb8 ], [ %dot11PrivacyAlgrthm12, %sw.bb11 ], [ %dot11PrivacyAlgrthm, %if.then4 ]
  %7 = ptrtoint ptr %dot11PrivacyAlgrthm5.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dot11PrivacyAlgrthm5.sink, align 4
  %conv6 = trunc i32 %8 to i8
  %algorithm7 = getelementptr inbounds %struct.set_stakey_parm, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %algorithm7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %algorithm7, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %do.body.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %unicast_key)
  %tobool16.not = icmp eq i8 %unicast_key, 0
  %key19 = getelementptr inbounds %struct.set_stakey_parm, ptr %call, i32 0, i32 3
  br i1 %tobool16.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  br label %if.end20

if.else18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7
  %10 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dot118021XGrpKeyid, align 4
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 8, i32 %11
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then17
  %arrayidx.sink = phi ptr [ %arrayidx, %if.else18 ], [ %dot118021x_UncstKey, %if.then17 ]
  %12 = call ptr @memcpy(ptr %key19, ptr %arrayidx.sink, i32 16)
  %busetkipkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 29
  %13 = ptrtoint ptr %busetkipkey to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %busetkipkey, align 2
  br i1 %enqueue, label %if.then23, label %if.else39

if.then23:                                        ; preds = %if.end20
  %call24 = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end27:                                         ; preds = %if.then23
  %call28 = tail call ptr @_rtw_zmalloc(i32 noundef 8) #5
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then30, label %do.body32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call24) #5
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

do.body32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call24, i32 0, i32 8
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call24, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call24, i32 0, i32 1
  %16 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 21, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call24, i32 0, i32 3
  %17 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call24, i32 0, i32 4
  %18 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 24, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call24, i32 0, i32 5
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call24, i32 0, i32 6
  %19 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call28, ptr %rsp, align 4
  %20 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %rspsz, align 4
  %call37 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call24)
  %conv38 = trunc i32 %call37 to i8
  br label %exit

if.else39:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call zeroext i8 @set_stakey_hdl(ptr noundef %padapter, ptr noundef nonnull %call) #5
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

exit:                                             ; preds = %if.else39, %do.body32, %if.then30, %if.then26, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv38, %do.body32 ], [ 0, %if.then30 ], [ 0, %if.then26 ], [ 1, %if.else39 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_stakey_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_clearstakey_cmd(ptr noundef %padapter, ptr noundef %sta, i8 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enqueue)
  %tobool.not = icmp eq i8 %enqueue, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %entry
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 12
  %call63 = tail call signext i16 @rtw_camid_search(ptr noundef %padapter, ptr noundef %hwaddr, i16 noundef signext -1) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call63)
  %cmp65 = icmp sgt i16 %call63, -1
  br i1 %cmp65, label %do.body2.lr.ph, label %while.cond.preheader.exit_crit_edge

while.cond.preheader.exit_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.body2.lr.ph:                                   ; preds = %while.cond.preheader
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  br label %do.body2

do.body2:                                         ; preds = %do.end12.do.body2_crit_edge, %do.body2.lr.ph
  %call66 = phi i16 [ %call63, %do.body2.lr.ph ], [ %call, %do.end12.do.body2_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_clearstakey_cmd.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_clearstakey_cmd, %if.then7)) #5
          to label %do.end12 [label %if.then7], !srcloc !70

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %conv6768 = zext i16 %call66 to i32
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_clearstakey_cmd.__UNIQUE_ID_ddebug350, ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %hwaddr, i32 noundef %conv6768) #5
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body2
  %conv13 = trunc i16 %call66 to i8
  tail call void @clear_cam_entry(ptr noundef %padapter, i8 noundef zeroext %conv13) #5
  tail call void @rtw_camid_free(ptr noundef %padapter, i8 noundef zeroext %conv13) #5
  %call = tail call signext i16 @rtw_camid_search(ptr noundef %padapter, ptr noundef %hwaddr, i16 noundef signext -1) #5
  %cmp = icmp sgt i16 %call, -1
  br i1 %cmp, label %do.end12.do.body2_crit_edge, label %do.end12.exit_crit_edge

do.end12.exit_crit_edge:                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end12.do.body2_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

if.else:                                          ; preds = %entry
  %call15 = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.else.exit_crit_edge, label %if.end18

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end18:                                         ; preds = %if.else
  %call19 = tail call ptr @_rtw_zmalloc(i32 noundef 24) #5
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call15) #5
  br label %exit

if.end22:                                         ; preds = %if.end18
  %call23 = tail call ptr @_rtw_zmalloc(i32 noundef 8) #5
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %do.body27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call15) #5
  tail call void @kfree(ptr noundef nonnull %call19) #5
  br label %exit

do.body27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 8
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 1
  %4 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 21, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 3
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call19, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 4
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 5
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 6
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call23, ptr %rsp, align 4
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %rspsz, align 4
  %hwaddr33 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 12
  %9 = call ptr @memcpy(ptr %call19, ptr %hwaddr33, i32 6)
  %algorithm = getelementptr inbounds %struct.set_stakey_parm, ptr %call19, i32 0, i32 1
  %10 = ptrtoint ptr %algorithm to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %algorithm, align 1
  %call35 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call15)
  %conv36 = trunc i32 %call35 to i8
  br label %exit

exit:                                             ; preds = %do.body27, %if.then25, %if.then21, %if.else.exit_crit_edge, %do.end12.exit_crit_edge, %while.cond.preheader.exit_crit_edge
  %res.0 = phi i8 [ %conv36, %do.body27 ], [ 0, %if.then25 ], [ 0, %if.then21 ], [ 0, %if.else.exit_crit_edge ], [ 1, %while.cond.preheader.exit_crit_edge ], [ 1, %do.end12.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i16 @rtw_camid_search(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_cam_entry(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_camid_free(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_addbareq_cmd(ptr noundef %padapter, i8 noundef zeroext %tid, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 12) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %tid to i32
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %call1, align 4
  %addr6 = getelementptr inbounds %struct.addBaReq_parm, ptr %call1, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %addr6, ptr %addr, i32 6)
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 45, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 4
  %call7 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv8 = trunc i32 %call7 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv8, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_reset_securitypriv_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 13, ptr %call1, align 4
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pbuf, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_free_assoc_resources_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 14, ptr %call1, align 4
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pbuf, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_dynamic_chk_wk_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %call1, align 4
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pbuf, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_chplan_cmd(ptr noundef %padapter, i8 noundef zeroext %chplan, i8 noundef zeroext %enqueue, i8 noundef zeroext %swconfig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %swconfig)
  %tobool.not = icmp eq i8 %swconfig, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @rtw_hal_is_disable_sw_channel_plan(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.exit_crit_edge

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %chplan)
  %cmp = icmp ult i8 %chplan, 88
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %chplan)
  %cmp5 = icmp eq i8 %chplan, 127
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %if.end8, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @_rtw_zmalloc(i32 noundef 1) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.exit_crit_edge, label %if.end12

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end12:                                         ; preds = %if.end8
  %0 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %chplan, ptr %call9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enqueue)
  %tobool13.not = icmp eq i8 %enqueue, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end27

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call9) #5
  br label %exit

if.else:                                          ; preds = %if.end12
  %call21 = tail call zeroext i8 @set_chplan_hdl(ptr noundef %padapter, ptr noundef nonnull %call9) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call21)
  %cmp23.not = icmp eq i8 %call21, 0
  tail call void @kfree(ptr noundef nonnull %call9) #5
  br i1 %cmp23.not, label %if.else.if.then31_crit_edge, label %if.else.exit_crit_edge

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else.if.then31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

if.end27:                                         ; preds = %if.then14
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 8
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 59, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 4
  %5 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 5
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call15, i32 0, i32 6
  %7 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rspsz, align 4
  %call19 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call15)
  %conv20 = trunc i32 %call19 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv20)
  %cmp29 = icmp eq i8 %conv20, 1
  br i1 %cmp29, label %if.end27.if.then31_crit_edge, label %if.end27.exit_crit_edge

if.end27.exit_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end27.if.then31_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

if.then31:                                        ; preds = %if.end27.if.then31_crit_edge, %if.else.if.then31_crit_edge
  %ChannelPlan = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 37
  %8 = ptrtoint ptr %ChannelPlan to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %chplan, ptr %ChannelPlan, align 1
  br label %exit

exit:                                             ; preds = %if.then31, %if.end27.exit_crit_edge, %if.else.exit_crit_edge, %if.then17, %if.end8.exit_crit_edge, %if.end.exit_crit_edge, %land.lhs.true.exit_crit_edge
  %res.2 = phi i8 [ 1, %if.then31 ], [ %conv20, %if.end27.exit_crit_edge ], [ 0, %if.then17 ], [ 0, %land.lhs.true.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ 0, %if.end8.exit_crit_edge ], [ 0, %if.else.exit_crit_edge ]
  ret i8 %res.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_is_disable_sw_channel_plan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_chplan_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @traffic_status_watchdog(ptr noundef %padapter, i8 noundef zeroext %from_timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 21
  %2 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_bytes.i, align 8
  %traffic_stat.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %traffic_stat.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %traffic_stat.i, align 8
  %tx_pkts.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 22
  %5 = ptrtoint ptr %tx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tx_pkts.i, align 8
  %tx_pkts4.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 1
  %7 = ptrtoint ptr %tx_pkts4.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tx_pkts4.i, align 8
  %tx_drop.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 23
  %8 = ptrtoint ptr %tx_drop.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_drop.i, align 8
  %tx_drop7.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 2
  %10 = ptrtoint ptr %tx_drop7.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %tx_drop7.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 9
  %11 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_bytes.i, align 8
  %rx_bytes9.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 6
  %13 = ptrtoint ptr %rx_bytes9.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rx_bytes9.i, align 8
  %rx_pkts.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 10
  %14 = ptrtoint ptr %rx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_pkts.i, align 8
  %rx_pkts12.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 7
  %16 = ptrtoint ptr %rx_pkts12.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %rx_pkts12.i, align 8
  %rx_drop.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 11
  %17 = ptrtoint ptr %rx_drop.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_drop.i, align 8
  %rx_drop15.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 8
  %19 = ptrtoint ptr %rx_drop15.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %rx_drop15.i, align 8
  %last_tx_bytes.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 4
  %20 = ptrtoint ptr %last_tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %last_tx_bytes.i, align 8
  %sub.i = sub i64 %3, %21
  %cur_tx_bytes.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 3
  %22 = ptrtoint ptr %cur_tx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub.i, ptr %cur_tx_bytes.i, align 8
  %last_rx_bytes.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 10
  %23 = ptrtoint ptr %last_rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %last_rx_bytes.i, align 8
  %sub23.i = sub i64 %12, %24
  %cur_rx_bytes.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 9
  %25 = ptrtoint ptr %cur_rx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %sub23.i, ptr %cur_rx_bytes.i, align 8
  store i64 %3, ptr %last_tx_bytes.i, align 8
  store i64 %12, ptr %last_rx_bytes.i, align 8
  %26 = lshr i64 %sub.i, 18
  %conv.i = trunc i64 %26 to i32
  %cur_tx_tp.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 5
  %27 = ptrtoint ptr %cur_tx_tp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %cur_tx_tp.i, align 8
  %28 = lshr i64 %sub23.i, 18
  %conv44.i = trunc i64 %28 to i32
  %cur_rx_tp.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 23, i32 11
  %29 = ptrtoint ptr %cur_rx_tp.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv44.i, ptr %cur_rx_tp.i, align 8
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else108, label %if.then

if.then:                                          ; preds = %entry
  %LinkDetectInfo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34
  %bBusyTraffic1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %32 = ptrtoint ptr %bBusyTraffic1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bBusyTraffic1, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool2.not = icmp eq i8 %33, 0
  %spec.select = select i1 %tobool2.not, i32 25, i32 10
  %NumRxOkInPeriod = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 1
  %34 = ptrtoint ptr %NumRxOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %NumRxOkInPeriod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %spec.select)
  %cmp = icmp ugt i32 %35, %spec.select
  br i1 %cmp, label %if.then.if.then10_crit_edge, label %lor.lhs.false

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.then
  %36 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %LinkDetectInfo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %spec.select)
  %cmp8 = icmp ugt i32 %37, %spec.select
  br i1 %cmp8, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end19_crit_edge

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.then.if.then10_crit_edge
  %38 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %LinkDetectInfo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %39)
  %cmp15 = icmp ugt i32 %35, %39
  %not.cmp15 = xor i1 %cmp15, true
  %. = zext i1 %not.cmp15 to i8
  %.193 = zext i1 %cmp15 to i8
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %lor.lhs.false.if.end19_crit_edge
  %tobool51.not = phi i1 [ true, %lor.lhs.false.if.end19_crit_edge ], [ false, %if.then10 ]
  %bBusyTraffic.0 = phi i8 [ 0, %lor.lhs.false.if.end19_crit_edge ], [ 1, %if.then10 ]
  %bTxBusyTraffic.0 = phi i8 [ 0, %lor.lhs.false.if.end19_crit_edge ], [ %., %if.then10 ]
  %bRxBusyTraffic.0 = phi i8 [ 0, %lor.lhs.false.if.end19_crit_edge ], [ %.193, %if.then10 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %35)
  %cmp22 = icmp ugt i32 %35, 4000
  br i1 %cmp22, label %if.end19.if.then29_crit_edge, label %lor.lhs.false24

if.end19.if.then29_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

lor.lhs.false24:                                  ; preds = %if.end19
  %40 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %LinkDetectInfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %41)
  %cmp27 = icmp ugt i32 %41, 4000
  br i1 %cmp27, label %lor.lhs.false24.if.then29_crit_edge, label %lor.lhs.false24.if.end39_crit_edge

lor.lhs.false24.if.end39_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

lor.lhs.false24.if.then29_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false24.if.then29_crit_edge, %if.end19.if.then29_crit_edge
  %42 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %LinkDetectInfo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %43)
  %cmp34 = icmp ugt i32 %35, %43
  %.194 = zext i1 %cmp34 to i8
  %not.cmp34 = xor i1 %cmp34, true
  %.195 = zext i1 %not.cmp34 to i8
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %lor.lhs.false24.if.end39_crit_edge
  %bHigherBusyTraffic.0 = phi i8 [ 0, %lor.lhs.false24.if.end39_crit_edge ], [ 1, %if.then29 ]
  %bHigherBusyRxTraffic.0 = phi i8 [ 0, %lor.lhs.false24.if.end39_crit_edge ], [ %.194, %if.then29 ]
  %bHigherBusyTxTraffic.0 = phi i8 [ 0, %lor.lhs.false24.if.end39_crit_edge ], [ %.195, %if.then29 ]
  %NumRxUnicastOkInPeriod = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 2
  %44 = ptrtoint ptr %NumRxUnicastOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %NumRxUnicastOkInPeriod, align 4
  %46 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %LinkDetectInfo, align 4
  %add = add i32 %47, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp43 = icmp ugt i32 %add, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp48 = icmp ugt i32 %45, 2
  %or.cond = or i1 %cmp48, %cmp43
  br i1 %or.cond, label %if.then50, label %if.else73

if.then50:                                        ; preds = %if.end39
  br i1 %tobool51.not, label %if.then50.if.else101_crit_edge, label %if.then52

if.then50.if.else101_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else101

if.then52:                                        ; preds = %if.then50
  %TrafficTransitionCount = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 9
  %48 = ptrtoint ptr %TrafficTransitionCount to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %TrafficTransitionCount, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %49)
  %cmp55 = icmp ult i8 %49, 5
  br i1 %cmp55, label %if.then57, label %if.then52.if.end60_crit_edge

if.then52.if.end60_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then57:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %TrafficTransitionCount to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %TrafficTransitionCount, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.then52.if.end60_crit_edge
  %51 = ptrtoint ptr %TrafficTransitionCount to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %TrafficTransitionCount, align 2
  %inc = add i8 %52, 1
  %53 = tail call i8 @llvm.umin.i8(i8 %inc, i8 30)
  %54 = ptrtoint ptr %TrafficTransitionCount to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %TrafficTransitionCount, align 2
  br label %if.else101

if.else73:                                        ; preds = %if.end39
  %TrafficTransitionCount75 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 9
  %55 = ptrtoint ptr %TrafficTransitionCount75 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %TrafficTransitionCount75, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp77 = icmp ugt i8 %56, 1
  %sub = add i8 %56, -2
  %storemerge = select i1 %cmp77, i8 %sub, i8 0
  %57 = ptrtoint ptr %TrafficTransitionCount75 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %storemerge, ptr %TrafficTransitionCount75, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %storemerge)
  %cmp91 = icmp eq i8 %storemerge, 0
  br i1 %cmp91, label %if.then97.critedge, label %if.else73.if.else101_crit_edge

if.else73.if.else101_crit_edge:                   ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else101

if.then97.critedge:                               ; preds = %if.else73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %from_timer)
  %tobool98.not = icmp eq i8 %from_timer, 0
  br i1 %tobool98.not, label %if.then99, label %if.then97.critedge.if.end121_crit_edge

if.then97.critedge.if.end121_crit_edge:           ; preds = %if.then97.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then99:                                        ; preds = %if.then97.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @LPS_Enter(ptr noundef %padapter, ptr noundef nonnull @.str.13) #5
  br label %if.end121

if.else101:                                       ; preds = %if.else73.if.else101_crit_edge, %if.end60, %if.then50.if.else101_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %from_timer)
  %tobool102.not = icmp eq i8 %from_timer, 0
  br i1 %tobool102.not, label %if.then103, label %if.else104

if.then103:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @LPS_Leave(ptr noundef %padapter, ptr noundef nonnull @.str.14) #5
  br label %if.end121

if.else104:                                       ; preds = %if.else101
  %cmdpriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call.i = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.else104.if.end121_crit_edge, label %if.end.i

if.else104.if.end121_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.end.i:                                         ; preds = %if.else104
  %call3.i = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %if.end121

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 5, ptr %call3.i, align 4
  %type.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call3.i, i32 0, i32 1
  %59 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %type.i, align 4
  %size.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call3.i, i32 0, i32 2
  %60 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %size.i, align 4
  %pbuf.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call3.i, i32 0, i32 3
  %61 = ptrtoint ptr %pbuf.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %pbuf.i, align 4
  %list.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 8
  %62 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %list.i, ptr %prev.i.i, align 4
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 1
  %64 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 57, ptr %cmdcode.i, align 4
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 3
  %65 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call3.i, ptr %parmbuf.i, align 4
  %cmdsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 4
  %66 = ptrtoint ptr %cmdsz.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 16, ptr %cmdsz.i, align 4
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 5
  %67 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %rsp.i, align 4
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i, i32 0, i32 6
  %68 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %rspsz.i, align 4
  %call7.i = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv.i, ptr noundef nonnull %call.i) #5
  br label %if.end121

if.else108:                                       ; preds = %entry
  %69 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dvobj.i, align 4
  %padapters = getelementptr inbounds %struct.dvobj_priv, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %padapters, align 4
  %fw_state.i196 = getelementptr inbounds %struct.adapter, ptr %72, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %fw_state.i196 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fw_state.i196, align 4
  %and.i197 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197)
  %tobool112.not = icmp ne i32 %and.i197, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %from_timer)
  %tobool116.not = icmp ne i8 %from_timer, 0
  %brmerge = select i1 %tobool116.not, i1 true, i1 %tobool112.not
  br i1 %brmerge, label %if.else108.if.end121_crit_edge, label %if.then119

if.else108.if.end121_crit_edge:                   ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then119:                                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @LPS_Leave(ptr noundef %padapter, ptr noundef nonnull @.str.15) #5
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.else108.if.end121_crit_edge, %if.end6.i, %if.then5.i, %if.else104.if.end121_crit_edge, %if.then103, %if.then99, %if.then97.critedge.if.end121_crit_edge
  %bBusyTraffic.1 = phi i8 [ %bBusyTraffic.0, %if.then97.critedge.if.end121_crit_edge ], [ %bBusyTraffic.0, %if.then99 ], [ %bBusyTraffic.0, %if.then103 ], [ 0, %if.else108.if.end121_crit_edge ], [ 0, %if.then119 ], [ %bBusyTraffic.0, %if.else104.if.end121_crit_edge ], [ %bBusyTraffic.0, %if.then5.i ], [ %bBusyTraffic.0, %if.end6.i ]
  %bTxBusyTraffic.1 = phi i8 [ %bTxBusyTraffic.0, %if.then97.critedge.if.end121_crit_edge ], [ %bTxBusyTraffic.0, %if.then99 ], [ %bTxBusyTraffic.0, %if.then103 ], [ 0, %if.else108.if.end121_crit_edge ], [ 0, %if.then119 ], [ %bTxBusyTraffic.0, %if.else104.if.end121_crit_edge ], [ %bTxBusyTraffic.0, %if.then5.i ], [ %bTxBusyTraffic.0, %if.end6.i ]
  %bRxBusyTraffic.1 = phi i8 [ %bRxBusyTraffic.0, %if.then97.critedge.if.end121_crit_edge ], [ %bRxBusyTraffic.0, %if.then99 ], [ %bRxBusyTraffic.0, %if.then103 ], [ 0, %if.else108.if.end121_crit_edge ], [ 0, %if.then119 ], [ %bRxBusyTraffic.0, %if.else104.if.end121_crit_edge ], [ %bRxBusyTraffic.0, %if.then5.i ], [ %bRxBusyTraffic.0, %if.end6.i ]
  %bHigherBusyTraffic.1 = phi i8 [ %bHigherBusyTraffic.0, %if.then97.critedge.if.end121_crit_edge ], [ %bHigherBusyTraffic.0, %if.then99 ], [ %bHigherBusyTraffic.0, %if.then103 ], [ 0, %if.else108.if.end121_crit_edge ], [ 0, %if.then119 ], [ %bHigherBusyTraffic.0, %if.else104.if.end121_crit_edge ], [ %bHigherBusyTraffic.0, %if.then5.i ], [ %bHigherBusyTraffic.0, %if.end6.i ]
  %bHigherBusyRxTraffic.1 = phi i8 [ %bHigherBusyRxTraffic.0, %if.then97.critedge.if.end121_crit_edge ], [ %bHigherBusyRxTraffic.0, %if.then99 ], [ %bHigherBusyRxTraffic.0, %if.then103 ], [ 0, %if.else108.if.end121_crit_edge ], [ 0, %if.then119 ], [ %bHigherBusyRxTraffic.0, %if.else104.if.end121_crit_edge ], [ %bHigherBusyRxTraffic.0, %if.then5.i ], [ %bHigherBusyRxTraffic.0, %if.end6.i ]
  %bHigherBusyTxTraffic.1 = phi i8 [ %bHigherBusyTxTraffic.0, %if.then97.critedge.if.end121_crit_edge ], [ %bHigherBusyTxTraffic.0, %if.then99 ], [ %bHigherBusyTxTraffic.0, %if.then103 ], [ 0, %if.else108.if.end121_crit_edge ], [ 0, %if.then119 ], [ %bHigherBusyTxTraffic.0, %if.else104.if.end121_crit_edge ], [ %bHigherBusyTxTraffic.0, %if.then5.i ], [ %bHigherBusyTxTraffic.0, %if.end6.i ]
  %bEnterPS.1 = phi i8 [ 1, %if.then97.critedge.if.end121_crit_edge ], [ 1, %if.then99 ], [ 0, %if.then103 ], [ 0, %if.else108.if.end121_crit_edge ], [ 0, %if.then119 ], [ 0, %if.else104.if.end121_crit_edge ], [ 0, %if.then5.i ], [ 0, %if.end6.i ]
  %LinkDetectInfo122 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34
  %NumRxOkInPeriod123 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 1
  %75 = ptrtoint ptr %NumRxOkInPeriod123 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %NumRxOkInPeriod123, align 4
  %76 = ptrtoint ptr %LinkDetectInfo122 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %LinkDetectInfo122, align 4
  %NumRxUnicastOkInPeriod127 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 2
  %77 = ptrtoint ptr %NumRxUnicastOkInPeriod127 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %NumRxUnicastOkInPeriod127, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bBusyTraffic.1)
  %tobool128 = icmp ne i8 %bBusyTraffic.1, 0
  %bBusyTraffic130 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %frombool = zext i1 %tobool128 to i8
  %78 = ptrtoint ptr %bBusyTraffic130 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %frombool, ptr %bBusyTraffic130, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bTxBusyTraffic.1)
  %tobool131 = icmp ne i8 %bTxBusyTraffic.1, 0
  %bTxBusyTraffic133 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 4
  %frombool134 = zext i1 %tobool131 to i8
  %79 = ptrtoint ptr %bTxBusyTraffic133 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool134, ptr %bTxBusyTraffic133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bRxBusyTraffic.1)
  %tobool135 = icmp ne i8 %bRxBusyTraffic.1, 0
  %bRxBusyTraffic137 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 5
  %frombool138 = zext i1 %tobool135 to i8
  %80 = ptrtoint ptr %bRxBusyTraffic137 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool138, ptr %bRxBusyTraffic137, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bHigherBusyTraffic.1)
  %tobool139 = icmp ne i8 %bHigherBusyTraffic.1, 0
  %bHigherBusyTraffic141 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 6
  %frombool142 = zext i1 %tobool139 to i8
  %81 = ptrtoint ptr %bHigherBusyTraffic141 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %frombool142, ptr %bHigherBusyTraffic141, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bHigherBusyRxTraffic.1)
  %tobool143 = icmp ne i8 %bHigherBusyRxTraffic.1, 0
  %bHigherBusyRxTraffic145 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 7
  %frombool146 = zext i1 %tobool143 to i8
  %82 = ptrtoint ptr %bHigherBusyRxTraffic145 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %frombool146, ptr %bHigherBusyRxTraffic145, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bHigherBusyTxTraffic.1)
  %tobool147 = icmp ne i8 %bHigherBusyTxTraffic.1, 0
  %bHigherBusyTxTraffic149 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 8
  %frombool150 = zext i1 %tobool147 to i8
  %83 = ptrtoint ptr %bHigherBusyTxTraffic149 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %frombool150, ptr %bHigherBusyTxTraffic149, align 1
  ret i8 %bEnterPS.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @LPS_Enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @LPS_Leave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lps_ctrl_wk_hdl(ptr noundef %padapter, i8 noundef zeroext %lps_ctrl_type) local_unnamed_addr #0 align 64 {
entry:
  %mstatus = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mstatus) #5
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %4 = and i32 %3, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i8 %lps_ctrl_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %lps_ctrl_type, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb8
    i8 3, label %sw.bb9
    i8 4, label %sw.bb10
    i8 5, label %sw.bb11
    i8 6, label %sw.bb12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  tail call void @hal_btcoex_ScanNotify(ptr noundef %padapter, i8 noundef zeroext 1) #5
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %and.i36 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool4.not = icmp eq i32 %and.i36, 0
  br i1 %tobool4.not, label %sw.bb.cleanup_crit_edge, label %if.then5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @LPS_Leave(ptr noundef %padapter, ptr noundef nonnull @.str.16) #5
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @LPS_Leave(ptr noundef %padapter, ptr noundef nonnull @.str.17) #5
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %mstatus to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mstatus, align 1
  %LpsIdleCount = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 33
  %10 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %LpsIdleCount, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 44, ptr noundef nonnull %mstatus) #5
  %11 = ptrtoint ptr %mstatus to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mstatus, align 1
  call void @rtw_btcoex_MediaStatusNotify(ptr noundef %padapter, i8 noundef zeroext %12) #5
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %mstatus to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %mstatus, align 1
  tail call void @rtw_btcoex_MediaStatusNotify(ptr noundef %padapter, i8 noundef zeroext 0) #5
  tail call void @LPS_Leave(ptr noundef %padapter, ptr noundef nonnull @.str.18) #5
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 44, ptr noundef nonnull %mstatus) #5
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %DelayLPSLastTimeStamp = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 37
  %15 = ptrtoint ptr %DelayLPSLastTimeStamp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %DelayLPSLastTimeStamp, align 4
  tail call void @hal_btcoex_SpecialPacketNotify(ptr noundef %padapter, i8 noundef zeroext 1) #5
  tail call void @LPS_Leave(ptr noundef %padapter, ptr noundef nonnull @.str.19) #5
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @LPS_Leave(ptr noundef %padapter, ptr noundef nonnull @.str.20) #5
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @LPS_Leave(ptr noundef %padapter, ptr noundef nonnull @.str.21) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %if.then5, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mstatus) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_ScanNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_btcoex_MediaStatusNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_SpecialPacketNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_dm_in_lps_wk_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 15, ptr %call1, align 4
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pbuf, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_dm_ra_mask_wk_cmd(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %call1, align 4
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %psta, ptr %pbuf, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_ps_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %call1, align 4
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pbuf, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_chk_hi_queue_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 9, ptr %call1, align 4
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pbuf, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_c2h_packet_wk_cmd(ptr noundef %padapter, ptr noundef %pbuf, i16 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 11, ptr %call1, align 4
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %conv = zext i16 %length to i32
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %size, align 4
  %pbuf5 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pbuf, ptr %pbuf5, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call6 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv7 = trunc i32 %call6 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv7, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_c2h_wk_cmd(ptr noundef %padapter, ptr noundef %c2h_evt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 11, ptr %call1, align 4
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %tobool5.not = icmp eq ptr %c2h_evt, null
  %cond = select i1 %tobool5.not, i32 0, i32 16
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %c2h_evt, ptr %pbuf, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call6 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call)
  %conv = trunc i32 %call6 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_drvextra_cmd_hdl(ptr noundef %padapter, ptr noundef readonly %pbuf) #0 align 64 {
entry:
  %empty.i = alloca i8, align 1
  %ps_mode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pbuf, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %1, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 5, label %sw.bb2
    i32 15, label %sw.bb3
    i32 18, label %sw.bb4
    i32 9, label %sw.bb7
    i32 13, label %sw.bb8
    i32 14, label %sw.bb9
    i32 11, label %sw.bb10
    i32 16, label %sw.bb12
    i32 19, label %sw.bb14
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i.i, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %sw.bb.dynamic_chk_wk_hdl.exit_crit_edge, label %if.then.i

sw.bb.dynamic_chk_wk_hdl.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %dynamic_chk_wk_hdl.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @expire_timeout_chk(ptr noundef %padapter) #5
  br label %dynamic_chk_wk_hdl.exit

dynamic_chk_wk_hdl.exit:                          ; preds = %if.then.i, %sw.bb.dynamic_chk_wk_hdl.exit_crit_edge
  tail call void @_linked_info_dump(ptr noundef %padapter) #5
  tail call void @linked_status_chk(ptr noundef %padapter) #5
  %call1.i = tail call zeroext i8 @traffic_status_watchdog(ptr noundef %padapter, i8 noundef zeroext 0) #5
  tail call void @rtw_hal_dm_watchdog(ptr noundef %padapter) #5
  tail call void @hal_btcoex_Handler(ptr noundef %padapter) #5
  tail call void @rtw_ps_processor(ptr noundef %padapter) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_ps_processor(ptr noundef %padapter) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %type = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %conv = trunc i32 %7 to i8
  tail call void @lps_ctrl_wk_hdl(ptr noundef %padapter, i8 noundef zeroext %conv)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 80, ptr noundef null) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %type5 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 1
  %8 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type5, align 4
  %conv6 = trunc i32 %9 to i8
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %10 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvobj.i, align 4
  %pwrctl_priv.i = getelementptr inbounds %struct.dvobj_priv, ptr %11, i32 0, i32 22
  %12 = add i8 %conv6, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %12)
  %13 = icmp ult i8 %12, -16
  br i1 %13, label %sw.bb4.sw.epilog_crit_edge, label %if.end.i

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb4
  %call.i = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #5
  br i1 %call.i, label %if.end.i.sw.epilog_crit_edge, label %if.end6.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end.i
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv.i, i32 noundef 0) #5
  %dtim7.i = getelementptr inbounds %struct.dvobj_priv, ptr %11, i32 0, i32 22, i32 8
  %14 = ptrtoint ptr %dtim7.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv6, ptr %dtim7.i, align 1
  %fw_current_in_ps_mode.i = getelementptr inbounds %struct.dvobj_priv, ptr %11, i32 0, i32 22, i32 36
  %15 = ptrtoint ptr %fw_current_in_ps_mode.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fw_current_in_ps_mode.i, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i46 = icmp eq i8 %16, 0
  br i1 %tobool.not.i46, label %if.end6.i.if.end14.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %pwr_mode.i = getelementptr inbounds %struct.dvobj_priv, ptr %11, i32 0, i32 22, i32 5
  %17 = ptrtoint ptr %pwr_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pwr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp10.not.i = icmp eq i8 %18, 0
  br i1 %cmp10.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %if.then12.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ps_mode.i) #5
  %19 = ptrtoint ptr %ps_mode.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ps_mode.i, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 42, ptr noundef nonnull %ps_mode.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ps_mode.i) #5
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %land.lhs.true.i.if.end14.i_crit_edge, %if.end6.i.if.end14.i_crit_edge
  call void @mutex_unlock(ptr noundef %pwrctl_priv.i) #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %empty.i) #5
  %21 = ptrtoint ptr %empty.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %empty.i, align 1
  %call.i47 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #5
  %tobool.not.i48 = icmp eq ptr %call.i47, null
  br i1 %tobool.not.i48, label %sw.bb7.rtw_chk_hi_queue_hdl.exit_crit_edge, label %if.end.i49

sw.bb7.rtw_chk_hi_queue_hdl.exit_crit_edge:       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_chk_hi_queue_hdl.exit

if.end.i49:                                       ; preds = %sw.bb7
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 73, ptr noundef nonnull %empty.i) #5
  %22 = ptrtoint ptr %empty.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %empty.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not36.i = icmp eq i8 %23, 0
  br i1 %tobool1.not36.i, label %if.end.i49.land.rhs.i_crit_edge, label %if.end.i49.while.end.i_crit_edge

if.end.i49.while.end.i_crit_edge:                 ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end.i49.land.rhs.i_crit_edge:                  ; preds = %if.end.i49
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i49.land.rhs.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %24, %20
  %call2.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #5
  %25 = load i32, ptr @g_wait_hiq_empty, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %25)
  %cmp.i = icmp ult i32 %call2.i, %25
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @msleep(i32 noundef 100) #5
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 73, ptr noundef nonnull %empty.i) #5
  %26 = ptrtoint ptr %empty.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %empty.i, align 1
  %tobool1.not.i = icmp eq i8 %27, 0
  br i1 %tobool1.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end.i49.while.end.i_crit_edge
  %sleepq_len.i = getelementptr inbounds %struct.sta_info, ptr %call.i47, i32 0, i32 7
  %28 = ptrtoint ptr %sleepq_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sleepq_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3.i = icmp eq i32 %29, 0
  br i1 %cmp3.i, label %if.then4.i, label %while.end.i.rtw_chk_hi_queue_hdl.exit_crit_edge

while.end.i.rtw_chk_hi_queue_hdl.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_chk_hi_queue_hdl.exit

if.then4.i:                                       ; preds = %while.end.i
  %30 = ptrtoint ptr %empty.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %empty.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp5.i = icmp eq i8 %31, 1
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then4.i
  %tim_bitmap.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %32 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tim_bitmap.i, align 2
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool9.not.not.i = icmp eq i16 %34, 0
  %and14.i = and i16 %33, -2
  %35 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %and14.i, ptr %tim_bitmap.i, align 2
  %sta_dz_bitmap.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %36 = ptrtoint ptr %sta_dz_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sta_dz_bitmap.i, align 4
  %38 = and i16 %37, -2
  store i16 %38, ptr %sta_dz_bitmap.i, align 4
  br i1 %tobool9.not.not.i, label %if.then7.i.rtw_chk_hi_queue_hdl.exit_crit_edge, label %if.then20.i

if.then7.i.rtw_chk_hi_queue_hdl.exit_crit_edge:   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_chk_hi_queue_hdl.exit

if.then20.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 1) #5
  br label %rtw_chk_hi_queue_hdl.exit

if.else.i:                                        ; preds = %if.then4.i
  %cmdpriv.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call.i.i = call ptr @_rtw_zmalloc(i32 noundef 36) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.rtw_chk_hi_queue_hdl.exit_crit_edge, label %if.end.i.i

if.else.i.rtw_chk_hi_queue_hdl.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_chk_hi_queue_hdl.exit

if.end.i.i:                                       ; preds = %if.else.i
  %call1.i.i = call ptr @_rtw_zmalloc(i32 noundef 16) #5
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call.i.i) #5
  br label %rtw_chk_hi_queue_hdl.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 9, ptr %call1.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %type.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %size.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call1.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pbuf.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i.i, i32 0, i32 8
  %43 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i.i, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %cmdcode.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %cmdcode.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 57, ptr %cmdcode.i.i, align 4
  %parmbuf.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %parmbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call1.i.i, ptr %parmbuf.i.i, align 4
  %cmdsz.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %cmdsz.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16, ptr %cmdsz.i.i, align 4
  %rsp.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %rsp.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rsp.i.i, align 4
  %rspsz.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %rspsz.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %rspsz.i.i, align 4
  %call5.i.i = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv.i.i, ptr noundef nonnull %call.i.i) #5
  br label %rtw_chk_hi_queue_hdl.exit

rtw_chk_hi_queue_hdl.exit:                        ; preds = %if.end4.i.i, %if.then3.i.i, %if.else.i.rtw_chk_hi_queue_hdl.exit_crit_edge, %if.then20.i, %if.then7.i.rtw_chk_hi_queue_hdl.exit_crit_edge, %while.end.i.rtw_chk_hi_queue_hdl.exit_crit_edge, %sw.bb7.rtw_chk_hi_queue_hdl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %empty.i) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_reset_securitypriv(ptr noundef %padapter) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pbuf11 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 3
  %50 = ptrtoint ptr %pbuf11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pbuf11, align 4
  %size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 2
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 4
  tail call void @rtw_hal_set_hwreg_with_buf(ptr noundef %padapter, i8 noundef zeroext 69, ptr noundef %51, i32 noundef %53) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %pbuf13 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 3
  %54 = ptrtoint ptr %pbuf13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pbuf13, align 4
  %tobool.not.i50 = icmp eq ptr %55, null
  br i1 %tobool.not.i50, label %sw.bb12.sw.epilog_crit_edge, label %if.then.i51

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i51:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_sta_rate(ptr noundef %padapter, ptr noundef nonnull %55) #5
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %pbuf15 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 3
  %56 = ptrtoint ptr %pbuf15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pbuf15, align 4
  %size16 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 2
  %58 = ptrtoint ptr %size16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size16, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %57, align 1
  %len1.i = getelementptr %struct.btinfo, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %len1.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %len1.i, align 1
  %conv.i = zext i8 %63 to i32
  %conv2.i = and i32 %59, 65535
  %sub.i53 = add nsw i32 %conv2.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i53, i32 %conv.i)
  %cmp.i54 = icmp slt i32 %sub.i53, %conv.i
  br i1 %cmp.i54, label %do.end.i, label %sw.bb14.if.end23.i_crit_edge

sw.bb14.if.end23.i_crit_edge:                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

do.end.i:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1702, i32 noundef 9, ptr noundef null) #5
  %conv21.i = trunc i32 %sub.i53 to i8
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end.i, %sw.bb14.if.end23.i_crit_edge
  %len.0.i = phi i8 [ %conv21.i, %do.end.i ], [ %63, %sw.bb14.if.end23.i_crit_edge ]
  %64 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %61, label %if.end23.i.rtw_btinfo_hdl.exit_crit_edge [
    i8 35, label %if.end23.i.if.end35.sink.split.i_crit_edge
    i8 39, label %if.then32.i
  ]

if.end23.i.if.end35.sink.split.i_crit_edge:       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i

if.end23.i.rtw_btinfo_hdl.exit_crit_edge:         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_btinfo_hdl.exit

if.then32.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i

if.end35.sink.split.i:                            ; preds = %if.then32.i, %if.end23.i.if.end35.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 2, %if.then32.i ], [ 0, %if.end23.i.if.end35.sink.split.i_crit_edge ]
  %65 = ptrtoint ptr %len1.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink.i, ptr %len1.i, align 1
  br label %rtw_btinfo_hdl.exit

rtw_btinfo_hdl.exit:                              ; preds = %if.end35.sink.split.i, %if.end23.i.rtw_btinfo_hdl.exit_crit_edge
  %add.i = add i8 %len.0.i, 1
  tail call void @hal_btcoex_BtInfoNotify(ptr noundef %padapter, i8 noundef zeroext %add.i, ptr noundef %len1.i) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %rtw_btinfo_hdl.exit, %if.then.i51, %sw.bb12.sw.epilog_crit_edge, %sw.bb10, %sw.bb9, %sw.bb8, %rtw_chk_hi_queue_hdl.exit, %if.end14.i, %if.end.i.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb3, %sw.bb2, %sw.bb1, %dynamic_chk_wk_hdl.exit, %if.end.sw.epilog_crit_edge
  %pbuf18 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 3
  %66 = ptrtoint ptr %pbuf18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pbuf18, align 4
  %tobool19.not = icmp eq ptr %67, null
  br i1 %tobool19.not, label %sw.epilog.cleanup_crit_edge, label %land.lhs.true

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog
  %size20 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 2
  %68 = ptrtoint ptr %size20 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp = icmp sgt i32 %69, 0
  br i1 %cmp, label %if.then22, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %67) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 4, %entry.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ps_processor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_reset_securitypriv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_assoc_resources(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg_with_buf(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_survey_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cond = icmp eq i8 %1, 0
  br i1 %cond, label %entry.if.end8_crit_edge, label %if.end8.sink.split

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8.sink.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %scan_to_timer7 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call.i12 = tail call i32 @mod_timer(ptr noundef %scan_to_timer7, i32 noundef %2) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %entry.if.end8_crit_edge
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmdcode.i, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %4, label %if.then.i [
    i16 14, label %if.end8.if.end.i_crit_edge
    i16 16, label %if.end8.if.end.i_crit_edge13
  ]

if.end8.if.end.i_crit_edge13:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %6 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %7) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge13
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %8 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not.i = icmp eq i32 %11, 0
  br i1 %cmp7.not.i, label %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.rtw_free_cmd_obj.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %9) #5
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_disassoc_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #5
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %or.i = or i32 %3, 1
  store i32 %or.i, ptr %fw_state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %4 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmdcode.i, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %5, label %if.then.i [
    i16 14, label %if.end.if.end.i_crit_edge
    i16 16, label %if.end.if.end.i_crit_edge6
  ]

if.end.if.end.i_crit_edge6:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %8) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge, %if.end.if.end.i_crit_edge6
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %9 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 6
  %11 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.not.i = icmp eq i32 %12, 0
  br i1 %cmp7.not.i, label %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.rtw_free_cmd_obj.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %10) #5
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #5
  br label %cleanup

cleanup:                                          ; preds = %rtw_free_cmd_obj.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_joinbss_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cond = icmp eq i8 %1, 0
  br i1 %cond, label %entry.if.end8_crit_edge, label %if.end8.sink.split

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8.sink.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %assoc_timer7 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call.i12 = tail call i32 @mod_timer(ptr noundef %assoc_timer7, i32 noundef %2) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %entry.if.end8_crit_edge
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmdcode.i, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %4, label %if.then.i [
    i16 14, label %if.end8.if.end.i_crit_edge
    i16 16, label %if.end8.if.end.i_crit_edge13
  ]

if.end8.if.end.i_crit_edge13:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %6 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %7) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge13
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %8 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not.i = icmp eq i32 %11, 0
  br i1 %cmp7.not.i, label %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.rtw_free_cmd_obj.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %9) #5
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_createbss_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %0 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parmbuf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %4) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %assoc_timer5 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  %call = tail call i32 @del_timer_sync(ptr noundef %assoc_timer5) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #5
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %mac_address = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 1
  %call9 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.then8.if.end19_crit_edge

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then11:                                        ; preds = %if.then8
  %call15 = tail call ptr @rtw_alloc_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then11.createbss_cmd_fail_crit_edge, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then11.createbss_cmd_fail_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %createbss_cmd_fail

if.end19:                                         ; preds = %if.then11.if.end19_crit_edge, %if.then8.if.end19_crit_edge
  tail call void @rtw_indicate_connect(ptr noundef %padapter) #5
  br label %createbss_cmd_fail

if.else:                                          ; preds = %if.end4
  %call20 = tail call ptr @rtw_alloc_network(ptr noundef %mlmepriv) #5
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15
  %lock21 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock21) #5
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.then23, label %if.else31

if.then23:                                        ; preds = %if.else
  %call25 = tail call ptr @rtw_get_oldest_wlan_network(ptr noundef %scanned_queue) #5
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock21) #5
  br label %createbss_cmd_fail

if.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %call25, i32 0, i32 3
  %9 = ptrtoint ptr %last_scanned to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_scanned, align 4
  br label %if.end33

if.else31:                                        ; preds = %if.else
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call20, ptr noundef %11, ptr noundef %scanned_queue) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.else31.if.end33_crit_edge

if.else31.if.end33_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end.i.i:                                       ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call20, ptr %prev.i, align 4
  %13 = ptrtoint ptr %call20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %scanned_queue, ptr %call20, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call20, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call20, ptr %11, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end.i.i, %if.else31.if.end33_crit_edge, %if.end30
  %pwlan.0 = phi ptr [ %call25, %if.end30 ], [ %call20, %if.else31.if.end33_crit_edge ], [ %call20, %if.end.i.i ]
  %ie_length.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %ie_length.i, align 1
  %add.i = add i32 %17, 104
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %add.i, ptr %1, align 1
  %network = getelementptr inbounds %struct.wlan_network, ptr %pwlan.0, i32 0, i32 6
  %19 = call ptr @memcpy(ptr %network, ptr %1, i32 %add.i)
  %network36 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6
  %20 = load i32, ptr %ie_length.i, align 1
  %add.i73 = add i32 %20, 104
  %21 = call ptr @memcpy(ptr %network36, ptr %1, i32 %add.i73)
  %22 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_state.i, align 4
  %and.i75 = and i32 %23, -129
  store i32 %and.i75, ptr %fw_state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock21) #5
  br label %createbss_cmd_fail

createbss_cmd_fail:                               ; preds = %if.end33, %if.then27, %if.end19, %if.then11.createbss_cmd_fail_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #5
  br label %exit

exit:                                             ; preds = %createbss_cmd_fail, %entry.exit_crit_edge
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %24 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cmdcode.i, align 4
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %25, label %if.then.i [
    i16 14, label %exit.if.end.i_crit_edge
    i16 16, label %exit.if.end.i_crit_edge77
  ]

exit.if.end.i_crit_edge77:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

exit.if.end.i_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %28) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %exit.if.end.i_crit_edge, %exit.if.end.i_crit_edge77
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %29 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i76 = icmp eq ptr %30, null
  br i1 %tobool.not.i76, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 6
  %31 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp7.not.i = icmp eq i32 %32, 0
  br i1 %cmp7.not.i, label %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.rtw_free_cmd_obj.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %30) #5
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_oldest_wlan_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_setstaKey_cmdrsp_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp, align 4
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %1) #5
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmdcode.i, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %3, label %if.then.i [
    i16 14, label %entry.if.end.i_crit_edge
    i16 16, label %entry.if.end.i_crit_edge2
  ]

entry.if.end.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %5 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %6) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge2
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rsp, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 6
  %9 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.not.i = icmp eq i32 %10, 0
  br i1 %cmp7.not.i, label %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.rtw_free_cmd_obj.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %8) #5
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_setassocsta_cmdrsp_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %0 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp, align 4
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %aid = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %aid, align 4
  %7 = load i8, ptr %3, align 1
  %conv2 = zext i8 %7 to i32
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %mac_id, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #5
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 4
  %11 = and i32 %10, 65664
  call void @__sanitizer_cov_trace_const_cmp4(i32 65664, i32 %11)
  %.not = icmp eq i32 %11, 65664
  br i1 %.not, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and.i26 = and i32 %10, -129
  %12 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i26, ptr %fw_state.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %13 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i, align 4
  %or.i = or i32 %14, 1
  store i32 %or.i, ptr %fw_state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #5
  br label %exit

exit:                                             ; preds = %if.end8, %entry.exit_crit_edge
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %15 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cmdcode.i, align 4
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %16, label %if.then.i [
    i16 14, label %exit.if.end.i_crit_edge
    i16 16, label %exit.if.end.i_crit_edge29
  ]

exit.if.end.i_crit_edge29:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

exit.if.end.i_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %19) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %exit.if.end.i_crit_edge, %exit.if.end.i_crit_edge29
  %20 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rsp, align 4
  %tobool.not.i28 = icmp eq ptr %21, null
  br i1 %tobool.not.i28, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 6
  %22 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp7.not.i = icmp eq i32 %23, 0
  br i1 %cmp7.not.i, label %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.rtw_free_cmd_obj.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %21) #5
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NULL_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @join_cmd_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @createbss_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sitesurvey_cmd_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @setauth_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @setkey_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @add_ba_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_ch_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tx_beacon_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlme_evt_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @h2c_msg_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_csa_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tdls_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @chk_bmc_sleepq_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @run_in_thread_hdl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_hal_c2h_id_filter_ccx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c2h_evt_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c2h_evt_read_88xx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_hal_c2h_valid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_c2h_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @expire_timeout_chk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_linked_info_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @linked_status_chk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_dm_watchdog(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_Handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_get_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_beacon(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_sta_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_BtInfoNotify(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @rtw_init_cmd_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 170, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rtw_init_cmd_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 198, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 390, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 400, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug345, !9, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 407, i32 4}
!16 = !{ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug346, !15, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 415, i32 4}
!19 = !{ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug347, !18, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!20 = !{ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug348, !21, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 430, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 473, i32 5}
!24 = !{ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug349, !23, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 968, i32 4}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtw_clearstakey_cmd.__UNIQUE_ID_ddebug350, !26, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1293, i32 25}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1296, i32 25}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1308, i32 24}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1374, i32 24}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1378, i32 23}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1390, i32 23}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1396, i32 23}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1399, i32 23}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1402, i32 23}
!47 = !{ptr @g_wait_hiq_empty, !48, !"g_wait_hiq_empty", i1 false, i1 false}
!48 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 1584, i32 5}
!49 = !{ptr @init_completion.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/completion.h", i32 87, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @_init_workitem.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8723bs/include/osdep_service_linux.h", i32 65, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @wlancmds, !56, !"wlancmds", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 87, i32 23}
!57 = !{ptr @rtw_cmd_callback, !58, !"rtw_cmd_callback", i1 false, i1 false}
!58 = !{!"../drivers/staging/rtl8723bs/core/rtw_cmd.c", i32 12, i32 29}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{i64 2148847388, i64 2148847393, i64 2148847406, i64 2148847450, i64 2148847484, i64 2148847505}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"auto-init"}
